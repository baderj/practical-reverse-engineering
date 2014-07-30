nt!BgpFwFreeMemory:
fffff803`d99d7ea0 fff3            push    rbx
fffff803`d99d7ea2 4883ec20        sub     rsp,20h
fffff803`d99d7ea6 488d51e8        lea     rdx,[rcx-18h]
fffff803`d99d7eaa 448b02          mov     r8d,dword ptr [rdx]
fffff803`d99d7ead 4181f84247434b  cmp     r8d,4B434742h
fffff803`d99d7eb4 7455            je      nt!BgpFwFreeMemory+0x6b (fffff803`d99d7f0b)

nt!BgpFwFreeMemory+0x16:
fffff803`d99d7eb6 4181f84247424b  cmp     r8d,4B424742h
fffff803`d99d7ebd 7545            jne     nt!BgpFwFreeMemory+0x64 (fffff803`d99d7f04)

nt!BgpFwFreeMemory+0x1f:
fffff803`d99d7ebf 488d42f0        lea     rax,[rdx-10h]
fffff803`d99d7ec3 4c8b10          mov     r10,qword ptr [rax]
fffff803`d99d7ec6 4c8b4808        mov     r9,qword ptr [rax+8]
fffff803`d99d7eca 49394208        cmp     qword ptr [r10+8],rax
fffff803`d99d7ece 0f855cef0a00    jne     nt! ?? ::FNODOBFM::`string'+0x4e900 (fffff803`d9a86e30)

nt!BgpFwFreeMemory+0x34:
fffff803`d99d7ed4 493901          cmp     qword ptr [r9],rax
fffff803`d99d7ed7 0f8553ef0a00    jne     nt! ?? ::FNODOBFM::`string'+0x4e900 (fffff803`d9a86e30)

nt!BgpFwFreeMemory+0x3d:
fffff803`d99d7edd 4d8911          mov     qword ptr [r9],r10
fffff803`d99d7ee0 b830000000      mov     eax,30h
fffff803`d99d7ee5 4d894a08        mov     qword ptr [r10+8],r9

nt!BgpFwFreeMemory+0x49:
fffff803`d99d7ee9 482bc8          sub     rcx,rax
fffff803`d99d7eec 48817a0800100000 cmp     qword ptr [rdx+8],1000h
fffff803`d99d7ef4 7346            jae     nt!BgpFwFreeMemory+0x9c (fffff803`d99d7f3c)

nt!BgpFwFreeMemory+0x56:
fffff803`d99d7ef6 418bd0          mov     edx,r8d

nt!BgpFwFreeMemory+0x59:
fffff803`d99d7ef9 e862f21100      call    nt!ExFreePoolWithTag (fffff803`d9af7160)

nt!BgpFwFreeMemory+0x5e:
fffff803`d99d7efe 4883c420        add     rsp,20h
fffff803`d99d7f02 5b              pop     rbx
fffff803`d99d7f03 c3              ret

nt!BgpFwFreeMemory+0x64:
fffff803`d99d7f04 b820000000      mov     eax,20h
fffff803`d99d7f09 ebde            jmp     nt!BgpFwFreeMemory+0x49 (fffff803`d99d7ee9)

nt!BgpFwFreeMemory+0x6b:
fffff803`d99d7f0b 448b4208        mov     r8d,dword ptr [rdx+8]
fffff803`d99d7f0f 8bda            mov     ebx,edx
fffff803`d99d7f11 488d0db8dc1300  lea     rcx,[nt!NtVhdBootFile+0xbf8 (fffff803`d9b15bd0)]
fffff803`d99d7f18 2b1daadc1300    sub     ebx,dword ptr [nt!NtVhdBootFile+0xbf0 (fffff803`d9b15bc8)]
fffff803`d99d7f1e 83eb08          sub     ebx,8
fffff803`d99d7f21 8bd3            mov     edx,ebx
fffff803`d99d7f23 e8684af4ff      call    nt!RtlClearBits (fffff803`d991c990)
fffff803`d99d7f28 3b1dd2dc1300    cmp     ebx,dword ptr [nt!NtVhdBootFile+0xc28 (fffff803`d9b15c00)]
fffff803`d99d7f2e 73ce            jae     nt!BgpFwFreeMemory+0x5e (fffff803`d99d7efe)

nt!BgpFwFreeMemory+0x90:
fffff803`d99d7f30 891dcadc1300    mov     dword ptr [nt!NtVhdBootFile+0xc28 (fffff803`d9b15c00)],ebx
fffff803`d99d7f36 4883c420        add     rsp,20h
fffff803`d99d7f3a 5b              pop     rbx
fffff803`d99d7f3b c3              ret

nt!BgpFwFreeMemory+0x9c:
fffff803`d99d7f3c 488b5a10        mov     rbx,qword ptr [rdx+10h]
fffff803`d99d7f40 488bd3          mov     rdx,rbx
fffff803`d99d7f43 e870e4f8ff      call    nt!MmUnmapLockedPages (fffff803`d99663b8)
fffff803`d99d7f48 488bcb          mov     rcx,rbx
fffff803`d99d7f4b e860d2fdff      call    nt!MmFreePagesFromMdl (fffff803`d99b51b0)
fffff803`d99d7f50 33d2            xor     edx,edx
fffff803`d99d7f52 488bcb          mov     rcx,rbx
fffff803`d99d7f55 eba2            jmp     nt!BgpFwFreeMemory+0x59 (fffff803`d99d7ef9)

nt!BgpFwReleaseLock+0x36:
fffff803`d99d92e6 80fb02          cmp     bl,2
fffff803`d99d92e9 7606            jbe     nt!BgpFwReleaseLock+0x41 (fffff803`d99d92f1)

nt!BgpFwReleaseLock+0x3b:
fffff803`d99d92eb 4883c420        add     rsp,20h
fffff803`d99d92ef 5b              pop     rbx
fffff803`d99d92f0 c3              ret

nt!BgpFwReleaseLock+0x41:
fffff803`d99d92f1 0fb6c3          movzx   eax,bl
fffff803`d99d92f4 440f22c0        mov     cr8,rax
fffff803`d99d92f8 ebf1            jmp     nt!BgpFwReleaseLock+0x3b (fffff803`d99d92eb)

nt! ?? ::FNODOBFM::`string'+0x4e900:
fffff803`d9a86e30 b903000000      mov     ecx,3
fffff803`d9a86e35 cd29            int     29h
fffff803`d9a86e37 90              nop
fffff803`d9a86e38 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`d9a86e3d 488d0d9ced0800  lea     rcx,[nt!NtVhdBootFile+0xc08 (fffff803`d9b15be0)]
fffff803`d9a86e44 e85396f7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d9a86e49 90              nop
fffff803`d9a86e4a e99724f5ff      jmp     nt!BgpFwReleaseLock+0x36 (fffff803`d99d92e6)

nt!RaspAddCacheEntry:
fffff803`d9eec070 488b01          mov     rax,qword ptr [rcx]
fffff803`d9eec073 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9eec077 488902          mov     qword ptr [rdx],rax
fffff803`d9eec07a 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d9eec07e 7513            jne     nt!RaspAddCacheEntry+0x23 (fffff803`d9eec093)

nt!RaspAddCacheEntry+0x10:
fffff803`d9eec080 48895008        mov     qword ptr [rax+8],rdx
fffff803`d9eec084 488911          mov     qword ptr [rcx],rdx
fffff803`d9eec087 8b5130          mov     edx,dword ptr [rcx+30h]
fffff803`d9eec08a 85d2            test    edx,edx
fffff803`d9eec08c 0f8517660000    jne     nt! ?? ::CIJCHKMG::`string'+0xed8 (fffff803`d9ef26a9)

nt!RaspAddCacheEntry+0x22:
fffff803`d9eec092 c3              ret

nt!RaspAddCacheEntry+0x23:
fffff803`d9eec093 b903000000      mov     ecx,3
fffff803`d9eec098 cd29            int     29h

nt!RaspAddCacheEntry+0x2a:
fffff803`d9eec09a ffc0            inc     eax
fffff803`d9eec09c 894134          mov     dword ptr [rcx+34h],eax
fffff803`d9eec09f ebf1            jmp     nt!RaspAddCacheEntry+0x22 (fffff803`d9eec092)

nt!RaspGetUnscaledGlyphData+0x5a:
fffff803`d9eef80a 8b5550          mov     edx,dword ptr [rbp+50h]
fffff803`d9eef80d 4c8d4df0        lea     r9,[rbp-10h]
fffff803`d9eef811 4c8d4540        lea     r8,[rbp+40h]
fffff803`d9eef815 498bce          mov     rcx,r14
fffff803`d9eef818 66897540        mov     word ptr [rbp+40h],si
fffff803`d9eef81c e8cba9aeff      call    nt!RaspLoadGlyphData (fffff803`d99da1ec)
fffff803`d9eef821 488b5df0        mov     rbx,qword ptr [rbp-10h]
fffff803`d9eef825 8bf8            mov     edi,eax
fffff803`d9eef827 85c0            test    eax,eax
fffff803`d9eef829 7822            js      nt!RaspGetUnscaledGlyphData+0x9d (fffff803`d9eef84d)

nt!RaspGetUnscaledGlyphData+0x7b:
fffff803`d9eef82b 488bcb          mov     rcx,rbx
fffff803`d9eef82e e845b0aeff      call    nt!RaspConvertDeltas (fffff803`d99da878)
fffff803`d9eef833 8bf8            mov     edi,eax
fffff803`d9eef835 85c0            test    eax,eax
fffff803`d9eef837 7814            js      nt!RaspGetUnscaledGlyphData+0x9d (fffff803`d9eef84d)

nt!RaspGetUnscaledGlyphData+0x89:
fffff803`d9eef839 0fb75540        movzx   edx,word ptr [rbp+40h]
fffff803`d9eef83d 4d8bcc          mov     r9,r12
fffff803`d9eef840 4c8bc3          mov     r8,rbx
fffff803`d9eef843 498bce          mov     rcx,r14
fffff803`d9eef846 e8bdabaeff      call    nt!RaspLoadBearings (fffff803`d99da408)
fffff803`d9eef84b 8bf8            mov     edi,eax

nt!RaspGetUnscaledGlyphData+0x9d:
fffff803`d9eef84d 4d85ff          test    r15,r15
fffff803`d9eef850 7406            je      nt!RaspGetUnscaledGlyphData+0xa8 (fffff803`d9eef858)

nt!RaspGetUnscaledGlyphData+0xa2:
fffff803`d9eef852 49891f          mov     qword ptr [r15],rbx
fffff803`d9eef855 498bdd          mov     rbx,r13

nt!RaspGetUnscaledGlyphData+0xa8:
fffff803`d9eef858 4885db          test    rbx,rbx
fffff803`d9eef85b 0f859b2e0000    jne     nt! ?? ::CIJCHKMG::`string'+0xf2c (fffff803`d9ef26fc)

nt!RaspGetUnscaledGlyphData+0xb1:
fffff803`d9eef861 8bc7            mov     eax,edi
fffff803`d9eef863 488b5c2478      mov     rbx,qword ptr [rsp+78h]
fffff803`d9eef868 4883c430        add     rsp,30h
fffff803`d9eef86c 415f            pop     r15
fffff803`d9eef86e 415e            pop     r14
fffff803`d9eef870 415d            pop     r13
fffff803`d9eef872 415c            pop     r12
fffff803`d9eef874 5f              pop     rdi
fffff803`d9eef875 5e              pop     rsi
fffff803`d9eef876 5d              pop     rbp
fffff803`d9eef877 c3              ret

nt!RaspDestroyCachedBitmap:
fffff803`d9ef170c fff3            push    rbx
fffff803`d9ef170e 4883ec20        sub     rsp,20h
fffff803`d9ef1712 488bd9          mov     rbx,rcx
fffff803`d9ef1715 488b4910        mov     rcx,qword ptr [rcx+10h]
fffff803`d9ef1719 e822e3ffff      call    nt!BgpGxRectangleDestroy (fffff803`d9eefa40)
fffff803`d9ef171e 488bcb          mov     rcx,rbx
fffff803`d9ef1721 4883c420        add     rsp,20h
fffff803`d9ef1725 5b              pop     rbx
fffff803`d9ef1726 e97567aeff      jmp     nt!BgpFwFreeMemory (fffff803`d99d7ea0)

nt! ?? ::CIJCHKMG::`string'+0xed8:
fffff803`d9ef26a9 8b4134          mov     eax,dword ptr [rcx+34h]
fffff803`d9ef26ac 3bc2            cmp     eax,edx
fffff803`d9ef26ae 0f85e699ffff    jne     nt!RaspAddCacheEntry+0x2a (fffff803`d9eec09a)

nt! ?? ::CIJCHKMG::`string'+0xee3:
fffff803`d9ef26b4 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`d9ef26b8 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`d9ef26bc 483908          cmp     qword ptr [rax],rcx
fffff803`d9ef26bf 7514            jne     nt! ?? ::CIJCHKMG::`string'+0xf04 (fffff803`d9ef26d5)

nt! ?? ::CIJCHKMG::`string'+0xef0:
fffff803`d9ef26c1 483902          cmp     qword ptr [rdx],rax
fffff803`d9ef26c4 750f            jne     nt! ?? ::CIJCHKMG::`string'+0xf04 (fffff803`d9ef26d5)

nt! ?? ::CIJCHKMG::`string'+0xef5:
fffff803`d9ef26c6 48895108        mov     qword ptr [rcx+8],rdx
fffff803`d9ef26ca 48890a          mov     qword ptr [rdx],rcx
fffff803`d9ef26cd 488bc8          mov     rcx,rax
fffff803`d9ef26d0 e937f0ffff      jmp     nt!RaspDestroyCachedBitmap (fffff803`d9ef170c)

nt! ?? ::CIJCHKMG::`string'+0xf04:
fffff803`d9ef26d5 b903000000      mov     ecx,3
fffff803`d9ef26da cd29            int     29h
fffff803`d9ef26dc 4c8d4550        lea     r8,[rbp+50h]
fffff803`d9ef26e0 33d2            xor     edx,edx
fffff803`d9ef26e2 498bce          mov     rcx,r14
fffff803`d9ef26e5 418bf5          mov     esi,r13d
fffff803`d9ef26e8 e893a1aeff      call    nt!RaspMapGlyphIndexToLocation (fffff803`d99dc880)
fffff803`d9ef26ed 8bf8            mov     edi,eax
fffff803`d9ef26ef 85c0            test    eax,eax
fffff803`d9ef26f1 0f8856d1ffff    js      nt!RaspGetUnscaledGlyphData+0x9d (fffff803`d9eef84d)

nt! ?? ::CIJCHKMG::`string'+0xf27:
fffff803`d9ef26f7 e90ed1ffff      jmp     nt!RaspGetUnscaledGlyphData+0x5a (fffff803`d9eef80a)

nt! ?? ::CIJCHKMG::`string'+0xf2c:
fffff803`d9ef26fc 488bcb          mov     rcx,rbx
fffff803`d9ef26ff e89c57aeff      call    nt!BgpFwFreeMemory (fffff803`d99d7ea0)
fffff803`d9ef2704 90              nop
fffff803`d9ef2705 e957d1ffff      jmp     nt!RaspGetUnscaledGlyphData+0xb1 (fffff803`d9eef861)
