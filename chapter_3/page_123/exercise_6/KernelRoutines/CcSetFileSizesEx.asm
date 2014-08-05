nt!CcSetFileSizesEx:
fffff803`21d1db60 4c8bdc          mov     r11,rsp
fffff803`21d1db63 55              push    rbp
fffff803`21d1db64 56              push    rsi
fffff803`21d1db65 57              push    rdi
fffff803`21d1db66 4154            push    r12
fffff803`21d1db68 4156            push    r14
fffff803`21d1db6a 4157            push    r15
fffff803`21d1db6c 4883ec48        sub     rsp,48h
fffff803`21d1db70 488b02          mov     rax,qword ptr [rdx]
fffff803`21d1db73 488b7a10        mov     rdi,qword ptr [rdx+10h]
fffff803`21d1db77 33ed            xor     ebp,ebp
fffff803`21d1db79 49894310        mov     qword ptr [r11+10h],rax
fffff803`21d1db7d 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`21d1db81 4c8bf9          mov     r15,rcx
fffff803`21d1db84 49894308        mov     qword ptr [r11+8],rax
fffff803`21d1db88 448bf5          mov     r14d,ebp
fffff803`21d1db8b 450f20c4        mov     r12,cr8
fffff803`21d1db8f b802000000      mov     eax,2
fffff803`21d1db94 440f22c0        mov     cr8,rax
fffff803`21d1db98 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`21d1dba1 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`21d1dba5 4883c150        add     rcx,50h
fffff803`21d1dba9 f705d1c42a0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d1dbb3 0f8503111200    jne     nt! ?? ::FNODOBFM::`string'+0x26e6 (fffff803`21e3ecbc)

nt!CcSetFileSizesEx+0x59:
fffff803`21d1dbb9 488bd1          mov     rdx,rcx
fffff803`21d1dbbc 498710          xchg    rdx,qword ptr [r8]
fffff803`21d1dbbf 4885d2          test    rdx,rdx
fffff803`21d1dbc2 0f856d020000    jne     nt!CcSetFileSizesEx+0x2d4 (fffff803`21d1de35)

nt!CcSetFileSizesEx+0x68:
fffff803`21d1dbc8 498b7728        mov     rsi,qword ptr [r15+28h]
fffff803`21d1dbcc 488b7608        mov     rsi,qword ptr [rsi+8]
fffff803`21d1dbd0 4885f6          test    rsi,rsi
fffff803`21d1dbd3 0f841b030000    je      nt!CcSetFileSizesEx+0x391 (fffff803`21d1def4)

nt!CcSetFileSizesEx+0x79:
fffff803`21d1dbd9 4839aea8000000  cmp     qword ptr [rsi+0A8h],rbp
fffff803`21d1dbe0 0f840e030000    je      nt!CcSetFileSizesEx+0x391 (fffff803`21d1def4)

nt!CcSetFileSizesEx+0x86:
fffff803`21d1dbe6 48899c2490000000 mov     qword ptr [rsp+90h],rbx
fffff803`21d1dbee 488b9c2488000000 mov     rbx,qword ptr [rsp+88h]
fffff803`21d1dbf6 4c896c2440      mov     qword ptr [rsp+40h],r13
fffff803`21d1dbfb 4c8d2ddecf2300  lea     r13,[nt!CcLazyWriterCursor (fffff803`21f5abe0)]
fffff803`21d1dc02 483b5e20        cmp     rbx,qword ptr [rsi+20h]
fffff803`21d1dc06 0f8f94010000    jg      nt!CcSetFileSizesEx+0x240 (fffff803`21d1dda0)

nt!CcSetFileSizesEx+0xac:
fffff803`21d1dc0c 488b4e28        mov     rcx,qword ptr [rsi+28h]
fffff803`21d1dc10 ff4604          inc     dword ptr [rsi+4]
fffff803`21d1dc13 488b842480000000 mov     rax,qword ptr [rsp+80h]
fffff803`21d1dc1b 48baffffffffffffff7f mov rdx,7FFFFFFFFFFFFFFFh
fffff803`21d1dc25 483bca          cmp     rcx,rdx
fffff803`21d1dc28 757b            jne     nt!CcSetFileSizesEx+0x145 (fffff803`21d1dca5)

nt!CcSetFileSizesEx+0xca:
fffff803`21d1dc2a 483b4608        cmp     rax,qword ptr [rsi+8]
fffff803`21d1dc2e 0f8c83000000    jl      nt!CcSetFileSizesEx+0x157 (fffff803`21d1dcb7)

nt!CcSetFileSizesEx+0xd4:
fffff803`21d1dc34 ff4e04          dec     dword ptr [rsi+4]
fffff803`21d1dc37 48894608        mov     qword ptr [rsi+8],rax
fffff803`21d1dc3b 0f840c020000    je      nt!CcSetFileSizesEx+0x2eb (fffff803`21d1de4d)

nt!CcSetFileSizesEx+0xe1:
fffff803`21d1dc41 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`21d1dc4a 4883c350        add     rbx,50h
fffff803`21d1dc4e f7052cc42a0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d1dc58 0f85fd121200    jne     nt! ?? ::FNODOBFM::`string'+0x29cc (fffff803`21e3ef5b)

nt!CcSetFileSizesEx+0xfe:
fffff803`21d1dc5e 0f0d0b          prefetchw [rbx]
fffff803`21d1dc61 488b03          mov     rax,qword ptr [rbx]
fffff803`21d1dc64 4885c0          test    rax,rax
fffff803`21d1dc67 0f8525010000    jne     nt!CcSetFileSizesEx+0x232 (fffff803`21d1dd92)

nt!CcSetFileSizesEx+0x10d:
fffff803`21d1dc6d 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`21d1dc71 488bc3          mov     rax,rbx
fffff803`21d1dc74 f0480fb129      lock cmpxchg qword ptr [rcx],rbp
fffff803`21d1dc79 0f850b010000    jne     nt!CcSetFileSizesEx+0x22a (fffff803`21d1dd8a)

nt!CcSetFileSizesEx+0x11f:
fffff803`21d1dc7f 410fb6c4        movzx   eax,r12b
fffff803`21d1dc83 440f22c0        mov     cr8,rax
fffff803`21d1dc87 418bc6          mov     eax,r14d

nt!CcSetFileSizesEx+0x12a:
fffff803`21d1dc8a 488b9c2490000000 mov     rbx,qword ptr [rsp+90h]
fffff803`21d1dc92 4c8b6c2440      mov     r13,qword ptr [rsp+40h]
fffff803`21d1dc97 4883c448        add     rsp,48h
fffff803`21d1dc9b 415f            pop     r15
fffff803`21d1dc9d 415e            pop     r14
fffff803`21d1dc9f 415c            pop     r12
fffff803`21d1dca1 5f              pop     rdi
fffff803`21d1dca2 5e              pop     rsi
fffff803`21d1dca3 5d              pop     rbp
fffff803`21d1dca4 c3              ret

nt!CcSetFileSizesEx+0x145:
fffff803`21d1dca5 483bc1          cmp     rax,rcx
fffff803`21d1dca8 0f8ccf000000    jl      nt!CcSetFileSizesEx+0x21d (fffff803`21d1dd7d)

nt!CcSetFileSizesEx+0x14e:
fffff803`21d1dcae 48897e30        mov     qword ptr [rsi+30h],rdi
fffff803`21d1dcb2 e973ffffff      jmp     nt!CcSetFileSizesEx+0xca (fffff803`21d1dc2a)

nt!CcSetFileSizesEx+0x157:
fffff803`21d1dcb7 8b8e98000000    mov     ecx,dword ptr [rsi+98h]
fffff803`21d1dcbd f6c104          test    cl,4
fffff803`21d1dcc0 0f856effffff    jne     nt!CcSetFileSizesEx+0xd4 (fffff803`21d1dc34)

nt!CcSetFileSizesEx+0x166:
fffff803`21d1dcc6 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`21d1dccf 4883c350        add     rbx,50h
fffff803`21d1dcd3 f705a7c32a0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d1dcdd 0f8537111200    jne     nt! ?? ::FNODOBFM::`string'+0x2867 (fffff803`21e3ee1a)

nt!CcSetFileSizesEx+0x183:
fffff803`21d1dce3 0f0d0b          prefetchw [rbx]
fffff803`21d1dce6 488b03          mov     rax,qword ptr [rbx]
fffff803`21d1dce9 4885c0          test    rax,rax
fffff803`21d1dcec 0f8554020000    jne     nt!CcSetFileSizesEx+0x3e3 (fffff803`21d1df46)

nt!CcSetFileSizesEx+0x192:
fffff803`21d1dcf2 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`21d1dcf6 488bc3          mov     rax,rbx
fffff803`21d1dcf9 f0480fb129      lock cmpxchg qword ptr [rcx],rbp
fffff803`21d1dcfe 0f853a020000    jne     nt!CcSetFileSizesEx+0x3db (fffff803`21d1df3e)

nt!CcSetFileSizesEx+0x1a4:
fffff803`21d1dd04 410fb6c4        movzx   eax,r12b
fffff803`21d1dd08 440f22c0        mov     cr8,rax
fffff803`21d1dd0c 488d942480000000 lea     rdx,[rsp+80h]
fffff803`21d1dd14 4533c9          xor     r9d,r9d
fffff803`21d1dd17 4533c0          xor     r8d,r8d
fffff803`21d1dd1a 488bce          mov     rcx,rsi
fffff803`21d1dd1d 40886c2420      mov     byte ptr [rsp+20h],bpl
fffff803`21d1dd22 e8d9080100      call    nt!CcUnmapVacbArray (fffff803`21d2e600)
fffff803`21d1dd27 84c0            test    al,al
fffff803`21d1dd29 7437            je      nt!CcSetFileSizesEx+0x202 (fffff803`21d1dd62)

nt!CcSetFileSizesEx+0x1cb:
fffff803`21d1dd2b 4839ac2480000000 cmp     qword ptr [rsp+80h],rbp
fffff803`21d1dd33 751a            jne     nt!CcSetFileSizesEx+0x1ef (fffff803`21d1dd4f)

nt!CcSetFileSizesEx+0x1d5:
fffff803`21d1dd35 4839aea0000000  cmp     qword ptr [rsi+0A0h],rbp
fffff803`21d1dd3c 0f85fe000000    jne     nt!CcSetFileSizesEx+0x2de (fffff803`21d1de40)

nt!CcSetFileSizesEx+0x1e2:
fffff803`21d1dd42 488d4610        lea     rax,[rsi+10h]
fffff803`21d1dd46 483900          cmp     qword ptr [rax],rax
fffff803`21d1dd49 0f85de101200    jne     nt! ?? ::FNODOBFM::`string'+0x287a (fffff803`21e3ee2d)

nt!CcSetFileSizesEx+0x1ef:
fffff803`21d1dd4f 488d942480000000 lea     rdx,[rsp+80h]
fffff803`21d1dd57 488bce          mov     rcx,rsi
fffff803`21d1dd5a e8f9740400      call    nt!CcPurgeAndClearCacheSection (fffff803`21d65258)
fffff803`21d1dd5f 448bf0          mov     r14d,eax

nt!CcSetFileSizesEx+0x202:
fffff803`21d1dd62 b905000000      mov     ecx,5
fffff803`21d1dd67 e8543b0000      call    nt!KeAcquireQueuedSpinLock (fffff803`21d218c0)
fffff803`21d1dd6c 440fb6e0        movzx   r12d,al
fffff803`21d1dd70 488b842480000000 mov     rax,qword ptr [rsp+80h]
fffff803`21d1dd78 e9b7feffff      jmp     nt!CcSetFileSizesEx+0xd4 (fffff803`21d1dc34)

nt!CcSetFileSizesEx+0x21d:
fffff803`21d1dd7d 48894628        mov     qword ptr [rsi+28h],rax
fffff803`21d1dd81 48897e30        mov     qword ptr [rsi+30h],rdi
fffff803`21d1dd85 e9a0feffff      jmp     nt!CcSetFileSizesEx+0xca (fffff803`21d1dc2a)

nt!CcSetFileSizesEx+0x22a:
fffff803`21d1dd8a 488bcb          mov     rcx,rbx
fffff803`21d1dd8d e8de270100      call    nt!KxWaitForLockChainValid (fffff803`21d30570)

nt!CcSetFileSizesEx+0x232:
fffff803`21d1dd92 f04883700801    lock xor qword ptr [rax+8],1
fffff803`21d1dd98 48892b          mov     qword ptr [rbx],rbp
fffff803`21d1dd9b e9dffeffff      jmp     nt!CcSetFileSizesEx+0x11f (fffff803`21d1dc7f)

nt!CcSetFileSizesEx+0x240:
fffff803`21d1dda0 ff4604          inc     dword ptr [rsi+4]
fffff803`21d1dda3 410fb6d4        movzx   edx,r12b
fffff803`21d1dda7 b905000000      mov     ecx,5
fffff803`21d1ddac e87f060100      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21d1ddb1 488b8ea8000000  mov     rcx,qword ptr [rsi+0A8h]
fffff803`21d1ddb8 4881c3ffff0f00  add     rbx,0FFFFFh
fffff803`21d1ddbf 48899c2488000000 mov     qword ptr [rsp+88h],rbx
fffff803`21d1ddc7 81a424880000000000f0ff and dword ptr [rsp+88h],0FFF00000h
fffff803`21d1ddd2 488d942488000000 lea     rdx,[rsp+88h]
fffff803`21d1ddda 41b801000000    mov     r8d,1
fffff803`21d1dde0 e803473f00      call    nt!MmExtendSection (fffff803`221124e8)
fffff803`21d1dde5 85c0            test    eax,eax
fffff803`21d1dde7 0f88de0e1200    js      nt! ?? ::FNODOBFM::`string'+0x26f4 (fffff803`21e3eccb)

nt!CcSetFileSizesEx+0x28d:
fffff803`21d1dded 488b942488000000 mov     rdx,qword ptr [rsp+88h]
fffff803`21d1ddf5 488bce          mov     rcx,rsi
fffff803`21d1ddf8 e883a50400      call    nt!CcExtendVacbArray (fffff803`21d68380)

nt!CcSetFileSizesEx+0x29d:
fffff803`21d1ddfd b905000000      mov     ecx,5
fffff803`21d1de02 8bd8            mov     ebx,eax
fffff803`21d1de04 e8b73a0000      call    nt!KeAcquireQueuedSpinLock (fffff803`21d218c0)
fffff803`21d1de09 ff4e04          dec     dword ptr [rsi+4]
fffff803`21d1de0c 440fb6e0        movzx   r12d,al
fffff803`21d1de10 0f8475010000    je      nt!CcSetFileSizesEx+0x427 (fffff803`21d1df8b)

nt!CcSetFileSizesEx+0x2b6:
fffff803`21d1de16 85db            test    ebx,ebx
fffff803`21d1de18 0f88d10f1200    js      nt! ?? ::FNODOBFM::`string'+0x283c (fffff803`21e3edef)

nt!CcSetFileSizesEx+0x2be:
fffff803`21d1de1e 498b7728        mov     rsi,qword ptr [r15+28h]
fffff803`21d1de22 488b7608        mov     rsi,qword ptr [rsi+8]
fffff803`21d1de26 4885f6          test    rsi,rsi
fffff803`21d1de29 0f85ddfdffff    jne     nt!CcSetFileSizesEx+0xac (fffff803`21d1dc0c)

nt!CcSetFileSizesEx+0x2cf:
fffff803`21d1de2f e9d10f1200      jmp     nt! ?? ::FNODOBFM::`string'+0x2852 (fffff803`21e3ee05)

nt!CcSetFileSizesEx+0x2d4:
fffff803`21d1de35 e8a683ffff      call    nt!KxWaitForLockOwnerShip (fffff803`21d161e0)
fffff803`21d1de3a e989fdffff      jmp     nt!CcSetFileSizesEx+0x68 (fffff803`21d1dbc8)

nt!CcSetFileSizesEx+0x2de:
fffff803`21d1de40 488bce          mov     rcx,rsi
fffff803`21d1de43 e810560500      call    nt!CcDeleteMbcb (fffff803`21d73458)
fffff803`21d1de48 e9f5feffff      jmp     nt!CcSetFileSizesEx+0x1e2 (fffff803`21d1dd42)

nt!CcSetFileSizesEx+0x2eb:
fffff803`21d1de4d c6052dcf230001  mov     byte ptr [nt!LazyWriter+0x81 (fffff803`21f5ad81)],1
fffff803`21d1de54 8b8e98000000    mov     ecx,dword ptr [rsi+98h]
fffff803`21d1de5a 0fbae110        bt      ecx,10h
fffff803`21d1de5e 0f82d70f1200    jb      nt! ?? ::FNODOBFM::`string'+0x2888 (fffff803`21e3ee3b)

nt!CcSetFileSizesEx+0x302:
fffff803`21d1de64 396e70          cmp     dword ptr [rsi+70h],ebp
fffff803`21d1de67 0f85d4fdffff    jne     nt!CcSetFileSizesEx+0xe1 (fffff803`21d1dc41)

nt!CcSetFileSizesEx+0x30b:
fffff803`21d1de6d f6c120          test    cl,20h
fffff803`21d1de70 0f85cbfdffff    jne     nt!CcSetFileSizesEx+0xe1 (fffff803`21d1dc41)

nt!CcSetFileSizesEx+0x314:
fffff803`21d1de76 4532c0          xor     r8b,r8b
fffff803`21d1de79 4839ae10010000  cmp     qword ptr [rsi+110h],rbp
fffff803`21d1de80 0f85cb010000    jne     nt!CcSetFileSizesEx+0x4ed (fffff803`21d1e051)

nt!CcSetFileSizesEx+0x324:
fffff803`21d1de86 0fbae119        bt      ecx,19h
fffff803`21d1de8a 0f8268101200    jb      nt! ?? ::FNODOBFM::`string'+0x295d (fffff803`21e3eef8)

nt!CcSetFileSizesEx+0x32e:
fffff803`21d1de90 0fbae118        bt      ecx,18h
fffff803`21d1de94 0f825e101200    jb      nt! ?? ::FNODOBFM::`string'+0x295d (fffff803`21e3eef8)

nt!CcSetFileSizesEx+0x338:
fffff803`21d1de9a 4881c688000000  add     rsi,88h
fffff803`21d1dea1 488b0e          mov     rcx,qword ptr [rsi]
fffff803`21d1dea4 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`21d1dea8 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`21d1deac 0f859b101200    jne     nt! ?? ::FNODOBFM::`string'+0x29be (fffff803`21e3ef4d)

nt!CcSetFileSizesEx+0x350:
fffff803`21d1deb2 483930          cmp     qword ptr [rax],rsi
fffff803`21d1deb5 0f8592101200    jne     nt! ?? ::FNODOBFM::`string'+0x29be (fffff803`21e3ef4d)

nt!CcSetFileSizesEx+0x359:
fffff803`21d1debb 488908          mov     qword ptr [rax],rcx
fffff803`21d1debe 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d1dec2 488b051fcd2300  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)]
fffff803`21d1dec9 48894608        mov     qword ptr [rsi+8],rax
fffff803`21d1decd 4c892e          mov     qword ptr [rsi],r13
fffff803`21d1ded0 4c3928          cmp     qword ptr [rax],r13
fffff803`21d1ded3 0f856d101200    jne     nt! ?? ::FNODOBFM::`string'+0x29b7 (fffff803`21e3ef46)

nt!CcSetFileSizesEx+0x377:
fffff803`21d1ded9 488930          mov     qword ptr [rax],rsi
fffff803`21d1dedc 33d2            xor     edx,edx
fffff803`21d1dede 410fb6c8        movzx   ecx,r8b
fffff803`21d1dee2 488935ffcc2300  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)],rsi
fffff803`21d1dee9 e892b3f8ff      call    nt!CcScheduleLazyWriteScan (fffff803`21ca9280)
fffff803`21d1deee e94efdffff      jmp     nt!CcSetFileSizesEx+0xe1 (fffff803`21d1dc41)

nt!CcSetFileSizesEx+0x391:
fffff803`21d1def4 410fb6d4        movzx   edx,r12b
fffff803`21d1def8 b905000000      mov     ecx,5
fffff803`21d1defd e82e050100      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21d1df02 f7842480000000ff0f0000 test dword ptr [rsp+80h],0FFFh
fffff803`21d1df0d 7546            jne     nt!CcSetFileSizesEx+0x3f1 (fffff803`21d1df55)

nt!CcSetFileSizesEx+0x3ac:
fffff803`21d1df0f 498b4f28        mov     rcx,qword ptr [r15+28h]
fffff803`21d1df13 488d942480000000 lea     rdx,[rsp+80h]
fffff803`21d1df1b 4533c9          xor     r9d,r9d
fffff803`21d1df1e 4533c0          xor     r8d,r8d
fffff803`21d1df21 e8aa560400      call    nt!CcPurgeCacheSection (fffff803`21d635d0)
fffff803`21d1df26 84c0            test    al,al
fffff803`21d1df28 0f842c010000    je      nt!CcSetFileSizesEx+0x4f5 (fffff803`21d1e05a)

nt!CcSetFileSizesEx+0x3cb:
fffff803`21d1df2e 8bc5            mov     eax,ebp
fffff803`21d1df30 4883c448        add     rsp,48h
fffff803`21d1df34 415f            pop     r15
fffff803`21d1df36 415e            pop     r14
fffff803`21d1df38 415c            pop     r12
fffff803`21d1df3a 5f              pop     rdi
fffff803`21d1df3b 5e              pop     rsi
fffff803`21d1df3c 5d              pop     rbp
fffff803`21d1df3d c3              ret

nt!CcSetFileSizesEx+0x3db:
fffff803`21d1df3e 488bcb          mov     rcx,rbx
fffff803`21d1df41 e82a260100      call    nt!KxWaitForLockChainValid (fffff803`21d30570)

nt!CcSetFileSizesEx+0x3e3:
fffff803`21d1df46 f04883700801    lock xor qword ptr [rax+8],1
fffff803`21d1df4c 48892b          mov     qword ptr [rbx],rbp
fffff803`21d1df4f e9b0fdffff      jmp     nt!CcSetFileSizesEx+0x1a4 (fffff803`21d1dd04)

nt!CcSetFileSizesEx+0x3f1:
fffff803`21d1df55 498b4f28        mov     rcx,qword ptr [r15+28h]
fffff803`21d1df59 4c8d4c2430      lea     r9,[rsp+30h]
fffff803`21d1df5e 488d942480000000 lea     rdx,[rsp+80h]
fffff803`21d1df66 41b801000000    mov     r8d,1
fffff803`21d1df6c 896c2420        mov     dword ptr [rsp+20h],ebp
fffff803`21d1df70 e8830e0500      call    nt!MmFlushSection (fffff803`21d6edf8)
fffff803`21d1df75 8b442430        mov     eax,dword ptr [rsp+30h]
fffff803`21d1df79 85c0            test    eax,eax
fffff803`21d1df7b 7992            jns     nt!CcSetFileSizesEx+0x3ac (fffff803`21d1df0f)

nt!CcSetFileSizesEx+0x419:
fffff803`21d1df7d 4883c448        add     rsp,48h
fffff803`21d1df81 415f            pop     r15
fffff803`21d1df83 415e            pop     r14
fffff803`21d1df85 415c            pop     r12
fffff803`21d1df87 5f              pop     rdi
fffff803`21d1df88 5e              pop     rsi
fffff803`21d1df89 5d              pop     rbp
fffff803`21d1df8a c3              ret

nt!CcSetFileSizesEx+0x427:
fffff803`21d1df8b c605efcd230001  mov     byte ptr [nt!LazyWriter+0x81 (fffff803`21f5ad81)],1
fffff803`21d1df92 8b8698000000    mov     eax,dword ptr [rsi+98h]
fffff803`21d1df98 0fbae010        bt      eax,10h
fffff803`21d1df9c 0f823b0d1200    jb      nt! ?? ::FNODOBFM::`string'+0x2706 (fffff803`21e3ecdd)

nt!CcSetFileSizesEx+0x43e:
fffff803`21d1dfa2 396e70          cmp     dword ptr [rsi+70h],ebp
fffff803`21d1dfa5 0f856bfeffff    jne     nt!CcSetFileSizesEx+0x2b6 (fffff803`21d1de16)

nt!CcSetFileSizesEx+0x447:
fffff803`21d1dfab a820            test    al,20h
fffff803`21d1dfad 0f8563feffff    jne     nt!CcSetFileSizesEx+0x2b6 (fffff803`21d1de16)

nt!CcSetFileSizesEx+0x44f:
fffff803`21d1dfb3 4532c0          xor     r8b,r8b
fffff803`21d1dfb6 4839ae10010000  cmp     qword ptr [rsi+110h],rbp
fffff803`21d1dfbd 7570            jne     nt!CcSetFileSizesEx+0x4cb (fffff803`21d1e02f)

nt!CcSetFileSizesEx+0x45b:
fffff803`21d1dfbf 0fbae019        bt      eax,19h
fffff803`21d1dfc3 0f82d10d1200    jb      nt! ?? ::FNODOBFM::`string'+0x27db (fffff803`21e3ed9a)

nt!CcSetFileSizesEx+0x465:
fffff803`21d1dfc9 0fbae018        bt      eax,18h
fffff803`21d1dfcd 0f82c70d1200    jb      nt! ?? ::FNODOBFM::`string'+0x27db (fffff803`21e3ed9a)

nt!CcSetFileSizesEx+0x46f:
fffff803`21d1dfd3 4881c688000000  add     rsi,88h
fffff803`21d1dfda 488b0e          mov     rcx,qword ptr [rsi]
fffff803`21d1dfdd 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`21d1dfe1 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`21d1dfe5 7554            jne     nt!CcSetFileSizesEx+0x4d7 (fffff803`21d1e03b)

nt!CcSetFileSizesEx+0x483:
fffff803`21d1dfe7 483930          cmp     qword ptr [rax],rsi
fffff803`21d1dfea 754f            jne     nt!CcSetFileSizesEx+0x4d7 (fffff803`21d1e03b)

nt!CcSetFileSizesEx+0x488:
fffff803`21d1dfec 488908          mov     qword ptr [rax],rcx
fffff803`21d1dfef 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d1dff3 488b05eecb2300  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)]
fffff803`21d1dffa 48894608        mov     qword ptr [rsi+8],rax
fffff803`21d1dffe 4c892e          mov     qword ptr [rsi],r13
fffff803`21d1e001 4c3928          cmp     qword ptr [rax],r13
fffff803`21d1e004 752e            jne     nt!CcSetFileSizesEx+0x4d0 (fffff803`21d1e034)

nt!CcSetFileSizesEx+0x4a2:
fffff803`21d1e006 488930          mov     qword ptr [rax],rsi
fffff803`21d1e009 33d2            xor     edx,edx
fffff803`21d1e00b 410fb6c8        movzx   ecx,r8b
fffff803`21d1e00f 488935d2cb2300  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)],rsi
fffff803`21d1e016 e865b2f8ff      call    nt!CcScheduleLazyWriteScan (fffff803`21ca9280)
fffff803`21d1e01b e9f6fdffff      jmp     nt!CcSetFileSizesEx+0x2b6 (fffff803`21d1de16)

nt!CcSetFileSizesEx+0x4bc:
fffff803`21d1e020 b201            mov     dl,1
fffff803`21d1e022 0fb6ca          movzx   ecx,dl
fffff803`21d1e025 e856b2f8ff      call    nt!CcScheduleLazyWriteScan (fffff803`21ca9280)
fffff803`21d1e02a e9e7fdffff      jmp     nt!CcSetFileSizesEx+0x2b6 (fffff803`21d1de16)

nt!CcSetFileSizesEx+0x4cb:
fffff803`21d1e02f 41b001          mov     r8b,1
fffff803`21d1e032 eb8b            jmp     nt!CcSetFileSizesEx+0x45b (fffff803`21d1dfbf)

nt!CcSetFileSizesEx+0x4d0:
fffff803`21d1e034 b903000000      mov     ecx,3
fffff803`21d1e039 cd29            int     29h

nt!CcSetFileSizesEx+0x4d7:
fffff803`21d1e03b b903000000      mov     ecx,3
fffff803`21d1e040 cd29            int     29h

nt!CcSetFileSizesEx+0x4de:
fffff803`21d1e042 b201            mov     dl,1
fffff803`21d1e044 0fb6ca          movzx   ecx,dl
fffff803`21d1e047 e834b2f8ff      call    nt!CcScheduleLazyWriteScan (fffff803`21ca9280)
fffff803`21d1e04c e9f0fbffff      jmp     nt!CcSetFileSizesEx+0xe1 (fffff803`21d1dc41)

nt!CcSetFileSizesEx+0x4ed:
fffff803`21d1e051 41b001          mov     r8b,1
fffff803`21d1e054 e92dfeffff      jmp     nt!CcSetFileSizesEx+0x324 (fffff803`21d1de86)

nt!CcSetFileSizesEx+0x4f5:
fffff803`21d1e05a bd350400c0      mov     ebp,0C0000435h
fffff803`21d1e05f 8bc5            mov     eax,ebp
fffff803`21d1e061 4883c448        add     rsp,48h
fffff803`21d1e065 415f            pop     r15
fffff803`21d1e067 415e            pop     r14
fffff803`21d1e069 415c            pop     r12
fffff803`21d1e06b 5f              pop     rdi
fffff803`21d1e06c 5e              pop     rsi
fffff803`21d1e06d 5d              pop     rbp
fffff803`21d1e06e c3              ret

nt! ?? ::FNODOBFM::`string'+0x26e6:
fffff803`21e3ecbc 498bd0          mov     rdx,r8
fffff803`21e3ecbf e82ceafaff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`21ded6f0)
fffff803`21e3ecc4 90              nop
fffff803`21e3ecc5 e9feeeedff      jmp     nt!CcSetFileSizesEx+0x68 (fffff803`21d1dbc8)

nt! ?? ::FNODOBFM::`string'+0x26f4:
fffff803`21e3eccb baec0000c0      mov     edx,0C00000ECh
fffff803`21e3ecd0 8bc8            mov     ecx,eax
fffff803`21e3ecd2 e88995f4ff      call    nt!FsRtlNormalizeNtstatus (fffff803`21d88260)
fffff803`21e3ecd7 90              nop
fffff803`21e3ecd8 e920f1edff      jmp     nt!CcSetFileSizesEx+0x29d (fffff803`21d1ddfd)

nt! ?? ::FNODOBFM::`string'+0x2706:
fffff803`21e3ecdd 396e70          cmp     dword ptr [rsi+70h],ebp
fffff803`21e3ece0 0f853af3edff    jne     nt!CcSetFileSizesEx+0x4bc (fffff803`21d1e020)

nt! ?? ::FNODOBFM::`string'+0x270f:
fffff803`21e3ece6 0fbae019        bt      eax,19h
fffff803`21e3ecea 7206            jb      nt! ?? ::FNODOBFM::`string'+0x2723 (fffff803`21e3ecf2)

nt! ?? ::FNODOBFM::`string'+0x2719:
fffff803`21e3ecec 0fbae018        bt      eax,18h
fffff803`21e3ecf0 7351            jae     nt! ?? ::FNODOBFM::`string'+0x2778 (fffff803`21e3ed43)

nt! ?? ::FNODOBFM::`string'+0x2723:
fffff803`21e3ecf2 488b5678        mov     rdx,qword ptr [rsi+78h]
fffff803`21e3ecf6 488d4678        lea     rax,[rsi+78h]
fffff803`21e3ecfa 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21e3ecfe 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21e3ed02 0f858b000000    jne     nt! ?? ::FNODOBFM::`string'+0x27d4 (fffff803`21e3ed93)

nt! ?? ::FNODOBFM::`string'+0x2739:
fffff803`21e3ed08 483901          cmp     qword ptr [rcx],rax
fffff803`21e3ed0b 0f8582000000    jne     nt! ?? ::FNODOBFM::`string'+0x27d4 (fffff803`21e3ed93)

nt! ?? ::FNODOBFM::`string'+0x2742:
fffff803`21e3ed11 488911          mov     qword ptr [rcx],rdx
fffff803`21e3ed14 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21e3ed18 488b0d89be1100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`21f5aba8)]
fffff803`21e3ed1f 488d157abe1100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`21f5aba0)]
fffff803`21e3ed26 48894808        mov     qword ptr [rax+8],rcx
fffff803`21e3ed2a 488910          mov     qword ptr [rax],rdx
fffff803`21e3ed2d 483911          cmp     qword ptr [rcx],rdx
fffff803`21e3ed30 7407            je      nt! ?? ::FNODOBFM::`string'+0x276e (fffff803`21e3ed39)

nt! ?? ::FNODOBFM::`string'+0x2767:
fffff803`21e3ed32 b903000000      mov     ecx,3
fffff803`21e3ed37 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x276e:
fffff803`21e3ed39 488901          mov     qword ptr [rcx],rax
fffff803`21e3ed3c 48890565be1100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`21f5aba8)],rax

nt! ?? ::FNODOBFM::`string'+0x2778:
fffff803`21e3ed43 4881c688000000  add     rsi,88h
fffff803`21e3ed4a 488b0e          mov     rcx,qword ptr [rsi]
fffff803`21e3ed4d 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`21e3ed51 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`21e3ed55 7535            jne     nt! ?? ::FNODOBFM::`string'+0x27cd (fffff803`21e3ed8c)

nt! ?? ::FNODOBFM::`string'+0x2790:
fffff803`21e3ed57 483930          cmp     qword ptr [rax],rsi
fffff803`21e3ed5a 7530            jne     nt! ?? ::FNODOBFM::`string'+0x27cd (fffff803`21e3ed8c)

nt! ?? ::FNODOBFM::`string'+0x2799:
fffff803`21e3ed5c 488908          mov     qword ptr [rax],rcx
fffff803`21e3ed5f 48894108        mov     qword ptr [rcx+8],rax
fffff803`21e3ed63 488b057ebe1100  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)]
fffff803`21e3ed6a 48894608        mov     qword ptr [rsi+8],rax
fffff803`21e3ed6e 4c892e          mov     qword ptr [rsi],r13
fffff803`21e3ed71 4c3928          cmp     qword ptr [rax],r13
fffff803`21e3ed74 7407            je      nt! ?? ::FNODOBFM::`string'+0x27be (fffff803`21e3ed7d)

nt! ?? ::FNODOBFM::`string'+0x27b7:
fffff803`21e3ed76 b903000000      mov     ecx,3
fffff803`21e3ed7b cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x27be:
fffff803`21e3ed7d 488930          mov     qword ptr [rax],rsi
fffff803`21e3ed80 48893561be1100  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)],rsi
fffff803`21e3ed87 e994f2edff      jmp     nt!CcSetFileSizesEx+0x4bc (fffff803`21d1e020)

nt! ?? ::FNODOBFM::`string'+0x27cd:
fffff803`21e3ed8c b903000000      mov     ecx,3
fffff803`21e3ed91 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x27d4:
fffff803`21e3ed93 b903000000      mov     ecx,3
fffff803`21e3ed98 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x27db:
fffff803`21e3ed9a 488b5678        mov     rdx,qword ptr [rsi+78h]
fffff803`21e3ed9e 488d4678        lea     rax,[rsi+78h]
fffff803`21e3eda2 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21e3eda6 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21e3edaa 753c            jne     nt! ?? ::FNODOBFM::`string'+0x2835 (fffff803`21e3ede8)

nt! ?? ::FNODOBFM::`string'+0x27f1:
fffff803`21e3edac 483901          cmp     qword ptr [rcx],rax
fffff803`21e3edaf 7537            jne     nt! ?? ::FNODOBFM::`string'+0x2835 (fffff803`21e3ede8)

nt! ?? ::FNODOBFM::`string'+0x27fa:
fffff803`21e3edb1 488911          mov     qword ptr [rcx],rdx
fffff803`21e3edb4 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21e3edb8 488b0de9bd1100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`21f5aba8)]
fffff803`21e3edbf 488d15dabd1100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`21f5aba0)]
fffff803`21e3edc6 48894808        mov     qword ptr [rax+8],rcx
fffff803`21e3edca 488910          mov     qword ptr [rax],rdx
fffff803`21e3edcd 483911          cmp     qword ptr [rcx],rdx
fffff803`21e3edd0 7407            je      nt! ?? ::FNODOBFM::`string'+0x2826 (fffff803`21e3edd9)

nt! ?? ::FNODOBFM::`string'+0x281f:
fffff803`21e3edd2 b903000000      mov     ecx,3
fffff803`21e3edd7 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x2826:
fffff803`21e3edd9 488901          mov     qword ptr [rcx],rax
fffff803`21e3eddc 488905c5bd1100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`21f5aba8)],rax
fffff803`21e3ede3 e9ebf1edff      jmp     nt!CcSetFileSizesEx+0x46f (fffff803`21d1dfd3)

nt! ?? ::FNODOBFM::`string'+0x2835:
fffff803`21e3ede8 b903000000      mov     ecx,3
fffff803`21e3eded cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x283c:
fffff803`21e3edef 410fb6d4        movzx   edx,r12b
fffff803`21e3edf3 b905000000      mov     ecx,5
fffff803`21e3edf8 e833f6eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21e3edfd 8bcb            mov     ecx,ebx
fffff803`21e3edff e83c1df2ff      call    nt!RtlRaiseStatus (fffff803`21d60b40)
fffff803`21e3ee04 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x2852:
fffff803`21e3ee05 410fb6d4        movzx   edx,r12b
fffff803`21e3ee09 b905000000      mov     ecx,5
fffff803`21e3ee0e e81df6eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21e3ee13 33c0            xor     eax,eax
fffff803`21e3ee15 e970eeedff      jmp     nt!CcSetFileSizesEx+0x12a (fffff803`21d1dc8a)

nt! ?? ::FNODOBFM::`string'+0x2867:
fffff803`21e3ee1a 488b542478      mov     rdx,qword ptr [rsp+78h]
fffff803`21e3ee1f 488bcb          mov     rcx,rbx
fffff803`21e3ee22 e8a9e7faff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`21ded5d0)
fffff803`21e3ee27 90              nop
fffff803`21e3ee28 e9d7eeedff      jmp     nt!CcSetFileSizesEx+0x1a4 (fffff803`21d1dd04)

nt! ?? ::FNODOBFM::`string'+0x287a:
fffff803`21e3ee2d 488bce          mov     rcx,rsi
fffff803`21e3ee30 e8bb94e3ff      call    nt!CcDeleteBcbs (fffff803`21c782f0)
fffff803`21e3ee35 90              nop
fffff803`21e3ee36 e914efedff      jmp     nt!CcSetFileSizesEx+0x1ef (fffff803`21d1dd4f)

nt! ?? ::FNODOBFM::`string'+0x2888:
fffff803`21e3ee3b 396e70          cmp     dword ptr [rsi+70h],ebp
fffff803`21e3ee3e 0f85fef1edff    jne     nt!CcSetFileSizesEx+0x4de (fffff803`21d1e042)

nt! ?? ::FNODOBFM::`string'+0x2891:
fffff803`21e3ee44 0fbae119        bt      ecx,19h
fffff803`21e3ee48 7206            jb      nt! ?? ::FNODOBFM::`string'+0x28a5 (fffff803`21e3ee50)

nt! ?? ::FNODOBFM::`string'+0x289b:
fffff803`21e3ee4a 0fbae118        bt      ecx,18h
fffff803`21e3ee4e 7351            jae     nt! ?? ::FNODOBFM::`string'+0x28fa (fffff803`21e3eea1)

nt! ?? ::FNODOBFM::`string'+0x28a5:
fffff803`21e3ee50 488b5678        mov     rdx,qword ptr [rsi+78h]
fffff803`21e3ee54 488d4678        lea     rax,[rsi+78h]
fffff803`21e3ee58 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21e3ee5c 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21e3ee60 0f858b000000    jne     nt! ?? ::FNODOBFM::`string'+0x2956 (fffff803`21e3eef1)

nt! ?? ::FNODOBFM::`string'+0x28bb:
fffff803`21e3ee66 483901          cmp     qword ptr [rcx],rax
fffff803`21e3ee69 0f8582000000    jne     nt! ?? ::FNODOBFM::`string'+0x2956 (fffff803`21e3eef1)

nt! ?? ::FNODOBFM::`string'+0x28c4:
fffff803`21e3ee6f 488911          mov     qword ptr [rcx],rdx
fffff803`21e3ee72 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21e3ee76 488b0d2bbd1100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`21f5aba8)]
fffff803`21e3ee7d 488d151cbd1100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`21f5aba0)]
fffff803`21e3ee84 48894808        mov     qword ptr [rax+8],rcx
fffff803`21e3ee88 488910          mov     qword ptr [rax],rdx
fffff803`21e3ee8b 483911          cmp     qword ptr [rcx],rdx
fffff803`21e3ee8e 7407            je      nt! ?? ::FNODOBFM::`string'+0x28f0 (fffff803`21e3ee97)

nt! ?? ::FNODOBFM::`string'+0x28e9:
fffff803`21e3ee90 b903000000      mov     ecx,3
fffff803`21e3ee95 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x28f0:
fffff803`21e3ee97 488901          mov     qword ptr [rcx],rax
fffff803`21e3ee9a 48890507bd1100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`21f5aba8)],rax

nt! ?? ::FNODOBFM::`string'+0x28fa:
fffff803`21e3eea1 4881c688000000  add     rsi,88h
fffff803`21e3eea8 488b0e          mov     rcx,qword ptr [rsi]
fffff803`21e3eeab 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`21e3eeaf 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`21e3eeb3 7535            jne     nt! ?? ::FNODOBFM::`string'+0x294f (fffff803`21e3eeea)

nt! ?? ::FNODOBFM::`string'+0x2912:
fffff803`21e3eeb5 483930          cmp     qword ptr [rax],rsi
fffff803`21e3eeb8 7530            jne     nt! ?? ::FNODOBFM::`string'+0x294f (fffff803`21e3eeea)

nt! ?? ::FNODOBFM::`string'+0x291b:
fffff803`21e3eeba 488908          mov     qword ptr [rax],rcx
fffff803`21e3eebd 48894108        mov     qword ptr [rcx+8],rax
fffff803`21e3eec1 488b0520bd1100  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)]
fffff803`21e3eec8 48894608        mov     qword ptr [rsi+8],rax
fffff803`21e3eecc 4c892e          mov     qword ptr [rsi],r13
fffff803`21e3eecf 4c3928          cmp     qword ptr [rax],r13
fffff803`21e3eed2 7407            je      nt! ?? ::FNODOBFM::`string'+0x2940 (fffff803`21e3eedb)

nt! ?? ::FNODOBFM::`string'+0x2939:
fffff803`21e3eed4 b903000000      mov     ecx,3
fffff803`21e3eed9 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x2940:
fffff803`21e3eedb 488930          mov     qword ptr [rax],rsi
fffff803`21e3eede 48893503bd1100  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)],rsi
fffff803`21e3eee5 e958f1edff      jmp     nt!CcSetFileSizesEx+0x4de (fffff803`21d1e042)

nt! ?? ::FNODOBFM::`string'+0x294f:
fffff803`21e3eeea b903000000      mov     ecx,3
fffff803`21e3eeef cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x2956:
fffff803`21e3eef1 b903000000      mov     ecx,3
fffff803`21e3eef6 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x295d:
fffff803`21e3eef8 488b5678        mov     rdx,qword ptr [rsi+78h]
fffff803`21e3eefc 488d4678        lea     rax,[rsi+78h]
fffff803`21e3ef00 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21e3ef04 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21e3ef08 754a            jne     nt! ?? ::FNODOBFM::`string'+0x29c5 (fffff803`21e3ef54)

nt! ?? ::FNODOBFM::`string'+0x2973:
fffff803`21e3ef0a 483901          cmp     qword ptr [rcx],rax
fffff803`21e3ef0d 7545            jne     nt! ?? ::FNODOBFM::`string'+0x29c5 (fffff803`21e3ef54)

nt! ?? ::FNODOBFM::`string'+0x297c:
fffff803`21e3ef0f 488911          mov     qword ptr [rcx],rdx
fffff803`21e3ef12 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21e3ef16 488b0d8bbc1100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`21f5aba8)]
fffff803`21e3ef1d 488d157cbc1100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`21f5aba0)]
fffff803`21e3ef24 48894808        mov     qword ptr [rax+8],rcx
fffff803`21e3ef28 488910          mov     qword ptr [rax],rdx
fffff803`21e3ef2b 483911          cmp     qword ptr [rcx],rdx
fffff803`21e3ef2e 7407            je      nt! ?? ::FNODOBFM::`string'+0x29a8 (fffff803`21e3ef37)

nt! ?? ::FNODOBFM::`string'+0x29a1:
fffff803`21e3ef30 b903000000      mov     ecx,3
fffff803`21e3ef35 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x29a8:
fffff803`21e3ef37 488901          mov     qword ptr [rcx],rax
fffff803`21e3ef3a 48890567bc1100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`21f5aba8)],rax
fffff803`21e3ef41 e954efedff      jmp     nt!CcSetFileSizesEx+0x338 (fffff803`21d1de9a)

nt! ?? ::FNODOBFM::`string'+0x29b7:
fffff803`21e3ef46 b903000000      mov     ecx,3
fffff803`21e3ef4b cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x29be:
fffff803`21e3ef4d b903000000      mov     ecx,3
fffff803`21e3ef52 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x29c5:
fffff803`21e3ef54 b903000000      mov     ecx,3
fffff803`21e3ef59 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x29cc:
fffff803`21e3ef5b 488b542478      mov     rdx,qword ptr [rsp+78h]
fffff803`21e3ef60 488bcb          mov     rcx,rbx
fffff803`21e3ef63 e868e6faff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`21ded5d0)
fffff803`21e3ef68 90              nop
fffff803`21e3ef69 e911ededff      jmp     nt!CcSetFileSizesEx+0x11f (fffff803`21d1dc7f)
