global _start
section .data
my_str:
    db 'The pool on the roof must have a leak.', 0
section .bss
section .text
_start: 
    nop                  ; for debugging purposes
    push byte 'X'        ; push char as second parameter
    push dword my_str    ; push string as first 
    call strchr          ; call function
    mov  ebx, eax        ; return value of function
    mov  eax, 1          ; exit system call
    int  080h            ; make system call 

strchr:
    push ebp
    mov ebp, esp
    mov edi, [ebp+8]     ; get first parameter
    mov bl, [ebp+12]     ; set bl to second parameter
    mov al, 0            ; set al to null byte
_loop:
    mov cl, [edi]        ; store current character
    cmp cl, bl           ; check if character is what we search         
    jz _return           ; jump to return if match
    scasb                ; check if null byte
    jnz _loop            ; loop if no match
    mov edi, 0           ; set edi to zero, so function will return null
_return:
    mov eax, edi         ; return pointer to first occurence 
    mov esp, ebp
    pop ebp
    ret
