0: kd> uf CmpInitCallbacks
nt!InitializeSListHead:
fffff800`11cb4760 4883ec28        sub     rsp,28h
fffff800`11cb4764 f6c10f          test    cl,0Fh
fffff800`11cb4767 750e            jne     nt!InitializeSListHead+0x17 (fffff800`11cb4777)

nt!InitializeSListHead+0x9:
fffff800`11cb4769 33c0            xor     eax,eax
fffff800`11cb476b 488901          mov     qword ptr [rcx],rax
fffff800`11cb476e 48894108        mov     qword ptr [rcx+8],rax
fffff800`11cb4772 4883c428        add     rsp,28h
fffff800`11cb4776 c3              ret

nt!InitializeSListHead+0x17:
fffff800`11cb4777 b902000080      mov     ecx,80000002h
fffff800`11cb477c e8bf230b00      call    nt!RtlRaiseStatus (fffff800`11d66b40)
fffff800`11cb4781 cc              int     3
fffff800`11cb4782 90              nop
fffff800`11cb4783 90              nop
fffff800`11cb4784 90              nop
fffff800`11cb4785 90              nop
fffff800`11cb4786 90              nop
fffff800`11cb4787 90              nop
fffff800`11cb4788 90              nop
fffff800`11cb4789 90              nop
fffff800`11cb478a 90              nop
fffff800`11cb478b 90              nop
fffff800`11cb478c 90              nop
fffff800`11cb478d 90              nop
fffff800`11cb478e 90              nop
fffff800`11cb478f 90              nop
fffff800`11cb4790 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`11cb4795 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff800`11cb479a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff800`11cb479f 57              push    rdi
fffff800`11cb47a0 4883ec20        sub     rsp,20h
fffff800`11cb47a4 488bf1          mov     rsi,rcx
fffff800`11cb47a7 488b7908        mov     rdi,qword ptr [rcx+8]
fffff800`11cb47ab 440f20c5        mov     rbp,cr8
fffff800`11cb47af b802000000      mov     eax,2
fffff800`11cb47b4 440f22c0        mov     cr8,rax
fffff800`11cb47b8 33db            xor     ebx,ebx

nt!KeRemoveQueueApc+0x2a:
fffff800`11cb47ba f0480fba6f4000  lock bts qword ptr [rdi+40h],0
fffff800`11cb47c1 0f8205c81900    jb      nt! ?? ::FNODOBFM::`string'+0x12d7a (fffff800`11e50fcc)

nt!KeRemoveQueueApc+0x37:
fffff800`11cb47c7 8a5652          mov     dl,byte ptr [rsi+52h]
fffff800`11cb47ca 84d2            test    dl,dl
fffff800`11cb47cc 7527            jne     nt!KeRemoveQueueApc+0x65 (fffff800`11cb47f5)

nt!KeRemoveQueueApc+0x3e:
fffff800`11cb47ce 48c7474000000000 mov     qword ptr [rdi+40h],0
fffff800`11cb47d6 400fb6cd        movzx   ecx,bpl
fffff800`11cb47da 440f22c1        mov     cr8,rcx
fffff800`11cb47de 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff800`11cb47e3 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff800`11cb47e8 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff800`11cb47ed 8ac2            mov     al,dl
fffff800`11cb47ef 4883c420        add     rsp,20h
fffff800`11cb47f3 5f              pop     rdi
fffff800`11cb47f4 c3              ret

nt!KeRemoveQueueApc+0x65:
fffff800`11cb47f5 480fbe4650      movsx   rax,byte ptr [rsi+50h]
fffff800`11cb47fa c6465200        mov     byte ptr [rsi+52h],0
fffff800`11cb47fe 4c8d4e10        lea     r9,[rsi+10h]
fffff800`11cb4802 498b09          mov     rcx,qword ptr [r9]
fffff800`11cb4805 4c8b84c748020000 mov     r8,qword ptr [rdi+rax*8+248h]
fffff800`11cb480d 498b4108        mov     rax,qword ptr [r9+8]
fffff800`11cb4811 4c394908        cmp     qword ptr [rcx+8],r9
fffff800`11cb4815 7529            jne     nt!KeRemoveQueueApc+0xb0 (fffff800`11cb4840)

nt!KeRemoveQueueApc+0x87:
fffff800`11cb4817 4c3908          cmp     qword ptr [rax],r9
fffff800`11cb481a 7524            jne     nt!KeRemoveQueueApc+0xb0 (fffff800`11cb4840)

nt!KeRemoveQueueApc+0x8c:
fffff800`11cb481c 488908          mov     qword ptr [rax],rcx
fffff800`11cb481f 48894108        mov     qword ptr [rcx+8],rax
fffff800`11cb4823 483bc1          cmp     rax,rcx
fffff800`11cb4826 75a6            jne     nt!KeRemoveQueueApc+0x3e (fffff800`11cb47ce)

nt!KeRemoveQueueApc+0x98:
fffff800`11cb4828 807e5100        cmp     byte ptr [rsi+51h],0
fffff800`11cb482c 0f84cbc71900    je      nt! ?? ::FNODOBFM::`string'+0x12dab (fffff800`11e50ffd)

nt!KeRemoveQueueApc+0xa2:
fffff800`11cb4832 41c6402a00      mov     byte ptr [r8+2Ah],0
fffff800`11cb4837 eb95            jmp     nt!KeRemoveQueueApc+0x3e (fffff800`11cb47ce)

nt!KeRemoveQueueApc+0xa9:
fffff800`11cb4839 f390            pause
fffff800`11cb483b e9afc71900      jmp     nt! ?? ::FNODOBFM::`string'+0x12d9d (fffff800`11e50fef)

nt!KeRemoveQueueApc+0xb0:
fffff800`11cb4840 b903000000      mov     ecx,3
fffff800`11cb4845 cd29            int     29h
fffff800`11cb4847 90              nop
fffff800`11cb4848 90              nop
fffff800`11cb4849 90              nop
fffff800`11cb484a 90              nop
fffff800`11cb484b 90              nop
fffff800`11cb484c 90              nop
fffff800`11cb484d 90              nop
fffff800`11cb484e 90              nop
fffff800`11cb484f 90              nop
fffff800`11cb4850 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`11cb4855 57              push    rdi
fffff800`11cb4856 4883ec20        sub     rsp,20h
fffff800`11cb485a f70520b8310000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff800`11fd0084)],210000h
fffff800`11cb4864 488bf9          mov     rdi,rcx
fffff800`11cb4867 0f85a33c1a00    jne     nt! ?? ::FNODOBFM::`string'+0x1ce94 (fffff800`11e58510)

nt!MiRemoveUnusedSubsection+0x1d:
fffff800`11cb486d 33db            xor     ebx,ebx
fffff800`11cb486f f00fba2dc84731001f lock bts dword ptr [nt!MiSegmentListLock (fffff800`11fc9040)],1Fh
fffff800`11cb4878 7260            jb      nt!MiRemoveUnusedSubsection+0x8a (fffff800`11cb48da)

nt!MiRemoveUnusedSubsection+0x2a:
fffff800`11cb487a 8b0dc0473100    mov     ecx,dword ptr [nt!MiSegmentListLock (fffff800`11fc9040)]
fffff800`11cb4880 81f900000080    cmp     ecx,80000000h
fffff800`11cb4886 0f85963c1a00    jne     nt! ?? ::FNODOBFM::`string'+0x1cea6 (fffff800`11e58522)

nt!MiRemoveUnusedSubsection+0x3c:
fffff800`11cb488c 488d4750        lea     rax,[rdi+50h]
fffff800`11cb4890 488b10          mov     rdx,qword ptr [rax]
fffff800`11cb4893 488b4808        mov     rcx,qword ptr [rax+8]
fffff800`11cb4897 48394208        cmp     qword ptr [rdx+8],rax
fffff800`11cb489b 7554            jne     nt!MiRemoveUnusedSubsection+0xa1 (fffff800`11cb48f1)

nt!MiRemoveUnusedSubsection+0x4d:
fffff800`11cb489d 483901          cmp     qword ptr [rcx],rax
fffff800`11cb48a0 754f            jne     nt!MiRemoveUnusedSubsection+0xa1 (fffff800`11cb48f1)

nt!MiRemoveUnusedSubsection+0x52:
fffff800`11cb48a2 488911          mov     qword ptr [rcx],rdx
fffff800`11cb48a5 48894a08        mov     qword ptr [rdx+8],rcx
fffff800`11cb48a9 48832000        and     qword ptr [rax],0
fffff800`11cb48ad 488bcf          mov     rcx,rdi
fffff800`11cb48b0 e87bc50900      call    nt!MI_UNUSED_SUBSECTIONS_COUNT_REMOVE (fffff800`11d50e30)
fffff800`11cb48b5 f705c5b7310000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff800`11fd0084)],10000h
fffff800`11cb48bf 0f85923c1a00    jne     nt! ?? ::FNODOBFM::`string'+0x1cedb (fffff800`11e58557)

nt!MiRemoveUnusedSubsection+0x75:
fffff800`11cb48c5 c7057147310000000000 mov dword ptr [nt!MiSegmentListLock (fffff800`11fc9040)],0

nt!MiRemoveUnusedSubsection+0x7f:
fffff800`11cb48cf 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff800`11cb48d4 4883c420        add     rsp,20h
fffff800`11cb48d8 5f              pop     rdi
fffff800`11cb48d9 c3              ret

nt!MiRemoveUnusedSubsection+0x8a:
fffff800`11cb48da 488d0d5f473100  lea     rcx,[nt!MiSegmentListLock (fffff800`11fc9040)]
fffff800`11cb48e1 e8d6edffff      call    nt!ExpWaitForSpinLockExclusiveAndAcquire (fffff800`11cb36bc)
fffff800`11cb48e6 8bd8            mov     ebx,eax
fffff800`11cb48e8 eb90            jmp     nt!MiRemoveUnusedSubsection+0x2a (fffff800`11cb487a)

nt!MiRemoveUnusedSubsection+0x9a:
fffff800`11cb48ea f390            pause
fffff800`11cb48ec e9543c1a00      jmp     nt! ?? ::FNODOBFM::`string'+0x1cec9 (fffff800`11e58545)

nt!MiRemoveUnusedSubsection+0xa1:
fffff800`11cb48f1 b903000000      mov     ecx,3
fffff800`11cb48f6 cd29            int     29h
fffff800`11cb48f8 e933b40000      jmp     nt!MiDecrementModifiedWriteCount (fffff800`11cbfd30)

nt!MiDecrementModifiedWriteCount:
fffff800`11cbfd30 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`11cbfd35 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff800`11cbfd3a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff800`11cbfd3f 57              push    rdi
fffff800`11cbfd40 4883ec20        sub     rsp,20h
fffff800`11cbfd44 488bf1          mov     rsi,rcx
fffff800`11cbfd47 83fa01          cmp     edx,1
fffff800`11cbfd4a 0f848f000000    je      nt!MiDecrementModifiedWriteCount+0xaf (fffff800`11cbfddf)

nt!MiDecrementModifiedWriteCount+0x20:
fffff800`11cbfd50 488d5948        lea     rbx,[rcx+48h]
fffff800`11cbfd54 440f20c5        mov     rbp,cr8
fffff800`11cbfd58 b802000000      mov     eax,2
fffff800`11cbfd5d 440f22c0        mov     cr8,rax
fffff800`11cbfd61 f7051903310000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff800`11fd0084)],210000h
fffff800`11cbfd6b 7577            jne     nt!MiDecrementModifiedWriteCount+0xb4 (fffff800`11cbfde4)

nt!MiDecrementModifiedWriteCount+0x3d:
fffff800`11cbfd6d 33ff            xor     edi,edi
fffff800`11cbfd6f f00fba2b1f      lock bts dword ptr [rbx],1Fh
fffff800`11cbfd74 725d            jb      nt!MiDecrementModifiedWriteCount+0xa3 (fffff800`11cbfdd3)

nt!MiDecrementModifiedWriteCount+0x46:
fffff800`11cbfd76 8b0b            mov     ecx,dword ptr [rbx]
fffff800`11cbfd78 81f900000080    cmp     ecx,80000000h
fffff800`11cbfd7e 0f8534f51900    jne     nt! ?? ::FNODOBFM::`string'+0x2ac7e (fffff800`11e5f2b8)

nt!MiDecrementModifiedWriteCount+0x54:
fffff800`11cbfd84 ff4e4c          dec     dword ptr [rsi+4Ch]
fffff800`11cbfd87 ba08000000      mov     edx,8
fffff800`11cbfd8c 488bce          mov     rcx,rsi
fffff800`11cbfd8f e80cf50700      call    nt!MiBuildWakeList (fffff800`11d3f2a0)
fffff800`11cbfd94 488bd8          mov     rbx,rax
fffff800`11cbfd97 4080fd11        cmp     bpl,11h
fffff800`11cbfd9b 741e            je      nt!MiDecrementModifiedWriteCount+0x8b (fffff800`11cbfdbb)

nt!MiDecrementModifiedWriteCount+0x6d:
fffff800`11cbfd9d f705dd02310000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff800`11fd0084)],10000h
fffff800`11cbfda7 488d4e48        lea     rcx,[rsi+48h]
fffff800`11cbfdab 7548            jne     nt!MiDecrementModifiedWriteCount+0xc5 (fffff800`11cbfdf5)

nt!MiDecrementModifiedWriteCount+0x7d:
fffff800`11cbfdad c70100000000    mov     dword ptr [rcx],0

nt!MiDecrementModifiedWriteCount+0x83:
fffff800`11cbfdb3 400fb6c5        movzx   eax,bpl
fffff800`11cbfdb7 440f22c0        mov     cr8,rax

nt!MiDecrementModifiedWriteCount+0x8b:
fffff800`11cbfdbb 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff800`11cbfdc0 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff800`11cbfdc5 488bc3          mov     rax,rbx
fffff800`11cbfdc8 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff800`11cbfdcd 4883c420        add     rsp,20h
fffff800`11cbfdd1 5f              pop     rdi
fffff800`11cbfdd2 c3              ret

nt!MiDecrementModifiedWriteCount+0xa3:
fffff800`11cbfdd3 488bcb          mov     rcx,rbx
fffff800`11cbfdd6 e8e138ffff      call    nt!ExpWaitForSpinLockExclusiveAndAcquire (fffff800`11cb36bc)
fffff800`11cbfddb 8bf8            mov     edi,eax
fffff800`11cbfddd eb97            jmp     nt!MiDecrementModifiedWriteCount+0x46 (fffff800`11cbfd76)

nt!MiDecrementModifiedWriteCount+0xaf:
fffff800`11cbfddf 40b511          mov     bpl,11h
fffff800`11cbfde2 eba0            jmp     nt!MiDecrementModifiedWriteCount+0x54 (fffff800`11cbfd84)

nt!MiDecrementModifiedWriteCount+0xb4:
fffff800`11cbfde4 488bcb          mov     rcx,rbx
fffff800`11cbfde7 e8b8c21700      call    nt!ExpAcquireSpinLockExclusiveAtDpcLevelInstrumented (fffff800`11e3c0a4)
fffff800`11cbfdec eb96            jmp     nt!MiDecrementModifiedWriteCount+0x54 (fffff800`11cbfd84)

nt!MiDecrementModifiedWriteCount+0xbe:
fffff800`11cbfdee f390            pause
fffff800`11cbfdf0 e9e6f41900      jmp     nt! ?? ::FNODOBFM::`string'+0x2aca1 (fffff800`11e5f2db)

nt!MiDecrementModifiedWriteCount+0xc5:
fffff800`11cbfdf5 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff800`11cbfdfa e881c21700      call    nt!ExpReleaseSpinLockExclusiveFromDpcLevelInstrumented (fffff800`11e3c080)
fffff800`11cbfdff ebb2            jmp     nt!MiDecrementModifiedWriteCount+0x83 (fffff800`11cbfdb3)

nt! ?? ::FNODOBFM::`string'+0x12d7a:
fffff800`11e50fcc ffc3            inc     ebx
fffff800`11e50fce 851d78f41700    test    dword ptr [nt!HvlLongSpinCountMask (fffff800`11fd044c)],ebx
fffff800`11e50fd4 0f855f38e6ff    jne     nt!KeRemoveQueueApc+0xa9 (fffff800`11cb4839)

nt! ?? ::FNODOBFM::`string'+0x12d88:
fffff800`11e50fda 8b0590f01700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff800`11fd0070)]
fffff800`11e50fe0 a840            test    al,40h
fffff800`11e50fe2 0f845138e6ff    je      nt!KeRemoveQueueApc+0xa9 (fffff800`11cb4839)

nt! ?? ::FNODOBFM::`string'+0x12d96:
fffff800`11e50fe8 8bcb            mov     ecx,ebx
fffff800`11e50fea e8d503f9ff      call    nt!HvlNotifyLongSpinWait (fffff800`11de13c4)

nt! ?? ::FNODOBFM::`string'+0x12d9d:
fffff800`11e50fef 488b4740        mov     rax,qword ptr [rdi+40h]
fffff800`11e50ff3 4885c0          test    rax,rax
fffff800`11e50ff6 75d4            jne     nt! ?? ::FNODOBFM::`string'+0x12d7a (fffff800`11e50fcc)

nt! ?? ::FNODOBFM::`string'+0x12da6:
fffff800`11e50ff8 e9bd37e6ff      jmp     nt!KeRemoveQueueApc+0x2a (fffff800`11cb47ba)

nt! ?? ::FNODOBFM::`string'+0x12dab:
fffff800`11e50ffd 41c6402900      mov     byte ptr [r8+29h],0
fffff800`11e51002 e9c737e6ff      jmp     nt!KeRemoveQueueApc+0x3e (fffff800`11cb47ce)

nt! ?? ::FNODOBFM::`string'+0x1ce94:
fffff800`11e58510 488d0d290b1700  lea     rcx,[nt!MiSegmentListLock (fffff800`11fc9040)]
fffff800`11e58517 e8883bfeff      call    nt!ExpAcquireSpinLockExclusiveAtDpcLevelInstrumented (fffff800`11e3c0a4)
fffff800`11e5851c 90              nop
fffff800`11e5851d e96ac3e5ff      jmp     nt!MiRemoveUnusedSubsection+0x3c (fffff800`11cb488c)

nt! ?? ::FNODOBFM::`string'+0x1cea6:
fffff800`11e58522 ffc3            inc     ebx
fffff800`11e58524 851d227f1700    test    dword ptr [nt!HvlLongSpinCountMask (fffff800`11fd044c)],ebx
fffff800`11e5852a 0f85bac3e5ff    jne     nt!MiRemoveUnusedSubsection+0x9a (fffff800`11cb48ea)

nt! ?? ::FNODOBFM::`string'+0x1ceb4:
fffff800`11e58530 8b053a7b1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff800`11fd0070)]
fffff800`11e58536 a840            test    al,40h
fffff800`11e58538 0f84acc3e5ff    je      nt!MiRemoveUnusedSubsection+0x9a (fffff800`11cb48ea)

nt! ?? ::FNODOBFM::`string'+0x1cec2:
fffff800`11e5853e 8bcb            mov     ecx,ebx
fffff800`11e58540 e87f8ef8ff      call    nt!HvlNotifyLongSpinWait (fffff800`11de13c4)

nt! ?? ::FNODOBFM::`string'+0x1cec9:
fffff800`11e58545 8b05f50a1700    mov     eax,dword ptr [nt!MiSegmentListLock (fffff800`11fc9040)]
fffff800`11e5854b 3d00000080      cmp     eax,80000000h
fffff800`11e58550 75d0            jne     nt! ?? ::FNODOBFM::`string'+0x1cea6 (fffff800`11e58522)

nt! ?? ::FNODOBFM::`string'+0x1ced6:
fffff800`11e58552 e935c3e5ff      jmp     nt!MiRemoveUnusedSubsection+0x3c (fffff800`11cb488c)

nt! ?? ::FNODOBFM::`string'+0x1cedb:
fffff800`11e58557 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff800`11e5855c 488d0ddd0a1700  lea     rcx,[nt!MiSegmentListLock (fffff800`11fc9040)]
fffff800`11e58563 e8183bfeff      call    nt!ExpReleaseSpinLockExclusiveFromDpcLevelInstrumented (fffff800`11e3c080)
fffff800`11e58568 90              nop
fffff800`11e58569 e961c3e5ff      jmp     nt!MiRemoveUnusedSubsection+0x7f (fffff800`11cb48cf)

nt! ?? ::FNODOBFM::`string'+0x2ac7e:
fffff800`11e5f2b8 ffc7            inc     edi
fffff800`11e5f2ba 853d8c111700    test    dword ptr [nt!HvlLongSpinCountMask (fffff800`11fd044c)],edi
fffff800`11e5f2c0 0f85280be6ff    jne     nt!MiDecrementModifiedWriteCount+0xbe (fffff800`11cbfdee)

nt! ?? ::FNODOBFM::`string'+0x2ac8c:
fffff800`11e5f2c6 8b05a40d1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff800`11fd0070)]
fffff800`11e5f2cc a840            test    al,40h
fffff800`11e5f2ce 0f841a0be6ff    je      nt!MiDecrementModifiedWriteCount+0xbe (fffff800`11cbfdee)

nt! ?? ::FNODOBFM::`string'+0x2ac9a:
fffff800`11e5f2d4 8bcf            mov     ecx,edi
fffff800`11e5f2d6 e8e920f8ff      call    nt!HvlNotifyLongSpinWait (fffff800`11de13c4)

nt! ?? ::FNODOBFM::`string'+0x2aca1:
fffff800`11e5f2db 8b03            mov     eax,dword ptr [rbx]
fffff800`11e5f2dd 3d00000080      cmp     eax,80000000h
fffff800`11e5f2e2 75d4            jne     nt! ?? ::FNODOBFM::`string'+0x2ac7e (fffff800`11e5f2b8)

nt! ?? ::FNODOBFM::`string'+0x2acaa:
fffff800`11e5f2e4 e99b0ae6ff      jmp     nt!MiDecrementModifiedWriteCount+0x54 (fffff800`11cbfd84)

nt!CmpInitCallbacks:
fffff800`12165560 4883ec28        sub     rsp,28h
fffff800`12165564 33c9            xor     ecx,ecx
fffff800`12165566 488d0513a6dfff  lea     rax,[nt!CallbackListHead (fffff800`11f5fb80)]
fffff800`1216556d 488d1574dcb8ff  lea     rdx,[nt!`string' (fffff800`11cf31e8)]
fffff800`12165574 890db647d9ff    mov     dword ptr [nt!CmpCallBackCount (fffff800`11ef9d30)],ecx
fffff800`1216557a 48890defa5dfff  mov     qword ptr [nt!CmpCallbackListLock (fffff800`11f5fb70)],rcx
fffff800`12165581 48890df0a5dfff  mov     qword ptr [nt!CmpContextListLock (fffff800`11f5fb78)],rcx
fffff800`12165588 48890d01a6dfff  mov     qword ptr [nt!CallbackListDeleteEvent (fffff800`11f5fb90)],rcx
fffff800`1216558f 488d0dba47d9ff  lea     rcx,[nt!CmLegacyAltitude (fffff800`11ef9d50)]
fffff800`12165596 488905eba5dfff  mov     qword ptr [nt!CallbackListHead+0x8 (fffff800`11f5fb88)],rax
fffff800`1216559d 488905dca5dfff  mov     qword ptr [nt!CallbackListHead (fffff800`11f5fb80)],rax
fffff800`121655a4 e87777bcff      call    nt!RtlInitUnicodeString (fffff800`11d2cd20)
fffff800`121655a9 48b81400000080f7ffff mov rax,0FFFFF78000000014h
fffff800`121655b3 488b00          mov     rax,qword ptr [rax]
fffff800`121655b6 488d0d8347d9ff  lea     rcx,[nt!CmpCallbackContextSList (fffff800`11ef9d40)]
fffff800`121655bd 488905d4a5dfff  mov     qword ptr [nt!CmpCallbackCookie (fffff800`11f5fb98)],rax
fffff800`121655c4 4883c428        add     rsp,28h
fffff800`121655c8 e993f1b4ff      jmp     nt!InitializeSListHead (fffff800`11cb4760)
