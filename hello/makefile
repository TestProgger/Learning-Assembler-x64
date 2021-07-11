hello: hello.o
		gcc -O3 -o hello hello.o -no-pie

hello.o: hello.asm
		nasm -f elf64 -g -F dwarf hello.asm -l hello.lst
