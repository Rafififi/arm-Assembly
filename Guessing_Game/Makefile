ASSEMBLER = arm-linux-gnueabihf-as
LINKER = arm-linux-gnueabihf-gcc-10

LINKERFLAGS = -nostdlib

SRC = game.asm
OBJECTS = game.o
OUT = Gae.elf

all: $(OUT)

$(OUT): $(SRC)
	$(ASSEMBLER) $(SRC) -o $(OBJECTS)
	$(LINKER) $(LINKERFLAGS) $(OBJECTS) -o $(OUT)

clean:
	rm -f $(OUT) $(OBJECTS)



