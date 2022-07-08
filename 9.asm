%include "st_io.inc"
global _start
section .text
_start:

mov al, a
cbw
mov al, a
mov al, 0
FINISH

section .bss
a resb 1
b resb 1


 
 
