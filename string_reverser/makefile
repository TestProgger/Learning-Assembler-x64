reverser: reverser.o
	gcc -o reverser reverser.o -no-pie

reverser.o: reverser.asm
	nasm -f elf64 -g -F dwarf reverser.asm -l reverser.lst
