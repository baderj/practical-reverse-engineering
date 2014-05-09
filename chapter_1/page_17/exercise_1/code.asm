SECTION  .data
SECTION  .text
GLOBAL _start
_start: 
    nop
    call read_eip
    mov  ebx,0         
    mov  eax,1         
    int 080h           

read_eip:
    mov eax, [esp]
    ret
