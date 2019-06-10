;Maftuna Sharabbaeva U1510067 (002)
;progarm for calculating factorial

%include "io.inc"
section .text
global CMAIN
CMAIN:

PRINT_STRING "Factorial of number is -> "
GET_DEC 4 , eax ;get value1
mov ecx , eax ;ecx=value1
dec ecx  ;value1-1

LoopOfFactorial: ;loop
imul eax ,ecx ; value1=value1*(value1-1) ... (value1-k) 
dec ecx ; (value-1)-1
jnz LoopOfFactorial ;jump tp L1 if ecx!=0

PRINT_DEC 4 ,eax ;output eax
ret
