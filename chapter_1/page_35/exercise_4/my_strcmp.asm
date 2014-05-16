global _start
section .data
str_a:
    db 'The pool on the roof must have a leak.', 0
str_b:
    db 'The pool on the roof must have a leak.', 0
section .bss
section .text
_start: 
    nop                  ; for debugging purposes
    push dword str_b     ; push string b as second parameter 
    push dword str_a     ; push string a as first parameter 
    call strcmp          ; call function
    mov  ebx, eax        ; return value of function
    mov  eax, 1          ; exit system call
    int  080h            ; make system call 

strcmp:
    push ebp
    mov ebp, esp
    mov edi, [ebp+12]    ; get second string 
    push edi             ; next for lines calc len of string b
    call strlen          ; ^^ 
    add esp, 4           ; ^^                   
    mov ebx, eax         ; ^^ 
    mov esi, [ebp+8]     ; get first string
    push esi             ; next for lines calc len of string a
    call strlen          ; ^^ 
    add esp, 4           ; ^^                   
_check:
    cmp eax, ebx         ; compare lengths
    ja _greater          ; string a is longer than string b 
    jb _less             ; string b is longer than string a 
    jmp _equal_length    ; strings have same length
_greater:
    mov eax, 1
    jmp _return
_less:
    mov eax, -1
    jmp _return
_equal_length:
    mov edi, [ebp+12]    ; get second string (restore)
    mov esi, [ebp+8]     ; get first string (restore)
    mov ecx, eax         ; length of strings
    repe cmpsb           ; compare strings
    jg _greater          ; string a is greater
    jl _less             ; string b is greater
    mov eax, 0           ; strings are equal
    jmp _return
_return:
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
