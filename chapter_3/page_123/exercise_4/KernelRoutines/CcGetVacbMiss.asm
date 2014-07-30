nt!CcSetVacbInFreeList+0x55:
fffff803`d988d709 4883c428        add     rsp,28h
fffff803`d988d70d c3              ret

nt!CcAllocateInitializeVacbArray+0x82:
fffff803`d989339a 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d989339f 4883c420        add     rsp,20h
fffff803`d98933a3 5f              pop     rdi
fffff803`d98933a4 c3              ret

nt!CcGetVacbMiss:
fffff803`d9966a20 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff803`d9966a25 44894c2420      mov     dword ptr [rsp+20h],r9d
fffff803`d9966a2a 55              push    rbp
fffff803`d9966a2b 56              push    rsi
fffff803`d9966a2c 57              push    rdi
fffff803`d9966a2d 4154            push    r12
fffff803`d9966a2f 4155            push    r13
fffff803`d9966a31 4156            push    r14
fffff803`d9966a33 4157            push    r15
fffff803`d9966a35 488bec          mov     rbp,rsp
fffff803`d9966a38 4883ec70        sub     rsp,70h
fffff803`d9966a3c 4533f6          xor     r14d,r14d
fffff803`d9966a3f 8bc2            mov     eax,edx
fffff803`d9966a41 488955c8        mov     qword ptr [rbp-38h],rdx
fffff803`d9966a45 25ffff0300      and     eax,3FFFFh
fffff803`d9966a4a 4532ff          xor     r15b,r15b
fffff803`d9966a4d 418bde          mov     ebx,r14d
fffff803`d9966a50 2bd0            sub     edx,eax
fffff803`d9966a52 4881792000000002 cmp     qword ptr [rcx+20h],2000000h
fffff803`d9966a5a 488d45d8        lea     rax,[rbp-28h]
fffff803`d9966a5e 488945e0        mov     qword ptr [rbp-20h],rax
fffff803`d9966a62 488d45d8        lea     rax,[rbp-28h]
fffff803`d9966a66 458be1          mov     r12d,r9d
fffff803`d9966a69 458be8          mov     r13d,r8d
fffff803`d9966a6c 488bf9          mov     rdi,rcx
fffff803`d9966a6f 418bf6          mov     esi,r14d
fffff803`d9966a72 488945d8        mov     qword ptr [rbp-28h],rax
fffff803`d9966a76 895dc0          mov     dword ptr [rbp-40h],ebx
fffff803`d9966a79 44887d40        mov     byte ptr [rbp+40h],r15b
fffff803`d9966a7d 8955c8          mov     dword ptr [rbp-38h],edx
fffff803`d9966a80 4c8975e8        mov     qword ptr [rbp-18h],r14
fffff803`d9966a84 448975f0        mov     dword ptr [rbp-10h],r14d
fffff803`d9966a88 0f8f8c020000    jg      nt!CcGetVacbMiss+0x2fa (fffff803`d9966d1a)

nt!CcGetVacbMiss+0x6e:
fffff803`d9966a8e b902000000      mov     ecx,2
fffff803`d9966a93 450f20c6        mov     r14,cr8
fffff803`d9966a97 440f22c1        mov     cr8,rcx
fffff803`d9966a9b 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`d9966aa4 4c8b4148        mov     r8,qword ptr [rcx+48h]
fffff803`d9966aa8 4883c140        add     rcx,40h
fffff803`d9966aac f705ce75270000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d9966ab6 0f8593ec0e00    jne     nt! ?? ::FNODOBFM::`string'+0x5c79 (fffff803`d9a5574f)

nt!CcGetVacbMiss+0x9c:
fffff803`d9966abc 488bd1          mov     rdx,rcx
fffff803`d9966abf 498710          xchg    rdx,qword ptr [r8]
fffff803`d9966ac2 4885d2          test    rdx,rdx
fffff803`d9966ac5 0f85da030000    jne     nt!CcGetVacbMiss+0x485 (fffff803`d9966ea5)

nt!CcGetVacbMiss+0xab:
fffff803`d9966acb 4584ff          test    r15b,r15b
fffff803`d9966ace 0f8589ec0e00    jne     nt! ?? ::FNODOBFM::`string'+0x5c87 (fffff803`d9a5575d)

nt!CcGetVacbMiss+0xb4:
fffff803`d9966ad4 410fb6cf        movzx   ecx,r15b
fffff803`d9966ad8 e897040000      call    nt!CcGetVacbFromFreeList (fffff803`d9966f74)
fffff803`d9966add 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`d9966ae6 4883c340        add     rbx,40h
fffff803`d9966aea f7059075270000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d9966af4 488bf0          mov     rsi,rax
fffff803`d9966af7 0f856bec0e00    jne     nt! ?? ::FNODOBFM::`string'+0x5c92 (fffff803`d9a55768)

nt!CcGetVacbMiss+0xdd:
fffff803`d9966afd 0f0d0b          prefetchw [rbx]
fffff803`d9966b00 488b03          mov     rax,qword ptr [rbx]
fffff803`d9966b03 4885c0          test    rax,rax
fffff803`d9966b06 0f8589030000    jne     nt!CcGetVacbMiss+0x475 (fffff803`d9966e95)

nt!CcGetVacbMiss+0xec:
fffff803`d9966b0c 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`d9966b10 488bc3          mov     rax,rbx
fffff803`d9966b13 33d2            xor     edx,edx
fffff803`d9966b15 f0480fb111      lock cmpxchg qword ptr [rcx],rdx
fffff803`d9966b1a 0f856d030000    jne     nt!CcGetVacbMiss+0x46d (fffff803`d9966e8d)

nt!CcGetVacbMiss+0x100:
fffff803`d9966b20 410fb6c6        movzx   eax,r14b
fffff803`d9966b24 440f22c0        mov     cr8,rax
fffff803`d9966b28 4885f6          test    rsi,rsi
fffff803`d9966b2b 0f8449ec0e00    je      nt! ?? ::FNODOBFM::`string'+0x5ca4 (fffff803`d9a5577a)

nt!CcGetVacbMiss+0x111:
fffff803`d9966b31 488b4720        mov     rax,qword ptr [rdi+20h]
fffff803`d9966b35 482b45c8        sub     rax,qword ptr [rbp-38h]
fffff803`d9966b39 488945d0        mov     qword ptr [rbp-30h],rax
fffff803`d9966b3d 48c1e820        shr     rax,20h
fffff803`d9966b41 85c0            test    eax,eax
fffff803`d9966b43 7509            jne     nt!CcGetVacbMiss+0x12e (fffff803`d9966b4e)

nt!CcGetVacbMiss+0x125:
fffff803`d9966b45 817dd000000400  cmp     dword ptr [rbp-30h],40000h
fffff803`d9966b4c 7607            jbe     nt!CcGetVacbMiss+0x135 (fffff803`d9966b55)

nt!CcGetVacbMiss+0x12e:
fffff803`d9966b4e c745d000000400  mov     dword ptr [rbp-30h],40000h

nt!CcGetVacbMiss+0x135:
fffff803`d9966b55 488b8fa8000000  mov     rcx,qword ptr [rdi+0A8h]
fffff803`d9966b5c 4c8d4dd0        lea     r9,[rbp-30h]
fffff803`d9966b60 4c8d45c8        lea     r8,[rbp-38h]
fffff803`d9966b64 488bd6          mov     rdx,rsi
fffff803`d9966b67 e8b45affff      call    nt!MmMapViewInSystemCache (fffff803`d995c620)
fffff803`d9966b6c 448be0          mov     r12d,eax
fffff803`d9966b6f 4585ed          test    r13d,r13d
fffff803`d9966b72 0f850d020000    jne     nt!CcGetVacbMiss+0x365 (fffff803`d9966d85)

nt!CcGetVacbMiss+0x158:
fffff803`d9966b78 f0480fba6f6800  lock bts qword ptr [rdi+68h],0
fffff803`d9966b7f 0f822a030000    jb      nt!CcGetVacbMiss+0x48f (fffff803`d9966eaf)

nt!CcGetVacbMiss+0x165:
fffff803`d9966b85 48817f2000000002 cmp     qword ptr [rdi+20h],2000000h
fffff803`d9966b8d 0f8fa9010000    jg      nt!CcGetVacbMiss+0x31c (fffff803`d9966d3c)

nt!CcGetVacbMiss+0x173:
fffff803`d9966b93 4585e4          test    r12d,r12d
fffff803`d9966b96 0f8875ec0e00    js      nt! ?? ::FNODOBFM::`string'+0x5d43 (fffff803`d9a55811)

nt!CcGetVacbMiss+0x17c:
fffff803`d9966b9c 48817f2000000002 cmp     qword ptr [rdi+20h],2000000h
fffff803`d9966ba4 488b5dc8        mov     rbx,qword ptr [rbp-38h]
fffff803`d9966ba8 0f8fb0010000    jg      nt!CcGetVacbMiss+0x33e (fffff803`d9966d5e)

nt!CcGetVacbMiss+0x18e:
fffff803`d9966bae 8b4dc8          mov     ecx,dword ptr [rbp-38h]
fffff803`d9966bb1 488b4758        mov     rax,qword ptr [rdi+58h]
fffff803`d9966bb5 48c1e912        shr     rcx,12h
fffff803`d9966bb9 4c8b3cc8        mov     r15,qword ptr [rax+rcx*8]

nt!CcGetVacbMiss+0x19d:
fffff803`d9966bbd 4d85ff          test    r15,r15
fffff803`d9966bc0 0f8534020000    jne     nt!CcGetVacbMiss+0x3da (fffff803`d9966dfa)

nt!CcGetVacbMiss+0x1a6:
fffff803`d9966bc6 48837e08ff      cmp     qword ptr [rsi+8],0FFFFFFFFFFFFFFFFh
fffff803`d9966bcb 0f8533ed0e00    jne     nt! ?? ::FNODOBFM::`string'+0x5e4a (fffff803`d9a55904)

nt!CcGetVacbMiss+0x1b1:
fffff803`d9966bd1 41bf01000000    mov     r15d,1
fffff803`d9966bd7 48897e08        mov     qword ptr [rsi+8],rdi
fffff803`d9966bdb 48895e10        mov     qword ptr [rsi+10h],rbx
fffff803`d9966bdf 418bc7          mov     eax,r15d
fffff803`d9966be2 f00fc14610      lock xadd dword ptr [rsi+10h],eax
fffff803`d9966be7 ffc0            inc     eax
fffff803`d9966be9 b9ffff0000      mov     ecx,0FFFFh
fffff803`d9966bee 663bc1          cmp     ax,cx
fffff803`d9966bf1 0f87eeec0e00    ja      nt! ?? ::FNODOBFM::`string'+0x5e2b (fffff803`d9a558e5)

nt!CcGetVacbMiss+0x1d7:
fffff803`d9966bf7 6685c0          test    ax,ax
fffff803`d9966bfa 0f84c6ec0e00    je      nt! ?? ::FNODOBFM::`string'+0x5e0c (fffff803`d9a558c6)

nt!CcGetVacbMiss+0x1e0:
fffff803`d9966c00 488b55c8        mov     rdx,qword ptr [rbp-38h]
fffff803`d9966c04 483b9770010000  cmp     rdx,qword ptr [rdi+170h]
fffff803`d9966c0b 7c0e            jl      nt!CcGetVacbMiss+0x1fb (fffff803`d9966c1b)

nt!CcGetVacbMiss+0x1ed:
fffff803`d9966c0d 488d8200000400  lea     rax,[rdx+40000h]
fffff803`d9966c14 48898770010000  mov     qword ptr [rdi+170h],rax

nt!CcGetVacbMiss+0x1fb:
fffff803`d9966c1b 48817f2000000002 cmp     qword ptr [rdi+20h],2000000h
fffff803`d9966c23 0f8f48010000    jg      nt!CcGetVacbMiss+0x351 (fffff803`d9966d71)

nt!CcGetVacbMiss+0x209:
fffff803`d9966c29 4883fefe        cmp     rsi,0FFFFFFFFFFFFFFFEh
fffff803`d9966c2d 730f            jae     nt!CcGetVacbMiss+0x21e (fffff803`d9966c3e)

nt!CcGetVacbMiss+0x20f:
fffff803`d9966c2f 8b4dc8          mov     ecx,dword ptr [rbp-38h]
fffff803`d9966c32 488b4758        mov     rax,qword ptr [rdi+58h]
fffff803`d9966c36 48c1e912        shr     rcx,12h
fffff803`d9966c3a 488934c8        mov     qword ptr [rax+rcx*8],rsi

nt!CcGetVacbMiss+0x21e:
fffff803`d9966c3e 0f0d4f68        prefetchw [rdi+68h]
fffff803`d9966c42 488b4768        mov     rax,qword ptr [rdi+68h]
fffff803`d9966c46 488bc8          mov     rcx,rax
fffff803`d9966c49 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`d9966c4d 4883f910        cmp     rcx,10h
fffff803`d9966c51 0f8790020000    ja      nt!CcGetVacbMiss+0x4c7 (fffff803`d9966ee7)

nt!CcGetVacbMiss+0x237:
fffff803`d9966c57 33c9            xor     ecx,ecx

nt!CcGetVacbMiss+0x239:
fffff803`d9966c59 a802            test    al,2
fffff803`d9966c5b 0f8578020000    jne     nt!CcGetVacbMiss+0x4b9 (fffff803`d9966ed9)

nt!CcGetVacbMiss+0x241:
fffff803`d9966c61 f0480fb14f68    lock cmpxchg qword ptr [rdi+68h],rcx
fffff803`d9966c67 0f856c020000    jne     nt!CcGetVacbMiss+0x4b9 (fffff803`d9966ed9)

nt!CcGetVacbMiss+0x24d:
fffff803`d9966c6d 4585ed          test    r13d,r13d
fffff803`d9966c70 0f8547010000    jne     nt!CcGetVacbMiss+0x39d (fffff803`d9966dbd)

nt!CcGetVacbMiss+0x256:
fffff803`d9966c76 440fb67d40      movzx   r15d,byte ptr [rbp+40h]

nt!CcGetVacbMiss+0x25b:
fffff803`d9966c7b 4585e4          test    r12d,r12d
fffff803`d9966c7e 0f8852eb0e00    js      nt! ?? ::FNODOBFM::`string'+0x5d08 (fffff803`d9a557d6)

nt!CcGetVacbMiss+0x264:
fffff803`d9966c84 4533f6          xor     r14d,r14d

nt!CcGetVacbMiss+0x267:
fffff803`d9966c87 488b55d8        mov     rdx,qword ptr [rbp-28h]
fffff803`d9966c8b 488d45d8        lea     rax,[rbp-28h]
fffff803`d9966c8f 483bd0          cmp     rdx,rax
fffff803`d9966c92 7531            jne     nt!CcGetVacbMiss+0x2a5 (fffff803`d9966cc5)

nt!CcGetVacbMiss+0x274:
fffff803`d9966c94 488b55e8        mov     rdx,qword ptr [rbp-18h]
fffff803`d9966c98 4885d2          test    rdx,rdx
fffff803`d9966c9b 0f8544010000    jne     nt!CcGetVacbMiss+0x3c5 (fffff803`d9966de5)

nt!CcGetVacbMiss+0x281:
fffff803`d9966ca1 4585e4          test    r12d,r12d
fffff803`d9966ca4 0f88bb020000    js      nt!CcGetVacbMiss+0x545 (fffff803`d9966f65)

nt!CcGetVacbMiss+0x28a:
fffff803`d9966caa 488bc6          mov     rax,rsi
fffff803`d9966cad 488b9c24b8000000 mov     rbx,qword ptr [rsp+0B8h]
fffff803`d9966cb5 4883c470        add     rsp,70h
fffff803`d9966cb9 415f            pop     r15
fffff803`d9966cbb 415e            pop     r14
fffff803`d9966cbd 415d            pop     r13
fffff803`d9966cbf 415c            pop     r12
fffff803`d9966cc1 5f              pop     rdi
fffff803`d9966cc2 5e              pop     rsi
fffff803`d9966cc3 5d              pop     rbp
fffff803`d9966cc4 c3              ret

nt!CcGetVacbMiss+0x2a5:
fffff803`d9966cc5 488b02          mov     rax,qword ptr [rdx]
fffff803`d9966cc8 488d4dd8        lea     rcx,[rbp-28h]
fffff803`d9966ccc 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`d9966cd0 0f854dec0e00    jne     nt! ?? ::FNODOBFM::`string'+0x5e69 (fffff803`d9a55923)

nt!CcGetVacbMiss+0x2b6:
fffff803`d9966cd6 48395008        cmp     qword ptr [rax+8],rdx
fffff803`d9966cda 0f8543ec0e00    jne     nt! ?? ::FNODOBFM::`string'+0x5e69 (fffff803`d9a55923)

nt!CcGetVacbMiss+0x2c0:
fffff803`d9966ce0 488945d8        mov     qword ptr [rbp-28h],rax
fffff803`d9966ce4 488d4dd8        lea     rcx,[rbp-28h]
fffff803`d9966ce8 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9966cec 0fb7059d0e1a00  movzx   eax,word ptr [nt!CcVacbLevelLookasideList+0x10 (fffff803`d9b07b90)]
fffff803`d9966cf3 ff05a30e1a00    inc     dword ptr [nt!CcVacbLevelLookasideList+0x1c (fffff803`d9b07b9c)]
fffff803`d9966cf9 663905800e1a00  cmp     word ptr [nt!CcVacbLevelLookasideList (fffff803`d9b07b80)],ax
fffff803`d9966d00 0f83fd010000    jae     nt!CcGetVacbMiss+0x4e3 (fffff803`d9966f03)

nt!CcGetVacbMiss+0x2e6:
fffff803`d9966d06 488d0d730e1a00  lea     rcx,[nt!CcVacbLevelLookasideList (fffff803`d9b07b80)]
fffff803`d9966d0d e8ce40f7ff      call    nt!ExpInterlockedPushEntrySList (fffff803`d98dade0)
fffff803`d9966d12 ff4df0          dec     dword ptr [rbp-10h]
fffff803`d9966d15 e96dffffff      jmp     nt!CcGetVacbMiss+0x267 (fffff803`d9966c87)

nt!CcGetVacbMiss+0x2fa:
fffff803`d9966d1a 8b0d7c3a1900    mov     ecx,dword ptr [nt!CcMaxVacbLevelsSeen (fffff803`d9afa79c)]
fffff803`d9966d20 4c8d45d8        lea     r8,[rbp-28h]
fffff803`d9966d24 410fb6d5        movzx   edx,r13b
fffff803`d9966d28 ffc9            dec     ecx
fffff803`d9966d2a e8d1c5f6ff      call    nt!CcAllocateVacbLevels (fffff803`d98d3300)
fffff803`d9966d2f 84c0            test    al,al
fffff803`d9966d31 0f8557fdffff    jne     nt!CcGetVacbMiss+0x6e (fffff803`d9966a8e)

nt!CcGetVacbMiss+0x317:
fffff803`d9966d37 e9fce90e00      jmp     nt! ?? ::FNODOBFM::`string'+0x5c5e (fffff803`d9a55738)

nt!CcGetVacbMiss+0x31c:
fffff803`d9966d3c 8b0d5a3a1900    mov     ecx,dword ptr [nt!CcMaxVacbLevelsSeen (fffff803`d9afa79c)]
fffff803`d9966d42 4c8d45d8        lea     r8,[rbp-28h]
fffff803`d9966d46 410fb6d5        movzx   edx,r13b
fffff803`d9966d4a ffc9            dec     ecx
fffff803`d9966d4c e8afc5f6ff      call    nt!CcAllocateVacbLevels (fffff803`d98d3300)
fffff803`d9966d51 84c0            test    al,al
fffff803`d9966d53 0f853afeffff    jne     nt!CcGetVacbMiss+0x173 (fffff803`d9966b93)

nt!CcGetVacbMiss+0x339:
fffff803`d9966d59 e99eea0e00      jmp     nt! ?? ::FNODOBFM::`string'+0x5d2e (fffff803`d9a557fc)

nt!CcGetVacbMiss+0x33e:
fffff803`d9966d5e 488bd3          mov     rdx,rbx
fffff803`d9966d61 488bcf          mov     rcx,rdi
fffff803`d9966d64 e813c8f6ff      call    nt!CcGetVacbLargeOffset (fffff803`d98d357c)
fffff803`d9966d69 4c8bf8          mov     r15,rax
fffff803`d9966d6c e94cfeffff      jmp     nt!CcGetVacbMiss+0x19d (fffff803`d9966bbd)

nt!CcGetVacbMiss+0x351:
fffff803`d9966d71 4c8d4dd8        lea     r9,[rbp-28h]
fffff803`d9966d75 4c8bc6          mov     r8,rsi
fffff803`d9966d78 488bcf          mov     rcx,rdi
fffff803`d9966d7b e8e0ef0000      call    nt!CcSetVacbLargeOffset (fffff803`d9975d60)
fffff803`d9966d80 e9b9feffff      jmp     nt!CcGetVacbMiss+0x21e (fffff803`d9966c3e)

nt!CcGetVacbMiss+0x365:
fffff803`d9966d85 488d9f18010000  lea     rbx,[rdi+118h]
fffff803`d9966d8c 450f20c6        mov     r14,cr8
fffff803`d9966d90 b801000000      mov     eax,1
fffff803`d9966d95 440f22c0        mov     cr8,rax
fffff803`d9966d99 f00fba3300      lock btr dword ptr [rbx],0
fffff803`d9966d9e 0f8376010000    jae     nt!CcGetVacbMiss+0x4fa (fffff803`d9966f1a)

nt!CcGetVacbMiss+0x384:
fffff803`d9966da4 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9966dad 48894308        mov     qword ptr [rbx+8],rax
fffff803`d9966db1 410fb6c6        movzx   eax,r14b
fffff803`d9966db5 894330          mov     dword ptr [rbx+30h],eax
fffff803`d9966db8 e9bbfdffff      jmp     nt!CcGetVacbMiss+0x158 (fffff803`d9966b78)

nt!CcGetVacbMiss+0x39d:
fffff803`d9966dbd 488d8f18010000  lea     rcx,[rdi+118h]
fffff803`d9966dc4 33c0            xor     eax,eax
fffff803`d9966dc6 0fb65930        movzx   ebx,byte ptr [rcx+30h]
fffff803`d9966dca 48894108        mov     qword ptr [rcx+8],rax
fffff803`d9966dce f0440fb139      lock cmpxchg dword ptr [rcx],r15d
fffff803`d9966dd3 0f8517010000    jne     nt!CcGetVacbMiss+0x4d0 (fffff803`d9966ef0)

nt!CcGetVacbMiss+0x3b9:
fffff803`d9966dd9 0fb6c3          movzx   eax,bl
fffff803`d9966ddc 440f22c0        mov     cr8,rax
fffff803`d9966de0 e991feffff      jmp     nt!CcGetVacbMiss+0x256 (fffff803`d9966c76)

nt!CcGetVacbMiss+0x3c5:
fffff803`d9966de5 488d0d940d1a00  lea     rcx,[nt!CcVacbLevelLookasideList (fffff803`d9b07b80)]
fffff803`d9966dec e8bfbaf6ff      call    nt!ExFreeToNPagedLookasideList (fffff803`d98d28b0)
fffff803`d9966df1 4c8975e8        mov     qword ptr [rbp-18h],r14
fffff803`d9966df5 e9a7feffff      jmp     nt!CcGetVacbMiss+0x281 (fffff803`d9966ca1)

nt!CcGetVacbMiss+0x3da:
fffff803`d9966dfa ba01000000      mov     edx,1
fffff803`d9966dff 8bc2            mov     eax,edx
fffff803`d9966e01 f0410fc14710    lock xadd dword ptr [r15+10h],eax
fffff803`d9966e07 ffc0            inc     eax
fffff803`d9966e09 b9ffff0000      mov     ecx,0FFFFh
fffff803`d9966e0e 663bc1          cmp     ax,cx
fffff803`d9966e11 0f8732eb0e00    ja      nt! ?? ::FNODOBFM::`string'+0x5e8f (fffff803`d9a55949)

nt!CcGetVacbMiss+0x3f7:
fffff803`d9966e17 6685c0          test    ax,ax
fffff803`d9966e1a 0f840aeb0e00    je      nt! ?? ::FNODOBFM::`string'+0x5e70 (fffff803`d9a5592a)

nt!CcGetVacbMiss+0x400:
fffff803`d9966e20 0f0d4f68        prefetchw [rdi+68h]
fffff803`d9966e24 488b4768        mov     rax,qword ptr [rdi+68h]
fffff803`d9966e28 488bc8          mov     rcx,rax
fffff803`d9966e2b 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`d9966e2f 4883f910        cmp     rcx,10h
fffff803`d9966e33 0f8797000000    ja      nt!CcGetVacbMiss+0x4b0 (fffff803`d9966ed0)

nt!CcGetVacbMiss+0x419:
fffff803`d9966e39 33c9            xor     ecx,ecx

nt!CcGetVacbMiss+0x41b:
fffff803`d9966e3b a802            test    al,2
fffff803`d9966e3d 757e            jne     nt!CcGetVacbMiss+0x49d (fffff803`d9966ebd)

nt!CcGetVacbMiss+0x41f:
fffff803`d9966e3f f0480fb14f68    lock cmpxchg qword ptr [rdi+68h],rcx
fffff803`d9966e45 7576            jne     nt!CcGetVacbMiss+0x49d (fffff803`d9966ebd)

nt!CcGetVacbMiss+0x427:
fffff803`d9966e47 4585ed          test    r13d,r13d
fffff803`d9966e4a 0f85d7000000    jne     nt!CcGetVacbMiss+0x507 (fffff803`d9966f27)

nt!CcGetVacbMiss+0x430:
fffff803`d9966e50 448b45c0        mov     r8d,dword ptr [rbp-40h]
fffff803`d9966e54 488bd7          mov     rdx,rdi
fffff803`d9966e57 488bce          mov     rcx,rsi
fffff803`d9966e5a e86d4d3600      call    nt!CcUnmapVacb (fffff803`d9ccbbcc)
fffff803`d9966e5f b904000000      mov     ecx,4
fffff803`d9966e64 e857eafcff      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d9966e69 0fb65540        movzx   edx,byte ptr [rbp+40h]
fffff803`d9966e6d 488bce          mov     rcx,rsi
fffff803`d9966e70 0fb6d8          movzx   ebx,al
fffff803`d9966e73 e83c68f2ff      call    nt!CcSetVacbInFreeList (fffff803`d988d6b4)
fffff803`d9966e78 0fb6d3          movzx   edx,bl
fffff803`d9966e7b b904000000      mov     ecx,4
fffff803`d9966e80 e8abb5fdff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9966e85 498bf7          mov     rsi,r15
fffff803`d9966e88 e9e9fdffff      jmp     nt!CcGetVacbMiss+0x256 (fffff803`d9966c76)

nt!CcGetVacbMiss+0x46d:
fffff803`d9966e8d 488bcb          mov     rcx,rbx
fffff803`d9966e90 e8dbd6fdff      call    nt!KxWaitForLockChainValid (fffff803`d9944570)

nt!CcGetVacbMiss+0x475:
fffff803`d9966e95 f04883700801    lock xor qword ptr [rax+8],1
fffff803`d9966e9b 33c0            xor     eax,eax
fffff803`d9966e9d 488903          mov     qword ptr [rbx],rax
fffff803`d9966ea0 e97bfcffff      jmp     nt!CcGetVacbMiss+0x100 (fffff803`d9966b20)

nt!CcGetVacbMiss+0x485:
fffff803`d9966ea5 e83633fcff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d9966eaa e91cfcffff      jmp     nt!CcGetVacbMiss+0xab (fffff803`d9966acb)

nt!CcGetVacbMiss+0x48f:
fffff803`d9966eaf 488d4f68        lea     rcx,[rdi+68h]
fffff803`d9966eb3 e848e5ffff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9966eb8 e9c8fcffff      jmp     nt!CcGetVacbMiss+0x165 (fffff803`d9966b85)

nt!CcGetVacbMiss+0x49d:
fffff803`d9966ebd 488d4f68        lea     rcx,[rdi+68h]
fffff803`d9966ec1 e82695fdff      call    nt!ExfReleasePushLock (fffff803`d99403ec)
fffff803`d9966ec6 ba01000000      mov     edx,1
fffff803`d9966ecb e977ffffff      jmp     nt!CcGetVacbMiss+0x427 (fffff803`d9966e47)

nt!CcGetVacbMiss+0x4b0:
fffff803`d9966ed0 488d48f0        lea     rcx,[rax-10h]
fffff803`d9966ed4 e962ffffff      jmp     nt!CcGetVacbMiss+0x41b (fffff803`d9966e3b)

nt!CcGetVacbMiss+0x4b9:
fffff803`d9966ed9 488d4f68        lea     rcx,[rdi+68h]
fffff803`d9966edd e80a95fdff      call    nt!ExfReleasePushLock (fffff803`d99403ec)
fffff803`d9966ee2 e986fdffff      jmp     nt!CcGetVacbMiss+0x24d (fffff803`d9966c6d)

nt!CcGetVacbMiss+0x4c7:
fffff803`d9966ee7 488d48f0        lea     rcx,[rax-10h]
fffff803`d9966eeb e969fdffff      jmp     nt!CcGetVacbMiss+0x239 (fffff803`d9966c59)

nt!CcGetVacbMiss+0x4d0:
fffff803`d9966ef0 8bd0            mov     edx,eax
fffff803`d9966ef2 e835010200      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9966ef7 0fb6c3          movzx   eax,bl
fffff803`d9966efa 440f22c0        mov     cr8,rax
fffff803`d9966efe e973fdffff      jmp     nt!CcGetVacbMiss+0x256 (fffff803`d9966c76)

nt!CcGetVacbMiss+0x4e3:
fffff803`d9966f03 ff05970c1a00    inc     dword ptr [nt!CcVacbLevelLookasideList+0x20 (fffff803`d9b07ba0)]
fffff803`d9966f09 488bca          mov     rcx,rdx
fffff803`d9966f0c ff15a60c1a00    call    qword ptr [nt!CcVacbLevelLookasideList+0x38 (fffff803`d9b07bb8)]
fffff803`d9966f12 ff4df0          dec     dword ptr [rbp-10h]
fffff803`d9966f15 e96dfdffff      jmp     nt!CcGetVacbMiss+0x267 (fffff803`d9966c87)

nt!CcGetVacbMiss+0x4fa:
fffff803`d9966f1a 488bcb          mov     rcx,rbx
fffff803`d9966f1d e8fe0a0200      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)
fffff803`d9966f22 e97dfeffff      jmp     nt!CcGetVacbMiss+0x384 (fffff803`d9966da4)

nt!CcGetVacbMiss+0x507:
fffff803`d9966f27 488d8f18010000  lea     rcx,[rdi+118h]
fffff803`d9966f2e 33c0            xor     eax,eax
fffff803`d9966f30 0fb65930        movzx   ebx,byte ptr [rcx+30h]
fffff803`d9966f34 48894108        mov     qword ptr [rcx+8],rax
fffff803`d9966f38 f00fb111        lock cmpxchg dword ptr [rcx],edx
fffff803`d9966f3c 7514            jne     nt!CcGetVacbMiss+0x532 (fffff803`d9966f52)

nt!CcGetVacbMiss+0x51e:
fffff803`d9966f3e 0fb6c3          movzx   eax,bl
fffff803`d9966f41 440f22c0        mov     cr8,rax
fffff803`d9966f45 e906ffffff      jmp     nt!CcGetVacbMiss+0x430 (fffff803`d9966e50)

nt!CcGetVacbMiss+0x52a:
fffff803`d9966f4a 488916          mov     qword ptr [rsi],rdx
fffff803`d9966f4d e935e90e00      jmp     nt! ?? ::FNODOBFM::`string'+0x5dcd (fffff803`d9a55887)

nt!CcGetVacbMiss+0x532:
fffff803`d9966f52 8bd0            mov     edx,eax
fffff803`d9966f54 e8d3000200      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9966f59 0fb6c3          movzx   eax,bl
fffff803`d9966f5c 440f22c0        mov     cr8,rax
fffff803`d9966f60 e9ebfeffff      jmp     nt!CcGetVacbMiss+0x430 (fffff803`d9966e50)

nt!CcGetVacbMiss+0x545:
fffff803`d9966f65 418bcc          mov     ecx,r12d
fffff803`d9966f68 e8d3db0000      call    nt!RtlRaiseStatus (fffff803`d9974b40)
fffff803`d9966f6d cc              int     3
fffff803`d9966f6e 90              nop
fffff803`d9966f6f 90              nop
fffff803`d9966f70 90              nop
fffff803`d9966f71 90              nop
fffff803`d9966f72 90              nop
fffff803`d9966f73 90              nop
fffff803`d9966f74 fff3            push    rbx
fffff803`d9966f76 4883ec30        sub     rsp,30h
fffff803`d9966f7a 33db            xor     ebx,ebx
fffff803`d9966f7c 84c9            test    cl,cl
fffff803`d9966f7e 0f8514ea0e00    jne     nt! ?? ::FNODOBFM::`string'+0x5eda (fffff803`d9a55998)

nt!CcGetVacbFromFreeList+0x10:
fffff803`d9966f84 488d05757b2000  lea     rax,[nt!CcVacbFreeList (fffff803`d9b6eb00)]
fffff803`d9966f8b 4c8d05467b2000  lea     r8,[nt!CcNumberOfFreeVacbs (fffff803`d9b6ead8)]

nt!CcGetVacbFromFreeList+0x1e:
fffff803`d9966f92 488b08          mov     rcx,qword ptr [rax]
fffff803`d9966f95 483bc8          cmp     rcx,rax
fffff803`d9966f98 747d            je      nt!CcGetVacbFromFreeList+0xa3 (fffff803`d9967017)

nt!CcGetVacbFromFreeList+0x26:
fffff803`d9966f9a ff05640d1a00    inc     dword ptr [nt!CcNumberOfMappedVacbs (fffff803`d9b07d04)]
fffff803`d9966fa0 488d59f0        lea     rbx,[rcx-10h]
fffff803`d9966fa4 488d4310        lea     rax,[rbx+10h]
fffff803`d9966fa8 488b10          mov     rdx,qword ptr [rax]
fffff803`d9966fab 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9966faf 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9966fb3 7571            jne     nt!CcGetVacbFromFreeList+0xb2 (fffff803`d9967026)

nt!CcGetVacbFromFreeList+0x41:
fffff803`d9966fb5 483901          cmp     qword ptr [rcx],rax
fffff803`d9966fb8 756c            jne     nt!CcGetVacbFromFreeList+0xb2 (fffff803`d9967026)

nt!CcGetVacbFromFreeList+0x46:
fffff803`d9966fba 488911          mov     qword ptr [rcx],rdx
fffff803`d9966fbd 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9966fc1 418b00          mov     eax,dword ptr [r8]
fffff803`d9966fc4 83f801          cmp     eax,1
fffff803`d9966fc7 0f82dee90e00    jb      nt! ?? ::FNODOBFM::`string'+0x5eed (fffff803`d9a559ab)

nt!CcGetVacbFromFreeList+0x59:
fffff803`d9966fcd ffc8            dec     eax
fffff803`d9966fcf 488bcb          mov     rcx,rbx
fffff803`d9966fd2 418900          mov     dword ptr [r8],eax
fffff803`d9966fd5 4c8b4320        mov     r8,qword ptr [rbx+20h]
fffff803`d9966fd9 48b86766666666666666 mov rax,6666666666666667h
fffff803`d9966fe3 492bc8          sub     rcx,r8
fffff803`d9966fe6 4883e910        sub     rcx,10h
fffff803`d9966fea 48f7e9          imul    rcx
fffff803`d9966fed 48c1fa04        sar     rdx,4
fffff803`d9966ff1 488bc2          mov     rax,rdx
fffff803`d9966ff4 48c1e83f        shr     rax,3Fh
fffff803`d9966ff8 4803d0          add     rdx,rax
fffff803`d9966ffb 413b5008        cmp     edx,dword ptr [r8+8]
fffff803`d9966fff 771f            ja      nt!CcGetVacbFromFreeList+0xac (fffff803`d9967020)

nt!CcGetVacbFromFreeList+0x8d:
fffff803`d9967001 48833b00        cmp     qword ptr [rbx],0
fffff803`d9967005 750b            jne     nt!CcGetVacbFromFreeList+0x9e (fffff803`d9967012)

nt!CcGetVacbFromFreeList+0x93:
fffff803`d9967007 488b4320        mov     rax,qword ptr [rbx+20h]
fffff803`d996700b 8b08            mov     ecx,dword ptr [rax]
fffff803`d996700d e822000000      call    nt!CcReferenceVacbArray (fffff803`d9967034)

nt!CcGetVacbFromFreeList+0x9e:
fffff803`d9967012 48834b08ff      or      qword ptr [rbx+8],0FFFFFFFFFFFFFFFFh

nt!CcGetVacbFromFreeList+0xa3:
fffff803`d9967017 488bc3          mov     rax,rbx
fffff803`d996701a 4883c430        add     rsp,30h
fffff803`d996701e 5b              pop     rbx
fffff803`d996701f c3              ret

nt!CcGetVacbFromFreeList+0xac:
fffff803`d9967020 41895008        mov     dword ptr [r8+8],edx
fffff803`d9967024 ebdb            jmp     nt!CcGetVacbFromFreeList+0x8d (fffff803`d9967001)

nt!CcGetVacbFromFreeList+0xb2:
fffff803`d9967026 b903000000      mov     ecx,3
fffff803`d996702b cd29            int     29h
fffff803`d996702d 90              nop
fffff803`d996702e 90              nop
fffff803`d996702f 90              nop
fffff803`d9967030 90              nop
fffff803`d9967031 90              nop
fffff803`d9967032 90              nop
fffff803`d9967033 90              nop
fffff803`d9967034 4883ec38        sub     rsp,38h
fffff803`d9967038 488b05a97a2000  mov     rax,qword ptr [nt!CcVacbArrays (fffff803`d9b6eae8)]
fffff803`d996703f 8bd1            mov     edx,ecx
fffff803`d9967041 4533c0          xor     r8d,r8d
fffff803`d9967044 4c8b0cd0        mov     r9,qword ptr [rax+rdx*8]
fffff803`d9967048 4d85c9          test    r9,r9
fffff803`d996704b 7410            je      nt!CcReferenceVacbArray+0x29 (fffff803`d996705d)

nt!CcReferenceVacbArray+0x19:
fffff803`d996704d 41ff4104        inc     dword ptr [r9+4]
fffff803`d9967051 4d8bc1          mov     r8,r9
fffff803`d9967054 413909          cmp     dword ptr [r9],ecx
fffff803`d9967057 0f8533ea0e00    jne     nt! ?? ::FNODOBFM::`string'+0x5fc0 (fffff803`d9a55a90)

nt!CcReferenceVacbArray+0x29:
fffff803`d996705d 498bc0          mov     rax,r8
fffff803`d9967060 4883c438        add     rsp,38h
fffff803`d9967064 c3              ret

nt!CcExtendVacbArray+0x1f6:
fffff803`d997c576 488b9c24a0000000 mov     rbx,qword ptr [rsp+0A0h]
fffff803`d997c57e 4883c460        add     rsp,60h
fffff803`d997c582 415f            pop     r15
fffff803`d997c584 415e            pop     r14
fffff803`d997c586 415d            pop     r13
fffff803`d997c588 415c            pop     r12
fffff803`d997c58a 5f              pop     rdi
fffff803`d997c58b 5e              pop     rsi
fffff803`d997c58c 5d              pop     rbp
fffff803`d997c58d c3              ret

nt! ?? ::FNODOBFM::`string'+0x5c5e:
fffff803`d9a55738 4183fc01        cmp     r12d,1
fffff803`d9a5573c 7506            jne     nt! ?? ::FNODOBFM::`string'+0x5c6e (fffff803`d9a55744)

nt! ?? ::FNODOBFM::`string'+0x5c68:
fffff803`d9a5573e ff05e4931100    inc     dword ptr [nt!CcDbgNumberOfFailedHighPriorityMappingsDueToCcResources (fffff803`d9b6eb28)]

nt! ?? ::FNODOBFM::`string'+0x5c6e:
fffff803`d9a55744 41bc9a0000c0    mov     r12d,0C000009Ah
fffff803`d9a5574a e93815f1ff      jmp     nt!CcGetVacbMiss+0x267 (fffff803`d9966c87)

nt! ?? ::FNODOBFM::`string'+0x5c79:
fffff803`d9a5574f 498bd0          mov     rdx,r8
fffff803`d9a55752 e899bffaff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9a55757 90              nop
fffff803`d9a55758 e96e13f1ff      jmp     nt!CcGetVacbMiss+0xab (fffff803`d9966acb)

nt! ?? ::FNODOBFM::`string'+0x5c87:
fffff803`d9a5575d 83cb02          or      ebx,2
fffff803`d9a55760 895dc0          mov     dword ptr [rbp-40h],ebx
fffff803`d9a55763 e96c13f1ff      jmp     nt!CcGetVacbMiss+0xb4 (fffff803`d9966ad4)

nt! ?? ::FNODOBFM::`string'+0x5c92:
fffff803`d9a55768 488b5538        mov     rdx,qword ptr [rbp+38h]
fffff803`d9a5576c 488bcb          mov     rcx,rbx
fffff803`d9a5576f e85cbefaff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a55774 90              nop
fffff803`d9a55775 e9a613f1ff      jmp     nt!CcGetVacbMiss+0x100 (fffff803`d9966b20)

nt! ?? ::FNODOBFM::`string'+0x5ca4:
fffff803`d9a5577a 33d2            xor     edx,edx
fffff803`d9a5577c 4533c0          xor     r8d,r8d
fffff803`d9a5577f 8d4a40          lea     ecx,[rdx+40h]
fffff803`d9a55782 e87942f9ff      call    nt!CcUnmapInactiveViews (fffff803`d99e9a00)
fffff803`d9a55787 85c0            test    eax,eax
fffff803`d9a55789 7430            je      nt! ?? ::FNODOBFM::`string'+0x5ce9 (fffff803`d9a557bb)

nt! ?? ::FNODOBFM::`string'+0x5cb9:
fffff803`d9a5578b b904000000      mov     ecx,4
fffff803`d9a55790 e82b01eeff      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d9a55795 410fb6cf        movzx   ecx,r15b
fffff803`d9a55799 0fb6d8          movzx   ebx,al
fffff803`d9a5579c e8d317f1ff      call    nt!CcGetVacbFromFreeList (fffff803`d9966f74)
fffff803`d9a557a1 0fb6d3          movzx   edx,bl
fffff803`d9a557a4 b904000000      mov     ecx,4
fffff803`d9a557a9 488bf0          mov     rsi,rax
fffff803`d9a557ac e87fcceeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a557b1 4885f6          test    rsi,rsi
fffff803`d9a557b4 74c4            je      nt! ?? ::FNODOBFM::`string'+0x5ca4 (fffff803`d9a5577a)

nt! ?? ::FNODOBFM::`string'+0x5ce4:
fffff803`d9a557b6 e97613f1ff      jmp     nt!CcGetVacbMiss+0x111 (fffff803`d9966b31)

nt! ?? ::FNODOBFM::`string'+0x5ce9:
fffff803`d9a557bb 4885f6          test    rsi,rsi
fffff803`d9a557be 0f856d13f1ff    jne     nt!CcGetVacbMiss+0x111 (fffff803`d9966b31)

nt! ?? ::FNODOBFM::`string'+0x5cf2:
fffff803`d9a557c4 4183fc01        cmp     r12d,1
fffff803`d9a557c8 7506            jne     nt! ?? ::FNODOBFM::`string'+0x5d02 (fffff803`d9a557d0)

nt! ?? ::FNODOBFM::`string'+0x5cfc:
fffff803`d9a557ca ff0558931100    inc     dword ptr [nt!CcDbgNumberOfFailedHighPriorityMappingsDueToCcResources (fffff803`d9b6eb28)]

nt! ?? ::FNODOBFM::`string'+0x5d02:
fffff803`d9a557d0 41bc9a0000c0    mov     r12d,0C000009Ah

nt! ?? ::FNODOBFM::`string'+0x5d08:
fffff803`d9a557d6 4584ff          test    r15b,r15b
fffff803`d9a557d9 0f85a514f1ff    jne     nt!CcGetVacbMiss+0x264 (fffff803`d9966c84)

nt! ?? ::FNODOBFM::`string'+0x5d11:
fffff803`d9a557df 837d5801        cmp     dword ptr [rbp+58h],1
fffff803`d9a557e3 0f859b14f1ff    jne     nt!CcGetVacbMiss+0x264 (fffff803`d9966c84)

nt! ?? ::FNODOBFM::`string'+0x5d1b:
fffff803`d9a557e9 8b5dc0          mov     ebx,dword ptr [rbp-40h]
fffff803`d9a557ec 448b6558        mov     r12d,dword ptr [rbp+58h]
fffff803`d9a557f0 41b701          mov     r15b,1
fffff803`d9a557f3 44887d40        mov     byte ptr [rbp+40h],r15b
fffff803`d9a557f7 e99212f1ff      jmp     nt!CcGetVacbMiss+0x6e (fffff803`d9966a8e)

nt! ?? ::FNODOBFM::`string'+0x5d2e:
fffff803`d9a557fc 448b45c0        mov     r8d,dword ptr [rbp-40h]
fffff803`d9a55800 488bd7          mov     rdx,rdi
fffff803`d9a55803 488bce          mov     rcx,rsi
fffff803`d9a55806 41bc9a0000c0    mov     r12d,0C000009Ah
fffff803`d9a5580c e8bb632700      call    nt!CcUnmapVacb (fffff803`d9ccbbcc)

nt! ?? ::FNODOBFM::`string'+0x5d43:
fffff803`d9a55811 0f0d4f68        prefetchw [rdi+68h]
fffff803`d9a55815 488b4768        mov     rax,qword ptr [rdi+68h]
fffff803`d9a55819 33d2            xor     edx,edx
fffff803`d9a5581b 488bc8          mov     rcx,rax
fffff803`d9a5581e 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`d9a55822 4883f910        cmp     rcx,10h
fffff803`d9a55826 488d48f0        lea     rcx,[rax-10h]
fffff803`d9a5582a 7702            ja      nt! ?? ::FNODOBFM::`string'+0x5d64 (fffff803`d9a5582e)

nt! ?? ::FNODOBFM::`string'+0x5d62:
fffff803`d9a5582c 8bca            mov     ecx,edx

nt! ?? ::FNODOBFM::`string'+0x5d64:
fffff803`d9a5582e a802            test    al,2
fffff803`d9a55830 7508            jne     nt! ?? ::FNODOBFM::`string'+0x5d78 (fffff803`d9a5583a)

nt! ?? ::FNODOBFM::`string'+0x5d6c:
fffff803`d9a55832 f0480fb14f68    lock cmpxchg qword ptr [rdi+68h],rcx
fffff803`d9a55838 740b            je      nt! ?? ::FNODOBFM::`string'+0x5d83 (fffff803`d9a55845)

nt! ?? ::FNODOBFM::`string'+0x5d78:
fffff803`d9a5583a 488d4f68        lea     rcx,[rdi+68h]
fffff803`d9a5583e e8a9abeeff      call    nt!ExfReleasePushLock (fffff803`d99403ec)
fffff803`d9a55843 33d2            xor     edx,edx

nt! ?? ::FNODOBFM::`string'+0x5d83:
fffff803`d9a55845 4585ed          test    r13d,r13d
fffff803`d9a55848 742e            je      nt! ?? ::FNODOBFM::`string'+0x5dbe (fffff803`d9a55878)

nt! ?? ::FNODOBFM::`string'+0x5d8c:
fffff803`d9a5584a 488d8f18010000  lea     rcx,[rdi+118h]
fffff803`d9a55851 33c0            xor     eax,eax
fffff803`d9a55853 41b801000000    mov     r8d,1
fffff803`d9a55859 0fb65930        movzx   ebx,byte ptr [rcx+30h]
fffff803`d9a5585d 48895108        mov     qword ptr [rcx+8],rdx
fffff803`d9a55861 f0440fb101      lock cmpxchg dword ptr [rcx],r8d
fffff803`d9a55866 7409            je      nt! ?? ::FNODOBFM::`string'+0x5db7 (fffff803`d9a55871)

nt! ?? ::FNODOBFM::`string'+0x5dae:
fffff803`d9a55868 8bd0            mov     edx,eax
fffff803`d9a5586a e8bd17f3ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9a5586f 33d2            xor     edx,edx

nt! ?? ::FNODOBFM::`string'+0x5db7:
fffff803`d9a55871 0fb6c3          movzx   eax,bl
fffff803`d9a55874 440f22c0        mov     cr8,rax

nt! ?? ::FNODOBFM::`string'+0x5dbe:
fffff803`d9a55878 4584ff          test    r15b,r15b
fffff803`d9a5587b 0f84c916f1ff    je      nt!CcGetVacbMiss+0x52a (fffff803`d9966f4a)

nt! ?? ::FNODOBFM::`string'+0x5dc7:
fffff803`d9a55881 ff059d921100    inc     dword ptr [nt!CcDbgNumberOfFailedHighPriorityMappingsDueToMmResources (fffff803`d9b6eb24)]

nt! ?? ::FNODOBFM::`string'+0x5dcd:
fffff803`d9a55887 b904000000      mov     ecx,4
fffff803`d9a5588c e82f00eeff      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d9a55891 410fb6d7        movzx   edx,r15b
fffff803`d9a55895 488bce          mov     rcx,rsi
fffff803`d9a55898 0fb6d8          movzx   ebx,al
fffff803`d9a5589b e8147ee3ff      call    nt!CcSetVacbInFreeList (fffff803`d988d6b4)
fffff803`d9a558a0 0fb6d3          movzx   edx,bl
fffff803`d9a558a3 b904000000      mov     ecx,4
fffff803`d9a558a8 e883cbeeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a558ad 33c0            xor     eax,eax
fffff803`d9a558af baeb0000c0      mov     edx,0C00000EBh
fffff803`d9a558b4 418bcc          mov     ecx,r12d
fffff803`d9a558b7 8bf0            mov     esi,eax
fffff803`d9a558b9 e8a269f4ff      call    nt!FsRtlNormalizeNtstatus (fffff803`d999c260)
fffff803`d9a558be 448be0          mov     r12d,eax
fffff803`d9a558c1 e9b513f1ff      jmp     nt!CcGetVacbMiss+0x25b (fffff803`d9966c7b)

nt! ?? ::FNODOBFM::`string'+0x5e0c:
fffff803`d9a558c6 33c0            xor     eax,eax
fffff803`d9a558c8 4533c9          xor     r9d,r9d
fffff803`d9a558cb ba08090000      mov     edx,908h
fffff803`d9a558d0 8d4834          lea     ecx,[rax+34h]
fffff803`d9a558d3 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a558da 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a558df e85cabe8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a558e4 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x5e2b:
fffff803`d9a558e5 33c0            xor     eax,eax
fffff803`d9a558e7 4533c9          xor     r9d,r9d
fffff803`d9a558ea ba07090000      mov     edx,907h
fffff803`d9a558ef 8d4834          lea     ecx,[rax+34h]
fffff803`d9a558f2 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a558f9 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a558fe e83dabe8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55903 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x5e4a:
fffff803`d9a55904 33c0            xor     eax,eax
fffff803`d9a55906 4533c9          xor     r9d,r9d
fffff803`d9a55909 ba64070000      mov     edx,764h
fffff803`d9a5590e 8d4834          lea     ecx,[rax+34h]
fffff803`d9a55911 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a55918 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a5591d e81eabe8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55922 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x5e69:
fffff803`d9a55923 b903000000      mov     ecx,3
fffff803`d9a55928 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x5e70:
fffff803`d9a5592a 33c0            xor     eax,eax
fffff803`d9a5592c 4533c9          xor     r9d,r9d
fffff803`d9a5592f ba08090000      mov     edx,908h
fffff803`d9a55934 8d4834          lea     ecx,[rax+34h]
fffff803`d9a55937 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a5593e 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a55943 e8f8aae8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55948 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x5e8f:
fffff803`d9a55949 33c0            xor     eax,eax
fffff803`d9a5594b 4533c9          xor     r9d,r9d
fffff803`d9a5594e ba07090000      mov     edx,907h
fffff803`d9a55953 8d4834          lea     ecx,[rax+34h]
fffff803`d9a55956 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a5595d 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a55962 e8d9aae8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55967 cc              int     3
fffff803`d9a55968 8ad0            mov     dl,al
fffff803`d9a5596a e8c1caeeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a5596f 33c0            xor     eax,eax
fffff803`d9a55971 e924dae3ff      jmp     nt!CcAllocateInitializeVacbArray+0x82 (fffff803`d989339a)

nt! ?? ::FNODOBFM::`string'+0x5eda:
fffff803`d9a55998 488d0571911100  lea     rax,[nt!CcVacbFreeHighPriorityList (fffff803`d9b6eb10)]
fffff803`d9a5599f 4c8d0536911100  lea     r8,[nt!CcNumberOfFreeHighPriorityVacbs (fffff803`d9b6eadc)]
fffff803`d9a559a6 e9e715f1ff      jmp     nt!CcGetVacbFromFreeList+0x1e (fffff803`d9966f92)

nt! ?? ::FNODOBFM::`string'+0x5eed:
fffff803`d9a559ab 488364242000    and     qword ptr [rsp+20h],0
fffff803`d9a559b1 4533c9          xor     r9d,r9d
fffff803`d9a559b4 ba13030000      mov     edx,313h
fffff803`d9a559b9 418d4934        lea     ecx,[r9+34h]
fffff803`d9a559bd 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a559c4 e877aae8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a559c9 cc              int     3
fffff803`d9a559ca 90              nop
fffff803`d9a559cb 90              nop
fffff803`d9a559cc 488d153d911100  lea     rdx,[nt!CcVacbFreeHighPriorityList (fffff803`d9b6eb10)]
fffff803`d9a559d3 e8a84ff9ff      call    nt!CcSetVacbIntoList (fffff803`d99ea980)
fffff803`d9a559d8 4983600800      and     qword ptr [r8+8],0
fffff803`d9a559dd ff05f9901100    inc     dword ptr [nt!CcNumberOfFreeHighPriorityVacbs (fffff803`d9b6eadc)]
fffff803`d9a559e3 e9217de3ff      jmp     nt!CcSetVacbInFreeList+0x55 (fffff803`d988d709)

nt! ?? ::FNODOBFM::`string'+0x5fc0:
fffff803`d9a55a90 488364242000    and     qword ptr [rsp+20h],0
fffff803`d9a55a96 4533c9          xor     r9d,r9d
fffff803`d9a55a99 ba17010000      mov     edx,117h
fffff803`d9a55a9e 418d4934        lea     ecx,[r9+34h]
fffff803`d9a55aa2 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a55aa9 e892a9e8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55aae cc              int     3
fffff803`d9a55aaf 90              nop
fffff803`d9a55ab0 4533c9          xor     r9d,r9d
fffff803`d9a55ab3 ba08090000      mov     edx,908h
fffff803`d9a55ab8 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a55abf 418d4934        lea     ecx,[r9+34h]
fffff803`d9a55ac3 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`d9a55ac8 e873a9e8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55acd cc              int     3
fffff803`d9a55ace 4533c9          xor     r9d,r9d
fffff803`d9a55ad1 ba07090000      mov     edx,907h
fffff803`d9a55ad6 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a55add 418d4934        lea     ecx,[r9+34h]
fffff803`d9a55ae1 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`d9a55ae6 e855a9e8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55aeb cc              int     3
fffff803`d9a55aec b8400000c0      mov     eax,0C0000040h
fffff803`d9a55af1 e9806af2ff      jmp     nt!CcExtendVacbArray+0x1f6 (fffff803`d997c576)
