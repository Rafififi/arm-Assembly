#THIS IS OLD JUST USE THE MAKE FILE INSTEAD

arm-linux-gnueabihf-as game.asm -o game.o
arm-linux-gnueabihf-gcc-10 -nostdlib game.o -o game
