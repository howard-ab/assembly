global _start
section .text
_start:
	mov eax, 3
    mov ebx, 2
    mov ecx, z
    mov edx, 1
    int 0x80
    mov eax, 1
    mov ebx, 0
    int 0x80
	

