0: kd> uf ExpSetTimer
nt!ExpSetTimer:
fffff803`d990df30 4c894c2420      mov     qword ptr [rsp+20h],r9
fffff803`d990df35 4c89442418      mov     qword ptr [rsp+18h],r8
fffff803`d990df3a 88542410        mov     byte ptr [rsp+10h],dl
fffff803`d990df3e 53              push    rbx
fffff803`d990df3f 56              push    rsi
fffff803`d990df40 57              push    rdi
fffff803`d990df41 4154            push    r12
fffff803`d990df43 4155            push    r13
fffff803`d990df45 4156            push    r14
fffff803`d990df47 4157            push    r15
fffff803`d990df49 4881ecc0000000  sub     rsp,0C0h
fffff803`d990df50 440fb6ca        movzx   r9d,dl
fffff803`d990df54 4c8b0545042d00  mov     r8,qword ptr [nt!ExTimerObjectType (fffff803`d9bde3a0)]
fffff803`d990df5b 4533f6          xor     r14d,r14d
fffff803`d990df5e 4c89742428      mov     qword ptr [rsp+28h],r14
fffff803`d990df63 488d542440      lea     rdx,[rsp+40h]
fffff803`d990df68 4889542420      mov     qword ptr [rsp+20h],rdx
fffff803`d990df6d 418d5602        lea     edx,[r14+2]
fffff803`d990df71 e83aaf3a00      call    nt!ObReferenceObjectByHandle (fffff803`d9cb8eb0)
fffff803`d990df76 448be8          mov     r13d,eax
fffff803`d990df79 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990df7e 4889bc24b0000000 mov     qword ptr [rsp+0B0h],rdi
fffff803`d990df86 89442464        mov     dword ptr [rsp+64h],eax
fffff803`d990df8a 85c0            test    eax,eax
fffff803`d990df8c 0f88d9020000    js      nt!ExpSetTimer+0x33b (fffff803`d990e26b)

nt!ExpSetTimer+0x62:
fffff803`d990df92 4c8bbc2428010000 mov     r15,qword ptr [rsp+128h]
fffff803`d990df9a 4d85ff          test    r15,r15
fffff803`d990df9d 0f85ad040000    jne     nt!ExpSetTimer+0x520 (fffff803`d990e450)

nt!ExpSetTimer+0x73:
fffff803`d990dfa3 b801000000      mov     eax,1
fffff803`d990dfa8 8bf0            mov     esi,eax
fffff803`d990dfaa 89442450        mov     dword ptr [rsp+50h],eax
fffff803`d990dfae 4c89742458      mov     qword ptr [rsp+58h],r14
fffff803`d990dfb3 4c8d6740        lea     r12,[rdi+40h]
fffff803`d990dfb7 440f20c0        mov     rax,cr8
fffff803`d990dfbb 4889842498000000 mov     qword ptr [rsp+98h],rax
fffff803`d990dfc3 b902000000      mov     ecx,2
fffff803`d990dfc8 440f22c1        mov     cr8,rcx
fffff803`d990dfcc f705ae002d0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d990dfd6 0f8505851700    jne     nt! ?? ::FNODOBFM::`string'+0x4dedb (fffff803`d9a864e1)

nt!ExpSetTimer+0xac:
fffff803`d990dfdc f0490fba2c2400  lock bts qword ptr [r12],0
fffff803`d990dfe3 0f820a851700    jb      nt! ?? ::FNODOBFM::`string'+0x4deed (fffff803`d9a864f3)

nt!ExpSetTimer+0xb9:
fffff803`d990dfe9 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0xbe:
fffff803`d990dfee 488d9ff4000000  lea     rbx,[rdi+0F4h]
fffff803`d990dff5 48895c2470      mov     qword ptr [rsp+70h],rbx
fffff803`d990dffa 408433          test    byte ptr [rbx],sil
fffff803`d990dffd 0f8502851700    jne     nt! ?? ::FNODOBFM::`string'+0x4deff (fffff803`d9a86505)

nt!ExpSetTimer+0xd3:
fffff803`d990e003 440f20c3        mov     rbx,cr8
fffff803`d990e007 440f22c1        mov     cr8,rcx
fffff803`d990e00b 400fb6d6        movzx   edx,sil
fffff803`d990e00f 488bcf          mov     rcx,rdi
fffff803`d990e012 e849b7ffff      call    nt!KiCancelTimer (fffff803`d9909760)
fffff803`d990e017 440fb6db        movzx   r11d,bl
fffff803`d990e01b 450f22c3        mov     cr8,r11
fffff803`d990e01f 488b5c2470      mov     rbx,qword ptr [rsp+70h]
fffff803`d990e024 41bb02000000    mov     r11d,2

nt!ExpSetTimer+0xfa:
fffff803`d990e02a 488d4704        lea     rax,[rdi+4]
fffff803`d990e02e 48898424a8000000 mov     qword ptr [rsp+0A8h],rax
fffff803`d990e036 8b00            mov     eax,dword ptr [rax]
fffff803`d990e038 89442468        mov     dword ptr [rsp+68h],eax
fffff803`d990e03c 448b842430010000 mov     r8d,dword ptr [rsp+130h]
fffff803`d990e044 448987f0000000  mov     dword ptr [rdi+0F0h],r8d
fffff803`d990e04b 488b942418010000 mov     rdx,qword ptr [rsp+118h]
fffff803`d990e053 4885d2          test    rdx,rdx
fffff803`d990e056 0f85c2020000    jne     nt!ExpSetTimer+0x3ee (fffff803`d990e31e)

nt!ExpSetTimer+0x12c:
fffff803`d990e05c 41b9ffffffff    mov     r9d,0FFFFFFFFh

nt!ExpSetTimer+0x132:
fffff803`d990e062 0fb603          movzx   eax,byte ptr [rbx]
fffff803`d990e065 488b8c2410010000 mov     rcx,qword ptr [rsp+110h]
fffff803`d990e06d a804            test    al,4
fffff803`d990e06f 0f852b050000    jne     nt!ExpSetTimer+0x670 (fffff803`d990e5a0)

nt!ExpSetTimer+0x145:
fffff803`d990e075 488b19          mov     rbx,qword ptr [rcx]
fffff803`d990e078 32c0            xor     al,al
fffff803`d990e07a 4889442470      mov     qword ptr [rsp+70h],rax
fffff803`d990e07f 8b8c2438010000  mov     ecx,dword ptr [rsp+138h]
fffff803`d990e086 85c9            test    ecx,ecx
fffff803`d990e088 0f85f0010000    jne     nt!ExpSetTimer+0x34e (fffff803`d990e27e)

nt!ExpSetTimer+0x15e:
fffff803`d990e08e 488b35fb062d00  mov     rsi,qword ptr [nt!KiWaitAlways (fffff803`d9bde790)]
fffff803`d990e095 4833742458      xor     rsi,qword ptr [rsp+58h]
fffff803`d990e09a 480fce          bswap   rsi
fffff803`d990e09d 4833f7          xor     rsi,rdi
fffff803`d990e0a0 488b0581042d00  mov     rax,qword ptr [nt!KiWaitNever (fffff803`d9bde528)]
fffff803`d990e0a7 8bc8            mov     ecx,eax
fffff803`d990e0a9 48d3ce          ror     rsi,cl
fffff803`d990e0ac 4833f0          xor     rsi,rax
fffff803`d990e0af 440f20c0        mov     rax,cr8
fffff803`d990e0b3 4889442478      mov     qword ptr [rsp+78h],rax
fffff803`d990e0b8 b802000000      mov     eax,2
fffff803`d990e0bd 440f22c0        mov     cr8,rax
fffff803`d990e0c1 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`d990e0ca 4889442448      mov     qword ptr [rsp+48h],rax
fffff803`d990e0cf 33d2            xor     edx,edx
fffff803`d990e0d1 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e0d6 488bcf          mov     rcx,rdi
fffff803`d990e0d9 e882b6ffff      call    nt!KiCancelTimer (fffff803`d9909760)
fffff803`d990e0de 48897730        mov     qword ptr [rdi+30h],rsi
fffff803`d990e0e2 8b842430010000  mov     eax,dword ptr [rsp+130h]
fffff803`d990e0e9 89473c          mov     dword ptr [rdi+3Ch],eax
fffff803`d990e0ec 8b07            mov     eax,dword ptr [rdi]
fffff803`d990e0ee 89842480000000  mov     dword ptr [rsp+80h],eax
fffff803`d990e0f5 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff803`d990e0fa 888c2481000000  mov     byte ptr [rsp+81h],cl
fffff803`d990e101 488bc3          mov     rax,rbx
fffff803`d990e104 48c1e820        shr     rax,20h
fffff803`d990e108 85c0            test    eax,eax
fffff803`d990e10a 0f89be010000    jns     nt!ExpSetTimer+0x39e (fffff803`d990e2ce)

nt!ExpSetTimer+0x1e0:
fffff803`d990e110 498bd6          mov     rdx,r14
fffff803`d990e113 f6c1fc          test    cl,0FCh
fffff803`d990e116 0f858d010000    jne     nt!ExpSetTimer+0x379 (fffff803`d990e2a9)

nt!ExpSetTimer+0x1ec:
fffff803`d990e11c 48b80800000080f7ffff mov rax,0FFFFF78000000008h
fffff803`d990e126 488b00          mov     rax,qword ptr [rax]
fffff803`d990e129 482bc3          sub     rax,rbx
fffff803`d990e12c 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e131 48894718        mov     qword ptr [rdi+18h],rax
fffff803`d990e135 4803c2          add     rax,rdx
fffff803`d990e138 48c1e812        shr     rax,12h
fffff803`d990e13c 440fb6c8        movzx   r9d,al
fffff803`d990e140 44898c24a0000000 mov     dword ptr [rsp+0A0h],r9d
fffff803`d990e148 808c248300000040 or      byte ptr [rsp+83h],40h
fffff803`d990e150 44888c2482000000 mov     byte ptr [rsp+82h],r9b
fffff803`d990e158 8b842480000000  mov     eax,dword ptr [rsp+80h]
fffff803`d990e15f 8907            mov     dword ptr [rdi],eax
fffff803`d990e161 488b8424a8000000 mov     rax,qword ptr [rsp+0A8h]
fffff803`d990e169 448930          mov     dword ptr [rax],r14d
fffff803`d990e16c 488b742458      mov     rsi,qword ptr [rsp+58h]
fffff803`d990e171 4c8bc6          mov     r8,rsi
fffff803`d990e174 488bd7          mov     rdx,rdi
fffff803`d990e177 488b5c2448      mov     rbx,qword ptr [rsp+48h]
fffff803`d990e17c 488bcb          mov     rcx,rbx
fffff803`d990e17f e81ca4ffff      call    nt!KiInsertTimerTable (fffff803`d99085a0)
fffff803`d990e184 84c0            test    al,al
fffff803`d990e186 0f8441040000    je      nt!ExpSetTimer+0x69d (fffff803`d990e5cd)

nt!ExpSetTimer+0x25c:
fffff803`d990e18c f705f2fe2c0000000200 test dword ptr [nt!PerfGlobalGroupMask+0x8 (fffff803`d9bde088)],20000h
fffff803`d990e196 0f8566841700    jne     nt! ?? ::FNODOBFM::`string'+0x4e012 (fffff803`d9a86602)

nt!ExpSetTimer+0x26c:
fffff803`d990e19c f081277fffffff  lock and dword ptr [rdi],0FFFFFF7Fh
fffff803`d990e1a3 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x278:
fffff803`d990e1a8 4c8b542448      mov     r10,qword ptr [rsp+48h]
fffff803`d990e1ad 4d39b2882c0000  cmp     qword ptr [r10+2C88h],r14
fffff803`d990e1b4 0f8552020000    jne     nt!ExpSetTimer+0x4dc (fffff803`d990e40c)

nt!ExpSetTimer+0x28a:
fffff803`d990e1ba 488b5c2478      mov     rbx,qword ptr [rsp+78h]
fffff803`d990e1bf 80fb02          cmp     bl,2
fffff803`d990e1c2 0f824e841700    jb      nt! ?? ::FNODOBFM::`string'+0x4e026 (fffff803`d9a86616)

nt!ExpSetTimer+0x298:
fffff803`d990e1c8 4d397210        cmp     qword ptr [r10+10h],r14
fffff803`d990e1cc 0f8556020000    jne     nt!ExpSetTimer+0x4f8 (fffff803`d990e428)

nt!ExpSetTimer+0x2a2:
fffff803`d990e1d2 8b742450        mov     esi,dword ptr [rsp+50h]
fffff803`d990e1d6 4d85ff          test    r15,r15
fffff803`d990e1d9 0f85ff020000    jne     nt!ExpSetTimer+0x5ae (fffff803`d990e4de)

nt!ExpSetTimer+0x2af:
fffff803`d990e1df 4181fd25000040  cmp     r13d,40000025h
fffff803`d990e1e6 7413            je      nt!ExpSetTimer+0x2cb (fffff803`d990e1fb)

nt!ExpSetTimer+0x2b8:
fffff803`d990e1e8 4c8bb7f8000000  mov     r14,qword ptr [rdi+0F8h]
fffff803`d990e1ef 4c89bff8000000  mov     qword ptr [rdi+0F8h],r15
fffff803`d990e1f6 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x2cb:
fffff803`d990e1fb f7057ffe2c0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d990e205 0f85b7851700    jne     nt! ?? ::FNODOBFM::`string'+0x4e1f1 (fffff803`d9a867c2)

nt!ExpSetTimer+0x2db:
fffff803`d990e20b f04983242400    lock and qword ptr [r12],0
fffff803`d990e211 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x2e6:
fffff803`d990e216 0fb6842498000000 movzx   eax,byte ptr [rsp+98h]
fffff803`d990e21e 440f22c0        mov     cr8,rax
fffff803`d990e222 4d85f6          test    r14,r14
fffff803`d990e225 0f85c2020000    jne     nt!ExpSetTimer+0x5bd (fffff803`d990e4ed)

nt!ExpSetTimer+0x2fb:
fffff803`d990e22b 85f6            test    esi,esi
fffff803`d990e22d 7428            je      nt!ExpSetTimer+0x327 (fffff803`d990e257)

nt!ExpSetTimer+0x2ff:
fffff803`d990e22f 833dfefd2c0000  cmp     dword ptr [nt!ObpTraceFlags (fffff803`d9bde034)],0
fffff803`d990e236 0f85d3851700    jne     nt! ?? ::FNODOBFM::`string'+0x4e23e (fffff803`d9a8680f)

nt!ExpSetTimer+0x30c:
fffff803`d990e23c 8bc6            mov     eax,esi
fffff803`d990e23e f7d8            neg     eax
fffff803`d990e240 4898            cdqe
fffff803`d990e242 f0480fc147d0    lock xadd qword ptr [rdi-30h],rax
fffff803`d990e248 4863d6          movsxd  rdx,esi
fffff803`d990e24b 482bc2          sub     rax,rdx
fffff803`d990e24e 4885c0          test    rax,rax
fffff803`d990e251 0f8ed2851700    jle     nt! ?? ::FNODOBFM::`string'+0x4e258 (fffff803`d9a86829)

nt!ExpSetTimer+0x327:
fffff803`d990e257 488b942440010000 mov     rdx,qword ptr [rsp+140h]
fffff803`d990e25f 4885d2          test    rdx,rdx
fffff803`d990e262 0f85ed851700    jne     nt! ?? ::FNODOBFM::`string'+0x4e288 (fffff803`d9a86855)

nt!ExpSetTimer+0x338:
fffff803`d990e268 418bc5          mov     eax,r13d

nt!ExpSetTimer+0x33b:
fffff803`d990e26b 4881c4c0000000  add     rsp,0C0h
fffff803`d990e272 415f            pop     r15
fffff803`d990e274 415e            pop     r14
fffff803`d990e276 415d            pop     r13
fffff803`d990e278 415c            pop     r12
fffff803`d990e27a 5f              pop     rdi
fffff803`d990e27b 5e              pop     rsi
fffff803`d990e27c 5b              pop     rbx
fffff803`d990e27d c3              ret

nt!ExpSetTimer+0x34e:
fffff803`d990e27e 488bc1          mov     rax,rcx
fffff803`d990e281 4869c010270000  imul    rax,rax,2710h
fffff803`d990e288 483d0000fc00    cmp     rax,0FC0000h
fffff803`d990e28e 7727            ja      nt!ExpSetTimer+0x387 (fffff803`d990e2b7)

nt!ExpSetTimer+0x360:
fffff803`d990e290 c1e812          shr     eax,12h
fffff803`d990e293 83f83f          cmp     eax,3Fh
fffff803`d990e296 0f8757030000    ja      nt!ExpSetTimer+0x6c3 (fffff803`d990e5f3)

nt!ExpSetTimer+0x36c:
fffff803`d990e29c c0e002          shl     al,2
fffff803`d990e29f 4889442470      mov     qword ptr [rsp+70h],rax
fffff803`d990e2a4 e9e5fdffff      jmp     nt!ExpSetTimer+0x15e (fffff803`d990e08e)

nt!ExpSetTimer+0x379:
fffff803`d990e2a9 0fb6d1          movzx   edx,cl
fffff803`d990e2ac 83e2fc          and     edx,0FFFFFFFCh
fffff803`d990e2af c1e210          shl     edx,10h
fffff803`d990e2b2 e965feffff      jmp     nt!ExpSetTimer+0x1ec (fffff803`d990e11c)

nt!ExpSetTimer+0x387:
fffff803`d990e2b7 488d88000004ff  lea     rcx,[rax-0FC0000h]
fffff803`d990e2be 4585c0          test    r8d,r8d
fffff803`d990e2c1 0f8581020000    jne     nt!ExpSetTimer+0x618 (fffff803`d990e548)

nt!ExpSetTimer+0x397:
fffff803`d990e2c7 b80000fc00      mov     eax,0FC0000h
fffff803`d990e2cc ebc2            jmp     nt!ExpSetTimer+0x360 (fffff803`d990e290)

nt!ExpSetTimer+0x39e:
fffff803`d990e2ce 80c901          or      cl,1
fffff803`d990e2d1 888c2481000000  mov     byte ptr [rsp+81h],cl
fffff803`d990e2d8 48b81400000080f7ffff mov rax,0FFFFF78000000014h
fffff803`d990e2e2 488b00          mov     rax,qword ptr [rax]
fffff803`d990e2e5 482bc3          sub     rax,rbx
fffff803`d990e2e8 488bd8          mov     rbx,rax
fffff803`d990e2eb 48c1e820        shr     rax,20h
fffff803`d990e2ef 85c0            test    eax,eax
fffff803`d990e2f1 0f8819feffff    js      nt!ExpSetTimer+0x1e0 (fffff803`d990e110)

nt!ExpSetTimer+0x3c7:
fffff803`d990e2f7 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e2fc 8b842480000000  mov     eax,dword ptr [rsp+80h]
fffff803`d990e303 8907            mov     dword ptr [rdi],eax
fffff803`d990e305 4c897718        mov     qword ptr [rdi+18h],r14
fffff803`d990e309 488b4c2448      mov     rcx,qword ptr [rsp+48h]

nt!ExpSetTimer+0x3de:
fffff803`d990e30e 4533c0          xor     r8d,r8d
fffff803`d990e311 488bd7          mov     rdx,rdi
fffff803`d990e314 e8b79cffff      call    nt!KiTimerWaitTest (fffff803`d9907fd0)
fffff803`d990e319 e98afeffff      jmp     nt!ExpSetTimer+0x278 (fffff803`d990e1a8)

nt!ExpSetTimer+0x3ee:
fffff803`d990e31e 654c8b142588010000 mov   r10,qword ptr gs:[188h]
fffff803`d990e327 4c89542448      mov     qword ptr [rsp+48h],r10
fffff803`d990e32c 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e331 488d4f48        lea     rcx,[rdi+48h]
fffff803`d990e335 488b842420010000 mov     rax,qword ptr [rsp+120h]
fffff803`d990e33d 4889442438      mov     qword ptr [rsp+38h],rax
fffff803`d990e342 0fb6842408010000 movzx   eax,byte ptr [rsp+108h]
fffff803`d990e34a 88442430        mov     byte ptr [rsp+30h],al
fffff803`d990e34e 4889542428      mov     qword ptr [rsp+28h],rdx
fffff803`d990e353 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`d990e358 4c8d0d95720900  lea     r9,[nt!ExpTimerApcRoutine (fffff803`d99a55f4)]
fffff803`d990e35f 458bc3          mov     r8d,r11d
fffff803`d990e362 498bd2          mov     rdx,r10
fffff803`d990e365 e8f2680400      call    nt!KeInitializeApc (fffff803`d9954c5c)
fffff803`d990e36a 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`d990e36f 4881c180030000  add     rcx,380h
fffff803`d990e376 48894c2458      mov     qword ptr [rsp+58h],rcx
fffff803`d990e37b f705fffc2c0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d990e385 0f853f821700    jne     nt! ?? ::FNODOBFM::`string'+0x4dfda (fffff803`d9a865ca)

nt!ExpSetTimer+0x45b:
fffff803`d990e38b f0480fba2900    lock bts qword ptr [rcx],0
fffff803`d990e391 0f8242821700    jb      nt! ?? ::FNODOBFM::`string'+0x4dfe9 (fffff803`d9a865d9)

nt!ExpSetTimer+0x467:
fffff803`d990e397 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x46c:
fffff803`d990e39c 488d87e0000000  lea     rax,[rdi+0E0h]
fffff803`d990e3a3 488b542448      mov     rdx,qword ptr [rsp+48h]
fffff803`d990e3a8 4881c288030000  add     rdx,388h
fffff803`d990e3af 4c8b4208        mov     r8,qword ptr [rdx+8]
fffff803`d990e3b3 488910          mov     qword ptr [rax],rdx
fffff803`d990e3b6 4c894008        mov     qword ptr [rax+8],r8
fffff803`d990e3ba 493910          cmp     qword ptr [r8],rdx
fffff803`d990e3bd 0f8525821700    jne     nt! ?? ::FNODOBFM::`string'+0x4dff8 (fffff803`d9a865e8)

nt!ExpSetTimer+0x493:
fffff803`d990e3c3 498900          mov     qword ptr [r8],rax
fffff803`d990e3c6 48894208        mov     qword ptr [rdx+8],rax
fffff803`d990e3ca 800b03          or      byte ptr [rbx],3
fffff803`d990e3cd f705adfc2c0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d990e3d7 0f8512821700    jne     nt! ?? ::FNODOBFM::`string'+0x4dfff (fffff803`d9a865ef)

nt!ExpSetTimer+0x4ad:
fffff803`d990e3dd f04c2131        lock and qword ptr [rcx],r14
fffff803`d990e3e1 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x4b6:
fffff803`d990e3e6 488d87a0000000  lea     rax,[rdi+0A0h]
fffff803`d990e3ed 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`d990e3f2 41b9ffffffff    mov     r9d,0FFFFFFFFh
fffff803`d990e3f8 4103f1          add     esi,r9d
fffff803`d990e3fb 89742450        mov     dword ptr [rsp+50h],esi
fffff803`d990e3ff 448b842430010000 mov     r8d,dword ptr [rsp+130h]
fffff803`d990e407 e956fcffff      jmp     nt!ExpSetTimer+0x132 (fffff803`d990e062)

nt!ExpSetTimer+0x4dc:
fffff803`d990e40c 4533c9          xor     r9d,r9d
fffff803`d990e40f 4533c0          xor     r8d,r8d
fffff803`d990e412 418d5101        lea     edx,[r9+1]
fffff803`d990e416 498bca          mov     rcx,r10
fffff803`d990e419 e87a460400      call    nt!KiProcessThreadWaitList (fffff803`d9952a98)
fffff803`d990e41e 4c8b542448      mov     r10,qword ptr [rsp+48h]
fffff803`d990e423 e992fdffff      jmp     nt!ExpSetTimer+0x28a (fffff803`d990e1ba)

nt!ExpSetTimer+0x4f8:
fffff803`d990e428 410fb682da2d0000 movzx   eax,byte ptr [r10+2DDAh]
fffff803`d990e430 84c0            test    al,al
fffff803`d990e432 7512            jne     nt!ExpSetTimer+0x516 (fffff803`d990e446)

nt!ExpSetTimer+0x504:
fffff803`d990e434 45387220        cmp     byte ptr [r10+20h],r14b
fffff803`d990e438 0f85d0010000    jne     nt!ExpSetTimer+0x6de (fffff803`d990e60e)

nt!ExpSetTimer+0x50e:
fffff803`d990e43e b102            mov     cl,2
fffff803`d990e440 ff158a5f2c00    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`d9bd43d0)]

nt!ExpSetTimer+0x516:
fffff803`d990e446 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e44b e982fdffff      jmp     nt!ExpSetTimer+0x2a2 (fffff803`d990e1d2)

nt!ExpSetTimer+0x520:
fffff803`d990e450 833de912210002  cmp     dword ptr [nt!PopCapabilities+0x40 (fffff803`d9b1f740)],2
fffff803`d990e457 0f8c2f801700    jl      nt! ?? ::FNODOBFM::`string'+0x4de86 (fffff803`d9a8648c)

nt!ExpSetTimer+0x52d:
fffff803`d990e45d 4d85ff          test    r15,r15
fffff803`d990e460 0f843dfbffff    je      nt!ExpSetTimer+0x73 (fffff803`d990dfa3)

nt!ExpSetTimer+0x536:
fffff803`d990e466 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`d990e46f 66ff8be4010000  dec     word ptr [rbx+1E4h]
fffff803`d990e476 f0480fba2d008e200000 lock bts qword ptr [nt!ExpWakeTimerLock (fffff803`d9b17280)],0
fffff803`d990e480 0f8216801700    jb      nt! ?? ::FNODOBFM::`string'+0x4de96 (fffff803`d9a8649c)

nt!ExpSetTimer+0x556:
fffff803`d990e486 488b442440      mov     rax,qword ptr [rsp+40h]
fffff803`d990e48b 480500010000    add     rax,100h
fffff803`d990e491 4c3930          cmp     qword ptr [rax],r14
fffff803`d990e494 0f84dd000000    je      nt!ExpSetTimer+0x647 (fffff803`d990e577)

nt!ExpSetTimer+0x56a:
fffff803`d990e49a 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`d990e49e f0480fc105d98d2000 lock xadd qword ptr [nt!ExpWakeTimerLock (fffff803`d9b17280)],rax
fffff803`d990e4a7 a802            test    al,2
fffff803`d990e4a9 0f85ff7f1700    jne     nt! ?? ::FNODOBFM::`string'+0x4dea8 (fffff803`d9a864ae)

nt!ExpSetTimer+0x57f:
fffff803`d990e4af 0fbf83e4010000  movsx   eax,word ptr [rbx+1E4h]
fffff803`d990e4b6 ffc0            inc     eax
fffff803`d990e4b8 668983e4010000  mov     word ptr [rbx+1E4h],ax
fffff803`d990e4bf 6685c0          test    ax,ax
fffff803`d990e4c2 7510            jne     nt!ExpSetTimer+0x5a4 (fffff803`d990e4d4)

nt!ExpSetTimer+0x594:
fffff803`d990e4c4 488d8398000000  lea     rax,[rbx+98h]
fffff803`d990e4cb 483900          cmp     qword ptr [rax],rax
fffff803`d990e4ce 0f85f47f1700    jne     nt! ?? ::FNODOBFM::`string'+0x4dec2 (fffff803`d9a864c8)

nt!ExpSetTimer+0x5a4:
fffff803`d990e4d4 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e4d9 e9c5faffff      jmp     nt!ExpSetTimer+0x73 (fffff803`d990dfa3)

nt!ExpSetTimer+0x5ae:
fffff803`d990e4de f00fba2f09      lock bts dword ptr [rdi],9
fffff803`d990e4e3 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e4e8 e9f2fcffff      jmp     nt!ExpSetTimer+0x2af (fffff803`d990e1df)

nt!ExpSetTimer+0x5bd:
fffff803`d990e4ed 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`d990e4f6 66ff8be4010000  dec     word ptr [rbx+1E4h]
fffff803`d990e4fd f0830c2400      lock or dword ptr [rsp],0
fffff803`d990e502 488b05778d2000  mov     rax,qword ptr [nt!ExpWakeTimerLock (fffff803`d9b17280)]
fffff803`d990e509 a801            test    al,1
fffff803`d990e50b 0f85c7821700    jne     nt! ?? ::FNODOBFM::`string'+0x4e207 (fffff803`d9a867d8)

nt!ExpSetTimer+0x5e1:
fffff803`d990e511 0fbf83e4010000  movsx   eax,word ptr [rbx+1E4h]
fffff803`d990e518 ffc0            inc     eax
fffff803`d990e51a 668983e4010000  mov     word ptr [rbx+1E4h],ax
fffff803`d990e521 6685c0          test    ax,ax
fffff803`d990e524 7510            jne     nt!ExpSetTimer+0x606 (fffff803`d990e536)

nt!ExpSetTimer+0x5f6:
fffff803`d990e526 488d8398000000  lea     rax,[rbx+98h]
fffff803`d990e52d 483900          cmp     qword ptr [rax],rax
fffff803`d990e530 0f85c0821700    jne     nt! ?? ::FNODOBFM::`string'+0x4e225 (fffff803`d9a867f6)

nt!ExpSetTimer+0x606:
fffff803`d990e536 498bce          mov     rcx,r14
fffff803`d990e539 e8a638fbff      call    nt!PoDestroyReasonContext (fffff803`d98c1de4)
fffff803`d990e53e 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e543 e9e3fcffff      jmp     nt!ExpSetTimer+0x2fb (fffff803`d990e22b)

nt!ExpSetTimer+0x618:
fffff803`d990e548 48b84b598638d6c56d34 mov rax,346DC5D63886594Bh
fffff803`d990e552 48f7e9          imul    rcx
fffff803`d990e555 48c1fa0b        sar     rdx,0Bh
fffff803`d990e559 488bc2          mov     rax,rdx
fffff803`d990e55c 48c1e83f        shr     rax,3Fh
fffff803`d990e560 4803c2          add     rax,rdx
fffff803`d990e563 4103c0          add     eax,r8d
fffff803`d990e566 413bc0          cmp     eax,r8d
fffff803`d990e569 727b            jb      nt!ExpSetTimer+0x6b6 (fffff803`d990e5e6)

nt!ExpSetTimer+0x63b:
fffff803`d990e56b 89842430010000  mov     dword ptr [rsp+130h],eax
fffff803`d990e572 e950fdffff      jmp     nt!ExpSetTimer+0x397 (fffff803`d990e2c7)

nt!ExpSetTimer+0x647:
fffff803`d990e577 488b0dfa8c2000  mov     rcx,qword ptr [nt!ExpWakeTimerList+0x8 (fffff803`d9b17278)]
fffff803`d990e57e 488d15eb8c2000  lea     rdx,[nt!ExpWakeTimerList (fffff803`d9b17270)]
fffff803`d990e585 488910          mov     qword ptr [rax],rdx
fffff803`d990e588 48894808        mov     qword ptr [rax+8],rcx
fffff803`d990e58c 483911          cmp     qword ptr [rcx],rdx
fffff803`d990e58f 7544            jne     nt!ExpSetTimer+0x6a5 (fffff803`d990e5d5)

nt!ExpSetTimer+0x661:
fffff803`d990e591 488901          mov     qword ptr [rcx],rax
fffff803`d990e594 488905dd8c2000  mov     qword ptr [nt!ExpWakeTimerList+0x8 (fffff803`d9b17278)],rax
fffff803`d990e59b e9fafeffff      jmp     nt!ExpSetTimer+0x56a (fffff803`d990e49a)

nt!ExpSetTimer+0x670:
fffff803`d990e5a0 8b842438010000  mov     eax,dword ptr [rsp+138h]
fffff803`d990e5a7 898730010000    mov     dword ptr [rdi+130h],eax
fffff803`d990e5ad 488b01          mov     rax,qword ptr [rcx]
fffff803`d990e5b0 48898728010000  mov     qword ptr [rdi+128h],rax
fffff803`d990e5b7 44397104        cmp     dword ptr [rcx+4],r14d
fffff803`d990e5bb 0f8cee811700    jl      nt! ?? ::FNODOBFM::`string'+0x4e1de (fffff803`d9a867af)

nt!ExpSetTimer+0x691:
fffff803`d990e5c1 c687f500000001  mov     byte ptr [rdi+0F5h],1
fffff803`d990e5c8 e912fcffff      jmp     nt!ExpSetTimer+0x2af (fffff803`d990e1df)

nt!ExpSetTimer+0x69d:
fffff803`d990e5cd 488bcb          mov     rcx,rbx
fffff803`d990e5d0 e939fdffff      jmp     nt!ExpSetTimer+0x3de (fffff803`d990e30e)

nt!ExpSetTimer+0x6a5:
fffff803`d990e5d5 b903000000      mov     ecx,3
fffff803`d990e5da cd29            int     29h

nt!ExpSetTimer+0x6ac:
fffff803`d990e5dc 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e5e1 e9627f1700      jmp     nt! ?? ::FNODOBFM::`string'+0x4df49 (fffff803`d9a86548)

nt!ExpSetTimer+0x6b6:
fffff803`d990e5e6 44898c2430010000 mov     dword ptr [rsp+130h],r9d
fffff803`d990e5ee e9d4fcffff      jmp     nt!ExpSetTimer+0x397 (fffff803`d990e2c7)

nt!ExpSetTimer+0x6c3:
fffff803`d990e5f3 b83f000000      mov     eax,3Fh
fffff803`d990e5f8 e99ffcffff      jmp     nt!ExpSetTimer+0x36c (fffff803`d990e29c)

nt!ExpSetTimer+0x6cd:
fffff803`d990e5fd f390            pause
fffff803`d990e5ff e9c6801700      jmp     nt! ?? ::FNODOBFM::`string'+0x4e0e9 (fffff803`d9a866ca)

nt!ExpSetTimer+0x6d4:
fffff803`d990e604 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d990e609 e995811700      jmp     nt! ?? ::FNODOBFM::`string'+0x4e1d2 (fffff803`d9a867a3)

nt!ExpSetTimer+0x6de:
fffff803`d990e60e 41c6420601      mov     byte ptr [r10+6],1
fffff803`d990e613 e92efeffff      jmp     nt!ExpSetTimer+0x516 (fffff803`d990e446)

nt!ExpSetTimer+0x6e8:
fffff803`d990e618 8b442468        mov     eax,dword ptr [rsp+68h]
fffff803`d990e61c 8802            mov     byte ptr [rdx],al
fffff803`d990e61e e945fcffff      jmp     nt!ExpSetTimer+0x338 (fffff803`d990e268)

nt! ?? ::FNODOBFM::`string'+0x4de86:
fffff803`d9a8648c 41bd25000040    mov     r13d,40000025h
fffff803`d9a86492 44896c2464      mov     dword ptr [rsp+64h],r13d
fffff803`d9a86497 e9077be8ff      jmp     nt!ExpSetTimer+0x73 (fffff803`d990dfa3)

nt! ?? ::FNODOBFM::`string'+0x4de96:
fffff803`d9a8649c 488d0ddd0d0900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`d9b17280)]
fffff803`d9a864a3 e858efedff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9a864a8 90              nop
fffff803`d9a864a9 e9d87fe8ff      jmp     nt!ExpSetTimer+0x556 (fffff803`d990e486)

nt! ?? ::FNODOBFM::`string'+0x4dea8:
fffff803`d9a864ae a804            test    al,4
fffff803`d9a864b0 0f85f97fe8ff    jne     nt!ExpSetTimer+0x57f (fffff803`d990e4af)

nt! ?? ::FNODOBFM::`string'+0x4deb0:
fffff803`d9a864b6 488d0dc30d0900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`d9b17280)]
fffff803`d9a864bd e8522beeff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9a864c2 90              nop
fffff803`d9a864c3 e9e77fe8ff      jmp     nt!ExpSetTimer+0x57f (fffff803`d990e4af)

nt! ?? ::FNODOBFM::`string'+0x4dec2:
fffff803`d9a864c8 664439b3e6010000 cmp     word ptr [rbx+1E6h],r14w
fffff803`d9a864d0 0f85fe7fe8ff    jne     nt!ExpSetTimer+0x5a4 (fffff803`d990e4d4)

nt! ?? ::FNODOBFM::`string'+0x4ded0:
fffff803`d9a864d6 e82573efff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)
fffff803`d9a864db 90              nop
fffff803`d9a864dc e9f37fe8ff      jmp     nt!ExpSetTimer+0x5a4 (fffff803`d990e4d4)

nt! ?? ::FNODOBFM::`string'+0x4dedb:
fffff803`d9a864e1 498bcc          mov     rcx,r12
fffff803`d9a864e4 e8d79ff7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d9a864e9 b902000000      mov     ecx,2
fffff803`d9a864ee e9fb7ae8ff      jmp     nt!ExpSetTimer+0xbe (fffff803`d990dfee)

nt! ?? ::FNODOBFM::`string'+0x4deed:
fffff803`d9a864f3 498bcc          mov     rcx,r12
fffff803`d9a864f6 e8c5ade3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)
fffff803`d9a864fb b902000000      mov     ecx,2
fffff803`d9a86500 e9e47ae8ff      jmp     nt!ExpSetTimer+0xb9 (fffff803`d990dfe9)

nt! ?? ::FNODOBFM::`string'+0x4deff:
fffff803`d9a86505 488b4f50        mov     rcx,qword ptr [rdi+50h]
fffff803`d9a86509 4881c180030000  add     rcx,380h
fffff803`d9a86510 48894c2448      mov     qword ptr [rsp+48h],rcx
fffff803`d9a86515 f705657b150000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d9a8651f 740c            je      nt! ?? ::FNODOBFM::`string'+0x4df2e (fffff803`d9a8652d)

nt! ?? ::FNODOBFM::`string'+0x4df1f:
fffff803`d9a86521 e89a9ff7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d9a86526 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`d9a8652b eb1b            jmp     nt! ?? ::FNODOBFM::`string'+0x4df49 (fffff803`d9a86548)

nt! ?? ::FNODOBFM::`string'+0x4df2e:
fffff803`d9a8652d f0480fba2900    lock bts qword ptr [rcx],0
fffff803`d9a86533 0f83a380e8ff    jae     nt!ExpSetTimer+0x6ac (fffff803`d990e5dc)

nt! ?? ::FNODOBFM::`string'+0x4df3a:
fffff803`d9a86539 e882ade3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)
fffff803`d9a8653e 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`d9a86543 e99480e8ff      jmp     nt!ExpSetTimer+0x6ac (fffff803`d990e5dc)

nt! ?? ::FNODOBFM::`string'+0x4df49:
fffff803`d9a86548 488d87e0000000  lea     rax,[rdi+0E0h]
fffff803`d9a8654f 4c8b00          mov     r8,qword ptr [rax]
fffff803`d9a86552 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`d9a86556 49394008        cmp     qword ptr [r8+8],rax
fffff803`d9a8655a 7567            jne     nt! ?? ::FNODOBFM::`string'+0x4dfd3 (fffff803`d9a865c3)

nt! ?? ::FNODOBFM::`string'+0x4df61:
fffff803`d9a8655c 483902          cmp     qword ptr [rdx],rax
fffff803`d9a8655f 7562            jne     nt! ?? ::FNODOBFM::`string'+0x4dfd3 (fffff803`d9a865c3)

nt! ?? ::FNODOBFM::`string'+0x4df6a:
fffff803`d9a86561 4c8902          mov     qword ptr [rdx],r8
fffff803`d9a86564 49895008        mov     qword ptr [r8+8],rdx
fffff803`d9a86568 8023fe          and     byte ptr [rbx],0FEh
fffff803`d9a8656b f7050f7b150000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d9a86575 740f            je      nt! ?? ::FNODOBFM::`string'+0x4df96 (fffff803`d9a86586)

nt! ?? ::FNODOBFM::`string'+0x4df84:
fffff803`d9a86577 488b9424f8000000 mov     rdx,qword ptr [rsp+0F8h]
fffff803`d9a8657f e8189ff7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d9a86584 eb09            jmp     nt! ?? ::FNODOBFM::`string'+0x4df9f (fffff803`d9a8658f)

nt! ?? ::FNODOBFM::`string'+0x4df96:
fffff803`d9a86586 f04c2131        lock and qword ptr [rcx],r14
fffff803`d9a8658a 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt! ?? ::FNODOBFM::`string'+0x4df9f:
fffff803`d9a8658f 488bcf          mov     rcx,rdi
fffff803`d9a86592 e8f93de8ff      call    nt!KeCancelTimer (fffff803`d990a390)
fffff803`d9a86597 488d8fa0000000  lea     rcx,[rdi+0A0h]
fffff803`d9a8659e e8bde4e1ff      call    nt!KeRemoveQueueDpc (fffff803`d98a4a60)
fffff803`d9a865a3 488d4f48        lea     rcx,[rdi+48h]
fffff803`d9a865a7 e8e4c1e3ff      call    nt!KeRemoveQueueApc (fffff803`d98c2790)
fffff803`d9a865ac 84c0            test    al,al
fffff803`d9a865ae 41bb02000000    mov     r11d,2
fffff803`d9a865b4 410f45f3        cmovne  esi,r11d
fffff803`d9a865b8 ffc6            inc     esi
fffff803`d9a865ba 89742450        mov     dword ptr [rsp+50h],esi
fffff803`d9a865be e9677ae8ff      jmp     nt!ExpSetTimer+0xfa (fffff803`d990e02a)

nt! ?? ::FNODOBFM::`string'+0x4dfd3:
fffff803`d9a865c3 b903000000      mov     ecx,3
fffff803`d9a865c8 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4dfda:
fffff803`d9a865ca e8f19ef7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d9a865cf 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff803`d9a865d4 e9c37de8ff      jmp     nt!ExpSetTimer+0x46c (fffff803`d990e39c)

nt! ?? ::FNODOBFM::`string'+0x4dfe9:
fffff803`d9a865d9 e8e2ace3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)
fffff803`d9a865de 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff803`d9a865e3 e9af7de8ff      jmp     nt!ExpSetTimer+0x467 (fffff803`d990e397)

nt! ?? ::FNODOBFM::`string'+0x4dff8:
fffff803`d9a865e8 b903000000      mov     ecx,3
fffff803`d9a865ed cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4dfff:
fffff803`d9a865ef 488b9424f8000000 mov     rdx,qword ptr [rsp+0F8h]
fffff803`d9a865f7 e8a09ef7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d9a865fc 90              nop
fffff803`d9a865fd e9e47de8ff      jmp     nt!ExpSetTimer+0x4b6 (fffff803`d990e3e6)

nt! ?? ::FNODOBFM::`string'+0x4e012:
fffff803`d9a86602 4533c0          xor     r8d,r8d
fffff803`d9a86605 488bd6          mov     rdx,rsi
fffff803`d9a86608 488bcf          mov     rcx,rdi
fffff803`d9a8660b e894f5f7ff      call    nt!KiTraceSetTimer (fffff803`d9a05ba4)
fffff803`d9a86610 90              nop
fffff803`d9a86611 e9927be8ff      jmp     nt!ExpSetTimer+0x278 (fffff803`d990e1a8)

nt! ?? ::FNODOBFM::`string'+0x4e026:
fffff803`d9a86616 498b7208        mov     rsi,qword ptr [r10+8]
fffff803`d9a8661a 4d397210        cmp     qword ptr [r10+10h],r14
fffff803`d9a8661e 0f845a010000    je      nt! ?? ::FNODOBFM::`string'+0x4e1a9 (fffff803`d9a8677e)

nt! ?? ::FNODOBFM::`string'+0x4e034:
fffff803`d9a86624 4489742460      mov     dword ptr [rsp+60h],r14d

nt! ?? ::FNODOBFM::`string'+0x4e039:
fffff803`d9a86629 f0490fba6a3000  lock bts qword ptr [r10+30h],0
fffff803`d9a86630 726a            jb      nt! ?? ::FNODOBFM::`string'+0x4e0bb (fffff803`d9a8669c)

nt! ?? ::FNODOBFM::`string'+0x4e046:
fffff803`d9a86632 498b7a10        mov     rdi,qword ptr [r10+10h]
fffff803`d9a86636 4d897210        mov     qword ptr [r10+10h],r14
fffff803`d9a8663a fa              cli
fffff803`d9a8663b 41c6422001      mov     byte ptr [r10+20h],1
fffff803`d9a86640 0f31            rdtsc
fffff803`d9a86642 48c1e220        shl     rdx,20h
fffff803`d9a86646 480bc2          or      rax,rdx
fffff803`d9a86649 4889442478      mov     qword ptr [rsp+78h],rax
fffff803`d9a8664e 4c8bc0          mov     r8,rax
fffff803`d9a86651 4d2b8240530000  sub     r8,qword ptr [r10+5340h]
fffff803`d9a86658 488b4e48        mov     rcx,qword ptr [rsi+48h]
fffff803`d9a8665c 4903c8          add     rcx,r8
fffff803`d9a8665f 48894e48        mov     qword ptr [rsi+48h],rcx
fffff803`d9a86663 8b4e50          mov     ecx,dword ptr [rsi+50h]
fffff803`d9a86666 4903c8          add     rcx,r8
fffff803`d9a86669 b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`d9a8666e 483bc8          cmp     rcx,rax
fffff803`d9a86671 480f47c8        cmova   rcx,rax
fffff803`d9a86675 894e50          mov     dword ptr [rsi+50h],ecx
fffff803`d9a86678 f646020e        test    byte ptr [rsi+2],0Eh
fffff803`d9a8667c 0f8493000000    je      nt! ?? ::FNODOBFM::`string'+0x4e140 (fffff803`d9a86715)

nt! ?? ::FNODOBFM::`string'+0x4e096:
fffff803`d9a86682 488b4e68        mov     rcx,qword ptr [rsi+68h]
fffff803`d9a86686 4885c9          test    rcx,rcx
fffff803`d9a86689 744d            je      nt! ?? ::FNODOBFM::`string'+0x4e0f7 (fffff803`d9a866d8)

nt! ?? ::FNODOBFM::`string'+0x4e0a3:
fffff803`d9a8668b 418b821c530000  mov     eax,dword ptr [r10+531Ch]
fffff803`d9a86692 4803c1          add     rax,rcx
fffff803`d9a86695 7441            je      nt! ?? ::FNODOBFM::`string'+0x4e0f7 (fffff803`d9a866d8)

nt! ?? ::FNODOBFM::`string'+0x4e0b3:
fffff803`d9a86697 4c0100          add     qword ptr [rax],r8
fffff803`d9a8669a eb3c            jmp     nt! ?? ::FNODOBFM::`string'+0x4e0f7 (fffff803`d9a866d8)

nt! ?? ::FNODOBFM::`string'+0x4e0bb:
fffff803`d9a8669c 8b4c2460        mov     ecx,dword ptr [rsp+60h]
fffff803`d9a866a0 ffc1            inc     ecx
fffff803`d9a866a2 894c2460        mov     dword ptr [rsp+60h],ecx
fffff803`d9a866a6 850da07d1500    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],ecx
fffff803`d9a866ac 0f854b7fe8ff    jne     nt!ExpSetTimer+0x6cd (fffff803`d990e5fd)

nt! ?? ::FNODOBFM::`string'+0x4e0d1:
fffff803`d9a866b2 8b05b8791500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a866b8 a840            test    al,40h
fffff803`d9a866ba 0f843d7fe8ff    je      nt!ExpSetTimer+0x6cd (fffff803`d990e5fd)

nt! ?? ::FNODOBFM::`string'+0x4e0df:
fffff803`d9a866c0 e8ff8cf6ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a866c5 4c8b542448      mov     r10,qword ptr [rsp+48h]

nt! ?? ::FNODOBFM::`string'+0x4e0e9:
fffff803`d9a866ca 498b4230        mov     rax,qword ptr [r10+30h]
fffff803`d9a866ce 4885c0          test    rax,rax
fffff803`d9a866d1 75c9            jne     nt! ?? ::FNODOBFM::`string'+0x4e0bb (fffff803`d9a8669c)

nt! ?? ::FNODOBFM::`string'+0x4e0f2:
fffff803`d9a866d3 e951ffffff      jmp     nt! ?? ::FNODOBFM::`string'+0x4e039 (fffff803`d9a86629)

nt! ?? ::FNODOBFM::`string'+0x4e0f7:
fffff803`d9a866d8 f6460208        test    byte ptr [rsi+2],8
fffff803`d9a866dc 7421            je      nt! ?? ::FNODOBFM::`string'+0x4e126 (fffff803`d9a866ff)

nt! ?? ::FNODOBFM::`string'+0x4e101:
fffff803`d9a866de 498b8238530000  mov     rax,qword ptr [r10+5338h]
fffff803`d9a866e5 488b9638020000  mov     rdx,qword ptr [rsi+238h]
fffff803`d9a866ec 488b4850        mov     rcx,qword ptr [rax+50h]
fffff803`d9a866f0 4823d1          and     rdx,rcx
fffff803`d9a866f3 483bd1          cmp     rdx,rcx
fffff803`d9a866f6 7407            je      nt! ?? ::FNODOBFM::`string'+0x4e126 (fffff803`d9a866ff)

nt! ?? ::FNODOBFM::`string'+0x4e11f:
fffff803`d9a866f8 4d018250530000  add     qword ptr [r10+5350h],r8

nt! ?? ::FNODOBFM::`string'+0x4e126:
fffff803`d9a866ff 4c39b668010000  cmp     qword ptr [rsi+168h],r14
fffff803`d9a86706 740d            je      nt! ?? ::FNODOBFM::`string'+0x4e140 (fffff803`d9a86715)

nt! ?? ::FNODOBFM::`string'+0x4e133:
fffff803`d9a86708 488bce          mov     rcx,rsi
fffff803`d9a8670b e830e5f7ff      call    nt!KiEndCounterAccumulation (fffff803`d9a04c40)
fffff803`d9a86710 4c8b542448      mov     r10,qword ptr [rsp+48h]

nt! ?? ::FNODOBFM::`string'+0x4e140:
fffff803`d9a86715 488b442478      mov     rax,qword ptr [rsp+78h]
fffff803`d9a8671a 49898240530000  mov     qword ptr [r10+5340h],rax
fffff803`d9a86721 fb              sti
fffff803`d9a86722 49897a08        mov     qword ptr [r10+8],rdi
fffff803`d9a86726 c6878401000002  mov     byte ptr [rdi+184h],2
fffff803`d9a8672d c6868302000020  mov     byte ptr [rsi+283h],20h
fffff803`d9a86734 889e86010000    mov     byte ptr [rsi+186h],bl
fffff803`d9a8673a 488bd6          mov     rdx,rsi
fffff803`d9a8673d 498bca          mov     rcx,r10
fffff803`d9a86740 e8bb33e8ff      call    nt!KiQueueReadyThread (fffff803`d9909b00)
fffff803`d9a86745 440fb6c3        movzx   r8d,bl
fffff803`d9a86749 488bd7          mov     rdx,rdi
fffff803`d9a8674c 488bce          mov     rcx,rsi
fffff803`d9a8674f e8dc38e5ff      call    nt!KiSwapContext (fffff803`d98da030)
fffff803`d9a86754 84c0            test    al,al
fffff803`d9a86756 0f84a87ee8ff    je      nt!ExpSetTimer+0x6d4 (fffff803`d990e604)

nt! ?? ::FNODOBFM::`string'+0x4e187:
fffff803`d9a8675c b801000000      mov     eax,1
fffff803`d9a86761 440f22c0        mov     cr8,rax
fffff803`d9a86765 816674fffeffff  and     dword ptr [rsi+74h],0FFFFFEFFh
fffff803`d9a8676c 4533c0          xor     r8d,r8d
fffff803`d9a8676f 33d2            xor     edx,edx
fffff803`d9a86771 33c9            xor     ecx,ecx
fffff803`d9a86773 e898eeecff      call    nt!KiDeliverApc (fffff803`d9955610)
fffff803`d9a86778 90              nop
fffff803`d9a86779 e9867ee8ff      jmp     nt!ExpSetTimer+0x6d4 (fffff803`d990e604)

nt! ?? ::FNODOBFM::`string'+0x4e1a9:
fffff803`d9a8677e f7467400010000  test    dword ptr [rsi+74h],100h
fffff803`d9a86785 741c            je      nt! ?? ::FNODOBFM::`string'+0x4e1d2 (fffff803`d9a867a3)

nt! ?? ::FNODOBFM::`string'+0x4e1b6:
fffff803`d9a86787 b801000000      mov     eax,1
fffff803`d9a8678c 440f22c0        mov     cr8,rax
fffff803`d9a86790 816674fffeffff  and     dword ptr [rsi+74h],0FFFFFEFFh
fffff803`d9a86797 4533c0          xor     r8d,r8d
fffff803`d9a8679a 33d2            xor     edx,edx
fffff803`d9a8679c 33c9            xor     ecx,ecx
fffff803`d9a8679e e86deeecff      call    nt!KiDeliverApc (fffff803`d9955610)

nt! ?? ::FNODOBFM::`string'+0x4e1d2:
fffff803`d9a867a3 0fb6c3          movzx   eax,bl
fffff803`d9a867a6 440f22c0        mov     cr8,rax
fffff803`d9a867aa e9237ae8ff      jmp     nt!ExpSetTimer+0x2a2 (fffff803`d990e1d2)

nt! ?? ::FNODOBFM::`string'+0x4e1de:
fffff803`d9a867af 4d85ff          test    r15,r15
fffff803`d9a867b2 0f95c0          setne   al
fffff803`d9a867b5 0402            add     al,2
fffff803`d9a867b7 8887f5000000    mov     byte ptr [rdi+0F5h],al
fffff803`d9a867bd e91d7ae8ff      jmp     nt!ExpSetTimer+0x2af (fffff803`d990e1df)

nt! ?? ::FNODOBFM::`string'+0x4e1f1:
fffff803`d9a867c2 488b9424f8000000 mov     rdx,qword ptr [rsp+0F8h]
fffff803`d9a867ca 498bcc          mov     rcx,r12
fffff803`d9a867cd e8ca9cf7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d9a867d2 90              nop
fffff803`d9a867d3 e93e7ae8ff      jmp     nt!ExpSetTimer+0x2e6 (fffff803`d990e216)

nt! ?? ::FNODOBFM::`string'+0x4e207:
fffff803`d9a867d8 488d0da10a0900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`d9b17280)]
fffff803`d9a867df e81cecedff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9a867e4 488d0d950a0900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`d9b17280)]
fffff803`d9a867eb e8e054efff      call    nt!ExfReleasePushLockExclusive (fffff803`d997bcd0)
fffff803`d9a867f0 90              nop
fffff803`d9a867f1 e91b7de8ff      jmp     nt!ExpSetTimer+0x5e1 (fffff803`d990e511)

nt! ?? ::FNODOBFM::`string'+0x4e225:
fffff803`d9a867f6 6683bbe601000000 cmp     word ptr [rbx+1E6h],0
fffff803`d9a867fe 0f85327de8ff    jne     nt!ExpSetTimer+0x606 (fffff803`d990e536)

nt! ?? ::FNODOBFM::`string'+0x4e233:
fffff803`d9a86804 e8f76fefff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)
fffff803`d9a86809 90              nop
fffff803`d9a8680a e9277de8ff      jmp     nt!ExpSetTimer+0x606 (fffff803`d990e536)

nt! ?? ::FNODOBFM::`string'+0x4e23e:
fffff803`d9a8680f 41b944666c74    mov     r9d,746C6644h
fffff803`d9a86815 448bc6          mov     r8d,esi
fffff803`d9a86818 33d2            xor     edx,edx
fffff803`d9a8681a 488d4fd0        lea     rcx,[rdi-30h]
fffff803`d9a8681e e80d5af9ff      call    nt!ObpPushStackInfo (fffff803`d9a1c230)
fffff803`d9a86823 90              nop
fffff803`d9a86824 e9137ae8ff      jmp     nt!ExpSetTimer+0x30c (fffff803`d990e23c)

nt! ?? ::FNODOBFM::`string'+0x4e258:
fffff803`d9a86829 750f            jne     nt! ?? ::FNODOBFM::`string'+0x4e26d (fffff803`d9a8683a)

nt! ?? ::FNODOBFM::`string'+0x4e25e:
fffff803`d9a8682b 488d4fd0        lea     rcx,[rdi-30h]
fffff803`d9a8682f e84444f0ff      call    nt!ObpDeferObjectDeletion (fffff803`d998ac78)
fffff803`d9a86834 90              nop
fffff803`d9a86835 e91d7ae8ff      jmp     nt!ExpSetTimer+0x327 (fffff803`d990e257)

nt! ?? ::FNODOBFM::`string'+0x4e26d:
fffff803`d9a8683a 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a8683f 41b905000000    mov     r9d,5
fffff803`d9a86845 4c8b442440      mov     r8,qword ptr [rsp+40h]
fffff803`d9a8684a 33d2            xor     edx,edx
fffff803`d9a8684c 8d4a18          lea     ecx,[rdx+18h]
fffff803`d9a8684f e8ec9be5ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a86854 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4e288:
fffff803`d9a86855 80bc240801000000 cmp     byte ptr [rsp+108h],0
fffff803`d9a8685d 0f84b57de8ff    je      nt!ExpSetTimer+0x6e8 (fffff803`d990e618)

nt! ?? ::FNODOBFM::`string'+0x4e296:
fffff803`d9a86863 488bca          mov     rcx,rdx
fffff803`d9a86866 488b0593771500  mov     rax,qword ptr [nt!MmUserProbeAddress (fffff803`d9bde000)]
fffff803`d9a8686d 483bd0          cmp     rdx,rax
fffff803`d9a86870 480f43c8        cmovae  rcx,rax
fffff803`d9a86874 0fb601          movzx   eax,byte ptr [rcx]
fffff803`d9a86877 8801            mov     byte ptr [rcx],al
fffff803`d9a86879 8b442468        mov     eax,dword ptr [rsp+68h]
fffff803`d9a8687d 8802            mov     byte ptr [rdx],al
fffff803`d9a8687f e9e479e8ff      jmp     nt!ExpSetTimer+0x338 (fffff803`d990e268)
