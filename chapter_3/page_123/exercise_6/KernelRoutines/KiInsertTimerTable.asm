nt!KiInsertTimerTable:
fffff803`21cf45a0 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21cf45a5 55              push    rbp
fffff803`21cf45a6 56              push    rsi
fffff803`21cf45a7 57              push    rdi
fffff803`21cf45a8 4154            push    r12
fffff803`21cf45aa 4155            push    r13
fffff803`21cf45ac 4156            push    r14
fffff803`21cf45ae 4157            push    r15
fffff803`21cf45b0 4883ec20        sub     rsp,20h
fffff803`21cf45b4 488bf2          mov     rsi,rdx
fffff803`21cf45b7 33db            xor     ebx,ebx
fffff803`21cf45b9 458be9          mov     r13d,r9d
fffff803`21cf45bc 488bd1          mov     rdx,rcx
fffff803`21cf45bf 395e3c          cmp     dword ptr [rsi+3Ch],ebx
fffff803`21cf45c2 7503            jne     nt!KiInsertTimerTable+0x27 (fffff803`21cf45c7)

nt!KiInsertTimerTable+0x24:
fffff803`21cf45c4 895e04          mov     dword ptr [rsi+4],ebx

nt!KiInsertTimerTable+0x27:
fffff803`21cf45c7 391d235b2d00    cmp     dword ptr [nt!KiSerializeTimerExpiration (fffff803`21fca0f0)],ebx
fffff803`21cf45cd 488b6e18        mov     rbp,qword ptr [rsi+18h]
fffff803`21cf45d1 8bc3            mov     eax,ebx
fffff803`21cf45d3 4c8d1526daf7ff  lea     r10,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21cf45da 0f8413010000    je      nt!KiInsertTimerTable+0x153 (fffff803`21cf46f3)

nt!KiInsertTimerTable+0x40:
fffff803`21cf45e0 498d7d10        lea     rdi,[r13+10h]
fffff803`21cf45e4 894638          mov     dword ptr [rsi+38h],eax
fffff803`21cf45e7 4d8ba4c2808c3500 mov     r12,qword ptr [r10+rax*8+358C80h]
fffff803`21cf45ef 48c1e705        shl     rdi,5
fffff803`21cf45f3 4981c4002e0000  add     r12,2E00h
fffff803`21cf45fa 448bfb          mov     r15d,ebx
fffff803`21cf45fd 4c8d7708        lea     r14,[rdi+8]
fffff803`21cf4601 4d03f4          add     r14,r12

nt!KiInsertTimerTable+0x64:
fffff803`21cf4604 f04a0fba2c2700  lock bts qword ptr [rdi+r12],0
fffff803`21cf460b 0f821f020000    jb      nt!KiInsertTimerTable+0x290 (fffff803`21cf4830)

nt!KiInsertTimerTable+0x71:
fffff803`21cf4611 4c8d7f08        lea     r15,[rdi+8]
fffff803`21cf4615 4d03fc          add     r15,r12
fffff803`21cf4618 498b17          mov     rdx,qword ptr [r15]
fffff803`21cf461b 493bd7          cmp     rdx,r15
fffff803`21cf461e 0f85b5000000    jne     nt!KiInsertTimerTable+0x139 (fffff803`21cf46d9)

nt!KiInsertTimerTable+0x84:
fffff803`21cf4624 bb06000000      mov     ebx,6

nt!KiInsertTimerTable+0x89:
fffff803`21cf4629 498b06          mov     rax,qword ptr [r14]
fffff803`21cf462c 4883c620        add     rsi,20h
fffff803`21cf4630 488906          mov     qword ptr [rsi],rax
fffff803`21cf4633 4c897608        mov     qword ptr [rsi+8],r14
fffff803`21cf4637 4c397008        cmp     qword ptr [rax+8],r14
fffff803`21cf463b 0f851a9c1500    jne     nt! ?? ::FNODOBFM::`string'+0x17f61 (fffff803`21e4e25b)

nt!KiInsertTimerTable+0xa1:
fffff803`21cf4641 48897008        mov     qword ptr [rax+8],rsi
fffff803`21cf4645 498936          mov     qword ptr [r14],rsi
fffff803`21cf4648 f6c302          test    bl,2
fffff803`21cf464b 7466            je      nt!KiInsertTimerTable+0x113 (fffff803`21cf46b3)

nt!KiInsertTimerTable+0xad:
fffff803`21cf464d 4a896c2718      mov     qword ptr [rdi+r12+18h],rbp
fffff803`21cf4652 f0830c2400      lock or dword ptr [rsp],0
fffff803`21cf4657 49b80800000080f7ffff mov r8,0FFFFF78000000008h
fffff803`21cf4661 4c8d1598d9f7ff  lea     r10,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21cf4668 4d8bcd          mov     r9,r13
fffff803`21cf466b 4d8b00          mov     r8,qword ptr [r8]
fffff803`21cf466e f6c304          test    bl,4
fffff803`21cf4671 7437            je      nt!KiInsertTimerTable+0x10a (fffff803`21cf46aa)

nt!KiInsertTimerTable+0xd3:
fffff803`21cf4673 410fb7842458d8ffff movzx eax,word ptr [r12-27A8h]
fffff803`21cf467c 4803c0          add     rax,rax
fffff803`21cf467f 833d6a5a2d0000  cmp     dword ptr [nt!KiSerializeTimerExpiration (fffff803`21fca0f0)],0
fffff803`21cf4686 498b8cc288a03500 mov     rcx,qword ptr [r10+rax*8+35A088h]
fffff803`21cf468e 498bc5          mov     rax,r13
fffff803`21cf4691 757e            jne     nt!KiInsertTimerTable+0x171 (fffff803`21cf4711)

nt!KiInsertTimerTable+0xf3:
fffff803`21cf4693 410fb6942468d8ffff movzx edx,byte ptr [r12-2798h]
fffff803`21cf469c 48c1e006        shl     rax,6
fffff803`21cf46a0 4803c8          add     rcx,rax

nt!KiInsertTimerTable+0x103:
fffff803`21cf46a3 8bc2            mov     eax,edx
fffff803`21cf46a5 f0480fab01      lock bts qword ptr [rcx],rax

nt!KiInsertTimerTable+0x10a:
fffff803`21cf46aa 493be8          cmp     rbp,r8
fffff803`21cf46ad 0f86ec000000    jbe     nt!KiInsertTimerTable+0x1ff (fffff803`21cf479f)

nt!KiInsertTimerTable+0x113:
fffff803`21cf46b3 f04a83242700    lock and qword ptr [rdi+r12],0
fffff803`21cf46b9 f6c301          test    bl,1
fffff803`21cf46bc 0f854d010000    jne     nt!KiInsertTimerTable+0x26f (fffff803`21cf480f)

nt!KiInsertTimerTable+0x122:
fffff803`21cf46c2 b001            mov     al,1

nt!KiInsertTimerTable+0x124:
fffff803`21cf46c4 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff803`21cf46c9 4883c420        add     rsp,20h
fffff803`21cf46cd 415f            pop     r15
fffff803`21cf46cf 415e            pop     r14
fffff803`21cf46d1 415d            pop     r13
fffff803`21cf46d3 415c            pop     r12
fffff803`21cf46d5 5f              pop     rdi
fffff803`21cf46d6 5e              pop     rsi
fffff803`21cf46d7 5d              pop     rbp
fffff803`21cf46d8 c3              ret

nt!KiInsertTimerTable+0x139:
fffff803`21cf46d9 4c8b42f8        mov     r8,qword ptr [rdx-8]
fffff803`21cf46dd 493be8          cmp     rbp,r8
fffff803`21cf46e0 773f            ja      nt!KiInsertTimerTable+0x181 (fffff803`21cf4721)

nt!KiInsertTimerTable+0x142:
fffff803`21cf46e2 7305            jae     nt!KiInsertTimerTable+0x149 (fffff803`21cf46e9)

nt!KiInsertTimerTable+0x144:
fffff803`21cf46e4 bb01000000      mov     ebx,1

nt!KiInsertTimerTable+0x149:
fffff803`21cf46e9 83e301          and     ebx,1
fffff803`21cf46ec 03db            add     ebx,ebx
fffff803`21cf46ee e936ffffff      jmp     nt!KiInsertTimerTable+0x89 (fffff803`21cf4629)

nt!KiInsertTimerTable+0x153:
fffff803`21cf46f3 4d85c0          test    r8,r8
fffff803`21cf46f6 745a            je      nt!KiInsertTimerTable+0x1b2 (fffff803`21cf4752)

nt!KiInsertTimerTable+0x158:
fffff803`21cf46f8 410fb74002      movzx   eax,word ptr [r8+2]
fffff803`21cf46fd b980020000      mov     ecx,280h
fffff803`21cf4702 663bc1          cmp     ax,cx
fffff803`21cf4705 724b            jb      nt!KiInsertTimerTable+0x1b2 (fffff803`21cf4752)

nt!KiInsertTimerTable+0x167:
fffff803`21cf4707 0fb7c0          movzx   eax,ax
fffff803`21cf470a 2bc1            sub     eax,ecx
fffff803`21cf470c e9cffeffff      jmp     nt!KiInsertTimerTable+0x40 (fffff803`21cf45e0)

nt!KiInsertTimerTable+0x171:
fffff803`21cf4711 418bd5          mov     edx,r13d
fffff803`21cf4714 83e23f          and     edx,3Fh
fffff803`21cf4717 48c1e806        shr     rax,6
fffff803`21cf471b 488d0cc1        lea     rcx,[rcx+rax*8]
fffff803`21cf471f eb82            jmp     nt!KiInsertTimerTable+0x103 (fffff803`21cf46a3)

nt!KiInsertTimerTable+0x181:
fffff803`21cf4721 8b0ded582d00    mov     ecx,dword ptr [nt!KeMaximumIncrement (fffff803`21fca014)]
fffff803`21cf4727 488bc5          mov     rax,rbp
fffff803`21cf472a 48c1e902        shr     rcx,2
fffff803`21cf472e 492bc0          sub     rax,r8
fffff803`21cf4731 483bc1          cmp     rax,rcx
fffff803`21cf4734 763f            jbe     nt!KiInsertTimerTable+0x1d5 (fffff803`21cf4775)

nt!KiInsertTimerTable+0x196:
fffff803`21cf4736 4d8b7708        mov     r14,qword ptr [r15+8]

nt!KiInsertTimerTable+0x19a:
fffff803`21cf473a 493b6ef8        cmp     rbp,qword ptr [r14-8]
fffff803`21cf473e 0f83e5feffff    jae     nt!KiInsertTimerTable+0x89 (fffff803`21cf4629)

nt!KiInsertTimerTable+0x1a4:
fffff803`21cf4744 4d8b7608        mov     r14,qword ptr [r14+8]
fffff803`21cf4748 4d3bf7          cmp     r14,r15
fffff803`21cf474b 75ed            jne     nt!KiInsertTimerTable+0x19a (fffff803`21cf473a)

nt!KiInsertTimerTable+0x1ad:
fffff803`21cf474d e9d7feffff      jmp     nt!KiInsertTimerTable+0x89 (fffff803`21cf4629)

nt!KiInsertTimerTable+0x1b2:
fffff803`21cf4752 4c8b8238530000  mov     r8,qword ptr [rdx+5338h]
fffff803`21cf4759 4d8b8890000000  mov     r9,qword ptr [r8+90h]
fffff803`21cf4760 4c858a60060000  test    qword ptr [rdx+660h],r9
fffff803`21cf4767 0f849b9a1500    je      nt! ?? ::FNODOBFM::`string'+0x17f0e (fffff803`21e4e208)

nt!KiInsertTimerTable+0x1cd:
fffff803`21cf476d 8b4224          mov     eax,dword ptr [rdx+24h]
fffff803`21cf4770 e96bfeffff      jmp     nt!KiInsertTimerTable+0x40 (fffff803`21cf45e0)

nt!KiInsertTimerTable+0x1d5:
fffff803`21cf4775 498b4f08        mov     rcx,qword ptr [r15+8]
fffff803`21cf4779 4c8bf2          mov     r14,rdx
fffff803`21cf477c 483bd1          cmp     rdx,rcx
fffff803`21cf477f 0f84a4feffff    je      nt!KiInsertTimerTable+0x89 (fffff803`21cf4629)

nt!KiInsertTimerTable+0x1e5:
fffff803`21cf4785 498b06          mov     rax,qword ptr [r14]
fffff803`21cf4788 483b68f8        cmp     rbp,qword ptr [rax-8]
fffff803`21cf478c 0f8697feffff    jbe     nt!KiInsertTimerTable+0x89 (fffff803`21cf4629)

nt!KiInsertTimerTable+0x1f2:
fffff803`21cf4792 4c8bf0          mov     r14,rax
fffff803`21cf4795 483bc1          cmp     rax,rcx
fffff803`21cf4798 75eb            jne     nt!KiInsertTimerTable+0x1e5 (fffff803`21cf4785)

nt!KiInsertTimerTable+0x1fa:
fffff803`21cf479a e98afeffff      jmp     nt!KiInsertTimerTable+0x89 (fffff803`21cf4629)

nt!KiInsertTimerTable+0x1ff:
fffff803`21cf479f 488b0e          mov     rcx,qword ptr [rsi]
fffff803`21cf47a2 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`21cf47a6 83cb01          or      ebx,1
fffff803`21cf47a9 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`21cf47ad 0f85af9a1500    jne     nt! ?? ::FNODOBFM::`string'+0x17f68 (fffff803`21e4e262)

nt!KiInsertTimerTable+0x213:
fffff803`21cf47b3 483930          cmp     qword ptr [rax],rsi
fffff803`21cf47b6 0f85a69a1500    jne     nt! ?? ::FNODOBFM::`string'+0x17f68 (fffff803`21e4e262)

nt!KiInsertTimerTable+0x21c:
fffff803`21cf47bc 488908          mov     qword ptr [rax],rcx
fffff803`21cf47bf 48894108        mov     qword ptr [rcx+8],rax
fffff803`21cf47c3 483bc1          cmp     rax,rcx
fffff803`21cf47c6 0f85e7feffff    jne     nt!KiInsertTimerTable+0x113 (fffff803`21cf46b3)

nt!KiInsertTimerTable+0x22c:
fffff803`21cf47cc 42c744271cffffffff mov   dword ptr [rdi+r12+1Ch],0FFFFFFFFh
fffff803`21cf47d5 410fb7842458d8ffff movzx eax,word ptr [r12-27A8h]
fffff803`21cf47de 4803c0          add     rax,rax
fffff803`21cf47e1 833d08592d0000  cmp     dword ptr [nt!KiSerializeTimerExpiration (fffff803`21fca0f0)],0
fffff803`21cf47e8 498b8cc288a03500 mov     rcx,qword ptr [r10+rax*8+35A088h]
fffff803`21cf47f0 7524            jne     nt!KiInsertTimerTable+0x276 (fffff803`21cf4816)

nt!KiInsertTimerTable+0x252:
fffff803`21cf47f2 450fb6ac2468d8ffff movzx r13d,byte ptr [r12-2798h]
fffff803`21cf47fb 49c1e106        shl     r9,6
fffff803`21cf47ff 4903c9          add     rcx,r9
fffff803`21cf4802 418bc5          mov     eax,r13d
fffff803`21cf4805 f0480fb301      lock btr qword ptr [rcx],rax
fffff803`21cf480a e9a4feffff      jmp     nt!KiInsertTimerTable+0x113 (fffff803`21cf46b3)

nt!KiInsertTimerTable+0x26f:
fffff803`21cf480f 33c0            xor     eax,eax
fffff803`21cf4811 e9aefeffff      jmp     nt!KiInsertTimerTable+0x124 (fffff803`21cf46c4)

nt!KiInsertTimerTable+0x276:
fffff803`21cf4816 49c1e906        shr     r9,6
fffff803`21cf481a 4183e53f        and     r13d,3Fh
fffff803`21cf481e 4a8d0cc9        lea     rcx,[rcx+r9*8]
fffff803`21cf4822 418bc5          mov     eax,r13d
fffff803`21cf4825 f0480fb301      lock btr qword ptr [rcx],rax
fffff803`21cf482a e984feffff      jmp     nt!KiInsertTimerTable+0x113 (fffff803`21cf46b3)

nt!KiInsertTimerTable+0x290:
fffff803`21cf4830 41ffc7          inc     r15d
fffff803`21cf4833 44853d125c2d00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r15d
fffff803`21cf483a 0f84ff991500    je      nt! ?? ::FNODOBFM::`string'+0x17f45 (fffff803`21e4e23f)

nt!KiInsertTimerTable+0x2a0:
fffff803`21cf4840 f390            pause

nt!KiInsertTimerTable+0x2a2:
fffff803`21cf4842 4a8b0427        mov     rax,qword ptr [rdi+r12]
fffff803`21cf4846 4885c0          test    rax,rax
fffff803`21cf4849 0f84b5fdffff    je      nt!KiInsertTimerTable+0x64 (fffff803`21cf4604)

nt!KiInsertTimerTable+0x2af:
fffff803`21cf484f ebdf            jmp     nt!KiInsertTimerTable+0x290 (fffff803`21cf4830)

nt!KiAdjustTimerDueTimes+0x43:
fffff803`21da6593 4c8d7308        lea     r14,[rbx+8]

nt!KiAdjustTimerDueTimes+0x47:
fffff803`21da6597 f0480fba2b00    lock bts qword ptr [rbx],0
fffff803`21da659d 0f82cd7c0a00    jb      nt! ?? ::FNODOBFM::`string'+0x17f70 (fffff803`21e4e270)

nt!KiAdjustTimerDueTimes+0x53:
fffff803`21da65a3 4d8b06          mov     r8,qword ptr [r14]

nt!KiAdjustTimerDueTimes+0x56:
fffff803`21da65a6 4d3bc6          cmp     r8,r14
fffff803`21da65a9 7519            jne     nt!KiAdjustTimerDueTimes+0x74 (fffff803`21da65c4)

nt!KiAdjustTimerDueTimes+0x5b:
fffff803`21da65ab 33f6            xor     esi,esi
fffff803`21da65ad f0482133        lock and qword ptr [rbx],rsi
fffff803`21da65b1 ffc7            inc     edi
fffff803`21da65b3 4883c320        add     rbx,20h
fffff803`21da65b7 81ff00010000    cmp     edi,100h
fffff803`21da65bd 72d4            jb      nt!KiAdjustTimerDueTimes+0x43 (fffff803`21da6593)

nt!KiAdjustTimerDueTimes+0x6f:
fffff803`21da65bf e9c2000000      jmp     nt!KiAdjustTimerDueTimes+0x136 (fffff803`21da6686)

nt!KiAdjustTimerDueTimes+0x74:
fffff803`21da65c4 418a4d00        mov     cl,byte ptr [r13]
fffff803`21da65c8 4d8d48e0        lea     r9,[r8-20h]
fffff803`21da65cc 4d8b00          mov     r8,qword ptr [r8]
fffff803`21da65cf 418a5101        mov     dl,byte ptr [r9+1]
fffff803`21da65d3 8ac2            mov     al,dl
fffff803`21da65d5 2401            and     al,1
fffff803`21da65d7 3ac1            cmp     al,cl
fffff803`21da65d9 74cb            je      nt!KiAdjustTimerDueTimes+0x56 (fffff803`21da65a6)

nt!KiAdjustTimerDueTimes+0x8b:
fffff803`21da65db 84c9            test    cl,cl
fffff803`21da65dd 7405            je      nt!KiAdjustTimerDueTimes+0x94 (fffff803`21da65e4)

nt!KiAdjustTimerDueTimes+0x8f:
fffff803`21da65df f6c202          test    dl,2
fffff803`21da65e2 75c2            jne     nt!KiAdjustTimerDueTimes+0x56 (fffff803`21da65a6)

nt!KiAdjustTimerDueTimes+0x94:
fffff803`21da65e4 498d4920        lea     rcx,[r9+20h]
fffff803`21da65e8 488b11          mov     rdx,qword ptr [rcx]
fffff803`21da65eb 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`21da65ef 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`21da65f3 0f85c27c0a00    jne     nt! ?? ::FNODOBFM::`string'+0x17fbb (fffff803`21e4e2bb)

nt!KiAdjustTimerDueTimes+0xa9:
fffff803`21da65f9 483908          cmp     qword ptr [rax],rcx
fffff803`21da65fc 0f85b97c0a00    jne     nt! ?? ::FNODOBFM::`string'+0x17fbb (fffff803`21e4e2bb)

nt!KiAdjustTimerDueTimes+0xb2:
fffff803`21da6602 488910          mov     qword ptr [rax],rdx
fffff803`21da6605 48894208        mov     qword ptr [rdx+8],rax
fffff803`21da6609 483bc2          cmp     rax,rdx
fffff803`21da660c 7428            je      nt!KiAdjustTimerDueTimes+0xe6 (fffff803`21da6636)

nt!KiAdjustTimerDueTimes+0xbe:
fffff803`21da660e 488b45d8        mov     rax,qword ptr [rbp-28h]
fffff803`21da6612 488d55d0        lea     rdx,[rbp-30h]
fffff803`21da6616 488911          mov     qword ptr [rcx],rdx
fffff803`21da6619 488d55d0        lea     rdx,[rbp-30h]
fffff803`21da661d 48894108        mov     qword ptr [rcx+8],rax
fffff803`21da6621 483910          cmp     qword ptr [rax],rdx
fffff803`21da6624 0f858a7c0a00    jne     nt! ?? ::FNODOBFM::`string'+0x17fb4 (fffff803`21e4e2b4)

nt!KiAdjustTimerDueTimes+0xda:
fffff803`21da662a 488908          mov     qword ptr [rax],rcx
fffff803`21da662d 48894dd8        mov     qword ptr [rbp-28h],rcx
fffff803`21da6631 e970ffffff      jmp     nt!KiAdjustTimerDueTimes+0x56 (fffff803`21da65a6)

nt!KiAdjustTimerDueTimes+0xe6:
fffff803`21da6636 834b1cff        or      dword ptr [rbx+1Ch],0FFFFFFFFh
fffff803`21da663a 410fb78758d8ffff movzx   eax,word ptr [r15-27A8h]
fffff803`21da6642 488d153f5a2200  lea     rdx,[nt!KiPendingTimerBitmaps+0x8 (fffff803`21fcc088)]
fffff803`21da6649 4803c0          add     rax,rax
fffff803`21da664c 833d9d3a220000  cmp     dword ptr [nt!KiSerializeTimerExpiration (fffff803`21fca0f0)],0
fffff803`21da6653 488b14c2        mov     rdx,qword ptr [rdx+rax*8]
fffff803`21da6657 8bc7            mov     eax,edi
fffff803`21da6659 0f84417c0a00    je      nt! ?? ::FNODOBFM::`string'+0x17fa0 (fffff803`21e4e2a0)

nt!KiAdjustTimerDueTimes+0x10f:
fffff803`21da665f 448bcf          mov     r9d,edi
fffff803`21da6662 4183e13f        and     r9d,3Fh
fffff803`21da6666 48c1e806        shr     rax,6
fffff803`21da666a 488d14c2        lea     rdx,[rdx+rax*8]

nt!KiAdjustTimerDueTimes+0x11e:
fffff803`21da666e 418bc1          mov     eax,r9d
fffff803`21da6671 f0480fb302      lock btr qword ptr [rdx],rax
fffff803`21da6676 eb96            jmp     nt!KiAdjustTimerDueTimes+0xbe (fffff803`21da660e)

nt!KiAdjustTimerDueTimes+0x128:
fffff803`21da6678 4533c0          xor     r8d,r8d
fffff803`21da667b 488bd3          mov     rdx,rbx
fffff803`21da667e 498bcc          mov     rcx,r12
fffff803`21da6681 e84ad9f4ff      call    nt!KiTimerWaitTest (fffff803`21cf3fd0)

nt!KiAdjustTimerDueTimes+0x136:
fffff803`21da6686 488b45d0        mov     rax,qword ptr [rbp-30h]
fffff803`21da668a 488d4dd0        lea     rcx,[rbp-30h]
fffff803`21da668e 483bc1          cmp     rax,rcx
fffff803`21da6691 0f84ba000000    je      nt!KiAdjustTimerDueTimes+0x201 (fffff803`21da6751)

nt!KiAdjustTimerDueTimes+0x147:
fffff803`21da6697 488d58e0        lea     rbx,[rax-20h]
fffff803`21da669b 488d4320        lea     rax,[rbx+20h]
fffff803`21da669f 488b10          mov     rdx,qword ptr [rax]
fffff803`21da66a2 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21da66a6 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21da66aa 0f85327c0a00    jne     nt! ?? ::FNODOBFM::`string'+0x17fe2 (fffff803`21e4e2e2)

nt!KiAdjustTimerDueTimes+0x160:
fffff803`21da66b0 483901          cmp     qword ptr [rcx],rax
fffff803`21da66b3 0f85297c0a00    jne     nt! ?? ::FNODOBFM::`string'+0x17fe2 (fffff803`21e4e2e2)

nt!KiAdjustTimerDueTimes+0x169:
fffff803`21da66b9 488911          mov     qword ptr [rcx],rdx
fffff803`21da66bc 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21da66c0 498b4d18        mov     rcx,qword ptr [r13+18h]
fffff803`21da66c4 488b5318        mov     rdx,qword ptr [rbx+18h]
fffff803`21da66c8 488bc2          mov     rax,rdx
fffff803`21da66cb 482bc1          sub     rax,rcx
fffff803`21da66ce 4885c9          test    rcx,rcx
fffff803`21da66d1 0f89eb7b0a00    jns     nt! ?? ::FNODOBFM::`string'+0x17fc2 (fffff803`21e4e2c2)

nt!KiAdjustTimerDueTimes+0x187:
fffff803`21da66d7 483bc2          cmp     rax,rdx
fffff803`21da66da 0f82dd000000    jb      nt!KiAdjustTimerDueTimes+0x26d (fffff803`21da67bd)

nt!KiAdjustTimerDueTimes+0x190:
fffff803`21da66e0 488b0d413e2200  mov     rcx,qword ptr [nt!KiWaitNever (fffff803`21fca528)]
fffff803`21da66e7 488b7b30        mov     rdi,qword ptr [rbx+30h]
fffff803`21da66eb 0fba2b07        bts     dword ptr [rbx],7
fffff803`21da66ef 4833f9          xor     rdi,rcx
fffff803`21da66f2 48894318        mov     qword ptr [rbx+18h],rax
fffff803`21da66f6 488bd3          mov     rdx,rbx
fffff803`21da66f9 48d3c7          rol     rdi,cl
fffff803`21da66fc 488bc8          mov     rcx,rax
fffff803`21da66ff 8b03            mov     eax,dword ptr [rbx]
fffff803`21da6701 48c1e912        shr     rcx,12h
fffff803`21da6705 8945e0          mov     dword ptr [rbp-20h],eax
fffff803`21da6708 4833fb          xor     rdi,rbx
fffff803`21da670b 440fb6c9        movzx   r9d,cl
fffff803`21da670f 480fcf          bswap   rdi
fffff803`21da6712 498bcc          mov     rcx,r12
fffff803`21da6715 48333d74402200  xor     rdi,qword ptr [nt!KiWaitAlways (fffff803`21fca790)]
fffff803`21da671c 44884de2        mov     byte ptr [rbp-1Eh],r9b
fffff803`21da6720 8b45e0          mov     eax,dword ptr [rbp-20h]
fffff803`21da6723 4c8bc7          mov     r8,rdi
fffff803`21da6726 8903            mov     dword ptr [rbx],eax
fffff803`21da6728 e873def4ff      call    nt!KiInsertTimerTable (fffff803`21cf45a0)
fffff803`21da672d 84c0            test    al,al
fffff803`21da672f 0f8443ffffff    je      nt!KiAdjustTimerDueTimes+0x128 (fffff803`21da6678)

nt!KiAdjustTimerDueTimes+0x1e5:
fffff803`21da6735 f7054939220000000200 test dword ptr [nt!PerfGlobalGroupMask+0x8 (fffff803`21fca088)],20000h
fffff803`21da673f 0f85897b0a00    jne     nt! ?? ::FNODOBFM::`string'+0x17fce (fffff803`21e4e2ce)

nt!KiAdjustTimerDueTimes+0x1f5:
fffff803`21da6745 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`21da674c e935ffffff      jmp     nt!KiAdjustTimerDueTimes+0x136 (fffff803`21da6686)

nt!KiAdjustTimerDueTimes+0x201:
fffff803`21da6751 4138742421      cmp     byte ptr [r12+21h],sil
fffff803`21da6756 7440            je      nt!KiAdjustTimerDueTimes+0x248 (fffff803`21da6798)

nt!KiAdjustTimerDueTimes+0x208:
fffff803`21da6758 f7052239220000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21da6762 7562            jne     nt!KiAdjustTimerDueTimes+0x276 (fffff803`21da67c6)

nt!KiAdjustTimerDueTimes+0x214:
fffff803`21da6764 f0480fba2d9af5190000 lock bts qword ptr [nt!KiIRTimerLock (fffff803`21f45d08)],0
fffff803`21da676e 7264            jb      nt!KiAdjustTimerDueTimes+0x284 (fffff803`21da67d4)

nt!KiAdjustTimerDueTimes+0x220:
fffff803`21da6770 488b1dc1181500  mov     rbx,qword ptr [nt!KiIRTimerTree+0x8 (fffff803`21ef8038)]
fffff803`21da6777 4885db          test    rbx,rbx
fffff803`21da677a 0f85697b0a00    jne     nt! ?? ::FNODOBFM::`string'+0x17fe9 (fffff803`21e4e2e9)

nt!KiAdjustTimerDueTimes+0x230:
fffff803`21da6780 f705fa38220000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21da678a 0f852b7c0a00    jne     nt! ?? ::FNODOBFM::`string'+0x180bf (fffff803`21e4e3bb)

nt!KiAdjustTimerDueTimes+0x240:
fffff803`21da6790 f048213570f51900 lock and qword ptr [nt!KiIRTimerLock (fffff803`21f45d08)],rsi

nt!KiAdjustTimerDueTimes+0x248:
fffff803`21da6798 4c8d5c2450      lea     r11,[rsp+50h]
fffff803`21da679d 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff803`21da67a1 498b7338        mov     rsi,qword ptr [r11+38h]
fffff803`21da67a5 498b7b40        mov     rdi,qword ptr [r11+40h]
fffff803`21da67a9 498be3          mov     rsp,r11
fffff803`21da67ac 415f            pop     r15
fffff803`21da67ae 415e            pop     r14
fffff803`21da67b0 415d            pop     r13
fffff803`21da67b2 415c            pop     r12
fffff803`21da67b4 5d              pop     rbp
fffff803`21da67b5 c3              ret

nt!KiAdjustTimerDueTimes+0x266:
fffff803`21da67b6 f390            pause
fffff803`21da67b8 e9d67a0a00      jmp     nt! ?? ::FNODOBFM::`string'+0x17f93 (fffff803`21e4e293)

nt!KiAdjustTimerDueTimes+0x26d:
fffff803`21da67bd 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`21da67c1 e91affffff      jmp     nt!KiAdjustTimerDueTimes+0x190 (fffff803`21da66e0)

nt!KiAdjustTimerDueTimes+0x276:
fffff803`21da67c6 488d0d3bf51900  lea     rcx,[nt!KiIRTimerLock (fffff803`21f45d08)]
fffff803`21da67cd e8ee5c0400      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21da67d2 eb9c            jmp     nt!KiAdjustTimerDueTimes+0x220 (fffff803`21da6770)

nt!KiAdjustTimerDueTimes+0x284:
fffff803`21da67d4 488d0d2df51900  lea     rcx,[nt!KiIRTimerLock (fffff803`21f45d08)]
fffff803`21da67db e8e06af0ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21da67e0 eb8e            jmp     nt!KiAdjustTimerDueTimes+0x220 (fffff803`21da6770)

nt!KiAdjustTimerDueTimes+0x292:
fffff803`21da67e2 41b001          mov     r8b,1
fffff803`21da67e5 e95c7b0a00      jmp     nt! ?? ::FNODOBFM::`string'+0x1804a (fffff803`21e4e346)

nt! ?? ::FNODOBFM::`string'+0x17f0e:
fffff803`21e4e208 0fb68a68060000  movzx   ecx,byte ptr [rdx+668h]
fffff803`21e4e20f 498b4050        mov     rax,qword ptr [r8+50h]
fffff803`21e4e213 4923c1          and     rax,r9
fffff803`21e4e216 48d3c8          ror     rax,cl
fffff803`21e4e219 480fbcc0        bsf     rax,rax
fffff803`21e4e21d 03c8            add     ecx,eax
fffff803`21e4e21f 0fb78258060000  movzx   eax,word ptr [rdx+658h]
fffff803`21e4e226 c1e006          shl     eax,6
fffff803`21e4e229 83e13f          and     ecx,3Fh
fffff803`21e4e22c 03c1            add     eax,ecx
fffff803`21e4e22e 894c2478        mov     dword ptr [rsp+78h],ecx
fffff803`21e4e232 418b848290b73500 mov     eax,dword ptr [r10+rax*4+35B790h]
fffff803`21e4e23a e9a163eaff      jmp     nt!KiInsertTimerTable+0x40 (fffff803`21cf45e0)

nt! ?? ::FNODOBFM::`string'+0x17f45:
fffff803`21e4e23f 8b052bbe1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4e245 a840            test    al,40h
fffff803`21e4e247 0f84f365eaff    je      nt!KiInsertTimerTable+0x2a0 (fffff803`21cf4840)

nt! ?? ::FNODOBFM::`string'+0x17f53:
fffff803`21e4e24d 418bcf          mov     ecx,r15d
fffff803`21e4e250 e86fd1f8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e4e255 90              nop
fffff803`21e4e256 e9e765eaff      jmp     nt!KiInsertTimerTable+0x2a2 (fffff803`21cf4842)

nt! ?? ::FNODOBFM::`string'+0x17f61:
fffff803`21e4e25b b903000000      mov     ecx,3
fffff803`21e4e260 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x17f68:
fffff803`21e4e262 b903000000      mov     ecx,3
fffff803`21e4e267 cd29            int     29h
fffff803`21e4e269 90              nop
fffff803`21e4e26a 90              nop
fffff803`21e4e26b 90              nop
fffff803`21e4e26c 90              nop
fffff803`21e4e26d 90              nop
fffff803`21e4e26e 90              nop
fffff803`21e4e26f 90              nop

nt! ?? ::FNODOBFM::`string'+0x17f70:
fffff803`21e4e270 ffc6            inc     esi
fffff803`21e4e272 8535d4c11700    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21e4e278 0f853885f5ff    jne     nt!KiAdjustTimerDueTimes+0x266 (fffff803`21da67b6)

nt! ?? ::FNODOBFM::`string'+0x17f7e:
fffff803`21e4e27e 8b05ecbd1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4e284 a840            test    al,40h
fffff803`21e4e286 0f842a85f5ff    je      nt!KiAdjustTimerDueTimes+0x266 (fffff803`21da67b6)

nt! ?? ::FNODOBFM::`string'+0x17f8c:
fffff803`21e4e28c 8bce            mov     ecx,esi
fffff803`21e4e28e e831d1f8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x17f93:
fffff803`21e4e293 488b03          mov     rax,qword ptr [rbx]
fffff803`21e4e296 4885c0          test    rax,rax
fffff803`21e4e299 75d5            jne     nt! ?? ::FNODOBFM::`string'+0x17f70 (fffff803`21e4e270)

nt! ?? ::FNODOBFM::`string'+0x17f9b:
fffff803`21e4e29b e9f782f5ff      jmp     nt!KiAdjustTimerDueTimes+0x47 (fffff803`21da6597)

nt! ?? ::FNODOBFM::`string'+0x17fa0:
fffff803`21e4e2a0 450fb68f68d8ffff movzx   r9d,byte ptr [r15-2798h]
fffff803`21e4e2a8 48c1e006        shl     rax,6
fffff803`21e4e2ac 4803d0          add     rdx,rax
fffff803`21e4e2af e9ba83f5ff      jmp     nt!KiAdjustTimerDueTimes+0x11e (fffff803`21da666e)

nt! ?? ::FNODOBFM::`string'+0x17fb4:
fffff803`21e4e2b4 b903000000      mov     ecx,3
fffff803`21e4e2b9 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x17fbb:
fffff803`21e4e2bb b903000000      mov     ecx,3
fffff803`21e4e2c0 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x17fc2:
fffff803`21e4e2c2 483bc2          cmp     rax,rdx
fffff803`21e4e2c5 480f47c6        cmova   rax,rsi
fffff803`21e4e2c9 e91284f5ff      jmp     nt!KiAdjustTimerDueTimes+0x190 (fffff803`21da66e0)

nt! ?? ::FNODOBFM::`string'+0x17fce:
fffff803`21e4e2ce 4533c0          xor     r8d,r8d
fffff803`21e4e2d1 488bd7          mov     rdx,rdi
fffff803`21e4e2d4 488bcb          mov     rcx,rbx
fffff803`21e4e2d7 e8c838faff      call    nt!KiTraceSetTimer (fffff803`21df1ba4)
fffff803`21e4e2dc 90              nop
fffff803`21e4e2dd e9a483f5ff      jmp     nt!KiAdjustTimerDueTimes+0x136 (fffff803`21da6686)

nt! ?? ::FNODOBFM::`string'+0x17fe2:
fffff803`21e4e2e2 b903000000      mov     ecx,3
fffff803`21e4e2e7 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x17fe9:
fffff803`21e4e2e9 418a4500        mov     al,byte ptr [r13]
fffff803`21e4e2ed 384361          cmp     byte ptr [rbx+61h],al
fffff803`21e4e2f0 7475            je      nt! ?? ::FNODOBFM::`string'+0x1806b (fffff803`21e4e367)

nt! ?? ::FNODOBFM::`string'+0x17ff6:
fffff803`21e4e2f2 498b4518        mov     rax,qword ptr [r13+18h]
fffff803`21e4e2f6 48294358        sub     qword ptr [rbx+58h],rax
fffff803`21e4e2fa 488b4358        mov     rax,qword ptr [rbx+58h]
fffff803`21e4e2fe 4883f8ff        cmp     rax,0FFFFFFFFFFFFFFFFh
fffff803`21e4e302 7507            jne     nt! ?? ::FNODOBFM::`string'+0x1800f (fffff803`21e4e30b)

nt! ?? ::FNODOBFM::`string'+0x18008:
fffff803`21e4e304 48ffc8          dec     rax
fffff803`21e4e307 48894358        mov     qword ptr [rbx+58h],rax

nt! ?? ::FNODOBFM::`string'+0x1800f:
fffff803`21e4e30b 488d0d1e9d0a00  lea     rcx,[nt!KiIRTimerTree (fffff803`21ef8030)]
fffff803`21e4e312 488bd3          mov     rdx,rbx
fffff803`21e4e315 e8f2e8f4ff      call    nt!RtlRbRemoveNode (fffff803`21d9cc0c)
fffff803`21e4e31a 488b150f9d0a00  mov     rdx,qword ptr [nt!KiIRTimerTree (fffff803`21ef8030)]
fffff803`21e4e321 448ac6          mov     r8b,sil
fffff803`21e4e324 4885d2          test    rdx,rdx
fffff803`21e4e327 742f            je      nt! ?? ::FNODOBFM::`string'+0x1805c (fffff803`21e4e358)

nt! ?? ::FNODOBFM::`string'+0x1802d:
fffff803`21e4e329 4c8b4b58        mov     r9,qword ptr [rbx+58h]

nt! ?? ::FNODOBFM::`string'+0x18031:
fffff803`21e4e32d 498bc1          mov     rax,r9
fffff803`21e4e330 482b4258        sub     rax,qword ptr [rdx+58h]
fffff803`21e4e334 4885c0          test    rax,rax
fffff803`21e4e337 0f8fa584f5ff    jg      nt!KiAdjustTimerDueTimes+0x292 (fffff803`21da67e2)

nt! ?? ::FNODOBFM::`string'+0x18041:
fffff803`21e4e33d 448ac6          mov     r8b,sil
fffff803`21e4e340 0f899c84f5ff    jns     nt!KiAdjustTimerDueTimes+0x292 (fffff803`21da67e2)

nt! ?? ::FNODOBFM::`string'+0x1804a:
fffff803`21e4e346 410fb6c0        movzx   eax,r8b
fffff803`21e4e34a 488b0cc2        mov     rcx,qword ptr [rdx+rax*8]
fffff803`21e4e34e 4885c9          test    rcx,rcx
fffff803`21e4e351 7405            je      nt! ?? ::FNODOBFM::`string'+0x1805c (fffff803`21e4e358)

nt! ?? ::FNODOBFM::`string'+0x18057:
fffff803`21e4e353 488bd1          mov     rdx,rcx
fffff803`21e4e356 ebd5            jmp     nt! ?? ::FNODOBFM::`string'+0x18031 (fffff803`21e4e32d)

nt! ?? ::FNODOBFM::`string'+0x1805c:
fffff803`21e4e358 488d0dd19c0a00  lea     rcx,[nt!KiIRTimerTree (fffff803`21ef8030)]
fffff803`21e4e35f 4c8bcb          mov     r9,rbx
fffff803`21e4e362 e851e8f4ff      call    nt!RtlRbInsertNodeEx (fffff803`21d9cbb8)

nt! ?? ::FNODOBFM::`string'+0x1806b:
fffff803`21e4e367 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`21e4e36b 488bcb          mov     rcx,rbx
fffff803`21e4e36e 4885c0          test    rax,rax
fffff803`21e4e371 7415            je      nt! ?? ::FNODOBFM::`string'+0x1808c (fffff803`21e4e388)

nt! ?? ::FNODOBFM::`string'+0x18077:
fffff803`21e4e373 488bd8          mov     rbx,rax
fffff803`21e4e376 488b00          mov     rax,qword ptr [rax]
fffff803`21e4e379 4885c0          test    rax,rax
fffff803`21e4e37c 75f5            jne     nt! ?? ::FNODOBFM::`string'+0x18077 (fffff803`21e4e373)

nt! ?? ::FNODOBFM::`string'+0x18082:
fffff803`21e4e37e eb12            jmp     nt! ?? ::FNODOBFM::`string'+0x18096 (fffff803`21e4e392)

nt! ?? ::FNODOBFM::`string'+0x18084:
fffff803`21e4e380 48390b          cmp     qword ptr [rbx],rcx
fffff803`21e4e383 740d            je      nt! ?? ::FNODOBFM::`string'+0x18096 (fffff803`21e4e392)

nt! ?? ::FNODOBFM::`string'+0x18089:
fffff803`21e4e385 488bcb          mov     rcx,rbx

nt! ?? ::FNODOBFM::`string'+0x1808c:
fffff803`21e4e388 488b5b10        mov     rbx,qword ptr [rbx+10h]
fffff803`21e4e38c 4883e3fc        and     rbx,0FFFFFFFFFFFFFFFCh
fffff803`21e4e390 75ee            jne     nt! ?? ::FNODOBFM::`string'+0x18084 (fffff803`21e4e380)

nt! ?? ::FNODOBFM::`string'+0x18096:
fffff803`21e4e392 4885db          test    rbx,rbx
fffff803`21e4e395 0f854effffff    jne     nt! ?? ::FNODOBFM::`string'+0x17fe9 (fffff803`21e4e2e9)

nt! ?? ::FNODOBFM::`string'+0x1809f:
fffff803`21e4e39b 488b1d969c0a00  mov     rbx,qword ptr [nt!KiIRTimerTree+0x8 (fffff803`21ef8038)]
fffff803`21e4e3a2 4885db          test    rbx,rbx
fffff803`21e4e3a5 0f84d583f5ff    je      nt!KiAdjustTimerDueTimes+0x230 (fffff803`21da6780)

nt! ?? ::FNODOBFM::`string'+0x180af:
fffff803`21e4e3ab 488b4358        mov     rax,qword ptr [rbx+58h]
fffff803`21e4e3af 4889057a9b0900  mov     qword ptr [nt!KiIRTimerFirstDueTime (fffff803`21ee7f30)],rax
fffff803`21e4e3b6 e9c583f5ff      jmp     nt!KiAdjustTimerDueTimes+0x230 (fffff803`21da6780)

nt! ?? ::FNODOBFM::`string'+0x180bf:
fffff803`21e4e3bb 488b5528        mov     rdx,qword ptr [rbp+28h]
fffff803`21e4e3bf 488d0d42790f00  lea     rcx,[nt!KiIRTimerLock (fffff803`21f45d08)]
fffff803`21e4e3c6 e8d1e0f9ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e4e3cb 90              nop
fffff803`21e4e3cc e9c783f5ff      jmp     nt!KiAdjustTimerDueTimes+0x248 (fffff803`21da6798)
