################################################################################
# Makefile
# History:
#        2013/04/17 Dennis Create
################################################################################
include ../Make.defines

PROGS = tcpserv tcpcli

all: ${PROGS}

tcpserv: tcpserv.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

tcpcli: tcpcli.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

.PHONY: clean
clean:
	rm -f ${PROGS} ${CLEANFILES}
