AS=as
LINKER=ld
OBJ=src/helloworld.o

%.o: %.asm
	$(AS) -o $@ $<

helloworld: $(OBJ)
	mkdir -p bin/
	$(LINKER) -o bin/$@ $^

.PHONY: clean

clean:
	rm $(OBJ)
