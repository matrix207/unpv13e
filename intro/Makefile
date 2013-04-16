################################################################################
# Makefile
# History:
#        2013/04/17 Dennis Create
################################################################################

CC = gcc
CFLAGS = -I../lib -Wall

TARGET=daytimetcpcli daytimetcpcliv6

all: ${TARGET}

daytimetcpcli: daytimetcpcli.c error.c
	${CC} ${CFLAGS} -o $@ $^

daytimetcpcliv6: daytimetcpcliv6.c error.c
	${CC} ${CFLAGS} -o $@ $^

.PHONY: clean
clean:
	rm -f *.o ${TARGET}
