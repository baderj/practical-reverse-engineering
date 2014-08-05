nt!KeDeregisterObjectNotification:
fffff803`21d78b10 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21d78b15 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`21d78b1a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`21d78b1f 57              push    rdi
fffff803`21d78b20 4156            push    r14
fffff803`21d78b22 4157            push    r15
fffff803`21d78b24 4883ec20        sub     rsp,20h
fffff803`21d78b28 488bfa          mov     rdi,rdx
fffff803`21d78b2b 488bd9          mov     rbx,rcx
fffff803`21d78b2e 33ed            xor     ebp,ebp
fffff803`21d78b30 450f20c6        mov     r14,cr8
fffff803`21d78b34 448d7d02        lea     r15d,[rbp+2]
fffff803`21d78b38 450f22c7        mov     cr8,r15
fffff803`21d78b3c f00fba2907      lock bts dword ptr [rcx],7
fffff803`21d78b41 8bf5            mov     esi,ebp
fffff803`21d78b43 0f821b130d00    jb      nt! ?? ::FNODOBFM::`string'+0x1107c (fffff803`21e49e64)

nt!KeDeregisterObjectNotification+0x39:
fffff803`21d78b49 8a4711          mov     al,byte ptr [rdi+11h]
fffff803`21d78b4c 413ac7          cmp     al,r15b
fffff803`21d78b4f 7520            jne     nt!KeDeregisterObjectNotification+0x61 (fffff803`21d78b71)

nt!KeDeregisterObjectNotification+0x41:
fffff803`21d78b51 488b0f          mov     rcx,qword ptr [rdi]
fffff803`21d78b54 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`21d78b58 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`21d78b5c 753e            jne     nt!KeDeregisterObjectNotification+0x8c (fffff803`21d78b9c)

nt!KeDeregisterObjectNotification+0x4e:
fffff803`21d78b5e 483938          cmp     qword ptr [rax],rdi
fffff803`21d78b61 7539            jne     nt!KeDeregisterObjectNotification+0x8c (fffff803`21d78b9c)

nt!KeDeregisterObjectNotification+0x53:
fffff803`21d78b63 488908          mov     qword ptr [rax],rcx
fffff803`21d78b66 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d78b6a 40b501          mov     bpl,1
fffff803`21d78b6d c6471103        mov     byte ptr [rdi+11h],3

nt!KeDeregisterObjectNotification+0x61:
fffff803`21d78b71 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`21d78b78 410fb6ce        movzx   ecx,r14b
fffff803`21d78b7c 440f22c1        mov     cr8,rcx
fffff803`21d78b80 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d78b85 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`21d78b8a 408ac5          mov     al,bpl
fffff803`21d78b8d 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`21d78b92 4883c420        add     rsp,20h
fffff803`21d78b96 415f            pop     r15
fffff803`21d78b98 415e            pop     r14
fffff803`21d78b9a 5f              pop     rdi
fffff803`21d78b9b c3              ret

nt!KeDeregisterObjectNotification+0x8c:
fffff803`21d78b9c b903000000      mov     ecx,3
fffff803`21d78ba1 cd29            int     29h

nt!KeDeregisterObjectNotification+0x93:
fffff803`21d78ba3 f390            pause
fffff803`21d78ba5 e9dd120d00      jmp     nt! ?? ::FNODOBFM::`string'+0x1109f (fffff803`21e49e87)

nt! ?? ::FNODOBFM::`string'+0x1107c:
fffff803`21e49e64 ffc6            inc     esi
fffff803`21e49e66 8535e0051800    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21e49e6c 0f8531edf2ff    jne     nt!KeDeregisterObjectNotification+0x93 (fffff803`21d78ba3)

nt! ?? ::FNODOBFM::`string'+0x1108a:
fffff803`21e49e72 8b05f8011800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e49e78 a840            test    al,40h
fffff803`21e49e7a 0f8423edf2ff    je      nt!KeDeregisterObjectNotification+0x93 (fffff803`21d78ba3)

nt! ?? ::FNODOBFM::`string'+0x11098:
fffff803`21e49e80 8bce            mov     ecx,esi
fffff803`21e49e82 e83d15f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x1109f:
fffff803`21e49e87 8b03            mov     eax,dword ptr [rbx]
fffff803`21e49e89 84c0            test    al,al
fffff803`21e49e8b 78d7            js      nt! ?? ::FNODOBFM::`string'+0x1107c (fffff803`21e49e64)

nt! ?? ::FNODOBFM::`string'+0x110a5:
fffff803`21e49e8d f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21e49e92 72d0            jb      nt! ?? ::FNODOBFM::`string'+0x1107c (fffff803`21e49e64)

nt! ?? ::FNODOBFM::`string'+0x110ac:
fffff803`21e49e94 e9b0ecf2ff      jmp     nt!KeDeregisterObjectNotification+0x39 (fffff803`21d78b49)
