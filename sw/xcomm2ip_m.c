
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

struct s_tx_msg {
  long mtype;
  char mtext[32];
};

int main(void) {

  int tx_msg_id;
  int tx_msg_char;
  key_t tx_msg_key;
  struct s_tx_msg tx_msg;
  unsigned int tx_msg_length;

  if ((tx_msg_key = ftok("xcomm2ip_m.c", 'B')) == -1) {
    printf("xcomm2ip: ftok(\"xcomm2ip_m.c\", 'B') failed!\n");
    return(-1);
  }

  if ((tx_msg_id = msgget(tx_msg_key, 0644 | IPC_CREAT)) == -1) {
    printf("xcomm2ip: msgget(tx_msg_key, 0644 | IPC_CREAT) failed!\n");
    return(-1);
  }

  while (1) {
    printf("Y>");
    tx_msg_length = 0;
    while (1) {
      tx_msg_char = getchar();
      if (tx_msg_char == '\n') break;
      if (tx_msg_length < 20) {
        tx_msg.mtext[tx_msg_length] = tx_msg_char;
        tx_msg_length = tx_msg_length + 1;
      }
    }
    if (tx_msg_length == 0) break;
    tx_msg.mtype = tx_msg_length;
    if (msgsnd(tx_msg_id, &tx_msg, tx_msg_length, 0) == -1) {
      printf("xcomm2ip: msgsnd(tx_msg_id, &tx_msg, tx_msg_length, 0) failed!\n");
    }
    sleep(2);
  }

  if (msgctl(tx_msg_id, IPC_RMID, NULL) == -1) {
    printf("xcomm2ip: msgctl(tx_msg_id, IPC_RMID, NULL) failed!\n");
    return(-1);
  }

  return(0);
}

