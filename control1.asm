%include"st_io.inc"
global _start

section .bss

x1 resd 100
y1 resd 100
r1 resd 100
x2 resd 100
y2 resd 100
r2 resd 100
x resd 100
y resd 100
section .text
_start:
GETSIG [x1]
GETSIG [y1]
GETSIG [r1]
GETSIG [x2]
GETSIG [y2]
GETSIG [r2]

mov ax, [x1]
sub ax, [x2]
imul ax, ax
mov [x], ax
mov ax, [y1]
sub ax, [y2]
imul ax, ax 
add [x], ax
mov ax, [r1]
add ax, [r2]
imul ax, ax
mov bx, [x]
CMP ax, bx
JGE here
PRINT "NO!"
FINISH

here:
PRINT "YES!"
FINISH 
