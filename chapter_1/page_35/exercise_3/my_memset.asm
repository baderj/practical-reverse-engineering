global _start
section .data
my_str:
    db 'The pool on the roof must have a leak.', 0
section .bss
section .text
_start: 
    nop                  ; for debugging purposes
    push dword 10        ; push nr of bytes as third parameter
    push byte 'x'        ; push character as second parameter 
    push dword my_str    ; push string as first parameter 
    call memset          ; call function
    mov  eax, 1          ; exit system call
    int  080h            ; make system call 

memset:
    push ebp
    mov ebp, esp
    mov edi, [ebp+8]     ; string (first parameter) 
    mov al, [ebp+12]     ; character (second parameter) 
    mov ecx, [ebp+16]    ; number of bytes (third parameter)
    repne stosb
    mov esp, ebp
    pop ebp
    ret
