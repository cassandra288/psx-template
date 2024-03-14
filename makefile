rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

BIN_PATH := $(realpath $(dir $(firstword $(MAKEFILE_LIST))))

ifndef PSYQ_PATH
	export PATH := C:\psyq\bin;$(PATH)
	export PSYQ_PATH := C:\psyq\bin
endif

SOURCES = $(call rwildcard,src,*.c)
$(info $(SOURCES))

all:
	mkdir -p out
	ccpsx -O2 -Xo0x80010000 $(SOURCES) -o out/main.cpe
	cpe2x out/main.cpe
	mkpsxiso -y meta/mkpsxiso.xml
	# $(foreach file,$(SOURCES),\
	# 	mkdir -p out/artifacts/$(dir $(subst src/,,$(file)));\
	# 	ccpsx -O2 -Xo0x80010000 $(file) -o $(subst src/,out/artifacts/,$(file:.c=.o)) -c;\
	# )
	

clean:
	rm -rf out

.PHONY: clean all