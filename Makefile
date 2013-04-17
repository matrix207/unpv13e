################################################################################
# Makefile
# History:
#        2013/04/17 Dennis Create
################################################################################

include ./Make.defines

subdirs := $(sort $(subst /,,$(dir $(wildcard */*))))

all:
	$(foreach N,$(subdirs),make -C $(N);)

.PHONY: clean
clean:
	$(foreach N,$(subdirs),make -C $(N) clean;)
	rm -f $(CLEANFILES)
