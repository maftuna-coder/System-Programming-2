;Maftuna Sharabbaeva U1510067 (002)
;progarm for sum of 3 values

%include "io.inc"
section .text
global CMAIN
CMAIN:
 
 PRINT_STRING "Sum is -> "
    GET_DEC 4, eax ;inputing value1
    GET_DEC 4, ebx ;inputing value2
    GET_DEC 4, edx ;inputing value3
    add eax, ebx ;value1=vlue1+value2
    add edx, eax ;value3=vlue3+value1
    
    PRINT_DEC 4, edx ;outputting result of adding 3 numbers
    ret