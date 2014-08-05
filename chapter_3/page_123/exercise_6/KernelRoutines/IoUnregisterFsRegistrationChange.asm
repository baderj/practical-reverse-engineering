nt!ObfReferenceObject+0x20:
fffff803`21d0a160 f0480fc11f      lock xadd qword ptr [rdi],rbx
fffff803`21d0a165 48ffc3          inc     rbx
fffff803`21d0a168 4883fb01        cmp     rbx,1
fffff803`21d0a16c 0f8e68601500    jle     nt! ?? ::FNODOBFM::`string'+0x38698 (fffff803`21e601da)

nt!ObfReferenceObject+0x32:
fffff803`21d0a172 488bc3          mov     rax,rbx
fffff803`21d0a175 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d0a17a 4883c430        add     rsp,30h
fffff803`21d0a17e 5f              pop     rdi
fffff803`21d0a17f c3              ret

nt!ObfDereferenceObject:
fffff803`21d10be0 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21d10be5 4889742410      mov     qword ptr [rsp+10h],rsi
fffff803`21d10bea 57              push    rdi
fffff803`21d10beb 4883ec30        sub     rsp,30h
fffff803`21d10bef 833d3e942b0000  cmp     dword ptr [nt!ObpTraceFlags (fffff803`21fca034)],0
fffff803`21d10bf6 488bf1          mov     rsi,rcx
fffff803`21d10bf9 0f8565f51400    jne     nt! ?? ::FNODOBFM::`string'+0x38622 (fffff803`21e60164)

nt!ObfDereferenceObject+0x1f:
fffff803`21d10bff 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh
fffff803`21d10c03 f0480fc15ed0    lock xadd qword ptr [rsi-30h],rbx
fffff803`21d10c09 48ffcb          dec     rbx
fffff803`21d10c0c 4885db          test    rbx,rbx
fffff803`21d10c0f 7e13            jle     nt!ObfDereferenceObject+0x44 (fffff803`21d10c24)

nt!ObfDereferenceObject+0x31:
fffff803`21d10c11 488bc3          mov     rax,rbx
fffff803`21d10c14 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d10c19 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff803`21d10c1e 4883c430        add     rsp,30h
fffff803`21d10c22 5f              pop     rdi
fffff803`21d10c23 c3              ret

nt!ObfDereferenceObject+0x44:
fffff803`21d10c24 488b46d8        mov     rax,qword ptr [rsi-28h]
fffff803`21d10c28 4885c0          test    rax,rax
fffff803`21d10c2b 0f854ef51400    jne     nt! ?? ::FNODOBFM::`string'+0x3863d (fffff803`21e6017f)

nt!ObfDereferenceObject+0x51:
fffff803`21d10c31 4885db          test    rbx,rbx
fffff803`21d10c34 0f886cf51400    js      nt! ?? ::FNODOBFM::`string'+0x38664 (fffff803`21e601a6)

nt!ObfDereferenceObject+0x5a:
fffff803`21d10c3a 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21d10c43 6683b8e601000000 cmp     word ptr [rax+1E6h],0
fffff803`21d10c4b 752f            jne     nt!ObfDereferenceObject+0x9c (fffff803`21d10c7c)

nt!ObfDereferenceObject+0x6d:
fffff803`21d10c4d 440f20c0        mov     rax,cr8
fffff803`21d10c51 3c01            cmp     al,1
fffff803`21d10c53 7327            jae     nt!ObfDereferenceObject+0x9c (fffff803`21d10c7c)

nt!ObfDereferenceObject+0x75:
fffff803`21d10c55 833dd8932b0000  cmp     dword ptr [nt!ObpTraceFlags (fffff803`21fca034)],0
fffff803`21d10c5c 753a            jne     nt!ObfDereferenceObject+0xb8 (fffff803`21d10c98)

nt!ObfDereferenceObject+0x7e:
fffff803`21d10c5e 488d4ed0        lea     rcx,[rsi-30h]
fffff803`21d10c62 33d2            xor     edx,edx
fffff803`21d10c64 e8d7513900      call    nt!ObpRemoveObjectRoutine (fffff803`220a5e40)
fffff803`21d10c69 488bc3          mov     rax,rbx
fffff803`21d10c6c 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d10c71 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff803`21d10c76 4883c430        add     rsp,30h
fffff803`21d10c7a 5f              pop     rdi
fffff803`21d10c7b c3              ret

nt!ObfDereferenceObject+0x9c:
fffff803`21d10c7c 488d4ed0        lea     rcx,[rsi-30h]
fffff803`21d10c80 e8f35f0600      call    nt!ObpDeferObjectDeletion (fffff803`21d76c78)
fffff803`21d10c85 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff803`21d10c8a 488bc3          mov     rax,rbx
fffff803`21d10c8d 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d10c92 4883c430        add     rsp,30h
fffff803`21d10c96 5f              pop     rdi
fffff803`21d10c97 c3              ret

nt!ObfDereferenceObject+0xb8:
fffff803`21d10c98 488d4ed0        lea     rcx,[rsi-30h]
fffff803`21d10c9c e8e7a24d00      call    nt!ObpDeregisterObject (fffff803`221eaf88)
fffff803`21d10ca1 ebbb            jmp     nt!ObfDereferenceObject+0x7e (fffff803`21d10c5e)

nt!IopInterlockedDecrementUlong:
fffff803`21d2e530 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21d2e535 4889742410      mov     qword ptr [rsp+10h],rsi
fffff803`21d2e53a 57              push    rdi
fffff803`21d2e53b 4883ec20        sub     rsp,20h
fffff803`21d2e53f 488bda          mov     rbx,rdx
fffff803`21d2e542 488bf9          mov     rdi,rcx
fffff803`21d2e545 440f20c6        mov     rsi,cr8
fffff803`21d2e549 b802000000      mov     eax,2
fffff803`21d2e54e 440f22c0        mov     cr8,rax
fffff803`21d2e552 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`21d2e55b 48c1e704        shl     rdi,4
fffff803`21d2e55f 4803cf          add     rcx,rdi
fffff803`21d2e562 4c8b4108        mov     r8,qword ptr [rcx+8]
fffff803`21d2e566 f70514bb290000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d2e570 7576            jne     nt!IopInterlockedDecrementUlong+0xb8 (fffff803`21d2e5e8)

nt!IopInterlockedDecrementUlong+0x42:
fffff803`21d2e572 488bd1          mov     rdx,rcx
fffff803`21d2e575 498710          xchg    rdx,qword ptr [r8]
fffff803`21d2e578 4885d2          test    rdx,rdx
fffff803`21d2e57b 7564            jne     nt!IopInterlockedDecrementUlong+0xb1 (fffff803`21d2e5e1)

nt!IopInterlockedDecrementUlong+0x4d:
fffff803`21d2e57d ff0b            dec     dword ptr [rbx]
fffff803`21d2e57f 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`21d2e588 4803df          add     rbx,rdi
fffff803`21d2e58b f705efba290000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d2e595 0f85c5661100    jne     nt! ?? ::FNODOBFM::`string'+0x9b38 (fffff803`21e44c60)

nt!IopInterlockedDecrementUlong+0x6b:
fffff803`21d2e59b 0f0d0b          prefetchw [rbx]
fffff803`21d2e59e 488b03          mov     rax,qword ptr [rbx]
fffff803`21d2e5a1 33ff            xor     edi,edi
fffff803`21d2e5a3 4885c0          test    rax,rax
fffff803`21d2e5a6 752e            jne     nt!IopInterlockedDecrementUlong+0xa6 (fffff803`21d2e5d6)

nt!IopInterlockedDecrementUlong+0x78:
fffff803`21d2e5a8 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`21d2e5ac 488bc3          mov     rax,rbx
fffff803`21d2e5af f0480fb139      lock cmpxchg qword ptr [rcx],rdi
fffff803`21d2e5b4 7518            jne     nt!IopInterlockedDecrementUlong+0x9e (fffff803`21d2e5ce)

nt!IopInterlockedDecrementUlong+0x86:
fffff803`21d2e5b6 440fb6de        movzx   r11d,sil
fffff803`21d2e5ba 450f22c3        mov     cr8,r11
fffff803`21d2e5be 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21d2e5c3 488b742438      mov     rsi,qword ptr [rsp+38h]
fffff803`21d2e5c8 4883c420        add     rsp,20h
fffff803`21d2e5cc 5f              pop     rdi
fffff803`21d2e5cd c3              ret

nt!IopInterlockedDecrementUlong+0x9e:
fffff803`21d2e5ce 488bcb          mov     rcx,rbx
fffff803`21d2e5d1 e89a1f0000      call    nt!KxWaitForLockChainValid (fffff803`21d30570)

nt!IopInterlockedDecrementUlong+0xa6:
fffff803`21d2e5d6 f04883700801    lock xor qword ptr [rax+8],1
fffff803`21d2e5dc 48893b          mov     qword ptr [rbx],rdi
fffff803`21d2e5df ebd5            jmp     nt!IopInterlockedDecrementUlong+0x86 (fffff803`21d2e5b6)

nt!IopInterlockedDecrementUlong+0xb1:
fffff803`21d2e5e1 e8fa7bfeff      call    nt!KxWaitForLockOwnerShip (fffff803`21d161e0)
fffff803`21d2e5e6 eb95            jmp     nt!IopInterlockedDecrementUlong+0x4d (fffff803`21d2e57d)

nt!IopInterlockedDecrementUlong+0xb8:
fffff803`21d2e5e8 498bd0          mov     rdx,r8
fffff803`21d2e5eb e800f10b00      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`21ded6f0)
fffff803`21d2e5f0 eb8b            jmp     nt!IopInterlockedDecrementUlong+0x4d (fffff803`21d2e57d)

nt!NtSignalAndWaitForSingleObject+0x3b:
fffff803`21d7e93f 488d442450      lea     rax,[rsp+50h]
fffff803`21d7e944 4889442430      mov     qword ptr [rsp+30h],rax
fffff803`21d7e949 488d442448      lea     rax,[rsp+48h]
fffff803`21d7e94e 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`21d7e953 c74424204f625774 mov     dword ptr [rsp+20h],7457624Fh
fffff803`21d7e95b 448ace          mov     r9b,sil
fffff803`21d7e95e 4533c0          xor     r8d,r8d
fffff803`21d7e961 33d2            xor     edx,edx
fffff803`21d7e963 e8b85f3200      call    nt!ObReferenceObjectByHandleWithTag (fffff803`220a4920)
fffff803`21d7e968 8bd8            mov     ebx,eax
fffff803`21d7e96a 85c0            test    eax,eax
fffff803`21d7e96c 0f88e6000000    js      nt!NtSignalAndWaitForSingleObject+0x154 (fffff803`21d7ea58)

nt!NtSignalAndWaitForSingleObject+0x6e:
fffff803`21d7e972 488364243000    and     qword ptr [rsp+30h],0
fffff803`21d7e978 488d442458      lea     rax,[rsp+58h]
fffff803`21d7e97d 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`21d7e982 c74424204f625774 mov     dword ptr [rsp+20h],7457624Fh
fffff803`21d7e98a 448ace          mov     r9b,sil
fffff803`21d7e98d 4533c0          xor     r8d,r8d
fffff803`21d7e990 ba00001000      mov     edx,100000h
fffff803`21d7e995 488bcf          mov     rcx,rdi
fffff803`21d7e998 e8835f3200      call    nt!ObReferenceObjectByHandleWithTag (fffff803`220a4920)
fffff803`21d7e99d 8bd8            mov     ebx,eax
fffff803`21d7e99f 85c0            test    eax,eax
fffff803`21d7e9a1 0f88a2000000    js      nt!NtSignalAndWaitForSingleObject+0x145 (fffff803`21d7ea49)

nt!NtSignalAndWaitForSingleObject+0xa3:
fffff803`21d7e9a7 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff803`21d7e9ac 0fb641e8        movzx   eax,byte ptr [rcx-18h]
fffff803`21d7e9b0 4c8d1d49f41800  lea     r11,[nt!ObTypeIndexTable (fffff803`21f0de00)]
fffff803`21d7e9b7 4d8b0cc3        mov     r9,qword ptr [r11+rax*8]
fffff803`21d7e9bb 4c8bc1          mov     r8,rcx
fffff803`21d7e9be 498b7920        mov     rdi,qword ptr [r9+20h]
fffff803`21d7e9c2 41ba01000000    mov     r10d,1
fffff803`21d7e9c8 4184fa          test    r10b,dil
fffff803`21d7e9cb 0f8568180e00    jne     nt! ?? ::FNODOBFM::`string'+0x386e6 (fffff803`21e60239)

nt!NtSignalAndWaitForSingleObject+0xcd:
fffff803`21d7e9d1 4885ff          test    rdi,rdi
fffff803`21d7e9d4 7803            js      nt!NtSignalAndWaitForSingleObject+0xd5 (fffff803`21d7e9d9)

nt!NtSignalAndWaitForSingleObject+0xd2:
fffff803`21d7e9d6 4803f9          add     rdi,rcx

nt!NtSignalAndWaitForSingleObject+0xd5:
fffff803`21d7e9d9 488b442448      mov     rax,qword ptr [rsp+48h]
fffff803`21d7e9de 0fb648e8        movzx   ecx,byte ptr [rax-18h]
fffff803`21d7e9e2 4d8b04cb        mov     r8,qword ptr [r11+rcx*8]
fffff803`21d7e9e6 bb220000c0      mov     ebx,0C0000022h
fffff803`21d7e9eb 4c3b05d6b62400  cmp     r8,qword ptr [nt!ExEventObjectType (fffff803`21fca0c8)]
fffff803`21d7e9f2 0f858a180e00    jne     nt! ?? ::FNODOBFM::`string'+0x3872f (fffff803`21e60282)

nt!NtSignalAndWaitForSingleObject+0xf4:
fffff803`21d7e9f8 4084f6          test    sil,sil
fffff803`21d7e9fb 740a            je      nt!NtSignalAndWaitForSingleObject+0x103 (fffff803`21d7ea07)

nt!NtSignalAndWaitForSingleObject+0xf9:
fffff803`21d7e9fd 8b442454        mov     eax,dword ptr [rsp+54h]
fffff803`21d7ea01 f7d0            not     eax
fffff803`21d7ea03 a802            test    al,2
fffff803`21d7ea05 7533            jne     nt!NtSignalAndWaitForSingleObject+0x136 (fffff803`21d7ea3a)

nt!NtSignalAndWaitForSingleObject+0x103:
fffff803`21d7ea07 458ac2          mov     r8b,r10b
fffff803`21d7ea0a 418bd2          mov     edx,r10d
fffff803`21d7ea0d 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`21d7ea12 e869a4f8ff      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21d7ea17 90              nop

nt!NtSignalAndWaitForSingleObject+0x114:
fffff803`21d7ea18 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`21d7ea1d 458acf          mov     r9b,r15b
fffff803`21d7ea20 448ac6          mov     r8b,sil
fffff803`21d7ea23 ba06000000      mov     edx,6
fffff803`21d7ea28 488bcf          mov     rcx,rdi
fffff803`21d7ea2b e880faf8ff      call    nt!KeWaitForSingleObject (fffff803`21d0e4b0)
fffff803`21d7ea30 8bd8            mov     ebx,eax
fffff803`21d7ea32 89442440        mov     dword ptr [rsp+40h],eax
fffff803`21d7ea36 eb02            jmp     nt!NtSignalAndWaitForSingleObject+0x136 (fffff803`21d7ea3a)

nt!NtSignalAndWaitForSingleObject+0x136:
fffff803`21d7ea3a ba4f625774      mov     edx,7457624Fh
fffff803`21d7ea3f 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff803`21d7ea44 e817e4f7ff      call    nt!ObfDereferenceObjectWithTag (fffff803`21cfce60)

nt!NtSignalAndWaitForSingleObject+0x145:
fffff803`21d7ea49 ba4f625774      mov     edx,7457624Fh
fffff803`21d7ea4e 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`21d7ea53 e808e4f7ff      call    nt!ObfDereferenceObjectWithTag (fffff803`21cfce60)

nt!NtSignalAndWaitForSingleObject+0x154:
fffff803`21d7ea58 8bc3            mov     eax,ebx
fffff803`21d7ea5a 4c8d5c2470      lea     r11,[rsp+70h]
fffff803`21d7ea5f 498b5b20        mov     rbx,qword ptr [r11+20h]
fffff803`21d7ea63 498b7328        mov     rsi,qword ptr [r11+28h]
fffff803`21d7ea67 498be3          mov     rsp,r11
fffff803`21d7ea6a 415f            pop     r15
fffff803`21d7ea6c 415e            pop     r14
fffff803`21d7ea6e 5f              pop     rdi
fffff803`21d7ea6f c3              ret

nt!NtSignalAndWaitForSingleObject+0x16c:
fffff803`21d7ea70 bb240000c0      mov     ebx,0C0000024h
fffff803`21d7ea75 ebc3            jmp     nt!NtSignalAndWaitForSingleObject+0x136 (fffff803`21d7ea3a)

nt! ?? ::FNODOBFM::`string'+0x9b38:
fffff803`21e44c60 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`21e44c65 488bcb          mov     rcx,rbx
fffff803`21e44c68 e86389faff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`21ded5d0)
fffff803`21e44c6d 90              nop
fffff803`21e44c6e e94399eeff      jmp     nt!IopInterlockedDecrementUlong+0x86 (fffff803`21d2e5b6)

nt! ?? ::FNODOBFM::`string'+0x38622:
fffff803`21e60164 33d2            xor     edx,edx
fffff803`21e60166 41b944666c74    mov     r9d,746C6644h
fffff803`21e6016c 4883c1d0        add     rcx,0FFFFFFFFFFFFFFD0h
fffff803`21e60170 448d4201        lea     r8d,[rdx+1]
fffff803`21e60174 e8b780faff      call    nt!ObpPushStackInfo (fffff803`21e08230)
fffff803`21e60179 90              nop
fffff803`21e6017a e9800aebff      jmp     nt!ObfDereferenceObject+0x1f (fffff803`21d10bff)

nt! ?? ::FNODOBFM::`string'+0x3863d:
fffff803`21e6017f 0fb656e8        movzx   edx,byte ptr [rsi-18h]
fffff803`21e60183 488d0d76dc0a00  lea     rcx,[nt!ObTypeIndexTable (fffff803`21f0de00)]
fffff803`21e6018a 41b901000000    mov     r9d,1
fffff803`21e60190 488b14d1        mov     rdx,qword ptr [rcx+rdx*8]
fffff803`21e60194 418d4917        lea     ecx,[r9+17h]
fffff803`21e60198 4c8bc6          mov     r8,rsi
fffff803`21e6019b 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21e601a0 e89bc2e6ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e601a5 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x38664:
fffff803`21e601a6 33d2            xor     edx,edx
fffff803`21e601a8 41b902000000    mov     r9d,2
fffff803`21e601ae 4c8bc6          mov     r8,rsi
fffff803`21e601b1 8d4a18          lea     ecx,[rdx+18h]
fffff803`21e601b4 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`21e601b9 e882c2e6ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e601be cc              int     3
fffff803`21e601bf 90              nop
fffff803`21e601c0 41b944666c74    mov     r9d,746C6644h
fffff803`21e601c6 448bc3          mov     r8d,ebx
fffff803`21e601c9 0fb6d3          movzx   edx,bl
fffff803`21e601cc 488bcf          mov     rcx,rdi
fffff803`21e601cf e85c80faff      call    nt!ObpPushStackInfo (fffff803`21e08230)
fffff803`21e601d4 90              nop
fffff803`21e601d5 e9869feaff      jmp     nt!ObfReferenceObject+0x20 (fffff803`21d0a160)

nt! ?? ::FNODOBFM::`string'+0x38698:
fffff803`21e601da 33d2            xor     edx,edx
fffff803`21e601dc 4c8d4730        lea     r8,[rdi+30h]
fffff803`21e601e0 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`21e601e5 448d4a10        lea     r9d,[rdx+10h]
fffff803`21e601e9 8d4a18          lea     ecx,[rdx+18h]
fffff803`21e601ec e84fc2e6ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e601f1 cc              int     3
fffff803`21e601f2 90              nop
fffff803`21e601f3 90              nop
fffff803`21e601f4 90              nop
fffff803`21e601f5 90              nop
fffff803`21e601f6 90              nop
fffff803`21e601f7 90              nop
fffff803`21e601f8 90              nop
fffff803`21e601f9 90              nop
fffff803`21e601fa 90              nop
fffff803`21e601fb 90              nop
fffff803`21e601fc 90              nop
fffff803`21e601fd 90              nop
fffff803`21e601fe 90              nop
fffff803`21e601ff 90              nop
fffff803`21e60200 4084f6          test    sil,sil
fffff803`21e60203 0f8436e7f1ff    je      nt!NtSignalAndWaitForSingleObject+0x3b (fffff803`21d7e93f)

nt! ?? ::FNODOBFM::`string'+0x386b9:
fffff803`21e60209 488b05f09d1600  mov     rax,qword ptr [nt!MmUserProbeAddress (fffff803`21fca000)]
fffff803`21e60210 4c3bf0          cmp     r14,rax
fffff803`21e60213 4c0f43f0        cmovae  r14,rax
fffff803`21e60217 498b06          mov     rax,qword ptr [r14]
fffff803`21e6021a 4889442460      mov     qword ptr [rsp+60h],rax
fffff803`21e6021f 4c8d742460      lea     r14,[rsp+60h]
fffff803`21e60224 4c89b424a8000000 mov     qword ptr [rsp+0A8h],r14
fffff803`21e6022c e90ee7f1ff      jmp     nt!NtSignalAndWaitForSingleObject+0x3b (fffff803`21d7e93f)

nt! ?? ::FNODOBFM::`string'+0x386e6:
fffff803`21e60239 40f6c702        test    dil,2
fffff803`21e6023d 750d            jne     nt! ?? ::FNODOBFM::`string'+0x386f9 (fffff803`21e6024c)

nt! ?? ::FNODOBFM::`string'+0x386ec:
fffff803`21e6023f 488d0439        lea     rax,[rcx+rdi]
fffff803`21e60243 488b78ff        mov     rdi,qword ptr [rax-1]
fffff803`21e60247 e98de7f1ff      jmp     nt!NtSignalAndWaitForSingleObject+0xd5 (fffff803`21d7e9d9)

nt! ?? ::FNODOBFM::`string'+0x386f9:
fffff803`21e6024c 410fb791b4000000 movzx   edx,word ptr [r9+0B4h]
fffff803`21e60254 418b89b0000000  mov     ecx,dword ptr [r9+0B0h]
fffff803`21e6025b 8bc1            mov     eax,ecx
fffff803`21e6025d 42230402        and     eax,dword ptr [rdx+r8]
fffff803`21e60261 3bc1            cmp     eax,ecx
fffff803`21e60263 7511            jne     nt! ?? ::FNODOBFM::`string'+0x38723 (fffff803`21e60276)

nt! ?? ::FNODOBFM::`string'+0x38712:
fffff803`21e60265 410fb781b6000000 movzx   eax,word ptr [r9+0B6h]
fffff803`21e6026d 4a8b3c00        mov     rdi,qword ptr [rax+r8]
fffff803`21e60271 e963e7f1ff      jmp     nt!NtSignalAndWaitForSingleObject+0xd5 (fffff803`21d7e9d9)

nt! ?? ::FNODOBFM::`string'+0x38723:
fffff803`21e60276 4883c7fd        add     rdi,0FFFFFFFFFFFFFFFDh
fffff803`21e6027a 4903f8          add     rdi,r8
fffff803`21e6027d e957e7f1ff      jmp     nt!NtSignalAndWaitForSingleObject+0xd5 (fffff803`21d7e9d9)

nt! ?? ::FNODOBFM::`string'+0x3872f:
fffff803`21e60282 4c3b05c7a11600  cmp     r8,qword ptr [nt!ExMutantObjectType (fffff803`21fca450)]
fffff803`21e60289 7520            jne     nt! ?? ::FNODOBFM::`string'+0x38758 (fffff803`21e602ab)

nt! ?? ::FNODOBFM::`string'+0x38738:
fffff803`21e6028b 458aca          mov     r9b,r10b
fffff803`21e6028e 4533c0          xor     r8d,r8d
fffff803`21e60291 418bd2          mov     edx,r10d
fffff803`21e60294 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`21e60299 e8120aebff      call    nt!KeReleaseMutant (fffff803`21d10cb0)
fffff803`21e6029e 90              nop
fffff803`21e6029f e974e7f1ff      jmp     nt!NtSignalAndWaitForSingleObject+0x114 (fffff803`21d7ea18)

nt! ?? ::FNODOBFM::`string'+0x38758:
fffff803`21e602ab 4c3b05a6a11600  cmp     r8,qword ptr [nt!ExSemaphoreObjectType (fffff803`21fca458)]
fffff803`21e602b2 0f85b8e7f1ff    jne     nt!NtSignalAndWaitForSingleObject+0x16c (fffff803`21d7ea70)

nt! ?? ::FNODOBFM::`string'+0x38765:
fffff803`21e602b8 4084f6          test    sil,sil
fffff803`21e602bb 740e            je      nt! ?? ::FNODOBFM::`string'+0x38778 (fffff803`21e602cb)

nt! ?? ::FNODOBFM::`string'+0x3876a:
fffff803`21e602bd 8b442454        mov     eax,dword ptr [rsp+54h]
fffff803`21e602c1 f7d0            not     eax
fffff803`21e602c3 a802            test    al,2
fffff803`21e602c5 0f856fe7f1ff    jne     nt!NtSignalAndWaitForSingleObject+0x136 (fffff803`21d7ea3a)

nt! ?? ::FNODOBFM::`string'+0x38778:
fffff803`21e602cb 458aca          mov     r9b,r10b
fffff803`21e602ce 458bc2          mov     r8d,r10d
fffff803`21e602d1 418bd2          mov     edx,r10d
fffff803`21e602d4 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`21e602d9 e842fcebff      call    nt!KeReleaseSemaphore (fffff803`21d1ff20)
fffff803`21e602de 90              nop
fffff803`21e602df e934e7f1ff      jmp     nt!NtSignalAndWaitForSingleObject+0x114 (fffff803`21d7ea18)

nt!IoUnregisterFsRegistrationChange:
fffff803`221be420 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`221be425 57              push    rdi
fffff803`221be426 4883ec20        sub     rsp,20h
fffff803`221be42a 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`221be433 488bfa          mov     rdi,rdx
fffff803`221be436 488bd9          mov     rbx,rcx
fffff803`221be439 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`221be440 488d0d19dfd8ff  lea     rcx,[nt!IopDatabaseResource (fffff803`21f4c360)]
fffff803`221be447 b201            mov     dl,1
fffff803`221be449 e8022fb5ff      call    nt!ExAcquireResourceExclusiveLite (fffff803`21d11350)
fffff803`221be44e 488b0d7be0d8ff  mov     rcx,qword ptr [nt!IopFsNotifyChangeQueueHead (fffff803`21f4c4d0)]
fffff803`221be455 488d0574e0d8ff  lea     rax,[nt!IopFsNotifyChangeQueueHead (fffff803`21f4c4d0)]
fffff803`221be45c eb0f            jmp     nt!IoUnregisterFsRegistrationChange+0x4d (fffff803`221be46d)

nt!IoUnregisterFsRegistrationChange+0x3e:
fffff803`221be45e 48395910        cmp     qword ptr [rcx+10h],rbx
fffff803`221be462 7506            jne     nt!IoUnregisterFsRegistrationChange+0x4a (fffff803`221be46a)

nt!IoUnregisterFsRegistrationChange+0x44:
fffff803`221be464 48397918        cmp     qword ptr [rcx+18h],rdi
fffff803`221be468 7462            je      nt!IoUnregisterFsRegistrationChange+0xac (fffff803`221be4cc)

nt!IoUnregisterFsRegistrationChange+0x4a:
fffff803`221be46a 488b09          mov     rcx,qword ptr [rcx]

nt!IoUnregisterFsRegistrationChange+0x4d:
fffff803`221be46d 483bc8          cmp     rcx,rax
fffff803`221be470 75ec            jne     nt!IoUnregisterFsRegistrationChange+0x3e (fffff803`221be45e)

nt!IoUnregisterFsRegistrationChange+0x52:
fffff803`221be472 488d0de7ded8ff  lea     rcx,[nt!IopDatabaseResource (fffff803`21f4c360)]
fffff803`221be479 e892b4b4ff      call    nt!ExReleaseResourceLite (fffff803`21d09910)
fffff803`221be47e 654c8b1c2588010000 mov   r11,qword ptr gs:[188h]
fffff803`221be487 410fbf83e4010000 movsx   eax,word ptr [r11+1E4h]
fffff803`221be48f ffc0            inc     eax
fffff803`221be491 66418983e4010000 mov     word ptr [r11+1E4h],ax
fffff803`221be499 6685c0          test    ax,ax
fffff803`221be49c 751c            jne     nt!IoUnregisterFsRegistrationChange+0x9a (fffff803`221be4ba)

nt!IoUnregisterFsRegistrationChange+0x7e:
fffff803`221be49e 498d8398000000  lea     rax,[r11+98h]
fffff803`221be4a5 483900          cmp     qword ptr [rax],rax
fffff803`221be4a8 7410            je      nt!IoUnregisterFsRegistrationChange+0x9a (fffff803`221be4ba)

nt!IoUnregisterFsRegistrationChange+0x8a:
fffff803`221be4aa 664183bbe601000000 cmp   word ptr [r11+1E6h],0
fffff803`221be4b3 7505            jne     nt!IoUnregisterFsRegistrationChange+0x9a (fffff803`221be4ba)

nt!IoUnregisterFsRegistrationChange+0x95:
fffff803`221be4b5 e846b3baff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!IoUnregisterFsRegistrationChange+0x9a:
fffff803`221be4ba 488bcb          mov     rcx,rbx
fffff803`221be4bd 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`221be4c2 4883c420        add     rsp,20h
fffff803`221be4c6 5f              pop     rdi
fffff803`221be4c7 e91427b5ff      jmp     nt!ObfDereferenceObject (fffff803`21d10be0)

nt!IoUnregisterFsRegistrationChange+0xac:
fffff803`221be4cc 488b11          mov     rdx,qword ptr [rcx]
fffff803`221be4cf 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`221be4d3 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`221be4d7 7515            jne     nt!IoUnregisterFsRegistrationChange+0xce (fffff803`221be4ee)

nt!IoUnregisterFsRegistrationChange+0xb9:
fffff803`221be4d9 483908          cmp     qword ptr [rax],rcx
fffff803`221be4dc 7510            jne     nt!IoUnregisterFsRegistrationChange+0xce (fffff803`221be4ee)

nt!IoUnregisterFsRegistrationChange+0xbe:
fffff803`221be4de 488910          mov     qword ptr [rax],rdx
fffff803`221be4e1 48894208        mov     qword ptr [rdx+8],rax
fffff803`221be4e5 33d2            xor     edx,edx
fffff803`221be4e7 e8744cd2ff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`221be4ec eb84            jmp     nt!IoUnregisterFsRegistrationChange+0x52 (fffff803`221be472)

nt!IoUnregisterFsRegistrationChange+0xce:
fffff803`221be4ee b903000000      mov     ecx,3
fffff803`221be4f3 cd29            int     29h
fffff803`221be4f5 90              nop
fffff803`221be4f6 90              nop
fffff803`221be4f7 90              nop
fffff803`221be4f8 90              nop
fffff803`221be4f9 90              nop
fffff803`221be4fa 90              nop
fffff803`221be4fb 90              nop
fffff803`221be4fc 90              nop
fffff803`221be4fd 90              nop
fffff803`221be4fe 90              nop
fffff803`221be4ff 90              nop
fffff803`221be500 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`221be505 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`221be50a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`221be50f 57              push    rdi
fffff803`221be510 4883ec20        sub     rsp,20h
fffff803`221be514 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`221be51d 488bf9          mov     rdi,rcx
fffff803`221be520 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`221be527 488d0d32ded8ff  lea     rcx,[nt!IopDatabaseResource (fffff803`21f4c360)]
fffff803`221be52e b201            mov     dl,1
fffff803`221be530 e81b2eb5ff      call    nt!ExAcquireResourceExclusiveLite (fffff803`21d11350)
fffff803`221be535 4c8d5f50        lea     r11,[rdi+50h]
fffff803`221be539 33f6            xor     esi,esi
fffff803`221be53b 493933          cmp     qword ptr [r11],rsi
fffff803`221be53e 7419            je      nt!IoUnregisterFileSystem+0x59 (fffff803`221be559)

nt!IoUnregisterFileSystem+0x40:
fffff803`221be540 498b0b          mov     rcx,qword ptr [r11]
fffff803`221be543 498b4308        mov     rax,qword ptr [r11+8]
fffff803`221be547 4c395908        cmp     qword ptr [rcx+8],r11
fffff803`221be54b 751c            jne     nt!IoUnregisterFileSystem+0x69 (fffff803`221be569)

nt!IoUnregisterFileSystem+0x4d:
fffff803`221be54d 4c3918          cmp     qword ptr [rax],r11
fffff803`221be550 7517            jne     nt!IoUnregisterFileSystem+0x69 (fffff803`221be569)

nt!IoUnregisterFileSystem+0x52:
fffff803`221be552 488908          mov     qword ptr [rax],rcx
fffff803`221be555 48894108        mov     qword ptr [rcx+8],rax

nt!IoUnregisterFileSystem+0x59:
fffff803`221be559 488b1d70dfd8ff  mov     rbx,qword ptr [nt!IopFsNotifyChangeQueueHead (fffff803`21f4c4d0)]
fffff803`221be560 488d2d69dfd8ff  lea     rbp,[nt!IopFsNotifyChangeQueueHead (fffff803`21f4c4d0)]
fffff803`221be567 eb15            jmp     nt!IoUnregisterFileSystem+0x7e (fffff803`221be57e)

nt!IoUnregisterFileSystem+0x69:
fffff803`221be569 b903000000      mov     ecx,3
fffff803`221be56e cd29            int     29h

nt!IoUnregisterFileSystem+0x70:
fffff803`221be570 488bc3          mov     rax,rbx
fffff803`221be573 488b1b          mov     rbx,qword ptr [rbx]
fffff803`221be576 33d2            xor     edx,edx
fffff803`221be578 488bcf          mov     rcx,rdi
fffff803`221be57b ff5018          call    qword ptr [rax+18h]

nt!IoUnregisterFileSystem+0x7e:
fffff803`221be57e 483bdd          cmp     rbx,rbp
fffff803`221be581 75ed            jne     nt!IoUnregisterFileSystem+0x70 (fffff803`221be570)

nt!IoUnregisterFileSystem+0x83:
fffff803`221be583 ff052fddd8ff    inc     dword ptr [nt!IopFsRegistrationOps (fffff803`21f4c2b8)]
fffff803`221be589 488d0dd0ddd8ff  lea     rcx,[nt!IopDatabaseResource (fffff803`21f4c360)]
fffff803`221be590 e87bb3b4ff      call    nt!ExReleaseResourceLite (fffff803`21d09910)
fffff803`221be595 654c8b1c2588010000 mov   r11,qword ptr gs:[188h]
fffff803`221be59e 410fbf83e4010000 movsx   eax,word ptr [r11+1E4h]
fffff803`221be5a6 ffc0            inc     eax
fffff803`221be5a8 66418983e4010000 mov     word ptr [r11+1E4h],ax
fffff803`221be5b0 6685c0          test    ax,ax
fffff803`221be5b3 751b            jne     nt!IoUnregisterFileSystem+0xd0 (fffff803`221be5d0)

nt!IoUnregisterFileSystem+0xb5:
fffff803`221be5b5 498d8398000000  lea     rax,[r11+98h]
fffff803`221be5bc 483900          cmp     qword ptr [rax],rax
fffff803`221be5bf 740f            je      nt!IoUnregisterFileSystem+0xd0 (fffff803`221be5d0)

nt!IoUnregisterFileSystem+0xc1:
fffff803`221be5c1 664139b3e6010000 cmp     word ptr [r11+1E6h],si
fffff803`221be5c9 7505            jne     nt!IoUnregisterFileSystem+0xd0 (fffff803`221be5d0)

nt!IoUnregisterFileSystem+0xcb:
fffff803`221be5cb e830b2baff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!IoUnregisterFileSystem+0xd0:
fffff803`221be5d0 488d5704        lea     rdx,[rdi+4]
fffff803`221be5d4 b90a000000      mov     ecx,0Ah
fffff803`221be5d9 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`221be5de 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`221be5e3 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`221be5e8 4883c420        add     rsp,20h
fffff803`221be5ec 5f              pop     rdi
fffff803`221be5ed e93effb6ff      jmp     nt!IopInterlockedDecrementUlong (fffff803`21d2e530)
