section .data
	text db "Hello World", 10 ; 10 = '\n'
	
section .text
	global _start 

_start: 
	mov 	rax, 1 ; 	syscall ID
	mov 	rdi, 1 ; 	file descriptor
	mov 	rsi, text ;	buffer
	mov 	rdx, 13 ; 	lenght of buf
	syscall
	jmp .exit

.exit:
	mov 	rax, 60 ; 	Number of exit syscall
	mov		rdi, 0
	syscall
