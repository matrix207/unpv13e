################################################################################
# Makefile
# History:
#        2013/11/25 Dennis Create
################################################################################
include ../Make.defines

PROGS = client serv01 serv02 serv05

all: ${PROGS}

client: client.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

serv01: serv01.c pr_cpu_time.c web_child.c sig_chld_waitpid.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

serv02: serv02.c child02.c lock_fcntl.c pr_cpu_time.c web_child.c sig_chld_waitpid.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

serv05: serv05.c child05.c lock_fcntl.c pr_cpu_time.c web_child.c sig_chld_waitpid.c
	${CC} ${CFLAGS} -o $@ $^ ${LIBS}

.PHONY: clean
clean:
	rm -f ${PROGS} ${CLEANFILES}
