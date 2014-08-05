nt!ObpCallPostOperationCallbacks:
fffff803`d9dfd62c 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9dfd631 48896c2418      mov     qword ptr [rsp+18h],rbp
fffff803`d9dfd636 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`d9dfd63b 57              push    rdi
fffff803`d9dfd63c 4883ec20        sub     rsp,20h
fffff803`d9dfd640 488bfa          mov     rdi,rdx
fffff803`d9dfd643 488be9          mov     rbp,rcx

nt!ObpCallPostOperationCallbacks+0x1a:
fffff803`d9dfd646 48393f          cmp     qword ptr [rdi],rdi
fffff803`d9dfd649 7464            je      nt!ObpCallPostOperationCallbacks+0x83 (fffff803`d9dfd6af)

nt!ObpCallPostOperationCallbacks+0x1f:
fffff803`d9dfd64b 488b7708        mov     rsi,qword ptr [rdi+8]
fffff803`d9dfd64f 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`d9dfd653 48393e          cmp     qword ptr [rsi],rdi
fffff803`d9dfd656 7550            jne     nt!ObpCallPostOperationCallbacks+0x7c (fffff803`d9dfd6a8)

nt!ObpCallPostOperationCallbacks+0x2c:
fffff803`d9dfd658 483930          cmp     qword ptr [rax],rsi
fffff803`d9dfd65b 754b            jne     nt!ObpCallPostOperationCallbacks+0x7c (fffff803`d9dfd6a8)

nt!ObpCallPostOperationCallbacks+0x31:
fffff803`d9dfd65d 48894708        mov     qword ptr [rdi+8],rax
fffff803`d9dfd661 488938          mov     qword ptr [rax],rdi
fffff803`d9dfd664 488b5e10        mov     rbx,qword ptr [rsi+10h]
fffff803`d9dfd668 488b4618        mov     rax,qword ptr [rsi+18h]
fffff803`d9dfd66c 488bd5          mov     rdx,rbp
fffff803`d9dfd66f 48894518        mov     qword ptr [rbp+18h],rax
fffff803`d9dfd673 488b4b18        mov     rcx,qword ptr [rbx+18h]
fffff803`d9dfd677 488b4908        mov     rcx,qword ptr [rcx+8]
fffff803`d9dfd67b ff5330          call    qword ptr [rbx+30h]
fffff803`d9dfd67e 488d4b38        lea     rcx,[rbx+38h]
fffff803`d9dfd682 0f0d09          prefetchw [rcx]
fffff803`d9dfd685 488b01          mov     rax,qword ptr [rcx]
fffff803`d9dfd688 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`d9dfd68c 488d50fe        lea     rdx,[rax-2]
fffff803`d9dfd690 f0480fb111      lock cmpxchg qword ptr [rcx],rdx
fffff803`d9dfd695 7405            je      nt!ObpCallPostOperationCallbacks+0x70 (fffff803`d9dfd69c)

nt!ObpCallPostOperationCallbacks+0x6b:
fffff803`d9dfd697 e8d4dcb2ff      call    nt!ExfReleaseRundownProtection (fffff803`d992b370)

nt!ObpCallPostOperationCallbacks+0x70:
fffff803`d9dfd69c 33d2            xor     edx,edx
fffff803`d9dfd69e 488bce          mov     rcx,rsi
fffff803`d9dfd6a1 e8ba9acfff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)
fffff803`d9dfd6a6 eb9e            jmp     nt!ObpCallPostOperationCallbacks+0x1a (fffff803`d9dfd646)

nt!ObpCallPostOperationCallbacks+0x7c:
fffff803`d9dfd6a8 b903000000      mov     ecx,3
fffff803`d9dfd6ad cd29            int     29h

nt!ObpCallPostOperationCallbacks+0x83:
fffff803`d9dfd6af 488b4d08        mov     rcx,qword ptr [rbp+8]
fffff803`d9dfd6b3 ba4f624362      mov     edx,6243624Fh
fffff803`d9dfd6b8 e8a337b1ff      call    nt!ObfDereferenceObjectWithTag (fffff803`d9910e60)
fffff803`d9dfd6bd 654c8b1c2588010000 mov   r11,qword ptr gs:[188h]
fffff803`d9dfd6c6 410fbf83e4010000 movsx   eax,word ptr [r11+1E4h]
fffff803`d9dfd6ce ffc0            inc     eax
fffff803`d9dfd6d0 66418983e4010000 mov     word ptr [r11+1E4h],ax
fffff803`d9dfd6d8 6685c0          test    ax,ax
fffff803`d9dfd6db 751c            jne     nt!ObpCallPostOperationCallbacks+0xcd (fffff803`d9dfd6f9)

nt!ObpCallPostOperationCallbacks+0xb1:
fffff803`d9dfd6dd 498d8398000000  lea     rax,[r11+98h]
fffff803`d9dfd6e4 483900          cmp     qword ptr [rax],rax
fffff803`d9dfd6e7 7410            je      nt!ObpCallPostOperationCallbacks+0xcd (fffff803`d9dfd6f9)

nt!ObpCallPostOperationCallbacks+0xbd:
fffff803`d9dfd6e9 664183bbe601000000 cmp   word ptr [r11+1E6h],0
fffff803`d9dfd6f2 7505            jne     nt!ObpCallPostOperationCallbacks+0xcd (fffff803`d9dfd6f9)

nt!ObpCallPostOperationCallbacks+0xc8:
fffff803`d9dfd6f4 e80701b8ff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!ObpCallPostOperationCallbacks+0xcd:
fffff803`d9dfd6f9 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d9dfd6fe 488b6c2440      mov     rbp,qword ptr [rsp+40h]
fffff803`d9dfd703 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff803`d9dfd708 33c0            xor     eax,eax
fffff803`d9dfd70a 4883c420        add     rsp,20h
fffff803`d9dfd70e 5f              pop     rdi
fffff803`d9dfd70f c3              ret
