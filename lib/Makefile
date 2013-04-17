include ../Make.defines

all: ${LIB_OBJS}
	ar rv ${LIBUNP_NAME} $?

.PHONY: clean
clean:
	rm -f ${PROGS} ${CLEANFILES}
