0: kd> uf KeInitThread
nt!KeInitThread:
fffff800`11fd7330 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff800`11fd7335 4889742418      mov     qword ptr [rsp+18h],rsi
fffff800`11fd733a 48894c2408      mov     qword ptr [rsp+8],rcx
fffff800`11fd733f 57              push    rdi
fffff800`11fd7340 4154            push    r12
fffff800`11fd7342 4155            push    r13
fffff800`11fd7344 4156            push    r14
fffff800`11fd7346 4157            push    r15
fffff800`11fd7348 4883ec40        sub     rsp,40h
fffff800`11fd734c 4d8be1          mov     r12,r9
fffff800`11fd734f 4d8be8          mov     r13,r8
fffff800`11fd7352 488bf2          mov     rsi,rdx
fffff800`11fd7355 488bf9          mov     rdi,rcx
fffff800`11fd7358 c60106          mov     byte ptr [rcx],6
fffff800`11fd735b 488d4108        lea     rax,[rcx+8]
fffff800`11fd735f 48894008        mov     qword ptr [rax+8],rax
fffff800`11fd7363 488900          mov     qword ptr [rax],rax
fffff800`11fd7366 488d8108030000  lea     rax,[rcx+308h]
fffff800`11fd736d 48894008        mov     qword ptr [rax+8],rax
fffff800`11fd7371 488900          mov     qword ptr [rax],rax
fffff800`11fd7374 488d8158010000  lea     rax,[rcx+158h]
fffff800`11fd737b b904000000      mov     ecx,4
fffff800`11fd7380 8d59fd          lea     ebx,[rcx-3]

nt!KeInitThread+0x53:
fffff800`11fd7383 488938          mov     qword ptr [rax],rdi
fffff800`11fd7386 4883c030        add     rax,30h
fffff800`11fd738a 482bcb          sub     rcx,rbx
fffff800`11fd738d 75f4            jne     nt!KeInitThread+0x53 (fffff800`11fd7383)

nt!KeInitThread+0x5f:
fffff800`11fd738f 4c8bb424a8000000 mov     r14,qword ptr [rsp+0A8h]
fffff800`11fd7397 418b8eb0010000  mov     ecx,dword ptr [r14+1B0h]
fffff800`11fd739e 23cb            and     ecx,ebx
fffff800`11fd73a0 8b4778          mov     eax,dword ptr [rdi+78h]
fffff800`11fd73a3 83e0fe          and     eax,0FFFFFFFEh
fffff800`11fd73a6 0bc8            or      ecx,eax
fffff800`11fd73a8 83c920          or      ecx,20h
fffff800`11fd73ab 894f78          mov     dword ptr [rdi+78h],ecx
fffff800`11fd73ae 095f74          or      dword ptr [rdi+74h],ebx
fffff800`11fd73b1 8b05f58effff    mov     eax,dword ptr [nt!KiShortExecutionCycles (fffff800`11fd02ac)]
fffff800`11fd73b7 c1e004          shl     eax,4
fffff800`11fd73ba 894754          mov     dword ptr [rdi+54h],eax
fffff800`11fd73bd 488d8f98000000  lea     rcx,[rdi+98h]
fffff800`11fd73c4 48898f48020000  mov     qword ptr [rdi+248h],rcx
fffff800`11fd73cb 488d8758020000  lea     rax,[rdi+258h]
fffff800`11fd73d2 48898750020000  mov     qword ptr [rdi+250h],rax
fffff800`11fd73d9 48894908        mov     qword ptr [rcx+8],rcx
fffff800`11fd73dd 488909          mov     qword ptr [rcx],rcx
fffff800`11fd73e0 488d87a8000000  lea     rax,[rdi+0A8h]
fffff800`11fd73e7 48894008        mov     qword ptr [rax+8],rax
fffff800`11fd73eb 488900          mov     qword ptr [rax],rax
fffff800`11fd73ee 4c89b7b8000000  mov     qword ptr [rdi+0B8h],r14
fffff800`11fd73f5 4c89b720020000  mov     qword ptr [rdi+220h],r14
fffff800`11fd73fc 0fba6f7410      bts     dword ptr [rdi+74h],10h
fffff800`11fd7401 8b4774          mov     eax,dword ptr [rdi+74h]
fffff800`11fd7404 4c8bbc2498000000 mov     r15,qword ptr [rsp+98h]
fffff800`11fd740c 4d85ff          test    r15,r15
fffff800`11fd740f 0f8490010000    je      nt!KeInitThread+0x275 (fffff800`11fd75a5)

nt!KeInitThread+0xe5:
fffff800`11fd7415 488d8f88020000  lea     rcx,[rdi+288h]
fffff800`11fd741c 48897c2438      mov     qword ptr [rsp+38h],rdi
fffff800`11fd7421 c644243000      mov     byte ptr [rsp+30h],0
fffff800`11fd7426 488d05a345d8ff  lea     rax,[nt!KiSchedulerApc (fffff800`11d5b9d0)]
fffff800`11fd742d 4889442428      mov     qword ptr [rsp+28h],rax
fffff800`11fd7432 488d05876ed6ff  lea     rax,[nt!EmpCheckErrataList (fffff800`11d3e2c0)]
fffff800`11fd7439 4889442420      mov     qword ptr [rsp+20h],rax
fffff800`11fd743e 4c8d0d7b6ed6ff  lea     r9,[nt!EmpCheckErrataList (fffff800`11d3e2c0)]
fffff800`11fd7445 4533c0          xor     r8d,r8d
fffff800`11fd7448 488bd7          mov     rdx,rdi
fffff800`11fd744b e80cf8d6ff      call    nt!KeInitializeApc (fffff800`11d46c5c)
fffff800`11fd7450 488d8fe0020000  lea     rcx,[rdi+2E0h]
fffff800`11fd7457 448ac3          mov     r8b,bl
fffff800`11fd745a 33d2            xor     edx,edx
fffff800`11fd745c e82fead4ff      call    nt!KeInitializeEvent (fffff800`11d25e90)
fffff800`11fd7461 488d9f00010000  lea     rbx,[rdi+100h]
fffff800`11fd7468 33d2            xor     edx,edx
fffff800`11fd746a 488bcb          mov     rcx,rbx
fffff800`11fd746d e83e71d5ff      call    nt!KeInitializeTimerEx (fffff800`11d2e5b0)
fffff800`11fd7472 4c8b1d1793ffff  mov     r11,qword ptr [nt!KiWaitAlways (fffff800`11fd0790)]
fffff800`11fd7479 490fcb          bswap   r11
fffff800`11fd747c 4c33db          xor     r11,rbx
fffff800`11fd747f 488b05a290ffff  mov     rax,qword ptr [nt!KiWaitNever (fffff800`11fd0528)]
fffff800`11fd7486 8bc8            mov     ecx,eax
fffff800`11fd7488 49d3cb          ror     r11,cl
fffff800`11fd748b 4c33d8          xor     r11,rax
fffff800`11fd748e 4c895b30        mov     qword ptr [rbx+30h],r11
fffff800`11fd7492 488d87d0010000  lea     rax,[rdi+1D0h]
fffff800`11fd7499 c7401001020201  mov     dword ptr [rax+10h],1020201h
fffff800`11fd74a0 ba01000000      mov     edx,1
fffff800`11fd74a5 4883c308        add     rbx,8
fffff800`11fd74a9 488b0b          mov     rcx,qword ptr [rbx]
fffff800`11fd74ac 488908          mov     qword ptr [rax],rcx
fffff800`11fd74af 48895808        mov     qword ptr [rax+8],rbx
fffff800`11fd74b3 48395908        cmp     qword ptr [rcx+8],rbx
fffff800`11fd74b7 0f8553300100    jne     nt! ?? ::OKHAJAOM::`string'+0x1c0 (fffff800`11fea510)

nt!KeInitThread+0x18d:
fffff800`11fd74bd 48894108        mov     qword ptr [rcx+8],rax
fffff800`11fd74c1 488903          mov     qword ptr [rbx],rax
fffff800`11fd74c4 488b8424a0000000 mov     rax,qword ptr [rsp+0A0h]
fffff800`11fd74cc 488987f0000000  mov     qword ptr [rdi+0F0h],rax
fffff800`11fd74d3 c68424a800000000 mov     byte ptr [rsp+0A8h],0
fffff800`11fd74db 4885f6          test    rsi,rsi
fffff800`11fd74de 754f            jne     nt!KeInitThread+0x1ff (fffff800`11fd752f)

nt!KeInitThread+0x1b0:
fffff800`11fd74e0 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff800`11fd74e9 0fb78840020000  movzx   ecx,word ptr [rax+240h]
fffff800`11fd74f0 8b8424b0000000  mov     eax,dword ptr [rsp+0B0h]
fffff800`11fd74f7 85c0            test    eax,eax
fffff800`11fd74f9 0f85b2000000    jne     nt!KeInitThread+0x281 (fffff800`11fd75b1)

nt!KeInitThread+0x1cf:
fffff800`11fd74ff 0fb7c1          movzx   eax,cx
fffff800`11fd7502 410fb7844608020000 movzx eax,word ptr [r14+rax*2+208h]

nt!KeInitThread+0x1db:
fffff800`11fd750b 4c8bc7          mov     r8,rdi
fffff800`11fd750e 0fb7d0          movzx   edx,ax
fffff800`11fd7511 b908000000      mov     ecx,8
fffff800`11fd7516 e82531d5ff      call    nt!MmCreateKernelStack (fffff800`11d2a640)
fffff800`11fd751b 488bf0          mov     rsi,rax
fffff800`11fd751e 4885c0          test    rax,rax
fffff800`11fd7521 0f84f02f0100    je      nt! ?? ::OKHAJAOM::`string'+0x1c7 (fffff800`11fea517)

nt!KeInitThread+0x1f7:
fffff800`11fd7527 c68424a800000001 mov     byte ptr [rsp+0A8h],1

nt!KeInitThread+0x1ff:
fffff800`11fd752f 48897728        mov     qword ptr [rdi+28h],rsi
fffff800`11fd7533 48897738        mov     qword ptr [rdi+38h],rsi
fffff800`11fd7537 8b05ef8bffff    mov     eax,dword ptr [nt!KeKernelStackSize (fffff800`11fd012c)]
fffff800`11fd753d 482bf0          sub     rsi,rax
fffff800`11fd7540 48897730        mov     qword ptr [rdi+30h],rsi
fffff800`11fd7544 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff800`11fd7549 4c8b8c2490000000 mov     r9,qword ptr [rsp+90h]
fffff800`11fd7551 4d8bc4          mov     r8,r12
fffff800`11fd7554 498bd5          mov     rdx,r13
fffff800`11fd7557 488bcf          mov     rcx,rdi
fffff800`11fd755a e87920d8ff      call    nt!KiInitializeContextThread (fffff800`11d595d8)
fffff800`11fd755f eb28            jmp     nt!KeInitThread+0x259 (fffff800`11fd7589)

nt!KeInitThread+0x259:
fffff800`11fd7589 33c0            xor     eax,eax

nt!KeInitThread+0x25b:
fffff800`11fd758b 4c8d5c2440      lea     r11,[rsp+40h]
fffff800`11fd7590 498b5b38        mov     rbx,qword ptr [r11+38h]
fffff800`11fd7594 498b7340        mov     rsi,qword ptr [r11+40h]
fffff800`11fd7598 498be3          mov     rsp,r11
fffff800`11fd759b 415f            pop     r15
fffff800`11fd759d 415e            pop     r14
fffff800`11fd759f 415d            pop     r13
fffff800`11fd75a1 415c            pop     r12
fffff800`11fd75a3 5f              pop     rdi
fffff800`11fd75a4 c3              ret

nt!KeInitThread+0x275:
fffff800`11fd75a5 0fbae80c        bts     eax,0Ch
fffff800`11fd75a9 894774          mov     dword ptr [rdi+74h],eax
fffff800`11fd75ac e964feffff      jmp     nt!KeInitThread+0xe5 (fffff800`11fd7415)

nt!KeInitThread+0x281:
fffff800`11fd75b1 662bc2          sub     ax,dx
fffff800`11fd75b4 e952ffffff      jmp     nt!KeInitThread+0x1db (fffff800`11fd750b)

nt! ?? ::OKHAJAOM::`string'+0x1c0:
fffff800`11fea510 b903000000      mov     ecx,3
fffff800`11fea515 cd29            int     29h

nt! ?? ::OKHAJAOM::`string'+0x1c7:
fffff800`11fea517 b89a0000c0      mov     eax,0C000009Ah
fffff800`11fea51c e96ad0feff      jmp     nt!KeInitThread+0x25b (fffff800`11fd758b)
