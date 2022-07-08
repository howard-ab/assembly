%include "st_io.inc"
section .bss
mas resd 256

section .data
n dw 0
section .text
global MAIN 
MAIN:
mov ebp, esp
xor eax, eax
GETUN [n]
xor ecx, ecx
input:
cmp ecx, [n]
je .end
GETUN [mas+ecx*4]
inc ecx
jmp input
.end:
xor ebx, ebx ; max num
xor ecx, ecx
max:
cmp ecx, [n]
je .end
cmp ecx, 0
je .change
mov eax, [mas+ecx*4]
cmp eax, [mas+ebx*4]
jg .change
inc ecx
jmp max

.change:
mov ebx, ecx
inc ecx
jmp max
.end:
xor edx, edx
min:
cmp ecx, [n]
je .end
cmp ecx, 0
je .change
mov eax, [mas+ecx*4]
cmp eax, [mas+edx*4]
jl .change
inc ecx
jmp min

.change:
mov edx, ecx
inc ecx
jmp min
.end:
push dword [mas+ebx*4]
push dword [mas+edx*4]
pop dword [mas+ebx*4]
pop dword [mas+edx*4]
xor ecx, ecx
output:
cmp ecx, [n]
je .end
SIGNINT [mas+ecx*4]
inc ecx
jmp output
.end:
FINISH