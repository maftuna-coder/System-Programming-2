;Maftuna Sharabbaeva U1510067 (002)
;progarm for calculatinf power of value

%include "io.inc"
section .text
global CMAIN
CMAIN:

PRINT_STRING "power of it is -> "
GET_DEC 4 , eax ;inputting value1
GET_DEC 4 , ecx ;inputting value2 which is degree  of value1
mov ebx , 1 ;edx=1 because 10^1 is 10 so it is 1

Loop:
imul ebx,eax  ;eax=eax*ebx
dec ecx  ;ecx=ecx-1
jnz Loop  ; if ecx!=0 jump to loop
PRINT_DEC 4 , ebx ;if ecx=0 ouput result
Ret
