more_linking: more_linking.o sqrt.o square.o
	gcc -g -o more_linking more_linking.o sqrt.o square.o -no-pie
more_linking.o:more_linking.asm
	nasm -f elf64 -g -F dwarf more_linking.asm -l more_linking.lst
sqrt.o:sqrt.asm
	nasm -f elf64 -g -F dwarf sqrt.asm -l sqrt.lst
square.o:square.asm
	nasm -f elf64 -g -F dwarf square.asm -l square.lst
