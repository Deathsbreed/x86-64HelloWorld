AS=as
LINKER=ld
OBJ=src/HelloWorld.o

%.o: %.asm
	$(AS) -o $@ $<

helloworld: $(OBJ)
	$(LINKER) -o $@ $^

.PHONY: clean

clean:
	rm $(OBJ)
