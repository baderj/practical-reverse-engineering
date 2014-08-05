nt!KeRemoveQueueApc:
fffff803`21cae790 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21cae795 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`21cae79a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`21cae79f 57              push    rdi
fffff803`21cae7a0 4883ec20        sub     rsp,20h
fffff803`21cae7a4 488bf1          mov     rsi,rcx
fffff803`21cae7a7 488b7908        mov     rdi,qword ptr [rcx+8]
fffff803`21cae7ab 440f20c5        mov     rbp,cr8
fffff803`21cae7af b802000000      mov     eax,2
fffff803`21cae7b4 440f22c0        mov     cr8,rax
fffff803`21cae7b8 33db            xor     ebx,ebx

nt!KeRemoveQueueApc+0x2a:
fffff803`21cae7ba f0480fba6f4000  lock bts qword ptr [rdi+40h],0
fffff803`21cae7c1 0f8205c81900    jb      nt! ?? ::FNODOBFM::`string'+0x12d7a (fffff803`21e4afcc)

nt!KeRemoveQueueApc+0x37:
fffff803`21cae7c7 8a5652          mov     dl,byte ptr [rsi+52h]
fffff803`21cae7ca 84d2            test    dl,dl
fffff803`21cae7cc 7527            jne     nt!KeRemoveQueueApc+0x65 (fffff803`21cae7f5)

nt!KeRemoveQueueApc+0x3e:
fffff803`21cae7ce 48c7474000000000 mov     qword ptr [rdi+40h],0
fffff803`21cae7d6 400fb6cd        movzx   ecx,bpl
fffff803`21cae7da 440f22c1        mov     cr8,rcx
fffff803`21cae7de 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21cae7e3 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`21cae7e8 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`21cae7ed 8ac2            mov     al,dl
fffff803`21cae7ef 4883c420        add     rsp,20h
fffff803`21cae7f3 5f              pop     rdi
fffff803`21cae7f4 c3              ret

nt!KeRemoveQueueApc+0x65:
fffff803`21cae7f5 480fbe4650      movsx   rax,byte ptr [rsi+50h]
fffff803`21cae7fa c6465200        mov     byte ptr [rsi+52h],0
fffff803`21cae7fe 4c8d4e10        lea     r9,[rsi+10h]
fffff803`21cae802 498b09          mov     rcx,qword ptr [r9]
fffff803`21cae805 4c8b84c748020000 mov     r8,qword ptr [rdi+rax*8+248h]
fffff803`21cae80d 498b4108        mov     rax,qword ptr [r9+8]
fffff803`21cae811 4c394908        cmp     qword ptr [rcx+8],r9
fffff803`21cae815 7529            jne     nt!KeRemoveQueueApc+0xb0 (fffff803`21cae840)

nt!KeRemoveQueueApc+0x87:
fffff803`21cae817 4c3908          cmp     qword ptr [rax],r9
fffff803`21cae81a 7524            jne     nt!KeRemoveQueueApc+0xb0 (fffff803`21cae840)

nt!KeRemoveQueueApc+0x8c:
fffff803`21cae81c 488908          mov     qword ptr [rax],rcx
fffff803`21cae81f 48894108        mov     qword ptr [rcx+8],rax
fffff803`21cae823 483bc1          cmp     rax,rcx
fffff803`21cae826 75a6            jne     nt!KeRemoveQueueApc+0x3e (fffff803`21cae7ce)

nt!KeRemoveQueueApc+0x98:
fffff803`21cae828 807e5100        cmp     byte ptr [rsi+51h],0
fffff803`21cae82c 0f84cbc71900    je      nt! ?? ::FNODOBFM::`string'+0x12dab (fffff803`21e4affd)

nt!KeRemoveQueueApc+0xa2:
fffff803`21cae832 41c6402a00      mov     byte ptr [r8+2Ah],0
fffff803`21cae837 eb95            jmp     nt!KeRemoveQueueApc+0x3e (fffff803`21cae7ce)

nt!KeRemoveQueueApc+0xa9:
fffff803`21cae839 f390            pause
fffff803`21cae83b e9afc71900      jmp     nt! ?? ::FNODOBFM::`string'+0x12d9d (fffff803`21e4afef)

nt!KeRemoveQueueApc+0xb0:
fffff803`21cae840 b903000000      mov     ecx,3
fffff803`21cae845 cd29            int     29h
fffff803`21cae847 90              nop
fffff803`21cae848 90              nop
fffff803`21cae849 90              nop
fffff803`21cae84a 90              nop
fffff803`21cae84b 90              nop
fffff803`21cae84c 90              nop
fffff803`21cae84d 90              nop
fffff803`21cae84e 90              nop
fffff803`21cae84f 90              nop
fffff803`21cae850 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21cae855 57              push    rdi
fffff803`21cae856 4883ec20        sub     rsp,20h
fffff803`21cae85a f70520b8310000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21cae864 488bf9          mov     rdi,rcx
fffff803`21cae867 0f85a33c1a00    jne     nt! ?? ::FNODOBFM::`string'+0x1ce94 (fffff803`21e52510)

nt!MiRemoveUnusedSubsection+0x1d:
fffff803`21cae86d 33db            xor     ebx,ebx
fffff803`21cae86f f00fba2dc84731001f lock bts dword ptr [nt!MiSegmentListLock (fffff803`21fc3040)],1Fh
fffff803`21cae878 7260            jb      nt!MiRemoveUnusedSubsection+0x8a (fffff803`21cae8da)

nt!MiRemoveUnusedSubsection+0x2a:
fffff803`21cae87a 8b0dc0473100    mov     ecx,dword ptr [nt!MiSegmentListLock (fffff803`21fc3040)]
fffff803`21cae880 81f900000080    cmp     ecx,80000000h
fffff803`21cae886 0f85963c1a00    jne     nt! ?? ::FNODOBFM::`string'+0x1cea6 (fffff803`21e52522)

nt!MiRemoveUnusedSubsection+0x3c:
fffff803`21cae88c 488d4750        lea     rax,[rdi+50h]
fffff803`21cae890 488b10          mov     rdx,qword ptr [rax]
fffff803`21cae893 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21cae897 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21cae89b 7554            jne     nt!MiRemoveUnusedSubsection+0xa1 (fffff803`21cae8f1)

nt!MiRemoveUnusedSubsection+0x4d:
fffff803`21cae89d 483901          cmp     qword ptr [rcx],rax
fffff803`21cae8a0 754f            jne     nt!MiRemoveUnusedSubsection+0xa1 (fffff803`21cae8f1)

nt!MiRemoveUnusedSubsection+0x52:
fffff803`21cae8a2 488911          mov     qword ptr [rcx],rdx
fffff803`21cae8a5 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21cae8a9 48832000        and     qword ptr [rax],0
fffff803`21cae8ad 488bcf          mov     rcx,rdi
fffff803`21cae8b0 e87bc50900      call    nt!MI_UNUSED_SUBSECTIONS_COUNT_REMOVE (fffff803`21d4ae30)
fffff803`21cae8b5 f705c5b7310000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21cae8bf 0f85923c1a00    jne     nt! ?? ::FNODOBFM::`string'+0x1cedb (fffff803`21e52557)

nt!MiRemoveUnusedSubsection+0x75:
fffff803`21cae8c5 c7057147310000000000 mov dword ptr [nt!MiSegmentListLock (fffff803`21fc3040)],0

nt!MiRemoveUnusedSubsection+0x7f:
fffff803`21cae8cf 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21cae8d4 4883c420        add     rsp,20h
fffff803`21cae8d8 5f              pop     rdi
fffff803`21cae8d9 c3              ret

nt!MiRemoveUnusedSubsection+0x8a:
fffff803`21cae8da 488d0d5f473100  lea     rcx,[nt!MiSegmentListLock (fffff803`21fc3040)]
fffff803`21cae8e1 e8d6edffff      call    nt!ExpWaitForSpinLockExclusiveAndAcquire (fffff803`21cad6bc)
fffff803`21cae8e6 8bd8            mov     ebx,eax
fffff803`21cae8e8 eb90            jmp     nt!MiRemoveUnusedSubsection+0x2a (fffff803`21cae87a)

nt!MiRemoveUnusedSubsection+0x9a:
fffff803`21cae8ea f390            pause
fffff803`21cae8ec e9543c1a00      jmp     nt! ?? ::FNODOBFM::`string'+0x1cec9 (fffff803`21e52545)

nt!MiRemoveUnusedSubsection+0xa1:
fffff803`21cae8f1 b903000000      mov     ecx,3
fffff803`21cae8f6 cd29            int     29h
fffff803`21cae8f8 e933b40000      jmp     nt!MiDecrementModifiedWriteCount (fffff803`21cb9d30)

nt!MiDecrementModifiedWriteCount:
fffff803`21cb9d30 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21cb9d35 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`21cb9d3a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`21cb9d3f 57              push    rdi
fffff803`21cb9d40 4883ec20        sub     rsp,20h
fffff803`21cb9d44 488bf1          mov     rsi,rcx
fffff803`21cb9d47 83fa01          cmp     edx,1
fffff803`21cb9d4a 0f848f000000    je      nt!MiDecrementModifiedWriteCount+0xaf (fffff803`21cb9ddf)

nt!MiDecrementModifiedWriteCount+0x20:
fffff803`21cb9d50 488d5948        lea     rbx,[rcx+48h]
fffff803`21cb9d54 440f20c5        mov     rbp,cr8
fffff803`21cb9d58 b802000000      mov     eax,2
fffff803`21cb9d5d 440f22c0        mov     cr8,rax
fffff803`21cb9d61 f7051903310000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21cb9d6b 7577            jne     nt!MiDecrementModifiedWriteCount+0xb4 (fffff803`21cb9de4)

nt!MiDecrementModifiedWriteCount+0x3d:
fffff803`21cb9d6d 33ff            xor     edi,edi
fffff803`21cb9d6f f00fba2b1f      lock bts dword ptr [rbx],1Fh
fffff803`21cb9d74 725d            jb      nt!MiDecrementModifiedWriteCount+0xa3 (fffff803`21cb9dd3)

nt!MiDecrementModifiedWriteCount+0x46:
fffff803`21cb9d76 8b0b            mov     ecx,dword ptr [rbx]
fffff803`21cb9d78 81f900000080    cmp     ecx,80000000h
fffff803`21cb9d7e 0f8534f51900    jne     nt! ?? ::FNODOBFM::`string'+0x2ac7e (fffff803`21e592b8)

nt!MiDecrementModifiedWriteCount+0x54:
fffff803`21cb9d84 ff4e4c          dec     dword ptr [rsi+4Ch]
fffff803`21cb9d87 ba08000000      mov     edx,8
fffff803`21cb9d8c 488bce          mov     rcx,rsi
fffff803`21cb9d8f e80cf50700      call    nt!MiBuildWakeList (fffff803`21d392a0)
fffff803`21cb9d94 488bd8          mov     rbx,rax
fffff803`21cb9d97 4080fd11        cmp     bpl,11h
fffff803`21cb9d9b 741e            je      nt!MiDecrementModifiedWriteCount+0x8b (fffff803`21cb9dbb)

nt!MiDecrementModifiedWriteCount+0x6d:
fffff803`21cb9d9d f705dd02310000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21cb9da7 488d4e48        lea     rcx,[rsi+48h]
fffff803`21cb9dab 7548            jne     nt!MiDecrementModifiedWriteCount+0xc5 (fffff803`21cb9df5)

nt!MiDecrementModifiedWriteCount+0x7d:
fffff803`21cb9dad c70100000000    mov     dword ptr [rcx],0

nt!MiDecrementModifiedWriteCount+0x83:
fffff803`21cb9db3 400fb6c5        movzx   eax,bpl
fffff803`21cb9db7 440f22c0        mov     cr8,rax

nt!MiDecrementModifiedWriteCount+0x8b:
fffff803`21cb9dbb 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`21cb9dc0 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`21cb9dc5 488bc3          mov     rax,rbx
fffff803`21cb9dc8 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21cb9dcd 4883c420        add     rsp,20h
fffff803`21cb9dd1 5f              pop     rdi
fffff803`21cb9dd2 c3              ret

nt!MiDecrementModifiedWriteCount+0xa3:
fffff803`21cb9dd3 488bcb          mov     rcx,rbx
fffff803`21cb9dd6 e8e138ffff      call    nt!ExpWaitForSpinLockExclusiveAndAcquire (fffff803`21cad6bc)
fffff803`21cb9ddb 8bf8            mov     edi,eax
fffff803`21cb9ddd eb97            jmp     nt!MiDecrementModifiedWriteCount+0x46 (fffff803`21cb9d76)

nt!MiDecrementModifiedWriteCount+0xaf:
fffff803`21cb9ddf 40b511          mov     bpl,11h
fffff803`21cb9de2 eba0            jmp     nt!MiDecrementModifiedWriteCount+0x54 (fffff803`21cb9d84)

nt!MiDecrementModifiedWriteCount+0xb4:
fffff803`21cb9de4 488bcb          mov     rcx,rbx
fffff803`21cb9de7 e8b8c21700      call    nt!ExpAcquireSpinLockExclusiveAtDpcLevelInstrumented (fffff803`21e360a4)
fffff803`21cb9dec eb96            jmp     nt!MiDecrementModifiedWriteCount+0x54 (fffff803`21cb9d84)

nt!MiDecrementModifiedWriteCount+0xbe:
fffff803`21cb9dee f390            pause
fffff803`21cb9df0 e9e6f41900      jmp     nt! ?? ::FNODOBFM::`string'+0x2aca1 (fffff803`21e592db)

nt!MiDecrementModifiedWriteCount+0xc5:
fffff803`21cb9df5 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`21cb9dfa e881c21700      call    nt!ExpReleaseSpinLockExclusiveFromDpcLevelInstrumented (fffff803`21e36080)
fffff803`21cb9dff ebb2            jmp     nt!MiDecrementModifiedWriteCount+0x83 (fffff803`21cb9db3)

nt! ?? ::FNODOBFM::`string'+0x12d7a:
fffff803`21e4afcc ffc3            inc     ebx
fffff803`21e4afce 851d78f41700    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],ebx
fffff803`21e4afd4 0f855f38e6ff    jne     nt!KeRemoveQueueApc+0xa9 (fffff803`21cae839)

nt! ?? ::FNODOBFM::`string'+0x12d88:
fffff803`21e4afda 8b0590f01700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4afe0 a840            test    al,40h
fffff803`21e4afe2 0f845138e6ff    je      nt!KeRemoveQueueApc+0xa9 (fffff803`21cae839)

nt! ?? ::FNODOBFM::`string'+0x12d96:
fffff803`21e4afe8 8bcb            mov     ecx,ebx
fffff803`21e4afea e8d503f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x12d9d:
fffff803`21e4afef 488b4740        mov     rax,qword ptr [rdi+40h]
fffff803`21e4aff3 4885c0          test    rax,rax
fffff803`21e4aff6 75d4            jne     nt! ?? ::FNODOBFM::`string'+0x12d7a (fffff803`21e4afcc)

nt! ?? ::FNODOBFM::`string'+0x12da6:
fffff803`21e4aff8 e9bd37e6ff      jmp     nt!KeRemoveQueueApc+0x2a (fffff803`21cae7ba)

nt! ?? ::FNODOBFM::`string'+0x12dab:
fffff803`21e4affd 41c6402900      mov     byte ptr [r8+29h],0
fffff803`21e4b002 e9c737e6ff      jmp     nt!KeRemoveQueueApc+0x3e (fffff803`21cae7ce)

nt! ?? ::FNODOBFM::`string'+0x1ce94:
fffff803`21e52510 488d0d290b1700  lea     rcx,[nt!MiSegmentListLock (fffff803`21fc3040)]
fffff803`21e52517 e8883bfeff      call    nt!ExpAcquireSpinLockExclusiveAtDpcLevelInstrumented (fffff803`21e360a4)
fffff803`21e5251c 90              nop
fffff803`21e5251d e96ac3e5ff      jmp     nt!MiRemoveUnusedSubsection+0x3c (fffff803`21cae88c)

nt! ?? ::FNODOBFM::`string'+0x1cea6:
fffff803`21e52522 ffc3            inc     ebx
fffff803`21e52524 851d227f1700    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],ebx
fffff803`21e5252a 0f85bac3e5ff    jne     nt!MiRemoveUnusedSubsection+0x9a (fffff803`21cae8ea)

nt! ?? ::FNODOBFM::`string'+0x1ceb4:
fffff803`21e52530 8b053a7b1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e52536 a840            test    al,40h
fffff803`21e52538 0f84acc3e5ff    je      nt!MiRemoveUnusedSubsection+0x9a (fffff803`21cae8ea)

nt! ?? ::FNODOBFM::`string'+0x1cec2:
fffff803`21e5253e 8bcb            mov     ecx,ebx
fffff803`21e52540 e87f8ef8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x1cec9:
fffff803`21e52545 8b05f50a1700    mov     eax,dword ptr [nt!MiSegmentListLock (fffff803`21fc3040)]
fffff803`21e5254b 3d00000080      cmp     eax,80000000h
fffff803`21e52550 75d0            jne     nt! ?? ::FNODOBFM::`string'+0x1cea6 (fffff803`21e52522)

nt! ?? ::FNODOBFM::`string'+0x1ced6:
fffff803`21e52552 e935c3e5ff      jmp     nt!MiRemoveUnusedSubsection+0x3c (fffff803`21cae88c)

nt! ?? ::FNODOBFM::`string'+0x1cedb:
fffff803`21e52557 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`21e5255c 488d0ddd0a1700  lea     rcx,[nt!MiSegmentListLock (fffff803`21fc3040)]
fffff803`21e52563 e8183bfeff      call    nt!ExpReleaseSpinLockExclusiveFromDpcLevelInstrumented (fffff803`21e36080)
fffff803`21e52568 90              nop
fffff803`21e52569 e961c3e5ff      jmp     nt!MiRemoveUnusedSubsection+0x7f (fffff803`21cae8cf)

nt! ?? ::FNODOBFM::`string'+0x2ac7e:
fffff803`21e592b8 ffc7            inc     edi
fffff803`21e592ba 853d8c111700    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],edi
fffff803`21e592c0 0f85280be6ff    jne     nt!MiDecrementModifiedWriteCount+0xbe (fffff803`21cb9dee)

nt! ?? ::FNODOBFM::`string'+0x2ac8c:
fffff803`21e592c6 8b05a40d1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e592cc a840            test    al,40h
fffff803`21e592ce 0f841a0be6ff    je      nt!MiDecrementModifiedWriteCount+0xbe (fffff803`21cb9dee)

nt! ?? ::FNODOBFM::`string'+0x2ac9a:
fffff803`21e592d4 8bcf            mov     ecx,edi
fffff803`21e592d6 e8e920f8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x2aca1:
fffff803`21e592db 8b03            mov     eax,dword ptr [rbx]
fffff803`21e592dd 3d00000080      cmp     eax,80000000h
fffff803`21e592e2 75d4            jne     nt! ?? ::FNODOBFM::`string'+0x2ac7e (fffff803`21e592b8)

nt! ?? ::FNODOBFM::`string'+0x2acaa:
fffff803`21e592e4 e99b0ae6ff      jmp     nt!MiDecrementModifiedWriteCount+0x54 (fffff803`21cb9d84)
