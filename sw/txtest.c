#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <assert.h>

int main(int argc, char **argv)
{
  const static unsigned int dev_paddr = 0x79040000;
  volatile unsigned int* dev_vaddr;
  int fd = open("/dev/mem", O_RDWR|O_SYNC);
  assert(fd != -1);
  dev_vaddr = (volatile unsigned int*)mmap(0, sysconf(_SC_PAGESIZE), PROT_READ|PROT_WRITE, MAP_SHARED, fd, dev_paddr);
  assert(dev_vaddr != MAP_FAILED);

  printf("Version register: %08x\n", dev_vaddr[0]);

  printf("TX_RESET = %08x : TX_ENABLE = %08x\n", dev_vaddr[0x200], dev_vaddr[0x201]);

  if (argc == 1) // turn on
  {
    dev_vaddr[0x200] = 0x0;
    dev_vaddr[0x201] = 0x1;
  } else { // turn off
    dev_vaddr[0x200] = 0x1;
    dev_vaddr[0x201] = 0x0;
  }

  printf("TX_RESET = %08x : TX_ENABLE = %08x\n", dev_vaddr[0x200], dev_vaddr[0x201]);
  close(fd);
  return 0;
}

