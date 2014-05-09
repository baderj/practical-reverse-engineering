SECTION  .data
my_str: 
    db     'The pool on the roof must have a leak.', 0
SECTION  .text
GLOBAL _start
_start: 
    nop
    push byte 'x'      ; second function parameter
    push dword my_str  ; first function parameter
    call black_out     ; call function
    add esp, 4         ; cleaning out the stack
    mov  ebx,0         ; parameter for exit call (return value) 
    mov  eax,1         ; exit system call
    int 080h           ; run system call, see page 79 pal

black_out:
    push ebp           ; function prologue, save stack base pointer
    mov ebp, esp       ; point base pointer to ESP
    ; ------------ start code from book ---------
    mov edi, [ebp+8]   ; put first parameter (char*) in edi 
    mov edx, edi       ; make a copy of edi (scasb will change edi)
    xor eax, eax       ; set eax to 0 (i.e., null byte)
    or ecx, 0FFFFFFFFh ; set ecs to 0xFFFFFFFF = (-1)
    repne scasb        ; search eax (null byte) in memory at edi (first
                       ; parameter), decrement ecx for each tested char.
    add ecx, 2         ; increment ecx by 2 (to compensate for starting
                       ; at -1, and the final null byte
    neg ecx            ; change sign of ecx. ecx is now length of string
    mov al, [ebp+0Ch]  ; copy second parameter (char) to al (byte)
    mov edi, edx       ; restore edi from backup (points at string again)
    rep stosb          ; write byte at eax (second function parameter) to
                       ; memory at edi (first function parameter), for edi
                       ; times (length of string)
    mov eax, edx       ; set eax (return value) to address of (changed) string
    ; ------------ end code from book -----------
    mov esp, ebp       ; restore stack pointer
    pop ebp            ; restore stack base pointer
    ret

