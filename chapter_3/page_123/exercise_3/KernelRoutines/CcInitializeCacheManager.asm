0: kd> uf CcInitializeCacheManager
nt!CmpSetSystemValues+0x211:
fffff803`d9f4b76d 85db            test    ebx,ebx
fffff803`d9f4b76f 410f49df        cmovns  ebx,r15d
fffff803`d9f4b773 4885f6          test    rsi,rsi
fffff803`d9f4b776 740a            je      nt!CmpSetSystemValues+0x226 (fffff803`d9f4b782)

nt!CmpSetSystemValues+0x21c:
fffff803`d9f4b778 488d4c2438      lea     rcx,[rsp+38h]
fffff803`d9f4b77d e8fa43daff      call    nt!RtlFreeAnsiString (fffff803`d9cefb7c)

nt!CmpSetSystemValues+0x226:
fffff803`d9f4b782 4885ff          test    rdi,rdi
fffff803`d9f4b785 7408            je      nt!CmpSetSystemValues+0x233 (fffff803`d9f4b78f)

nt!CmpSetSystemValues+0x22b:
fffff803`d9f4b787 488bcf          mov     rcx,rdi
fffff803`d9f4b78a e8b1dbd6ff      call    nt!NtClose (fffff803`d9cb9340)

nt!CmpSetSystemValues+0x233:
fffff803`d9f4b78f 8bc3            mov     eax,ebx
fffff803`d9f4b791 488b8d90000000  mov     rcx,qword ptr [rbp+90h]
fffff803`d9f4b798 4833cc          xor     rcx,rsp
fffff803`d9f4b79b e820bd98ff      call    nt!_security_check_cookie (fffff803`d98d74c0)
fffff803`d9f4b7a0 4c8d9c24a0010000 lea     r11,[rsp+1A0h]
fffff803`d9f4b7a8 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff803`d9f4b7ac 498b7338        mov     rsi,qword ptr [r11+38h]
fffff803`d9f4b7b0 498b7b40        mov     rdi,qword ptr [r11+40h]
fffff803`d9f4b7b4 498be3          mov     rsp,r11
fffff803`d9f4b7b7 415f            pop     r15
fffff803`d9f4b7b9 415e            pop     r14
fffff803`d9f4b7bb 415d            pop     r13
fffff803`d9f4b7bd 415c            pop     r12
fffff803`d9f4b7bf 5d              pop     rbp
fffff803`d9f4b7c0 c3              ret

nt!CmpSetSystemValues+0x26c:
fffff803`d9f4b7c8 4489642434      mov     dword ptr [rsp+34h],r12d
fffff803`d9f4b7cd e9c6530400      jmp     nt! ?? ::PBOPGDP::`string'+0x2090 (fffff803`d9f90b98)

nt!CcInitializeCacheManager:
fffff803`d9f77a14 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff803`d9f77a19 48896c2418      mov     qword ptr [rsp+18h],rbp
fffff803`d9f77a1e 56              push    rsi
fffff803`d9f77a1f 57              push    rdi
fffff803`d9f77a20 4154            push    r12
fffff803`d9f77a22 4156            push    r14
fffff803`d9f77a24 4157            push    r15
fffff803`d9f77a26 4881ec80000000  sub     rsp,80h
fffff803`d9f77a2d 0fb62d9467c6ff  movzx   ebp,byte ptr [nt!MmProductType (fffff803`d9bde1c8)]
fffff803`d9f77a34 33d2            xor     edx,edx
fffff803`d9f77a36 4533f6          xor     r14d,r14d
fffff803`d9f77a39 bb80969800      mov     ebx,989680h
fffff803`d9f77a3e b900080000      mov     ecx,800h
fffff803`d9f77a43 458d7e01        lea     r15d,[r14+1]
fffff803`d9f77a47 8bc3            mov     eax,ebx
fffff803`d9f77a49 890d8171bfff    mov     dword ptr [nt!CcDirtySharedCacheMapList+0x10 (fffff803`d9b6ebd0)],ecx
fffff803`d9f77a4f 890d9b71bfff    mov     dword ptr [nt!CcLazyWriterCursor+0x10 (fffff803`d9b6ebf0)],ecx
fffff803`d9f77a55 f735b965c6ff    div     eax,dword ptr [nt!KeMaximumIncrement (fffff803`d9bde014)]
fffff803`d9f77a5b 488d0dd671bfff  lea     rcx,[nt!CcBcbTrimNotificationListLock+0x18 (fffff803`d9b6ec38)]
fffff803`d9f77a62 4533c0          xor     r8d,r8d
fffff803`d9f77a65 89050d71bfff    mov     dword ptr [nt!CcIdleDelayTick (fffff803`d9b6eb78)],eax
fffff803`d9f77a6b 488d050e71bfff  lea     rax,[nt!CcCleanSharedCacheMapWithLogHandleList (fffff803`d9b6eb80)]
fffff803`d9f77a72 418bd7          mov     edx,r15d
fffff803`d9f77a75 4889050c71bfff  mov     qword ptr [nt!CcCleanSharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eb88)],rax
fffff803`d9f77a7c 488905fd70bfff  mov     qword ptr [nt!CcCleanSharedCacheMapWithLogHandleList (fffff803`d9b6eb80)],rax
fffff803`d9f77a83 488d050671bfff  lea     rax,[nt!CcCleanSharedCacheMapList (fffff803`d9b6eb90)]
fffff803`d9f77a8a 4889050771bfff  mov     qword ptr [nt!CcCleanSharedCacheMapList+0x8 (fffff803`d9b6eb98)],rax
fffff803`d9f77a91 488905f870bfff  mov     qword ptr [nt!CcCleanSharedCacheMapList (fffff803`d9b6eb90)],rax
fffff803`d9f77a98 488d050171bfff  lea     rax,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`d9b6eba0)]
fffff803`d9f77a9f 4889050271bfff  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)],rax
fffff803`d9f77aa6 488905f370bfff  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`d9b6eba0)],rax
fffff803`d9f77aad 488d050c71bfff  lea     rax,[nt!CcDirtySharedCacheMapList (fffff803`d9b6ebc0)]
fffff803`d9f77ab4 4889052571bfff  mov     qword ptr [nt!CcLazyWriterCursor (fffff803`d9b6ebe0)],rax
fffff803`d9f77abb 4889052671bfff  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)],rax
fffff803`d9f77ac2 488d051771bfff  lea     rax,[nt!CcLazyWriterCursor (fffff803`d9b6ebe0)]
fffff803`d9f77ac9 488905f070bfff  mov     qword ptr [nt!CcDirtySharedCacheMapList (fffff803`d9b6ebc0)],rax
fffff803`d9f77ad0 488905f170bfff  mov     qword ptr [nt!CcDirtySharedCacheMapList+0x8 (fffff803`d9b6ebc8)],rax
fffff803`d9f77ad7 488d052271bfff  lea     rax,[nt!CcVolumeCacheMapList (fffff803`d9b6ec00)]
fffff803`d9f77ade 410fb7fe        movzx   edi,r14w
fffff803`d9f77ae2 44893d3771bfff  mov     dword ptr [nt!CcBcbTrimNotificationListLock (fffff803`d9b6ec20)],r15d
fffff803`d9f77ae9 4c89353871bfff  mov     qword ptr [nt!CcBcbTrimNotificationListLock+0x8 (fffff803`d9b6ec28)],r14
fffff803`d9f77af0 4889051171bfff  mov     qword ptr [nt!CcVolumeCacheMapList+0x8 (fffff803`d9b6ec08)],rax
fffff803`d9f77af7 4889050271bfff  mov     qword ptr [nt!CcVolumeCacheMapList (fffff803`d9b6ec00)],rax
fffff803`d9f77afe 4489352b71bfff  mov     dword ptr [nt!CcBcbTrimNotificationListLock+0x10 (fffff803`d9b6ec30)],r14d
fffff803`d9f77b05 e886c39bff      call    nt!KeInitializeEvent (fffff803`d9933e90)
fffff803`d9f77b0a 488d055f71bfff  lea     rax,[nt!CcIdleWorkerThreadList (fffff803`d9b6ec70)]
fffff803`d9f77b11 4c8d1d4871bfff  lea     r11,[nt!CcBcbTrimNotificationList (fffff803`d9b6ec60)]
fffff803`d9f77b18 4889055971bfff  mov     qword ptr [nt!CcIdleWorkerThreadList+0x8 (fffff803`d9b6ec78)],rax
fffff803`d9f77b1f 4889054a71bfff  mov     qword ptr [nt!CcIdleWorkerThreadList (fffff803`d9b6ec70)],rax
fffff803`d9f77b26 488d055371bfff  lea     rax,[nt!CcFastTeardownWorkQueue (fffff803`d9b6ec80)]
fffff803`d9f77b2d 4889055471bfff  mov     qword ptr [nt!CcFastTeardownWorkQueue+0x8 (fffff803`d9b6ec88)],rax
fffff803`d9f77b34 4889054571bfff  mov     qword ptr [nt!CcFastTeardownWorkQueue (fffff803`d9b6ec80)],rax
fffff803`d9f77b3b 488d054e71bfff  lea     rax,[nt!CcExpressWorkQueue (fffff803`d9b6ec90)]
fffff803`d9f77b42 4889054f71bfff  mov     qword ptr [nt!CcExpressWorkQueue+0x8 (fffff803`d9b6ec98)],rax
fffff803`d9f77b49 4889054071bfff  mov     qword ptr [nt!CcExpressWorkQueue (fffff803`d9b6ec90)],rax
fffff803`d9f77b50 488d054971bfff  lea     rax,[nt!CcRegularWorkQueue (fffff803`d9b6eca0)]
fffff803`d9f77b57 4889054a71bfff  mov     qword ptr [nt!CcRegularWorkQueue+0x8 (fffff803`d9b6eca8)],rax
fffff803`d9f77b5e 4889053b71bfff  mov     qword ptr [nt!CcRegularWorkQueue (fffff803`d9b6eca0)],rax
fffff803`d9f77b65 488d054471bfff  lea     rax,[nt!CcPostTickWorkQueue (fffff803`d9b6ecb0)]
fffff803`d9f77b6c 4889054571bfff  mov     qword ptr [nt!CcPostTickWorkQueue+0x8 (fffff803`d9b6ecb8)],rax
fffff803`d9f77b73 4889053671bfff  mov     qword ptr [nt!CcPostTickWorkQueue (fffff803`d9b6ecb0)],rax
fffff803`d9f77b7a 488d05ff72bfff  lea     rax,[nt!CcIdleExtraWriteBehindThreadList (fffff803`d9b6ee80)]
fffff803`d9f77b81 4889050073bfff  mov     qword ptr [nt!CcIdleExtraWriteBehindThreadList+0x8 (fffff803`d9b6ee88)],rax
fffff803`d9f77b88 488905f172bfff  mov     qword ptr [nt!CcIdleExtraWriteBehindThreadList (fffff803`d9b6ee80)],rax
fffff803`d9f77b8f 33c0            xor     eax,eax
fffff803`d9f77b91 458d4620        lea     r8d,[r14+20h]
fffff803`d9f77b95 488d0d2471bfff  lea     rcx,[nt!CcGlobalDirtyPageThresholds (fffff803`d9b6ecc0)]
fffff803`d9f77b9c 33d2            xor     edx,edx
fffff803`d9f77b9e 488905bb6fbfff  mov     qword ptr [nt!CcGlobalDirtyPageStatistics (fffff803`d9b6eb60)],rax
fffff803`d9f77ba5 488905bc6fbfff  mov     qword ptr [nt!CcGlobalDirtyPageStatistics+0x8 (fffff803`d9b6eb68)],rax
fffff803`d9f77bac 488905bd6fbfff  mov     qword ptr [nt!CcGlobalDirtyPageStatistics+0x10 (fffff803`d9b6eb70)],rax
fffff803`d9f77bb3 4c891dae70bfff  mov     qword ptr [nt!CcBcbTrimNotificationList+0x8 (fffff803`d9b6ec68)],r11
fffff803`d9f77bba 4c891d9f70bfff  mov     qword ptr [nt!CcBcbTrimNotificationList (fffff803`d9b6ec60)],r11
fffff803`d9f77bc1 e8fade98ff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9f77bc6 8b153401b9ff    mov     edx,dword ptr [nt!CcNumberWorkerThreads (fffff803`d9b07d00)]
fffff803`d9f77bcc 448b1d1966c6ff  mov     r11d,dword ptr [nt!MmSystemSize (fffff803`d9bde1ec)]
fffff803`d9f77bd3 b800010000      mov     eax,100h
fffff803`d9f77bd8 44891d0171bfff  mov     dword ptr [nt!CcCapturedSystemSize (fffff803`d9b6ece0)],r11d
fffff803`d9f77bdf 85d2            test    edx,edx
fffff803`d9f77be1 0f859a8e0100    jne     nt! ?? ::PBOPGDP::`string'+0x1f7d (fffff803`d9f90a81)

nt!CcInitializeCacheManager+0x1d3:
fffff803`d9f77be7 8b1553feb9ff    mov     edx,dword ptr [nt!ExCriticalWorkerThreads (fffff803`d9b17a40)]
fffff803`d9f77bed 85ed            test    ebp,ebp
fffff803`d9f77bef 0f85338e0100    jne     nt! ?? ::PBOPGDP::`string'+0x1f24 (fffff803`d9f90a28)

nt!CcInitializeCacheManager+0x1e1:
fffff803`d9f77bf5 488b0d6c64c6ff  mov     rcx,qword ptr [nt!MmNumberOfPhysicalPages (fffff803`d9bde068)]
fffff803`d9f77bfc 8905962bb8ff    mov     dword ptr [nt!CcMaxLazyWritePages (fffff803`d9afa798)],eax
fffff803`d9f77c02 458bc7          mov     r8d,r15d
fffff803`d9f77c05 48c1e903        shr     rcx,3
fffff803`d9f77c09 44893decfeb8ff  mov     dword ptr [nt!CcMaxExtraWriteBehindThreads (fffff803`d9b07afc)],r15d
fffff803`d9f77c10 891de2feb8ff    mov     dword ptr [nt!CcExtraWBThreadDelay (fffff803`d9b07af8)],ebx
fffff803`d9f77c16 48890db370bfff  mov     qword ptr [nt!CcGlobalDirtyPageThresholds+0x10 (fffff803`d9b6ecd0)],rcx

nt!CcInitializeCacheManager+0x209:
fffff803`d9f77c1d 48890d9c70bfff  mov     qword ptr [nt!CcGlobalDirtyPageThresholds (fffff803`d9b6ecc0)],rcx
fffff803`d9f77c24 48890d9d70bfff  mov     qword ptr [nt!CcGlobalDirtyPageThresholds+0x8 (fffff803`d9b6ecc8)],rcx
fffff803`d9f77c2b 4585db          test    r11d,r11d
fffff803`d9f77c2e 0f8477040000    je      nt!CcInitializeCacheManager+0x697 (fffff803`d9f780ab)

nt!CcInitializeCacheManager+0x220:
fffff803`d9f77c34 41ffcb          dec     r11d
fffff803`d9f77c37 0f84278e0100    je      nt! ?? ::PBOPGDP::`string'+0x1f60 (fffff803`d9f90a64)

nt!CcInitializeCacheManager+0x229:
fffff803`d9f77c3d 41ffcb          dec     r11d
fffff803`d9f77c40 0f855d040000    jne     nt!CcInitializeCacheManager+0x68f (fffff803`d9f780a3)

nt!CcInitializeCacheManager+0x232:
fffff803`d9f77c46 ffca            dec     edx
fffff803`d9f77c48 c7059270bfff04000000 mov dword ptr [nt!CcAggressiveZeroThreshold (fffff803`d9b6ece4)],4

nt!CcInitializeCacheManager+0x23e:
fffff803`d9f77c52 488bc1          mov     rax,rcx
fffff803`d9f77c55 48d1e9          shr     rcx,1
fffff803`d9f77c58 8915a200b9ff    mov     dword ptr [nt!CcNumberWorkerThreads (fffff803`d9b07d00)],edx
fffff803`d9f77c5e 48c1e802        shr     rax,2
fffff803`d9f77c62 4803c1          add     rax,rcx
fffff803`d9f77c65 b9ffffffff      mov     ecx,0FFFFFFFFh
fffff803`d9f77c6a 483bc1          cmp     rax,rcx
fffff803`d9f77c6d 480f47c1        cmova   rax,rcx
fffff803`d9f77c71 89056170bfff    mov     dword ptr [nt!CcGlobalDirtyPageThresholds+0x18 (fffff803`d9b6ecd8)],eax

nt!CcInitializeCacheManager+0x263:
fffff803`d9f77c77 4489356a70bfff  mov     dword ptr [nt!CcAggressiveZeroCount (fffff803`d9b6ece8)],r14d
fffff803`d9f77c7e 418bde          mov     ebx,r14d
fffff803`d9f77c81 be43635771      mov     esi,71576343h
fffff803`d9f77c86 41bc00020000    mov     r12d,200h
fffff803`d9f77c8c 85d2            test    edx,edx
fffff803`d9f77c8e 7469            je      nt!CcInitializeCacheManager+0x2e5 (fffff803`d9f77cf9)

nt!CcInitializeCacheManager+0x27c:
fffff803`d9f77c90 448bc6          mov     r8d,esi
fffff803`d9f77c93 ba28000000      mov     edx,28h
fffff803`d9f77c98 418bcc          mov     ecx,r12d
fffff803`d9f77c9b e870e3b7ff      call    nt!ExAllocatePoolWithTag (fffff803`d9af6010)
fffff803`d9f77ca0 4885c0          test    rax,rax
fffff803`d9f77ca3 0f84eb8d0100    je      nt! ?? ::PBOPGDP::`string'+0x1f90 (fffff803`d9f90a94)

nt!CcInitializeCacheManager+0x295:
fffff803`d9f77ca9 4c8930          mov     qword ptr [rax],r14
fffff803`d9f77cac 488d0d3de798ff  lea     rcx,[nt!CcWorkerThread (fffff803`d99063f0)]
fffff803`d9f77cb3 48894018        mov     qword ptr [rax+18h],rax
fffff803`d9f77cb7 44897820        mov     dword ptr [rax+20h],r15d
fffff803`d9f77cbb 48894810        mov     qword ptr [rax+10h],rcx
fffff803`d9f77cbf 488b0db26fbfff  mov     rcx,qword ptr [nt!CcIdleWorkerThreadList+0x8 (fffff803`d9b6ec78)]
fffff803`d9f77cc6 488d15a36fbfff  lea     rdx,[nt!CcIdleWorkerThreadList (fffff803`d9b6ec70)]
fffff803`d9f77ccd 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9f77cd1 488910          mov     qword ptr [rax],rdx
fffff803`d9f77cd4 483911          cmp     qword ptr [rcx],rdx
fffff803`d9f77cd7 0f85b08d0100    jne     nt! ?? ::PBOPGDP::`string'+0x1f89 (fffff803`d9f90a8d)

nt!CcInitializeCacheManager+0x2c9:
fffff803`d9f77cdd 4103df          add     ebx,r15d
fffff803`d9f77ce0 488901          mov     qword ptr [rcx],rax
fffff803`d9f77ce3 4889058e6fbfff  mov     qword ptr [nt!CcIdleWorkerThreadList+0x8 (fffff803`d9b6ec78)],rax
fffff803`d9f77cea 3b1d1000b9ff    cmp     ebx,dword ptr [nt!CcNumberWorkerThreads (fffff803`d9b07d00)]
fffff803`d9f77cf0 729e            jb      nt!CcInitializeCacheManager+0x27c (fffff803`d9f77c90)

nt!CcInitializeCacheManager+0x2de:
fffff803`d9f77cf2 448b0503feb8ff  mov     r8d,dword ptr [nt!CcMaxExtraWriteBehindThreads (fffff803`d9b07afc)]

nt!CcInitializeCacheManager+0x2e5:
fffff803`d9f77cf9 418bde          mov     ebx,r14d
fffff803`d9f77cfc 4585c0          test    r8d,r8d
fffff803`d9f77cff 7469            je      nt!CcInitializeCacheManager+0x356 (fffff803`d9f77d6a)

nt!CcInitializeCacheManager+0x2ed:
fffff803`d9f77d01 448bc6          mov     r8d,esi
fffff803`d9f77d04 ba28000000      mov     edx,28h
fffff803`d9f77d09 418bcc          mov     ecx,r12d
fffff803`d9f77d0c e8ffe2b7ff      call    nt!ExAllocatePoolWithTag (fffff803`d9af6010)
fffff803`d9f77d11 4885c0          test    rax,rax
fffff803`d9f77d14 0f849b8d0100    je      nt! ?? ::PBOPGDP::`string'+0x1fb1 (fffff803`d9f90ab5)

nt!CcInitializeCacheManager+0x306:
fffff803`d9f77d1a 4c8930          mov     qword ptr [rax],r14
fffff803`d9f77d1d 488d0dcce698ff  lea     rcx,[nt!CcWorkerThread (fffff803`d99063f0)]
fffff803`d9f77d24 48894018        mov     qword ptr [rax+18h],rax
fffff803`d9f77d28 c7402002000000  mov     dword ptr [rax+20h],2
fffff803`d9f77d2f 48894810        mov     qword ptr [rax+10h],rcx
fffff803`d9f77d33 488b0d4e71bfff  mov     rcx,qword ptr [nt!CcIdleExtraWriteBehindThreadList+0x8 (fffff803`d9b6ee88)]
fffff803`d9f77d3a 488d153f71bfff  lea     rdx,[nt!CcIdleExtraWriteBehindThreadList (fffff803`d9b6ee80)]
fffff803`d9f77d41 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9f77d45 488910          mov     qword ptr [rax],rdx
fffff803`d9f77d48 483911          cmp     qword ptr [rcx],rdx
fffff803`d9f77d4b 0f855d8d0100    jne     nt! ?? ::PBOPGDP::`string'+0x1faa (fffff803`d9f90aae)

nt!CcInitializeCacheManager+0x33d:
fffff803`d9f77d51 448b05a4fdb8ff  mov     r8d,dword ptr [nt!CcMaxExtraWriteBehindThreads (fffff803`d9b07afc)]
fffff803`d9f77d58 4103df          add     ebx,r15d
fffff803`d9f77d5b 488901          mov     qword ptr [rcx],rax
fffff803`d9f77d5e 4889052371bfff  mov     qword ptr [nt!CcIdleExtraWriteBehindThreadList+0x8 (fffff803`d9b6ee88)],rax
fffff803`d9f77d65 413bd8          cmp     ebx,r8d
fffff803`d9f77d68 7297            jb      nt!CcInitializeCacheManager+0x2ed (fffff803`d9f77d01)

nt!CcInitializeCacheManager+0x356:
fffff803`d9f77d6a 418d5001        lea     edx,[r8+1]
fffff803`d9f77d6e 418bcc          mov     ecx,r12d
fffff803`d9f77d71 41b843635470    mov     r8d,70546343h
fffff803`d9f77d77 48c1e203        shl     rdx,3
fffff803`d9f77d7b e890e2b7ff      call    nt!ExAllocatePoolWithTag (fffff803`d9af6010)
fffff803`d9f77d80 488bc8          mov     rcx,rax
fffff803`d9f77d83 488905666fbfff  mov     qword ptr [nt!CcThroughputStats (fffff803`d9b6ecf0)],rax
fffff803`d9f77d8a 4885c0          test    rax,rax
fffff803`d9f77d8d 0f843c8d0100    je      nt! ?? ::PBOPGDP::`string'+0x1fcb (fffff803`d9f90acf)

nt!CcInitializeCacheManager+0x37f:
fffff803`d9f77d93 448b0562fdb8ff  mov     r8d,dword ptr [nt!CcMaxExtraWriteBehindThreads (fffff803`d9b07afc)]
fffff803`d9f77d9a 33d2            xor     edx,edx
fffff803`d9f77d9c 41ffc0          inc     r8d
fffff803`d9f77d9f 49c1e003        shl     r8,3
fffff803`d9f77da3 e818dd98ff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9f77da8 488d0d516fbfff  lea     rcx,[nt!LazyWriter (fffff803`d9b6ed00)]
fffff803`d9f77daf 33d2            xor     edx,edx
fffff803`d9f77db1 41b888000000    mov     r8d,88h
fffff803`d9f77db7 e804dd98ff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9f77dbc 488d0ddd6fbfff  lea     rcx,[nt!CcLowMemoryEvent (fffff803`d9b6eda0)]
fffff803`d9f77dc3 4533c0          xor     r8d,r8d
fffff803`d9f77dc6 418bd7          mov     edx,r15d
fffff803`d9f77dc9 e8c2c09bff      call    nt!KeInitializeEvent (fffff803`d9933e90)
fffff803`d9f77dce 488d0deb6fbfff  lea     rcx,[nt!CcPowerEvent (fffff803`d9b6edc0)]
fffff803`d9f77dd5 4533c0          xor     r8d,r8d
fffff803`d9f77dd8 418bd7          mov     edx,r15d
fffff803`d9f77ddb e8b0c09bff      call    nt!KeInitializeEvent (fffff803`d9933e90)
fffff803`d9f77de0 488d0df96fbfff  lea     rcx,[nt!CcPeriodicEvent (fffff803`d9b6ede0)]
fffff803`d9f77de7 4533c0          xor     r8d,r8d
fffff803`d9f77dea 418bd7          mov     edx,r15d
fffff803`d9f77ded e89ec09bff      call    nt!KeInitializeEvent (fffff803`d9933e90)
fffff803`d9f77df2 488d0d0770bfff  lea     rcx,[nt!CcWaitingForTeardownEvent (fffff803`d9b6ee00)]
fffff803`d9f77df9 4533c0          xor     r8d,r8d
fffff803`d9f77dfc 418bd7          mov     edx,r15d
fffff803`d9f77dff e88cc09bff      call    nt!KeInitializeEvent (fffff803`d9933e90)
fffff803`d9f77e04 488d0d1570bfff  lea     rcx,[nt!CcCoalescingFlushEvent (fffff803`d9b6ee20)]
fffff803`d9f77e0b 4533c0          xor     r8d,r8d
fffff803`d9f77e0e 418bd7          mov     edx,r15d
fffff803`d9f77e11 e87ac09bff      call    nt!KeInitializeEvent (fffff803`d9933e90)
fffff803`d9f77e16 e885030000      call    nt!CcInitializeBcbProfiler (fffff803`d9f781a0)
fffff803`d9f77e1b ba08000000      mov     edx,8
fffff803`d9f77e20 41b844706358    mov     r8d,58637044h
fffff803`d9f77e26 418bcc          mov     ecx,r12d
fffff803`d9f77e29 e8e2e1b7ff      call    nt!ExAllocatePoolWithTag (fffff803`d9af6010)
fffff803`d9f77e2e 488bf0          mov     rsi,rax
fffff803`d9f77e31 4885c0          test    rax,rax
fffff803`d9f77e34 0f8478020000    je      nt!CcInitializeCacheManager+0x69e (fffff803`d9f780b2)

nt!CcInitializeCacheManager+0x426:
fffff803`d9f77e3a 33d2            xor     edx,edx
fffff803`d9f77e3c 488bc8          mov     rcx,rax
fffff803`d9f77e3f e81cf3b7ff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)
fffff803`d9f77e44 33c9            xor     ecx,ecx
fffff803`d9f77e46 e87df69eff      call    nt!ExGenRandom (fffff803`d99674c8)
fffff803`d9f77e4b 4c8d442440      lea     r8,[rsp+40h]
fffff803`d9f77e50 33d2            xor     edx,edx
fffff803`d9f77e52 b908000080      mov     ecx,80000008h
fffff803`d9f77e57 8bd8            mov     ebx,eax
fffff803`d9f77e59 e8a22196ff      call    nt!KiCpuId (fffff803`d98da000)
fffff803`d9f77e5e 488b4c2440      mov     rcx,qword ptr [rsp+40h]
fffff803`d9f77e63 48c1e908        shr     rcx,8
fffff803`d9f77e67 48d3e3          shl     rbx,cl
fffff803`d9f77e6a 4833de          xor     rbx,rsi

nt!CcInitializeCacheManager+0x459:
fffff803`d9f77e6d 488d159cfea0ff  lea     rdx,[nt!CcScanDpc (fffff803`d9987d10)]
fffff803`d9f77e74 488d0d856ebfff  lea     rcx,[nt!LazyWriter (fffff803`d9b6ed00)]
fffff803`d9f77e7b 4c8bc3          mov     r8,rbx
fffff803`d9f77e7e e89d849dff      call    nt!KeInitializeDpc (fffff803`d9950320)
fffff803`d9f77e83 488d0db66ebfff  lea     rcx,[nt!LazyWriter+0x40 (fffff803`d9b6ed40)]
fffff803`d9f77e8a 33d2            xor     edx,edx
fffff803`d9f77e8c e81f479cff      call    nt!KeInitializeTimerEx (fffff803`d993c5b0)
fffff803`d9f77e91 448b1d486ebfff  mov     r11d,dword ptr [nt!CcCapturedSystemSize (fffff803`d9b6ece0)]
fffff803`d9f77e98 b920000000      mov     ecx,20h
fffff803`d9f77e9d 4585db          test    r11d,r11d
fffff803`d9f77ea0 0f8428020000    je      nt!CcInitializeCacheManager+0x6ba (fffff803`d9f780ce)

nt!CcInitializeCacheManager+0x492:
fffff803`d9f77ea6 41ffcb          dec     r11d
fffff803`d9f77ea9 0f8415020000    je      nt!CcInitializeCacheManager+0x6b0 (fffff803`d9f780c4)

nt!CcInitializeCacheManager+0x49b:
fffff803`d9f77eaf 41ffcb          dec     r11d
fffff803`d9f77eb2 750b            jne     nt!CcInitializeCacheManager+0x4ab (fffff803`d9f77ebf)

nt!CcInitializeCacheManager+0x4a0:
fffff803`d9f77eb4 8d7960          lea     edi,[rcx+60h]
fffff803`d9f77eb7 85ed            test    ebp,ebp
fffff803`d9f77eb9 0f85fb010000    jne     nt!CcInitializeCacheManager+0x6a6 (fffff803`d9f780ba)

nt!CcInitializeCacheManager+0x4ab:
fffff803`d9f77ebf 488d052afcb9ff  lea     rax,[nt!ExSystemLookasideListHead (fffff803`d9b17af0)]
fffff803`d9f77ec6 448bc1          mov     r8d,ecx
fffff803`d9f77ec9 488d0db0fdb8ff  lea     rcx,[nt!CcTwilightLookasideList (fffff803`d9b07c80)]
fffff803`d9f77ed0 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9f77ed5 41b94363576b    mov     r9d,6B576343h
fffff803`d9f77edb 418bd4          mov     edx,r12d
fffff803`d9f77ede 66897c2420      mov     word ptr [rsp+20h],di
fffff803`d9f77ee3 e80449c7ff      call    nt!ExInitializeSystemLookasideList (fffff803`d9bec7ec)
fffff803`d9f77ee8 8b051e61c6ff    mov     eax,dword ptr [nt!KeNumberProcessors (fffff803`d9bde00c)]
fffff803`d9f77eee 418bfe          mov     edi,r14d
fffff803`d9f77ef1 85c0            test    eax,eax
fffff803`d9f77ef3 7420            je      nt!CcInitializeCacheManager+0x501 (fffff803`d9f77f15)

nt!CcInitializeCacheManager+0x4e1:
fffff803`d9f77ef5 488d1d846dc6ff  lea     rbx,[nt!KiProcessorBlock (fffff803`d9bdec80)]

nt!CcInitializeCacheManager+0x4e8:
fffff803`d9f77efc 488b0b          mov     rcx,qword ptr [rbx]
fffff803`d9f77eff e89484dfff      call    nt!CcInitializeProcessor (fffff803`d9d70398)
fffff803`d9f77f04 8b050261c6ff    mov     eax,dword ptr [nt!KeNumberProcessors (fffff803`d9bde00c)]
fffff803`d9f77f0a 4103ff          add     edi,r15d
fffff803`d9f77f0d 4883c308        add     rbx,8
fffff803`d9f77f11 3bf8            cmp     edi,eax
fffff803`d9f77f13 72e7            jb      nt!CcInitializeCacheManager+0x4e8 (fffff803`d9f77efc)

nt!CcInitializeCacheManager+0x501:
fffff803`d9f77f15 664489742430    mov     word ptr [rsp+30h],r14w
fffff803`d9f77f1b 488d0ddefcb8ff  lea     rcx,[nt!CcBitmapLookasideList (fffff803`d9b07c00)]
fffff803`d9f77f22 458bcc          mov     r9d,r12d
fffff803`d9f77f25 4533c0          xor     r8d,r8d
fffff803`d9f77f28 33d2            xor     edx,edx
fffff803`d9f77f2a c74424284363426d mov     dword ptr [rsp+28h],6D426343h
fffff803`d9f77f32 448935ff6ebfff  mov     dword ptr [nt!CcDbgNumberOfFailedWorkQueueEntryAllocations (fffff803`d9b6ee38)],r14d
fffff803`d9f77f39 48c744242000040000 mov   qword ptr [rsp+20h],400h
fffff803`d9f77f42 e8298192ff      call    nt!ExInitializeNPagedLookasideList (fffff803`d98a0070)
fffff803`d9f77f47 664489742430    mov     word ptr [rsp+30h],r14w
fffff803`d9f77f4d bb4363566c      mov     ebx,6C566343h
fffff803`d9f77f52 488d0d27fcb8ff  lea     rcx,[nt!CcVacbLevelLookasideList (fffff803`d9b07b80)]
fffff803`d9f77f59 458bcc          mov     r9d,r12d
fffff803`d9f77f5c 4533c0          xor     r8d,r8d
fffff803`d9f77f5f 33d2            xor     edx,edx
fffff803`d9f77f61 895c2428        mov     dword ptr [rsp+28h],ebx
fffff803`d9f77f65 448935d06ebfff  mov     dword ptr [nt!CcDbgNumberOfFailedBitmapAllocations (fffff803`d9b6ee3c)],r14d
fffff803`d9f77f6c 48c744242008040000 mov   qword ptr [rsp+20h],408h
fffff803`d9f77f75 e8f68092ff      call    nt!ExInitializeNPagedLookasideList (fffff803`d98a0070)
fffff803`d9f77f7a 664489742430    mov     word ptr [rsp+30h],r14w
fffff803`d9f77f80 488d0d79fbb8ff  lea     rcx,[nt!CcVacbLevelWithBcbListHeadsLookasideList (fffff803`d9b07b00)]
fffff803`d9f77f87 458bcc          mov     r9d,r12d
fffff803`d9f77f8a 4533c0          xor     r8d,r8d
fffff803`d9f77f8d 33d2            xor     edx,edx
fffff803`d9f77f8f 895c2428        mov     dword ptr [rsp+28h],ebx
fffff803`d9f77f93 48c744242008080000 mov   qword ptr [rsp+20h],808h
fffff803`d9f77f9c e8cf8092ff      call    nt!ExInitializeNPagedLookasideList (fffff803`d98a0070)
fffff803`d9f77fa1 488d05986ebfff  lea     rax,[nt!CcDeferredWrites (fffff803`d9b6ee40)]
fffff803`d9f77fa8 4c893511f5c5ff  mov     qword ptr [nt!CcDeferredWriteSpinLock (fffff803`d9bd74c0)],r14
fffff803`d9f77faf 4c89359a6ebfff  mov     qword ptr [nt!CcExternalCacheListLock (fffff803`d9b6ee50)],r14
fffff803`d9f77fb6 4889058b6ebfff  mov     qword ptr [nt!CcDeferredWrites+0x8 (fffff803`d9b6ee48)],rax
fffff803`d9f77fbd 4889057c6ebfff  mov     qword ptr [nt!CcDeferredWrites (fffff803`d9b6ee40)],rax
fffff803`d9f77fc4 488d05956ebfff  lea     rax,[nt!CcExternalCacheList (fffff803`d9b6ee60)]
fffff803`d9f77fcb 488905966ebfff  mov     qword ptr [nt!CcExternalCacheList+0x8 (fffff803`d9b6ee68)],rax
fffff803`d9f77fd2 488905876ebfff  mov     qword ptr [nt!CcExternalCacheList (fffff803`d9b6ee60)],rax
fffff803`d9f77fd9 e802010000      call    nt!CcInitializeVacbs (fffff803`d9f780e0)
fffff803`d9f77fde 488d0587c8a0ff  lea     rax,[nt!CcQueueLazyWriteScanThread (fffff803`d998486c)]
fffff803`d9f77fe5 4c89742430      mov     qword ptr [rsp+30h],r14
fffff803`d9f77fea 4c8d442450      lea     r8,[rsp+50h]
fffff803`d9f77fef 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9f77ff4 488d8c24b0000000 lea     rcx,[rsp+0B0h]
fffff803`d9f77ffc 4533c9          xor     r9d,r9d
fffff803`d9f77fff baffff1f00      mov     edx,1FFFFFh
fffff803`d9f78004 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`d9f78009 c744245030000000 mov     dword ptr [rsp+50h],30h
fffff803`d9f78011 4c89742458      mov     qword ptr [rsp+58h],r14
fffff803`d9f78016 4489742468      mov     dword ptr [rsp+68h],r14d
fffff803`d9f7801b 4c89742460      mov     qword ptr [rsp+60h],r14
fffff803`d9f78020 4c89742470      mov     qword ptr [rsp+70h],r14
fffff803`d9f78025 4c89742478      mov     qword ptr [rsp+78h],r14
fffff803`d9f7802a e84168d0ff      call    nt!PsCreateSystemThread (fffff803`d9c7e870)
fffff803`d9f7802f 85c0            test    eax,eax
fffff803`d9f78031 0f88b28a0100    js      nt! ?? ::PBOPGDP::`string'+0x1fe5 (fffff803`d9f90ae9)

nt!CcInitializeCacheManager+0x623:
fffff803`d9f78037 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff803`d9f7803f e89c9196ff      call    nt!ZwClose (fffff803`d98e11e0)
fffff803`d9f78044 4533db          xor     r11d,r11d
fffff803`d9f78047 4c8d056afab8ff  lea     r8,[nt!CcCoalescingRegistration (fffff803`d9b07ab8)]
fffff803`d9f7804e 488d0d5303a7ff  lea     rcx,[nt!CcCoalescingCallBack (fffff803`d99e83a8)]
fffff803`d9f78055 4533c9          xor     r9d,r9d
fffff803`d9f78058 418ad7          mov     dl,r15b
fffff803`d9f7805b 4c891d5e6abfff  mov     qword ptr [nt!CcTestControlData (fffff803`d9b6eac0)],r11
fffff803`d9f78062 4c891d5f6abfff  mov     qword ptr [nt!CcTestControlData+0x8 (fffff803`d9b6eac8)],r11
fffff803`d9f78069 4c891d606abfff  mov     qword ptr [nt!CcTestControlData+0x10 (fffff803`d9b6ead0)],r11
fffff803`d9f78070 e8abb7e0ff      call    nt!PoRegisterCoalescingCallback (fffff803`d9d83820)
fffff803`d9f78075 85c0            test    eax,eax
fffff803`d9f78077 0f88738a0100    js      nt! ?? ::PBOPGDP::`string'+0x1fec (fffff803`d9f90af0)

nt!CcInitializeCacheManager+0x669:
fffff803`d9f7807d 44893d70fab8ff  mov     dword ptr [nt!CcInitializationComplete (fffff803`d9b07af4)],r15d
fffff803`d9f78084 418ac7          mov     al,r15b

nt!CcInitializeCacheManager+0x673:
fffff803`d9f78087 4c8d9c2480000000 lea     r11,[rsp+80h]
fffff803`d9f7808f 498b5b38        mov     rbx,qword ptr [r11+38h]
fffff803`d9f78093 498b6b40        mov     rbp,qword ptr [r11+40h]
fffff803`d9f78097 498be3          mov     rsp,r11
fffff803`d9f7809a 415f            pop     r15
fffff803`d9f7809c 415e            pop     r14
fffff803`d9f7809e 415c            pop     r12
fffff803`d9f780a0 5f              pop     rdi
fffff803`d9f780a1 5e              pop     rsi
fffff803`d9f780a2 c3              ret

nt!CcInitializeCacheManager+0x68f:
fffff803`d9f780a3 418bd7          mov     edx,r15d
fffff803`d9f780a6 e9ca890100      jmp     nt! ?? ::PBOPGDP::`string'+0x1f71 (fffff803`d9f90a75)

nt!CcInitializeCacheManager+0x697:
fffff803`d9f780ab ffca            dec     edx
fffff803`d9f780ad e9c3890100      jmp     nt! ?? ::PBOPGDP::`string'+0x1f71 (fffff803`d9f90a75)

nt!CcInitializeCacheManager+0x69e:
fffff803`d9f780b2 498bde          mov     rbx,r14
fffff803`d9f780b5 e9b3fdffff      jmp     nt!CcInitializeCacheManager+0x459 (fffff803`d9f77e6d)

nt!CcInitializeCacheManager+0x6a6:
fffff803`d9f780ba bf00010000      mov     edi,100h
fffff803`d9f780bf e9fbfdffff      jmp     nt!CcInitializeCacheManager+0x4ab (fffff803`d9f77ebf)

nt!CcInitializeCacheManager+0x6b0:
fffff803`d9f780c4 bf40000000      mov     edi,40h
fffff803`d9f780c9 e9f1fdffff      jmp     nt!CcInitializeCacheManager+0x4ab (fffff803`d9f77ebf)

nt!CcInitializeCacheManager+0x6ba:
fffff803`d9f780ce 0fb7f9          movzx   edi,cx
fffff803`d9f780d1 e9e9fdffff      jmp     nt!CcInitializeCacheManager+0x4ab (fffff803`d9f77ebf)

nt! ?? ::PBOPGDP::`string'+0x1f24:
fffff803`d9f90a28 488b0539d6c4ff  mov     rax,qword ptr [nt!MmNumberOfPhysicalPages (fffff803`d9bde068)]
fffff803`d9f90a2f 448d42ff        lea     r8d,[rdx-1]
fffff803`d9f90a33 c7055b9db6ff00200000 mov dword ptr [nt!CcMaxLazyWritePages (fffff803`d9afa798)],2000h
fffff803`d9f90a3d 488bc8          mov     rcx,rax
fffff803`d9f90a40 448905b570b7ff  mov     dword ptr [nt!CcMaxExtraWriteBehindThreads (fffff803`d9b07afc)],r8d
fffff803`d9f90a47 c705a770b7ff404b4c00 mov dword ptr [nt!CcExtraWBThreadDelay (fffff803`d9b07af8)],4C4B40h
fffff803`d9f90a51 48d1e9          shr     rcx,1
fffff803`d9f90a54 48c1e803        shr     rax,3
fffff803`d9f90a58 48890571e2bdff  mov     qword ptr [nt!CcGlobalDirtyPageThresholds+0x10 (fffff803`d9b6ecd0)],rax
fffff803`d9f90a5f e9b971feff      jmp     nt!CcInitializeCacheManager+0x209 (fffff803`d9f77c1d)

nt! ?? ::PBOPGDP::`string'+0x1f60:
fffff803`d9f90a64 ffca            dec     edx
fffff803`d9f90a66 c70574e2bdff02000000 mov dword ptr [nt!CcAggressiveZeroThreshold (fffff803`d9b6ece4)],2
fffff803`d9f90a70 e9dd71feff      jmp     nt!CcInitializeCacheManager+0x23e (fffff803`d9f77c52)

nt! ?? ::PBOPGDP::`string'+0x1f71:
fffff803`d9f90a75 44893d68e2bdff  mov     dword ptr [nt!CcAggressiveZeroThreshold (fffff803`d9b6ece4)],r15d
fffff803`d9f90a7c e9d171feff      jmp     nt!CcInitializeCacheManager+0x23e (fffff803`d9f77c52)

nt! ?? ::PBOPGDP::`string'+0x1f7d:
fffff803`d9f90a81 448b057470b7ff  mov     r8d,dword ptr [nt!CcMaxExtraWriteBehindThreads (fffff803`d9b07afc)]
fffff803`d9f90a88 e9ea71feff      jmp     nt!CcInitializeCacheManager+0x263 (fffff803`d9f77c77)

nt! ?? ::PBOPGDP::`string'+0x1f89:
fffff803`d9f90a8d b903000000      mov     ecx,3
fffff803`d9f90a92 cd29            int     29h

nt! ?? ::PBOPGDP::`string'+0x1f90:
fffff803`d9f90a94 4533c9          xor     r9d,r9d
fffff803`d9f90a97 4533c0          xor     r8d,r8d
fffff803`d9f90a9a ba9f010400      mov     edx,4019Fh
fffff803`d9f90a9f 418d4934        lea     ecx,[r9+34h]
fffff803`d9f90aa3 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`d9f90aa8 e893f994ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9f90aad cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1faa:
fffff803`d9f90aae b903000000      mov     ecx,3
fffff803`d9f90ab3 cd29            int     29h

nt! ?? ::PBOPGDP::`string'+0x1fb1:
fffff803`d9f90ab5 4533c9          xor     r9d,r9d
fffff803`d9f90ab8 4533c0          xor     r8d,r8d
fffff803`d9f90abb bab8010400      mov     edx,401B8h
fffff803`d9f90ac0 418d4934        lea     ecx,[r9+34h]
fffff803`d9f90ac4 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`d9f90ac9 e872f994ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9f90ace cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1fcb:
fffff803`d9f90acf 4533c9          xor     r9d,r9d
fffff803`d9f90ad2 4533c0          xor     r8d,r8d
fffff803`d9f90ad5 bad0010400      mov     edx,401D0h
fffff803`d9f90ada 418d4934        lea     ecx,[r9+34h]
fffff803`d9f90ade 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`d9f90ae3 e858f994ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9f90ae8 cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1fe5:
fffff803`d9f90ae9 32c0            xor     al,al
fffff803`d9f90aeb e99775feff      jmp     nt!CcInitializeCacheManager+0x673 (fffff803`d9f78087)

nt! ?? ::PBOPGDP::`string'+0x1fec:
fffff803`d9f90af0 4533c9          xor     r9d,r9d
fffff803`d9f90af3 ba8e020000      mov     edx,28Eh
fffff803`d9f90af8 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9f90aff 418d4934        lea     ecx,[r9+34h]
fffff803`d9f90b03 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`d9f90b08 e833f994ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9f90b0d cc              int     3
fffff803`d9f90b0e 90              nop
fffff803`d9f90b0f 90              nop
fffff803`d9f90b10 488364242000    and     qword ptr [rsp+20h],0
fffff803`d9f90b16 4533c9          xor     r9d,r9d
fffff803`d9f90b19 ba15040900      mov     edx,90415h
fffff803`d9f90b1e 418d4934        lea     ecx,[r9+34h]
fffff803`d9f90b22 49c7c09a0000c0  mov     r8,0FFFFFFFFC000009Ah
fffff803`d9f90b29 e812f994ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9f90b2e cc              int     3
fffff803`d9f90b2f 488364242000    and     qword ptr [rsp+20h],0
fffff803`d9f90b35 4533c9          xor     r9d,r9d
fffff803`d9f90b38 ba2e040900      mov     edx,9042Eh
fffff803`d9f90b3d 418d4934        lea     ecx,[r9+34h]
fffff803`d9f90b41 49c7c09a0000c0  mov     r8,0FFFFFFFFC000009Ah
fffff803`d9f90b48 e8f3f894ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9f90b4d cc              int     3
fffff803`d9f90b4e 90              nop
fffff803`d9f90b4f 90              nop
fffff803`d9f90b50 488d442450      lea     rax,[rsp+50h]
fffff803`d9f90b55 4c8d4d90        lea     r9,[rbp-70h]
fffff803`d9f90b59 488d15b0c6faff  lea     rdx,[nt!CmpDirtyShutdownCountString (fffff803`d9f3d210)]
fffff803`d9f90b60 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9f90b65 458bc4          mov     r8d,r12d
fffff803`d9f90b68 488bcf          mov     rcx,rdi
fffff803`d9f90b6b c744242000010000 mov     dword ptr [rsp+20h],100h
fffff803`d9f90b73 e8183fd5ff      call    nt!NtQueryValueKey (fffff803`d9ce4a90)
fffff803`d9f90b78 85c0            test    eax,eax
fffff803`d9f90b7a 0f8848acfbff    js      nt!CmpSetSystemValues+0x26c (fffff803`d9f4b7c8)

nt! ?? ::PBOPGDP::`string'+0x2078:
fffff803`d9f90b80 44396d94        cmp     dword ptr [rbp-6Ch],r13d
fffff803`d9f90b84 0f853eacfbff    jne     nt!CmpSetSystemValues+0x26c (fffff803`d9f4b7c8)

nt! ?? ::PBOPGDP::`string'+0x2082:
fffff803`d9f90b8a 8b4598          mov     eax,dword ptr [rbp-68h]
fffff803`d9f90b8d 8b4c0590        mov     ecx,dword ptr [rbp+rax-70h]
fffff803`d9f90b91 4103cc          add     ecx,r12d
fffff803`d9f90b94 894c2434        mov     dword ptr [rsp+34h],ecx

nt! ?? ::PBOPGDP::`string'+0x2090:
fffff803`d9f90b98 488d442434      lea     rax,[rsp+34h]
fffff803`d9f90b9d 488d156cc6faff  lea     rdx,[nt!CmpDirtyShutdownCountString (fffff803`d9f3d210)]
fffff803`d9f90ba4 458bcd          mov     r9d,r13d
fffff803`d9f90ba7 4533c0          xor     r8d,r8d
fffff803`d9f90baa 488bcf          mov     rcx,rdi
fffff803`d9f90bad 44896c2428      mov     dword ptr [rsp+28h],r13d
fffff803`d9f90bb2 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9f90bb7 e8f456cfff      call    nt!NtSetValueKey (fffff803`d9c862b0)
fffff803`d9f90bbc 8bd8            mov     ebx,eax
fffff803`d9f90bbe e9aaabfbff      jmp     nt!CmpSetSystemValues+0x211 (fffff803`d9f4b76d)
