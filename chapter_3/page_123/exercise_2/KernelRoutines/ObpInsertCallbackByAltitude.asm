0: kd> uf ObpInsertCallbackByAltitude
nt!ObpInsertCallbackByAltitude:
fffff803`d9d79078 488bc4          mov     rax,rsp
fffff803`d9d7907b 48895808        mov     qword ptr [rax+8],rbx
fffff803`d9d7907f 48896810        mov     qword ptr [rax+10h],rbp
fffff803`d9d79083 48897018        mov     qword ptr [rax+18h],rsi
fffff803`d9d79087 48897820        mov     qword ptr [rax+20h],rdi
fffff803`d9d7908b 4154            push    r12
fffff803`d9d7908d 4156            push    r14
fffff803`d9d7908f 4157            push    r15
fffff803`d9d79091 4883ec20        sub     rsp,20h
fffff803`d9d79095 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9d7909e 4533e4          xor     r12d,r12d
fffff803`d9d790a1 488bf2          mov     rsi,rdx
fffff803`d9d790a4 66ff88e6010000  dec     word ptr [rax+1E6h]
fffff803`d9d790ab 4c8bf1          mov     r14,rcx
fffff803`d9d790ae 418bec          mov     ebp,r12d
fffff803`d9d790b1 488d99b8000000  lea     rbx,[rcx+0B8h]
fffff803`d9d790b8 f0480fba2b00    lock bts qword ptr [rbx],0
fffff803`d9d790be 0f8278aa1000    jb      nt! ?? ::NNGAKEGL::`string'+0x3cfe8 (fffff803`d9e83b3c)

nt!ObpInsertCallbackByAltitude+0x4c:
fffff803`d9d790c4 4981c6c8000000  add     r14,0C8h
fffff803`d9d790cb 498b3e          mov     rdi,qword ptr [r14]
fffff803`d9d790ce 493bfe          cmp     rdi,r14
fffff803`d9d790d1 0f8593000000    jne     nt!ObpInsertCallbackByAltitude+0xf2 (fffff803`d9d7916a)

nt!ObpInsertCallbackByAltitude+0x5f:
fffff803`d9d790d7 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`d9d790db 488b08          mov     rcx,qword ptr [rax]
fffff803`d9d790de 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9d790e2 48890e          mov     qword ptr [rsi],rcx
fffff803`d9d790e5 48394108        cmp     qword ptr [rcx+8],rax
fffff803`d9d790e9 0f858aaa1000    jne     nt! ?? ::NNGAKEGL::`string'+0x3d025 (fffff803`d9e83b79)

nt!ObpInsertCallbackByAltitude+0x77:
fffff803`d9d790ef 48897108        mov     qword ptr [rcx+8],rsi
fffff803`d9d790f3 488930          mov     qword ptr [rax],rsi

nt!ObpInsertCallbackByAltitude+0x7e:
fffff803`d9d790f6 0f0d0b          prefetchw [rbx]
fffff803`d9d790f9 488b03          mov     rax,qword ptr [rbx]
fffff803`d9d790fc 488bc8          mov     rcx,rax
fffff803`d9d790ff 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`d9d79103 4883f910        cmp     rcx,10h
fffff803`d9d79107 488d48f0        lea     rcx,[rax-10h]
fffff803`d9d7910b 7703            ja      nt!ObpInsertCallbackByAltitude+0x98 (fffff803`d9d79110)

nt!ObpInsertCallbackByAltitude+0x95:
fffff803`d9d7910d 498bcc          mov     rcx,r12

nt!ObpInsertCallbackByAltitude+0x98:
fffff803`d9d79110 a802            test    al,2
fffff803`d9d79112 755f            jne     nt!ObpInsertCallbackByAltitude+0xfb (fffff803`d9d79173)

nt!ObpInsertCallbackByAltitude+0x9c:
fffff803`d9d79114 f0480fb10b      lock cmpxchg qword ptr [rbx],rcx
fffff803`d9d79119 7558            jne     nt!ObpInsertCallbackByAltitude+0xfb (fffff803`d9d79173)

nt!ObpInsertCallbackByAltitude+0xa3:
fffff803`d9d7911b 65488b142588010000 mov   rdx,qword ptr gs:[188h]
fffff803`d9d79124 0fbf8ae6010000  movsx   ecx,word ptr [rdx+1E6h]
fffff803`d9d7912b ffc1            inc     ecx
fffff803`d9d7912d 66898ae6010000  mov     word ptr [rdx+1E6h],cx
fffff803`d9d79134 6685c9          test    cx,cx
fffff803`d9d79137 7510            jne     nt!ObpInsertCallbackByAltitude+0xd1 (fffff803`d9d79149)

nt!ObpInsertCallbackByAltitude+0xc1:
fffff803`d9d79139 488d8a98000000  lea     rcx,[rdx+98h]
fffff803`d9d79140 483909          cmp     qword ptr [rcx],rcx
fffff803`d9d79143 0f8537aa1000    jne     nt! ?? ::NNGAKEGL::`string'+0x3d02c (fffff803`d9e83b80)

nt!ObpInsertCallbackByAltitude+0xd1:
fffff803`d9d79149 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d9d7914e 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`d9d79153 488b7c2458      mov     rdi,qword ptr [rsp+58h]
fffff803`d9d79158 8bc5            mov     eax,ebp
fffff803`d9d7915a 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`d9d7915f 4883c420        add     rsp,20h
fffff803`d9d79163 415f            pop     r15
fffff803`d9d79165 415e            pop     r14
fffff803`d9d79167 415c            pop     r12
fffff803`d9d79169 c3              ret

nt!ObpInsertCallbackByAltitude+0xf2:
fffff803`d9d7916a 4c8b7e18        mov     r15,qword ptr [rsi+18h]
fffff803`d9d7916e e9d7a91000      jmp     nt! ?? ::NNGAKEGL::`string'+0x3cff6 (fffff803`d9e83b4a)

nt!ObpInsertCallbackByAltitude+0xfb:
fffff803`d9d79173 488bcb          mov     rcx,rbx
fffff803`d9d79176 e87172bcff      call    nt!ExfReleasePushLock (fffff803`d99403ec)
fffff803`d9d7917b eb9e            jmp     nt!ObpInsertCallbackByAltitude+0xa3 (fffff803`d9d7911b)

nt! ?? ::NNGAKEGL::`string'+0x3cfe8:
fffff803`d9e83b3c 488bcb          mov     rcx,rbx
fffff803`d9e83b3f e8bc18aeff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9e83b44 90              nop
fffff803`d9e83b45 e97a55efff      jmp     nt!ObpInsertCallbackByAltitude+0x4c (fffff803`d9d790c4)

nt! ?? ::NNGAKEGL::`string'+0x3cff6:
fffff803`d9e83b4a 488b4f18        mov     rcx,qword ptr [rdi+18h]
fffff803`d9e83b4e 498d5710        lea     rdx,[r15+10h]
fffff803`d9e83b52 4883c110        add     rcx,10h
fffff803`d9e83b56 e8edc4a2ff      call    nt!RtlCompareAltitudes (fffff803`d98b0048)
fffff803`d9e83b5b 85c0            test    eax,eax
fffff803`d9e83b5d 7e0a            jle     nt! ?? ::NNGAKEGL::`string'+0x3d015 (fffff803`d9e83b69)

nt! ?? ::NNGAKEGL::`string'+0x3d00b:
fffff803`d9e83b5f 488b3f          mov     rdi,qword ptr [rdi]
fffff803`d9e83b62 493bfe          cmp     rdi,r14
fffff803`d9e83b65 75e3            jne     nt! ?? ::NNGAKEGL::`string'+0x3cff6 (fffff803`d9e83b4a)

nt! ?? ::NNGAKEGL::`string'+0x3d013:
fffff803`d9e83b67 85c0            test    eax,eax

nt! ?? ::NNGAKEGL::`string'+0x3d015:
fffff803`d9e83b69 0f856855efff    jne     nt!ObpInsertCallbackByAltitude+0x5f (fffff803`d9d790d7)

nt! ?? ::NNGAKEGL::`string'+0x3d01b:
fffff803`d9e83b6f bd11001cc0      mov     ebp,0C01C0011h
fffff803`d9e83b74 e97d55efff      jmp     nt!ObpInsertCallbackByAltitude+0x7e (fffff803`d9d790f6)

nt! ?? ::NNGAKEGL::`string'+0x3d025:
fffff803`d9e83b79 b903000000      mov     ecx,3
fffff803`d9e83b7e cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x3d02c:
fffff803`d9e83b80 e87b9cafff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)
fffff803`d9e83b85 90              nop
fffff803`d9e83b86 e9be55efff      jmp     nt!ObpInsertCallbackByAltitude+0xd1 (fffff803`d9d79149)
