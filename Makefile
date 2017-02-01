LIBS=-lm -lwiringPi
CFLAGS=
BINARY=dht22
CC=gcc
INSTALLDIR=/home/pi/bin/

compile:
	$(CC) $(LIBS) $(CFLAGS) *.c -o $(BINARY)

install: compile
	cp dht22 $(INSTALLDIR)

clean:
	rm *.o
	rm $(BINARY)


