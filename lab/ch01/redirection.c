#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>

int main(){
	int fd;
	
	fd=open("log", O_RDWR|O_CREAT|O_APPEND, 0664);
	dup2(fd, 1);
	close(fd);
	system("ls -l /dev/fd/");
}