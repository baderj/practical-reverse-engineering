nt! ?? ::FNODOBFM::`string'+0xe394:
fffff803`21c86bf4 488bd1          mov     rdx,rcx
fffff803`21c86bf7 4533c9          xor     r9d,r9d
fffff803`21c86bfa 4533c0          xor     r8d,r8d
fffff803`21c86bfd b907010000      mov     ecx,107h
fffff803`21c86c02 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff803`21c86c07 e834580400      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21c86c0c cc              int     3

nt! ?? ::FNODOBFM::`string'+0xe3ad:
fffff803`21c86c0d 488b5208        mov     rdx,qword ptr [rdx+8]
fffff803`21c86c11 e84aa11600      call    nt!KeDisableProfiling (fffff803`21df0d60)
fffff803`21c86c16 90              nop
fffff803`21c86c17 e989580b00      jmp     nt!KeTerminateThread+0x41 (fffff803`21d3c4a5)

nt! ?? ::FNODOBFM::`string'+0xe3bc:
fffff803`21c86c1c 498bce          mov     rcx,r14
fffff803`21c86c1f e880f41a00      call    nt!ExpAcquireSpinLockExclusiveAtDpcLevelInstrumented (fffff803`21e360a4)
fffff803`21c86c24 90              nop
fffff803`21c86c25 e9c6580b00      jmp     nt!KeTerminateThread+0x8c (fffff803`21d3c4f0)

nt! ?? ::FNODOBFM::`string'+0xe3ca:
fffff803`21c86c2a 8b0540343400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c86c30 a840            test    al,40h
fffff803`21c86c32 0f84385b0b00    je      nt!KeTerminateThread+0x30c (fffff803`21d3c770)

nt! ?? ::FNODOBFM::`string'+0xe3d8:
fffff803`21c86c38 8bce            mov     ecx,esi
fffff803`21c86c3a e885471500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c86c3f 90              nop
fffff803`21c86c40 e92d5b0b00      jmp     nt!KeTerminateThread+0x30e (fffff803`21d3c772)

nt! ?? ::FNODOBFM::`string'+0xe3e5:
fffff803`21c86c45 488d4de0        lea     rcx,[rbp-20h]
fffff803`21c86c49 e8a26a1600      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`21ded6f0)
fffff803`21c86c4e 90              nop
fffff803`21c86c4f e9e7580b00      jmp     nt!KeTerminateThread+0xd7 (fffff803`21d3c53b)

nt! ?? ::FNODOBFM::`string'+0xe3f4:
fffff803`21c86c54 488d4de0        lea     rcx,[rbp-20h]
fffff803`21c86c58 e883f50800      call    nt!KxWaitForLockOwnerShip (fffff803`21d161e0)
fffff803`21c86c5d 90              nop
fffff803`21c86c5e e9d8580b00      jmp     nt!KeTerminateThread+0xd7 (fffff803`21d3c53b)

nt! ?? ::FNODOBFM::`string'+0xe403:
fffff803`21c86c63 488b5518        mov     rdx,qword ptr [rbp+18h]
fffff803`21c86c67 488d4de0        lea     rcx,[rbp-20h]
fffff803`21c86c6b e860691600      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`21ded5d0)
fffff803`21c86c70 90              nop
fffff803`21c86c71 e928590b00      jmp     nt!KeTerminateThread+0x13a (fffff803`21d3c59e)

nt! ?? ::FNODOBFM::`string'+0xe416:
fffff803`21c86c76 b903000000      mov     ecx,3
fffff803`21c86c7b cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xe41d:
fffff803`21c86c7d ffc6            inc     esi
fffff803`21c86c7f 8535c7373400    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21c86c85 0f85f55a0b00    jne     nt!KeTerminateThread+0x31c (fffff803`21d3c780)

nt! ?? ::FNODOBFM::`string'+0xe42b:
fffff803`21c86c8b 8b05df333400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c86c91 a840            test    al,40h
fffff803`21c86c93 0f84e75a0b00    je      nt!KeTerminateThread+0x31c (fffff803`21d3c780)

nt! ?? ::FNODOBFM::`string'+0xe439:
fffff803`21c86c99 8bce            mov     ecx,esi
fffff803`21c86c9b e824471500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0xe440:
fffff803`21c86ca0 418b07          mov     eax,dword ptr [r15]
fffff803`21c86ca3 84c0            test    al,al
fffff803`21c86ca5 78d6            js      nt! ?? ::FNODOBFM::`string'+0xe41d (fffff803`21c86c7d)

nt! ?? ::FNODOBFM::`string'+0xe447:
fffff803`21c86ca7 e9f4580b00      jmp     nt!KeTerminateThread+0x13c (fffff803`21d3c5a0)

nt! ?? ::FNODOBFM::`string'+0xe44c:
fffff803`21c86cac 488bcb          mov     rcx,rbx
fffff803`21c86caf e83c6c1100      call    nt!KiRemoveThreadFromSchedulingGroup (fffff803`21d9d8f0)
fffff803`21c86cb4 90              nop
fffff803`21c86cb5 e92c590b00      jmp     nt!KeTerminateThread+0x182 (fffff803`21d3c5e6)

nt! ?? ::FNODOBFM::`string'+0xe45a:
fffff803`21c86cba 488b5518        mov     rdx,qword ptr [rbp+18h]
fffff803`21c86cbe 498bce          mov     rcx,r14
fffff803`21c86cc1 e8baf31a00      call    nt!ExpReleaseSpinLockExclusiveFromDpcLevelInstrumented (fffff803`21e36080)
fffff803`21c86cc6 90              nop
fffff803`21c86cc7 e92d590b00      jmp     nt!KeTerminateThread+0x195 (fffff803`21d3c5f9)

nt! ?? ::FNODOBFM::`string'+0xe46c:
fffff803`21c86ccc 8b059e333400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c86cd2 a840            test    al,40h
fffff803`21c86cd4 0f847a5a0b00    je      nt!KeTerminateThread+0x2f0 (fffff803`21d3c754)

nt! ?? ::FNODOBFM::`string'+0xe47a:
fffff803`21c86cda 8bce            mov     ecx,esi
fffff803`21c86cdc e8e3461500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c86ce1 90              nop
fffff803`21c86ce2 e96f5a0b00      jmp     nt!KeTerminateThread+0x2f2 (fffff803`21d3c756)

nt! ?? ::FNODOBFM::`string'+0xe487:
fffff803`21c86ce7 f00fba35883e280000 lock btr dword ptr [nt!PsReaperWorkItem+0x18 (fffff803`21f0ab78)],0
fffff803`21c86cf0 0f839d590b00    jae     nt!KeTerminateThread+0x22f (fffff803`21d3c693)

nt! ?? ::FNODOBFM::`string'+0xe496:
fffff803`21c86cf6 41b8ffff0000    mov     r8d,0FFFFh
fffff803`21c86cfc e979590b00      jmp     nt!KeTerminateThread+0x216 (fffff803`21d3c67a)

nt! ?? ::FNODOBFM::`string'+0xe4a1:
fffff803`21c86d01 f00fba2d6e3e280000 lock bts dword ptr [nt!PsReaperWorkItem+0x18 (fffff803`21f0ab78)],0
fffff803`21c86d0a e984590b00      jmp     nt!KeTerminateThread+0x22f (fffff803`21d3c693)

nt! ?? ::FNODOBFM::`string'+0xe4af:
fffff803`21c86d0f f0480fba6b4000  lock bts qword ptr [rbx+40h],0
fffff803`21c86d16 7209            jb      nt! ?? ::FNODOBFM::`string'+0xe4c5 (fffff803`21c86d21)

nt! ?? ::FNODOBFM::`string'+0xe4bc:
fffff803`21c86d18 48897b40        mov     qword ptr [rbx+40h],rdi
fffff803`21c86d1c e983590b00      jmp     nt!KeTerminateThread+0x240 (fffff803`21d3c6a4)

nt! ?? ::FNODOBFM::`string'+0xe4c5:
fffff803`21c86d21 ffc6            inc     esi
fffff803`21c86d23 853523373400    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21c86d29 0f855f5a0b00    jne     nt!KeTerminateThread+0x32a (fffff803`21d3c78e)

nt! ?? ::FNODOBFM::`string'+0xe4d3:
fffff803`21c86d2f 8b053b333400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c86d35 a840            test    al,40h
fffff803`21c86d37 0f84515a0b00    je      nt!KeTerminateThread+0x32a (fffff803`21d3c78e)

nt! ?? ::FNODOBFM::`string'+0xe4e1:
fffff803`21c86d3d 8bce            mov     ecx,esi
fffff803`21c86d3f e880461500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0xe4e8:
fffff803`21c86d44 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`21c86d48 4885c0          test    rax,rax
fffff803`21c86d4b 75d4            jne     nt! ?? ::FNODOBFM::`string'+0xe4c5 (fffff803`21c86d21)

nt! ?? ::FNODOBFM::`string'+0xe4f1:
fffff803`21c86d4d ebc0            jmp     nt! ?? ::FNODOBFM::`string'+0xe4af (fffff803`21c86d0f)

nt! ?? ::FNODOBFM::`string'+0xe4f3:
fffff803`21c86d4f b903000000      mov     ecx,3
fffff803`21c86d54 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xe4fa:
fffff803`21c86d56 4c8d5c2450      lea     r11,[rsp+50h]
fffff803`21c86d5b 498b5b20        mov     rbx,qword ptr [r11+20h]
fffff803`21c86d5f 498b7328        mov     rsi,qword ptr [r11+28h]
fffff803`21c86d63 498b7b30        mov     rdi,qword ptr [r11+30h]
fffff803`21c86d67 4d8b6338        mov     r12,qword ptr [r11+38h]
fffff803`21c86d6b 498be3          mov     rsp,r11
fffff803`21c86d6e 415f            pop     r15
fffff803`21c86d70 415e            pop     r14
fffff803`21c86d72 5d              pop     rbp
fffff803`21c86d73 c3              ret

nt!KeTerminateThread:
fffff803`21d3c464 488bc4          mov     rax,rsp
fffff803`21d3c467 48895808        mov     qword ptr [rax+8],rbx
fffff803`21d3c46b 48897010        mov     qword ptr [rax+10h],rsi
fffff803`21d3c46f 48897818        mov     qword ptr [rax+18h],rdi
fffff803`21d3c473 4c896020        mov     qword ptr [rax+20h],r12
fffff803`21d3c477 55              push    rbp
fffff803`21d3c478 4156            push    r14
fffff803`21d3c47a 4157            push    r15
fffff803`21d3c47c 488bec          mov     rbp,rsp
fffff803`21d3c47f 4883ec50        sub     rsp,50h
fffff803`21d3c483 33ff            xor     edi,edi
fffff803`21d3c485 f7417400400000  test    dword ptr [rcx+74h],4000h
fffff803`21d3c48c 488bd9          mov     rbx,rcx
fffff803`21d3c48f 0f855fa7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe394 (fffff803`21c86bf4)

nt!KeTerminateThread+0x31:
fffff803`21d3c495 488b9168010000  mov     rdx,qword ptr [rcx+168h]
fffff803`21d3c49c 4885d2          test    rdx,rdx
fffff803`21d3c49f 0f8568a7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe3ad (fffff803`21c86c0d)

nt!KeTerminateThread+0x41:
fffff803`21d3c4a5 4c8bbb20020000  mov     r15,qword ptr [rbx+220h]
fffff803`21d3c4ac c6838302000016  mov     byte ptr [rbx+283h],16h
fffff803`21d3c4b3 b802000000      mov     eax,2
fffff803`21d3c4b8 440f22c0        mov     cr8,rax
fffff803`21d3c4bc f705bedb280000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d3c4c6 4d8d7740        lea     r14,[r15+40h]
fffff803`21d3c4ca 0f854ca7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe3bc (fffff803`21c86c1c)

nt!KeTerminateThread+0x6c:
fffff803`21d3c4d0 f0410fba2e1f    lock bts dword ptr [r14],1Fh
fffff803`21d3c4d6 8bf7            mov     esi,edi
fffff803`21d3c4d8 0f821f020000    jb      nt!KeTerminateThread+0x299 (fffff803`21d3c6fd)

nt!KeTerminateThread+0x7a:
fffff803`21d3c4de 418b0e          mov     ecx,dword ptr [r14]
fffff803`21d3c4e1 41bc00000080    mov     r12d,80000000h
fffff803`21d3c4e7 413bcc          cmp     ecx,r12d
fffff803`21d3c4ea 0f8572020000    jne     nt!KeTerminateThread+0x2fe (fffff803`21d3c762)

nt!KeTerminateThread+0x8c:
fffff803`21d3c4f0 488b8300030000  mov     rax,qword ptr [rbx+300h]
fffff803`21d3c4f7 4c8da3f8020000  lea     r12,[rbx+2F8h]
fffff803`21d3c4fe 49390424        cmp     qword ptr [r12],rax
fffff803`21d3c502 0f8596000000    jne     nt!KeTerminateThread+0x13a (fffff803`21d3c59e)

nt!KeTerminateThread+0xa4:
fffff803`21d3c508 f70572db280000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d3c512 488d1567762800  lea     rdx,[nt!KiProcessListLock (fffff803`21fc3b80)]
fffff803`21d3c519 48897de0        mov     qword ptr [rbp-20h],rdi
fffff803`21d3c51d 488955e8        mov     qword ptr [rbp-18h],rdx
fffff803`21d3c521 0f851ea7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe3e5 (fffff803`21c86c45)

nt!KeTerminateThread+0xc3:
fffff803`21d3c527 488d55e0        lea     rdx,[rbp-20h]
fffff803`21d3c52b 4887154e762800  xchg    rdx,qword ptr [nt!KiProcessListLock (fffff803`21fc3b80)]
fffff803`21d3c532 4885d2          test    rdx,rdx
fffff803`21d3c535 0f8519a7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe3f4 (fffff803`21c86c54)

nt!KeTerminateThread+0xd7:
fffff803`21d3c53b 498d8738020000  lea     rax,[r15+238h]
fffff803`21d3c542 488b10          mov     rdx,qword ptr [rax]
fffff803`21d3c545 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21d3c549 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21d3c54d 0f8523a7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe416 (fffff803`21c86c76)

nt!KeTerminateThread+0xef:
fffff803`21d3c553 483901          cmp     qword ptr [rcx],rax
fffff803`21d3c556 0f851aa7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe416 (fffff803`21c86c76)

nt!KeTerminateThread+0xf8:
fffff803`21d3c55c 488911          mov     qword ptr [rcx],rdx
fffff803`21d3c55f 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21d3c563 f70517db280000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d3c56d 0f85f0a6f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe403 (fffff803`21c86c63)

nt!KeTerminateThread+0x10f:
fffff803`21d3c573 0f0d4de0        prefetchw [rbp-20h]
fffff803`21d3c577 488b45e0        mov     rax,qword ptr [rbp-20h]
fffff803`21d3c57b 4885c0          test    rax,rax
fffff803`21d3c57e 0f8591010000    jne     nt!KeTerminateThread+0x2b1 (fffff803`21d3c715)

nt!KeTerminateThread+0x120:
fffff803`21d3c584 488b4de8        mov     rcx,qword ptr [rbp-18h]
fffff803`21d3c588 488d45e0        lea     rax,[rbp-20h]
fffff803`21d3c58c f0480fb139      lock cmpxchg qword ptr [rcx],rdi
fffff803`21d3c591 488d4de0        lea     rcx,[rbp-20h]
fffff803`21d3c595 483bc1          cmp     rax,rcx
fffff803`21d3c598 0f856e010000    jne     nt!KeTerminateThread+0x2a8 (fffff803`21d3c70c)

nt!KeTerminateThread+0x13a:
fffff803`21d3c59e 8bf7            mov     esi,edi

nt!KeTerminateThread+0x13c:
fffff803`21d3c5a0 f0410fba2f07    lock bts dword ptr [r15],7
fffff803`21d3c5a6 0f82d1a6f4ff    jb      nt! ?? ::FNODOBFM::`string'+0xe41d (fffff803`21c86c7d)

nt!KeTerminateThread+0x148:
fffff803`21d3c5ac 498b0c24        mov     rcx,qword ptr [r12]
fffff803`21d3c5b0 498b442408      mov     rax,qword ptr [r12+8]
fffff803`21d3c5b5 4c396108        cmp     qword ptr [rcx+8],r12
fffff803`21d3c5b9 0f8590a7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe4f3 (fffff803`21c86d4f)

nt!KeTerminateThread+0x15b:
fffff803`21d3c5bf 4c3920          cmp     qword ptr [rax],r12
fffff803`21d3c5c2 0f8587a7f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe4f3 (fffff803`21c86d4f)

nt!KeTerminateThread+0x164:
fffff803`21d3c5c8 488908          mov     qword ptr [rax],rcx
fffff803`21d3c5cb 41bc7fffffff    mov     r12d,0FFFFFF7Fh
fffff803`21d3c5d1 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d3c5d5 f0452127        lock and dword ptr [r15],r12d
fffff803`21d3c5d9 488b5368        mov     rdx,qword ptr [rbx+68h]
fffff803`21d3c5dd 4885d2          test    rdx,rdx
fffff803`21d3c5e0 0f85c6a6f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe44c (fffff803`21c86cac)

nt!KeTerminateThread+0x182:
fffff803`21d3c5e6 f70594da280000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d3c5f0 0f85c4a6f4ff    jne     nt! ?? ::FNODOBFM::`string'+0xe45a (fffff803`21c86cba)

nt!KeTerminateThread+0x192:
fffff803`21d3c5f6 41893e          mov     dword ptr [r14],edi

nt!KeTerminateThread+0x195:
fffff803`21d3c5f9 488b93e8000000  mov     rdx,qword ptr [rbx+0E8h]
fffff803`21d3c600 4885d2          test    rdx,rdx
fffff803`21d3c603 0f85ac000000    jne     nt!KeTerminateThread+0x251 (fffff803`21d3c6b5)

nt!KeTerminateThread+0x1a5:
fffff803`21d3c609 654c8b3c2520000000 mov   r15,qword ptr gs:[20h]
fffff803`21d3c612 8bf7            mov     esi,edi

nt!KeTerminateThread+0x1b0:
fffff803`21d3c614 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21d3c619 0f8227010000    jb      nt!KeTerminateThread+0x2e2 (fffff803`21d3c746)

nt!KeTerminateThread+0x1bb:
fffff803`21d3c61f 488d7308        lea     rsi,[rbx+8]
fffff803`21d3c623 c7430401000000  mov     dword ptr [rbx+4],1
fffff803`21d3c62a 4c8b36          mov     r14,qword ptr [rsi]

nt!KeTerminateThread+0x1c9:
fffff803`21d3c62d 4c3bf6          cmp     r14,rsi
fffff803`21d3c630 0f8593000000    jne     nt!KeTerminateThread+0x265 (fffff803`21d3c6c9)

nt!KeTerminateThread+0x1d2:
fffff803`21d3c636 48897608        mov     qword ptr [rsi+8],rsi
fffff803`21d3c63a 488936          mov     qword ptr [rsi],rsi
fffff803`21d3c63d f0442123        lock and dword ptr [rbx],r12d
fffff803`21d3c641 c6838401000004  mov     byte ptr [rbx+184h],4
fffff803`21d3c648 4c8d8378030000  lea     r8,[rbx+378h]
fffff803`21d3c64f 0f0d0dfae41c00  prefetchw [nt!PsReaperListHead (fffff803`21f0ab50)]
fffff803`21d3c656 488b05f3e41c00  mov     rax,qword ptr [nt!PsReaperListHead (fffff803`21f0ab50)]

nt!KeTerminateThread+0x1f9:
fffff803`21d3c65d 498900          mov     qword ptr [r8],rax
fffff803`21d3c660 488bc8          mov     rcx,rax
fffff803`21d3c663 f04c0fb105e4e41c00 lock cmpxchg qword ptr [nt!PsReaperListHead (fffff803`21f0ab50)],r8
fffff803`21d3c66c 483bc1          cmp     rax,rcx
fffff803`21d3c66f 75ec            jne     nt!KeTerminateThread+0x1f9 (fffff803`21d3c65d)

nt!KeTerminateThread+0x20d:
fffff803`21d3c671 4885c0          test    rax,rax
fffff803`21d3c674 7579            jne     nt!KeTerminateThread+0x28b (fffff803`21d3c6ef)

nt!KeTerminateThread+0x212:
fffff803`21d3c676 4183c8ff        or      r8d,0FFFFFFFFh

nt!KeTerminateThread+0x216:
fffff803`21d3c67a 488d0ddfe41c00  lea     rcx,[nt!PsReaperWorkItem (fffff803`21f0ab60)]
fffff803`21d3c681 ba02000000      mov     edx,2
fffff803`21d3c686 e8b9a90100      call    nt!ExQueueWorkItemEx (fffff803`21d57044)
fffff803`21d3c68b 84c0            test    al,al
fffff803`21d3c68d 0f846ea6f4ff    je      nt! ?? ::FNODOBFM::`string'+0xe4a1 (fffff803`21c86d01)

nt!KeTerminateThread+0x22f:
fffff803`21d3c693 f0093c24        lock or dword ptr [rsp],edi
fffff803`21d3c697 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`21d3c69b 4885c0          test    rax,rax
fffff803`21d3c69e 0f85e3000000    jne     nt!KeTerminateThread+0x323 (fffff803`21d3c787)

nt!KeTerminateThread+0x240:
fffff803`21d3c6a4 498bd7          mov     rdx,r15
fffff803`21d3c6a7 488bcb          mov     rcx,rbx
fffff803`21d3c6aa e8e1e70000      call    nt!KiSwapThread (fffff803`21d4ae90)
fffff803`21d3c6af 90              nop
fffff803`21d3c6b0 e9a1a6f4ff      jmp     nt! ?? ::FNODOBFM::`string'+0xe4fa (fffff803`21c86d56)

nt!KeTerminateThread+0x251:
fffff803`21d3c6b5 4c8d8308020000  lea     r8,[rbx+208h]
fffff803`21d3c6bc 488bcb          mov     rcx,rbx
fffff803`21d3c6bf e830cf0200      call    nt!KiSlowActivateWaiterQueue (fffff803`21d695f4)
fffff803`21d3c6c4 e940ffffff      jmp     nt!KeTerminateThread+0x1a5 (fffff803`21d3c609)

nt!KeTerminateThread+0x265:
fffff803`21d3c6c9 498bc6          mov     rax,r14
fffff803`21d3c6cc 4d8b36          mov     r14,qword ptr [r14]
fffff803`21d3c6cf 8a4810          mov     cl,byte ptr [rax+10h]
fffff803`21d3c6d2 80f901          cmp     cl,1
fffff803`21d3c6d5 754d            jne     nt!KeTerminateThread+0x2c0 (fffff803`21d3c724)

nt!KeTerminateThread+0x273:
fffff803`21d3c6d7 440fb74012      movzx   r8d,word ptr [rax+12h]

nt!KeTerminateThread+0x278:
fffff803`21d3c6dc 4533c9          xor     r9d,r9d
fffff803`21d3c6df 488bd0          mov     rdx,rax
fffff803`21d3c6e2 498bcf          mov     rcx,r15
fffff803`21d3c6e5 e8b63bfdff      call    nt!KiTryUnwaitThread (fffff803`21d102a0)
fffff803`21d3c6ea e93effffff      jmp     nt!KeTerminateThread+0x1c9 (fffff803`21d3c62d)

nt!KeTerminateThread+0x28b:
fffff803`21d3c6ef 48393d82e41c00  cmp     qword ptr [nt!PsReaperWorkItem+0x18 (fffff803`21f0ab78)],rdi
fffff803`21d3c6f6 749b            je      nt!KeTerminateThread+0x22f (fffff803`21d3c693)

nt!KeTerminateThread+0x294:
fffff803`21d3c6f8 e9eaa5f4ff      jmp     nt! ?? ::FNODOBFM::`string'+0xe487 (fffff803`21c86ce7)

nt!KeTerminateThread+0x299:
fffff803`21d3c6fd 498bce          mov     rcx,r14
fffff803`21d3c700 e8b70ff7ff      call    nt!ExpWaitForSpinLockExclusiveAndAcquire (fffff803`21cad6bc)
fffff803`21d3c705 8bf0            mov     esi,eax
fffff803`21d3c707 e9d2fdffff      jmp     nt!KeTerminateThread+0x7a (fffff803`21d3c4de)

nt!KeTerminateThread+0x2a8:
fffff803`21d3c70c 488d4de0        lea     rcx,[rbp-20h]
fffff803`21d3c710 e85b3effff      call    nt!KxWaitForLockChainValid (fffff803`21d30570)

nt!KeTerminateThread+0x2b1:
fffff803`21d3c715 f04883700801    lock xor qword ptr [rax+8],1
fffff803`21d3c71b 48897de0        mov     qword ptr [rbp-20h],rdi
fffff803`21d3c71f e97afeffff      jmp     nt!KeTerminateThread+0x13a (fffff803`21d3c59e)

nt!KeTerminateThread+0x2c0:
fffff803`21d3c724 80f902          cmp     cl,2
fffff803`21d3c727 7408            je      nt!KeTerminateThread+0x2cd (fffff803`21d3c731)

nt!KeTerminateThread+0x2c5:
fffff803`21d3c729 41b800010000    mov     r8d,100h
fffff803`21d3c72f ebab            jmp     nt!KeTerminateThread+0x278 (fffff803`21d3c6dc)

nt!KeTerminateThread+0x2cd:
fffff803`21d3c731 c6401103        mov     byte ptr [rax+11h],3
fffff803`21d3c735 488b4818        mov     rcx,qword ptr [rax+18h]
fffff803`21d3c739 488bd0          mov     rdx,rax
fffff803`21d3c73c e86baa0300      call    nt!KiInsertQueueInternal (fffff803`21d771ac)
fffff803`21d3c741 e9e7feffff      jmp     nt!KeTerminateThread+0x1c9 (fffff803`21d3c62d)

nt!KeTerminateThread+0x2e2:
fffff803`21d3c746 ffc6            inc     esi
fffff803`21d3c748 8535fedc2800    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21d3c74e 0f8478a5f4ff    je      nt! ?? ::FNODOBFM::`string'+0xe46c (fffff803`21c86ccc)

nt!KeTerminateThread+0x2f0:
fffff803`21d3c754 f390            pause

nt!KeTerminateThread+0x2f2:
fffff803`21d3c756 8b03            mov     eax,dword ptr [rbx]
fffff803`21d3c758 84c0            test    al,al
fffff803`21d3c75a 0f89b4feffff    jns     nt!KeTerminateThread+0x1b0 (fffff803`21d3c614)

nt!KeTerminateThread+0x2fc:
fffff803`21d3c760 ebe4            jmp     nt!KeTerminateThread+0x2e2 (fffff803`21d3c746)

nt!KeTerminateThread+0x2fe:
fffff803`21d3c762 ffc6            inc     esi
fffff803`21d3c764 8535e2dc2800    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21d3c76a 0f84baa4f4ff    je      nt! ?? ::FNODOBFM::`string'+0xe3ca (fffff803`21c86c2a)

nt!KeTerminateThread+0x30c:
fffff803`21d3c770 f390            pause

nt!KeTerminateThread+0x30e:
fffff803`21d3c772 418b06          mov     eax,dword ptr [r14]
fffff803`21d3c775 413bc4          cmp     eax,r12d
fffff803`21d3c778 0f8472fdffff    je      nt!KeTerminateThread+0x8c (fffff803`21d3c4f0)

nt!KeTerminateThread+0x31a:
fffff803`21d3c77e ebe2            jmp     nt!KeTerminateThread+0x2fe (fffff803`21d3c762)

nt!KeTerminateThread+0x31c:
fffff803`21d3c780 f390            pause
fffff803`21d3c782 e919a5f4ff      jmp     nt! ?? ::FNODOBFM::`string'+0xe440 (fffff803`21c86ca0)

nt!KeTerminateThread+0x323:
fffff803`21d3c787 8bf7            mov     esi,edi
fffff803`21d3c789 e981a5f4ff      jmp     nt! ?? ::FNODOBFM::`string'+0xe4af (fffff803`21c86d0f)

nt!KeTerminateThread+0x32a:
fffff803`21d3c78e f390            pause
fffff803`21d3c790 e9afa5f4ff      jmp     nt! ?? ::FNODOBFM::`string'+0xe4e8 (fffff803`21c86d44)
