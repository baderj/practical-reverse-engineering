0: kd> uf MiInsertNewProcess
nt!MiInsertNewProcess:
fffff803`d996fe7c 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d996fe81 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`d996fe86 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d996fe8b 57              push    rdi
fffff803`d996fe8c 4883ec20        sub     rsp,20h
fffff803`d996fe90 488bda          mov     rbx,rdx
fffff803`d996fe93 488bf9          mov     rdi,rcx
fffff803`d996fe96 440f20c6        mov     rsi,cr8
fffff803`d996fe9a b802000000      mov     eax,2
fffff803`d996fe9f 440f22c0        mov     cr8,rax
fffff803`d996fea3 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`d996feac 4c8b4118        mov     r8,qword ptr [rcx+18h]
fffff803`d996feb0 33ed            xor     ebp,ebp
fffff803`d996feb2 4883c110        add     rcx,10h
fffff803`d996feb6 f705c4e1260000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d996fec0 0f854e4f0f00    jne     nt! ?? ::FNODOBFM::`string'+0x1b5cc (fffff803`d9a64e14)

nt!MiInsertNewProcess+0x4a:
fffff803`d996fec6 488bd1          mov     rdx,rcx
fffff803`d996fec9 498710          xchg    rdx,qword ptr [r8]
fffff803`d996fecc 4885d2          test    rdx,rdx
fffff803`d996fecf 0f85c0000000    jne     nt!MiInsertNewProcess+0x119 (fffff803`d996ff95)

nt!MiInsertNewProcess+0x59:
fffff803`d996fed5 488b0d7c331e00  mov     rcx,qword ptr [nt!MmProcessList+0x8 (fffff803`d9b53258)]
fffff803`d996fedc 488d8778050000  lea     rax,[rdi+578h]
fffff803`d996fee3 488d1566331e00  lea     rdx,[nt!MmProcessList (fffff803`d9b53250)]
fffff803`d996feea 488910          mov     qword ptr [rax],rdx
fffff803`d996feed 48894808        mov     qword ptr [rax+8],rcx
fffff803`d996fef1 483911          cmp     qword ptr [rcx],rdx
fffff803`d996fef4 0f85284f0f00    jne     nt! ?? ::FNODOBFM::`string'+0x1b5da (fffff803`d9a64e22)

nt!MiInsertNewProcess+0x7e:
fffff803`d996fefa 488901          mov     qword ptr [rcx],rax
fffff803`d996fefd 48890554331e00  mov     qword ptr [nt!MmProcessList+0x8 (fffff803`d9b53258)],rax
fffff803`d996ff04 4885db          test    rbx,rbx
fffff803`d996ff07 7426            je      nt!MiInsertNewProcess+0xb3 (fffff803`d996ff2f)

nt!MiInsertNewProcess+0x8d:
fffff803`d996ff09 488d4b10        lea     rcx,[rbx+10h]
fffff803`d996ff0d 488d8730030000  lea     rax,[rdi+330h]
fffff803`d996ff14 488b5108        mov     rdx,qword ptr [rcx+8]
fffff803`d996ff18 488908          mov     qword ptr [rax],rcx
fffff803`d996ff1b 48895008        mov     qword ptr [rax+8],rdx
fffff803`d996ff1f 48390a          cmp     qword ptr [rdx],rcx
fffff803`d996ff22 0f85014f0f00    jne     nt! ?? ::FNODOBFM::`string'+0x1b5e1 (fffff803`d9a64e29)

nt!MiInsertNewProcess+0xac:
fffff803`d996ff28 488902          mov     qword ptr [rdx],rax
fffff803`d996ff2b 48894108        mov     qword ptr [rcx+8],rax

nt!MiInsertNewProcess+0xb3:
fffff803`d996ff2f 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`d996ff38 4883c310        add     rbx,10h
fffff803`d996ff3c f7053ee1260000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d996ff46 0f85e44e0f00    jne     nt! ?? ::FNODOBFM::`string'+0x1b5e8 (fffff803`d9a64e30)

nt!MiInsertNewProcess+0xd0:
fffff803`d996ff4c 0f0d0b          prefetchw [rbx]
fffff803`d996ff4f 488b03          mov     rax,qword ptr [rbx]
fffff803`d996ff52 4885c0          test    rax,rax
fffff803`d996ff55 7533            jne     nt!MiInsertNewProcess+0x10e (fffff803`d996ff8a)

nt!MiInsertNewProcess+0xdb:
fffff803`d996ff57 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`d996ff5b 488bc3          mov     rax,rbx
fffff803`d996ff5e f0480fb129      lock cmpxchg qword ptr [rcx],rbp
fffff803`d996ff63 751d            jne     nt!MiInsertNewProcess+0x106 (fffff803`d996ff82)

nt!MiInsertNewProcess+0xe9:
fffff803`d996ff65 400fb6c6        movzx   eax,sil
fffff803`d996ff69 440f22c0        mov     cr8,rax
fffff803`d996ff6d 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d996ff72 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`d996ff77 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`d996ff7c 4883c420        add     rsp,20h
fffff803`d996ff80 5f              pop     rdi
fffff803`d996ff81 c3              ret

nt!MiInsertNewProcess+0x106:
fffff803`d996ff82 488bcb          mov     rcx,rbx
fffff803`d996ff85 e8e645fdff      call    nt!KxWaitForLockChainValid (fffff803`d9944570)

nt!MiInsertNewProcess+0x10e:
fffff803`d996ff8a f04883700801    lock xor qword ptr [rax+8],1
fffff803`d996ff90 48892b          mov     qword ptr [rbx],rbp
fffff803`d996ff93 ebd0            jmp     nt!MiInsertNewProcess+0xe9 (fffff803`d996ff65)

nt!MiInsertNewProcess+0x119:
fffff803`d996ff95 e846a2fbff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d996ff9a e936ffffff      jmp     nt!MiInsertNewProcess+0x59 (fffff803`d996fed5)

nt! ?? ::FNODOBFM::`string'+0x1b5cc:
fffff803`d9a64e14 498bd0          mov     rdx,r8
fffff803`d9a64e17 e8d4c8f9ff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9a64e1c 90              nop
fffff803`d9a64e1d e9b3b0f0ff      jmp     nt!MiInsertNewProcess+0x59 (fffff803`d996fed5)

nt! ?? ::FNODOBFM::`string'+0x1b5da:
fffff803`d9a64e22 b903000000      mov     ecx,3
fffff803`d9a64e27 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x1b5e1:
fffff803`d9a64e29 b903000000      mov     ecx,3
fffff803`d9a64e2e cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x1b5e8:
fffff803`d9a64e30 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`d9a64e35 488bcb          mov     rcx,rbx
fffff803`d9a64e38 e893c7f9ff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a64e3d 90              nop
fffff803`d9a64e3e e922b1f0ff      jmp     nt!MiInsertNewProcess+0xe9 (fffff803`d996ff65)
