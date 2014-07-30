nt!RtlDestroyAtomTable:
fffff803`d9d5d188 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9d5d18d 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`d9d5d192 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d9d5d197 57              push    rdi
fffff803`d9d5d198 4154            push    r12
fffff803`d9d5d19a 4155            push    r13
fffff803`d9d5d19c 4156            push    r14
fffff803`d9d5d19e 4157            push    r15
fffff803`d9d5d1a0 4883ec20        sub     rsp,20h
fffff803`d9d5d1a4 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh
fffff803`d9d5d1a8 488bf9          mov     rdi,rcx
fffff803`d9d5d1ab 8bc3            mov     eax,ebx
fffff803`d9d5d1ad f00fc14104      lock xadd dword ptr [rcx+4],eax
fffff803`d9d5d1b2 03c3            add     eax,ebx
fffff803`d9d5d1b4 0f85b2000000    jne     nt!RtlDestroyAtomTable+0xe4 (fffff803`d9d5d26c)

nt!RtlDestroyAtomTable+0x32:
fffff803`d9d5d1ba e8d152f4ff      call    nt!RtlpLockAtomTable (fffff803`d9ca2490)
fffff803`d9d5d1bf 4533ed          xor     r13d,r13d
fffff803`d9d5d1c2 84c0            test    al,al
fffff803`d9d5d1c4 0f84967a1300    je      nt! ?? ::NNGAKEGL::`string'+0x50c20 (fffff803`d9e94c60)

nt!RtlDestroyAtomTable+0x42:
fffff803`d9d5d1ca 4c8dbf20020000  lea     r15,[rdi+220h]
fffff803`d9d5d1d1 418bed          mov     ebp,r13d
fffff803`d9d5d1d4 4439af1c020000  cmp     dword ptr [rdi+21Ch],r13d
fffff803`d9d5d1db 7620            jbe     nt!RtlDestroyAtomTable+0x75 (fffff803`d9d5d1fd)

nt!RtlDestroyAtomTable+0x55:
fffff803`d9d5d1dd 498b37          mov     rsi,qword ptr [r15]
fffff803`d9d5d1e0 4d892f          mov     qword ptr [r15],r13
fffff803`d9d5d1e3 4983c708        add     r15,8

nt!RtlDestroyAtomTable+0x5f:
fffff803`d9d5d1e7 4c8be6          mov     r12,rsi
fffff803`d9d5d1ea 4885f6          test    rsi,rsi
fffff803`d9d5d1ed 0f8598000000    jne     nt!RtlDestroyAtomTable+0x103 (fffff803`d9d5d28b)

nt!RtlDestroyAtomTable+0x6b:
fffff803`d9d5d1f3 ffc5            inc     ebp
fffff803`d9d5d1f5 3baf1c020000    cmp     ebp,dword ptr [rdi+21Ch]
fffff803`d9d5d1fb 72e0            jb      nt!RtlDestroyAtomTable+0x55 (fffff803`d9d5d1dd)

nt!RtlDestroyAtomTable+0x75:
fffff803`d9d5d1fd 44892f          mov     dword ptr [rdi],r13d
fffff803`d9d5d200 488d4f08        lea     rcx,[rdi+8]
fffff803`d9d5d204 f0480fc119      lock xadd qword ptr [rcx],rbx
fffff803`d9d5d209 f6c302          test    bl,2
fffff803`d9d5d20c 0f85837a1300    jne     nt! ?? ::NNGAKEGL::`string'+0x50c55 (fffff803`d9e94c95)

nt!RtlDestroyAtomTable+0x8a:
fffff803`d9d5d212 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9d5d21b 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9d5d222 ffc0            inc     eax
fffff803`d9d5d224 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9d5d22b 6685c0          test    ax,ax
fffff803`d9d5d22e 7510            jne     nt!RtlDestroyAtomTable+0xb8 (fffff803`d9d5d240)

nt!RtlDestroyAtomTable+0xa8:
fffff803`d9d5d230 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9d5d237 483900          cmp     qword ptr [rax],rax
fffff803`d9d5d23a 0f85697a1300    jne     nt! ?? ::NNGAKEGL::`string'+0x50c69 (fffff803`d9e94ca9)

nt!RtlDestroyAtomTable+0xb8:
fffff803`d9d5d240 488b5f10        mov     rbx,qword ptr [rdi+10h]
fffff803`d9d5d244 488bcb          mov     rcx,rbx
fffff803`d9d5d247 e8dcaafaff      call    nt!ExRemoveHandleTable (fffff803`d9d07d28)
fffff803`d9d5d24c 488bcb          mov     rcx,rbx
fffff803`d9d5d24f e8d082faff      call    nt!ExpFreeHandleTable (fffff803`d9d05524)
fffff803`d9d5d254 33d2            xor     edx,edx
fffff803`d9d5d256 41b828020000    mov     r8d,228h
fffff803`d9d5d25c 488bcf          mov     rcx,rdi
fffff803`d9d5d25f e85c88baff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9d5d264 488bcf          mov     rcx,rdi
fffff803`d9d5d267 e8b852f2ff      call    nt!RtlpFreeAtom (fffff803`d9c82524)

nt!RtlDestroyAtomTable+0xe4:
fffff803`d9d5d26c 33c0            xor     eax,eax

nt!RtlDestroyAtomTable+0xe6:
fffff803`d9d5d26e 488b5c2450      mov     rbx,qword ptr [rsp+50h]
fffff803`d9d5d273 488b6c2458      mov     rbp,qword ptr [rsp+58h]
fffff803`d9d5d278 488b742460      mov     rsi,qword ptr [rsp+60h]
fffff803`d9d5d27d 4883c420        add     rsp,20h
fffff803`d9d5d281 415f            pop     r15
fffff803`d9d5d283 415e            pop     r14
fffff803`d9d5d285 415d            pop     r13
fffff803`d9d5d287 415c            pop     r12
fffff803`d9d5d289 5f              pop     rdi
fffff803`d9d5d28a c3              ret

nt!RtlDestroyAtomTable+0x103:
fffff803`d9d5d28b 488b36          mov     rsi,qword ptr [rsi]
fffff803`d9d5d28e 4d8d742410      lea     r14,[r12+10h]
fffff803`d9d5d293 4d892c24        mov     qword ptr [r12],r13

nt!RtlDestroyAtomTable+0x10f:
fffff803`d9d5d297 4d3936          cmp     qword ptr [r14],r14
fffff803`d9d5d29a 0f85ca791300    jne     nt! ?? ::NNGAKEGL::`string'+0x50c2a (fffff803`d9e94c6a)

nt!RtlDestroyAtomTable+0x118:
fffff803`d9d5d2a0 498bcc          mov     rcx,r12
fffff803`d9d5d2a3 e87c52f2ff      call    nt!RtlpFreeAtom (fffff803`d9c82524)
fffff803`d9d5d2a8 e93affffff      jmp     nt!RtlDestroyAtomTable+0x5f (fffff803`d9d5d1e7)

nt! ?? ::NNGAKEGL::`string'+0x50c20:
fffff803`d9e94c60 b80d0000c0      mov     eax,0C000000Dh
fffff803`d9e94c65 e90486ecff      jmp     nt!RtlDestroyAtomTable+0xe6 (fffff803`d9d5d26e)

nt! ?? ::NNGAKEGL::`string'+0x50c2a:
fffff803`d9e94c6a 498b0e          mov     rcx,qword ptr [r14]
fffff803`d9e94c6d 488b01          mov     rax,qword ptr [rcx]
fffff803`d9e94c70 4c397108        cmp     qword ptr [rcx+8],r14
fffff803`d9e94c74 7518            jne     nt! ?? ::NNGAKEGL::`string'+0x50c4e (fffff803`d9e94c8e)

nt! ?? ::NNGAKEGL::`string'+0x50c36:
fffff803`d9e94c76 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d9e94c7a 7512            jne     nt! ?? ::NNGAKEGL::`string'+0x50c4e (fffff803`d9e94c8e)

nt! ?? ::NNGAKEGL::`string'+0x50c3c:
fffff803`d9e94c7c 498906          mov     qword ptr [r14],rax
fffff803`d9e94c7f 4c897008        mov     qword ptr [rax+8],r14
fffff803`d9e94c83 e89cd8deff      call    nt!RtlpFreeAtom (fffff803`d9c82524)
fffff803`d9e94c88 90              nop
fffff803`d9e94c89 e90986ecff      jmp     nt!RtlDestroyAtomTable+0x10f (fffff803`d9d5d297)

nt! ?? ::NNGAKEGL::`string'+0x50c4e:
fffff803`d9e94c8e b903000000      mov     ecx,3
fffff803`d9e94c93 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x50c55:
fffff803`d9e94c95 f6c304          test    bl,4
fffff803`d9e94c98 0f857485ecff    jne     nt!RtlDestroyAtomTable+0x8a (fffff803`d9d5d212)

nt! ?? ::NNGAKEGL::`string'+0x50c5e:
fffff803`d9e94c9e e87143adff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9e94ca3 90              nop
fffff803`d9e94ca4 e96985ecff      jmp     nt!RtlDestroyAtomTable+0x8a (fffff803`d9d5d212)

nt! ?? ::NNGAKEGL::`string'+0x50c69:
fffff803`d9e94ca9 664439a9e6010000 cmp     word ptr [rcx+1E6h],r13w
fffff803`d9e94cb1 0f858985ecff    jne     nt!RtlDestroyAtomTable+0xb8 (fffff803`d9d5d240)

nt! ?? ::NNGAKEGL::`string'+0x50c77:
fffff803`d9e94cb7 e8448baeff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)
fffff803`d9e94cbc 90              nop
fffff803`d9e94cbd e97e85ecff      jmp     nt!RtlDestroyAtomTable+0xb8 (fffff803`d9d5d240)
