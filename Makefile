SRC = injection.c  
OBJ = injection.o
CC = gcc
CFLAGS = -Wall

build: ${OBJ} 
	${CC} ${CFLAG} ${OBJ} 

clean: 
	rm -f a.out ${OBJ} who-is-checking-my-hw.sh wget-log*

exec:
	./a.out

clr:
	clear

all: clr clean build exec
