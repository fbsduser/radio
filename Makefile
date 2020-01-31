CC=gcc
CFLAGS=-Wall 
OBJECTS=radioi.c
BINARIES=radio
LDFLAGS+= -lm -lwiringPi

all : $(BINARIES)

%.o : %.c
        $(CC) $(CFLAGS) -c -o $@ $< $(LDFLAGS)

clean:
        rm -f $(OBJECTS) $(BINARIES)

FORCE:
.PHONY: FORCE
