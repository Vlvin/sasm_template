%include "io.inc"

section .text
global main
main: ; entry point
  GET_DEC 4, eax ; get 4 byte num and put to eax 
  GET_DEC 4, ebx ; get 4 byte num and put to ebx 
  mov ecx, eax
  add ecx, ebx
  mul ecx
  PRINT_DEC 4, ecx ; print 4 byte num from eax
  PRINT_CHAR 10 ; print 10 -> '\n'
  PRINT_DEC 4, ecx ; print 4 byte num from eax
  PRINT_CHAR 10 ; print 10 -> '\n'
  ; exit
  mov eax, 0 ; exit syscall id
  ret
