
TARGETS := 01-hello 02-hello

all: $(TARGETS)

%: %.o
	ld -s -o $@ $<
	@./$@

01-hello.o: 01-hello.s
	as -o $@ $<

02-hello.o: 02-hello.s
	nasm -f elf64 -o $@ $<

clean:
	rm -f $(TARGETS) *.o

.PHONY: all clean
