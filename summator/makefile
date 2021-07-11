summator: summator.o
	gcc -o summator summator.o -no-pie

summator.o:summator.asm
	nasm -f elf64 -g -F dwarf summator.asm -l summator.lst
