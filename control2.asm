%include "st_io.inc"
section .data
res dd 0
section .bss
a1 resb 100
a2 resb 100
global _start
section .text
_start:
mov ecx, 0
mov ebx, 0
label1:
lea eax, [a1 + ebx]
GETUN [eax]
add ebx, 4
inc ecx
CMP ecx, 5
jl label1
mov ecx, 0
mov ebx, 0
label2:
lea eax, [a2 + ebx]
GETUN [eax]
add ebx, 4
inc ecx
CMP ecx, 5
jl label2
mov ecx, 0
mov ebx, 0
label3:
mov eax, [a1 + ebx]
mov esi, [a2 + ebx]
mov edx, 0
div dword [a2 + ebx]
add [res], edx
add ebx, 4
inc ecx
CMP ecx, 5

jl label3
UNSINT [res]
FINISH
