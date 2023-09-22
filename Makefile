.SILENT:

override GLOBL_INC := -I$(shell pwd)/global/include/
override PROMPT := printf "%s\t\t%s\n"
override BIN_DIR = bin

export GLOBL_INC
export PROMPT

.PHONY: all
all: emulator

.PHONY: emulator
emulator:
	mkdir -p $@/$(BIN_DIR)
	make -C $@/

.PHONY: clean
clean:
	rm -f $(shell find . -type f -name "*.o")
