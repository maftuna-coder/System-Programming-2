;Maftuna Sharabbaeva U1510067 (002)
;progarm for multiplication of 5 numbers

%include "io.inc"
section .text
global CMAIN
CMAIN:

GET_DEC 4 , eax ;input value1
mov ecx , 4 

PRINT_STRING "Multiplication of numbers is -> "
LoopOfMultiplication:
GET_DEC 4 ,ebx ;input value2,... , value5  
imul eax , ebx ;eax=eax*ebx
dec ecx ;ecx=ecx-1
jnz LoopOfMultiplication ;if ecx!=0 jump to LoopOfMultiplication

PRINT_DEC 4 , eax ;if ecx=0 show result
Ret
