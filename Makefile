
TARGETS := hello

all: $(TARGETS)

%: %.s
	gcc -nostdlib -no-pie -o $@ $<
	@./$@

clean:
	rm -f $(TARGETS)

.PHONY: all clean
