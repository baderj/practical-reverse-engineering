nt! ?? ::FNODOBFM::`string'+0xe29a:
fffff803`21c74a31 488b4f68        mov     rcx,qword ptr [rdi+68h]
fffff803`21c74a35 4885c9          test    rcx,rcx
fffff803`21c74a38 0f84463d0100    je      nt!KeUpdateTotalCyclesCurrentThread+0xd0 (fffff803`21c88784)

nt! ?? ::FNODOBFM::`string'+0xe2a7:
fffff803`21c74a3e 8b831c530000    mov     eax,dword ptr [rbx+531Ch]
fffff803`21c74a44 4803c1          add     rax,rcx

nt! ?? ::FNODOBFM::`string'+0xe2b0:
fffff803`21c74a47 4885c0          test    rax,rax
fffff803`21c74a4a 7403            je      nt! ?? ::FNODOBFM::`string'+0xe2b8 (fffff803`21c74a4f)

nt! ?? ::FNODOBFM::`string'+0xe2b5:
fffff803`21c74a4c 4c0100          add     qword ptr [rax],r8

nt! ?? ::FNODOBFM::`string'+0xe2b8:
fffff803`21c74a4f f6470208        test    byte ptr [rdi+2],8
fffff803`21c74a53 7424            je      nt! ?? ::FNODOBFM::`string'+0xe2e2 (fffff803`21c74a79)

nt! ?? ::FNODOBFM::`string'+0xe2be:
fffff803`21c74a55 488b8338530000  mov     rax,qword ptr [rbx+5338h]
fffff803`21c74a5c 488b8f38020000  mov     rcx,qword ptr [rdi+238h]
fffff803`21c74a63 488b5050        mov     rdx,qword ptr [rax+50h]
fffff803`21c74a67 488bc2          mov     rax,rdx
fffff803`21c74a6a 4823c1          and     rax,rcx
fffff803`21c74a6d 483bc2          cmp     rax,rdx
fffff803`21c74a70 7407            je      nt! ?? ::FNODOBFM::`string'+0xe2e2 (fffff803`21c74a79)

nt! ?? ::FNODOBFM::`string'+0xe2db:
fffff803`21c74a72 4c018350530000  add     qword ptr [rbx+5350h],r8

nt! ?? ::FNODOBFM::`string'+0xe2e2:
fffff803`21c74a79 4883bf6801000000 cmp     qword ptr [rdi+168h],0
fffff803`21c74a81 0f849a3c0100    je      nt!KeUpdateTotalCyclesCurrentThread+0x6d (fffff803`21c88721)

nt! ?? ::FNODOBFM::`string'+0xe2f0:
fffff803`21c74a87 488bcf          mov     rcx,rdi
fffff803`21c74a8a e8b1c11700      call    nt!KiEndCounterAccumulation (fffff803`21df0c40)
fffff803`21c74a8f 90              nop
fffff803`21c74a90 e98c3c0100      jmp     nt!KeUpdateTotalCyclesCurrentThread+0x6d (fffff803`21c88721)

nt! ?? ::FNODOBFM::`string'+0xe2fe:
fffff803`21c74a95 b102            mov     cl,2
fffff803`21c74a97 c6430600        mov     byte ptr [rbx+6],0
fffff803`21c74a9b ff152fb93400    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`21fc03d0)]
fffff803`21c74aa1 90              nop
fffff803`21c74aa2 e9be3c0100      jmp     nt!KeUpdateTotalCyclesCurrentThread+0xb1 (fffff803`21c88765)

nt! ?? ::FNODOBFM::`string'+0x14e6a:
fffff803`21c885d8 ffc7            inc     edi
fffff803`21c885da 853d6c1e3400    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],edi
fffff803`21c885e0 0f8526100c00    jne     nt!KiFlushQueueApc+0x9c (fffff803`21d4960c)

nt! ?? ::FNODOBFM::`string'+0x14e78:
fffff803`21c885e6 8b05841a3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c885ec a840            test    al,40h
fffff803`21c885ee 0f8418100c00    je      nt!KiFlushQueueApc+0x9c (fffff803`21d4960c)

nt! ?? ::FNODOBFM::`string'+0x14e86:
fffff803`21c885f4 8bcf            mov     ecx,edi
fffff803`21c885f6 e8c92d1500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c885fb 90              nop
fffff803`21c885fc e9fd0f0c00      jmp     nt!KiFlushQueueApc+0x8e (fffff803`21d495fe)

nt! ?? ::FNODOBFM::`string'+0x14e93:
fffff803`21c88601 440f20c5        mov     rbp,cr8
fffff803`21c88605 b902000000      mov     ecx,2
fffff803`21c8860a 440f22c1        mov     cr8,rcx
fffff803`21c8860e 33ff            xor     edi,edi

nt! ?? ::FNODOBFM::`string'+0x14ea2:
fffff803`21c88610 f0480fba6b4000  lock bts qword ptr [rbx+40h],0
fffff803`21c88617 732e            jae     nt! ?? ::FNODOBFM::`string'+0x14ed9 (fffff803`21c88647)

nt! ?? ::FNODOBFM::`string'+0x14eab:
fffff803`21c88619 ffc7            inc     edi
fffff803`21c8861b 853d2b1e3400    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],edi
fffff803`21c88621 0f85e90f0c00    jne     nt!KiFlushQueueApc+0xa0 (fffff803`21d49610)

nt! ?? ::FNODOBFM::`string'+0x14eb9:
fffff803`21c88627 8b05431a3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c8862d a840            test    al,40h
fffff803`21c8862f 0f84db0f0c00    je      nt!KiFlushQueueApc+0xa0 (fffff803`21d49610)

nt! ?? ::FNODOBFM::`string'+0x14ec7:
fffff803`21c88635 8bcf            mov     ecx,edi
fffff803`21c88637 e8882d1500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x14ece:
fffff803`21c8863c 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`21c88640 4885c0          test    rax,rax
fffff803`21c88643 75d4            jne     nt! ?? ::FNODOBFM::`string'+0x14eab (fffff803`21c88619)

nt! ?? ::FNODOBFM::`string'+0x14ed7:
fffff803`21c88645 ebc9            jmp     nt! ?? ::FNODOBFM::`string'+0x14ea2 (fffff803`21c88610)

nt! ?? ::FNODOBFM::`string'+0x14ed9:
fffff803`21c88647 480fbec6        movsx   rax,sil
fffff803`21c8864b 488d8b98000000  lea     rcx,[rbx+98h]
fffff803`21c88652 48c1e004        shl     rax,4
fffff803`21c88656 4803c8          add     rcx,rax
fffff803`21c88659 488b01          mov     rax,qword ptr [rcx]
fffff803`21c8865c 483bc1          cmp     rax,rcx
fffff803`21c8865f 7504            jne     nt! ?? ::FNODOBFM::`string'+0x14ef7 (fffff803`21c88665)

nt! ?? ::FNODOBFM::`string'+0x14ef3:
fffff803`21c88661 33c0            xor     eax,eax
fffff803`21c88663 eb2c            jmp     nt! ?? ::FNODOBFM::`string'+0x14f23 (fffff803`21c88691)

nt! ?? ::FNODOBFM::`string'+0x14ef7:
fffff803`21c88665 488b5108        mov     rdx,qword ptr [rcx+8]
fffff803`21c88669 48394808        cmp     qword ptr [rax+8],rcx
fffff803`21c8866d 7537            jne     nt! ?? ::FNODOBFM::`string'+0x14f38 (fffff803`21c886a6)

nt! ?? ::FNODOBFM::`string'+0x14f01:
fffff803`21c8866f 48390a          cmp     qword ptr [rdx],rcx
fffff803`21c88672 7532            jne     nt! ?? ::FNODOBFM::`string'+0x14f38 (fffff803`21c886a6)

nt! ?? ::FNODOBFM::`string'+0x14f06:
fffff803`21c88674 488902          mov     qword ptr [rdx],rax
fffff803`21c88677 48895008        mov     qword ptr [rax+8],rdx
fffff803`21c8867b 488bd0          mov     rdx,rax

nt! ?? ::FNODOBFM::`string'+0x14f10:
fffff803`21c8867e c6424200        mov     byte ptr [rdx+42h],0
fffff803`21c88682 488b12          mov     rdx,qword ptr [rdx]
fffff803`21c88685 483bd0          cmp     rdx,rax
fffff803`21c88688 75f4            jne     nt! ?? ::FNODOBFM::`string'+0x14f10 (fffff803`21c8867e)

nt! ?? ::FNODOBFM::`string'+0x14f1c:
fffff803`21c8868a 48894908        mov     qword ptr [rcx+8],rcx
fffff803`21c8868e 488909          mov     qword ptr [rcx],rcx

nt! ?? ::FNODOBFM::`string'+0x14f23:
fffff803`21c88691 48c7434000000000 mov     qword ptr [rbx+40h],0
fffff803`21c88699 400fb6cd        movzx   ecx,bpl
fffff803`21c8869d 440f22c1        mov     cr8,rcx
fffff803`21c886a1 e9050f0c00      jmp     nt!KiFlushQueueApc+0x3b (fffff803`21d495ab)

nt! ?? ::FNODOBFM::`string'+0x14f38:
fffff803`21c886a6 b903000000      mov     ecx,3
fffff803`21c886ab cd29            int     29h
fffff803`21c886ad 90              nop
fffff803`21c886ae 90              nop
fffff803`21c886af 90              nop
fffff803`21c886b0 90              nop
fffff803`21c886b1 90              nop
fffff803`21c886b2 90              nop
fffff803`21c886b3 90              nop
fffff803`21c886b4 488bc4          mov     rax,rsp
fffff803`21c886b7 48895808        mov     qword ptr [rax+8],rbx
fffff803`21c886bb 48896810        mov     qword ptr [rax+10h],rbp
fffff803`21c886bf 48897018        mov     qword ptr [rax+18h],rsi
fffff803`21c886c3 48897820        mov     qword ptr [rax+20h],rdi
fffff803`21c886c7 4156            push    r14
fffff803`21c886c9 4883ec20        sub     rsp,20h
fffff803`21c886cd 4c8bf2          mov     r14,rdx
fffff803`21c886d0 488bf9          mov     rdi,rcx
fffff803`21c886d3 fa              cli
fffff803`21c886d4 65488b1c2520000000 mov   rbx,qword ptr gs:[20h]
fffff803`21c886dd c6432001        mov     byte ptr [rbx+20h],1
fffff803`21c886e1 0f31            rdtsc
fffff803`21c886e3 488b6948        mov     rbp,qword ptr [rcx+48h]
fffff803`21c886e7 48c1e220        shl     rdx,20h
fffff803`21c886eb 480bc2          or      rax,rdx
fffff803`21c886ee 4c8bc0          mov     r8,rax
fffff803`21c886f1 488bf0          mov     rsi,rax
fffff803`21c886f4 b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21c886f9 4c2b8340530000  sub     r8,qword ptr [rbx+5340h]
fffff803`21c88700 4903e8          add     rbp,r8
fffff803`21c88703 48896948        mov     qword ptr [rcx+48h],rbp
fffff803`21c88707 8b4950          mov     ecx,dword ptr [rcx+50h]
fffff803`21c8870a 4903c8          add     rcx,r8
fffff803`21c8870d 483bc8          cmp     rcx,rax
fffff803`21c88710 480f47c8        cmova   rcx,rax
fffff803`21c88714 f647020e        test    byte ptr [rdi+2],0Eh
fffff803`21c88718 894f50          mov     dword ptr [rdi+50h],ecx
fffff803`21c8871b 0f8510c3feff    jne     nt! ?? ::FNODOBFM::`string'+0xe29a (fffff803`21c74a31)

nt!KeUpdateTotalCyclesCurrentThread+0x6d:
fffff803`21c88721 4889b340530000  mov     qword ptr [rbx+5340h],rsi
fffff803`21c88728 4d85f6          test    r14,r14
fffff803`21c8872b 7403            je      nt!KeUpdateTotalCyclesCurrentThread+0x7c (fffff803`21c88730)

nt!KeUpdateTotalCyclesCurrentThread+0x79:
fffff803`21c8872d 498936          mov     qword ptr [r14],rsi

nt!KeUpdateTotalCyclesCurrentThread+0x7c:
fffff803`21c88730 0f31            rdtsc
fffff803`21c88732 48c1e220        shl     rdx,20h
fffff803`21c88736 480bc2          or      rax,rdx
fffff803`21c88739 488bc8          mov     rcx,rax
fffff803`21c8873c 482b8b40530000  sub     rcx,qword ptr [rbx+5340h]
fffff803`21c88743 48898340530000  mov     qword ptr [rbx+5340h],rax
fffff803`21c8874a 48018b78530000  add     qword ptr [rbx+5378h],rcx
fffff803`21c88751 f6470202        test    byte ptr [rdi+2],2
fffff803`21c88755 7534            jne     nt!KeUpdateTotalCyclesCurrentThread+0xd7 (fffff803`21c8878b)

nt!KeUpdateTotalCyclesCurrentThread+0xa3:
fffff803`21c88757 807b0600        cmp     byte ptr [rbx+6],0
fffff803`21c8875b c6432000        mov     byte ptr [rbx+20h],0
fffff803`21c8875f 0f8530c3feff    jne     nt! ?? ::FNODOBFM::`string'+0xe2fe (fffff803`21c74a95)

nt!KeUpdateTotalCyclesCurrentThread+0xb1:
fffff803`21c88765 fb              sti
fffff803`21c88766 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21c8876b 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`21c88770 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff803`21c88775 488bc5          mov     rax,rbp
fffff803`21c88778 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`21c8877d 4883c420        add     rsp,20h
fffff803`21c88781 415e            pop     r14
fffff803`21c88783 c3              ret

nt!KeUpdateTotalCyclesCurrentThread+0xd0:
fffff803`21c88784 33c0            xor     eax,eax
fffff803`21c88786 e9bcc2feff      jmp     nt! ?? ::FNODOBFM::`string'+0xe2b0 (fffff803`21c74a47)

nt!KeUpdateTotalCyclesCurrentThread+0xd7:
fffff803`21c8878b 33d2            xor     edx,edx
fffff803`21c8878d 488bcf          mov     rcx,rdi
fffff803`21c88790 e817851600      call    nt!KiBeginCounterAccumulation (fffff803`21df0cac)
fffff803`21c88795 ebc0            jmp     nt!KeUpdateTotalCyclesCurrentThread+0xa3 (fffff803`21c88757)

nt!KiFlushQueueApc:
fffff803`21d49570 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21d49575 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`21d4957a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`21d4957f 57              push    rdi
fffff803`21d49580 4883ec20        sub     rsp,20h
fffff803`21d49584 408af2          mov     sil,dl
fffff803`21d49587 488bd9          mov     rbx,rcx
fffff803`21d4958a 80fa01          cmp     dl,1
fffff803`21d4958d 7431            je      nt!KiFlushQueueApc+0x50 (fffff803`21d495c0)

nt!KiFlushQueueApc+0x1f:
fffff803`21d4958f 480fbec2        movsx   rax,dl
fffff803`21d49593 48c1e004        shl     rax,4
fffff803`21d49597 480598000000    add     rax,98h
fffff803`21d4959d 4803c1          add     rax,rcx
fffff803`21d495a0 483900          cmp     qword ptr [rax],rax
fffff803`21d495a3 0f8558f0f3ff    jne     nt! ?? ::FNODOBFM::`string'+0x14e93 (fffff803`21c88601)

nt!KiFlushQueueApc+0x39:
fffff803`21d495a9 33c0            xor     eax,eax

nt!KiFlushQueueApc+0x3b:
fffff803`21d495ab 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21d495b0 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`21d495b5 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`21d495ba 4883c420        add     rsp,20h
fffff803`21d495be 5f              pop     rdi
fffff803`21d495bf c3              ret

nt!KiFlushQueueApc+0x50:
fffff803`21d495c0 440f20c5        mov     rbp,cr8
fffff803`21d495c4 b902000000      mov     ecx,2
fffff803`21d495c9 440f22c1        mov     cr8,rcx
fffff803`21d495cd 33ff            xor     edi,edi

nt!KiFlushQueueApc+0x5f:
fffff803`21d495cf f0480fba6b4000  lock bts qword ptr [rbx+40h],0
fffff803`21d495d6 0f82fceff3ff    jb      nt! ?? ::FNODOBFM::`string'+0x14e6a (fffff803`21c885d8)

nt!KiFlushQueueApc+0x6c:
fffff803`21d495dc 488d83a8000000  lea     rax,[rbx+0A8h]
fffff803`21d495e3 483900          cmp     qword ptr [rax],rax
fffff803`21d495e6 0f855bf0f3ff    jne     nt! ?? ::FNODOBFM::`string'+0x14ed9 (fffff803`21c88647)

nt!KiFlushQueueApc+0x7c:
fffff803`21d495ec 48c7434000000000 mov     qword ptr [rbx+40h],0
fffff803`21d495f4 400fb6c5        movzx   eax,bpl
fffff803`21d495f8 440f22c0        mov     cr8,rax
fffff803`21d495fc ebab            jmp     nt!KiFlushQueueApc+0x39 (fffff803`21d495a9)

nt!KiFlushQueueApc+0x8e:
fffff803`21d495fe 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`21d49602 4885c0          test    rax,rax
fffff803`21d49605 74c8            je      nt!KiFlushQueueApc+0x5f (fffff803`21d495cf)

nt!KiFlushQueueApc+0x97:
fffff803`21d49607 e9cceff3ff      jmp     nt! ?? ::FNODOBFM::`string'+0x14e6a (fffff803`21c885d8)

nt!KiFlushQueueApc+0x9c:
fffff803`21d4960c f390            pause
fffff803`21d4960e ebee            jmp     nt!KiFlushQueueApc+0x8e (fffff803`21d495fe)

nt!KiFlushQueueApc+0xa0:
fffff803`21d49610 f390            pause
fffff803`21d49612 e925f0f3ff      jmp     nt! ?? ::FNODOBFM::`string'+0x14ece (fffff803`21c8863c)
