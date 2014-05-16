SECTION  .data
my_str: 
    db     'The pool on the roof must have a leak.', 0
SECTION  .text
GLOBAL _start
_start: 
    nop
    push byte 'x'      
    push dword my_str  
    call black_out     
    add esp, 8
    mov  ebx,0         
    mov  eax,1         
    int 080h           

black_out:
    push ebp           
    mov ebp, esp       
    ; ------------ start code from book ---------
    mov edi, [ebp+8]   
    mov edx, edi       
    xor eax, eax       
    or ecx, 0FFFFFFFFh 
    repne scasb        
    add ecx, 2         
    neg ecx            
    mov al, [ebp+0Ch]  
    mov edi, edx       
    rep stosb          
    mov eax, edx       
    ; ------------ end code from book -----------
    mov esp, ebp       
    pop ebp            
    ret

