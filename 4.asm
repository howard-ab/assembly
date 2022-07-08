
global _start
section .data
s db 'Hello world!'
lens equ $-s
	mov eax, 4
	mov ebx, 1
	mov ecx, s
	mov edx, lens
	int 0x80

