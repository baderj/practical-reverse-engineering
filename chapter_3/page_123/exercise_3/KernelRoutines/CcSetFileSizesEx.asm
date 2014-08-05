0: kd> uf CcSetFileSizesEx
nt!CcSetFileSizesEx:
fffff803`d9931b60 4c8bdc          mov     r11,rsp
fffff803`d9931b63 55              push    rbp
fffff803`d9931b64 56              push    rsi
fffff803`d9931b65 57              push    rdi
fffff803`d9931b66 4154            push    r12
fffff803`d9931b68 4156            push    r14
fffff803`d9931b6a 4157            push    r15
fffff803`d9931b6c 4883ec48        sub     rsp,48h
fffff803`d9931b70 488b02          mov     rax,qword ptr [rdx]
fffff803`d9931b73 488b7a10        mov     rdi,qword ptr [rdx+10h]
fffff803`d9931b77 33ed            xor     ebp,ebp
fffff803`d9931b79 49894310        mov     qword ptr [r11+10h],rax
fffff803`d9931b7d 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`d9931b81 4c8bf9          mov     r15,rcx
fffff803`d9931b84 49894308        mov     qword ptr [r11+8],rax
fffff803`d9931b88 448bf5          mov     r14d,ebp
fffff803`d9931b8b 450f20c4        mov     r12,cr8
fffff803`d9931b8f b802000000      mov     eax,2
fffff803`d9931b94 440f22c0        mov     cr8,rax
fffff803`d9931b98 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`d9931ba1 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`d9931ba5 4883c150        add     rcx,50h
fffff803`d9931ba9 f705d1c42a0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d9931bb3 0f8503111200    jne     nt! ?? ::FNODOBFM::`string'+0x26e6 (fffff803`d9a52cbc)

nt!CcSetFileSizesEx+0x59:
fffff803`d9931bb9 488bd1          mov     rdx,rcx
fffff803`d9931bbc 498710          xchg    rdx,qword ptr [r8]
fffff803`d9931bbf 4885d2          test    rdx,rdx
fffff803`d9931bc2 0f856d020000    jne     nt!CcSetFileSizesEx+0x2d4 (fffff803`d9931e35)

nt!CcSetFileSizesEx+0x68:
fffff803`d9931bc8 498b7728        mov     rsi,qword ptr [r15+28h]
fffff803`d9931bcc 488b7608        mov     rsi,qword ptr [rsi+8]
fffff803`d9931bd0 4885f6          test    rsi,rsi
fffff803`d9931bd3 0f841b030000    je      nt!CcSetFileSizesEx+0x391 (fffff803`d9931ef4)

nt!CcSetFileSizesEx+0x79:
fffff803`d9931bd9 4839aea8000000  cmp     qword ptr [rsi+0A8h],rbp
fffff803`d9931be0 0f840e030000    je      nt!CcSetFileSizesEx+0x391 (fffff803`d9931ef4)

nt!CcSetFileSizesEx+0x86:
fffff803`d9931be6 48899c2490000000 mov     qword ptr [rsp+90h],rbx
fffff803`d9931bee 488b9c2488000000 mov     rbx,qword ptr [rsp+88h]
fffff803`d9931bf6 4c896c2440      mov     qword ptr [rsp+40h],r13
fffff803`d9931bfb 4c8d2ddecf2300  lea     r13,[nt!CcLazyWriterCursor (fffff803`d9b6ebe0)]
fffff803`d9931c02 483b5e20        cmp     rbx,qword ptr [rsi+20h]
fffff803`d9931c06 0f8f94010000    jg      nt!CcSetFileSizesEx+0x240 (fffff803`d9931da0)

nt!CcSetFileSizesEx+0xac:
fffff803`d9931c0c 488b4e28        mov     rcx,qword ptr [rsi+28h]
fffff803`d9931c10 ff4604          inc     dword ptr [rsi+4]
fffff803`d9931c13 488b842480000000 mov     rax,qword ptr [rsp+80h]
fffff803`d9931c1b 48baffffffffffffff7f mov rdx,7FFFFFFFFFFFFFFFh
fffff803`d9931c25 483bca          cmp     rcx,rdx
fffff803`d9931c28 757b            jne     nt!CcSetFileSizesEx+0x145 (fffff803`d9931ca5)

nt!CcSetFileSizesEx+0xca:
fffff803`d9931c2a 483b4608        cmp     rax,qword ptr [rsi+8]
fffff803`d9931c2e 0f8c83000000    jl      nt!CcSetFileSizesEx+0x157 (fffff803`d9931cb7)

nt!CcSetFileSizesEx+0xd4:
fffff803`d9931c34 ff4e04          dec     dword ptr [rsi+4]
fffff803`d9931c37 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9931c3b 0f840c020000    je      nt!CcSetFileSizesEx+0x2eb (fffff803`d9931e4d)

nt!CcSetFileSizesEx+0xe1:
fffff803`d9931c41 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`d9931c4a 4883c350        add     rbx,50h
fffff803`d9931c4e f7052cc42a0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d9931c58 0f85fd121200    jne     nt! ?? ::FNODOBFM::`string'+0x29cc (fffff803`d9a52f5b)

nt!CcSetFileSizesEx+0xfe:
fffff803`d9931c5e 0f0d0b          prefetchw [rbx]
fffff803`d9931c61 488b03          mov     rax,qword ptr [rbx]
fffff803`d9931c64 4885c0          test    rax,rax
fffff803`d9931c67 0f8525010000    jne     nt!CcSetFileSizesEx+0x232 (fffff803`d9931d92)

nt!CcSetFileSizesEx+0x10d:
fffff803`d9931c6d 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`d9931c71 488bc3          mov     rax,rbx
fffff803`d9931c74 f0480fb129      lock cmpxchg qword ptr [rcx],rbp
fffff803`d9931c79 0f850b010000    jne     nt!CcSetFileSizesEx+0x22a (fffff803`d9931d8a)

nt!CcSetFileSizesEx+0x11f:
fffff803`d9931c7f 410fb6c4        movzx   eax,r12b
fffff803`d9931c83 440f22c0        mov     cr8,rax
fffff803`d9931c87 418bc6          mov     eax,r14d

nt!CcSetFileSizesEx+0x12a:
fffff803`d9931c8a 488b9c2490000000 mov     rbx,qword ptr [rsp+90h]
fffff803`d9931c92 4c8b6c2440      mov     r13,qword ptr [rsp+40h]
fffff803`d9931c97 4883c448        add     rsp,48h
fffff803`d9931c9b 415f            pop     r15
fffff803`d9931c9d 415e            pop     r14
fffff803`d9931c9f 415c            pop     r12
fffff803`d9931ca1 5f              pop     rdi
fffff803`d9931ca2 5e              pop     rsi
fffff803`d9931ca3 5d              pop     rbp
fffff803`d9931ca4 c3              ret

nt!CcSetFileSizesEx+0x145:
fffff803`d9931ca5 483bc1          cmp     rax,rcx
fffff803`d9931ca8 0f8ccf000000    jl      nt!CcSetFileSizesEx+0x21d (fffff803`d9931d7d)

nt!CcSetFileSizesEx+0x14e:
fffff803`d9931cae 48897e30        mov     qword ptr [rsi+30h],rdi
fffff803`d9931cb2 e973ffffff      jmp     nt!CcSetFileSizesEx+0xca (fffff803`d9931c2a)

nt!CcSetFileSizesEx+0x157:
fffff803`d9931cb7 8b8e98000000    mov     ecx,dword ptr [rsi+98h]
fffff803`d9931cbd f6c104          test    cl,4
fffff803`d9931cc0 0f856effffff    jne     nt!CcSetFileSizesEx+0xd4 (fffff803`d9931c34)

nt!CcSetFileSizesEx+0x166:
fffff803`d9931cc6 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`d9931ccf 4883c350        add     rbx,50h
fffff803`d9931cd3 f705a7c32a0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d9931cdd 0f8537111200    jne     nt! ?? ::FNODOBFM::`string'+0x2867 (fffff803`d9a52e1a)

nt!CcSetFileSizesEx+0x183:
fffff803`d9931ce3 0f0d0b          prefetchw [rbx]
fffff803`d9931ce6 488b03          mov     rax,qword ptr [rbx]
fffff803`d9931ce9 4885c0          test    rax,rax
fffff803`d9931cec 0f8554020000    jne     nt!CcSetFileSizesEx+0x3e3 (fffff803`d9931f46)

nt!CcSetFileSizesEx+0x192:
fffff803`d9931cf2 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`d9931cf6 488bc3          mov     rax,rbx
fffff803`d9931cf9 f0480fb129      lock cmpxchg qword ptr [rcx],rbp
fffff803`d9931cfe 0f853a020000    jne     nt!CcSetFileSizesEx+0x3db (fffff803`d9931f3e)

nt!CcSetFileSizesEx+0x1a4:
fffff803`d9931d04 410fb6c4        movzx   eax,r12b
fffff803`d9931d08 440f22c0        mov     cr8,rax
fffff803`d9931d0c 488d942480000000 lea     rdx,[rsp+80h]
fffff803`d9931d14 4533c9          xor     r9d,r9d
fffff803`d9931d17 4533c0          xor     r8d,r8d
fffff803`d9931d1a 488bce          mov     rcx,rsi
fffff803`d9931d1d 40886c2420      mov     byte ptr [rsp+20h],bpl
fffff803`d9931d22 e8d9080100      call    nt!CcUnmapVacbArray (fffff803`d9942600)
fffff803`d9931d27 84c0            test    al,al
fffff803`d9931d29 7437            je      nt!CcSetFileSizesEx+0x202 (fffff803`d9931d62)

nt!CcSetFileSizesEx+0x1cb:
fffff803`d9931d2b 4839ac2480000000 cmp     qword ptr [rsp+80h],rbp
fffff803`d9931d33 751a            jne     nt!CcSetFileSizesEx+0x1ef (fffff803`d9931d4f)

nt!CcSetFileSizesEx+0x1d5:
fffff803`d9931d35 4839aea0000000  cmp     qword ptr [rsi+0A0h],rbp
fffff803`d9931d3c 0f85fe000000    jne     nt!CcSetFileSizesEx+0x2de (fffff803`d9931e40)

nt!CcSetFileSizesEx+0x1e2:
fffff803`d9931d42 488d4610        lea     rax,[rsi+10h]
fffff803`d9931d46 483900          cmp     qword ptr [rax],rax
fffff803`d9931d49 0f85de101200    jne     nt! ?? ::FNODOBFM::`string'+0x287a (fffff803`d9a52e2d)

nt!CcSetFileSizesEx+0x1ef:
fffff803`d9931d4f 488d942480000000 lea     rdx,[rsp+80h]
fffff803`d9931d57 488bce          mov     rcx,rsi
fffff803`d9931d5a e8f9740400      call    nt!CcPurgeAndClearCacheSection (fffff803`d9979258)
fffff803`d9931d5f 448bf0          mov     r14d,eax

nt!CcSetFileSizesEx+0x202:
fffff803`d9931d62 b905000000      mov     ecx,5
fffff803`d9931d67 e8543b0000      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d9931d6c 440fb6e0        movzx   r12d,al
fffff803`d9931d70 488b842480000000 mov     rax,qword ptr [rsp+80h]
fffff803`d9931d78 e9b7feffff      jmp     nt!CcSetFileSizesEx+0xd4 (fffff803`d9931c34)

nt!CcSetFileSizesEx+0x21d:
fffff803`d9931d7d 48894628        mov     qword ptr [rsi+28h],rax
fffff803`d9931d81 48897e30        mov     qword ptr [rsi+30h],rdi
fffff803`d9931d85 e9a0feffff      jmp     nt!CcSetFileSizesEx+0xca (fffff803`d9931c2a)

nt!CcSetFileSizesEx+0x22a:
fffff803`d9931d8a 488bcb          mov     rcx,rbx
fffff803`d9931d8d e8de270100      call    nt!KxWaitForLockChainValid (fffff803`d9944570)

nt!CcSetFileSizesEx+0x232:
fffff803`d9931d92 f04883700801    lock xor qword ptr [rax+8],1
fffff803`d9931d98 48892b          mov     qword ptr [rbx],rbp
fffff803`d9931d9b e9dffeffff      jmp     nt!CcSetFileSizesEx+0x11f (fffff803`d9931c7f)

nt!CcSetFileSizesEx+0x240:
fffff803`d9931da0 ff4604          inc     dword ptr [rsi+4]
fffff803`d9931da3 410fb6d4        movzx   edx,r12b
fffff803`d9931da7 b905000000      mov     ecx,5
fffff803`d9931dac e87f060100      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9931db1 488b8ea8000000  mov     rcx,qword ptr [rsi+0A8h]
fffff803`d9931db8 4881c3ffff0f00  add     rbx,0FFFFFh
fffff803`d9931dbf 48899c2488000000 mov     qword ptr [rsp+88h],rbx
fffff803`d9931dc7 81a424880000000000f0ff and dword ptr [rsp+88h],0FFF00000h
fffff803`d9931dd2 488d942488000000 lea     rdx,[rsp+88h]
fffff803`d9931dda 41b801000000    mov     r8d,1
fffff803`d9931de0 e803473f00      call    nt!MmExtendSection (fffff803`d9d264e8)
fffff803`d9931de5 85c0            test    eax,eax
fffff803`d9931de7 0f88de0e1200    js      nt! ?? ::FNODOBFM::`string'+0x26f4 (fffff803`d9a52ccb)

nt!CcSetFileSizesEx+0x28d:
fffff803`d9931ded 488b942488000000 mov     rdx,qword ptr [rsp+88h]
fffff803`d9931df5 488bce          mov     rcx,rsi
fffff803`d9931df8 e883a50400      call    nt!CcExtendVacbArray (fffff803`d997c380)

nt!CcSetFileSizesEx+0x29d:
fffff803`d9931dfd b905000000      mov     ecx,5
fffff803`d9931e02 8bd8            mov     ebx,eax
fffff803`d9931e04 e8b73a0000      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d9931e09 ff4e04          dec     dword ptr [rsi+4]
fffff803`d9931e0c 440fb6e0        movzx   r12d,al
fffff803`d9931e10 0f8475010000    je      nt!CcSetFileSizesEx+0x427 (fffff803`d9931f8b)

nt!CcSetFileSizesEx+0x2b6:
fffff803`d9931e16 85db            test    ebx,ebx
fffff803`d9931e18 0f88d10f1200    js      nt! ?? ::FNODOBFM::`string'+0x283c (fffff803`d9a52def)

nt!CcSetFileSizesEx+0x2be:
fffff803`d9931e1e 498b7728        mov     rsi,qword ptr [r15+28h]
fffff803`d9931e22 488b7608        mov     rsi,qword ptr [rsi+8]
fffff803`d9931e26 4885f6          test    rsi,rsi
fffff803`d9931e29 0f85ddfdffff    jne     nt!CcSetFileSizesEx+0xac (fffff803`d9931c0c)

nt!CcSetFileSizesEx+0x2cf:
fffff803`d9931e2f e9d10f1200      jmp     nt! ?? ::FNODOBFM::`string'+0x2852 (fffff803`d9a52e05)

nt!CcSetFileSizesEx+0x2d4:
fffff803`d9931e35 e8a683ffff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d9931e3a e989fdffff      jmp     nt!CcSetFileSizesEx+0x68 (fffff803`d9931bc8)

nt!CcSetFileSizesEx+0x2de:
fffff803`d9931e40 488bce          mov     rcx,rsi
fffff803`d9931e43 e810560500      call    nt!CcDeleteMbcb (fffff803`d9987458)
fffff803`d9931e48 e9f5feffff      jmp     nt!CcSetFileSizesEx+0x1e2 (fffff803`d9931d42)

nt!CcSetFileSizesEx+0x2eb:
fffff803`d9931e4d c6052dcf230001  mov     byte ptr [nt!LazyWriter+0x81 (fffff803`d9b6ed81)],1
fffff803`d9931e54 8b8e98000000    mov     ecx,dword ptr [rsi+98h]
fffff803`d9931e5a 0fbae110        bt      ecx,10h
fffff803`d9931e5e 0f82d70f1200    jb      nt! ?? ::FNODOBFM::`string'+0x2888 (fffff803`d9a52e3b)

nt!CcSetFileSizesEx+0x302:
fffff803`d9931e64 396e70          cmp     dword ptr [rsi+70h],ebp
fffff803`d9931e67 0f85d4fdffff    jne     nt!CcSetFileSizesEx+0xe1 (fffff803`d9931c41)

nt!CcSetFileSizesEx+0x30b:
fffff803`d9931e6d f6c120          test    cl,20h
fffff803`d9931e70 0f85cbfdffff    jne     nt!CcSetFileSizesEx+0xe1 (fffff803`d9931c41)

nt!CcSetFileSizesEx+0x314:
fffff803`d9931e76 4532c0          xor     r8b,r8b
fffff803`d9931e79 4839ae10010000  cmp     qword ptr [rsi+110h],rbp
fffff803`d9931e80 0f85cb010000    jne     nt!CcSetFileSizesEx+0x4ed (fffff803`d9932051)

nt!CcSetFileSizesEx+0x324:
fffff803`d9931e86 0fbae119        bt      ecx,19h
fffff803`d9931e8a 0f8268101200    jb      nt! ?? ::FNODOBFM::`string'+0x295d (fffff803`d9a52ef8)

nt!CcSetFileSizesEx+0x32e:
fffff803`d9931e90 0fbae118        bt      ecx,18h
fffff803`d9931e94 0f825e101200    jb      nt! ?? ::FNODOBFM::`string'+0x295d (fffff803`d9a52ef8)

nt!CcSetFileSizesEx+0x338:
fffff803`d9931e9a 4881c688000000  add     rsi,88h
fffff803`d9931ea1 488b0e          mov     rcx,qword ptr [rsi]
fffff803`d9931ea4 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`d9931ea8 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`d9931eac 0f859b101200    jne     nt! ?? ::FNODOBFM::`string'+0x29be (fffff803`d9a52f4d)

nt!CcSetFileSizesEx+0x350:
fffff803`d9931eb2 483930          cmp     qword ptr [rax],rsi
fffff803`d9931eb5 0f8592101200    jne     nt! ?? ::FNODOBFM::`string'+0x29be (fffff803`d9a52f4d)

nt!CcSetFileSizesEx+0x359:
fffff803`d9931ebb 488908          mov     qword ptr [rax],rcx
fffff803`d9931ebe 48894108        mov     qword ptr [rcx+8],rax
fffff803`d9931ec2 488b051fcd2300  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)]
fffff803`d9931ec9 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9931ecd 4c892e          mov     qword ptr [rsi],r13
fffff803`d9931ed0 4c3928          cmp     qword ptr [rax],r13
fffff803`d9931ed3 0f856d101200    jne     nt! ?? ::FNODOBFM::`string'+0x29b7 (fffff803`d9a52f46)

nt!CcSetFileSizesEx+0x377:
fffff803`d9931ed9 488930          mov     qword ptr [rax],rsi
fffff803`d9931edc 33d2            xor     edx,edx
fffff803`d9931ede 410fb6c8        movzx   ecx,r8b
fffff803`d9931ee2 488935ffcc2300  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)],rsi
fffff803`d9931ee9 e892b3f8ff      call    nt!CcScheduleLazyWriteScan (fffff803`d98bd280)
fffff803`d9931eee e94efdffff      jmp     nt!CcSetFileSizesEx+0xe1 (fffff803`d9931c41)

nt!CcSetFileSizesEx+0x391:
fffff803`d9931ef4 410fb6d4        movzx   edx,r12b
fffff803`d9931ef8 b905000000      mov     ecx,5
fffff803`d9931efd e82e050100      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9931f02 f7842480000000ff0f0000 test dword ptr [rsp+80h],0FFFh
fffff803`d9931f0d 7546            jne     nt!CcSetFileSizesEx+0x3f1 (fffff803`d9931f55)

nt!CcSetFileSizesEx+0x3ac:
fffff803`d9931f0f 498b4f28        mov     rcx,qword ptr [r15+28h]
fffff803`d9931f13 488d942480000000 lea     rdx,[rsp+80h]
fffff803`d9931f1b 4533c9          xor     r9d,r9d
fffff803`d9931f1e 4533c0          xor     r8d,r8d
fffff803`d9931f21 e8aa560400      call    nt!CcPurgeCacheSection (fffff803`d99775d0)
fffff803`d9931f26 84c0            test    al,al
fffff803`d9931f28 0f842c010000    je      nt!CcSetFileSizesEx+0x4f5 (fffff803`d993205a)

nt!CcSetFileSizesEx+0x3cb:
fffff803`d9931f2e 8bc5            mov     eax,ebp
fffff803`d9931f30 4883c448        add     rsp,48h
fffff803`d9931f34 415f            pop     r15
fffff803`d9931f36 415e            pop     r14
fffff803`d9931f38 415c            pop     r12
fffff803`d9931f3a 5f              pop     rdi
fffff803`d9931f3b 5e              pop     rsi
fffff803`d9931f3c 5d              pop     rbp
fffff803`d9931f3d c3              ret

nt!CcSetFileSizesEx+0x3db:
fffff803`d9931f3e 488bcb          mov     rcx,rbx
fffff803`d9931f41 e82a260100      call    nt!KxWaitForLockChainValid (fffff803`d9944570)

nt!CcSetFileSizesEx+0x3e3:
fffff803`d9931f46 f04883700801    lock xor qword ptr [rax+8],1
fffff803`d9931f4c 48892b          mov     qword ptr [rbx],rbp
fffff803`d9931f4f e9b0fdffff      jmp     nt!CcSetFileSizesEx+0x1a4 (fffff803`d9931d04)

nt!CcSetFileSizesEx+0x3f1:
fffff803`d9931f55 498b4f28        mov     rcx,qword ptr [r15+28h]
fffff803`d9931f59 4c8d4c2430      lea     r9,[rsp+30h]
fffff803`d9931f5e 488d942480000000 lea     rdx,[rsp+80h]
fffff803`d9931f66 41b801000000    mov     r8d,1
fffff803`d9931f6c 896c2420        mov     dword ptr [rsp+20h],ebp
fffff803`d9931f70 e8830e0500      call    nt!MmFlushSection (fffff803`d9982df8)
fffff803`d9931f75 8b442430        mov     eax,dword ptr [rsp+30h]
fffff803`d9931f79 85c0            test    eax,eax
fffff803`d9931f7b 7992            jns     nt!CcSetFileSizesEx+0x3ac (fffff803`d9931f0f)

nt!CcSetFileSizesEx+0x419:
fffff803`d9931f7d 4883c448        add     rsp,48h
fffff803`d9931f81 415f            pop     r15
fffff803`d9931f83 415e            pop     r14
fffff803`d9931f85 415c            pop     r12
fffff803`d9931f87 5f              pop     rdi
fffff803`d9931f88 5e              pop     rsi
fffff803`d9931f89 5d              pop     rbp
fffff803`d9931f8a c3              ret

nt!CcSetFileSizesEx+0x427:
fffff803`d9931f8b c605efcd230001  mov     byte ptr [nt!LazyWriter+0x81 (fffff803`d9b6ed81)],1
fffff803`d9931f92 8b8698000000    mov     eax,dword ptr [rsi+98h]
fffff803`d9931f98 0fbae010        bt      eax,10h
fffff803`d9931f9c 0f823b0d1200    jb      nt! ?? ::FNODOBFM::`string'+0x2706 (fffff803`d9a52cdd)

nt!CcSetFileSizesEx+0x43e:
fffff803`d9931fa2 396e70          cmp     dword ptr [rsi+70h],ebp
fffff803`d9931fa5 0f856bfeffff    jne     nt!CcSetFileSizesEx+0x2b6 (fffff803`d9931e16)

nt!CcSetFileSizesEx+0x447:
fffff803`d9931fab a820            test    al,20h
fffff803`d9931fad 0f8563feffff    jne     nt!CcSetFileSizesEx+0x2b6 (fffff803`d9931e16)

nt!CcSetFileSizesEx+0x44f:
fffff803`d9931fb3 4532c0          xor     r8b,r8b
fffff803`d9931fb6 4839ae10010000  cmp     qword ptr [rsi+110h],rbp
fffff803`d9931fbd 7570            jne     nt!CcSetFileSizesEx+0x4cb (fffff803`d993202f)

nt!CcSetFileSizesEx+0x45b:
fffff803`d9931fbf 0fbae019        bt      eax,19h
fffff803`d9931fc3 0f82d10d1200    jb      nt! ?? ::FNODOBFM::`string'+0x27db (fffff803`d9a52d9a)

nt!CcSetFileSizesEx+0x465:
fffff803`d9931fc9 0fbae018        bt      eax,18h
fffff803`d9931fcd 0f82c70d1200    jb      nt! ?? ::FNODOBFM::`string'+0x27db (fffff803`d9a52d9a)

nt!CcSetFileSizesEx+0x46f:
fffff803`d9931fd3 4881c688000000  add     rsi,88h
fffff803`d9931fda 488b0e          mov     rcx,qword ptr [rsi]
fffff803`d9931fdd 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`d9931fe1 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`d9931fe5 7554            jne     nt!CcSetFileSizesEx+0x4d7 (fffff803`d993203b)

nt!CcSetFileSizesEx+0x483:
fffff803`d9931fe7 483930          cmp     qword ptr [rax],rsi
fffff803`d9931fea 754f            jne     nt!CcSetFileSizesEx+0x4d7 (fffff803`d993203b)

nt!CcSetFileSizesEx+0x488:
fffff803`d9931fec 488908          mov     qword ptr [rax],rcx
fffff803`d9931fef 48894108        mov     qword ptr [rcx+8],rax
fffff803`d9931ff3 488b05eecb2300  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)]
fffff803`d9931ffa 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9931ffe 4c892e          mov     qword ptr [rsi],r13
fffff803`d9932001 4c3928          cmp     qword ptr [rax],r13
fffff803`d9932004 752e            jne     nt!CcSetFileSizesEx+0x4d0 (fffff803`d9932034)

nt!CcSetFileSizesEx+0x4a2:
fffff803`d9932006 488930          mov     qword ptr [rax],rsi
fffff803`d9932009 33d2            xor     edx,edx
fffff803`d993200b 410fb6c8        movzx   ecx,r8b
fffff803`d993200f 488935d2cb2300  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)],rsi
fffff803`d9932016 e865b2f8ff      call    nt!CcScheduleLazyWriteScan (fffff803`d98bd280)
fffff803`d993201b e9f6fdffff      jmp     nt!CcSetFileSizesEx+0x2b6 (fffff803`d9931e16)

nt!CcSetFileSizesEx+0x4bc:
fffff803`d9932020 b201            mov     dl,1
fffff803`d9932022 0fb6ca          movzx   ecx,dl
fffff803`d9932025 e856b2f8ff      call    nt!CcScheduleLazyWriteScan (fffff803`d98bd280)
fffff803`d993202a e9e7fdffff      jmp     nt!CcSetFileSizesEx+0x2b6 (fffff803`d9931e16)

nt!CcSetFileSizesEx+0x4cb:
fffff803`d993202f 41b001          mov     r8b,1
fffff803`d9932032 eb8b            jmp     nt!CcSetFileSizesEx+0x45b (fffff803`d9931fbf)

nt!CcSetFileSizesEx+0x4d0:
fffff803`d9932034 b903000000      mov     ecx,3
fffff803`d9932039 cd29            int     29h

nt!CcSetFileSizesEx+0x4d7:
fffff803`d993203b b903000000      mov     ecx,3
fffff803`d9932040 cd29            int     29h

nt!CcSetFileSizesEx+0x4de:
fffff803`d9932042 b201            mov     dl,1
fffff803`d9932044 0fb6ca          movzx   ecx,dl
fffff803`d9932047 e834b2f8ff      call    nt!CcScheduleLazyWriteScan (fffff803`d98bd280)
fffff803`d993204c e9f0fbffff      jmp     nt!CcSetFileSizesEx+0xe1 (fffff803`d9931c41)

nt!CcSetFileSizesEx+0x4ed:
fffff803`d9932051 41b001          mov     r8b,1
fffff803`d9932054 e92dfeffff      jmp     nt!CcSetFileSizesEx+0x324 (fffff803`d9931e86)

nt!CcSetFileSizesEx+0x4f5:
fffff803`d993205a bd350400c0      mov     ebp,0C0000435h
fffff803`d993205f 8bc5            mov     eax,ebp
fffff803`d9932061 4883c448        add     rsp,48h
fffff803`d9932065 415f            pop     r15
fffff803`d9932067 415e            pop     r14
fffff803`d9932069 415c            pop     r12
fffff803`d993206b 5f              pop     rdi
fffff803`d993206c 5e              pop     rsi
fffff803`d993206d 5d              pop     rbp
fffff803`d993206e c3              ret

nt! ?? ::FNODOBFM::`string'+0x26e6:
fffff803`d9a52cbc 498bd0          mov     rdx,r8
fffff803`d9a52cbf e82ceafaff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9a52cc4 90              nop
fffff803`d9a52cc5 e9feeeedff      jmp     nt!CcSetFileSizesEx+0x68 (fffff803`d9931bc8)

nt! ?? ::FNODOBFM::`string'+0x26f4:
fffff803`d9a52ccb baec0000c0      mov     edx,0C00000ECh
fffff803`d9a52cd0 8bc8            mov     ecx,eax
fffff803`d9a52cd2 e88995f4ff      call    nt!FsRtlNormalizeNtstatus (fffff803`d999c260)
fffff803`d9a52cd7 90              nop
fffff803`d9a52cd8 e920f1edff      jmp     nt!CcSetFileSizesEx+0x29d (fffff803`d9931dfd)

nt! ?? ::FNODOBFM::`string'+0x2706:
fffff803`d9a52cdd 396e70          cmp     dword ptr [rsi+70h],ebp
fffff803`d9a52ce0 0f853af3edff    jne     nt!CcSetFileSizesEx+0x4bc (fffff803`d9932020)

nt! ?? ::FNODOBFM::`string'+0x270f:
fffff803`d9a52ce6 0fbae019        bt      eax,19h
fffff803`d9a52cea 7206            jb      nt! ?? ::FNODOBFM::`string'+0x2723 (fffff803`d9a52cf2)

nt! ?? ::FNODOBFM::`string'+0x2719:
fffff803`d9a52cec 0fbae018        bt      eax,18h
fffff803`d9a52cf0 7351            jae     nt! ?? ::FNODOBFM::`string'+0x2778 (fffff803`d9a52d43)

nt! ?? ::FNODOBFM::`string'+0x2723:
fffff803`d9a52cf2 488b5678        mov     rdx,qword ptr [rsi+78h]
fffff803`d9a52cf6 488d4678        lea     rax,[rsi+78h]
fffff803`d9a52cfa 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9a52cfe 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9a52d02 0f858b000000    jne     nt! ?? ::FNODOBFM::`string'+0x27d4 (fffff803`d9a52d93)

nt! ?? ::FNODOBFM::`string'+0x2739:
fffff803`d9a52d08 483901          cmp     qword ptr [rcx],rax
fffff803`d9a52d0b 0f8582000000    jne     nt! ?? ::FNODOBFM::`string'+0x27d4 (fffff803`d9a52d93)

nt! ?? ::FNODOBFM::`string'+0x2742:
fffff803`d9a52d11 488911          mov     qword ptr [rcx],rdx
fffff803`d9a52d14 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9a52d18 488b0d89be1100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)]
fffff803`d9a52d1f 488d157abe1100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`d9b6eba0)]
fffff803`d9a52d26 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9a52d2a 488910          mov     qword ptr [rax],rdx
fffff803`d9a52d2d 483911          cmp     qword ptr [rcx],rdx
fffff803`d9a52d30 7407            je      nt! ?? ::FNODOBFM::`string'+0x276e (fffff803`d9a52d39)

nt! ?? ::FNODOBFM::`string'+0x2767:
fffff803`d9a52d32 b903000000      mov     ecx,3
fffff803`d9a52d37 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x276e:
fffff803`d9a52d39 488901          mov     qword ptr [rcx],rax
fffff803`d9a52d3c 48890565be1100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)],rax

nt! ?? ::FNODOBFM::`string'+0x2778:
fffff803`d9a52d43 4881c688000000  add     rsi,88h
fffff803`d9a52d4a 488b0e          mov     rcx,qword ptr [rsi]
fffff803`d9a52d4d 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`d9a52d51 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`d9a52d55 7535            jne     nt! ?? ::FNODOBFM::`string'+0x27cd (fffff803`d9a52d8c)

nt! ?? ::FNODOBFM::`string'+0x2790:
fffff803`d9a52d57 483930          cmp     qword ptr [rax],rsi
fffff803`d9a52d5a 7530            jne     nt! ?? ::FNODOBFM::`string'+0x27cd (fffff803`d9a52d8c)

nt! ?? ::FNODOBFM::`string'+0x2799:
fffff803`d9a52d5c 488908          mov     qword ptr [rax],rcx
fffff803`d9a52d5f 48894108        mov     qword ptr [rcx+8],rax
fffff803`d9a52d63 488b057ebe1100  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)]
fffff803`d9a52d6a 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9a52d6e 4c892e          mov     qword ptr [rsi],r13
fffff803`d9a52d71 4c3928          cmp     qword ptr [rax],r13
fffff803`d9a52d74 7407            je      nt! ?? ::FNODOBFM::`string'+0x27be (fffff803`d9a52d7d)

nt! ?? ::FNODOBFM::`string'+0x27b7:
fffff803`d9a52d76 b903000000      mov     ecx,3
fffff803`d9a52d7b cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x27be:
fffff803`d9a52d7d 488930          mov     qword ptr [rax],rsi
fffff803`d9a52d80 48893561be1100  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)],rsi
fffff803`d9a52d87 e994f2edff      jmp     nt!CcSetFileSizesEx+0x4bc (fffff803`d9932020)

nt! ?? ::FNODOBFM::`string'+0x27cd:
fffff803`d9a52d8c b903000000      mov     ecx,3
fffff803`d9a52d91 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x27d4:
fffff803`d9a52d93 b903000000      mov     ecx,3
fffff803`d9a52d98 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x27db:
fffff803`d9a52d9a 488b5678        mov     rdx,qword ptr [rsi+78h]
fffff803`d9a52d9e 488d4678        lea     rax,[rsi+78h]
fffff803`d9a52da2 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9a52da6 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9a52daa 753c            jne     nt! ?? ::FNODOBFM::`string'+0x2835 (fffff803`d9a52de8)

nt! ?? ::FNODOBFM::`string'+0x27f1:
fffff803`d9a52dac 483901          cmp     qword ptr [rcx],rax
fffff803`d9a52daf 7537            jne     nt! ?? ::FNODOBFM::`string'+0x2835 (fffff803`d9a52de8)

nt! ?? ::FNODOBFM::`string'+0x27fa:
fffff803`d9a52db1 488911          mov     qword ptr [rcx],rdx
fffff803`d9a52db4 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9a52db8 488b0de9bd1100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)]
fffff803`d9a52dbf 488d15dabd1100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`d9b6eba0)]
fffff803`d9a52dc6 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9a52dca 488910          mov     qword ptr [rax],rdx
fffff803`d9a52dcd 483911          cmp     qword ptr [rcx],rdx
fffff803`d9a52dd0 7407            je      nt! ?? ::FNODOBFM::`string'+0x2826 (fffff803`d9a52dd9)

nt! ?? ::FNODOBFM::`string'+0x281f:
fffff803`d9a52dd2 b903000000      mov     ecx,3
fffff803`d9a52dd7 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x2826:
fffff803`d9a52dd9 488901          mov     qword ptr [rcx],rax
fffff803`d9a52ddc 488905c5bd1100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)],rax
fffff803`d9a52de3 e9ebf1edff      jmp     nt!CcSetFileSizesEx+0x46f (fffff803`d9931fd3)

nt! ?? ::FNODOBFM::`string'+0x2835:
fffff803`d9a52de8 b903000000      mov     ecx,3
fffff803`d9a52ded cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x283c:
fffff803`d9a52def 410fb6d4        movzx   edx,r12b
fffff803`d9a52df3 b905000000      mov     ecx,5
fffff803`d9a52df8 e833f6eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a52dfd 8bcb            mov     ecx,ebx
fffff803`d9a52dff e83c1df2ff      call    nt!RtlRaiseStatus (fffff803`d9974b40)
fffff803`d9a52e04 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x2852:
fffff803`d9a52e05 410fb6d4        movzx   edx,r12b
fffff803`d9a52e09 b905000000      mov     ecx,5
fffff803`d9a52e0e e81df6eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a52e13 33c0            xor     eax,eax
fffff803`d9a52e15 e970eeedff      jmp     nt!CcSetFileSizesEx+0x12a (fffff803`d9931c8a)

nt! ?? ::FNODOBFM::`string'+0x2867:
fffff803`d9a52e1a 488b542478      mov     rdx,qword ptr [rsp+78h]
fffff803`d9a52e1f 488bcb          mov     rcx,rbx
fffff803`d9a52e22 e8a9e7faff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a52e27 90              nop
fffff803`d9a52e28 e9d7eeedff      jmp     nt!CcSetFileSizesEx+0x1a4 (fffff803`d9931d04)

nt! ?? ::FNODOBFM::`string'+0x287a:
fffff803`d9a52e2d 488bce          mov     rcx,rsi
fffff803`d9a52e30 e8bb94e3ff      call    nt!CcDeleteBcbs (fffff803`d988c2f0)
fffff803`d9a52e35 90              nop
fffff803`d9a52e36 e914efedff      jmp     nt!CcSetFileSizesEx+0x1ef (fffff803`d9931d4f)

nt! ?? ::FNODOBFM::`string'+0x2888:
fffff803`d9a52e3b 396e70          cmp     dword ptr [rsi+70h],ebp
fffff803`d9a52e3e 0f85fef1edff    jne     nt!CcSetFileSizesEx+0x4de (fffff803`d9932042)

nt! ?? ::FNODOBFM::`string'+0x2891:
fffff803`d9a52e44 0fbae119        bt      ecx,19h
fffff803`d9a52e48 7206            jb      nt! ?? ::FNODOBFM::`string'+0x28a5 (fffff803`d9a52e50)

nt! ?? ::FNODOBFM::`string'+0x289b:
fffff803`d9a52e4a 0fbae118        bt      ecx,18h
fffff803`d9a52e4e 7351            jae     nt! ?? ::FNODOBFM::`string'+0x28fa (fffff803`d9a52ea1)

nt! ?? ::FNODOBFM::`string'+0x28a5:
fffff803`d9a52e50 488b5678        mov     rdx,qword ptr [rsi+78h]
fffff803`d9a52e54 488d4678        lea     rax,[rsi+78h]
fffff803`d9a52e58 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9a52e5c 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9a52e60 0f858b000000    jne     nt! ?? ::FNODOBFM::`string'+0x2956 (fffff803`d9a52ef1)

nt! ?? ::FNODOBFM::`string'+0x28bb:
fffff803`d9a52e66 483901          cmp     qword ptr [rcx],rax
fffff803`d9a52e69 0f8582000000    jne     nt! ?? ::FNODOBFM::`string'+0x2956 (fffff803`d9a52ef1)

nt! ?? ::FNODOBFM::`string'+0x28c4:
fffff803`d9a52e6f 488911          mov     qword ptr [rcx],rdx
fffff803`d9a52e72 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9a52e76 488b0d2bbd1100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)]
fffff803`d9a52e7d 488d151cbd1100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`d9b6eba0)]
fffff803`d9a52e84 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9a52e88 488910          mov     qword ptr [rax],rdx
fffff803`d9a52e8b 483911          cmp     qword ptr [rcx],rdx
fffff803`d9a52e8e 7407            je      nt! ?? ::FNODOBFM::`string'+0x28f0 (fffff803`d9a52e97)

nt! ?? ::FNODOBFM::`string'+0x28e9:
fffff803`d9a52e90 b903000000      mov     ecx,3
fffff803`d9a52e95 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x28f0:
fffff803`d9a52e97 488901          mov     qword ptr [rcx],rax
fffff803`d9a52e9a 48890507bd1100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)],rax

nt! ?? ::FNODOBFM::`string'+0x28fa:
fffff803`d9a52ea1 4881c688000000  add     rsi,88h
fffff803`d9a52ea8 488b0e          mov     rcx,qword ptr [rsi]
fffff803`d9a52eab 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`d9a52eaf 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`d9a52eb3 7535            jne     nt! ?? ::FNODOBFM::`string'+0x294f (fffff803`d9a52eea)

nt! ?? ::FNODOBFM::`string'+0x2912:
fffff803`d9a52eb5 483930          cmp     qword ptr [rax],rsi
fffff803`d9a52eb8 7530            jne     nt! ?? ::FNODOBFM::`string'+0x294f (fffff803`d9a52eea)

nt! ?? ::FNODOBFM::`string'+0x291b:
fffff803`d9a52eba 488908          mov     qword ptr [rax],rcx
fffff803`d9a52ebd 48894108        mov     qword ptr [rcx+8],rax
fffff803`d9a52ec1 488b0520bd1100  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)]
fffff803`d9a52ec8 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9a52ecc 4c892e          mov     qword ptr [rsi],r13
fffff803`d9a52ecf 4c3928          cmp     qword ptr [rax],r13
fffff803`d9a52ed2 7407            je      nt! ?? ::FNODOBFM::`string'+0x2940 (fffff803`d9a52edb)

nt! ?? ::FNODOBFM::`string'+0x2939:
fffff803`d9a52ed4 b903000000      mov     ecx,3
fffff803`d9a52ed9 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x2940:
fffff803`d9a52edb 488930          mov     qword ptr [rax],rsi
fffff803`d9a52ede 48893503bd1100  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)],rsi
fffff803`d9a52ee5 e958f1edff      jmp     nt!CcSetFileSizesEx+0x4de (fffff803`d9932042)

nt! ?? ::FNODOBFM::`string'+0x294f:
fffff803`d9a52eea b903000000      mov     ecx,3
fffff803`d9a52eef cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x2956:
fffff803`d9a52ef1 b903000000      mov     ecx,3
fffff803`d9a52ef6 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x295d:
fffff803`d9a52ef8 488b5678        mov     rdx,qword ptr [rsi+78h]
fffff803`d9a52efc 488d4678        lea     rax,[rsi+78h]
fffff803`d9a52f00 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9a52f04 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9a52f08 754a            jne     nt! ?? ::FNODOBFM::`string'+0x29c5 (fffff803`d9a52f54)

nt! ?? ::FNODOBFM::`string'+0x2973:
fffff803`d9a52f0a 483901          cmp     qword ptr [rcx],rax
fffff803`d9a52f0d 7545            jne     nt! ?? ::FNODOBFM::`string'+0x29c5 (fffff803`d9a52f54)

nt! ?? ::FNODOBFM::`string'+0x297c:
fffff803`d9a52f0f 488911          mov     qword ptr [rcx],rdx
fffff803`d9a52f12 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9a52f16 488b0d8bbc1100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)]
fffff803`d9a52f1d 488d157cbc1100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`d9b6eba0)]
fffff803`d9a52f24 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9a52f28 488910          mov     qword ptr [rax],rdx
fffff803`d9a52f2b 483911          cmp     qword ptr [rcx],rdx
fffff803`d9a52f2e 7407            je      nt! ?? ::FNODOBFM::`string'+0x29a8 (fffff803`d9a52f37)

nt! ?? ::FNODOBFM::`string'+0x29a1:
fffff803`d9a52f30 b903000000      mov     ecx,3
fffff803`d9a52f35 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x29a8:
fffff803`d9a52f37 488901          mov     qword ptr [rcx],rax
fffff803`d9a52f3a 48890567bc1100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)],rax
fffff803`d9a52f41 e954efedff      jmp     nt!CcSetFileSizesEx+0x338 (fffff803`d9931e9a)

nt! ?? ::FNODOBFM::`string'+0x29b7:
fffff803`d9a52f46 b903000000      mov     ecx,3
fffff803`d9a52f4b cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x29be:
fffff803`d9a52f4d b903000000      mov     ecx,3
fffff803`d9a52f52 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x29c5:
fffff803`d9a52f54 b903000000      mov     ecx,3
fffff803`d9a52f59 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x29cc:
fffff803`d9a52f5b 488b542478      mov     rdx,qword ptr [rsp+78h]
fffff803`d9a52f60 488bcb          mov     rcx,rbx
fffff803`d9a52f63 e868e6faff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a52f68 90              nop
fffff803`d9a52f69 e911ededff      jmp     nt!CcSetFileSizesEx+0x11f (fffff803`d9931c7f)
