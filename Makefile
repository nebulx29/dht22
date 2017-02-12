LIBS=-lm -lwiringPi
CFLAGS=
BINARY=dht22
CC=gcc
INSTALLDIR=/home/pi/bin/

default: compile

compile:
	@echo "Compiling $(BINARY)"
	$(CC) $(LIBS) $(CFLAGS) *.c -o $(BINARY)

install: compile
	@echo "Installing $(BINARY) to $(INSTALLDIR)"
	cp $(BINARY) $(INSTALLDIR)

clean:
	@echo "Cleaning up (*.o, $(BINARY)) and Uninstalling from $(INSTALLDIR)"
	rm -f *.o
	rm -f $(BINARY)
	rm -f $(INSTALLDIR)$(BINARY)


