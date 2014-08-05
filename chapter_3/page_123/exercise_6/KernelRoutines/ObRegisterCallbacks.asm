nt!ObRegisterCallbacks:
fffff803`22164e88 488bc4          mov     rax,rsp
fffff803`22164e8b 48895808        mov     qword ptr [rax+8],rbx
fffff803`22164e8f 48896818        mov     qword ptr [rax+18h],rbp
fffff803`22164e93 48897020        mov     qword ptr [rax+20h],rsi
fffff803`22164e97 48895010        mov     qword ptr [rax+10h],rdx
fffff803`22164e9b 57              push    rdi
fffff803`22164e9c 4154            push    r12
fffff803`22164e9e 4155            push    r13
fffff803`22164ea0 4156            push    r14
fffff803`22164ea2 4157            push    r15
fffff803`22164ea4 4883ec20        sub     rsp,20h
fffff803`22164ea8 0fb701          movzx   eax,word ptr [rcx]
fffff803`22164eab 33db            xor     ebx,ebx
fffff803`22164ead 4c8bf9          mov     r15,rcx
fffff803`22164eb0 b900ff0000      mov     ecx,0FF00h
fffff803`22164eb5 41bc00010000    mov     r12d,100h
fffff803`22164ebb 4c8bea          mov     r13,rdx
fffff803`22164ebe 6623c1          and     ax,cx
fffff803`22164ec1 8bf3            mov     esi,ebx
fffff803`22164ec3 66413bc4        cmp     ax,r12w
fffff803`22164ec7 0f8543ab1000    jne     nt! ?? ::NNGAKEGL::`string'+0x3cebe (fffff803`2226fa10)

nt!ObRegisterCallbacks+0x45:
fffff803`22164ecd 410fb74702      movzx   eax,word ptr [r15+2]
fffff803`22164ed2 6685c0          test    ax,ax
fffff803`22164ed5 0f8435ab1000    je      nt! ?? ::NNGAKEGL::`string'+0x3cebe (fffff803`2226fa10)

nt!ObRegisterCallbacks+0x53:
fffff803`22164edb 410fb76f08      movzx   ebp,word ptr [r15+8]
fffff803`22164ee0 0fb7c8          movzx   ecx,ax
fffff803`22164ee3 41b84f62466c    mov     r8d,6C46624Fh
fffff803`22164ee9 c1e106          shl     ecx,6
fffff803`22164eec 83c520          add     ebp,20h
fffff803`22164eef 03e9            add     ebp,ecx
fffff803`22164ef1 8d4b01          lea     ecx,[rbx+1]
fffff803`22164ef4 8bd5            mov     edx,ebp
fffff803`22164ef6 448bf5          mov     r14d,ebp
fffff803`22164ef9 e812d1d7ff      call    nt!ExAllocatePoolWithTag (fffff803`21ee2010)
fffff803`22164efe 488bf8          mov     rdi,rax
fffff803`22164f01 4885c0          test    rax,rax
fffff803`22164f04 0f8410ab1000    je      nt! ?? ::NNGAKEGL::`string'+0x3cec8 (fffff803`2226fa1a)

nt!ObRegisterCallbacks+0x82:
fffff803`22164f0a 458bc6          mov     r8d,r14d
fffff803`22164f0d 33d2            xor     edx,edx
fffff803`22164f0f 488bc8          mov     rcx,rax
fffff803`22164f12 e8a9cbb8ff      call    nt!memset (fffff803`21cf1ac0)
fffff803`22164f17 66448927        mov     word ptr [rdi],r12w
fffff803`22164f1b 498b4718        mov     rax,qword ptr [r15+18h]
fffff803`22164f1f 48894708        mov     qword ptr [rdi+8],rax
fffff803`22164f23 410fb75708      movzx   edx,word ptr [r15+8]
fffff803`22164f28 2bea            sub     ebp,edx
fffff803`22164f2a 66895712        mov     word ptr [rdi+12h],dx
fffff803`22164f2e 66895710        mov     word ptr [rdi+10h],dx
fffff803`22164f32 448bc2          mov     r8d,edx
fffff803`22164f35 8bcd            mov     ecx,ebp
fffff803`22164f37 4803cf          add     rcx,rdi
fffff803`22164f3a 48894f18        mov     qword ptr [rdi+18h],rcx
fffff803`22164f3e 498b5710        mov     rdx,qword ptr [r15+10h]
fffff803`22164f42 e8b922b6ff      call    nt!memcpy (fffff803`21cc7200)
fffff803`22164f47 448be3          mov     r12d,ebx
fffff803`22164f4a 66413b5f02      cmp     bx,word ptr [r15+2]
fffff803`22164f4f 0f83c1000000    jae     nt!ObRegisterCallbacks+0x18e (fffff803`22165016)

nt!ObRegisterCallbacks+0xcd:
fffff803`22164f55 448bf3          mov     r14d,ebx
fffff803`22164f58 488d6f58        lea     rbp,[rdi+58h]

nt!ObRegisterCallbacks+0xd4:
fffff803`22164f5c 498b7720        mov     rsi,qword ptr [r15+20h]
fffff803`22164f60 41395c3608      cmp     dword ptr [r14+rsi+8],ebx
fffff803`22164f65 0f84ff000000    je      nt!ObRegisterCallbacks+0x1e2 (fffff803`2216506a)

nt!ObRegisterCallbacks+0xe3:
fffff803`22164f6b 498b0436        mov     rax,qword ptr [r14+rsi]
fffff803`22164f6f 488b08          mov     rcx,qword ptr [rax]
fffff803`22164f72 f6414240        test    byte ptr [rcx+42h],40h
fffff803`22164f76 0f84ee000000    je      nt!ObRegisterCallbacks+0x1e2 (fffff803`2216506a)

nt!ObRegisterCallbacks+0xf4:
fffff803`22164f7c 498b4c3610      mov     rcx,qword ptr [r14+rsi+10h]
fffff803`22164f81 4885c9          test    rcx,rcx
fffff803`22164f84 0f849aaa1000    je      nt! ?? ::NNGAKEGL::`string'+0x3ced2 (fffff803`2226fa24)

nt!ObRegisterCallbacks+0x102:
fffff803`22164f8a e8214cffff      call    nt!MmVerifyCallbackFunction (fffff803`22159bb0)
fffff803`22164f8f 85c0            test    eax,eax
fffff803`22164f91 0f84c9000000    je      nt!ObRegisterCallbacks+0x1d8 (fffff803`22165060)

nt!ObRegisterCallbacks+0x10f:
fffff803`22164f97 498b4c3618      mov     rcx,qword ptr [r14+rsi+18h]
fffff803`22164f9c 4885c9          test    rcx,rcx
fffff803`22164f9f 0f8598aa1000    jne     nt! ?? ::NNGAKEGL::`string'+0x3ceeb (fffff803`2226fa3d)

nt!ObRegisterCallbacks+0x11d:
fffff803`22164fa5 48895d00        mov     qword ptr [rbp],rbx
fffff803`22164fa9 488d55c8        lea     rdx,[rbp-38h]
fffff803`22164fad 488912          mov     qword ptr [rdx],rdx
fffff803`22164fb0 488955d0        mov     qword ptr [rbp-30h],rdx
fffff803`22164fb4 418b443608      mov     eax,dword ptr [r14+rsi+8]
fffff803`22164fb9 8945d8          mov     dword ptr [rbp-28h],eax
fffff803`22164fbc 48897de0        mov     qword ptr [rbp-20h],rdi
fffff803`22164fc0 498b0436        mov     rax,qword ptr [r14+rsi]
fffff803`22164fc4 488b08          mov     rcx,qword ptr [rax]
fffff803`22164fc7 48894de8        mov     qword ptr [rbp-18h],rcx
fffff803`22164fcb 498b443610      mov     rax,qword ptr [r14+rsi+10h]
fffff803`22164fd0 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`22164fd4 498b443618      mov     rax,qword ptr [r14+rsi+18h]
fffff803`22164fd9 488945f8        mov     qword ptr [rbp-8],rax
fffff803`22164fdd e896000000      call    nt!ObpInsertCallbackByAltitude (fffff803`22165078)
fffff803`22164fe2 8bf0            mov     esi,eax
fffff803`22164fe4 85c0            test    eax,eax
fffff803`22164fe6 0f8863aa1000    js      nt! ?? ::NNGAKEGL::`string'+0x3cefd (fffff803`2226fa4f)

nt!ObRegisterCallbacks+0x164:
fffff803`22164fec b801000000      mov     eax,1
fffff803`22164ff1 4983c620        add     r14,20h
fffff803`22164ff5 4883c540        add     rbp,40h
fffff803`22164ff9 66014702        add     word ptr [rdi+2],ax
fffff803`22164ffd 410fb74f02      movzx   ecx,word ptr [r15+2]
fffff803`22165002 4403e0          add     r12d,eax
fffff803`22165005 443be1          cmp     r12d,ecx
fffff803`22165008 0f824effffff    jb      nt!ObRegisterCallbacks+0xd4 (fffff803`22164f5c)

nt!ObRegisterCallbacks+0x186:
fffff803`2216500e 85f6            test    esi,esi
fffff803`22165010 0f8839aa1000    js      nt! ?? ::NNGAKEGL::`string'+0x3cefd (fffff803`2226fa4f)

nt!ObRegisterCallbacks+0x18e:
fffff803`22165016 663b5f02        cmp     bx,word ptr [rdi+2]
fffff803`2216501a 7321            jae     nt!ObRegisterCallbacks+0x1b5 (fffff803`2216503d)

nt!ObRegisterCallbacks+0x194:
fffff803`2216501c 488d4f34        lea     rcx,[rdi+34h]
fffff803`22165020 41bd01000000    mov     r13d,1

nt!ObRegisterCallbacks+0x19e:
fffff803`22165026 440929          or      dword ptr [rcx],r13d
fffff803`22165029 0fb74702        movzx   eax,word ptr [rdi+2]
fffff803`2216502d 4103dd          add     ebx,r13d
fffff803`22165030 4883c140        add     rcx,40h
fffff803`22165034 3bd8            cmp     ebx,eax
fffff803`22165036 72ee            jb      nt!ObRegisterCallbacks+0x19e (fffff803`22165026)

nt!ObRegisterCallbacks+0x1b0:
fffff803`22165038 4c8b6c2458      mov     r13,qword ptr [rsp+58h]

nt!ObRegisterCallbacks+0x1b5:
fffff803`2216503d 49897d00        mov     qword ptr [r13],rdi

nt!ObRegisterCallbacks+0x1b9:
fffff803`22165041 8bc6            mov     eax,esi

nt!ObRegisterCallbacks+0x1bb:
fffff803`22165043 488b5c2450      mov     rbx,qword ptr [rsp+50h]
fffff803`22165048 488b6c2460      mov     rbp,qword ptr [rsp+60h]
fffff803`2216504d 488b742468      mov     rsi,qword ptr [rsp+68h]
fffff803`22165052 4883c420        add     rsp,20h
fffff803`22165056 415f            pop     r15
fffff803`22165058 415e            pop     r14
fffff803`2216505a 415d            pop     r13
fffff803`2216505c 415c            pop     r12
fffff803`2216505e 5f              pop     rdi
fffff803`2216505f c3              ret

nt!ObRegisterCallbacks+0x1d8:
fffff803`22165060 be220000c0      mov     esi,0C0000022h
fffff803`22165065 e9e5a91000      jmp     nt! ?? ::NNGAKEGL::`string'+0x3cefd (fffff803`2226fa4f)

nt!ObRegisterCallbacks+0x1e2:
fffff803`2216506a be0d0000c0      mov     esi,0C000000Dh
fffff803`2216506f eb9d            jmp     nt!ObRegisterCallbacks+0x186 (fffff803`2216500e)

nt!ObpInsertCallbackByAltitude+0x4c:
fffff803`221650c4 4981c6c8000000  add     r14,0C8h
fffff803`221650cb 498b3e          mov     rdi,qword ptr [r14]
fffff803`221650ce 493bfe          cmp     rdi,r14
fffff803`221650d1 0f8593000000    jne     nt!ObpInsertCallbackByAltitude+0xf2 (fffff803`2216516a)

nt!ObpInsertCallbackByAltitude+0x5f:
fffff803`221650d7 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`221650db 488b08          mov     rcx,qword ptr [rax]
fffff803`221650de 48894608        mov     qword ptr [rsi+8],rax
fffff803`221650e2 48890e          mov     qword ptr [rsi],rcx
fffff803`221650e5 48394108        cmp     qword ptr [rcx+8],rax
fffff803`221650e9 0f858aaa1000    jne     nt! ?? ::NNGAKEGL::`string'+0x3d025 (fffff803`2226fb79)

nt!ObpInsertCallbackByAltitude+0x77:
fffff803`221650ef 48897108        mov     qword ptr [rcx+8],rsi
fffff803`221650f3 488930          mov     qword ptr [rax],rsi

nt!ObpInsertCallbackByAltitude+0x7e:
fffff803`221650f6 0f0d0b          prefetchw [rbx]
fffff803`221650f9 488b03          mov     rax,qword ptr [rbx]
fffff803`221650fc 488bc8          mov     rcx,rax
fffff803`221650ff 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`22165103 4883f910        cmp     rcx,10h
fffff803`22165107 488d48f0        lea     rcx,[rax-10h]
fffff803`2216510b 7703            ja      nt!ObpInsertCallbackByAltitude+0x98 (fffff803`22165110)

nt!ObpInsertCallbackByAltitude+0x95:
fffff803`2216510d 498bcc          mov     rcx,r12

nt!ObpInsertCallbackByAltitude+0x98:
fffff803`22165110 a802            test    al,2
fffff803`22165112 755f            jne     nt!ObpInsertCallbackByAltitude+0xfb (fffff803`22165173)

nt!ObpInsertCallbackByAltitude+0x9c:
fffff803`22165114 f0480fb10b      lock cmpxchg qword ptr [rbx],rcx
fffff803`22165119 7558            jne     nt!ObpInsertCallbackByAltitude+0xfb (fffff803`22165173)

nt!ObpInsertCallbackByAltitude+0xa3:
fffff803`2216511b 65488b142588010000 mov   rdx,qword ptr gs:[188h]
fffff803`22165124 0fbf8ae6010000  movsx   ecx,word ptr [rdx+1E6h]
fffff803`2216512b ffc1            inc     ecx
fffff803`2216512d 66898ae6010000  mov     word ptr [rdx+1E6h],cx
fffff803`22165134 6685c9          test    cx,cx
fffff803`22165137 7510            jne     nt!ObpInsertCallbackByAltitude+0xd1 (fffff803`22165149)

nt!ObpInsertCallbackByAltitude+0xc1:
fffff803`22165139 488d8a98000000  lea     rcx,[rdx+98h]
fffff803`22165140 483909          cmp     qword ptr [rcx],rcx
fffff803`22165143 0f8537aa1000    jne     nt! ?? ::NNGAKEGL::`string'+0x3d02c (fffff803`2226fb80)

nt!ObpInsertCallbackByAltitude+0xd1:
fffff803`22165149 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`2216514e 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`22165153 488b7c2458      mov     rdi,qword ptr [rsp+58h]
fffff803`22165158 8bc5            mov     eax,ebp
fffff803`2216515a 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`2216515f 4883c420        add     rsp,20h
fffff803`22165163 415f            pop     r15
fffff803`22165165 415e            pop     r14
fffff803`22165167 415c            pop     r12
fffff803`22165169 c3              ret

nt!ObpInsertCallbackByAltitude+0xf2:
fffff803`2216516a 4c8b7e18        mov     r15,qword ptr [rsi+18h]
fffff803`2216516e e9d7a91000      jmp     nt! ?? ::NNGAKEGL::`string'+0x3cff6 (fffff803`2226fb4a)

nt!ObpInsertCallbackByAltitude+0xfb:
fffff803`22165173 488bcb          mov     rcx,rbx
fffff803`22165176 e87172bcff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)
fffff803`2216517b eb9e            jmp     nt!ObpInsertCallbackByAltitude+0xa3 (fffff803`2216511b)

nt! ?? ::NNGAKEGL::`string'+0x3cebe:
fffff803`2226fa10 b80d0000c0      mov     eax,0C000000Dh
fffff803`2226fa15 e92956efff      jmp     nt!ObRegisterCallbacks+0x1bb (fffff803`22165043)

nt! ?? ::NNGAKEGL::`string'+0x3cec8:
fffff803`2226fa1a b89a0000c0      mov     eax,0C000009Ah
fffff803`2226fa1f e91f56efff      jmp     nt!ObRegisterCallbacks+0x1bb (fffff803`22165043)

nt! ?? ::NNGAKEGL::`string'+0x3ced2:
fffff803`2226fa24 49395c3618      cmp     qword ptr [r14+rsi+18h],rbx
fffff803`2226fa29 0f843b56efff    je      nt!ObRegisterCallbacks+0x1e2 (fffff803`2216506a)

nt! ?? ::NNGAKEGL::`string'+0x3cedd:
fffff803`2226fa2f 4885c9          test    rcx,rcx
fffff803`2226fa32 0f845f55efff    je      nt!ObRegisterCallbacks+0x10f (fffff803`22164f97)

nt! ?? ::NNGAKEGL::`string'+0x3cee6:
fffff803`2226fa38 e94d55efff      jmp     nt!ObRegisterCallbacks+0x102 (fffff803`22164f8a)

nt! ?? ::NNGAKEGL::`string'+0x3ceeb:
fffff803`2226fa3d e86ea1eeff      call    nt!MmVerifyCallbackFunction (fffff803`22159bb0)
fffff803`2226fa42 85c0            test    eax,eax
fffff803`2226fa44 0f841656efff    je      nt!ObRegisterCallbacks+0x1d8 (fffff803`22165060)

nt! ?? ::NNGAKEGL::`string'+0x3cef8:
fffff803`2226fa4a e95655efff      jmp     nt!ObRegisterCallbacks+0x11d (fffff803`22164fa5)

nt! ?? ::NNGAKEGL::`string'+0x3cefd:
fffff803`2226fa4f 8beb            mov     ebp,ebx
fffff803`2226fa51 663b5f02        cmp     bx,word ptr [rdi+2]
fffff803`2226fa55 0f83c4000000    jae     nt! ?? ::NNGAKEGL::`string'+0x3cfcd (fffff803`2226fb1f)

nt! ?? ::NNGAKEGL::`string'+0x3cf09:
fffff803`2226fa5b 4c8d7720        lea     r14,[rdi+20h]
fffff803`2226fa5f 41bfb8000000    mov     r15d,0B8h

nt! ?? ::NNGAKEGL::`string'+0x3cf13:
fffff803`2226fa65 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`2226fa6e 66ff88e6010000  dec     word ptr [rax+1E6h]
fffff803`2226fa75 498b4e20        mov     rcx,qword ptr [r14+20h]
fffff803`2226fa79 4903cf          add     rcx,r15
fffff803`2226fa7c f0480fba2900    lock bts qword ptr [rcx],0
fffff803`2226fa82 7305            jae     nt! ?? ::NNGAKEGL::`string'+0x3cf37 (fffff803`2226fa89)

nt! ?? ::NNGAKEGL::`string'+0x3cf32:
fffff803`2226fa84 e87719aeff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)

nt! ?? ::NNGAKEGL::`string'+0x3cf37:
fffff803`2226fa89 498b0e          mov     rcx,qword ptr [r14]
fffff803`2226fa8c 498b4608        mov     rax,qword ptr [r14+8]
fffff803`2226fa90 4c397108        cmp     qword ptr [rcx+8],r14
fffff803`2226fa94 0f8598000000    jne     nt! ?? ::NNGAKEGL::`string'+0x3cfe0 (fffff803`2226fb32)

nt! ?? ::NNGAKEGL::`string'+0x3cf48:
fffff803`2226fa9a 4c3930          cmp     qword ptr [rax],r14
fffff803`2226fa9d 0f858f000000    jne     nt! ?? ::NNGAKEGL::`string'+0x3cfe0 (fffff803`2226fb32)

nt! ?? ::NNGAKEGL::`string'+0x3cf51:
fffff803`2226faa3 488908          mov     qword ptr [rax],rcx
fffff803`2226faa6 48894108        mov     qword ptr [rcx+8],rax
fffff803`2226faaa 498b5620        mov     rdx,qword ptr [r14+20h]
fffff803`2226faae 4903d7          add     rdx,r15
fffff803`2226fab1 0f0d0a          prefetchw [rdx]
fffff803`2226fab4 488b02          mov     rax,qword ptr [rdx]
fffff803`2226fab7 488bc8          mov     rcx,rax
fffff803`2226faba 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`2226fabe 4883f910        cmp     rcx,10h
fffff803`2226fac2 488d48f0        lea     rcx,[rax-10h]
fffff803`2226fac6 7703            ja      nt! ?? ::NNGAKEGL::`string'+0x3cf79 (fffff803`2226facb)

nt! ?? ::NNGAKEGL::`string'+0x3cf76:
fffff803`2226fac8 488bcb          mov     rcx,rbx

nt! ?? ::NNGAKEGL::`string'+0x3cf79:
fffff803`2226facb a802            test    al,2
fffff803`2226facd 7507            jne     nt! ?? ::NNGAKEGL::`string'+0x3cf84 (fffff803`2226fad6)

nt! ?? ::NNGAKEGL::`string'+0x3cf7d:
fffff803`2226facf f0480fb10a      lock cmpxchg qword ptr [rdx],rcx
fffff803`2226fad4 7408            je      nt! ?? ::NNGAKEGL::`string'+0x3cf8c (fffff803`2226fade)

nt! ?? ::NNGAKEGL::`string'+0x3cf84:
fffff803`2226fad6 488bca          mov     rcx,rdx
fffff803`2226fad9 e80ec9abff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt! ?? ::NNGAKEGL::`string'+0x3cf8c:
fffff803`2226fade 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`2226fae7 0fbf81e6010000  movsx   eax,word ptr [rcx+1E6h]
fffff803`2226faee ffc0            inc     eax
fffff803`2226faf0 668981e6010000  mov     word ptr [rcx+1E6h],ax
fffff803`2226faf7 6685c0          test    ax,ax
fffff803`2226fafa 7511            jne     nt! ?? ::NNGAKEGL::`string'+0x3cfbb (fffff803`2226fb0d)

nt! ?? ::NNGAKEGL::`string'+0x3cfaa:
fffff803`2226fafc 488d8198000000  lea     rax,[rcx+98h]
fffff803`2226fb03 483900          cmp     qword ptr [rax],rax
fffff803`2226fb06 7405            je      nt! ?? ::NNGAKEGL::`string'+0x3cfbb (fffff803`2226fb0d)

nt! ?? ::NNGAKEGL::`string'+0x3cfb6:
fffff803`2226fb08 e8f39cafff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt! ?? ::NNGAKEGL::`string'+0x3cfbb:
fffff803`2226fb0d 0fb74702        movzx   eax,word ptr [rdi+2]
fffff803`2226fb11 ffc5            inc     ebp
fffff803`2226fb13 4983c640        add     r14,40h
fffff803`2226fb17 3be8            cmp     ebp,eax
fffff803`2226fb19 0f8246ffffff    jb      nt! ?? ::NNGAKEGL::`string'+0x3cf13 (fffff803`2226fa65)

nt! ?? ::NNGAKEGL::`string'+0x3cfcd:
fffff803`2226fb1f ba4f62466c      mov     edx,6C46624Fh
fffff803`2226fb24 488bcf          mov     rcx,rdi
fffff803`2226fb27 e83436c7ff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`2226fb2c 90              nop
fffff803`2226fb2d e90f55efff      jmp     nt!ObRegisterCallbacks+0x1b9 (fffff803`22165041)

nt! ?? ::NNGAKEGL::`string'+0x3cfe0:
fffff803`2226fb32 b903000000      mov     ecx,3
fffff803`2226fb37 cd29            int     29h
fffff803`2226fb39 90              nop
fffff803`2226fb3a 90              nop
fffff803`2226fb3b 90              nop
fffff803`2226fb3c 488bcb          mov     rcx,rbx
fffff803`2226fb3f e8bc18aeff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`2226fb44 90              nop
fffff803`2226fb45 e97a55efff      jmp     nt!ObpInsertCallbackByAltitude+0x4c (fffff803`221650c4)

nt! ?? ::NNGAKEGL::`string'+0x3cff6:
fffff803`2226fb4a 488b4f18        mov     rcx,qword ptr [rdi+18h]
fffff803`2226fb4e 498d5710        lea     rdx,[r15+10h]
fffff803`2226fb52 4883c110        add     rcx,10h
fffff803`2226fb56 e8edc4a2ff      call    nt!RtlCompareAltitudes (fffff803`21c9c048)
fffff803`2226fb5b 85c0            test    eax,eax
fffff803`2226fb5d 7e0a            jle     nt! ?? ::NNGAKEGL::`string'+0x3d015 (fffff803`2226fb69)

nt! ?? ::NNGAKEGL::`string'+0x3d00b:
fffff803`2226fb5f 488b3f          mov     rdi,qword ptr [rdi]
fffff803`2226fb62 493bfe          cmp     rdi,r14
fffff803`2226fb65 75e3            jne     nt! ?? ::NNGAKEGL::`string'+0x3cff6 (fffff803`2226fb4a)

nt! ?? ::NNGAKEGL::`string'+0x3d013:
fffff803`2226fb67 85c0            test    eax,eax

nt! ?? ::NNGAKEGL::`string'+0x3d015:
fffff803`2226fb69 0f856855efff    jne     nt!ObpInsertCallbackByAltitude+0x5f (fffff803`221650d7)

nt! ?? ::NNGAKEGL::`string'+0x3d01b:
fffff803`2226fb6f bd11001cc0      mov     ebp,0C01C0011h
fffff803`2226fb74 e97d55efff      jmp     nt!ObpInsertCallbackByAltitude+0x7e (fffff803`221650f6)

nt! ?? ::NNGAKEGL::`string'+0x3d025:
fffff803`2226fb79 b903000000      mov     ecx,3
fffff803`2226fb7e cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x3d02c:
fffff803`2226fb80 e87b9cafff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`2226fb85 90              nop
fffff803`2226fb86 e9be55efff      jmp     nt!ObpInsertCallbackByAltitude+0xd1 (fffff803`22165149)
