.SILENT:

override CC = gcc
override CFILES = $(shell find src/ -name "*.c")
override CFLAGS = -pedantic $(INCLUDES)
override OBJECTS = $(CFILES:.c=.o)

bin/emul: $(OBJECTS)
	gcc $(OBJECTS) -o $@

%.o: %.c
	$(PROMPT) " CC " $<
	$(CC) -c $(CFLAGS) $< -o $@
