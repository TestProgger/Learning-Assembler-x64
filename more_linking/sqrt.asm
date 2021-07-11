section .data
section .bss

section .text
	global sqrt

	sqrt:
		push rbp
		mov rbp , rsp
		sqrtsd xmm1 , xmm0
		mov rsp , rbp
		pop rbp
		ret

