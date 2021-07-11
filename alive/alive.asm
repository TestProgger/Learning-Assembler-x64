section .data 
	msg1 db "Hello World", 10  , 0
	msg1len  equ $-msg1 - 1

	msg2 db "Alive and Kicking" , 10 , 0
	msg2len equ $-msg2 - 1

	radius dq 357
	pi dq 3.14

section .bss

section .text
	global main

main: 
	push rbp
	mov rbp , rsp 
		
	xor rax , rax
	inc rax

	xor rdi , rdi 
	inc rdi

	mov rsi , msg1
	mov rdx , msg1len
	syscall

	xor rax, rax
	inc rax

	xor rdi , rdi
	inc rdi

	mov rsi , msg2
	mov rdx , msg2len
	syscall

	mov rsp , rbp
	pop rbp

	mov rax , 60
	xor rdi , rdi
	syscall





