section .data
	msg db "Hello World" , 0 ; Инициализируем перменную msg  и записываем в нее сообщение
	msglen db $-msg	; Инициализируем переменную msglen и записываем в нее доину сообщения msg ( $ - хранит адресс текущего учатска кода  )

section .bss	; Блок неинициализируемых данных

section .text	; Блок кода
	global main

main:
	xor rax , rax	
	inc rax		; Помещаем 1 в rax так как это код системного вызова WRITE		

	xor rdi , rdi,
	inc rdi			; Помещаем 1 в rdi так как это код стандартного потока stdout

	mov rsi , msg	; В rsi помещаем указатель на первый символ сообщение 
	mov rdx , msglen	; В rdx помещаем длину сообщения
	syscall				
	mov rax , 60		; Помещаем в rax 60 - это код выхода из программы
	mov rdi , 0			; Помещаем в rdi 0 - это код ошибки (0 -  ошибок нет)
	syscall
