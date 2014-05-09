all : code

code : code.o
	ld -m elf_i386 -o code code.o

code.o : code.asm
	nasm -f elf32 -g -F dwarf code.asm
