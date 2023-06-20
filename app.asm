section .data
	hello: db "Hi World!", 10
	helloLen: equ $-hello

section .text
	global _start

	_start:
		mov rax,1
		mov rdi,1
		mov rsi,hello
		mov rdx,helloLen
		syscall

		; end program
		mov rax,60
		mov rdi,0
		syscall
