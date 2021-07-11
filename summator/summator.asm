extern printf
section .data
	loops dq 1000000000
	fmt  db "%ld" , 10 , 0

section .bss

section .text
	global main
	main:
		push rbp
		mov rbp , rsp

		xor rcx , rcx
		xor rax , rax

		for_loop:
			add rax , rcx
			inc rcx
			cmp rcx , [loops]
			jle for_loop

		mov rdx , rax

		xor rax , rax

		mov rdi , fmt
		mov rsi , rdx
		call printf

		mov rsp , rbp
		pop rbp
		ret
		
