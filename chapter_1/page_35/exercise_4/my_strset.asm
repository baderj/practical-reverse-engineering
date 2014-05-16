global _start
section .data
my_str:
    db 'The pool on the roof must have a leak.', 0
section .bss
section .text
_start: 
    nop                  ; for debugging purposes
    push byte 'x'        ; character to fill as second parameter 
    push dword my_str    ; push string a as first parameter 
    call strset          ; call function
    mov  ebx, eax        ; return value of function
    mov  eax, 1          ; exit system call
    int  080h            ; make system call 

strset:
    push ebp
    mov ebp, esp
    mov edi, [ebp+8]     ; get first string
    mov edx, edi         ; make copy of esi
    push edi             ; next for line put str length in ecx
    call strlen          ; ^
    add esp, 4           ; ^
    mov ecx, eax         ; ^
    mov al, [ebp+12]     ; get fill character 
    mov edi, edx         ; restore esi
    rep stosb            ; fill string
    mov eax, edx         ; return reference to string 
    mov esp, ebp
    pop ebp
    ret


strlen:
    push ebp
    mov ebp, esp
    mov edi, [ebp+8]     ; get first parameter
    mov edx, edi         ; copy address to start of string
    xor eax, eax         ; set eax to null byte
    mov ecx, -1          ; make sure ecx does not become zero 
    repne scasb          ; search null byte
    sub edi, edx         ; substract start address from end address 
    dec edi              ; decrement difference to compensate for null byte
    mov eax, edi         ; return strlen result
    mov esp, ebp
    pop ebp
    ret
