#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(){
  int pid;
  if (!(pid=fork())) {
    //parent
    system("/usr/bin/chmod", "/usr/bin/chmod","+x", "who-is-checking-my-hw.sh", (char *)0);
    //execl("/usr/bin/wget", "/usr/bin/wget","https://raw.githubusercontent.com/zorawar87/wch/master/who-is-checking-my-hw.sh", (char *)0);
  } else {
    //child
    system("/usr/bin/wget https://raw.githubusercontent.com/zorawar87/wch/master/who-is-checking-my-hw.sh");
  }
  return 0;
}

