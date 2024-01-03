ASSEMBLER = arm-linux-gnueabihf-as
LINKER = arm-linux-gnueabihf-gcc-10

LINKERFLAGS = -lc

SRC = factorial.asm
OBJECTS = factorial.o
OUT = Factorial.elf

all: $(OUT)

$(OUT): $(SRC)
	$(ASSEMBLER) $(SRC) -o $(OBJECTS)
	$(LINKER) $(LINKERFLAGS) $(OBJECTS) -o $(OUT)
	rm *.o

clean:
	rm -f $(OUT) $(OBJECTS)



