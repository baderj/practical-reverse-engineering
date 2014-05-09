SECTION  .data
SECTION  .text
GLOBAL _start
_start: 
    nop
    mov eax, 7
    mov ecx, 5
_before:
    push eax
    push ecx
    call add_me 
    add esp, 8
_after:
    mov  ebx,0         
    mov  eax,1         
    int 080h           

add_me:
    push ebp
    mov ebp, esp
    movsx eax, word [ebp+8]
    movsx eax, word [ebp+0Ch]
    add eax, ecx
    mov esp, ebp
    pop ebp
    retn

