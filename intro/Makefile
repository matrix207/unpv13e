################################################################################
# Makefile
# History:
#        2013/04/17 Dennis Create
################################################################################
include ../Make.defines

PROGS = daytimetcpcli daytimetcpcliv6 daytimetcpsrv

all: ${PROGS}

daytimetcpcli: daytimetcpcli.c 
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

daytimetcpcliv6: daytimetcpcliv6.c 
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

daytimetcpsrv: daytimetcpsrv.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

.PHONY: clean
clean:
	rm -f ${PROGS} ${CLEANFILES}
