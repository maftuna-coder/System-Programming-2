;Maftuna Sharabbaeva U1510067 (002)
;progarm for calculating average of 4 numbers

%include "io.inc"
section .text
global CMAIN
CMAIN:

PRINT_STRING "Average of numbers is -> "
    GET_DEC 4, eax ;inputing value1
    GET_DEC 4, ebx ;inputing value2
    GET_DEC 4, ecx ;inputing value3
    GET_DEC 4, edx ;inputing value4
  
    add eax, ebx ;value1=vlue1+value2
    add ecx, eax ;value3=vlue3+value1
    add edx, ecx ;value4=vlue4+value3
    mov eax, edx ;save sum to eax
    mov ecx, 4 ;assign 4 to ecx
    cdq ;to be able to run 64 bit program
    div ecx ;devide eax by 4
    
    PRINT_DEC 4, eax ;output result
    ret