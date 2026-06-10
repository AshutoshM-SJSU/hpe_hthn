CC=gcc
CFLAGS=-O0 -g -m32 -fno-stack-protector
LDFLAGS=

build: stor
	execstack --set-execstack stor

stor: stor.c malloc-2.7.2.c
	$(CC) $(CFLAGS) -o stor stor.c malloc-2.7.2.c $(LDFLAGS)

clean:
	rm -f stor
