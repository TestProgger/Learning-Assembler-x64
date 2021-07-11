section .data
section .bss

section .text
	global square
	square:
		push rbp 
		mov rbp , rsp

		movsd xmm1 , xmm0
		mulsd xmm1 , xmm1

		mov rsp , rbp
		pop rbp
		ret

		
