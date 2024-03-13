rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

BIN_PATH := $(realpath $(dir $(firstword $(MAKEFILE_LIST))))

ifndef PSYQ_PATH
	export PATH := C:\psyq\bin;$(PATH)
	export PSYQ_PATH := C:\psyq\bin
endif

SOURCES = $(call rwildcard,src,*.c)
$(info $(SOURCES))

all:
	$(foreach file,$(SOURCES),ccpsx -O2 -Xo0x80010000 $(file) -o $(file:.c=.cpe);)

.PHONY: all