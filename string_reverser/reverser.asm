extern printf

section .data
	string db "Hello , World" , 0
	stringLen equ  $-string - 1
	fmtNormal db "Normal String : %s" , 10 , 0
	fmtReversed db "Reversed String: %s" , 10 , 0

section .bss

section .text
	global main

	main:
		push rbp
		mov rbp , rsp

		xor rax , rax
		mov rdi , fmtNormal
		mov rsi , string
		call printf

		xor rax, rax	
		xor rcx , rcx
		pushLoop:
			mov al , byte[string +rcx]
			push rax
			inc rcx
			cmp rcx , stringLen
			jl pushLoop

		xor rcx , rcx
		popLoop:
			pop rax
			mov byte[string + rcx] , al
			inc rcx
			cmp rcx , stringLen
			jl popLoop
			mov byte[string + rcx] , 0

		mov rdi , fmtReversed
		mov rsi , string
		xor rax  , rax
		call printf

		mov rsp , rbp
		pop rbp

		ret


