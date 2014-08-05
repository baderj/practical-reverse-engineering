nt!ExpSetTimer:
fffff803`21cf9f30 4c894c2420      mov     qword ptr [rsp+20h],r9
fffff803`21cf9f35 4c89442418      mov     qword ptr [rsp+18h],r8
fffff803`21cf9f3a 88542410        mov     byte ptr [rsp+10h],dl
fffff803`21cf9f3e 53              push    rbx
fffff803`21cf9f3f 56              push    rsi
fffff803`21cf9f40 57              push    rdi
fffff803`21cf9f41 4154            push    r12
fffff803`21cf9f43 4155            push    r13
fffff803`21cf9f45 4156            push    r14
fffff803`21cf9f47 4157            push    r15
fffff803`21cf9f49 4881ecc0000000  sub     rsp,0C0h
fffff803`21cf9f50 440fb6ca        movzx   r9d,dl
fffff803`21cf9f54 4c8b0545042d00  mov     r8,qword ptr [nt!ExTimerObjectType (fffff803`21fca3a0)]
fffff803`21cf9f5b 4533f6          xor     r14d,r14d
fffff803`21cf9f5e 4c89742428      mov     qword ptr [rsp+28h],r14
fffff803`21cf9f63 488d542440      lea     rdx,[rsp+40h]
fffff803`21cf9f68 4889542420      mov     qword ptr [rsp+20h],rdx
fffff803`21cf9f6d 418d5602        lea     edx,[r14+2]
fffff803`21cf9f71 e83aaf3a00      call    nt!ObReferenceObjectByHandle (fffff803`220a4eb0)
fffff803`21cf9f76 448be8          mov     r13d,eax
fffff803`21cf9f79 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cf9f7e 4889bc24b0000000 mov     qword ptr [rsp+0B0h],rdi
fffff803`21cf9f86 89442464        mov     dword ptr [rsp+64h],eax
fffff803`21cf9f8a 85c0            test    eax,eax
fffff803`21cf9f8c 0f88d9020000    js      nt!ExpSetTimer+0x33b (fffff803`21cfa26b)

nt!ExpSetTimer+0x62:
fffff803`21cf9f92 4c8bbc2428010000 mov     r15,qword ptr [rsp+128h]
fffff803`21cf9f9a 4d85ff          test    r15,r15
fffff803`21cf9f9d 0f85ad040000    jne     nt!ExpSetTimer+0x520 (fffff803`21cfa450)

nt!ExpSetTimer+0x73:
fffff803`21cf9fa3 b801000000      mov     eax,1
fffff803`21cf9fa8 8bf0            mov     esi,eax
fffff803`21cf9faa 89442450        mov     dword ptr [rsp+50h],eax
fffff803`21cf9fae 4c89742458      mov     qword ptr [rsp+58h],r14
fffff803`21cf9fb3 4c8d6740        lea     r12,[rdi+40h]
fffff803`21cf9fb7 440f20c0        mov     rax,cr8
fffff803`21cf9fbb 4889842498000000 mov     qword ptr [rsp+98h],rax
fffff803`21cf9fc3 b902000000      mov     ecx,2
fffff803`21cf9fc8 440f22c1        mov     cr8,rcx
fffff803`21cf9fcc f705ae002d0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21cf9fd6 0f8505851700    jne     nt! ?? ::FNODOBFM::`string'+0x4dedb (fffff803`21e724e1)

nt!ExpSetTimer+0xac:
fffff803`21cf9fdc f0490fba2c2400  lock bts qword ptr [r12],0
fffff803`21cf9fe3 0f820a851700    jb      nt! ?? ::FNODOBFM::`string'+0x4deed (fffff803`21e724f3)

nt!ExpSetTimer+0xb9:
fffff803`21cf9fe9 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0xbe:
fffff803`21cf9fee 488d9ff4000000  lea     rbx,[rdi+0F4h]
fffff803`21cf9ff5 48895c2470      mov     qword ptr [rsp+70h],rbx
fffff803`21cf9ffa 408433          test    byte ptr [rbx],sil
fffff803`21cf9ffd 0f8502851700    jne     nt! ?? ::FNODOBFM::`string'+0x4deff (fffff803`21e72505)

nt!ExpSetTimer+0xd3:
fffff803`21cfa003 440f20c3        mov     rbx,cr8
fffff803`21cfa007 440f22c1        mov     cr8,rcx
fffff803`21cfa00b 400fb6d6        movzx   edx,sil
fffff803`21cfa00f 488bcf          mov     rcx,rdi
fffff803`21cfa012 e849b7ffff      call    nt!KiCancelTimer (fffff803`21cf5760)
fffff803`21cfa017 440fb6db        movzx   r11d,bl
fffff803`21cfa01b 450f22c3        mov     cr8,r11
fffff803`21cfa01f 488b5c2470      mov     rbx,qword ptr [rsp+70h]
fffff803`21cfa024 41bb02000000    mov     r11d,2

nt!ExpSetTimer+0xfa:
fffff803`21cfa02a 488d4704        lea     rax,[rdi+4]
fffff803`21cfa02e 48898424a8000000 mov     qword ptr [rsp+0A8h],rax
fffff803`21cfa036 8b00            mov     eax,dword ptr [rax]
fffff803`21cfa038 89442468        mov     dword ptr [rsp+68h],eax
fffff803`21cfa03c 448b842430010000 mov     r8d,dword ptr [rsp+130h]
fffff803`21cfa044 448987f0000000  mov     dword ptr [rdi+0F0h],r8d
fffff803`21cfa04b 488b942418010000 mov     rdx,qword ptr [rsp+118h]
fffff803`21cfa053 4885d2          test    rdx,rdx
fffff803`21cfa056 0f85c2020000    jne     nt!ExpSetTimer+0x3ee (fffff803`21cfa31e)

nt!ExpSetTimer+0x12c:
fffff803`21cfa05c 41b9ffffffff    mov     r9d,0FFFFFFFFh

nt!ExpSetTimer+0x132:
fffff803`21cfa062 0fb603          movzx   eax,byte ptr [rbx]
fffff803`21cfa065 488b8c2410010000 mov     rcx,qword ptr [rsp+110h]
fffff803`21cfa06d a804            test    al,4
fffff803`21cfa06f 0f852b050000    jne     nt!ExpSetTimer+0x670 (fffff803`21cfa5a0)

nt!ExpSetTimer+0x145:
fffff803`21cfa075 488b19          mov     rbx,qword ptr [rcx]
fffff803`21cfa078 32c0            xor     al,al
fffff803`21cfa07a 4889442470      mov     qword ptr [rsp+70h],rax
fffff803`21cfa07f 8b8c2438010000  mov     ecx,dword ptr [rsp+138h]
fffff803`21cfa086 85c9            test    ecx,ecx
fffff803`21cfa088 0f85f0010000    jne     nt!ExpSetTimer+0x34e (fffff803`21cfa27e)

nt!ExpSetTimer+0x15e:
fffff803`21cfa08e 488b35fb062d00  mov     rsi,qword ptr [nt!KiWaitAlways (fffff803`21fca790)]
fffff803`21cfa095 4833742458      xor     rsi,qword ptr [rsp+58h]
fffff803`21cfa09a 480fce          bswap   rsi
fffff803`21cfa09d 4833f7          xor     rsi,rdi
fffff803`21cfa0a0 488b0581042d00  mov     rax,qword ptr [nt!KiWaitNever (fffff803`21fca528)]
fffff803`21cfa0a7 8bc8            mov     ecx,eax
fffff803`21cfa0a9 48d3ce          ror     rsi,cl
fffff803`21cfa0ac 4833f0          xor     rsi,rax
fffff803`21cfa0af 440f20c0        mov     rax,cr8
fffff803`21cfa0b3 4889442478      mov     qword ptr [rsp+78h],rax
fffff803`21cfa0b8 b802000000      mov     eax,2
fffff803`21cfa0bd 440f22c0        mov     cr8,rax
fffff803`21cfa0c1 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`21cfa0ca 4889442448      mov     qword ptr [rsp+48h],rax
fffff803`21cfa0cf 33d2            xor     edx,edx
fffff803`21cfa0d1 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa0d6 488bcf          mov     rcx,rdi
fffff803`21cfa0d9 e882b6ffff      call    nt!KiCancelTimer (fffff803`21cf5760)
fffff803`21cfa0de 48897730        mov     qword ptr [rdi+30h],rsi
fffff803`21cfa0e2 8b842430010000  mov     eax,dword ptr [rsp+130h]
fffff803`21cfa0e9 89473c          mov     dword ptr [rdi+3Ch],eax
fffff803`21cfa0ec 8b07            mov     eax,dword ptr [rdi]
fffff803`21cfa0ee 89842480000000  mov     dword ptr [rsp+80h],eax
fffff803`21cfa0f5 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff803`21cfa0fa 888c2481000000  mov     byte ptr [rsp+81h],cl
fffff803`21cfa101 488bc3          mov     rax,rbx
fffff803`21cfa104 48c1e820        shr     rax,20h
fffff803`21cfa108 85c0            test    eax,eax
fffff803`21cfa10a 0f89be010000    jns     nt!ExpSetTimer+0x39e (fffff803`21cfa2ce)

nt!ExpSetTimer+0x1e0:
fffff803`21cfa110 498bd6          mov     rdx,r14
fffff803`21cfa113 f6c1fc          test    cl,0FCh
fffff803`21cfa116 0f858d010000    jne     nt!ExpSetTimer+0x379 (fffff803`21cfa2a9)

nt!ExpSetTimer+0x1ec:
fffff803`21cfa11c 48b80800000080f7ffff mov rax,0FFFFF78000000008h
fffff803`21cfa126 488b00          mov     rax,qword ptr [rax]
fffff803`21cfa129 482bc3          sub     rax,rbx
fffff803`21cfa12c 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa131 48894718        mov     qword ptr [rdi+18h],rax
fffff803`21cfa135 4803c2          add     rax,rdx
fffff803`21cfa138 48c1e812        shr     rax,12h
fffff803`21cfa13c 440fb6c8        movzx   r9d,al
fffff803`21cfa140 44898c24a0000000 mov     dword ptr [rsp+0A0h],r9d
fffff803`21cfa148 808c248300000040 or      byte ptr [rsp+83h],40h
fffff803`21cfa150 44888c2482000000 mov     byte ptr [rsp+82h],r9b
fffff803`21cfa158 8b842480000000  mov     eax,dword ptr [rsp+80h]
fffff803`21cfa15f 8907            mov     dword ptr [rdi],eax
fffff803`21cfa161 488b8424a8000000 mov     rax,qword ptr [rsp+0A8h]
fffff803`21cfa169 448930          mov     dword ptr [rax],r14d
fffff803`21cfa16c 488b742458      mov     rsi,qword ptr [rsp+58h]
fffff803`21cfa171 4c8bc6          mov     r8,rsi
fffff803`21cfa174 488bd7          mov     rdx,rdi
fffff803`21cfa177 488b5c2448      mov     rbx,qword ptr [rsp+48h]
fffff803`21cfa17c 488bcb          mov     rcx,rbx
fffff803`21cfa17f e81ca4ffff      call    nt!KiInsertTimerTable (fffff803`21cf45a0)
fffff803`21cfa184 84c0            test    al,al
fffff803`21cfa186 0f8441040000    je      nt!ExpSetTimer+0x69d (fffff803`21cfa5cd)

nt!ExpSetTimer+0x25c:
fffff803`21cfa18c f705f2fe2c0000000200 test dword ptr [nt!PerfGlobalGroupMask+0x8 (fffff803`21fca088)],20000h
fffff803`21cfa196 0f8566841700    jne     nt! ?? ::FNODOBFM::`string'+0x4e012 (fffff803`21e72602)

nt!ExpSetTimer+0x26c:
fffff803`21cfa19c f081277fffffff  lock and dword ptr [rdi],0FFFFFF7Fh
fffff803`21cfa1a3 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x278:
fffff803`21cfa1a8 4c8b542448      mov     r10,qword ptr [rsp+48h]
fffff803`21cfa1ad 4d39b2882c0000  cmp     qword ptr [r10+2C88h],r14
fffff803`21cfa1b4 0f8552020000    jne     nt!ExpSetTimer+0x4dc (fffff803`21cfa40c)

nt!ExpSetTimer+0x28a:
fffff803`21cfa1ba 488b5c2478      mov     rbx,qword ptr [rsp+78h]
fffff803`21cfa1bf 80fb02          cmp     bl,2
fffff803`21cfa1c2 0f824e841700    jb      nt! ?? ::FNODOBFM::`string'+0x4e026 (fffff803`21e72616)

nt!ExpSetTimer+0x298:
fffff803`21cfa1c8 4d397210        cmp     qword ptr [r10+10h],r14
fffff803`21cfa1cc 0f8556020000    jne     nt!ExpSetTimer+0x4f8 (fffff803`21cfa428)

nt!ExpSetTimer+0x2a2:
fffff803`21cfa1d2 8b742450        mov     esi,dword ptr [rsp+50h]
fffff803`21cfa1d6 4d85ff          test    r15,r15
fffff803`21cfa1d9 0f85ff020000    jne     nt!ExpSetTimer+0x5ae (fffff803`21cfa4de)

nt!ExpSetTimer+0x2af:
fffff803`21cfa1df 4181fd25000040  cmp     r13d,40000025h
fffff803`21cfa1e6 7413            je      nt!ExpSetTimer+0x2cb (fffff803`21cfa1fb)

nt!ExpSetTimer+0x2b8:
fffff803`21cfa1e8 4c8bb7f8000000  mov     r14,qword ptr [rdi+0F8h]
fffff803`21cfa1ef 4c89bff8000000  mov     qword ptr [rdi+0F8h],r15
fffff803`21cfa1f6 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x2cb:
fffff803`21cfa1fb f7057ffe2c0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21cfa205 0f85b7851700    jne     nt! ?? ::FNODOBFM::`string'+0x4e1f1 (fffff803`21e727c2)

nt!ExpSetTimer+0x2db:
fffff803`21cfa20b f04983242400    lock and qword ptr [r12],0
fffff803`21cfa211 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x2e6:
fffff803`21cfa216 0fb6842498000000 movzx   eax,byte ptr [rsp+98h]
fffff803`21cfa21e 440f22c0        mov     cr8,rax
fffff803`21cfa222 4d85f6          test    r14,r14
fffff803`21cfa225 0f85c2020000    jne     nt!ExpSetTimer+0x5bd (fffff803`21cfa4ed)

nt!ExpSetTimer+0x2fb:
fffff803`21cfa22b 85f6            test    esi,esi
fffff803`21cfa22d 7428            je      nt!ExpSetTimer+0x327 (fffff803`21cfa257)

nt!ExpSetTimer+0x2ff:
fffff803`21cfa22f 833dfefd2c0000  cmp     dword ptr [nt!ObpTraceFlags (fffff803`21fca034)],0
fffff803`21cfa236 0f85d3851700    jne     nt! ?? ::FNODOBFM::`string'+0x4e23e (fffff803`21e7280f)

nt!ExpSetTimer+0x30c:
fffff803`21cfa23c 8bc6            mov     eax,esi
fffff803`21cfa23e f7d8            neg     eax
fffff803`21cfa240 4898            cdqe
fffff803`21cfa242 f0480fc147d0    lock xadd qword ptr [rdi-30h],rax
fffff803`21cfa248 4863d6          movsxd  rdx,esi
fffff803`21cfa24b 482bc2          sub     rax,rdx
fffff803`21cfa24e 4885c0          test    rax,rax
fffff803`21cfa251 0f8ed2851700    jle     nt! ?? ::FNODOBFM::`string'+0x4e258 (fffff803`21e72829)

nt!ExpSetTimer+0x327:
fffff803`21cfa257 488b942440010000 mov     rdx,qword ptr [rsp+140h]
fffff803`21cfa25f 4885d2          test    rdx,rdx
fffff803`21cfa262 0f85ed851700    jne     nt! ?? ::FNODOBFM::`string'+0x4e288 (fffff803`21e72855)

nt!ExpSetTimer+0x338:
fffff803`21cfa268 418bc5          mov     eax,r13d

nt!ExpSetTimer+0x33b:
fffff803`21cfa26b 4881c4c0000000  add     rsp,0C0h
fffff803`21cfa272 415f            pop     r15
fffff803`21cfa274 415e            pop     r14
fffff803`21cfa276 415d            pop     r13
fffff803`21cfa278 415c            pop     r12
fffff803`21cfa27a 5f              pop     rdi
fffff803`21cfa27b 5e              pop     rsi
fffff803`21cfa27c 5b              pop     rbx
fffff803`21cfa27d c3              ret

nt!ExpSetTimer+0x34e:
fffff803`21cfa27e 488bc1          mov     rax,rcx
fffff803`21cfa281 4869c010270000  imul    rax,rax,2710h
fffff803`21cfa288 483d0000fc00    cmp     rax,0FC0000h
fffff803`21cfa28e 7727            ja      nt!ExpSetTimer+0x387 (fffff803`21cfa2b7)

nt!ExpSetTimer+0x360:
fffff803`21cfa290 c1e812          shr     eax,12h
fffff803`21cfa293 83f83f          cmp     eax,3Fh
fffff803`21cfa296 0f8757030000    ja      nt!ExpSetTimer+0x6c3 (fffff803`21cfa5f3)

nt!ExpSetTimer+0x36c:
fffff803`21cfa29c c0e002          shl     al,2
fffff803`21cfa29f 4889442470      mov     qword ptr [rsp+70h],rax
fffff803`21cfa2a4 e9e5fdffff      jmp     nt!ExpSetTimer+0x15e (fffff803`21cfa08e)

nt!ExpSetTimer+0x379:
fffff803`21cfa2a9 0fb6d1          movzx   edx,cl
fffff803`21cfa2ac 83e2fc          and     edx,0FFFFFFFCh
fffff803`21cfa2af c1e210          shl     edx,10h
fffff803`21cfa2b2 e965feffff      jmp     nt!ExpSetTimer+0x1ec (fffff803`21cfa11c)

nt!ExpSetTimer+0x387:
fffff803`21cfa2b7 488d88000004ff  lea     rcx,[rax-0FC0000h]
fffff803`21cfa2be 4585c0          test    r8d,r8d
fffff803`21cfa2c1 0f8581020000    jne     nt!ExpSetTimer+0x618 (fffff803`21cfa548)

nt!ExpSetTimer+0x397:
fffff803`21cfa2c7 b80000fc00      mov     eax,0FC0000h
fffff803`21cfa2cc ebc2            jmp     nt!ExpSetTimer+0x360 (fffff803`21cfa290)

nt!ExpSetTimer+0x39e:
fffff803`21cfa2ce 80c901          or      cl,1
fffff803`21cfa2d1 888c2481000000  mov     byte ptr [rsp+81h],cl
fffff803`21cfa2d8 48b81400000080f7ffff mov rax,0FFFFF78000000014h
fffff803`21cfa2e2 488b00          mov     rax,qword ptr [rax]
fffff803`21cfa2e5 482bc3          sub     rax,rbx
fffff803`21cfa2e8 488bd8          mov     rbx,rax
fffff803`21cfa2eb 48c1e820        shr     rax,20h
fffff803`21cfa2ef 85c0            test    eax,eax
fffff803`21cfa2f1 0f8819feffff    js      nt!ExpSetTimer+0x1e0 (fffff803`21cfa110)

nt!ExpSetTimer+0x3c7:
fffff803`21cfa2f7 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa2fc 8b842480000000  mov     eax,dword ptr [rsp+80h]
fffff803`21cfa303 8907            mov     dword ptr [rdi],eax
fffff803`21cfa305 4c897718        mov     qword ptr [rdi+18h],r14
fffff803`21cfa309 488b4c2448      mov     rcx,qword ptr [rsp+48h]

nt!ExpSetTimer+0x3de:
fffff803`21cfa30e 4533c0          xor     r8d,r8d
fffff803`21cfa311 488bd7          mov     rdx,rdi
fffff803`21cfa314 e8b79cffff      call    nt!KiTimerWaitTest (fffff803`21cf3fd0)
fffff803`21cfa319 e98afeffff      jmp     nt!ExpSetTimer+0x278 (fffff803`21cfa1a8)

nt!ExpSetTimer+0x3ee:
fffff803`21cfa31e 654c8b142588010000 mov   r10,qword ptr gs:[188h]
fffff803`21cfa327 4c89542448      mov     qword ptr [rsp+48h],r10
fffff803`21cfa32c 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa331 488d4f48        lea     rcx,[rdi+48h]
fffff803`21cfa335 488b842420010000 mov     rax,qword ptr [rsp+120h]
fffff803`21cfa33d 4889442438      mov     qword ptr [rsp+38h],rax
fffff803`21cfa342 0fb6842408010000 movzx   eax,byte ptr [rsp+108h]
fffff803`21cfa34a 88442430        mov     byte ptr [rsp+30h],al
fffff803`21cfa34e 4889542428      mov     qword ptr [rsp+28h],rdx
fffff803`21cfa353 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`21cfa358 4c8d0d95720900  lea     r9,[nt!ExpTimerApcRoutine (fffff803`21d915f4)]
fffff803`21cfa35f 458bc3          mov     r8d,r11d
fffff803`21cfa362 498bd2          mov     rdx,r10
fffff803`21cfa365 e8f2680400      call    nt!KeInitializeApc (fffff803`21d40c5c)
fffff803`21cfa36a 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`21cfa36f 4881c180030000  add     rcx,380h
fffff803`21cfa376 48894c2458      mov     qword ptr [rsp+58h],rcx
fffff803`21cfa37b f705fffc2c0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21cfa385 0f853f821700    jne     nt! ?? ::FNODOBFM::`string'+0x4dfda (fffff803`21e725ca)

nt!ExpSetTimer+0x45b:
fffff803`21cfa38b f0480fba2900    lock bts qword ptr [rcx],0
fffff803`21cfa391 0f8242821700    jb      nt! ?? ::FNODOBFM::`string'+0x4dfe9 (fffff803`21e725d9)

nt!ExpSetTimer+0x467:
fffff803`21cfa397 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x46c:
fffff803`21cfa39c 488d87e0000000  lea     rax,[rdi+0E0h]
fffff803`21cfa3a3 488b542448      mov     rdx,qword ptr [rsp+48h]
fffff803`21cfa3a8 4881c288030000  add     rdx,388h
fffff803`21cfa3af 4c8b4208        mov     r8,qword ptr [rdx+8]
fffff803`21cfa3b3 488910          mov     qword ptr [rax],rdx
fffff803`21cfa3b6 4c894008        mov     qword ptr [rax+8],r8
fffff803`21cfa3ba 493910          cmp     qword ptr [r8],rdx
fffff803`21cfa3bd 0f8525821700    jne     nt! ?? ::FNODOBFM::`string'+0x4dff8 (fffff803`21e725e8)

nt!ExpSetTimer+0x493:
fffff803`21cfa3c3 498900          mov     qword ptr [r8],rax
fffff803`21cfa3c6 48894208        mov     qword ptr [rdx+8],rax
fffff803`21cfa3ca 800b03          or      byte ptr [rbx],3
fffff803`21cfa3cd f705adfc2c0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21cfa3d7 0f8512821700    jne     nt! ?? ::FNODOBFM::`string'+0x4dfff (fffff803`21e725ef)

nt!ExpSetTimer+0x4ad:
fffff803`21cfa3dd f04c2131        lock and qword ptr [rcx],r14
fffff803`21cfa3e1 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt!ExpSetTimer+0x4b6:
fffff803`21cfa3e6 488d87a0000000  lea     rax,[rdi+0A0h]
fffff803`21cfa3ed 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`21cfa3f2 41b9ffffffff    mov     r9d,0FFFFFFFFh
fffff803`21cfa3f8 4103f1          add     esi,r9d
fffff803`21cfa3fb 89742450        mov     dword ptr [rsp+50h],esi
fffff803`21cfa3ff 448b842430010000 mov     r8d,dword ptr [rsp+130h]
fffff803`21cfa407 e956fcffff      jmp     nt!ExpSetTimer+0x132 (fffff803`21cfa062)

nt!ExpSetTimer+0x4dc:
fffff803`21cfa40c 4533c9          xor     r9d,r9d
fffff803`21cfa40f 4533c0          xor     r8d,r8d
fffff803`21cfa412 418d5101        lea     edx,[r9+1]
fffff803`21cfa416 498bca          mov     rcx,r10
fffff803`21cfa419 e87a460400      call    nt!KiProcessThreadWaitList (fffff803`21d3ea98)
fffff803`21cfa41e 4c8b542448      mov     r10,qword ptr [rsp+48h]
fffff803`21cfa423 e992fdffff      jmp     nt!ExpSetTimer+0x28a (fffff803`21cfa1ba)

nt!ExpSetTimer+0x4f8:
fffff803`21cfa428 410fb682da2d0000 movzx   eax,byte ptr [r10+2DDAh]
fffff803`21cfa430 84c0            test    al,al
fffff803`21cfa432 7512            jne     nt!ExpSetTimer+0x516 (fffff803`21cfa446)

nt!ExpSetTimer+0x504:
fffff803`21cfa434 45387220        cmp     byte ptr [r10+20h],r14b
fffff803`21cfa438 0f85d0010000    jne     nt!ExpSetTimer+0x6de (fffff803`21cfa60e)

nt!ExpSetTimer+0x50e:
fffff803`21cfa43e b102            mov     cl,2
fffff803`21cfa440 ff158a5f2c00    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`21fc03d0)]

nt!ExpSetTimer+0x516:
fffff803`21cfa446 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa44b e982fdffff      jmp     nt!ExpSetTimer+0x2a2 (fffff803`21cfa1d2)

nt!ExpSetTimer+0x520:
fffff803`21cfa450 833de912210002  cmp     dword ptr [nt!PopCapabilities+0x40 (fffff803`21f0b740)],2
fffff803`21cfa457 0f8c2f801700    jl      nt! ?? ::FNODOBFM::`string'+0x4de86 (fffff803`21e7248c)

nt!ExpSetTimer+0x52d:
fffff803`21cfa45d 4d85ff          test    r15,r15
fffff803`21cfa460 0f843dfbffff    je      nt!ExpSetTimer+0x73 (fffff803`21cf9fa3)

nt!ExpSetTimer+0x536:
fffff803`21cfa466 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`21cfa46f 66ff8be4010000  dec     word ptr [rbx+1E4h]
fffff803`21cfa476 f0480fba2d008e200000 lock bts qword ptr [nt!ExpWakeTimerLock (fffff803`21f03280)],0
fffff803`21cfa480 0f8216801700    jb      nt! ?? ::FNODOBFM::`string'+0x4de96 (fffff803`21e7249c)

nt!ExpSetTimer+0x556:
fffff803`21cfa486 488b442440      mov     rax,qword ptr [rsp+40h]
fffff803`21cfa48b 480500010000    add     rax,100h
fffff803`21cfa491 4c3930          cmp     qword ptr [rax],r14
fffff803`21cfa494 0f84dd000000    je      nt!ExpSetTimer+0x647 (fffff803`21cfa577)

nt!ExpSetTimer+0x56a:
fffff803`21cfa49a 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`21cfa49e f0480fc105d98d2000 lock xadd qword ptr [nt!ExpWakeTimerLock (fffff803`21f03280)],rax
fffff803`21cfa4a7 a802            test    al,2
fffff803`21cfa4a9 0f85ff7f1700    jne     nt! ?? ::FNODOBFM::`string'+0x4dea8 (fffff803`21e724ae)

nt!ExpSetTimer+0x57f:
fffff803`21cfa4af 0fbf83e4010000  movsx   eax,word ptr [rbx+1E4h]
fffff803`21cfa4b6 ffc0            inc     eax
fffff803`21cfa4b8 668983e4010000  mov     word ptr [rbx+1E4h],ax
fffff803`21cfa4bf 6685c0          test    ax,ax
fffff803`21cfa4c2 7510            jne     nt!ExpSetTimer+0x5a4 (fffff803`21cfa4d4)

nt!ExpSetTimer+0x594:
fffff803`21cfa4c4 488d8398000000  lea     rax,[rbx+98h]
fffff803`21cfa4cb 483900          cmp     qword ptr [rax],rax
fffff803`21cfa4ce 0f85f47f1700    jne     nt! ?? ::FNODOBFM::`string'+0x4dec2 (fffff803`21e724c8)

nt!ExpSetTimer+0x5a4:
fffff803`21cfa4d4 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa4d9 e9c5faffff      jmp     nt!ExpSetTimer+0x73 (fffff803`21cf9fa3)

nt!ExpSetTimer+0x5ae:
fffff803`21cfa4de f00fba2f09      lock bts dword ptr [rdi],9
fffff803`21cfa4e3 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa4e8 e9f2fcffff      jmp     nt!ExpSetTimer+0x2af (fffff803`21cfa1df)

nt!ExpSetTimer+0x5bd:
fffff803`21cfa4ed 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`21cfa4f6 66ff8be4010000  dec     word ptr [rbx+1E4h]
fffff803`21cfa4fd f0830c2400      lock or dword ptr [rsp],0
fffff803`21cfa502 488b05778d2000  mov     rax,qword ptr [nt!ExpWakeTimerLock (fffff803`21f03280)]
fffff803`21cfa509 a801            test    al,1
fffff803`21cfa50b 0f85c7821700    jne     nt! ?? ::FNODOBFM::`string'+0x4e207 (fffff803`21e727d8)

nt!ExpSetTimer+0x5e1:
fffff803`21cfa511 0fbf83e4010000  movsx   eax,word ptr [rbx+1E4h]
fffff803`21cfa518 ffc0            inc     eax
fffff803`21cfa51a 668983e4010000  mov     word ptr [rbx+1E4h],ax
fffff803`21cfa521 6685c0          test    ax,ax
fffff803`21cfa524 7510            jne     nt!ExpSetTimer+0x606 (fffff803`21cfa536)

nt!ExpSetTimer+0x5f6:
fffff803`21cfa526 488d8398000000  lea     rax,[rbx+98h]
fffff803`21cfa52d 483900          cmp     qword ptr [rax],rax
fffff803`21cfa530 0f85c0821700    jne     nt! ?? ::FNODOBFM::`string'+0x4e225 (fffff803`21e727f6)

nt!ExpSetTimer+0x606:
fffff803`21cfa536 498bce          mov     rcx,r14
fffff803`21cfa539 e8a638fbff      call    nt!PoDestroyReasonContext (fffff803`21cadde4)
fffff803`21cfa53e 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa543 e9e3fcffff      jmp     nt!ExpSetTimer+0x2fb (fffff803`21cfa22b)

nt!ExpSetTimer+0x618:
fffff803`21cfa548 48b84b598638d6c56d34 mov rax,346DC5D63886594Bh
fffff803`21cfa552 48f7e9          imul    rcx
fffff803`21cfa555 48c1fa0b        sar     rdx,0Bh
fffff803`21cfa559 488bc2          mov     rax,rdx
fffff803`21cfa55c 48c1e83f        shr     rax,3Fh
fffff803`21cfa560 4803c2          add     rax,rdx
fffff803`21cfa563 4103c0          add     eax,r8d
fffff803`21cfa566 413bc0          cmp     eax,r8d
fffff803`21cfa569 727b            jb      nt!ExpSetTimer+0x6b6 (fffff803`21cfa5e6)

nt!ExpSetTimer+0x63b:
fffff803`21cfa56b 89842430010000  mov     dword ptr [rsp+130h],eax
fffff803`21cfa572 e950fdffff      jmp     nt!ExpSetTimer+0x397 (fffff803`21cfa2c7)

nt!ExpSetTimer+0x647:
fffff803`21cfa577 488b0dfa8c2000  mov     rcx,qword ptr [nt!ExpWakeTimerList+0x8 (fffff803`21f03278)]
fffff803`21cfa57e 488d15eb8c2000  lea     rdx,[nt!ExpWakeTimerList (fffff803`21f03270)]
fffff803`21cfa585 488910          mov     qword ptr [rax],rdx
fffff803`21cfa588 48894808        mov     qword ptr [rax+8],rcx
fffff803`21cfa58c 483911          cmp     qword ptr [rcx],rdx
fffff803`21cfa58f 7544            jne     nt!ExpSetTimer+0x6a5 (fffff803`21cfa5d5)

nt!ExpSetTimer+0x661:
fffff803`21cfa591 488901          mov     qword ptr [rcx],rax
fffff803`21cfa594 488905dd8c2000  mov     qword ptr [nt!ExpWakeTimerList+0x8 (fffff803`21f03278)],rax
fffff803`21cfa59b e9fafeffff      jmp     nt!ExpSetTimer+0x56a (fffff803`21cfa49a)

nt!ExpSetTimer+0x670:
fffff803`21cfa5a0 8b842438010000  mov     eax,dword ptr [rsp+138h]
fffff803`21cfa5a7 898730010000    mov     dword ptr [rdi+130h],eax
fffff803`21cfa5ad 488b01          mov     rax,qword ptr [rcx]
fffff803`21cfa5b0 48898728010000  mov     qword ptr [rdi+128h],rax
fffff803`21cfa5b7 44397104        cmp     dword ptr [rcx+4],r14d
fffff803`21cfa5bb 0f8cee811700    jl      nt! ?? ::FNODOBFM::`string'+0x4e1de (fffff803`21e727af)

nt!ExpSetTimer+0x691:
fffff803`21cfa5c1 c687f500000001  mov     byte ptr [rdi+0F5h],1
fffff803`21cfa5c8 e912fcffff      jmp     nt!ExpSetTimer+0x2af (fffff803`21cfa1df)

nt!ExpSetTimer+0x69d:
fffff803`21cfa5cd 488bcb          mov     rcx,rbx
fffff803`21cfa5d0 e939fdffff      jmp     nt!ExpSetTimer+0x3de (fffff803`21cfa30e)

nt!ExpSetTimer+0x6a5:
fffff803`21cfa5d5 b903000000      mov     ecx,3
fffff803`21cfa5da cd29            int     29h

nt!ExpSetTimer+0x6ac:
fffff803`21cfa5dc 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa5e1 e9627f1700      jmp     nt! ?? ::FNODOBFM::`string'+0x4df49 (fffff803`21e72548)

nt!ExpSetTimer+0x6b6:
fffff803`21cfa5e6 44898c2430010000 mov     dword ptr [rsp+130h],r9d
fffff803`21cfa5ee e9d4fcffff      jmp     nt!ExpSetTimer+0x397 (fffff803`21cfa2c7)

nt!ExpSetTimer+0x6c3:
fffff803`21cfa5f3 b83f000000      mov     eax,3Fh
fffff803`21cfa5f8 e99ffcffff      jmp     nt!ExpSetTimer+0x36c (fffff803`21cfa29c)

nt!ExpSetTimer+0x6cd:
fffff803`21cfa5fd f390            pause
fffff803`21cfa5ff e9c6801700      jmp     nt! ?? ::FNODOBFM::`string'+0x4e0e9 (fffff803`21e726ca)

nt!ExpSetTimer+0x6d4:
fffff803`21cfa604 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`21cfa609 e995811700      jmp     nt! ?? ::FNODOBFM::`string'+0x4e1d2 (fffff803`21e727a3)

nt!ExpSetTimer+0x6de:
fffff803`21cfa60e 41c6420601      mov     byte ptr [r10+6],1
fffff803`21cfa613 e92efeffff      jmp     nt!ExpSetTimer+0x516 (fffff803`21cfa446)

nt!ExpSetTimer+0x6e8:
fffff803`21cfa618 8b442468        mov     eax,dword ptr [rsp+68h]
fffff803`21cfa61c 8802            mov     byte ptr [rdx],al
fffff803`21cfa61e e945fcffff      jmp     nt!ExpSetTimer+0x338 (fffff803`21cfa268)

nt! ?? ::FNODOBFM::`string'+0x4de86:
fffff803`21e7248c 41bd25000040    mov     r13d,40000025h
fffff803`21e72492 44896c2464      mov     dword ptr [rsp+64h],r13d
fffff803`21e72497 e9077be8ff      jmp     nt!ExpSetTimer+0x73 (fffff803`21cf9fa3)

nt! ?? ::FNODOBFM::`string'+0x4de96:
fffff803`21e7249c 488d0ddd0d0900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`21f03280)]
fffff803`21e724a3 e858efedff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`21e724a8 90              nop
fffff803`21e724a9 e9d87fe8ff      jmp     nt!ExpSetTimer+0x556 (fffff803`21cfa486)

nt! ?? ::FNODOBFM::`string'+0x4dea8:
fffff803`21e724ae a804            test    al,4
fffff803`21e724b0 0f85f97fe8ff    jne     nt!ExpSetTimer+0x57f (fffff803`21cfa4af)

nt! ?? ::FNODOBFM::`string'+0x4deb0:
fffff803`21e724b6 488d0dc30d0900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`21f03280)]
fffff803`21e724bd e8522beeff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)
fffff803`21e724c2 90              nop
fffff803`21e724c3 e9e77fe8ff      jmp     nt!ExpSetTimer+0x57f (fffff803`21cfa4af)

nt! ?? ::FNODOBFM::`string'+0x4dec2:
fffff803`21e724c8 664439b3e6010000 cmp     word ptr [rbx+1E6h],r14w
fffff803`21e724d0 0f85fe7fe8ff    jne     nt!ExpSetTimer+0x5a4 (fffff803`21cfa4d4)

nt! ?? ::FNODOBFM::`string'+0x4ded0:
fffff803`21e724d6 e82573efff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`21e724db 90              nop
fffff803`21e724dc e9f37fe8ff      jmp     nt!ExpSetTimer+0x5a4 (fffff803`21cfa4d4)

nt! ?? ::FNODOBFM::`string'+0x4dedb:
fffff803`21e724e1 498bcc          mov     rcx,r12
fffff803`21e724e4 e8d79ff7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e724e9 b902000000      mov     ecx,2
fffff803`21e724ee e9fb7ae8ff      jmp     nt!ExpSetTimer+0xbe (fffff803`21cf9fee)

nt! ?? ::FNODOBFM::`string'+0x4deed:
fffff803`21e724f3 498bcc          mov     rcx,r12
fffff803`21e724f6 e8c5ade3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21e724fb b902000000      mov     ecx,2
fffff803`21e72500 e9e47ae8ff      jmp     nt!ExpSetTimer+0xb9 (fffff803`21cf9fe9)

nt! ?? ::FNODOBFM::`string'+0x4deff:
fffff803`21e72505 488b4f50        mov     rcx,qword ptr [rdi+50h]
fffff803`21e72509 4881c180030000  add     rcx,380h
fffff803`21e72510 48894c2448      mov     qword ptr [rsp+48h],rcx
fffff803`21e72515 f705657b150000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21e7251f 740c            je      nt! ?? ::FNODOBFM::`string'+0x4df2e (fffff803`21e7252d)

nt! ?? ::FNODOBFM::`string'+0x4df1f:
fffff803`21e72521 e89a9ff7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e72526 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`21e7252b eb1b            jmp     nt! ?? ::FNODOBFM::`string'+0x4df49 (fffff803`21e72548)

nt! ?? ::FNODOBFM::`string'+0x4df2e:
fffff803`21e7252d f0480fba2900    lock bts qword ptr [rcx],0
fffff803`21e72533 0f83a380e8ff    jae     nt!ExpSetTimer+0x6ac (fffff803`21cfa5dc)

nt! ?? ::FNODOBFM::`string'+0x4df3a:
fffff803`21e72539 e882ade3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21e7253e 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`21e72543 e99480e8ff      jmp     nt!ExpSetTimer+0x6ac (fffff803`21cfa5dc)

nt! ?? ::FNODOBFM::`string'+0x4df49:
fffff803`21e72548 488d87e0000000  lea     rax,[rdi+0E0h]
fffff803`21e7254f 4c8b00          mov     r8,qword ptr [rax]
fffff803`21e72552 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`21e72556 49394008        cmp     qword ptr [r8+8],rax
fffff803`21e7255a 7567            jne     nt! ?? ::FNODOBFM::`string'+0x4dfd3 (fffff803`21e725c3)

nt! ?? ::FNODOBFM::`string'+0x4df61:
fffff803`21e7255c 483902          cmp     qword ptr [rdx],rax
fffff803`21e7255f 7562            jne     nt! ?? ::FNODOBFM::`string'+0x4dfd3 (fffff803`21e725c3)

nt! ?? ::FNODOBFM::`string'+0x4df6a:
fffff803`21e72561 4c8902          mov     qword ptr [rdx],r8
fffff803`21e72564 49895008        mov     qword ptr [r8+8],rdx
fffff803`21e72568 8023fe          and     byte ptr [rbx],0FEh
fffff803`21e7256b f7050f7b150000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21e72575 740f            je      nt! ?? ::FNODOBFM::`string'+0x4df96 (fffff803`21e72586)

nt! ?? ::FNODOBFM::`string'+0x4df84:
fffff803`21e72577 488b9424f8000000 mov     rdx,qword ptr [rsp+0F8h]
fffff803`21e7257f e8189ff7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e72584 eb09            jmp     nt! ?? ::FNODOBFM::`string'+0x4df9f (fffff803`21e7258f)

nt! ?? ::FNODOBFM::`string'+0x4df96:
fffff803`21e72586 f04c2131        lock and qword ptr [rcx],r14
fffff803`21e7258a 488b7c2440      mov     rdi,qword ptr [rsp+40h]

nt! ?? ::FNODOBFM::`string'+0x4df9f:
fffff803`21e7258f 488bcf          mov     rcx,rdi
fffff803`21e72592 e8f93de8ff      call    nt!KeCancelTimer (fffff803`21cf6390)
fffff803`21e72597 488d8fa0000000  lea     rcx,[rdi+0A0h]
fffff803`21e7259e e8bde4e1ff      call    nt!KeRemoveQueueDpc (fffff803`21c90a60)
fffff803`21e725a3 488d4f48        lea     rcx,[rdi+48h]
fffff803`21e725a7 e8e4c1e3ff      call    nt!KeRemoveQueueApc (fffff803`21cae790)
fffff803`21e725ac 84c0            test    al,al
fffff803`21e725ae 41bb02000000    mov     r11d,2
fffff803`21e725b4 410f45f3        cmovne  esi,r11d
fffff803`21e725b8 ffc6            inc     esi
fffff803`21e725ba 89742450        mov     dword ptr [rsp+50h],esi
fffff803`21e725be e9677ae8ff      jmp     nt!ExpSetTimer+0xfa (fffff803`21cfa02a)

nt! ?? ::FNODOBFM::`string'+0x4dfd3:
fffff803`21e725c3 b903000000      mov     ecx,3
fffff803`21e725c8 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4dfda:
fffff803`21e725ca e8f19ef7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e725cf 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff803`21e725d4 e9c37de8ff      jmp     nt!ExpSetTimer+0x46c (fffff803`21cfa39c)

nt! ?? ::FNODOBFM::`string'+0x4dfe9:
fffff803`21e725d9 e8e2ace3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21e725de 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff803`21e725e3 e9af7de8ff      jmp     nt!ExpSetTimer+0x467 (fffff803`21cfa397)

nt! ?? ::FNODOBFM::`string'+0x4dff8:
fffff803`21e725e8 b903000000      mov     ecx,3
fffff803`21e725ed cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4dfff:
fffff803`21e725ef 488b9424f8000000 mov     rdx,qword ptr [rsp+0F8h]
fffff803`21e725f7 e8a09ef7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e725fc 90              nop
fffff803`21e725fd e9e47de8ff      jmp     nt!ExpSetTimer+0x4b6 (fffff803`21cfa3e6)

nt! ?? ::FNODOBFM::`string'+0x4e012:
fffff803`21e72602 4533c0          xor     r8d,r8d
fffff803`21e72605 488bd6          mov     rdx,rsi
fffff803`21e72608 488bcf          mov     rcx,rdi
fffff803`21e7260b e894f5f7ff      call    nt!KiTraceSetTimer (fffff803`21df1ba4)
fffff803`21e72610 90              nop
fffff803`21e72611 e9927be8ff      jmp     nt!ExpSetTimer+0x278 (fffff803`21cfa1a8)

nt! ?? ::FNODOBFM::`string'+0x4e026:
fffff803`21e72616 498b7208        mov     rsi,qword ptr [r10+8]
fffff803`21e7261a 4d397210        cmp     qword ptr [r10+10h],r14
fffff803`21e7261e 0f845a010000    je      nt! ?? ::FNODOBFM::`string'+0x4e1a9 (fffff803`21e7277e)

nt! ?? ::FNODOBFM::`string'+0x4e034:
fffff803`21e72624 4489742460      mov     dword ptr [rsp+60h],r14d

nt! ?? ::FNODOBFM::`string'+0x4e039:
fffff803`21e72629 f0490fba6a3000  lock bts qword ptr [r10+30h],0
fffff803`21e72630 726a            jb      nt! ?? ::FNODOBFM::`string'+0x4e0bb (fffff803`21e7269c)

nt! ?? ::FNODOBFM::`string'+0x4e046:
fffff803`21e72632 498b7a10        mov     rdi,qword ptr [r10+10h]
fffff803`21e72636 4d897210        mov     qword ptr [r10+10h],r14
fffff803`21e7263a fa              cli
fffff803`21e7263b 41c6422001      mov     byte ptr [r10+20h],1
fffff803`21e72640 0f31            rdtsc
fffff803`21e72642 48c1e220        shl     rdx,20h
fffff803`21e72646 480bc2          or      rax,rdx
fffff803`21e72649 4889442478      mov     qword ptr [rsp+78h],rax
fffff803`21e7264e 4c8bc0          mov     r8,rax
fffff803`21e72651 4d2b8240530000  sub     r8,qword ptr [r10+5340h]
fffff803`21e72658 488b4e48        mov     rcx,qword ptr [rsi+48h]
fffff803`21e7265c 4903c8          add     rcx,r8
fffff803`21e7265f 48894e48        mov     qword ptr [rsi+48h],rcx
fffff803`21e72663 8b4e50          mov     ecx,dword ptr [rsi+50h]
fffff803`21e72666 4903c8          add     rcx,r8
fffff803`21e72669 b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21e7266e 483bc8          cmp     rcx,rax
fffff803`21e72671 480f47c8        cmova   rcx,rax
fffff803`21e72675 894e50          mov     dword ptr [rsi+50h],ecx
fffff803`21e72678 f646020e        test    byte ptr [rsi+2],0Eh
fffff803`21e7267c 0f8493000000    je      nt! ?? ::FNODOBFM::`string'+0x4e140 (fffff803`21e72715)

nt! ?? ::FNODOBFM::`string'+0x4e096:
fffff803`21e72682 488b4e68        mov     rcx,qword ptr [rsi+68h]
fffff803`21e72686 4885c9          test    rcx,rcx
fffff803`21e72689 744d            je      nt! ?? ::FNODOBFM::`string'+0x4e0f7 (fffff803`21e726d8)

nt! ?? ::FNODOBFM::`string'+0x4e0a3:
fffff803`21e7268b 418b821c530000  mov     eax,dword ptr [r10+531Ch]
fffff803`21e72692 4803c1          add     rax,rcx
fffff803`21e72695 7441            je      nt! ?? ::FNODOBFM::`string'+0x4e0f7 (fffff803`21e726d8)

nt! ?? ::FNODOBFM::`string'+0x4e0b3:
fffff803`21e72697 4c0100          add     qword ptr [rax],r8
fffff803`21e7269a eb3c            jmp     nt! ?? ::FNODOBFM::`string'+0x4e0f7 (fffff803`21e726d8)

nt! ?? ::FNODOBFM::`string'+0x4e0bb:
fffff803`21e7269c 8b4c2460        mov     ecx,dword ptr [rsp+60h]
fffff803`21e726a0 ffc1            inc     ecx
fffff803`21e726a2 894c2460        mov     dword ptr [rsp+60h],ecx
fffff803`21e726a6 850da07d1500    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],ecx
fffff803`21e726ac 0f854b7fe8ff    jne     nt!ExpSetTimer+0x6cd (fffff803`21cfa5fd)

nt! ?? ::FNODOBFM::`string'+0x4e0d1:
fffff803`21e726b2 8b05b8791500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e726b8 a840            test    al,40h
fffff803`21e726ba 0f843d7fe8ff    je      nt!ExpSetTimer+0x6cd (fffff803`21cfa5fd)

nt! ?? ::FNODOBFM::`string'+0x4e0df:
fffff803`21e726c0 e8ff8cf6ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e726c5 4c8b542448      mov     r10,qword ptr [rsp+48h]

nt! ?? ::FNODOBFM::`string'+0x4e0e9:
fffff803`21e726ca 498b4230        mov     rax,qword ptr [r10+30h]
fffff803`21e726ce 4885c0          test    rax,rax
fffff803`21e726d1 75c9            jne     nt! ?? ::FNODOBFM::`string'+0x4e0bb (fffff803`21e7269c)

nt! ?? ::FNODOBFM::`string'+0x4e0f2:
fffff803`21e726d3 e951ffffff      jmp     nt! ?? ::FNODOBFM::`string'+0x4e039 (fffff803`21e72629)

nt! ?? ::FNODOBFM::`string'+0x4e0f7:
fffff803`21e726d8 f6460208        test    byte ptr [rsi+2],8
fffff803`21e726dc 7421            je      nt! ?? ::FNODOBFM::`string'+0x4e126 (fffff803`21e726ff)

nt! ?? ::FNODOBFM::`string'+0x4e101:
fffff803`21e726de 498b8238530000  mov     rax,qword ptr [r10+5338h]
fffff803`21e726e5 488b9638020000  mov     rdx,qword ptr [rsi+238h]
fffff803`21e726ec 488b4850        mov     rcx,qword ptr [rax+50h]
fffff803`21e726f0 4823d1          and     rdx,rcx
fffff803`21e726f3 483bd1          cmp     rdx,rcx
fffff803`21e726f6 7407            je      nt! ?? ::FNODOBFM::`string'+0x4e126 (fffff803`21e726ff)

nt! ?? ::FNODOBFM::`string'+0x4e11f:
fffff803`21e726f8 4d018250530000  add     qword ptr [r10+5350h],r8

nt! ?? ::FNODOBFM::`string'+0x4e126:
fffff803`21e726ff 4c39b668010000  cmp     qword ptr [rsi+168h],r14
fffff803`21e72706 740d            je      nt! ?? ::FNODOBFM::`string'+0x4e140 (fffff803`21e72715)

nt! ?? ::FNODOBFM::`string'+0x4e133:
fffff803`21e72708 488bce          mov     rcx,rsi
fffff803`21e7270b e830e5f7ff      call    nt!KiEndCounterAccumulation (fffff803`21df0c40)
fffff803`21e72710 4c8b542448      mov     r10,qword ptr [rsp+48h]

nt! ?? ::FNODOBFM::`string'+0x4e140:
fffff803`21e72715 488b442478      mov     rax,qword ptr [rsp+78h]
fffff803`21e7271a 49898240530000  mov     qword ptr [r10+5340h],rax
fffff803`21e72721 fb              sti
fffff803`21e72722 49897a08        mov     qword ptr [r10+8],rdi
fffff803`21e72726 c6878401000002  mov     byte ptr [rdi+184h],2
fffff803`21e7272d c6868302000020  mov     byte ptr [rsi+283h],20h
fffff803`21e72734 889e86010000    mov     byte ptr [rsi+186h],bl
fffff803`21e7273a 488bd6          mov     rdx,rsi
fffff803`21e7273d 498bca          mov     rcx,r10
fffff803`21e72740 e8bb33e8ff      call    nt!KiQueueReadyThread (fffff803`21cf5b00)
fffff803`21e72745 440fb6c3        movzx   r8d,bl
fffff803`21e72749 488bd7          mov     rdx,rdi
fffff803`21e7274c 488bce          mov     rcx,rsi
fffff803`21e7274f e8dc38e5ff      call    nt!KiSwapContext (fffff803`21cc6030)
fffff803`21e72754 84c0            test    al,al
fffff803`21e72756 0f84a87ee8ff    je      nt!ExpSetTimer+0x6d4 (fffff803`21cfa604)

nt! ?? ::FNODOBFM::`string'+0x4e187:
fffff803`21e7275c b801000000      mov     eax,1
fffff803`21e72761 440f22c0        mov     cr8,rax
fffff803`21e72765 816674fffeffff  and     dword ptr [rsi+74h],0FFFFFEFFh
fffff803`21e7276c 4533c0          xor     r8d,r8d
fffff803`21e7276f 33d2            xor     edx,edx
fffff803`21e72771 33c9            xor     ecx,ecx
fffff803`21e72773 e898eeecff      call    nt!KiDeliverApc (fffff803`21d41610)
fffff803`21e72778 90              nop
fffff803`21e72779 e9867ee8ff      jmp     nt!ExpSetTimer+0x6d4 (fffff803`21cfa604)

nt! ?? ::FNODOBFM::`string'+0x4e1a9:
fffff803`21e7277e f7467400010000  test    dword ptr [rsi+74h],100h
fffff803`21e72785 741c            je      nt! ?? ::FNODOBFM::`string'+0x4e1d2 (fffff803`21e727a3)

nt! ?? ::FNODOBFM::`string'+0x4e1b6:
fffff803`21e72787 b801000000      mov     eax,1
fffff803`21e7278c 440f22c0        mov     cr8,rax
fffff803`21e72790 816674fffeffff  and     dword ptr [rsi+74h],0FFFFFEFFh
fffff803`21e72797 4533c0          xor     r8d,r8d
fffff803`21e7279a 33d2            xor     edx,edx
fffff803`21e7279c 33c9            xor     ecx,ecx
fffff803`21e7279e e86deeecff      call    nt!KiDeliverApc (fffff803`21d41610)

nt! ?? ::FNODOBFM::`string'+0x4e1d2:
fffff803`21e727a3 0fb6c3          movzx   eax,bl
fffff803`21e727a6 440f22c0        mov     cr8,rax
fffff803`21e727aa e9237ae8ff      jmp     nt!ExpSetTimer+0x2a2 (fffff803`21cfa1d2)

nt! ?? ::FNODOBFM::`string'+0x4e1de:
fffff803`21e727af 4d85ff          test    r15,r15
fffff803`21e727b2 0f95c0          setne   al
fffff803`21e727b5 0402            add     al,2
fffff803`21e727b7 8887f5000000    mov     byte ptr [rdi+0F5h],al
fffff803`21e727bd e91d7ae8ff      jmp     nt!ExpSetTimer+0x2af (fffff803`21cfa1df)

nt! ?? ::FNODOBFM::`string'+0x4e1f1:
fffff803`21e727c2 488b9424f8000000 mov     rdx,qword ptr [rsp+0F8h]
fffff803`21e727ca 498bcc          mov     rcx,r12
fffff803`21e727cd e8ca9cf7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e727d2 90              nop
fffff803`21e727d3 e93e7ae8ff      jmp     nt!ExpSetTimer+0x2e6 (fffff803`21cfa216)

nt! ?? ::FNODOBFM::`string'+0x4e207:
fffff803`21e727d8 488d0da10a0900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`21f03280)]
fffff803`21e727df e81cecedff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`21e727e4 488d0d950a0900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`21f03280)]
fffff803`21e727eb e8e054efff      call    nt!ExfReleasePushLockExclusive (fffff803`21d67cd0)
fffff803`21e727f0 90              nop
fffff803`21e727f1 e91b7de8ff      jmp     nt!ExpSetTimer+0x5e1 (fffff803`21cfa511)

nt! ?? ::FNODOBFM::`string'+0x4e225:
fffff803`21e727f6 6683bbe601000000 cmp     word ptr [rbx+1E6h],0
fffff803`21e727fe 0f85327de8ff    jne     nt!ExpSetTimer+0x606 (fffff803`21cfa536)

nt! ?? ::FNODOBFM::`string'+0x4e233:
fffff803`21e72804 e8f76fefff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`21e72809 90              nop
fffff803`21e7280a e9277de8ff      jmp     nt!ExpSetTimer+0x606 (fffff803`21cfa536)

nt! ?? ::FNODOBFM::`string'+0x4e23e:
fffff803`21e7280f 41b944666c74    mov     r9d,746C6644h
fffff803`21e72815 448bc6          mov     r8d,esi
fffff803`21e72818 33d2            xor     edx,edx
fffff803`21e7281a 488d4fd0        lea     rcx,[rdi-30h]
fffff803`21e7281e e80d5af9ff      call    nt!ObpPushStackInfo (fffff803`21e08230)
fffff803`21e72823 90              nop
fffff803`21e72824 e9137ae8ff      jmp     nt!ExpSetTimer+0x30c (fffff803`21cfa23c)

nt! ?? ::FNODOBFM::`string'+0x4e258:
fffff803`21e72829 750f            jne     nt! ?? ::FNODOBFM::`string'+0x4e26d (fffff803`21e7283a)

nt! ?? ::FNODOBFM::`string'+0x4e25e:
fffff803`21e7282b 488d4fd0        lea     rcx,[rdi-30h]
fffff803`21e7282f e84444f0ff      call    nt!ObpDeferObjectDeletion (fffff803`21d76c78)
fffff803`21e72834 90              nop
fffff803`21e72835 e91d7ae8ff      jmp     nt!ExpSetTimer+0x327 (fffff803`21cfa257)

nt! ?? ::FNODOBFM::`string'+0x4e26d:
fffff803`21e7283a 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21e7283f 41b905000000    mov     r9d,5
fffff803`21e72845 4c8b442440      mov     r8,qword ptr [rsp+40h]
fffff803`21e7284a 33d2            xor     edx,edx
fffff803`21e7284c 8d4a18          lea     ecx,[rdx+18h]
fffff803`21e7284f e8ec9be5ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e72854 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4e288:
fffff803`21e72855 80bc240801000000 cmp     byte ptr [rsp+108h],0
fffff803`21e7285d 0f84b57de8ff    je      nt!ExpSetTimer+0x6e8 (fffff803`21cfa618)

nt! ?? ::FNODOBFM::`string'+0x4e296:
fffff803`21e72863 488bca          mov     rcx,rdx
fffff803`21e72866 488b0593771500  mov     rax,qword ptr [nt!MmUserProbeAddress (fffff803`21fca000)]
fffff803`21e7286d 483bd0          cmp     rdx,rax
fffff803`21e72870 480f43c8        cmovae  rcx,rax
fffff803`21e72874 0fb601          movzx   eax,byte ptr [rcx]
fffff803`21e72877 8801            mov     byte ptr [rcx],al
fffff803`21e72879 8b442468        mov     eax,dword ptr [rsp+68h]
fffff803`21e7287d 8802            mov     byte ptr [rdx],al
fffff803`21e7287f e9e479e8ff      jmp     nt!ExpSetTimer+0x338 (fffff803`21cfa268)
