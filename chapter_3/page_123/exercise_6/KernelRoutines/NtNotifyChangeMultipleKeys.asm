nt!NtNotifyChangeMultipleKeys:
fffff803`22072e20 488bc4          mov     rax,rsp
fffff803`22072e23 4c894820        mov     qword ptr [rax+20h],r9
fffff803`22072e27 4c894018        mov     qword ptr [rax+18h],r8
fffff803`22072e2b 895010          mov     dword ptr [rax+10h],edx
fffff803`22072e2e 48894808        mov     qword ptr [rax+8],rcx
fffff803`22072e32 53              push    rbx
fffff803`22072e33 56              push    rsi
fffff803`22072e34 57              push    rdi
fffff803`22072e35 4154            push    r12
fffff803`22072e37 4155            push    r13
fffff803`22072e39 4156            push    r14
fffff803`22072e3b 4157            push    r15
fffff803`22072e3d 4881ec20010000  sub     rsp,120h
fffff803`22072e44 498bf1          mov     rsi,r9
fffff803`22072e47 448bf2          mov     r14d,edx
fffff803`22072e4a 33db            xor     ebx,ebx
fffff803`22072e4c 48895c2468      mov     qword ptr [rsp+68h],rbx
fffff803`22072e51 448beb          mov     r13d,ebx
fffff803`22072e54 48899c2480000000 mov     qword ptr [rsp+80h],rbx
fffff803`22072e5c 8d4301          lea     eax,[rbx+1]
fffff803`22072e5f 448be0          mov     r12d,eax
fffff803`22072e62 8944244c        mov     dword ptr [rsp+4Ch],eax
fffff803`22072e66 899c2490000000  mov     dword ptr [rsp+90h],ebx
fffff803`22072e6d 33d2            xor     edx,edx
fffff803`22072e6f 41b884000000    mov     r8d,84h
fffff803`22072e75 488d8c2494000000 lea     rcx,[rsp+94h]
fffff803`22072e7d e83eecc7ff      call    nt!memset (fffff803`21cf1ac0)
fffff803`22072e82 885c2442        mov     byte ptr [rsp+42h],bl
fffff803`22072e86 48895c2460      mov     qword ptr [rsp+60h],rbx
fffff803`22072e8b 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`22072e94 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`22072e9b 0f0d0db66ceeff  prefetchw [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22072ea2 488b05af6ceeff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22072ea9 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`22072ead 488d4802        lea     rcx,[rax+2]
fffff803`22072eb1 4c8d3da06ceeff  lea     r15,[nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22072eb8 f0480fb10d976ceeff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rcx
fffff803`22072ec1 7456            je      nt!NtNotifyChangeMultipleKeys+0xf9 (fffff803`22072f19)

nt!NtNotifyChangeMultipleKeys+0xa3:
fffff803`22072ec3 498bcf          mov     rcx,r15
fffff803`22072ec6 e80594cbff      call    nt!ExfAcquireRundownProtection (fffff803`21d2c2d0)
fffff803`22072ecb 408af8          mov     dil,al
fffff803`22072ece 84c0            test    al,al
fffff803`22072ed0 7538            jne     nt!NtNotifyChangeMultipleKeys+0xea (fffff803`22072f0a)

nt!NtNotifyChangeMultipleKeys+0xb2:
fffff803`22072ed2 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`22072edb 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22072ee2 ffc0            inc     eax
fffff803`22072ee4 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`22072eeb 6685c0          test    ax,ax
fffff803`22072eee 751a            jne     nt!NtNotifyChangeMultipleKeys+0xea (fffff803`22072f0a)

nt!NtNotifyChangeMultipleKeys+0xd0:
fffff803`22072ef0 488d8198000000  lea     rax,[rcx+98h]
fffff803`22072ef7 483900          cmp     qword ptr [rax],rax
fffff803`22072efa 740e            je      nt!NtNotifyChangeMultipleKeys+0xea (fffff803`22072f0a)

nt!NtNotifyChangeMultipleKeys+0xdc:
fffff803`22072efc 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`22072f03 7505            jne     nt!NtNotifyChangeMultipleKeys+0xea (fffff803`22072f0a)

nt!NtNotifyChangeMultipleKeys+0xe5:
fffff803`22072f05 e8f668cfff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!NtNotifyChangeMultipleKeys+0xea:
fffff803`22072f0a 4084ff          test    dil,dil
fffff803`22072f0d 750a            jne     nt!NtNotifyChangeMultipleKeys+0xf9 (fffff803`22072f19)

nt!NtNotifyChangeMultipleKeys+0xef:
fffff803`22072f0f b8890100c0      mov     eax,0C0000189h
fffff803`22072f14 e9ef0b0000      jmp     nt!NtNotifyChangeMultipleKeys+0xce8 (fffff803`22073b08)

nt!NtNotifyChangeMultipleKeys+0xf9:
fffff803`22072f19 498bc4          mov     rax,r12
fffff803`22072f1c 88442440        mov     byte ptr [rsp+40h],al
fffff803`22072f20 443bf0          cmp     r14d,eax
fffff803`22072f23 766b            jbe     nt!NtNotifyChangeMultipleKeys+0x170 (fffff803`22072f90)

nt!NtNotifyChangeMultipleKeys+0x105:
fffff803`22072f25 0f0d0d2c6ceeff  prefetchw [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22072f2c 488b05256ceeff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22072f33 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`22072f37 488d50fe        lea     rdx,[rax-2]
fffff803`22072f3b f0480fb115146ceeff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rdx
fffff803`22072f44 7408            je      nt!NtNotifyChangeMultipleKeys+0x12e (fffff803`22072f4e)

nt!NtNotifyChangeMultipleKeys+0x126:
fffff803`22072f46 498bcf          mov     rcx,r15
fffff803`22072f49 e82244caff      call    nt!ExfReleaseRundownProtection (fffff803`21d17370)

nt!NtNotifyChangeMultipleKeys+0x12e:
fffff803`22072f4e 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`22072f57 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22072f5e ffc0            inc     eax
fffff803`22072f60 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`22072f67 6685c0          test    ax,ax
fffff803`22072f6a 751a            jne     nt!NtNotifyChangeMultipleKeys+0x166 (fffff803`22072f86)

nt!NtNotifyChangeMultipleKeys+0x14c:
fffff803`22072f6c 488d8198000000  lea     rax,[rcx+98h]
fffff803`22072f73 483900          cmp     qword ptr [rax],rax
fffff803`22072f76 740e            je      nt!NtNotifyChangeMultipleKeys+0x166 (fffff803`22072f86)

nt!NtNotifyChangeMultipleKeys+0x158:
fffff803`22072f78 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`22072f7f 7505            jne     nt!NtNotifyChangeMultipleKeys+0x166 (fffff803`22072f86)

nt!NtNotifyChangeMultipleKeys+0x161:
fffff803`22072f81 e87a68cfff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!NtNotifyChangeMultipleKeys+0x166:
fffff803`22072f86 b80d0000c0      mov     eax,0C000000Dh
fffff803`22072f8b e9780b0000      jmp     nt!NtNotifyChangeMultipleKeys+0xce8 (fffff803`22073b08)

nt!NtNotifyChangeMultipleKeys+0x170:
fffff803`22072f90 0fb6fb          movzx   edi,bl
fffff803`22072f93 443bf0          cmp     r14d,eax
fffff803`22072f96 0f44f8          cmove   edi,eax
fffff803`22072f99 897c2444        mov     dword ptr [rsp+44h],edi
fffff803`22072f9d 40887c2443      mov     byte ptr [rsp+43h],dil
fffff803`22072fa2 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`22072fab 8a8832020000    mov     cl,byte ptr [rax+232h]
fffff803`22072fb1 884c2441        mov     byte ptr [rsp+41h],cl
fffff803`22072fb5 84c9            test    cl,cl
fffff803`22072fb7 0f8492010000    je      nt!NtNotifyChangeMultipleKeys+0x32f (fffff803`2207314f)

nt!NtNotifyChangeMultipleKeys+0x19d:
fffff803`22072fbd f784249801000000000010 test dword ptr [rsp+198h],10000000h
fffff803`22072fc8 7478            je      nt!NtNotifyChangeMultipleKeys+0x222 (fffff803`22073042)

nt!NtNotifyChangeMultipleKeys+0x1aa:
fffff803`22072fca 389c24b8010000  cmp     byte ptr [rsp+1B8h],bl
fffff803`22072fd1 741f            je      nt!NtNotifyChangeMultipleKeys+0x1d2 (fffff803`22072ff2)

nt!NtNotifyChangeMultipleKeys+0x1b3:
fffff803`22072fd3 48399c2480010000 cmp     qword ptr [rsp+180h],rbx
fffff803`22072fdb 7515            jne     nt!NtNotifyChangeMultipleKeys+0x1d2 (fffff803`22072ff2)

nt!NtNotifyChangeMultipleKeys+0x1bd:
fffff803`22072fdd 4885f6          test    rsi,rsi
fffff803`22072fe0 7410            je      nt!NtNotifyChangeMultipleKeys+0x1d2 (fffff803`22072ff2)

nt!NtNotifyChangeMultipleKeys+0x1c2:
fffff803`22072fe2 41bc04000000    mov     r12d,4
fffff803`22072fe8 448964244c      mov     dword ptr [rsp+4Ch],r12d
fffff803`22072fed e9cd010000      jmp     nt!NtNotifyChangeMultipleKeys+0x39f (fffff803`220731bf)

nt!NtNotifyChangeMultipleKeys+0x1d2:
fffff803`22072ff2 0f0d0d5f6beeff  prefetchw [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22072ff9 488b05586beeff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22073000 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`22073004 488d48fe        lea     rcx,[rax-2]
fffff803`22073008 f0480fb10d476beeff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rcx
fffff803`22073011 7408            je      nt!NtNotifyChangeMultipleKeys+0x1fb (fffff803`2207301b)

nt!NtNotifyChangeMultipleKeys+0x1f3:
fffff803`22073013 498bcf          mov     rcx,r15
fffff803`22073016 e85543caff      call    nt!ExfReleaseRundownProtection (fffff803`21d17370)

nt!NtNotifyChangeMultipleKeys+0x1fb:
fffff803`2207301b 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`22073024 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`2207302b ffc0            inc     eax
fffff803`2207302d 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`22073034 6685c0          test    ax,ax
fffff803`22073037 0f8549ffffff    jne     nt!NtNotifyChangeMultipleKeys+0x166 (fffff803`22072f86)

nt!NtNotifyChangeMultipleKeys+0x21d:
fffff803`2207303d e92affffff      jmp     nt!NtNotifyChangeMultipleKeys+0x14c (fffff803`22072f6c)

nt!NtNotifyChangeMultipleKeys+0x222:
fffff803`22073042 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`2207304b 488b88b8000000  mov     rcx,qword ptr [rax+0B8h]
fffff803`22073052 48399918040000  cmp     qword ptr [rcx+418h],rbx
fffff803`22073059 400f95c6        setne   sil
fffff803`2207305d 4088742442      mov     byte ptr [rsp+42h],sil
fffff803`22073062 408ac6          mov     al,sil
fffff803`22073065 f6d8            neg     al
fffff803`22073067 481bd2          sbb     rdx,rdx
fffff803`2207306a 4883e2f8        and     rdx,0FFFFFFFFFFFFFFF8h
fffff803`2207306e 4883c210        add     rdx,10h
fffff803`22073072 41b804000000    mov     r8d,4
fffff803`22073078 4c8bb42490010000 mov     r14,qword ptr [rsp+190h]
fffff803`22073080 498bce          mov     rcx,r14
fffff803`22073083 e898f40200      call    nt!ProbeForWrite (fffff803`220a2520)
fffff803`22073088 8b9424b0010000  mov     edx,dword ptr [rsp+1B0h]
fffff803`2207308f 41b804000000    mov     r8d,4
fffff803`22073095 488b8c24a8010000 mov     rcx,qword ptr [rsp+1A8h]
fffff803`2207309d e87ef40200      call    nt!ProbeForWrite (fffff803`220a2520)
fffff803`220730a2 4084f6          test    sil,sil
fffff803`220730a5 7409            je      nt!NtNotifyChangeMultipleKeys+0x290 (fffff803`220730b0)

nt!NtNotifyChangeMultipleKeys+0x287:
fffff803`220730a7 49c70603010000  mov     qword ptr [r14],103h
fffff803`220730ae eb0b            jmp     nt!NtNotifyChangeMultipleKeys+0x29b (fffff803`220730bb)

nt!NtNotifyChangeMultipleKeys+0x290:
fffff803`220730b0 41c70603010000  mov     dword ptr [r14],103h
fffff803`220730b7 49895e08        mov     qword ptr [r14+8],rbx

nt!NtNotifyChangeMultipleKeys+0x29b:
fffff803`220730bb 41be03000000    mov     r14d,3
fffff803`220730c1 8a4c2441        mov     cl,byte ptr [rsp+41h]
fffff803`220730c5 389c24b8010000  cmp     byte ptr [rsp+1B8h],bl
fffff803`220730cc 0f84f3000000    je      nt!NtNotifyChangeMultipleKeys+0x3a5 (fffff803`220731c5)

nt!NtNotifyChangeMultipleKeys+0x2b2:
fffff803`220730d2 458d66ff        lea     r12d,[r14-1]
fffff803`220730d6 448964244c      mov     dword ptr [rsp+4Ch],r12d
fffff803`220730db e9e5000000      jmp     nt!NtNotifyChangeMultipleKeys+0x3a5 (fffff803`220731c5)

nt!NtNotifyChangeMultipleKeys+0x32f:
fffff803`2207314f 389c24b8010000  cmp     byte ptr [rsp+1B8h],bl
fffff803`22073156 7467            je      nt!NtNotifyChangeMultipleKeys+0x39f (fffff803`220731bf)

nt!NtNotifyChangeMultipleKeys+0x338:
fffff803`22073158 41be03000000    mov     r14d,3
fffff803`2207315e 458be6          mov     r12d,r14d
fffff803`22073161 448974244c      mov     dword ptr [rsp+4Ch],r14d
fffff803`22073166 399c2468010000  cmp     dword ptr [rsp+168h],ebx
fffff803`2207316d 7656            jbe     nt!NtNotifyChangeMultipleKeys+0x3a5 (fffff803`220731c5)

nt!NtNotifyChangeMultipleKeys+0x34f:
fffff803`2207316f 0f0d0de269eeff  prefetchw [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22073176 488b05db69eeff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`2207317d 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`22073181 488d48fe        lea     rcx,[rax-2]
fffff803`22073185 f0480fb10dca69eeff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rcx
fffff803`2207318e 7408            je      nt!NtNotifyChangeMultipleKeys+0x378 (fffff803`22073198)

nt!NtNotifyChangeMultipleKeys+0x370:
fffff803`22073190 498bcf          mov     rcx,r15
fffff803`22073193 e8d841caff      call    nt!ExfReleaseRundownProtection (fffff803`21d17370)

nt!NtNotifyChangeMultipleKeys+0x378:
fffff803`22073198 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`220731a1 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`220731a8 ffc0            inc     eax
fffff803`220731aa 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`220731b1 6685c0          test    ax,ax
fffff803`220731b4 0f85ccfdffff    jne     nt!NtNotifyChangeMultipleKeys+0x166 (fffff803`22072f86)

nt!NtNotifyChangeMultipleKeys+0x39a:
fffff803`220731ba e9adfdffff      jmp     nt!NtNotifyChangeMultipleKeys+0x14c (fffff803`22072f6c)

nt!NtNotifyChangeMultipleKeys+0x39f:
fffff803`220731bf 41be03000000    mov     r14d,3

nt!NtNotifyChangeMultipleKeys+0x3a5:
fffff803`220731c5 8b842498010000  mov     eax,dword ptr [rsp+198h]
fffff803`220731cc 250f000010      and     eax,1000000Fh
fffff803`220731d1 39842498010000  cmp     dword ptr [rsp+198h],eax
fffff803`220731d8 7450            je      nt!NtNotifyChangeMultipleKeys+0x40a (fffff803`2207322a)

nt!NtNotifyChangeMultipleKeys+0x3ba:
fffff803`220731da 0f0d0d7769eeff  prefetchw [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`220731e1 488b057069eeff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`220731e8 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`220731ec 488d48fe        lea     rcx,[rax-2]
fffff803`220731f0 f0480fb10d5f69eeff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rcx
fffff803`220731f9 7408            je      nt!NtNotifyChangeMultipleKeys+0x3e3 (fffff803`22073203)

nt!NtNotifyChangeMultipleKeys+0x3db:
fffff803`220731fb 498bcf          mov     rcx,r15
fffff803`220731fe e86d41caff      call    nt!ExfReleaseRundownProtection (fffff803`21d17370)

nt!NtNotifyChangeMultipleKeys+0x3e3:
fffff803`22073203 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`2207320c 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22073213 ffc0            inc     eax
fffff803`22073215 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`2207321c 6685c0          test    ax,ax
fffff803`2207321f 0f8561fdffff    jne     nt!NtNotifyChangeMultipleKeys+0x166 (fffff803`22072f86)

nt!NtNotifyChangeMultipleKeys+0x405:
fffff803`22073225 e942fdffff      jmp     nt!NtNotifyChangeMultipleKeys+0x14c (fffff803`22072f6c)

nt!NtNotifyChangeMultipleKeys+0x40a:
fffff803`2207322a 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`2207322f 4c8d4c2470      lea     r9,[rsp+70h]
fffff803`22073234 448ac1          mov     r8b,cl
fffff803`22073237 ba10000000      mov     edx,10h
fffff803`2207323c 488b8c2460010000 mov     rcx,qword ptr [rsp+160h]
fffff803`22073244 e8eb880000      call    nt!CmObReferenceObjectByHandle (fffff803`2207bb34)
fffff803`22073249 8bf0            mov     esi,eax
fffff803`2207324b 85c0            test    eax,eax
fffff803`2207324d 7968            jns     nt!NtNotifyChangeMultipleKeys+0x497 (fffff803`220732b7)

nt!NtNotifyChangeMultipleKeys+0x42f:
fffff803`2207324f 0f0d0d0269eeff  prefetchw [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22073256 488b05fb68eeff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`2207325d 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`22073261 488d48fe        lea     rcx,[rax-2]
fffff803`22073265 f0480fb10dea68eeff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rcx
fffff803`2207326e 7408            je      nt!NtNotifyChangeMultipleKeys+0x458 (fffff803`22073278)

nt!NtNotifyChangeMultipleKeys+0x450:
fffff803`22073270 498bcf          mov     rcx,r15
fffff803`22073273 e8f840caff      call    nt!ExfReleaseRundownProtection (fffff803`21d17370)

nt!NtNotifyChangeMultipleKeys+0x458:
fffff803`22073278 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`22073281 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22073288 ffc0            inc     eax
fffff803`2207328a 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`22073291 6685c0          test    ax,ax
fffff803`22073294 751a            jne     nt!NtNotifyChangeMultipleKeys+0x490 (fffff803`220732b0)

nt!NtNotifyChangeMultipleKeys+0x476:
fffff803`22073296 488d8198000000  lea     rax,[rcx+98h]
fffff803`2207329d 483900          cmp     qword ptr [rax],rax
fffff803`220732a0 740e            je      nt!NtNotifyChangeMultipleKeys+0x490 (fffff803`220732b0)

nt!NtNotifyChangeMultipleKeys+0x482:
fffff803`220732a2 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`220732a9 7505            jne     nt!NtNotifyChangeMultipleKeys+0x490 (fffff803`220732b0)

nt!NtNotifyChangeMultipleKeys+0x48b:
fffff803`220732ab e85065cfff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!NtNotifyChangeMultipleKeys+0x490:
fffff803`220732b0 8bc6            mov     eax,esi
fffff803`220732b2 e951080000      jmp     nt!NtNotifyChangeMultipleKeys+0xce8 (fffff803`22073b08)

nt!NtNotifyChangeMultipleKeys+0x497:
fffff803`220732b7 4c8bfb          mov     r15,rbx
fffff803`220732ba 48895c2478      mov     qword ptr [rsp+78h],rbx
fffff803`220732bf 4084ff          test    dil,dil
fffff803`220732c2 7471            je      nt!NtNotifyChangeMultipleKeys+0x515 (fffff803`22073335)

nt!NtNotifyChangeMultipleKeys+0x4a4:
fffff803`220732c4 488d442478      lea     rax,[rsp+78h]
fffff803`220732c9 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`220732ce 488d842490000000 lea     rax,[rsp+90h]
fffff803`220732d6 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`220732db 448a4c2441      mov     r9b,byte ptr [rsp+41h]
fffff803`220732e0 4c8b05813d2800  mov     r8,qword ptr [nt!CmKeyObjectType (fffff803`222f7068)]
fffff803`220732e7 ba10000000      mov     edx,10h
fffff803`220732ec 488b8c2470010000 mov     rcx,qword ptr [rsp+170h]
fffff803`220732f4 e817080100      call    nt!ObReferenceObjectByNameEx (fffff803`22083b10)
fffff803`220732f9 8bf8            mov     edi,eax
fffff803`220732fb 85c0            test    eax,eax
fffff803`220732fd 0f888a070000    js      nt!NtNotifyChangeMultipleKeys+0xc6d (fffff803`22073a8d)

nt!NtNotifyChangeMultipleKeys+0x4e3:
fffff803`22073303 4c8b7c2478      mov     r15,qword ptr [rsp+78h]
fffff803`22073308 4d8b4708        mov     r8,qword ptr [r15+8]
fffff803`2207330c 488b442470      mov     rax,qword ptr [rsp+70h]
fffff803`22073311 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`22073315 498b4020        mov     rax,qword ptr [r8+20h]
fffff803`22073319 48394220        cmp     qword ptr [rdx+20h],rax
fffff803`2207331d 7512            jne     nt!NtNotifyChangeMultipleKeys+0x511 (fffff803`22073331)

nt!NtNotifyChangeMultipleKeys+0x4ff:
fffff803`2207331f 498bcf          mov     rcx,r15
fffff803`22073322 e8b9d8c9ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)
fffff803`22073327 bf0d0000c0      mov     edi,0C000000Dh
fffff803`2207332c e95c070000      jmp     nt!NtNotifyChangeMultipleKeys+0xc6d (fffff803`22073a8d)

nt!NtNotifyChangeMultipleKeys+0x511:
fffff803`22073331 8b7c2444        mov     edi,dword ptr [rsp+44h]

nt!NtNotifyChangeMultipleKeys+0x515:
fffff803`22073335 4533c9          xor     r9d,r9d
fffff803`22073338 4533c0          xor     r8d,r8d
fffff803`2207333b ba00000100      mov     edx,10000h
fffff803`22073340 418bcc          mov     ecx,r12d
fffff803`22073343 e8e8070000      call    nt!CmpAllocatePostBlock (fffff803`22073b30)
fffff803`22073348 488bf0          mov     rsi,rax
fffff803`2207334b 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`22073350 4885c0          test    rax,rax
fffff803`22073353 7517            jne     nt!NtNotifyChangeMultipleKeys+0x54c (fffff803`2207336c)

nt!NtNotifyChangeMultipleKeys+0x535:
fffff803`22073355 4084ff          test    dil,dil
fffff803`22073358 7408            je      nt!NtNotifyChangeMultipleKeys+0x542 (fffff803`22073362)

nt!NtNotifyChangeMultipleKeys+0x53a:
fffff803`2207335a 498bcf          mov     rcx,r15
fffff803`2207335d e87ed8c9ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)

nt!NtNotifyChangeMultipleKeys+0x542:
fffff803`22073362 bf9a0000c0      mov     edi,0C000009Ah
fffff803`22073367 e921070000      jmp     nt!NtNotifyChangeMultipleKeys+0xc6d (fffff803`22073a8d)

nt!NtNotifyChangeMultipleKeys+0x54c:
fffff803`2207336c 4084ff          test    dil,dil
fffff803`2207336f 7432            je      nt!NtNotifyChangeMultipleKeys+0x583 (fffff803`220733a3)

nt!NtNotifyChangeMultipleKeys+0x551:
fffff803`22073371 4c8bc8          mov     r9,rax
fffff803`22073374 4d8bc7          mov     r8,r15
fffff803`22073377 33d2            xor     edx,edx
fffff803`22073379 418bcc          mov     ecx,r12d
fffff803`2207337c e8af070000      call    nt!CmpAllocatePostBlock (fffff803`22073b30)
fffff803`22073381 4c8be8          mov     r13,rax
fffff803`22073384 4889842480000000 mov     qword ptr [rsp+80h],rax
fffff803`2207338c 4885c0          test    rax,rax
fffff803`2207338f 7512            jne     nt!NtNotifyChangeMultipleKeys+0x583 (fffff803`220733a3)

nt!NtNotifyChangeMultipleKeys+0x571:
fffff803`22073391 498bcf          mov     rcx,r15
fffff803`22073394 e847d8c9ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)
fffff803`22073399 488bce          mov     rcx,rsi
fffff803`2207339c e8fff6ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`220733a1 ebbf            jmp     nt!NtNotifyChangeMultipleKeys+0x542 (fffff803`22073362)

nt!NtNotifyChangeMultipleKeys+0x583:
fffff803`220733a3 b901000000      mov     ecx,1
fffff803`220733a8 443be1          cmp     r12d,ecx
fffff803`220733ab 0f8436010000    je      nt!NtNotifyChangeMultipleKeys+0x6c7 (fffff803`220734e7)

nt!NtNotifyChangeMultipleKeys+0x591:
fffff803`220733b1 488b8c2478010000 mov     rcx,qword ptr [rsp+178h]
fffff803`220733b9 4885c9          test    rcx,rcx
fffff803`220733bc 745f            je      nt!NtNotifyChangeMultipleKeys+0x5fd (fffff803`2207341d)

nt!NtNotifyChangeMultipleKeys+0x59e:
fffff803`220733be 4c8b05036df5ff  mov     r8,qword ptr [nt!ExEventObjectType (fffff803`21fca0c8)]
fffff803`220733c5 48895c2428      mov     qword ptr [rsp+28h],rbx
fffff803`220733ca 488d842488000000 lea     rax,[rsp+88h]
fffff803`220733d2 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`220733d7 448a4c2441      mov     r9b,byte ptr [rsp+41h]
fffff803`220733dc ba02000000      mov     edx,2
fffff803`220733e1 e8ca1a0300      call    nt!ObReferenceObjectByHandle (fffff803`220a4eb0)
fffff803`220733e6 8bf8            mov     edi,eax
fffff803`220733e8 488b8c2488000000 mov     rcx,qword ptr [rsp+88h]
fffff803`220733f0 48894c2468      mov     qword ptr [rsp+68h],rcx
fffff803`220733f5 85c0            test    eax,eax
fffff803`220733f7 791b            jns     nt!NtNotifyChangeMultipleKeys+0x5f4 (fffff803`22073414)

nt!NtNotifyChangeMultipleKeys+0x5d9:
fffff803`220733f9 385c2444        cmp     byte ptr [rsp+44h],bl

nt!NtNotifyChangeMultipleKeys+0x5dd:
fffff803`220733fd 7408            je      nt!NtNotifyChangeMultipleKeys+0x5e7 (fffff803`22073407)

nt!NtNotifyChangeMultipleKeys+0x5df:
fffff803`220733ff 498bcd          mov     rcx,r13
fffff803`22073402 e899f6ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)

nt!NtNotifyChangeMultipleKeys+0x5e7:
fffff803`22073407 488bce          mov     rcx,rsi
fffff803`2207340a e891f6ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`2207340f e979060000      jmp     nt!NtNotifyChangeMultipleKeys+0xc6d (fffff803`22073a8d)

nt!NtNotifyChangeMultipleKeys+0x5f4:
fffff803`22073414 e867b3caff      call    nt!KeResetEvent (fffff803`21d1e780)
fffff803`22073419 8b7c2444        mov     edi,dword ptr [rsp+44h]

nt!NtNotifyChangeMultipleKeys+0x5fd:
fffff803`2207341d 488b4e40        mov     rcx,qword ptr [rsi+40h]
fffff803`22073421 4183fc02        cmp     r12d,2
fffff803`22073425 0f858f000000    jne     nt!NtNotifyChangeMultipleKeys+0x69a (fffff803`220734ba)

nt!NtNotifyChangeMultipleKeys+0x60b:
fffff803`2207342b 488b842490010000 mov     rax,qword ptr [rsp+190h]
fffff803`22073433 48894168        mov     qword ptr [rcx+68h],rax
fffff803`22073437 488b4e40        mov     rcx,qword ptr [rsi+40h]
fffff803`2207343b 488b442468      mov     rax,qword ptr [rsp+68h]
fffff803`22073440 48894108        mov     qword ptr [rcx+8],rax
fffff803`22073444 448a442441      mov     r8b,byte ptr [rsp+41h]
fffff803`22073449 48399c2480010000 cmp     qword ptr [rsp+180h],rbx
fffff803`22073451 7512            jne     nt!NtNotifyChangeMultipleKeys+0x645 (fffff803`22073465)

nt!NtNotifyChangeMultipleKeys+0x633:
fffff803`22073453 488d05a6460600  lea     rax,[nt!AlpcConnectionDeleteProcedure (fffff803`220d7b00)]
fffff803`2207345a 4889842480010000 mov     qword ptr [rsp+180h],rax
fffff803`22073462 448ac3          mov     r8b,bl

nt!NtNotifyChangeMultipleKeys+0x645:
fffff803`22073465 65488b142588010000 mov   rdx,qword ptr gs:[188h]
fffff803`2207346e 488b4e40        mov     rcx,qword ptr [rsi+40h]
fffff803`22073472 4883c110        add     rcx,10h
fffff803`22073476 488b842488010000 mov     rax,qword ptr [rsp+188h]
fffff803`2207347e 4889442438      mov     qword ptr [rsp+38h],rax
fffff803`22073483 4488442430      mov     byte ptr [rsp+30h],r8b
fffff803`22073488 488b842480010000 mov     rax,qword ptr [rsp+180h]
fffff803`22073490 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`22073495 488d05309a1300  lea     rax,[nt!CmpPostApcRunDown (fffff803`221acecc)]
fffff803`2207349c 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`220734a1 4c8d0d90b7ffff  lea     r9,[nt!CmpPostApc (fffff803`2206ec38)]
fffff803`220734a8 41b802000000    mov     r8d,2
fffff803`220734ae e8a9d7ccff      call    nt!KeInitializeApc (fffff803`21d40c5c)
fffff803`220734b3 4c8b7c2478      mov     r15,qword ptr [rsp+78h]
fffff803`220734b8 eb2d            jmp     nt!NtNotifyChangeMultipleKeys+0x6c7 (fffff803`220734e7)

nt!NtNotifyChangeMultipleKeys+0x69a:
fffff803`220734ba 488b442468      mov     rax,qword ptr [rsp+68h]
fffff803`220734bf 488901          mov     qword ptr [rcx],rax
fffff803`220734c2 4183fc04        cmp     r12d,4
fffff803`220734c6 741f            je      nt!NtNotifyChangeMultipleKeys+0x6c7 (fffff803`220734e7)

nt!NtNotifyChangeMultipleKeys+0x6a8:
fffff803`220734c8 488b4e40        mov     rcx,qword ptr [rsi+40h]
fffff803`220734cc 488b842480010000 mov     rax,qword ptr [rsp+180h]
fffff803`220734d4 48894108        mov     qword ptr [rcx+8],rax
fffff803`220734d8 488b4e40        mov     rcx,qword ptr [rsi+40h]
fffff803`220734dc 488b842488010000 mov     rax,qword ptr [rsp+188h]
fffff803`220734e4 894110          mov     dword ptr [rcx+10h],eax

nt!NtNotifyChangeMultipleKeys+0x6c7:
fffff803`220734e7 e840ef0900      call    nt!CmpLockRegistry (fffff803`2211242c)
fffff803`220734ec b801000000      mov     eax,1
fffff803`220734f1 4c8b642470      mov     r12,qword ptr [rsp+70h]
fffff803`220734f6 4983c408        add     r12,8
fffff803`220734fa 498b0c24        mov     rcx,qword ptr [r12]
fffff803`220734fe 39842468010000  cmp     dword ptr [rsp+168h],eax
fffff803`22073505 750b            jne     nt!NtNotifyChangeMultipleKeys+0x6f2 (fffff803`22073512)

nt!NtNotifyChangeMultipleKeys+0x6e7:
fffff803`22073507 498b5708        mov     rdx,qword ptr [r15+8]
fffff803`2207350b e8b4260600      call    nt!CmpLockTwoKcbsShared (fffff803`220d5bc4)
fffff803`22073510 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0x6f7 (fffff803`22073517)

nt!NtNotifyChangeMultipleKeys+0x6f2:
fffff803`22073512 e8b5600000      call    nt!CmpLockKcbShared (fffff803`220795cc)

nt!NtNotifyChangeMultipleKeys+0x6f7:
fffff803`22073517 4d8b0424        mov     r8,qword ptr [r12]
fffff803`2207351b ba00000200      mov     edx,20000h
fffff803`22073520 41855004        test    dword ptr [r8+4],edx
fffff803`22073524 0f850d050000    jne     nt!NtNotifyChangeMultipleKeys+0xc17 (fffff803`22073a37)

nt!NtNotifyChangeMultipleKeys+0x70a:
fffff803`2207352a 4084ff          test    dil,dil
fffff803`2207352d 7466            je      nt!NtNotifyChangeMultipleKeys+0x775 (fffff803`22073595)

nt!NtNotifyChangeMultipleKeys+0x70f:
fffff803`2207352f 498b4708        mov     rax,qword ptr [r15+8]
fffff803`22073533 855004          test    dword ptr [rax+4],edx
fffff803`22073536 0f85fb040000    jne     nt!NtNotifyChangeMultipleKeys+0xc17 (fffff803`22073a37)

nt!NtNotifyChangeMultipleKeys+0x71c:
fffff803`2207353c 4084ff          test    dil,dil
fffff803`2207353f 7454            je      nt!NtNotifyChangeMultipleKeys+0x775 (fffff803`22073595)

nt!NtNotifyChangeMultipleKeys+0x721:
fffff803`22073541 498b4820        mov     rcx,qword ptr [r8+20h]
fffff803`22073545 488b5020        mov     rdx,qword ptr [rax+20h]
fffff803`22073549 483bca          cmp     rcx,rdx
fffff803`2207354c 7447            je      nt!NtNotifyChangeMultipleKeys+0x775 (fffff803`22073595)

nt!NtNotifyChangeMultipleKeys+0x72e:
fffff803`2207354e 7329            jae     nt!NtNotifyChangeMultipleKeys+0x759 (fffff803`22073579)

nt!NtNotifyChangeMultipleKeys+0x730:
fffff803`22073550 e85b891200      call    nt!CmLockHive (fffff803`2219beb0)
fffff803`22073555 498b4f08        mov     rcx,qword ptr [r15+8]
fffff803`22073559 488b4920        mov     rcx,qword ptr [rcx+20h]
fffff803`2207355d e84e891200      call    nt!CmLockHive (fffff803`2219beb0)
fffff803`22073562 c744245002000000 mov     dword ptr [rsp+50h],2

nt!NtNotifyChangeMultipleKeys+0x74a:
fffff803`2207356a 498b4708        mov     rax,qword ptr [r15+8]
fffff803`2207356e 488b4020        mov     rax,qword ptr [rax+20h]
fffff803`22073572 4889442460      mov     qword ptr [rsp+60h],rax
fffff803`22073577 eb2d            jmp     nt!NtNotifyChangeMultipleKeys+0x786 (fffff803`220735a6)

nt!NtNotifyChangeMultipleKeys+0x759:
fffff803`22073579 488bca          mov     rcx,rdx
fffff803`2207357c e82f891200      call    nt!CmLockHive (fffff803`2219beb0)
fffff803`22073581 498b0c24        mov     rcx,qword ptr [r12]
fffff803`22073585 488b4920        mov     rcx,qword ptr [rcx+20h]
fffff803`22073589 e822891200      call    nt!CmLockHive (fffff803`2219beb0)
fffff803`2207358e 4489742450      mov     dword ptr [rsp+50h],r14d
fffff803`22073593 ebd5            jmp     nt!NtNotifyChangeMultipleKeys+0x74a (fffff803`2207356a)

nt!NtNotifyChangeMultipleKeys+0x775:
fffff803`22073595 498b4820        mov     rcx,qword ptr [r8+20h]
fffff803`22073599 e812891200      call    nt!CmLockHive (fffff803`2219beb0)
fffff803`2207359e c744245001000000 mov     dword ptr [rsp+50h],1

nt!NtNotifyChangeMultipleKeys+0x786:
fffff803`220735a6 e8bd881200      call    nt!LOCK_POST_LIST (fffff803`2219be68)
fffff803`220735ab 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`220735b0 448a8c24a0010000 mov     r9b,byte ptr [rsp+1A0h]
fffff803`220735b8 448b842498010000 mov     r8d,dword ptr [rsp+198h]
fffff803`220735c0 488bd6          mov     rdx,rsi
fffff803`220735c3 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff803`220735c8 e873f5ffff      call    nt!CmpNotifyChangeKey (fffff803`22072b40)
fffff803`220735cd 8bf8            mov     edi,eax
fffff803`220735cf 85c0            test    eax,eax
fffff803`220735d1 0f8990000000    jns     nt!NtNotifyChangeMultipleKeys+0x847 (fffff803`22073667)

nt!NtNotifyChangeMultipleKeys+0x7b7:
fffff803`220735d7 e8dc921200      call    nt!UNLOCK_POST_LIST (fffff803`2219c8b8)
fffff803`220735dc 8b442450        mov     eax,dword ptr [rsp+50h]
fffff803`220735e0 be01000000      mov     esi,1
fffff803`220735e5 3bc6            cmp     eax,esi
fffff803`220735e7 750a            jne     nt!NtNotifyChangeMultipleKeys+0x7d3 (fffff803`220735f3)

nt!NtNotifyChangeMultipleKeys+0x7c9:
fffff803`220735e9 498b0c24        mov     rcx,qword ptr [r12]
fffff803`220735ed 488b4920        mov     rcx,qword ptr [rcx+20h]
fffff803`220735f1 eb28            jmp     nt!NtNotifyChangeMultipleKeys+0x7fb (fffff803`2207361b)

nt!NtNotifyChangeMultipleKeys+0x7d3:
fffff803`220735f3 83f802          cmp     eax,2
fffff803`220735f6 750c            jne     nt!NtNotifyChangeMultipleKeys+0x7e4 (fffff803`22073604)

nt!NtNotifyChangeMultipleKeys+0x7d8:
fffff803`220735f8 488b4c2460      mov     rcx,qword ptr [rsp+60h]
fffff803`220735fd e8ee921200      call    nt!CmUnlockHive (fffff803`2219c8f0)
fffff803`22073602 ebe5            jmp     nt!NtNotifyChangeMultipleKeys+0x7c9 (fffff803`220735e9)

nt!NtNotifyChangeMultipleKeys+0x7e4:
fffff803`22073604 413bc6          cmp     eax,r14d
fffff803`22073607 7517            jne     nt!NtNotifyChangeMultipleKeys+0x800 (fffff803`22073620)

nt!NtNotifyChangeMultipleKeys+0x7e9:
fffff803`22073609 498b0c24        mov     rcx,qword ptr [r12]
fffff803`2207360d 488b4920        mov     rcx,qword ptr [rcx+20h]
fffff803`22073611 e8da921200      call    nt!CmUnlockHive (fffff803`2219c8f0)
fffff803`22073616 488b4c2460      mov     rcx,qword ptr [rsp+60h]

nt!NtNotifyChangeMultipleKeys+0x7fb:
fffff803`2207361b e8d0921200      call    nt!CmUnlockHive (fffff803`2219c8f0)

nt!NtNotifyChangeMultipleKeys+0x800:
fffff803`22073620 498b0c24        mov     rcx,qword ptr [r12]
fffff803`22073624 39b42468010000  cmp     dword ptr [rsp+168h],esi
fffff803`2207362b 750b            jne     nt!NtNotifyChangeMultipleKeys+0x818 (fffff803`22073638)

nt!NtNotifyChangeMultipleKeys+0x80d:
fffff803`2207362d 498b5708        mov     rdx,qword ptr [r15+8]
fffff803`22073631 e83ad30500      call    nt!CmpUnlockTwoKcbs (fffff803`220d0970)
fffff803`22073636 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0x81d (fffff803`2207363d)

nt!NtNotifyChangeMultipleKeys+0x818:
fffff803`22073638 e8731b0700      call    nt!CmpUnlockKcb (fffff803`220e51b0)

nt!NtNotifyChangeMultipleKeys+0x81d:
fffff803`2207363d e832ee0900      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`22073642 488b4c2468      mov     rcx,qword ptr [rsp+68h]
fffff803`22073647 4885c9          test    rcx,rcx
fffff803`2207364a 7405            je      nt!NtNotifyChangeMultipleKeys+0x831 (fffff803`22073651)

nt!NtNotifyChangeMultipleKeys+0x82c:
fffff803`2207364c e88fd5c9ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)

nt!NtNotifyChangeMultipleKeys+0x831:
fffff803`22073651 385c2444        cmp     byte ptr [rsp+44h],bl
fffff803`22073655 7408            je      nt!NtNotifyChangeMultipleKeys+0x83f (fffff803`2207365f)

nt!NtNotifyChangeMultipleKeys+0x837:
fffff803`22073657 498bcd          mov     rcx,r13
fffff803`2207365a e841f4ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)

nt!NtNotifyChangeMultipleKeys+0x83f:
fffff803`2207365f 448af6          mov     r14b,sil
fffff803`22073662 e92b040000      jmp     nt!NtNotifyChangeMultipleKeys+0xc72 (fffff803`22073a92)

nt!NtNotifyChangeMultipleKeys+0x847:
fffff803`22073667 385c2444        cmp     byte ptr [rsp+44h],bl
fffff803`2207366b 0f849d000000    je      nt!NtNotifyChangeMultipleKeys+0x8ee (fffff803`2207370e)

nt!NtNotifyChangeMultipleKeys+0x851:
fffff803`22073671 498bcf          mov     rcx,r15
fffff803`22073674 e8c76ac9ff      call    nt!ObfReferenceObject (fffff803`21d0a140)
fffff803`22073679 85ff            test    edi,edi
fffff803`2207367b 7514            jne     nt!NtNotifyChangeMultipleKeys+0x871 (fffff803`22073691)

nt!NtNotifyChangeMultipleKeys+0x85d:
fffff803`2207367d 498bcd          mov     rcx,r13
fffff803`22073680 e81bf4ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`22073685 8ac3            mov     al,bl
fffff803`22073687 89442444        mov     dword ptr [rsp+44h],eax
fffff803`2207368b 885c2443        mov     byte ptr [rsp+43h],bl
fffff803`2207368f eb7d            jmp     nt!NtNotifyChangeMultipleKeys+0x8ee (fffff803`2207370e)

nt!NtNotifyChangeMultipleKeys+0x871:
fffff803`22073691 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`22073696 448a8c24a0010000 mov     r9b,byte ptr [rsp+1A0h]
fffff803`2207369e 448b842498010000 mov     r8d,dword ptr [rsp+198h]
fffff803`220736a6 498bd5          mov     rdx,r13
fffff803`220736a9 498bcf          mov     rcx,r15
fffff803`220736ac e88ff4ffff      call    nt!CmpNotifyChangeKey (fffff803`22072b40)
fffff803`220736b1 8bf8            mov     edi,eax
fffff803`220736b3 85c0            test    eax,eax
fffff803`220736b5 7957            jns     nt!NtNotifyChangeMultipleKeys+0x8ee (fffff803`2207370e)

nt!NtNotifyChangeMultipleKeys+0x897:
fffff803`220736b7 488b0e          mov     rcx,qword ptr [rsi]
fffff803`220736ba 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`220736be 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`220736c2 7545            jne     nt!NtNotifyChangeMultipleKeys+0x8e9 (fffff803`22073709)

nt!NtNotifyChangeMultipleKeys+0x8a4:
fffff803`220736c4 483930          cmp     qword ptr [rax],rsi
fffff803`220736c7 7540            jne     nt!NtNotifyChangeMultipleKeys+0x8e9 (fffff803`22073709)

nt!NtNotifyChangeMultipleKeys+0x8a9:
fffff803`220736c9 488908          mov     qword ptr [rax],rcx
fffff803`220736cc 48894108        mov     qword ptr [rcx+8],rax
fffff803`220736d0 450f20c0        mov     r8,cr8
fffff803`220736d4 b801000000      mov     eax,1
fffff803`220736d9 440f22c0        mov     cr8,rax
fffff803`220736dd 488d4e10        lea     rcx,[rsi+10h]
fffff803`220736e1 488b11          mov     rdx,qword ptr [rcx]
fffff803`220736e4 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`220736e8 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`220736ec 7516            jne     nt!NtNotifyChangeMultipleKeys+0x8e4 (fffff803`22073704)

nt!NtNotifyChangeMultipleKeys+0x8ce:
fffff803`220736ee 483908          cmp     qword ptr [rax],rcx
fffff803`220736f1 7511            jne     nt!NtNotifyChangeMultipleKeys+0x8e4 (fffff803`22073704)

nt!NtNotifyChangeMultipleKeys+0x8d3:
fffff803`220736f3 488910          mov     qword ptr [rax],rdx
fffff803`220736f6 48894208        mov     qword ptr [rdx+8],rax
fffff803`220736fa 410fb6c0        movzx   eax,r8b
fffff803`220736fe 440f22c0        mov     cr8,rax
fffff803`22073702 eb0a            jmp     nt!NtNotifyChangeMultipleKeys+0x8ee (fffff803`2207370e)

nt!NtNotifyChangeMultipleKeys+0x8e4:
fffff803`22073704 498bce          mov     rcx,r14
fffff803`22073707 cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0x8e9:
fffff803`22073709 498bce          mov     rcx,r14
fffff803`2207370c cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0x8ee:
fffff803`2207370e e8a5911200      call    nt!UNLOCK_POST_LIST (fffff803`2219c8b8)
fffff803`22073713 8b442450        mov     eax,dword ptr [rsp+50h]
fffff803`22073717 b901000000      mov     ecx,1
fffff803`2207371c 3bc1            cmp     eax,ecx
fffff803`2207371e 750a            jne     nt!NtNotifyChangeMultipleKeys+0x90a (fffff803`2207372a)

nt!NtNotifyChangeMultipleKeys+0x900:
fffff803`22073720 498b0c24        mov     rcx,qword ptr [r12]
fffff803`22073724 488b4920        mov     rcx,qword ptr [rcx+20h]
fffff803`22073728 eb28            jmp     nt!NtNotifyChangeMultipleKeys+0x932 (fffff803`22073752)

nt!NtNotifyChangeMultipleKeys+0x90a:
fffff803`2207372a 83f802          cmp     eax,2
fffff803`2207372d 750c            jne     nt!NtNotifyChangeMultipleKeys+0x91b (fffff803`2207373b)

nt!NtNotifyChangeMultipleKeys+0x90f:
fffff803`2207372f 488b4c2460      mov     rcx,qword ptr [rsp+60h]
fffff803`22073734 e8b7911200      call    nt!CmUnlockHive (fffff803`2219c8f0)
fffff803`22073739 ebe5            jmp     nt!NtNotifyChangeMultipleKeys+0x900 (fffff803`22073720)

nt!NtNotifyChangeMultipleKeys+0x91b:
fffff803`2207373b 413bc6          cmp     eax,r14d
fffff803`2207373e 7517            jne     nt!NtNotifyChangeMultipleKeys+0x937 (fffff803`22073757)

nt!NtNotifyChangeMultipleKeys+0x920:
fffff803`22073740 498b0c24        mov     rcx,qword ptr [r12]
fffff803`22073744 488b4920        mov     rcx,qword ptr [rcx+20h]
fffff803`22073748 e8a3911200      call    nt!CmUnlockHive (fffff803`2219c8f0)
fffff803`2207374d 488b4c2460      mov     rcx,qword ptr [rsp+60h]

nt!NtNotifyChangeMultipleKeys+0x932:
fffff803`22073752 e899911200      call    nt!CmUnlockHive (fffff803`2219c8f0)

nt!NtNotifyChangeMultipleKeys+0x937:
fffff803`22073757 b801000000      mov     eax,1
fffff803`2207375c 498b0c24        mov     rcx,qword ptr [r12]
fffff803`22073760 39842468010000  cmp     dword ptr [rsp+168h],eax
fffff803`22073767 750b            jne     nt!NtNotifyChangeMultipleKeys+0x954 (fffff803`22073774)

nt!NtNotifyChangeMultipleKeys+0x949:
fffff803`22073769 498b5708        mov     rdx,qword ptr [r15+8]
fffff803`2207376d e8fed10500      call    nt!CmpUnlockTwoKcbs (fffff803`220d0970)
fffff803`22073772 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0x959 (fffff803`22073779)

nt!NtNotifyChangeMultipleKeys+0x954:
fffff803`22073774 e8371a0700      call    nt!CmpUnlockKcb (fffff803`220e51b0)

nt!NtNotifyChangeMultipleKeys+0x959:
fffff803`22073779 e8f6ec0900      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`2207377e 4d85ff          test    r15,r15
fffff803`22073781 7408            je      nt!NtNotifyChangeMultipleKeys+0x96b (fffff803`2207378b)

nt!NtNotifyChangeMultipleKeys+0x963:
fffff803`22073783 498bcf          mov     rcx,r15
fffff803`22073786 e855d4c9ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)

nt!NtNotifyChangeMultipleKeys+0x96b:
fffff803`2207378b 85ff            test    edi,edi
fffff803`2207378d 0f888b020000    js      nt!NtNotifyChangeMultipleKeys+0xbfe (fffff803`22073a1e)

nt!NtNotifyChangeMultipleKeys+0x973:
fffff803`22073793 41bc01000000    mov     r12d,1
fffff803`22073799 443964244c      cmp     dword ptr [rsp+4Ch],r12d
fffff803`2207379e 0f85e4020000    jne     nt!NtNotifyChangeMultipleKeys+0xc68 (fffff803`22073a88)

nt!NtNotifyChangeMultipleKeys+0x984:
fffff803`220737a4 0f0d0dad63eeff  prefetchw [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`220737ab 488b05a663eeff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`220737b2 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`220737b6 488d48fe        lea     rcx,[rax-2]
fffff803`220737ba f0480fb10d9563eeff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rcx
fffff803`220737c3 740c            je      nt!NtNotifyChangeMultipleKeys+0x9b1 (fffff803`220737d1)

nt!NtNotifyChangeMultipleKeys+0x9a5:
fffff803`220737c5 488d0d8c63eeff  lea     rcx,[nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`220737cc e89f3bcaff      call    nt!ExfReleaseRundownProtection (fffff803`21d17370)

nt!NtNotifyChangeMultipleKeys+0x9b1:
fffff803`220737d1 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`220737da 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`220737e1 ffc0            inc     eax
fffff803`220737e3 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`220737ea 6685c0          test    ax,ax
fffff803`220737ed 751a            jne     nt!NtNotifyChangeMultipleKeys+0x9e9 (fffff803`22073809)

nt!NtNotifyChangeMultipleKeys+0x9cf:
fffff803`220737ef 488d8198000000  lea     rax,[rcx+98h]
fffff803`220737f6 483900          cmp     qword ptr [rax],rax
fffff803`220737f9 740e            je      nt!NtNotifyChangeMultipleKeys+0x9e9 (fffff803`22073809)

nt!NtNotifyChangeMultipleKeys+0x9db:
fffff803`220737fb 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`22073802 7505            jne     nt!NtNotifyChangeMultipleKeys+0x9e9 (fffff803`22073809)

nt!NtNotifyChangeMultipleKeys+0x9e4:
fffff803`22073804 e8f75fcfff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!NtNotifyChangeMultipleKeys+0x9e9:
fffff803`22073809 885c2440        mov     byte ptr [rsp+40h],bl
fffff803`2207380d 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`22073812 458acc          mov     r9b,r12b
fffff803`22073815 448a442441      mov     r8b,byte ptr [rsp+41h]
fffff803`2207381a 33d2            xor     edx,edx
fffff803`2207381c 488b4e40        mov     rcx,qword ptr [rsi+40h]
fffff803`22073820 e88bacc9ff      call    nt!KeWaitForSingleObject (fffff803`21d0e4b0)
fffff803`22073825 8bf8            mov     edi,eax
fffff803`22073827 3d01010000      cmp     eax,101h
fffff803`2207382c 0f8425010000    je      nt!NtNotifyChangeMultipleKeys+0xb37 (fffff803`22073957)

nt!NtNotifyChangeMultipleKeys+0xa12:
fffff803`22073832 3dc0000000      cmp     eax,0C0h
fffff803`22073837 0f841a010000    je      nt!NtNotifyChangeMultipleKeys+0xb37 (fffff803`22073957)

nt!NtNotifyChangeMultipleKeys+0xa1d:
fffff803`2207383d e8eaeb0900      call    nt!CmpLockRegistry (fffff803`2211242c)
fffff803`22073842 e821861200      call    nt!LOCK_POST_LIST (fffff803`2219be68)
fffff803`22073847 450f20c3        mov     r11,cr8
fffff803`2207384b 450f22c4        mov     cr8,r12
fffff803`2207384f 385c2444        cmp     byte ptr [rsp+44h],bl
fffff803`22073853 744a            je      nt!NtNotifyChangeMultipleKeys+0xa7f (fffff803`2207389f)

nt!NtNotifyChangeMultipleKeys+0xa35:
fffff803`22073855 498b4500        mov     rax,qword ptr [r13]
fffff803`22073859 4885c0          test    rax,rax
fffff803`2207385c 741d            je      nt!NtNotifyChangeMultipleKeys+0xa5b (fffff803`2207387b)

nt!NtNotifyChangeMultipleKeys+0xa3e:
fffff803`2207385e 498b4d08        mov     rcx,qword ptr [r13+8]
fffff803`22073862 4c396808        cmp     qword ptr [rax+8],r13
fffff803`22073866 750e            jne     nt!NtNotifyChangeMultipleKeys+0xa56 (fffff803`22073876)

nt!NtNotifyChangeMultipleKeys+0xa48:
fffff803`22073868 4c3929          cmp     qword ptr [rcx],r13
fffff803`2207386b 7509            jne     nt!NtNotifyChangeMultipleKeys+0xa56 (fffff803`22073876)

nt!NtNotifyChangeMultipleKeys+0xa4d:
fffff803`2207386d 488901          mov     qword ptr [rcx],rax
fffff803`22073870 48894808        mov     qword ptr [rax+8],rcx
fffff803`22073874 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xa5b (fffff803`2207387b)

nt!NtNotifyChangeMultipleKeys+0xa56:
fffff803`22073876 498bce          mov     rcx,r14
fffff803`22073879 cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0xa5b:
fffff803`2207387b 498d4510        lea     rax,[r13+10h]
fffff803`2207387f 488b10          mov     rdx,qword ptr [rax]
fffff803`22073882 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`22073886 48394208        cmp     qword ptr [rdx+8],rax
fffff803`2207388a 750e            jne     nt!NtNotifyChangeMultipleKeys+0xa7a (fffff803`2207389a)

nt!NtNotifyChangeMultipleKeys+0xa6c:
fffff803`2207388c 483901          cmp     qword ptr [rcx],rax
fffff803`2207388f 7509            jne     nt!NtNotifyChangeMultipleKeys+0xa7a (fffff803`2207389a)

nt!NtNotifyChangeMultipleKeys+0xa71:
fffff803`22073891 488911          mov     qword ptr [rcx],rdx
fffff803`22073894 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`22073898 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xa7f (fffff803`2207389f)

nt!NtNotifyChangeMultipleKeys+0xa7a:
fffff803`2207389a 498bce          mov     rcx,r14
fffff803`2207389d cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0xa7f:
fffff803`2207389f 488b06          mov     rax,qword ptr [rsi]
fffff803`220738a2 4885c0          test    rax,rax
fffff803`220738a5 741d            je      nt!NtNotifyChangeMultipleKeys+0xaa4 (fffff803`220738c4)

nt!NtNotifyChangeMultipleKeys+0xa87:
fffff803`220738a7 488b4e08        mov     rcx,qword ptr [rsi+8]
fffff803`220738ab 48397008        cmp     qword ptr [rax+8],rsi
fffff803`220738af 750e            jne     nt!NtNotifyChangeMultipleKeys+0xa9f (fffff803`220738bf)

nt!NtNotifyChangeMultipleKeys+0xa91:
fffff803`220738b1 483931          cmp     qword ptr [rcx],rsi
fffff803`220738b4 7509            jne     nt!NtNotifyChangeMultipleKeys+0xa9f (fffff803`220738bf)

nt!NtNotifyChangeMultipleKeys+0xa96:
fffff803`220738b6 488901          mov     qword ptr [rcx],rax
fffff803`220738b9 48894808        mov     qword ptr [rax+8],rcx
fffff803`220738bd eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xaa4 (fffff803`220738c4)

nt!NtNotifyChangeMultipleKeys+0xa9f:
fffff803`220738bf 498bce          mov     rcx,r14
fffff803`220738c2 cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0xaa4:
fffff803`220738c4 488d4610        lea     rax,[rsi+10h]
fffff803`220738c8 488b10          mov     rdx,qword ptr [rax]
fffff803`220738cb 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`220738cf 48394208        cmp     qword ptr [rdx+8],rax
fffff803`220738d3 757d            jne     nt!NtNotifyChangeMultipleKeys+0xb32 (fffff803`22073952)

nt!NtNotifyChangeMultipleKeys+0xab5:
fffff803`220738d5 483901          cmp     qword ptr [rcx],rax
fffff803`220738d8 7578            jne     nt!NtNotifyChangeMultipleKeys+0xb32 (fffff803`22073952)

nt!NtNotifyChangeMultipleKeys+0xaba:
fffff803`220738da 488911          mov     qword ptr [rcx],rdx
fffff803`220738dd 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`220738e1 410fb6c3        movzx   eax,r11b
fffff803`220738e5 440f22c0        mov     cr8,rax
fffff803`220738e9 e8ca8f1200      call    nt!UNLOCK_POST_LIST (fffff803`2219c8b8)
fffff803`220738ee e881eb0900      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`220738f3 4c8b5e40        mov     r11,qword ptr [rsi+40h]
fffff803`220738f7 418b7b18        mov     edi,dword ptr [r11+18h]
fffff803`220738fb 4c8bb42490010000 mov     r14,qword ptr [rsp+190h]
fffff803`22073903 41893e          mov     dword ptr [r14],edi
fffff803`22073906 385c2442        cmp     byte ptr [rsp+42h],bl
fffff803`2207390a 7406            je      nt!NtNotifyChangeMultipleKeys+0xaf2 (fffff803`22073912)

nt!NtNotifyChangeMultipleKeys+0xaec:
fffff803`2207390c 41895e04        mov     dword ptr [r14+4],ebx
fffff803`22073910 eb04            jmp     nt!NtNotifyChangeMultipleKeys+0xaf6 (fffff803`22073916)

nt!NtNotifyChangeMultipleKeys+0xaf2:
fffff803`22073912 49895e08        mov     qword ptr [r14+8],rbx

nt!NtNotifyChangeMultipleKeys+0xaf6:
fffff803`22073916 8b442444        mov     eax,dword ptr [rsp+44h]
fffff803`2207391a 448a742440      mov     r14b,byte ptr [rsp+40h]
fffff803`2207391f eb18            jmp     nt!NtNotifyChangeMultipleKeys+0xb19 (fffff803`22073939)

nt!NtNotifyChangeMultipleKeys+0xb19:
fffff803`22073939 84c0            test    al,al
fffff803`2207393b 7408            je      nt!NtNotifyChangeMultipleKeys+0xb25 (fffff803`22073945)

nt!NtNotifyChangeMultipleKeys+0xb1d:
fffff803`2207393d 498bcd          mov     rcx,r13
fffff803`22073940 e85bf1ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)

nt!NtNotifyChangeMultipleKeys+0xb25:
fffff803`22073945 488bce          mov     rcx,rsi
fffff803`22073948 e853f1ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`2207394d e940010000      jmp     nt!NtNotifyChangeMultipleKeys+0xc72 (fffff803`22073a92)

nt!NtNotifyChangeMultipleKeys+0xb32:
fffff803`22073952 498bce          mov     rcx,r14
fffff803`22073955 cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0xb37:
fffff803`22073957 e8d0ea0900      call    nt!CmpLockRegistry (fffff803`2211242c)
fffff803`2207395c e807851200      call    nt!LOCK_POST_LIST (fffff803`2219be68)
fffff803`22073961 450f20c3        mov     r11,cr8
fffff803`22073965 450f22c4        mov     cr8,r12
fffff803`22073969 448b7c2444      mov     r15d,dword ptr [rsp+44h]
fffff803`2207396e 4584ff          test    r15b,r15b
fffff803`22073971 744a            je      nt!NtNotifyChangeMultipleKeys+0xb9d (fffff803`220739bd)

nt!NtNotifyChangeMultipleKeys+0xb53:
fffff803`22073973 498b4500        mov     rax,qword ptr [r13]
fffff803`22073977 4885c0          test    rax,rax
fffff803`2207397a 741d            je      nt!NtNotifyChangeMultipleKeys+0xb79 (fffff803`22073999)

nt!NtNotifyChangeMultipleKeys+0xb5c:
fffff803`2207397c 498b4d08        mov     rcx,qword ptr [r13+8]
fffff803`22073980 4c396808        cmp     qword ptr [rax+8],r13
fffff803`22073984 750e            jne     nt!NtNotifyChangeMultipleKeys+0xb74 (fffff803`22073994)

nt!NtNotifyChangeMultipleKeys+0xb66:
fffff803`22073986 4c3929          cmp     qword ptr [rcx],r13
fffff803`22073989 7509            jne     nt!NtNotifyChangeMultipleKeys+0xb74 (fffff803`22073994)

nt!NtNotifyChangeMultipleKeys+0xb6b:
fffff803`2207398b 488901          mov     qword ptr [rcx],rax
fffff803`2207398e 48894808        mov     qword ptr [rax+8],rcx
fffff803`22073992 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xb79 (fffff803`22073999)

nt!NtNotifyChangeMultipleKeys+0xb74:
fffff803`22073994 498bce          mov     rcx,r14
fffff803`22073997 cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0xb79:
fffff803`22073999 498d4510        lea     rax,[r13+10h]
fffff803`2207399d 488b10          mov     rdx,qword ptr [rax]
fffff803`220739a0 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`220739a4 48394208        cmp     qword ptr [rdx+8],rax
fffff803`220739a8 750e            jne     nt!NtNotifyChangeMultipleKeys+0xb98 (fffff803`220739b8)

nt!NtNotifyChangeMultipleKeys+0xb8a:
fffff803`220739aa 483901          cmp     qword ptr [rcx],rax
fffff803`220739ad 7509            jne     nt!NtNotifyChangeMultipleKeys+0xb98 (fffff803`220739b8)

nt!NtNotifyChangeMultipleKeys+0xb8f:
fffff803`220739af 488911          mov     qword ptr [rcx],rdx
fffff803`220739b2 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`220739b6 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xb9d (fffff803`220739bd)

nt!NtNotifyChangeMultipleKeys+0xb98:
fffff803`220739b8 498bce          mov     rcx,r14
fffff803`220739bb cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0xb9d:
fffff803`220739bd 488b06          mov     rax,qword ptr [rsi]
fffff803`220739c0 4885c0          test    rax,rax
fffff803`220739c3 741d            je      nt!NtNotifyChangeMultipleKeys+0xbc2 (fffff803`220739e2)

nt!NtNotifyChangeMultipleKeys+0xba5:
fffff803`220739c5 488b4e08        mov     rcx,qword ptr [rsi+8]
fffff803`220739c9 48397008        cmp     qword ptr [rax+8],rsi
fffff803`220739cd 750e            jne     nt!NtNotifyChangeMultipleKeys+0xbbd (fffff803`220739dd)

nt!NtNotifyChangeMultipleKeys+0xbaf:
fffff803`220739cf 483931          cmp     qword ptr [rcx],rsi
fffff803`220739d2 7509            jne     nt!NtNotifyChangeMultipleKeys+0xbbd (fffff803`220739dd)

nt!NtNotifyChangeMultipleKeys+0xbb4:
fffff803`220739d4 488901          mov     qword ptr [rcx],rax
fffff803`220739d7 48894808        mov     qword ptr [rax+8],rcx
fffff803`220739db eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xbc2 (fffff803`220739e2)

nt!NtNotifyChangeMultipleKeys+0xbbd:
fffff803`220739dd 498bce          mov     rcx,r14
fffff803`220739e0 cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0xbc2:
fffff803`220739e2 488d4610        lea     rax,[rsi+10h]
fffff803`220739e6 488b10          mov     rdx,qword ptr [rax]
fffff803`220739e9 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`220739ed 48394208        cmp     qword ptr [rdx+8],rax
fffff803`220739f1 7526            jne     nt!NtNotifyChangeMultipleKeys+0xbf9 (fffff803`22073a19)

nt!NtNotifyChangeMultipleKeys+0xbd3:
fffff803`220739f3 483901          cmp     qword ptr [rcx],rax
fffff803`220739f6 7521            jne     nt!NtNotifyChangeMultipleKeys+0xbf9 (fffff803`22073a19)

nt!NtNotifyChangeMultipleKeys+0xbd8:
fffff803`220739f8 488911          mov     qword ptr [rcx],rdx
fffff803`220739fb 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`220739ff 410fb6c3        movzx   eax,r11b
fffff803`22073a03 440f22c0        mov     cr8,rax
fffff803`22073a07 e8ac8e1200      call    nt!UNLOCK_POST_LIST (fffff803`2219c8b8)
fffff803`22073a0c e863ea0900      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`22073a11 4584ff          test    r15b,r15b
fffff803`22073a14 e9e4f9ffff      jmp     nt!NtNotifyChangeMultipleKeys+0x5dd (fffff803`220733fd)

nt!NtNotifyChangeMultipleKeys+0xbf9:
fffff803`22073a19 498bce          mov     rcx,r14
fffff803`22073a1c cd29            int     29h

nt!NtNotifyChangeMultipleKeys+0xbfe:
fffff803`22073a1e 488bce          mov     rcx,rsi
fffff803`22073a21 e87af0ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`22073a26 488b4c2468      mov     rcx,qword ptr [rsp+68h]
fffff803`22073a2b 4885c9          test    rcx,rcx
fffff803`22073a2e 745d            je      nt!NtNotifyChangeMultipleKeys+0xc6d (fffff803`22073a8d)

nt!NtNotifyChangeMultipleKeys+0xc10:
fffff803`22073a30 e8abd1c9ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)
fffff803`22073a35 eb56            jmp     nt!NtNotifyChangeMultipleKeys+0xc6d (fffff803`22073a8d)

nt!NtNotifyChangeMultipleKeys+0xc17:
fffff803`22073a37 b801000000      mov     eax,1
fffff803`22073a3c 498bc8          mov     rcx,r8
fffff803`22073a3f 39842468010000  cmp     dword ptr [rsp+168h],eax
fffff803`22073a46 750b            jne     nt!NtNotifyChangeMultipleKeys+0xc33 (fffff803`22073a53)

nt!NtNotifyChangeMultipleKeys+0xc28:
fffff803`22073a48 498b5708        mov     rdx,qword ptr [r15+8]
fffff803`22073a4c e81fcf0500      call    nt!CmpUnlockTwoKcbs (fffff803`220d0970)
fffff803`22073a51 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xc38 (fffff803`22073a58)

nt!NtNotifyChangeMultipleKeys+0xc33:
fffff803`22073a53 e858170700      call    nt!CmpUnlockKcb (fffff803`220e51b0)

nt!NtNotifyChangeMultipleKeys+0xc38:
fffff803`22073a58 e817ea0900      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`22073a5d 488b4c2468      mov     rcx,qword ptr [rsp+68h]
fffff803`22073a62 4885c9          test    rcx,rcx
fffff803`22073a65 7405            je      nt!NtNotifyChangeMultipleKeys+0xc4c (fffff803`22073a6c)

nt!NtNotifyChangeMultipleKeys+0xc47:
fffff803`22073a67 e874d1c9ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)

nt!NtNotifyChangeMultipleKeys+0xc4c:
fffff803`22073a6c 4084ff          test    dil,dil
fffff803`22073a6f 7408            je      nt!NtNotifyChangeMultipleKeys+0xc59 (fffff803`22073a79)

nt!NtNotifyChangeMultipleKeys+0xc51:
fffff803`22073a71 498bcd          mov     rcx,r13
fffff803`22073a74 e827f0ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)

nt!NtNotifyChangeMultipleKeys+0xc59:
fffff803`22073a79 488bce          mov     rcx,rsi
fffff803`22073a7c e81ff0ffff      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`22073a81 bf7c0100c0      mov     edi,0C000017Ch
fffff803`22073a86 eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xc6d (fffff803`22073a8d)

nt!NtNotifyChangeMultipleKeys+0xc68:
fffff803`22073a88 458af4          mov     r14b,r12b
fffff803`22073a8b eb05            jmp     nt!NtNotifyChangeMultipleKeys+0xc72 (fffff803`22073a92)

nt!NtNotifyChangeMultipleKeys+0xc6d:
fffff803`22073a8d 448a742440      mov     r14b,byte ptr [rsp+40h]

nt!NtNotifyChangeMultipleKeys+0xc72:
fffff803`22073a92 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff803`22073a97 e844d1c9ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)
fffff803`22073a9c 4584f6          test    r14b,r14b
fffff803`22073a9f 7465            je      nt!NtNotifyChangeMultipleKeys+0xce6 (fffff803`22073b06)

nt!NtNotifyChangeMultipleKeys+0xc81:
fffff803`22073aa1 0f0d0db060eeff  prefetchw [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22073aa8 488b05a960eeff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22073aaf 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`22073ab3 488d48fe        lea     rcx,[rax-2]
fffff803`22073ab7 f0480fb10d9860eeff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rcx
fffff803`22073ac0 740c            je      nt!NtNotifyChangeMultipleKeys+0xcae (fffff803`22073ace)

nt!NtNotifyChangeMultipleKeys+0xca2:
fffff803`22073ac2 488d0d8f60eeff  lea     rcx,[nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`22073ac9 e8a238caff      call    nt!ExfReleaseRundownProtection (fffff803`21d17370)

nt!NtNotifyChangeMultipleKeys+0xcae:
fffff803`22073ace 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`22073ad7 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22073ade ffc0            inc     eax
fffff803`22073ae0 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`22073ae7 6685c0          test    ax,ax
fffff803`22073aea 751a            jne     nt!NtNotifyChangeMultipleKeys+0xce6 (fffff803`22073b06)

nt!NtNotifyChangeMultipleKeys+0xccc:
fffff803`22073aec 488d8198000000  lea     rax,[rcx+98h]
fffff803`22073af3 483900          cmp     qword ptr [rax],rax
fffff803`22073af6 740e            je      nt!NtNotifyChangeMultipleKeys+0xce6 (fffff803`22073b06)

nt!NtNotifyChangeMultipleKeys+0xcd8:
fffff803`22073af8 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`22073aff 7505            jne     nt!NtNotifyChangeMultipleKeys+0xce6 (fffff803`22073b06)

nt!NtNotifyChangeMultipleKeys+0xce1:
fffff803`22073b01 e8fa5ccfff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!NtNotifyChangeMultipleKeys+0xce6:
fffff803`22073b06 8bc7            mov     eax,edi

nt!NtNotifyChangeMultipleKeys+0xce8:
fffff803`22073b08 4881c420010000  add     rsp,120h
fffff803`22073b0f 415f            pop     r15
fffff803`22073b11 415e            pop     r14
fffff803`22073b13 415d            pop     r13
fffff803`22073b15 415c            pop     r12
fffff803`22073b17 5f              pop     rdi
fffff803`22073b18 5e              pop     rsi
fffff803`22073b19 5b              pop     rbx
fffff803`22073b1a c3              ret
