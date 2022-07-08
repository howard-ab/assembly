global _start
section .text
section .data
p db 0xa
_start:
mov eax, 3
mov ebx,2
mov ecx, z
mov edx, 1
int 0x80
mov eax, 4
mov ebx, 1
mov ecx, z
mov edx, 1
int 0x80
mov eax, 4
mov ebx, 1
mov ecx, p
mov edx, 1
int 0x80
mov eax, 1
mov ebx, 0
int 0x80
section .bss
z resb 1

