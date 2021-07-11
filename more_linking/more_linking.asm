extern printf
extern rand

extern square
extern sqrt

section .data
	number1 dq 9.12
	number2 dq 32.12
	
	fmtsqrt  db "sqrt(%f) = %f" , 10 , 0
	fmtsquare db "sqr(%f) = %f" , 10 , 0

section .bss

section .text

	global main

	main:
		push rbp
		mov rbp , rsp

		; SQRT func
		movsd xmm0 , [number1]
		call sqrt

		mov rax , 2

		mov rdi , fmtsqrt
		call printf

		; AREA Func

		movsd xmm0 , [number2]
		call square

		mov rax , 2
		mov rdi , fmtsquare
		call printf

		leave 
		ret

