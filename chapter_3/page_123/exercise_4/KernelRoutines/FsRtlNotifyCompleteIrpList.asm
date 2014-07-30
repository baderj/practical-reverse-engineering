nt!FsRtlNotifyCompleteIrpList:
fffff803`d9c60978 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9c6097d 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`d9c60982 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d9c60987 57              push    rdi
fffff803`d9c60988 4883ec30        sub     rsp,30h
fffff803`d9c6098c 8b6978          mov     ebp,dword ptr [rcx+78h]
fffff803`d9c6098f 83617800        and     dword ptr [rcx+78h],0
fffff803`d9c60993 b8fdff0000      mov     eax,0FFFDh
fffff803`d9c60998 66214158        and     word ptr [rcx+58h],ax
fffff803`d9c6099c 83617c00        and     dword ptr [rcx+7Ch],0
fffff803`d9c609a0 8bf2            mov     esi,edx
fffff803`d9c609a2 488bf9          mov     rdi,rcx
fffff803`d9c609a5 488d5940        lea     rbx,[rcx+40h]

nt!FsRtlNotifyCompleteIrpList+0x31:
fffff803`d9c609a9 488b03          mov     rax,qword ptr [rbx]
fffff803`d9c609ac 488b0b          mov     rcx,qword ptr [rbx]
fffff803`d9c609af 488b10          mov     rdx,qword ptr [rax]
fffff803`d9c609b2 4881e9a8000000  sub     rcx,0A8h
fffff803`d9c609b9 48395808        cmp     qword ptr [rax+8],rbx
fffff803`d9c609bd 754b            jne     nt!FsRtlNotifyCompleteIrpList+0x92 (fffff803`d9c60a0a)

nt!FsRtlNotifyCompleteIrpList+0x47:
fffff803`d9c609bf 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9c609c3 7545            jne     nt!FsRtlNotifyCompleteIrpList+0x92 (fffff803`d9c60a0a)

nt!FsRtlNotifyCompleteIrpList+0x4d:
fffff803`d9c609c5 488913          mov     qword ptr [rbx],rdx
fffff803`d9c609c8 48895a08        mov     qword ptr [rdx+8],rbx
fffff803`d9c609cc 4883a1a800000000 and     qword ptr [rcx+0A8h],0
fffff803`d9c609d4 488bd7          mov     rdx,rdi
fffff803`d9c609d7 448bce          mov     r9d,esi
fffff803`d9c609da 448bc5          mov     r8d,ebp
fffff803`d9c609dd c744242001000000 mov     dword ptr [rsp+20h],1
fffff803`d9c609e5 e8c6000000      call    nt!FsRtlNotifyCompleteIrp (fffff803`d9c60ab0)
fffff803`d9c609ea 85f6            test    esi,esi
fffff803`d9c609ec 7515            jne     nt!FsRtlNotifyCompleteIrpList+0x8b (fffff803`d9c60a03)

nt!FsRtlNotifyCompleteIrpList+0x76:
fffff803`d9c609ee 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d9c609f3 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`d9c609f8 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`d9c609fd 4883c430        add     rsp,30h
fffff803`d9c60a01 5f              pop     rdi
fffff803`d9c60a02 c3              ret

nt!FsRtlNotifyCompleteIrpList+0x8b:
fffff803`d9c60a03 48391b          cmp     qword ptr [rbx],rbx
fffff803`d9c60a06 74e6            je      nt!FsRtlNotifyCompleteIrpList+0x76 (fffff803`d9c609ee)

nt!FsRtlNotifyCompleteIrpList+0x90:
fffff803`d9c60a08 eb9f            jmp     nt!FsRtlNotifyCompleteIrpList+0x31 (fffff803`d9c609a9)

nt!FsRtlNotifyCompleteIrpList+0x92:
fffff803`d9c60a0a b903000000      mov     ecx,3
fffff803`d9c60a0f cd29            int     29h
fffff803`d9c60a11 90              nop
fffff803`d9c60a12 90              nop
fffff803`d9c60a13 90              nop
fffff803`d9c60a14 90              nop
fffff803`d9c60a15 90              nop
fffff803`d9c60a16 90              nop
fffff803`d9c60a17 90              nop
fffff803`d9c60a18 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9c60a1d 57              push    rdi
fffff803`d9c60a1e 4883ec20        sub     rsp,20h
fffff803`d9c60a22 6683495804      or      word ptr [rcx+58h],4
fffff803`d9c60a27 488d4140        lea     rax,[rcx+40h]
fffff803`d9c60a2b 488bfa          mov     rdi,rdx
fffff803`d9c60a2e 488bd9          mov     rbx,rcx
fffff803`d9c60a31 483900          cmp     qword ptr [rax],rax
fffff803`d9c60a34 755b            jne     nt!FsRtlNotifyCleanupOneEntry+0x79 (fffff803`d9c60a91)

nt!FsRtlNotifyCleanupOneEntry+0x1e:
fffff803`d9c60a36 488d4330        lea     rax,[rbx+30h]
fffff803`d9c60a3a 488b10          mov     rdx,qword ptr [rax]
fffff803`d9c60a3d 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9c60a41 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9c60a45 755c            jne     nt!FsRtlNotifyCleanupOneEntry+0x8b (fffff803`d9c60aa3)

nt!FsRtlNotifyCleanupOneEntry+0x2f:
fffff803`d9c60a47 483901          cmp     qword ptr [rcx],rax
fffff803`d9c60a4a 7557            jne     nt!FsRtlNotifyCleanupOneEntry+0x8b (fffff803`d9c60aa3)

nt!FsRtlNotifyCleanupOneEntry+0x34:
fffff803`d9c60a4c 488911          mov     qword ptr [rcx],rdx
fffff803`d9c60a4f 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9c60a53 f0ff8b80000000  lock dec dword ptr [rbx+80h]
fffff803`d9c60a5a 83bb8000000000  cmp     dword ptr [rbx+80h],0
fffff803`d9c60a61 7523            jne     nt!FsRtlNotifyCleanupOneEntry+0x6e (fffff803`d9c60a86)

nt!FsRtlNotifyCleanupOneEntry+0x4b:
fffff803`d9c60a63 48837b6000      cmp     qword ptr [rbx+60h],0
fffff803`d9c60a68 0f85aa222000    jne     nt! ?? ::NNGAKEGL::`string'+0x149d2 (fffff803`d9e62d18)

nt!FsRtlNotifyCleanupOneEntry+0x56:
fffff803`d9c60a6e 48837b2800      cmp     qword ptr [rbx+28h],0
fffff803`d9c60a73 7428            je      nt!FsRtlNotifyCleanupOneEntry+0x85 (fffff803`d9c60a9d)

nt!FsRtlNotifyCleanupOneEntry+0x5d:
fffff803`d9c60a75 488b4320        mov     rax,qword ptr [rbx+20h]
fffff803`d9c60a79 488907          mov     qword ptr [rdi],rax

nt!FsRtlNotifyCleanupOneEntry+0x64:
fffff803`d9c60a7c 33d2            xor     edx,edx
fffff803`d9c60a7e 488bcb          mov     rcx,rbx
fffff803`d9c60a81 e8da66e9ff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)

nt!FsRtlNotifyCleanupOneEntry+0x6e:
fffff803`d9c60a86 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d9c60a8b 4883c420        add     rsp,20h
fffff803`d9c60a8f 5f              pop     rdi
fffff803`d9c60a90 c3              ret

nt!FsRtlNotifyCleanupOneEntry+0x79:
fffff803`d9c60a91 ba0b010000      mov     edx,10Bh
fffff803`d9c60a96 e8ddfeffff      call    nt!FsRtlNotifyCompleteIrpList (fffff803`d9c60978)
fffff803`d9c60a9b eb99            jmp     nt!FsRtlNotifyCleanupOneEntry+0x1e (fffff803`d9c60a36)

nt!FsRtlNotifyCleanupOneEntry+0x85:
fffff803`d9c60a9d 48832700        and     qword ptr [rdi],0
fffff803`d9c60aa1 ebd9            jmp     nt!FsRtlNotifyCleanupOneEntry+0x64 (fffff803`d9c60a7c)

nt!FsRtlNotifyCleanupOneEntry+0x8b:
fffff803`d9c60aa3 b903000000      mov     ecx,3
fffff803`d9c60aa8 cd29            int     29h
fffff803`d9c60aaa 90              nop
fffff803`d9c60aab 90              nop
fffff803`d9c60aac 90              nop
fffff803`d9c60aad 90              nop
fffff803`d9c60aae 90              nop
fffff803`d9c60aaf 90              nop
fffff803`d9c60ab0 4889542410      mov     qword ptr [rsp+10h],rdx
fffff803`d9c60ab5 48894c2408      mov     qword ptr [rsp+8],rcx
fffff803`d9c60aba 56              push    rsi
fffff803`d9c60abb 57              push    rdi
fffff803`d9c60abc 4156            push    r14
fffff803`d9c60abe 4157            push    r15
fffff803`d9c60ac0 4883ec38        sub     rsp,38h
fffff803`d9c60ac4 418bf1          mov     esi,r9d
fffff803`d9c60ac7 458bf0          mov     r14d,r8d
fffff803`d9c60aca 4c8bfa          mov     r15,rdx
fffff803`d9c60acd 488bf9          mov     rdi,rcx
fffff803`d9c60ad0 e8f705c5ff      call    nt!FsRtlNotifySetCancelRoutine (fffff803`d98b10cc)
fffff803`d9c60ad5 84c0            test    al,al
fffff803`d9c60ad7 0f8421010000    je      nt!FsRtlNotifyCompleteIrp+0x14e (fffff803`d9c60bfe)

nt!FsRtlNotifyCompleteIrp+0x2d:
fffff803`d9c60add 85f6            test    esi,esi
fffff803`d9c60adf 0f85ef000000    jne     nt!FsRtlNotifyCompleteIrp+0x124 (fffff803`d9c60bd4)

nt!FsRtlNotifyCompleteIrp+0x35:
fffff803`d9c60ae5 488b87b8000000  mov     rax,qword ptr [rdi+0B8h]
fffff803`d9c60aec 4585f6          test    r14d,r14d
fffff803`d9c60aef 0f8402010000    je      nt!FsRtlNotifyCompleteIrp+0x147 (fffff803`d9c60bf7)

nt!FsRtlNotifyCompleteIrp+0x45:
fffff803`d9c60af5 44397008        cmp     dword ptr [rax+8],r14d
fffff803`d9c60af9 0f82f8000000    jb      nt!FsRtlNotifyCompleteIrp+0x147 (fffff803`d9c60bf7)

nt!FsRtlNotifyCompleteIrp+0x4f:
fffff803`d9c60aff 498b5760        mov     rdx,qword ptr [r15+60h]
fffff803`d9c60b03 4885d2          test    rdx,rdx
fffff803`d9c60b06 0f84bc000000    je      nt!FsRtlNotifyCompleteIrp+0x118 (fffff803`d9c60bc8)

nt!FsRtlNotifyCompleteIrp+0x5c:
fffff803`d9c60b0c 488b4f18        mov     rcx,qword ptr [rdi+18h]
fffff803`d9c60b10 4885c9          test    rcx,rcx
fffff803`d9c60b13 7522            jne     nt!FsRtlNotifyCompleteIrp+0x87 (fffff803`d9c60b37)

nt!FsRtlNotifyCompleteIrp+0x65:
fffff803`d9c60b15 488b4f08        mov     rcx,qword ptr [rdi+8]
fffff803`d9c60b19 4885c9          test    rcx,rcx
fffff803`d9c60b1c 7523            jne     nt!FsRtlNotifyCompleteIrp+0x91 (fffff803`d9c60b41)

nt!FsRtlNotifyCompleteIrp+0x6e:
fffff803`d9c60b1e 8a4003          mov     al,byte ptr [rax+3]
fffff803`d9c60b21 a801            test    al,1
fffff803`d9c60b23 740e            je      nt!FsRtlNotifyCompleteIrp+0x83 (fffff803`d9c60b33)

nt!FsRtlNotifyCompleteIrp+0x75:
fffff803`d9c60b25 834f1070        or      dword ptr [rdi+10h],70h
fffff803`d9c60b29 498b4760        mov     rax,qword ptr [r15+60h]
fffff803`d9c60b2d 48894718        mov     qword ptr [rdi+18h],rax
fffff803`d9c60b31 eb54            jmp     nt!FsRtlNotifyCompleteIrp+0xd7 (fffff803`d9c60b87)

nt!FsRtlNotifyCompleteIrp+0x83:
fffff803`d9c60b33 488b4f70        mov     rcx,qword ptr [rdi+70h]

nt!FsRtlNotifyCompleteIrp+0x87:
fffff803`d9c60b37 4d8bc6          mov     r8,r14
fffff803`d9c60b3a e8c1a6c7ff      call    nt!memcpy (fffff803`d98db200)
fffff803`d9c60b3f eb46            jmp     nt!FsRtlNotifyCompleteIrp+0xd7 (fffff803`d9c60b87)

nt!FsRtlNotifyCompleteIrp+0x91:
fffff803`d9c60b41 f6410a05        test    byte ptr [rcx+0Ah],5
fffff803`d9c60b45 7406            je      nt!FsRtlNotifyCompleteIrp+0x9d (fffff803`d9c60b4d)

nt!FsRtlNotifyCompleteIrp+0x97:
fffff803`d9c60b47 488b4118        mov     rax,qword ptr [rcx+18h]
fffff803`d9c60b4b eb1b            jmp     nt!FsRtlNotifyCompleteIrp+0xb8 (fffff803`d9c60b68)

nt!FsRtlNotifyCompleteIrp+0x9d:
fffff803`d9c60b4d c744242810000040 mov     dword ptr [rsp+28h],40000010h
fffff803`d9c60b55 8364242000      and     dword ptr [rsp+20h],0
fffff803`d9c60b5a 4533c9          xor     r9d,r9d
fffff803`d9c60b5d 33d2            xor     edx,edx
fffff803`d9c60b5f 458d4101        lea     r8d,[r9+1]
fffff803`d9c60b63 e888accaff      call    nt!MmMapLockedPagesSpecifyCache (fffff803`d990b7f0)

nt!FsRtlNotifyCompleteIrp+0xb8:
fffff803`d9c60b68 4885c0          test    rax,rax
fffff803`d9c60b6b 7409            je      nt!FsRtlNotifyCompleteIrp+0xc6 (fffff803`d9c60b76)

nt!FsRtlNotifyCompleteIrp+0xbd:
fffff803`d9c60b6d 498b5760        mov     rdx,qword ptr [r15+60h]
fffff803`d9c60b71 488bc8          mov     rcx,rax
fffff803`d9c60b74 ebc1            jmp     nt!FsRtlNotifyCompleteIrp+0x87 (fffff803`d9c60b37)

nt!FsRtlNotifyCompleteIrp+0xc6:
fffff803`d9c60b76 be0c010000      mov     esi,10Ch
fffff803`d9c60b7b 89742478        mov     dword ptr [rsp+78h],esi
fffff803`d9c60b7f 4533f6          xor     r14d,r14d
fffff803`d9c60b82 4489742470      mov     dword ptr [rsp+70h],r14d

nt!FsRtlNotifyCompleteIrp+0xd7:
fffff803`d9c60b87 eb1b            jmp     nt!FsRtlNotifyCompleteIrp+0xf4 (fffff803`d9c60ba4)

nt!FsRtlNotifyCompleteIrp+0xf4:
fffff803`d9c60ba4 418b5774        mov     edx,dword ptr [r15+74h]
fffff803`d9c60ba8 498b8f88000000  mov     rcx,qword ptr [r15+88h]
fffff803`d9c60baf e8e4a5cdff      call    nt!PsReturnProcessPagedPoolQuota (fffff803`d993b198)
fffff803`d9c60bb4 498b4f60        mov     rcx,qword ptr [r15+60h]
fffff803`d9c60bb8 483b4f18        cmp     rcx,qword ptr [rdi+18h]
fffff803`d9c60bbc 7550            jne     nt!FsRtlNotifyCompleteIrp+0x15e (fffff803`d9c60c0e)

nt!FsRtlNotifyCompleteIrp+0x10e:
fffff803`d9c60bbe 4983676000      and     qword ptr [r15+60h],0
fffff803`d9c60bc3 4183677400      and     dword ptr [r15+74h],0

nt!FsRtlNotifyCompleteIrp+0x118:
fffff803`d9c60bc8 418bc6          mov     eax,r14d
fffff803`d9c60bcb 48894738        mov     qword ptr [rdi+38h],rax
fffff803`d9c60bcf 4983676800      and     qword ptr [r15+68h],0

nt!FsRtlNotifyCompleteIrp+0x124:
fffff803`d9c60bd4 488b87b8000000  mov     rax,qword ptr [rdi+0B8h]
fffff803`d9c60bdb 80480301        or      byte ptr [rax+3],1
fffff803`d9c60bdf 897730          mov     dword ptr [rdi+30h],esi
fffff803`d9c60be2 b201            mov     dl,1
fffff803`d9c60be4 488bcf          mov     rcx,rdi
fffff803`d9c60be7 e8e462cbff      call    nt!IoCompleteRequest (fffff803`d9916ed0)

nt!FsRtlNotifyCompleteIrp+0x13c:
fffff803`d9c60bec 4883c438        add     rsp,38h
fffff803`d9c60bf0 415f            pop     r15
fffff803`d9c60bf2 415e            pop     r14
fffff803`d9c60bf4 5f              pop     rdi
fffff803`d9c60bf5 5e              pop     rsi
fffff803`d9c60bf6 c3              ret

nt!FsRtlNotifyCompleteIrp+0x147:
fffff803`d9c60bf7 be0c010000      mov     esi,10Ch
fffff803`d9c60bfc ebd6            jmp     nt!FsRtlNotifyCompleteIrp+0x124 (fffff803`d9c60bd4)

nt!FsRtlNotifyCompleteIrp+0x14e:
fffff803`d9c60bfe 83bc248000000000 cmp     dword ptr [rsp+80h],0
fffff803`d9c60c06 0f84d1feffff    je      nt!FsRtlNotifyCompleteIrp+0x2d (fffff803`d9c60add)

nt!FsRtlNotifyCompleteIrp+0x15c:
fffff803`d9c60c0c ebde            jmp     nt!FsRtlNotifyCompleteIrp+0x13c (fffff803`d9c60bec)

nt!FsRtlNotifyCompleteIrp+0x15e:
fffff803`d9c60c0e 4885c9          test    rcx,rcx
fffff803`d9c60c11 74ab            je      nt!FsRtlNotifyCompleteIrp+0x10e (fffff803`d9c60bbe)

nt!FsRtlNotifyCompleteIrp+0x163:
fffff803`d9c60c13 33d2            xor     edx,edx
fffff803`d9c60c15 e84665e9ff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)
fffff803`d9c60c1a eba2            jmp     nt!FsRtlNotifyCompleteIrp+0x10e (fffff803`d9c60bbe)

nt! ?? ::NNGAKEGL::`string'+0x149d2:
fffff803`d9e62d18 8b5374          mov     edx,dword ptr [rbx+74h]
fffff803`d9e62d1b 488b8b88000000  mov     rcx,qword ptr [rbx+88h]
fffff803`d9e62d22 e87184adff      call    nt!PsReturnProcessPagedPoolQuota (fffff803`d993b198)
fffff803`d9e62d27 488b4b60        mov     rcx,qword ptr [rbx+60h]
fffff803`d9e62d2b 33d2            xor     edx,edx
fffff803`d9e62d2d e82e44c9ff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)
fffff803`d9e62d32 90              nop
fffff803`d9e62d33 e936dddfff      jmp     nt!FsRtlNotifyCleanupOneEntry+0x56 (fffff803`d9c60a6e)
