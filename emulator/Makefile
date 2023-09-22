.SILENT:

override CC = gcc
override CFILES = $(shell find src/ -name "*.c")
override CFLAGS = -pedantic $(INCLUDES)
override OBJECTS = $(CFILES:.c=.o)

.PHONY: all
all: $(OBJECTS)

%.o: %.c
	$(PROMPT) " CC " $<
	$(CC) $(CFLAGS) $< -o $@
