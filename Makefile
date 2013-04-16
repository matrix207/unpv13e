################################################################################
# Makefile
# History:
#        2013/04/17 Dennis Create
################################################################################

CC=gcc

TARGET=daytimetcpcli daytimetcpcliv6

all: $(TARGET)

daytimetcpcli: daytimetcpcli.c error.c
	$(CC) -o $@ $^

daytimetcpcliv6: daytimetcpcliv6.c error.c
	$(CC) -o $@ $^

.PHONY: clean
clean:
	rm -f *.o $(TARGET)
