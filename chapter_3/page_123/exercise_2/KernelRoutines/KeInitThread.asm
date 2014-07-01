0: kd> uf KeInitThread
nt!KeInitThread:
fffff803`d9be5330 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff803`d9be5335 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d9be533a 48894c2408      mov     qword ptr [rsp+8],rcx
fffff803`d9be533f 57              push    rdi
fffff803`d9be5340 4154            push    r12
fffff803`d9be5342 4155            push    r13
fffff803`d9be5344 4156            push    r14
fffff803`d9be5346 4157            push    r15
fffff803`d9be5348 4883ec40        sub     rsp,40h
fffff803`d9be534c 4d8be1          mov     r12,r9
fffff803`d9be534f 4d8be8          mov     r13,r8
fffff803`d9be5352 488bf2          mov     rsi,rdx
fffff803`d9be5355 488bf9          mov     rdi,rcx
fffff803`d9be5358 c60106          mov     byte ptr [rcx],6
fffff803`d9be535b 488d4108        lea     rax,[rcx+8]
fffff803`d9be535f 48894008        mov     qword ptr [rax+8],rax
fffff803`d9be5363 488900          mov     qword ptr [rax],rax
fffff803`d9be5366 488d8108030000  lea     rax,[rcx+308h]
fffff803`d9be536d 48894008        mov     qword ptr [rax+8],rax
fffff803`d9be5371 488900          mov     qword ptr [rax],rax
fffff803`d9be5374 488d8158010000  lea     rax,[rcx+158h]
fffff803`d9be537b b904000000      mov     ecx,4
fffff803`d9be5380 8d59fd          lea     ebx,[rcx-3]

nt!KeInitThread+0x53:
fffff803`d9be5383 488938          mov     qword ptr [rax],rdi
fffff803`d9be5386 4883c030        add     rax,30h
fffff803`d9be538a 482bcb          sub     rcx,rbx
fffff803`d9be538d 75f4            jne     nt!KeInitThread+0x53 (fffff803`d9be5383)

nt!KeInitThread+0x5f:
fffff803`d9be538f 4c8bb424a8000000 mov     r14,qword ptr [rsp+0A8h]
fffff803`d9be5397 418b8eb0010000  mov     ecx,dword ptr [r14+1B0h]
fffff803`d9be539e 23cb            and     ecx,ebx
fffff803`d9be53a0 8b4778          mov     eax,dword ptr [rdi+78h]
fffff803`d9be53a3 83e0fe          and     eax,0FFFFFFFEh
fffff803`d9be53a6 0bc8            or      ecx,eax
fffff803`d9be53a8 83c920          or      ecx,20h
fffff803`d9be53ab 894f78          mov     dword ptr [rdi+78h],ecx
fffff803`d9be53ae 095f74          or      dword ptr [rdi+74h],ebx
fffff803`d9be53b1 8b05f58effff    mov     eax,dword ptr [nt!KiShortExecutionCycles (fffff803`d9bde2ac)]
fffff803`d9be53b7 c1e004          shl     eax,4
fffff803`d9be53ba 894754          mov     dword ptr [rdi+54h],eax
fffff803`d9be53bd 488d8f98000000  lea     rcx,[rdi+98h]
fffff803`d9be53c4 48898f48020000  mov     qword ptr [rdi+248h],rcx
fffff803`d9be53cb 488d8758020000  lea     rax,[rdi+258h]
fffff803`d9be53d2 48898750020000  mov     qword ptr [rdi+250h],rax
fffff803`d9be53d9 48894908        mov     qword ptr [rcx+8],rcx
fffff803`d9be53dd 488909          mov     qword ptr [rcx],rcx
fffff803`d9be53e0 488d87a8000000  lea     rax,[rdi+0A8h]
fffff803`d9be53e7 48894008        mov     qword ptr [rax+8],rax
fffff803`d9be53eb 488900          mov     qword ptr [rax],rax
fffff803`d9be53ee 4c89b7b8000000  mov     qword ptr [rdi+0B8h],r14
fffff803`d9be53f5 4c89b720020000  mov     qword ptr [rdi+220h],r14
fffff803`d9be53fc 0fba6f7410      bts     dword ptr [rdi+74h],10h
fffff803`d9be5401 8b4774          mov     eax,dword ptr [rdi+74h]
fffff803`d9be5404 4c8bbc2498000000 mov     r15,qword ptr [rsp+98h]
fffff803`d9be540c 4d85ff          test    r15,r15
fffff803`d9be540f 0f8490010000    je      nt!KeInitThread+0x275 (fffff803`d9be55a5)

nt!KeInitThread+0xe5:
fffff803`d9be5415 488d8f88020000  lea     rcx,[rdi+288h]
fffff803`d9be541c 48897c2438      mov     qword ptr [rsp+38h],rdi
fffff803`d9be5421 c644243000      mov     byte ptr [rsp+30h],0
fffff803`d9be5426 488d05a345d8ff  lea     rax,[nt!KiSchedulerApc (fffff803`d99699d0)]
fffff803`d9be542d 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9be5432 488d05876ed6ff  lea     rax,[nt!EmpCheckErrataList (fffff803`d994c2c0)]
fffff803`d9be5439 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9be543e 4c8d0d7b6ed6ff  lea     r9,[nt!EmpCheckErrataList (fffff803`d994c2c0)]
fffff803`d9be5445 4533c0          xor     r8d,r8d
fffff803`d9be5448 488bd7          mov     rdx,rdi
fffff803`d9be544b e80cf8d6ff      call    nt!KeInitializeApc (fffff803`d9954c5c)
fffff803`d9be5450 488d8fe0020000  lea     rcx,[rdi+2E0h]
fffff803`d9be5457 448ac3          mov     r8b,bl
fffff803`d9be545a 33d2            xor     edx,edx
fffff803`d9be545c e82fead4ff      call    nt!KeInitializeEvent (fffff803`d9933e90)
fffff803`d9be5461 488d9f00010000  lea     rbx,[rdi+100h]
fffff803`d9be5468 33d2            xor     edx,edx
fffff803`d9be546a 488bcb          mov     rcx,rbx
fffff803`d9be546d e83e71d5ff      call    nt!KeInitializeTimerEx (fffff803`d993c5b0)
fffff803`d9be5472 4c8b1d1793ffff  mov     r11,qword ptr [nt!KiWaitAlways (fffff803`d9bde790)]
fffff803`d9be5479 490fcb          bswap   r11
fffff803`d9be547c 4c33db          xor     r11,rbx
fffff803`d9be547f 488b05a290ffff  mov     rax,qword ptr [nt!KiWaitNever (fffff803`d9bde528)]
fffff803`d9be5486 8bc8            mov     ecx,eax
fffff803`d9be5488 49d3cb          ror     r11,cl
fffff803`d9be548b 4c33d8          xor     r11,rax
fffff803`d9be548e 4c895b30        mov     qword ptr [rbx+30h],r11
fffff803`d9be5492 488d87d0010000  lea     rax,[rdi+1D0h]
fffff803`d9be5499 c7401001020201  mov     dword ptr [rax+10h],1020201h
fffff803`d9be54a0 ba01000000      mov     edx,1
fffff803`d9be54a5 4883c308        add     rbx,8
fffff803`d9be54a9 488b0b          mov     rcx,qword ptr [rbx]
fffff803`d9be54ac 488908          mov     qword ptr [rax],rcx
fffff803`d9be54af 48895808        mov     qword ptr [rax+8],rbx
fffff803`d9be54b3 48395908        cmp     qword ptr [rcx+8],rbx
fffff803`d9be54b7 0f8553300100    jne     nt! ?? ::OKHAJAOM::`string'+0x1c0 (fffff803`d9bf8510)

nt!KeInitThread+0x18d:
fffff803`d9be54bd 48894108        mov     qword ptr [rcx+8],rax
fffff803`d9be54c1 488903          mov     qword ptr [rbx],rax
fffff803`d9be54c4 488b8424a0000000 mov     rax,qword ptr [rsp+0A0h]
fffff803`d9be54cc 488987f0000000  mov     qword ptr [rdi+0F0h],rax
fffff803`d9be54d3 c68424a800000000 mov     byte ptr [rsp+0A8h],0
fffff803`d9be54db 4885f6          test    rsi,rsi
fffff803`d9be54de 754f            jne     nt!KeInitThread+0x1ff (fffff803`d9be552f)

nt!KeInitThread+0x1b0:
fffff803`d9be54e0 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9be54e9 0fb78840020000  movzx   ecx,word ptr [rax+240h]
fffff803`d9be54f0 8b8424b0000000  mov     eax,dword ptr [rsp+0B0h]
fffff803`d9be54f7 85c0            test    eax,eax
fffff803`d9be54f9 0f85b2000000    jne     nt!KeInitThread+0x281 (fffff803`d9be55b1)

nt!KeInitThread+0x1cf:
fffff803`d9be54ff 0fb7c1          movzx   eax,cx
fffff803`d9be5502 410fb7844608020000 movzx eax,word ptr [r14+rax*2+208h]

nt!KeInitThread+0x1db:
fffff803`d9be550b 4c8bc7          mov     r8,rdi
fffff803`d9be550e 0fb7d0          movzx   edx,ax
fffff803`d9be5511 b908000000      mov     ecx,8
fffff803`d9be5516 e82531d5ff      call    nt!MmCreateKernelStack (fffff803`d9938640)
fffff803`d9be551b 488bf0          mov     rsi,rax
fffff803`d9be551e 4885c0          test    rax,rax
fffff803`d9be5521 0f84f02f0100    je      nt! ?? ::OKHAJAOM::`string'+0x1c7 (fffff803`d9bf8517)

nt!KeInitThread+0x1f7:
fffff803`d9be5527 c68424a800000001 mov     byte ptr [rsp+0A8h],1

nt!KeInitThread+0x1ff:
fffff803`d9be552f 48897728        mov     qword ptr [rdi+28h],rsi
fffff803`d9be5533 48897738        mov     qword ptr [rdi+38h],rsi
fffff803`d9be5537 8b05ef8bffff    mov     eax,dword ptr [nt!KeKernelStackSize (fffff803`d9bde12c)]
fffff803`d9be553d 482bf0          sub     rsi,rax
fffff803`d9be5540 48897730        mov     qword ptr [rdi+30h],rsi
fffff803`d9be5544 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`d9be5549 4c8b8c2490000000 mov     r9,qword ptr [rsp+90h]
fffff803`d9be5551 4d8bc4          mov     r8,r12
fffff803`d9be5554 498bd5          mov     rdx,r13
fffff803`d9be5557 488bcf          mov     rcx,rdi
fffff803`d9be555a e87920d8ff      call    nt!KiInitializeContextThread (fffff803`d99675d8)
fffff803`d9be555f eb28            jmp     nt!KeInitThread+0x259 (fffff803`d9be5589)

nt!KeInitThread+0x259:
fffff803`d9be5589 33c0            xor     eax,eax

nt!KeInitThread+0x25b:
fffff803`d9be558b 4c8d5c2440      lea     r11,[rsp+40h]
fffff803`d9be5590 498b5b38        mov     rbx,qword ptr [r11+38h]
fffff803`d9be5594 498b7340        mov     rsi,qword ptr [r11+40h]
fffff803`d9be5598 498be3          mov     rsp,r11
fffff803`d9be559b 415f            pop     r15
fffff803`d9be559d 415e            pop     r14
fffff803`d9be559f 415d            pop     r13
fffff803`d9be55a1 415c            pop     r12
fffff803`d9be55a3 5f              pop     rdi
fffff803`d9be55a4 c3              ret

nt!KeInitThread+0x275:
fffff803`d9be55a5 0fbae80c        bts     eax,0Ch
fffff803`d9be55a9 894774          mov     dword ptr [rdi+74h],eax
fffff803`d9be55ac e964feffff      jmp     nt!KeInitThread+0xe5 (fffff803`d9be5415)

nt!KeInitThread+0x281:
fffff803`d9be55b1 662bc2          sub     ax,dx
fffff803`d9be55b4 e952ffffff      jmp     nt!KeInitThread+0x1db (fffff803`d9be550b)

nt! ?? ::OKHAJAOM::`string'+0x1c0:
fffff803`d9bf8510 b903000000      mov     ecx,3
fffff803`d9bf8515 cd29            int     29h

nt! ?? ::OKHAJAOM::`string'+0x1c7:
fffff803`d9bf8517 b89a0000c0      mov     eax,0C000009Ah
fffff803`d9bf851c e96ad0feff      jmp     nt!KeInitThread+0x25b (fffff803`d9be558b)
