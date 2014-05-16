global _start
section .data
src_str:
    db 'The pool on the roof must have a leak.', 0
dst_str:
    db 'Second Location.', 0
section .bss
section .text
_start: 
    nop                  ; for debugging purposes
    push dword 10        ; push nr of bytes as third parameter
    push dword dst_str   ; push dst memory as second parameter 
    push dword src_str   ; push src memory as first parameter 
    call memcpy          ; call function
    mov  eax, 1          ; exit system call
    int  080h            ; make system call 

memcpy:
    push ebp
    mov ebp, esp
    mov esi, [ebp+8]     ; src location (first parameter) 
    mov edi, [ebp+12]    ; dst location (second parameter) 
    mov ecx, [ebp+16]    ; number of bytes (third parameter)
_loop:
    mov al, [esi];       ; copy byte from src ...
    mov [edi], al;       ; ... to dst
    inc esi              ; go to next byte in src ...
    inc edi              ; ... and dst
    dec ecx              ; decrement counter
    jnz _loop            ; loop n-times
    mov esp, ebp
    pop ebp
    ret
