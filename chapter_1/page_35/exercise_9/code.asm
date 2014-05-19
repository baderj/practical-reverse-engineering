SECTION  .data
my_str: 
    db     'The pool on the roof must have a leak.', 0
SECTION  .text
GLOBAL _start
_start: 
    nop
    push byte 'h'      
    push dword my_str  
    call do 
    add esp, 8
    mov  ebx,0         
    mov  eax,1         
    int 080h           

do:
    push ebp           
    mov ebp, esp       
    push edi
    mov edi, [ebp+8]
    xor eax, eax
    or ecx, 0FFFFFFFFh
    repne scasb
    add ecx, 1
    neg ecx
    sub edi, 1
    mov al, [ebp+0Ch]
    std
    repne scasb
    add edi, 1
    cmp [edi], al
    jz short _loc1
    xor eax, eax
    jmp short _loc2
_loc1:
    mov eax, edi
_loc2:
    cld
    pop edi
    leave
    retn

