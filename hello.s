section .data
	text db "Hello World", 10
	
section .text
	global _start 

_start: 
	mov 	rax, 1 ; 	syscall ID
	mov 	rdi, 1 ; 	file descriptor
	mov 	rsi, text ;	buffer
	mov 	rdx, 13 ; 	lenght of buf
	syscall

	mov 	rax, 60
	mov		rdi, 0
	syscall
