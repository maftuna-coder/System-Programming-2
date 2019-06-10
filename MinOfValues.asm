;Maftuna Sharabbaeva U1510067 (002)
;progarm for finding min of values

%include "io.inc"
section .text
global CMAIN
CMAIN:

PRINT_STRING "Smallest is -> "
mov eax, 44 ; 44numbers can be checked to find minimum

GET_DEC 4 , ebx ;inputing value1

Loop1: ;loop1
GET_DEC 4 , edx ;inputting value2, 3 ... 44
cmp ebx ,edx ;is ebx>edx
jg Loop2  ;if yes then jump to L2
jmp end  ;if no jump to end

Loop2: ;loop2
mov ebx ,edx ; save edx in ebx because edx is less than ebx 

end: 
dec eax ;eax=eax-1
jnz Loop1 ;if eax!=0 jump to L1

PRINT_DEC 4 ,ebx ;show minimum value
Ret

