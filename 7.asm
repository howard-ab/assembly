global _start
section .data
_start:
a dd 543
b dd 400
mov ax, word[b]
add word[a], ax
mov ax, word[b+2]
adc word[a+2], ax
ans [a]

