extern printf

section .data
	msg db "Hello World" , 0
	fmtstr db "This is %s" , 10 , 0

section .bss

section .text
	global main

	main:
		push rbp 
		mov rbp , rsp

		mov rdi , fmtstr
		mov rsi , msg
		xor rax , rax
		call printf

		mov rsp , rbp
		pop rbp
		mov rax , 60
		xor rdi , rdi 
		syscall
