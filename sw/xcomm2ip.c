
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>
#include <signal.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

#define XCOMM2IP_DEVICE "/dev/uio0"
#define XCOMM2IP_SIZE   0x2000

static volatile int sig_data = 0;

struct s_tx_msg {
  long mtype;
  char mtext[32];
};

void sig_int(int unused) {
  sig_data = 1;
}

int main(void) {

  int tx_msg_id;
  unsigned int n;
  int xcomm2ip_fp;
  key_t tx_msg_key;
  extern int errno;
  struct s_tx_msg tx_msg;
  unsigned int tx_msg_count;
  unsigned int rx_msg_count;
  unsigned int tx_msg_index;
  unsigned int rx_msg_index;
  unsigned int tx_msg_data[32];
  unsigned int rx_msg_data[32];
  unsigned * xcomm2ip_base_addr;

  if ((tx_msg_key = ftok("xcomm2ip_m.c", 'B')) == -1) {
    printf("xcomm2ip: ftok(\"xcomm2ip_m.c\", 'B') failed!\n");
    return(-1);
  }

  if ((tx_msg_id = msgget(tx_msg_key, 0644)) == -1) {
    printf("xcomm2ip: msgget(tx_msg_key, 0644) failed!\n");
    return(-1);
  }
  
  signal(SIGINT, sig_int);

  xcomm2ip_fp = open(XCOMM2IP_DEVICE, O_RDWR);
  if (xcomm2ip_fp < 1) {
    printf("xcomm2ip: can not open device `%s'\n", XCOMM2IP_DEVICE);
    return(-1);
  }

  xcomm2ip_base_addr = mmap(NULL, XCOMM2IP_SIZE, (PROT_READ|PROT_WRITE),
    MAP_SHARED, xcomm2ip_fp, 0);
  if (xcomm2ip_base_addr == NULL) {
    printf("xcomm2ip: can not mmap device `%s'\n", XCOMM2IP_DEVICE);
    return(-1);
  }

  rx_msg_index = 0;
  rx_msg_count = 0;
  tx_msg_index = 0;
  tx_msg_count = 0;

  *(xcomm2ip_base_addr + 0x0200) = 0x01;
  *(xcomm2ip_base_addr + 0x0300) = 0x01;
  *(xcomm2ip_base_addr + 0x0201) = 0x00;
  *(xcomm2ip_base_addr + 0x0302) = 0x00;
  sleep(1);

  *(xcomm2ip_base_addr + 0x0200) = 0x00;
  *(xcomm2ip_base_addr + 0x0300) = 0x00;
  *(xcomm2ip_base_addr + 0x0201) = 0x01;
  *(xcomm2ip_base_addr + 0x0302) = 0x01;
  sleep(1);

  while (1) {

    if (sig_data == 1) break;

    if (*(xcomm2ip_base_addr + 0x0302) == 0x0) {
      for (n = 0; n < 32; n++) {
        rx_msg_data[n] = *(xcomm2ip_base_addr + 0x0300 + n);
      }
      *(xcomm2ip_base_addr + 0x0302) = 0x1;
      if (rx_msg_data[3] == 0x3a) {
        rx_msg_count = rx_msg_data[4];
      }
      tx_msg_index = 0;
      if (rx_msg_data[3] == 0xa1) {
        if (rx_msg_index != rx_msg_data[4]) {
          printf("R>");
          for (n = 0; n < rx_msg_data[5]; n++) {
            printf("%c", rx_msg_data[(6+n)]);
          }
          printf("\n");
        }
        for (n = 0; n < 32; n++) {
          tx_msg_data[n] = rx_msg_data[n];
        }
        tx_msg_index = 1;
        tx_msg_data[3] = 0x3a;
        rx_msg_index = rx_msg_data[4];
      }
    }

    if (tx_msg_index == 0) {
      if (tx_msg_count == rx_msg_count) {
        sleep(2);
        if (msgrcv(tx_msg_id, &tx_msg, sizeof(tx_msg.mtext), 0, IPC_NOWAIT) > 0) {
          printf("T>");
          for (n = 0; n < tx_msg.mtype; n++) {
            printf("%c", tx_msg.mtext[n]);
          }
          printf("\n");
          tx_msg_index = 1;
          tx_msg_count = tx_msg_count + 1;
        } else if (!(errno == ENOMSG)) break;
      } else {
        tx_msg_index = 1;
        tx_msg_count = tx_msg_count;
      }
      for (n = 0; n < tx_msg.mtype; n++) {
        tx_msg_data[(6+n)] = (unsigned int) tx_msg.mtext[n];
      }
      tx_msg_data[3] = 0xa1;
      tx_msg_data[4] = tx_msg_count;
      tx_msg_data[5] = tx_msg.mtype;
    }

    if (tx_msg_index == 1) {
      for (n = 3; n < 32; n++) {
        *(xcomm2ip_base_addr + 0x0200 + n) = tx_msg_data[n];
      }
      *(xcomm2ip_base_addr + 0x0202) = 0x1;
      usleep(1000);
      if (*(xcomm2ip_base_addr + 0x0202) == 0x1) {
        printf("xcomm2ip: unexpected transmit behavior `%s'\n", XCOMM2IP_DEVICE);
        printf("xcomm2ip: you will need to restart `%s'\n", XCOMM2IP_DEVICE);
        break;
      }
      tx_msg_index = 0;
    }
  }

  munmap((void*)xcomm2ip_base_addr, XCOMM2IP_SIZE);
  close(xcomm2ip_fp);
  return(0);
}

