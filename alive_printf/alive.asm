extern printf 
extern rand

section .data
	msg1 db "Hello World" , 10, 0
	msg1len equ $-msg1-2

	msg2 db "Alive kicking" , 10, 0

	radius dd 357
	pi dq 3.14

	fmtstr db "%s" , 10 , 0
	fmtflt db "%f" , 10 , 0
	fmtint db "%d" , 10 , 0

section .bss


section .text

	global main

	main:
		push rbp
		mov rbp , rsp 
		
		; Print msg1
		
		xor rax , rax
		mov rdi , fmtstr
		mov rsi , msg1
		call printf
		

		;Print msg2

		xor rax , rax
		mov rdi , fmtstr
		mov rsi , msg2
		call printf

		; Print radius

		xor rax , rax
		mov rdi , fmtint
		mov rsi , [radius]
		call printf

		; Print pi

		xor rax , rax
		inc rax

		movq xmm0 , [pi]
		mov rdi , fmtflt
		call printf

		
		mov rsp , rbp
		pop rbp

ret














