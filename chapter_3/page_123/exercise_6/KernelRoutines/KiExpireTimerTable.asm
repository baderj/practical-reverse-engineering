nt!KiExpireTimerTable:
fffff803`21cf3600 4889542410      mov     qword ptr [rsp+10h],rdx
fffff803`21cf3605 48894c2408      mov     qword ptr [rsp+8],rcx
fffff803`21cf360a 53              push    rbx
fffff803`21cf360b 55              push    rbp
fffff803`21cf360c 56              push    rsi
fffff803`21cf360d 57              push    rdi
fffff803`21cf360e 4154            push    r12
fffff803`21cf3610 4155            push    r13
fffff803`21cf3612 4156            push    r14
fffff803`21cf3614 4157            push    r15
fffff803`21cf3616 4883ec58        sub     rsp,58h
fffff803`21cf361a 448bac24c0000000 mov     r13d,dword ptr [rsp+0C0h]
fffff803`21cf3622 418bf8          mov     edi,r8d
fffff803`21cf3625 418d49ff        lea     ecx,[r9-1]
fffff803`21cf3629 03cf            add     ecx,edi
fffff803`21cf362b 33ed            xor     ebp,ebp
fffff803`21cf362d ffcf            dec     edi
fffff803`21cf362f 4403e9          add     r13d,ecx
fffff803`21cf3632 4533d2          xor     r10d,r10d
fffff803`21cf3635 4c8bc2          mov     r8,rdx
fffff803`21cf3638 488b9424c8000000 mov     rdx,qword ptr [rsp+0C8h]
fffff803`21cf3640 898c24b8000000  mov     dword ptr [rsp+0B8h],ecx
fffff803`21cf3647 c68424c0000000c0 mov     byte ptr [rsp+0C0h],0C0h
fffff803`21cf364f 44899424b0000000 mov     dword ptr [rsp+0B0h],r10d
fffff803`21cf3657 660f1f0400      nop     word ptr [rax+rax]

nt!KiExpireTimerTable+0x60:
fffff803`21cf365c ffc7            inc     edi
fffff803`21cf365e 440fb6f7        movzx   r14d,dil
fffff803`21cf3662 498d5e10        lea     rbx,[r14+10h]
fffff803`21cf3666 48c1e305        shl     rbx,5
fffff803`21cf366a 4903d8          add     rbx,r8
fffff803`21cf366d 3be9            cmp     ebp,ecx
fffff803`21cf366f 0f87bb7d0900    ja      nt! ?? ::FNODOBFM::`string'+0x150c6 (fffff803`21d8b430)

nt!KiExpireTimerTable+0x79:
fffff803`21cf3675 488d7308        lea     rsi,[rbx+8]
fffff803`21cf3679 4963c6          movsxd  rax,r14d
fffff803`21cf367c 483b36          cmp     rsi,qword ptr [rsi]
fffff803`21cf367f 7535            jne     nt!KiExpireTimerTable+0xba (fffff803`21cf36b6)

nt!KiExpireTimerTable+0x85:
fffff803`21cf3681 ffc5            inc     ebp

nt!KiExpireTimerTable+0x87:
fffff803`21cf3683 413bfd          cmp     edi,r13d
fffff803`21cf3686 75d4            jne     nt!KiExpireTimerTable+0x60 (fffff803`21cf365c)

nt!KiExpireTimerTable+0x8c:
fffff803`21cf3688 4585d2          test    r10d,r10d
fffff803`21cf368b 7418            je      nt!KiExpireTimerTable+0xa9 (fffff803`21cf36a5)

nt!KiExpireTimerTable+0x91:
fffff803`21cf368d 488b9424d0000000 mov     rdx,qword ptr [rsp+0D0h]
fffff803`21cf3695 488b8c24a0000000 mov     rcx,qword ptr [rsp+0A0h]
fffff803`21cf369d 458bca          mov     r9d,r10d
fffff803`21cf36a0 e86b190000      call    nt!KiProcessExpiredTimerList (fffff803`21cf5010)

nt!KiExpireTimerTable+0xa9:
fffff803`21cf36a5 4883c458        add     rsp,58h
fffff803`21cf36a9 415f            pop     r15
fffff803`21cf36ab 415e            pop     r14
fffff803`21cf36ad 415d            pop     r13
fffff803`21cf36af 415c            pop     r12
fffff803`21cf36b1 5f              pop     rdi
fffff803`21cf36b2 5e              pop     rsi
fffff803`21cf36b3 5d              pop     rbp
fffff803`21cf36b4 5b              pop     rbx
fffff803`21cf36b5 c3              ret

nt!KiExpireTimerTable+0xba:
fffff803`21cf36b6 4c8d6010        lea     r12,[rax+10h]
fffff803`21cf36ba 49c1e405        shl     r12,5
fffff803`21cf36be 4d03e0          add     r12,r8

nt!KiExpireTimerTable+0xc5:
fffff803`21cf36c1 4533ff          xor     r15d,r15d

nt!KiExpireTimerTable+0xc8:
fffff803`21cf36c4 f0490fba2c2400  lock bts qword ptr [r12],0
fffff803`21cf36cb 0f8236010000    jb      nt!KiExpireTimerTable+0x210 (fffff803`21cf3807)

nt!KiExpireTimerTable+0xd5:
fffff803`21cf36d1 4c8b8424a8000000 mov     r8,qword ptr [rsp+0A8h]
fffff803`21cf36d9 448b9424b0000000 mov     r10d,dword ptr [rsp+0B0h]
fffff803`21cf36e1 440fb69c24c0000000 movzx r11d,byte ptr [rsp+0C0h]

nt!KiExpireTimerTable+0xee:
fffff803`21cf36ea 4c8b0e          mov     r9,qword ptr [rsi]
fffff803`21cf36ed 493bf1          cmp     rsi,r9
fffff803`21cf36f0 741a            je      nt!KiExpireTimerTable+0x110 (fffff803`21cf370c)

nt!KiExpireTimerTable+0xf6:
fffff803`21cf36f2 488b8424c8000000 mov     rax,qword ptr [rsp+0C8h]
fffff803`21cf36fa 4983c1e0        add     r9,0FFFFFFFFFFFFFFE0h
fffff803`21cf36fe 49394118        cmp     qword ptr [r9+18h],rax
fffff803`21cf3702 7622            jbe     nt!KiExpireTimerTable+0x12a (fffff803`21cf3726)

nt!KiExpireTimerTable+0x108:
fffff803`21cf3704 498b4118        mov     rax,qword ptr [r9+18h]
fffff803`21cf3708 48894318        mov     qword ptr [rbx+18h],rax

nt!KiExpireTimerTable+0x110:
fffff803`21cf370c f04983242400    lock and qword ptr [r12],0

nt!KiExpireTimerTable+0x116:
fffff803`21cf3712 488b9424c8000000 mov     rdx,qword ptr [rsp+0C8h]
fffff803`21cf371a 8b8c24b8000000  mov     ecx,dword ptr [rsp+0B8h]
fffff803`21cf3721 e95bffffff      jmp     nt!KiExpireTimerTable+0x85 (fffff803`21cf3681)

nt!KiExpireTimerTable+0x12a:
fffff803`21cf3726 498b5120        mov     rdx,qword ptr [r9+20h]
fffff803`21cf372a 498b4128        mov     rax,qword ptr [r9+28h]
fffff803`21cf372e 498d4920        lea     rcx,[r9+20h]
fffff803`21cf3732 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`21cf3736 0f85bf000000    jne     nt!KiExpireTimerTable+0x1ff (fffff803`21cf37fb)

nt!KiExpireTimerTable+0x140:
fffff803`21cf373c 483908          cmp     qword ptr [rax],rcx
fffff803`21cf373f 0f85b6000000    jne     nt!KiExpireTimerTable+0x1ff (fffff803`21cf37fb)

nt!KiExpireTimerTable+0x149:
fffff803`21cf3745 488910          mov     qword ptr [rax],rdx
fffff803`21cf3748 48894208        mov     qword ptr [rdx+8],rax
fffff803`21cf374c 483bc2          cmp     rax,rdx
fffff803`21cf374f 7541            jne     nt!KiExpireTimerTable+0x196 (fffff803`21cf3792)

nt!KiExpireTimerTable+0x155:
fffff803`21cf3751 41c744241cffffffff mov   dword ptr [r12+1Ch],0FFFFFFFFh
fffff803`21cf375a 410fb78058d8ffff movzx   eax,word ptr [r8-27A8h]
fffff803`21cf3762 488d0d1f892d00  lea     rcx,[nt!KiPendingTimerBitmaps+0x8 (fffff803`21fcc088)]
fffff803`21cf3769 4803c0          add     rax,rax
fffff803`21cf376c 833d7d692d0000  cmp     dword ptr [nt!KiSerializeTimerExpiration (fffff803`21fca0f0)],0
fffff803`21cf3773 488b0cc1        mov     rcx,qword ptr [rcx+rax*8]
fffff803`21cf3777 498bc6          mov     rax,r14
fffff803`21cf377a 756f            jne     nt!KiExpireTimerTable+0x1ef (fffff803`21cf37eb)

nt!KiExpireTimerTable+0x180:
fffff803`21cf377c 410fb69068d8ffff movzx   edx,byte ptr [r8-2798h]
fffff803`21cf3784 48c1e006        shl     rax,6
fffff803`21cf3788 4803c8          add     rcx,rax

nt!KiExpireTimerTable+0x18f:
fffff803`21cf378b 8bc2            mov     eax,edx
fffff803`21cf378d f0480fb301      lock btr qword ptr [rcx],rax

nt!KiExpireTimerTable+0x196:
fffff803`21cf3792 418bc2          mov     eax,r10d
fffff803`21cf3795 498bc9          mov     rcx,r9
fffff803`21cf3798 49870cc0        xchg    rcx,qword ptr [r8+rax*8]
fffff803`21cf379c 4885c9          test    rcx,rcx
fffff803`21cf379f 0f85f87c0900    jne     nt! ?? ::FNODOBFM::`string'+0x15133 (fffff803`21d8b49d)

nt!KiExpireTimerTable+0x1a9:
fffff803`21cf37a5 410fb6c2        movzx   eax,r10b
fffff803`21cf37a9 41ffc2          inc     r10d
fffff803`21cf37ac 894c2430        mov     dword ptr [rsp+30h],ecx
fffff803`21cf37b0 4132c3          xor     al,r11b
fffff803`21cf37b3 44899424b0000000 mov     dword ptr [rsp+0B0h],r10d
fffff803`21cf37bb 243f            and     al,3Fh
fffff803`21cf37bd 4432d8          xor     r11b,al
fffff803`21cf37c0 410fb64103      movzx   eax,byte ptr [r9+3]
fffff803`21cf37c5 4132c3          xor     al,r11b
fffff803`21cf37c8 44889c24c0000000 mov     byte ptr [rsp+0C0h],r11b
fffff803`21cf37d0 88442433        mov     byte ptr [rsp+33h],al
fffff803`21cf37d4 8b442430        mov     eax,dword ptr [rsp+30h]
fffff803`21cf37d8 f0413101        lock xor dword ptr [r9],eax
fffff803`21cf37dc 4183fa40        cmp     r10d,40h
fffff803`21cf37e0 0f8504ffffff    jne     nt!KiExpireTimerTable+0xee (fffff803`21cf36ea)

nt!KiExpireTimerTable+0x1ea:
fffff803`21cf37e6 e9707c0900      jmp     nt! ?? ::FNODOBFM::`string'+0x150f1 (fffff803`21d8b45b)

nt!KiExpireTimerTable+0x1ef:
fffff803`21cf37eb 418bd6          mov     edx,r14d
fffff803`21cf37ee 83e23f          and     edx,3Fh
fffff803`21cf37f1 48c1e806        shr     rax,6
fffff803`21cf37f5 488d0cc1        lea     rcx,[rcx+rax*8]
fffff803`21cf37f9 eb90            jmp     nt!KiExpireTimerTable+0x18f (fffff803`21cf378b)

nt!KiExpireTimerTable+0x1ff:
fffff803`21cf37fb b903000000      mov     ecx,3
fffff803`21cf3800 cd29            int     29h
fffff803`21cf3802 660f1f0400      nop     word ptr [rax+rax]

nt!KiExpireTimerTable+0x210:
fffff803`21cf3807 41ffc7          inc     r15d
fffff803`21cf380a 44853d3b6c2d00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r15d
fffff803`21cf3811 0f84287c0900    je      nt! ?? ::FNODOBFM::`string'+0x150d5 (fffff803`21d8b43f)

nt!KiExpireTimerTable+0x220:
fffff803`21cf3817 f390            pause

nt!KiExpireTimerTable+0x222:
fffff803`21cf3819 498b0424        mov     rax,qword ptr [r12]
fffff803`21cf381d 4885c0          test    rax,rax
fffff803`21cf3820 0f849efeffff    je      nt!KiExpireTimerTable+0xc8 (fffff803`21cf36c4)

nt!KiExpireTimerTable+0x22f:
fffff803`21cf3826 ebdf            jmp     nt!KiExpireTimerTable+0x210 (fffff803`21cf3807)

nt!MiWriteComplete+0x4c:
fffff803`21d70abc f6430a01        test    byte ptr [rbx+0Ah],1
fffff803`21d70ac0 0f85c8040000    jne     nt!MiWriteComplete+0x525 (fffff803`21d70f8e)

nt!MiWriteComplete+0x56:
fffff803`21d70ac6 4d8b6f40        mov     r13,qword ptr [r15+40h]
fffff803`21d70aca 8b17            mov     edx,dword ptr [rdi]
fffff803`21d70acc 899424c8000000  mov     dword ptr [rsp+0C8h],edx
fffff803`21d70ad3 4c896c2468      mov     qword ptr [rsp+68h],r13
fffff803`21d70ad8 4d85ed          test    r13,r13
fffff803`21d70adb 0f845b030000    je      nt!MiWriteComplete+0x3cc (fffff803`21d70e3c)

nt!MiWriteComplete+0x71:
fffff803`21d70ae1 488d05dcdf1c00  lea     rax,[nt!MiClusterWritesDisabled+0x4 (fffff803`21f3eac4)]

nt!MiWriteComplete+0x78:
fffff803`21d70ae8 4889442450      mov     qword ptr [rsp+50h],rax
fffff803`21d70aed 4c8d6330        lea     r12,[rbx+30h]
fffff803`21d70af1 41f7c0ff0f0000  test    r8d,0FFFh
fffff803`21d70af8 0f85e9040000    jne     nt!MiWriteComplete+0x577 (fffff803`21d70fe7)

nt!MiWriteComplete+0x8e:
fffff803`21d70afe 33c9            xor     ecx,ecx

nt!MiWriteComplete+0x90:
fffff803`21d70b00 498b7f48        mov     rdi,qword ptr [r15+48h]
fffff803`21d70b04 418bc0          mov     eax,r8d
fffff803`21d70b07 c1f80c          sar     eax,0Ch
fffff803`21d70b0a 03c1            add     eax,ecx
fffff803`21d70b0c 4898            cdqe
fffff803`21d70b0e 4d8d34c4        lea     r14,[r12+rax*8]
fffff803`21d70b12 4c89742448      mov     qword ptr [rsp+48h],r14
fffff803`21d70b17 4885ff          test    rdi,rdi
fffff803`21d70b1a 0f8597030000    jne     nt!MiWriteComplete+0x447 (fffff803`21d70eb7)

nt!MiWriteComplete+0xb0:
fffff803`21d70b20 4d85ed          test    r13,r13
fffff803`21d70b23 0f84dd020000    je      nt!MiWriteComplete+0x396 (fffff803`21d70e06)

nt!MiWriteComplete+0xb9:
fffff803`21d70b29 85d2            test    edx,edx
fffff803`21d70b2b 7944            jns     nt!MiWriteComplete+0x101 (fffff803`21d70b71)

nt!MiWriteComplete+0xbd:
fffff803`21d70b2d 4d85ed          test    r13,r13
fffff803`21d70b30 0f84bb040000    je      nt!MiWriteComplete+0x581 (fffff803`21d70ff1)

nt!MiWriteComplete+0xc6:
fffff803`21d70b36 b901000000      mov     ecx,1

nt!MiWriteComplete+0xcb:
fffff803`21d70b3b 418b7f28        mov     edi,dword ptr [r15+28h]
fffff803`21d70b3f 448bc2          mov     r8d,edx
fffff803`21d70b42 d1ef            shr     edi,1
fffff803`21d70b44 83e701          and     edi,1
fffff803`21d70b47 8bd7            mov     edx,edi
fffff803`21d70b49 e84e1c0000      call    nt!MmIsWriteErrorFatal (fffff803`21d7279c)
fffff803`21d70b4e 85c0            test    eax,eax
fffff803`21d70b50 0f8577a90100    jne     nt! ?? ::FNODOBFM::`string'+0x239a7 (fffff803`21d8b4cd)

nt!MiWriteComplete+0xe6:
fffff803`21d70b56 8b9424c8000000  mov     edx,dword ptr [rsp+0C8h]

nt!MiWriteComplete+0xed:
fffff803`21d70b5d be01000000      mov     esi,1

nt!MiWriteComplete+0xf2:
fffff803`21d70b62 4d85ed          test    r13,r13
fffff803`21d70b65 0f84f2a90100    je      nt! ?? ::FNODOBFM::`string'+0x23a47 (fffff803`21d8b55d)

nt!MiWriteComplete+0xfb:
fffff803`21d70b6b 89155fdf1c00    mov     dword ptr [nt!MiLastMappedWriteError (fffff803`21f3ead0)],edx

nt!MiWriteComplete+0x101:
fffff803`21d70b71 833dbc97250000  cmp     dword ptr [nt!MiStoreRegistered (fffff803`21fca334)],0
fffff803`21d70b78 0f85eaa90100    jne     nt! ?? ::FNODOBFM::`string'+0x23a52 (fffff803`21d8b568)

nt!MiWriteComplete+0x10e:
fffff803`21d70b7e 4533f6          xor     r14d,r14d

nt!MiWriteComplete+0x111:
fffff803`21d70b81 33c9            xor     ecx,ecx
fffff803`21d70b83 83e501          and     ebp,1
fffff803`21d70b86 4c89742438      mov     qword ptr [rsp+38h],r14
fffff803`21d70b8b 896c2430        mov     dword ptr [rsp+30h],ebp
fffff803`21d70b8f 48894c2440      mov     qword ptr [rsp+40h],rcx
fffff803`21d70b94 0f85eea90100    jne     nt! ?? ::FNODOBFM::`string'+0x23a72 (fffff803`21d8b588)

nt!MiWriteComplete+0x12a:
fffff803`21d70b9a 49837f3000      cmp     qword ptr [r15+30h],0
fffff803`21d70b9f 0f853e020000    jne     nt!MiWriteComplete+0x373 (fffff803`21d70de3)

nt!MiWriteComplete+0x135:
fffff803`21d70ba5 33ff            xor     edi,edi

nt!MiWriteComplete+0x137:
fffff803`21d70ba7 4c3b642448      cmp     r12,qword ptr [rsp+48h]
fffff803`21d70bac 0f83f4000000    jae     nt!MiWriteComplete+0x236 (fffff803`21d70ca6)

nt!MiWriteComplete+0x142:
fffff803`21d70bb2 4c8b7c2448      mov     r15,qword ptr [rsp+48h]
fffff803`21d70bb7 498d442408      lea     rax,[r12+8]
fffff803`21d70bbc 48b90000000080050000 mov rcx,58000000000h
fffff803`21d70bc6 4c8be8          mov     r13,rax
fffff803`21d70bc9 bd02000000      mov     ebp,2

nt!MiWriteComplete+0x15e:
fffff803`21d70bce 498b0424        mov     rax,qword ptr [r12]
fffff803`21d70bd2 483b052f972500  cmp     rax,qword ptr [nt!MiPageOfOnes (fffff803`21fca308)]
fffff803`21d70bd9 0f84d8010000    je      nt!MiWriteComplete+0x347 (fffff803`21d70db7)

nt!MiWriteComplete+0x16f:
fffff803`21d70bdf 4c8d3440        lea     r14,[rax+rax*2]
fffff803`21d70be3 49c1e604        shl     r14,4
fffff803`21d70be7 4c2bf1          sub     r14,rcx
fffff803`21d70bea 440f20c0        mov     rax,cr8
fffff803`21d70bee 4889442448      mov     qword ptr [rsp+48h],rax
fffff803`21d70bf3 440f22c5        mov     cr8,rbp
fffff803`21d70bf7 33db            xor     ebx,ebx
fffff803`21d70bf9 f0410fba6e1000  lock bts dword ptr [r14+10h],0
fffff803`21d70c00 0f82aa030000    jb      nt!MiWriteComplete+0x540 (fffff803`21d70fb0)

nt!MiWriteComplete+0x196:
fffff803`21d70c06 40f6c601        test    sil,1
fffff803`21d70c0a 750e            jne     nt!MiWriteComplete+0x1aa (fffff803`21d70c1a)

nt!MiWriteComplete+0x19c:
fffff803`21d70c0c 41f6461a10      test    byte ptr [r14+1Ah],10h
fffff803`21d70c11 0f85a3a90100    jne     nt! ?? ::FNODOBFM::`string'+0x23aa4 (fffff803`21d8b5ba)

nt!MiWriteComplete+0x1a7:
fffff803`21d70c17 83e6fd          and     esi,0FFFFFFFDh

nt!MiWriteComplete+0x1aa:
fffff803`21d70c1a 8bd6            mov     edx,esi
fffff803`21d70c1c 498bce          mov     rcx,r14
fffff803`21d70c1f e8bc0e0000      call    nt!MiWriteCompletePfn (fffff803`21d71ae0)
fffff803`21d70c24 488b4c2438      mov     rcx,qword ptr [rsp+38h]
fffff803`21d70c29 488bd8          mov     rbx,rax
fffff803`21d70c2c 4885c9          test    rcx,rcx
fffff803`21d70c2f 0f859ba90100    jne     nt! ?? ::FNODOBFM::`string'+0x23aba (fffff803`21d8b5d0)

nt!MiWriteComplete+0x1c5:
fffff803`21d70c35 f041836610fe    lock and dword ptr [r14+10h],0FFFFFFFEh
fffff803`21d70c3b 0fb6442448      movzx   eax,byte ptr [rsp+48h]
fffff803`21d70c40 440f22c0        mov     cr8,rax
fffff803`21d70c44 4c8bf1          mov     r14,rcx

nt!MiWriteComplete+0x1d7:
fffff803`21d70c47 4885db          test    rbx,rbx
fffff803`21d70c4a 0f8502aa0100    jne     nt! ?? ::FNODOBFM::`string'+0x23b47 (fffff803`21d8b652)

nt!MiWriteComplete+0x1e0:
fffff803`21d70c50 488bcf          mov     rcx,rdi
fffff803`21d70c53 48b800000000ffffffff mov rax,0FFFFFFFF00000000h
fffff803`21d70c5d 4983c408        add     r12,8
fffff803`21d70c61 4823c8          and     rcx,rax
fffff803`21d70c64 48b80000000001000000 mov rax,100000000h
fffff803`21d70c6e 4983c508        add     r13,8
fffff803`21d70c72 4803c8          add     rcx,rax
fffff803`21d70c75 8bc7            mov     eax,edi
fffff803`21d70c77 488bf9          mov     rdi,rcx
fffff803`21d70c7a 48b90000000080050000 mov rcx,58000000000h
fffff803`21d70c84 4833f8          xor     rdi,rax
fffff803`21d70c87 4d3be7          cmp     r12,r15
fffff803`21d70c8a 0f823effffff    jb      nt!MiWriteComplete+0x15e (fffff803`21d70bce)

nt!MiWriteComplete+0x220:
fffff803`21d70c90 8b6c2430        mov     ebp,dword ptr [rsp+30h]
fffff803`21d70c94 4c8bbc24c0000000 mov     r15,qword ptr [rsp+0C0h]
fffff803`21d70c9c 4c8b6c2468      mov     r13,qword ptr [rsp+68h]
fffff803`21d70ca1 488b4c2440      mov     rcx,qword ptr [rsp+40h]

nt!MiWriteComplete+0x236:
fffff803`21d70ca6 49837f3000      cmp     qword ptr [r15+30h],0
fffff803`21d70cab 0f8597010000    jne     nt!MiWriteComplete+0x3d8 (fffff803`21d70e48)

nt!MiWriteComplete+0x241:
fffff803`21d70cb1 4d85ed          test    r13,r13
fffff803`21d70cb4 0f84e2010000    je      nt!MiWriteComplete+0x42c (fffff803`21d70e9c)

nt!MiWriteComplete+0x24a:
fffff803`21d70cba 83fd01          cmp     ebp,1
fffff803`21d70cbd 0f84a4a90100    je      nt! ?? ::FNODOBFM::`string'+0x23b5c (fffff803`21d8b667)

nt!MiWriteComplete+0x253:
fffff803`21d70cc3 8bac24c8000000  mov     ebp,dword ptr [rsp+0C8h]

nt!MiWriteComplete+0x25a:
fffff803`21d70cca 440f20c7        mov     rdi,cr8
fffff803`21d70cce b802000000      mov     eax,2
fffff803`21d70cd3 440f22c0        mov     cr8,rax
fffff803`21d70cd7 f705a393250000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d70ce1 0f85e0a90100    jne     nt! ?? ::FNODOBFM::`string'+0x23bbc (fffff803`21d8b6c7)

nt!MiWriteComplete+0x277:
fffff803`21d70ce7 33f6            xor     esi,esi
fffff803`21d70ce9 f0410fba6d481f  lock bts dword ptr [r13+48h],1Fh
fffff803`21d70cf0 0f82e1020000    jb      nt!MiWriteComplete+0x567 (fffff803`21d70fd7)

nt!MiWriteComplete+0x286:
fffff803`21d70cf6 418b4d48        mov     ecx,dword ptr [r13+48h]
fffff803`21d70cfa 81f900000080    cmp     ecx,80000000h
fffff803`21d70d00 0f85d0a90100    jne     nt! ?? ::FNODOBFM::`string'+0x23bcb (fffff803`21d8b6d6)

nt!MiWriteComplete+0x296:
fffff803`21d70d06 498b4d50        mov     rcx,qword ptr [r13+50h]
fffff803`21d70d0a 41ff4d4c        dec     dword ptr [r13+4Ch]
fffff803`21d70d0e 498d5550        lea     rdx,[r13+50h]
fffff803`21d70d12 33f6            xor     esi,esi
fffff803`21d70d14 4885c9          test    rcx,rcx
fffff803`21d70d17 0f854c020000    jne     nt!MiWriteComplete+0x500 (fffff803`21d70f69)

nt!MiWriteComplete+0x2ad:
fffff803`21d70d1d 4080ff11        cmp     dil,11h
fffff803`21d70d21 7420            je      nt!MiWriteComplete+0x2d3 (fffff803`21d70d43)

nt!MiWriteComplete+0x2b3:
fffff803`21d70d23 f7055793250000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d70d2d 0f85d6a90100    jne     nt! ?? ::FNODOBFM::`string'+0x23bfe (fffff803`21d8b709)

nt!MiWriteComplete+0x2c3:
fffff803`21d70d33 41c7454800000000 mov     dword ptr [r13+48h],0

nt!MiWriteComplete+0x2cb:
fffff803`21d70d3b 400fb6c7        movzx   eax,dil
fffff803`21d70d3f 440f22c0        mov     cr8,rax

nt!MiWriteComplete+0x2d3:
fffff803`21d70d43 4885f6          test    rsi,rsi
fffff803`21d70d46 0f850f020000    jne     nt!MiWriteComplete+0x4eb (fffff803`21d70f5b)

nt!MiWriteComplete+0x2dc:
fffff803`21d70d4c f0ff0d61dd1c00  lock dec dword ptr [nt!MmNumberOfMappedMdlsInUse (fffff803`21f3eab4)]
fffff803`21d70d53 498b4f60        mov     rcx,qword ptr [r15+60h]
fffff803`21d70d57 4885c9          test    rcx,rcx
fffff803`21d70d5a 0f8598010000    jne     nt!MiWriteComplete+0x488 (fffff803`21d70ef8)

nt!MiWriteComplete+0x2f0:
fffff803`21d70d60 418b4728        mov     eax,dword ptr [r15+28h]
fffff803`21d70d64 a801            test    al,1
fffff803`21d70d66 0f85b4a90100    jne     nt! ?? ::FNODOBFM::`string'+0x23c15 (fffff803`21d8b720)

nt!MiWriteComplete+0x2fc:
fffff803`21d70d6c 33d2            xor     edx,edx
fffff803`21d70d6e 498bcf          mov     rcx,r15
fffff803`21d70d71 e8ea231700      call    nt!ExFreePoolWithTag (fffff803`21ee3160)

nt!MiWriteComplete+0x306:
fffff803`21d70d76 85ed            test    ebp,ebp
fffff803`21d70d78 794f            jns     nt!MiWriteComplete+0x359 (fffff803`21d70dc9)

nt!MiWriteComplete+0x30a:
fffff803`21d70d7a 83bc24d000000000 cmp     dword ptr [rsp+0D0h],0
fffff803`21d70d82 0f848e010000    je      nt!MiWriteComplete+0x4a6 (fffff803`21d70f16)

nt!MiWriteComplete+0x318:
fffff803`21d70d88 c60539dd1c0001  mov     byte ptr [nt!MiDelayMappedWrite (fffff803`21f3eac8)],1

nt!MiWriteComplete+0x31f:
fffff803`21d70d8f 488b4c2440      mov     rcx,qword ptr [rsp+40h]
fffff803`21d70d94 4885c9          test    rcx,rcx
fffff803`21d70d97 0f850b010000    jne     nt!MiWriteComplete+0x438 (fffff803`21d70ea8)

nt!MiWriteComplete+0x32d:
fffff803`21d70d9d 4d85f6          test    r14,r14
fffff803`21d70da0 0f85e7a90100    jne     nt! ?? ::FNODOBFM::`string'+0x23c86 (fffff803`21d8b78d)

nt!MiWriteComplete+0x336:
fffff803`21d70da6 4883c478        add     rsp,78h
fffff803`21d70daa 415f            pop     r15
fffff803`21d70dac 415e            pop     r14
fffff803`21d70dae 415d            pop     r13
fffff803`21d70db0 415c            pop     r12
fffff803`21d70db2 5f              pop     rdi
fffff803`21d70db3 5e              pop     rsi
fffff803`21d70db4 5d              pop     rbp
fffff803`21d70db5 5b              pop     rbx
fffff803`21d70db6 c3              ret

nt!MiWriteComplete+0x347:
fffff803`21d70db7 488bcf          mov     rcx,rdi
fffff803`21d70dba e8116dffff      call    nt!MiReleaseConfirmedPageFileInfo (fffff803`21d67ad0)
fffff803`21d70dbf 4c8b742438      mov     r14,qword ptr [rsp+38h]
fffff803`21d70dc4 e987feffff      jmp     nt!MiWriteComplete+0x1e0 (fffff803`21d70c50)

nt!MiWriteComplete+0x359:
fffff803`21d70dc9 4d85ed          test    r13,r13
fffff803`21d70dcc 0f851a010000    jne     nt!MiWriteComplete+0x47c (fffff803`21d70eec)

nt!MiWriteComplete+0x362:
fffff803`21d70dd2 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff803`21d70dd7 8b01            mov     eax,dword ptr [rcx]
fffff803`21d70dd9 85c0            test    eax,eax
fffff803`21d70ddb 74b2            je      nt!MiWriteComplete+0x31f (fffff803`21d70d8f)

nt!MiWriteComplete+0x36d:
fffff803`21d70ddd ffc8            dec     eax
fffff803`21d70ddf 8901            mov     dword ptr [rcx],eax
fffff803`21d70de1 ebac            jmp     nt!MiWriteComplete+0x31f (fffff803`21d70d8f)

nt!MiWriteComplete+0x373:
fffff803`21d70de3 498b0424        mov     rax,qword ptr [r12]
fffff803`21d70de7 488d3c40        lea     rdi,[rax+rax*2]
fffff803`21d70deb 48b82000000080faffff mov rax,0FFFFFA8000000020h
fffff803`21d70df5 4803ff          add     rdi,rdi
fffff803`21d70df8 488b3cf8        mov     rdi,qword ptr [rax+rdi*8]
fffff803`21d70dfc 480fbaf70d      btr     rdi,0Dh
fffff803`21d70e01 e9a1fdffff      jmp     nt!MiWriteComplete+0x137 (fffff803`21d70ba7)

nt!MiWriteComplete+0x396:
fffff803`21d70e06 4533c9          xor     r9d,r9d
fffff803`21d70e09 89542420        mov     dword ptr [rsp+20h],edx
fffff803`21d70e0d 48b81400000080f7ffff mov rax,0FFFFF78000000014h
fffff803`21d70e17 488b00          mov     rax,qword ptr [rax]
fffff803`21d70e1a 488d542458      lea     rdx,[rsp+58h]
fffff803`21d70e1f 458d4105        lea     r8d,[r9+5]
fffff803`21d70e23 498bcf          mov     rcx,r15
fffff803`21d70e26 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`21d70e2b e8000f0300      call    nt!MI_PAGEFILE_WRITE (fffff803`21da1d30)
fffff803`21d70e30 8b9424c8000000  mov     edx,dword ptr [rsp+0C8h]
fffff803`21d70e37 e9edfcffff      jmp     nt!MiWriteComplete+0xb9 (fffff803`21d70b29)

nt!MiWriteComplete+0x3cc:
fffff803`21d70e3c 488d057ddc1c00  lea     rax,[nt!MiClusterWritesDisabled (fffff803`21f3eac0)]
fffff803`21d70e43 e9a0fcffff      jmp     nt!MiWriteComplete+0x78 (fffff803`21d70ae8)

nt!MiWriteComplete+0x3d8:
fffff803`21d70e48 418b4728        mov     eax,dword ptr [r15+28h]
fffff803`21d70e4c 241c            and     al,1Ch
fffff803`21d70e4e 3c08            cmp     al,8
fffff803`21d70e50 7306            jae     nt!MiWriteComplete+0x3e8 (fffff803`21d70e58)

nt!MiWriteComplete+0x3e2:
fffff803`21d70e52 ff0d18171a00    dec     dword ptr [nt!MiLowPriorityModWritesOutstanding (fffff803`21f12570)]

nt!MiWriteComplete+0x3e8:
fffff803`21d70e58 488b0529171a00  mov     rax,qword ptr [nt!MmPagingFileHeader+0x8 (fffff803`21f12588)]
fffff803`21d70e5f 488d151a171a00  lea     rdx,[nt!MmPagingFileHeader (fffff803`21f12580)]
fffff803`21d70e66 49894708        mov     qword ptr [r15+8],rax
fffff803`21d70e6a 498917          mov     qword ptr [r15],rdx
fffff803`21d70e6d 483910          cmp     qword ptr [rax],rdx
fffff803`21d70e70 0f85eaa70100    jne     nt! ?? ::FNODOBFM::`string'+0x23b55 (fffff803`21d8b660)

nt!MiWriteComplete+0x406:
fffff803`21d70e76 833d2b171a0001  cmp     dword ptr [nt!MiNeedPageFileMdl (fffff803`21f125a8)],1
fffff803`21d70e7d 4c8938          mov     qword ptr [rax],r15
fffff803`21d70e80 488d0509171a00  lea     rax,[nt!MmPagingFileHeader+0x10 (fffff803`21f12590)]
fffff803`21d70e87 480f45c1        cmovne  rax,rcx
fffff803`21d70e8b 4c893df6161a00  mov     qword ptr [nt!MmPagingFileHeader+0x8 (fffff803`21f12588)],r15
fffff803`21d70e92 4889442440      mov     qword ptr [rsp+40h],rax
fffff803`21d70e97 e915feffff      jmp     nt!MiWriteComplete+0x241 (fffff803`21d70cb1)

nt!MiWriteComplete+0x42c:
fffff803`21d70e9c 8bac24c8000000  mov     ebp,dword ptr [rsp+0C8h]
fffff803`21d70ea3 e9cefeffff      jmp     nt!MiWriteComplete+0x306 (fffff803`21d70d76)

nt!MiWriteComplete+0x438:
fffff803`21d70ea8 4533c0          xor     r8d,r8d
fffff803`21d70eab 33d2            xor     edx,edx
fffff803`21d70ead e8ce7ff9ff      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21d70eb2 e9e6feffff      jmp     nt!MiWriteComplete+0x32d (fffff803`21d70d9d)

nt!MiWriteComplete+0x447:
fffff803`21d70eb7 4d8b7738        mov     r14,qword ptr [r15+38h]
fffff803`21d70ebb 40f6c701        test    dil,1
fffff803`21d70ebf 7443            je      nt!MiWriteComplete+0x494 (fffff803`21d70f04)

nt!MiWriteComplete+0x451:
fffff803`21d70ec1 4883e7fe        and     rdi,0FFFFFFFFFFFFFFFEh

nt!MiWriteComplete+0x455:
fffff803`21d70ec5 488bd7          mov     rdx,rdi
fffff803`21d70ec8 498bce          mov     rcx,r14
fffff803`21d70ecb e860150000      call    nt!FsRtlReleaseFileForModWrite (fffff803`21d72430)
fffff803`21d70ed0 498bd6          mov     rdx,r14
fffff803`21d70ed3 498bcd          mov     rcx,r13
fffff803`21d70ed6 e8e9d0fdff      call    nt!MI_DEREFERENCE_CONTROL_AREA_FILE (fffff803`21d4dfc4)
fffff803`21d70edb 4c8b742448      mov     r14,qword ptr [rsp+48h]
fffff803`21d70ee0 8b9424c8000000  mov     edx,dword ptr [rsp+0C8h]
fffff803`21d70ee7 e93dfcffff      jmp     nt!MiWriteComplete+0xb9 (fffff803`21d70b29)

nt!MiWriteComplete+0x47c:
fffff803`21d70eec c605d5db1c0000  mov     byte ptr [nt!MiDelayMappedWrite (fffff803`21f3eac8)],0
fffff803`21d70ef3 e9dafeffff      jmp     nt!MiWriteComplete+0x362 (fffff803`21d70dd2)

nt!MiWriteComplete+0x488:
fffff803`21d70ef8 33d2            xor     edx,edx
fffff803`21d70efa e861221700      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`21d70eff e95cfeffff      jmp     nt!MiWriteComplete+0x2f0 (fffff803`21d70d60)

nt!MiWriteComplete+0x494:
fffff803`21d70f04 498b4e28        mov     rcx,qword ptr [r14+28h]
fffff803`21d70f08 448bca          mov     r9d,edx
fffff803`21d70f0b 498b5750        mov     rdx,qword ptr [r15+50h]
fffff803`21d70f0f e8ec62f0ff      call    nt!CcNotifyOfMappedWriteComplete (fffff803`21c77200)
fffff803`21d70f14 ebaf            jmp     nt!MiWriteComplete+0x455 (fffff803`21d70ec5)

nt!MiWriteComplete+0x4a6:
fffff803`21d70f16 81fd9a0000c0    cmp     ebp,0C000009Ah
fffff803`21d70f1c 742d            je      nt!MiWriteComplete+0x4db (fffff803`21d70f4b)

nt!MiWriteComplete+0x4ae:
fffff803`21d70f1e 81fda10000c0    cmp     ebp,0C00000A1h
fffff803`21d70f24 7425            je      nt!MiWriteComplete+0x4db (fffff803`21d70f4b)

nt!MiWriteComplete+0x4b6:
fffff803`21d70f26 81fd170000c0    cmp     ebp,0C0000017h
fffff803`21d70f2c 741d            je      nt!MiWriteComplete+0x4db (fffff803`21d70f4b)

nt!MiWriteComplete+0x4be:
fffff803`21d70f2e 81bc24d800000000100000 cmp dword ptr [rsp+0D8h],1000h
fffff803`21d70f39 0f8f3aa80100    jg      nt! ?? ::FNODOBFM::`string'+0x23c72 (fffff803`21d8b779)

nt!MiWriteComplete+0x4cf:
fffff803`21d70f3f 81fd540000c0    cmp     ebp,0C0000054h
fffff803`21d70f45 0f8544feffff    jne     nt!MiWriteComplete+0x31f (fffff803`21d70d8f)

nt!MiWriteComplete+0x4db:
fffff803`21d70f4b 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff803`21d70f50 c7010a000000    mov     dword ptr [rcx],0Ah
fffff803`21d70f56 e934feffff      jmp     nt!MiWriteComplete+0x31f (fffff803`21d70d8f)

nt!MiWriteComplete+0x4eb:
fffff803`21d70f5b 488bce          mov     rcx,rsi
fffff803`21d70f5e e805baf1ff      call    nt!MiReleaseControlAreaWaiters (fffff803`21c8c968)
fffff803`21d70f63 e9e4fdffff      jmp     nt!MiWriteComplete+0x2dc (fffff803`21d70d4c)

nt!MiWriteComplete+0x500:
fffff803`21d70f69 8b4108          mov     eax,dword ptr [rcx+8]
fffff803`21d70f6c 4c8b01          mov     r8,qword ptr [rcx]
fffff803`21d70f6f a808            test    al,8
fffff803`21d70f71 0f849c000000    je      nt!MiWriteComplete+0x5a3 (fffff803`21d71013)

nt!MiWriteComplete+0x50e:
fffff803`21d70f77 488931          mov     qword ptr [rcx],rsi
fffff803`21d70f7a 488bf1          mov     rsi,rcx
fffff803`21d70f7d 4c8902          mov     qword ptr [rdx],r8

nt!MiWriteComplete+0x517:
fffff803`21d70f80 498bc8          mov     rcx,r8
fffff803`21d70f83 4d85c0          test    r8,r8
fffff803`21d70f86 0f8491fdffff    je      nt!MiWriteComplete+0x2ad (fffff803`21d70d1d)

nt!MiWriteComplete+0x523:
fffff803`21d70f8c ebdb            jmp     nt!MiWriteComplete+0x500 (fffff803`21d70f69)

nt!MiWriteComplete+0x525:
fffff803`21d70f8e 488b4b18        mov     rcx,qword ptr [rbx+18h]
fffff803`21d70f92 488bd3          mov     rdx,rbx
fffff803`21d70f95 e81e14feff      call    nt!MmUnmapLockedPages (fffff803`21d523b8)
fffff803`21d70f9a 448b8424d8000000 mov     r8d,dword ptr [rsp+0D8h]
fffff803`21d70fa2 e91ffbffff      jmp     nt!MiWriteComplete+0x56 (fffff803`21d70ac6)

nt!MiWriteComplete+0x540:
fffff803`21d70fb0 ffc3            inc     ebx
fffff803`21d70fb2 851d94942500    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],ebx
fffff803`21d70fb8 0f84e1a50100    je      nt! ?? ::FNODOBFM::`string'+0x23a89 (fffff803`21d8b59f)

nt!MiWriteComplete+0x54e:
fffff803`21d70fbe f390            pause

nt!MiWriteComplete+0x550:
fffff803`21d70fc0 418b4610        mov     eax,dword ptr [r14+10h]
fffff803`21d70fc4 a801            test    al,1
fffff803`21d70fc6 75e8            jne     nt!MiWriteComplete+0x540 (fffff803`21d70fb0)

nt!MiWriteComplete+0x558:
fffff803`21d70fc8 f0410fba6e1000  lock bts dword ptr [r14+10h],0
fffff803`21d70fcf 0f8331fcffff    jae     nt!MiWriteComplete+0x196 (fffff803`21d70c06)

nt!MiWriteComplete+0x565:
fffff803`21d70fd5 ebd9            jmp     nt!MiWriteComplete+0x540 (fffff803`21d70fb0)

nt!MiWriteComplete+0x567:
fffff803`21d70fd7 498d4d48        lea     rcx,[r13+48h]
fffff803`21d70fdb e8dcc6f3ff      call    nt!ExpWaitForSpinLockExclusiveAndAcquire (fffff803`21cad6bc)
fffff803`21d70fe0 8bf0            mov     esi,eax
fffff803`21d70fe2 e90ffdffff      jmp     nt!MiWriteComplete+0x286 (fffff803`21d70cf6)

nt!MiWriteComplete+0x577:
fffff803`21d70fe7 b901000000      mov     ecx,1
fffff803`21d70fec e90ffbffff      jmp     nt!MiWriteComplete+0x90 (fffff803`21d70b00)

nt!MiWriteComplete+0x581:
fffff803`21d70ff1 33c9            xor     ecx,ecx
fffff803`21d70ff3 e943fbffff      jmp     nt!MiWriteComplete+0xcb (fffff803`21d70b3b)

nt!MiWriteComplete+0x588:
fffff803`21d70ff8 bd01000000      mov     ebp,1
fffff803`21d70ffd e960fbffff      jmp     nt!MiWriteComplete+0xf2 (fffff803`21d70b62)

nt!MiWriteComplete+0x592:
fffff803`21d71002 4c8b742438      mov     r14,qword ptr [rsp+38h]
fffff803`21d71007 e93bfcffff      jmp     nt!MiWriteComplete+0x1d7 (fffff803`21d70c47)

nt!MiWriteComplete+0x59c:
fffff803`21d7100c f390            pause
fffff803`21d7100e e9e6a60100      jmp     nt! ?? ::FNODOBFM::`string'+0x23bee (fffff803`21d8b6f9)

nt!MiWriteComplete+0x5a3:
fffff803`21d71013 488bd1          mov     rdx,rcx
fffff803`21d71016 e965ffffff      jmp     nt!MiWriteComplete+0x517 (fffff803`21d70f80)

nt! ?? ::FNODOBFM::`string'+0x150c6:
fffff803`21d8b430 48395318        cmp     qword ptr [rbx+18h],rdx
fffff803`21d8b434 0f874982f6ff    ja      nt!KiExpireTimerTable+0x87 (fffff803`21cf3683)

nt! ?? ::FNODOBFM::`string'+0x150d0:
fffff803`21d8b43a e93682f6ff      jmp     nt!KiExpireTimerTable+0x79 (fffff803`21cf3675)

nt! ?? ::FNODOBFM::`string'+0x150d5:
fffff803`21d8b43f 8b052bec2300    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21d8b445 a840            test    al,40h
fffff803`21d8b447 0f84ca83f6ff    je      nt!KiExpireTimerTable+0x220 (fffff803`21cf3817)

nt! ?? ::FNODOBFM::`string'+0x150e3:
fffff803`21d8b44d 418bcf          mov     ecx,r15d
fffff803`21d8b450 e86fff0400      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21d8b455 90              nop
fffff803`21d8b456 e9be83f6ff      jmp     nt!KiExpireTimerTable+0x222 (fffff803`21cf3819)

nt! ?? ::FNODOBFM::`string'+0x150f1:
fffff803`21d8b45b f04983242400    lock and qword ptr [r12],0
fffff803`21d8b461 488b9424d0000000 mov     rdx,qword ptr [rsp+0D0h]
fffff803`21d8b469 488b8c24a0000000 mov     rcx,qword ptr [rsp+0A0h]
fffff803`21d8b471 41b940000000    mov     r9d,40h
fffff803`21d8b477 e8949bf6ff      call    nt!KiProcessExpiredTimerList (fffff803`21cf5010)
fffff803`21d8b47c 4533d2          xor     r10d,r10d
fffff803`21d8b47f 44899424b0000000 mov     dword ptr [rsp+0B0h],r10d
fffff803`21d8b487 483b36          cmp     rsi,qword ptr [rsi]
fffff803`21d8b48a 0f853182f6ff    jne     nt!KiExpireTimerTable+0xc5 (fffff803`21cf36c1)

nt! ?? ::FNODOBFM::`string'+0x15126:
fffff803`21d8b490 4c8b8424a8000000 mov     r8,qword ptr [rsp+0A8h]
fffff803`21d8b498 e97582f6ff      jmp     nt!KiExpireTimerTable+0x116 (fffff803`21cf3712)

nt! ?? ::FNODOBFM::`string'+0x15133:
fffff803`21d8b49d ba08000000      mov     edx,8
fffff803`21d8b4a2 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`21d8b4a7 b9c7000000      mov     ecx,0C7h
fffff803`21d8b4ac 448d42f9        lea     r8d,[rdx-7]
fffff803`21d8b4b0 e88b0ff4ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21d8b4b5 cc              int     3
fffff803`21d8b4b6 90              nop
fffff803`21d8b4b7 90              nop
fffff803`21d8b4b8 488bcb          mov     rcx,rbx
fffff803`21d8b4bb e8d8d40600      call    nt!MiRetardMdl (fffff803`21df8998)
fffff803`21d8b4c0 448b8424d8000000 mov     r8d,dword ptr [rsp+0D8h]
fffff803`21d8b4c8 e9ef55feff      jmp     nt!MiWriteComplete+0x4c (fffff803`21d70abc)

nt! ?? ::FNODOBFM::`string'+0x239a7:
fffff803`21d8b4cd 4d85ed          test    r13,r13
fffff803`21d8b4d0 746d            je      nt! ?? ::FNODOBFM::`string'+0x23a29 (fffff803`21d8b53f)

nt! ?? ::FNODOBFM::`string'+0x239b0:
fffff803`21d8b4d2 418b4538        mov     eax,dword ptr [r13+38h]
fffff803`21d8b4d6 8b9424c8000000  mov     edx,dword ptr [rsp+0C8h]
fffff803`21d8b4dd a810            test    al,10h
fffff803`21d8b4df 0f857d56feff    jne     nt!MiWriteComplete+0xf2 (fffff803`21d70b62)

nt! ?? ::FNODOBFM::`string'+0x239c3:
fffff803`21d8b4e5 81fa9a0000c0    cmp     edx,0C000009Ah
fffff803`21d8b4eb 7437            je      nt! ?? ::FNODOBFM::`string'+0x23a0e (fffff803`21d8b524)

nt! ?? ::FNODOBFM::`string'+0x239cf:
fffff803`21d8b4ed 81faa10000c0    cmp     edx,0C00000A1h
fffff803`21d8b4f3 742f            je      nt! ?? ::FNODOBFM::`string'+0x23a0e (fffff803`21d8b524)

nt! ?? ::FNODOBFM::`string'+0x239db:
fffff803`21d8b4f5 81fa170000c0    cmp     edx,0C0000017h
fffff803`21d8b4fb 7427            je      nt! ?? ::FNODOBFM::`string'+0x23a0e (fffff803`21d8b524)

nt! ?? ::FNODOBFM::`string'+0x239e7:
fffff803`21d8b4fd 81bc24d800000000100000 cmp dword ptr [rsp+0D8h],1000h
fffff803`21d8b508 0f8eea5afeff    jle     nt!MiWriteComplete+0x588 (fffff803`21d70ff8)

nt! ?? ::FNODOBFM::`string'+0x239f8:
fffff803`21d8b50e 8bca            mov     ecx,edx
fffff803`21d8b510 e81bb9f0ff      call    nt!FsRtlIsTotalDeviceFailure (fffff803`21c96e30)
fffff803`21d8b515 8b9424c8000000  mov     edx,dword ptr [rsp+0C8h]
fffff803`21d8b51c 84c0            test    al,al
fffff803`21d8b51e 0f85d45afeff    jne     nt!MiWriteComplete+0x588 (fffff803`21d70ff8)

nt! ?? ::FNODOBFM::`string'+0x23a0e:
fffff803`21d8b524 85ff            test    edi,edi
fffff803`21d8b526 0f84cc5afeff    je      nt!MiWriteComplete+0x588 (fffff803`21d70ff8)

nt! ?? ::FNODOBFM::`string'+0x23a16:
fffff803`21d8b52c 498d442408      lea     rax,[r12+8]
fffff803`21d8b531 4c3bf0          cmp     r14,rax
fffff803`21d8b534 0f872356feff    ja      nt!MiWriteComplete+0xed (fffff803`21d70b5d)

nt! ?? ::FNODOBFM::`string'+0x23a24:
fffff803`21d8b53a e9b95afeff      jmp     nt!MiWriteComplete+0x588 (fffff803`21d70ff8)

nt! ?? ::FNODOBFM::`string'+0x23a29:
fffff803`21d8b53f 4c638424c8000000 movsxd  r8,dword ptr [rsp+0C8h]
fffff803`21d8b547 ba20000000      mov     edx,20h
fffff803`21d8b54c 4c8bcb          mov     r9,rbx
fffff803`21d8b54f 8d4a5a          lea     ecx,[rdx+5Ah]
fffff803`21d8b552 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`21d8b557 e8e40ef4ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21d8b55c cc              int     3

nt! ?? ::FNODOBFM::`string'+0x23a47:
fffff803`21d8b55d 891569351b00    mov     dword ptr [nt!MiLastModifiedWriteError (fffff803`21f3eacc)],edx
fffff803`21d8b563 e90956feff      jmp     nt!MiWriteComplete+0x101 (fffff803`21d70b71)

nt! ?? ::FNODOBFM::`string'+0x23a52:
fffff803`21d8b568 4d85ed          test    r13,r13
fffff803`21d8b56b 0f850d56feff    jne     nt!MiWriteComplete+0x10e (fffff803`21d70b7e)

nt! ?? ::FNODOBFM::`string'+0x23a5b:
fffff803`21d8b571 40f6c601        test    sil,1
fffff803`21d8b575 0f850356feff    jne     nt!MiWriteComplete+0x10e (fffff803`21d70b7e)

nt! ?? ::FNODOBFM::`string'+0x23a65:
fffff803`21d8b57b e8b87b0700      call    nt!MiStoreGetWriteSupport (fffff803`21e03138)
fffff803`21d8b580 4c8bf0          mov     r14,rax
fffff803`21d8b583 e9f955feff      jmp     nt!MiWriteComplete+0x111 (fffff803`21d70b81)

nt! ?? ::FNODOBFM::`string'+0x23a72:
fffff803`21d8b588 ba01000000      mov     edx,1
fffff803`21d8b58d 498bcd          mov     rcx,r13
fffff803`21d8b590 e86fbe0600      call    nt!MiSetDeleteOnClose (fffff803`21df7404)
fffff803`21d8b595 488b4c2440      mov     rcx,qword ptr [rsp+40h]
fffff803`21d8b59a e9fb55feff      jmp     nt!MiWriteComplete+0x12a (fffff803`21d70b9a)

nt! ?? ::FNODOBFM::`string'+0x23a89:
fffff803`21d8b59f 8b05cbea2300    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21d8b5a5 a840            test    al,40h
fffff803`21d8b5a7 0f84115afeff    je      nt!MiWriteComplete+0x54e (fffff803`21d70fbe)

nt! ?? ::FNODOBFM::`string'+0x23a97:
fffff803`21d8b5ad 8bcb            mov     ecx,ebx
fffff803`21d8b5af e810fe0400      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21d8b5b4 90              nop
fffff803`21d8b5b5 e9065afeff      jmp     nt!MiWriteComplete+0x550 (fffff803`21d70fc0)

nt! ?? ::FNODOBFM::`string'+0x23aa4:
fffff803`21d8b5ba 418b4620        mov     eax,dword ptr [r14+20h]
fffff803`21d8b5be 480fbae00a      bt      rax,0Ah
fffff803`21d8b5c3 0f824e56feff    jb      nt!MiWriteComplete+0x1a7 (fffff803`21d70c17)

nt! ?? ::FNODOBFM::`string'+0x23ab3:
fffff803`21d8b5c9 0bf5            or      esi,ebp
fffff803`21d8b5cb e94a56feff      jmp     nt!MiWriteComplete+0x1aa (fffff803`21d70c1a)

nt! ?? ::FNODOBFM::`string'+0x23aba:
fffff803`21d8b5d0 4084f5          test    bpl,sil
fffff803`21d8b5d3 0f855c56feff    jne     nt!MiWriteComplete+0x1c5 (fffff803`21d70c35)

nt! ?? ::FNODOBFM::`string'+0x23ac3:
fffff803`21d8b5d9 410fb6461b      movzx   eax,byte ptr [r14+1Bh]
fffff803`21d8b5de a808            test    al,8
fffff803`21d8b5e0 7407            je      nt! ?? ::FNODOBFM::`string'+0x23ada (fffff803`21d8b5e9)

nt! ?? ::FNODOBFM::`string'+0x23ad0:
fffff803`21d8b5e2 b805000000      mov     eax,5
fffff803`21d8b5e7 eb06            jmp     nt! ?? ::FNODOBFM::`string'+0x23ae0 (fffff803`21d8b5ef)

nt! ?? ::FNODOBFM::`string'+0x23ada:
fffff803`21d8b5e9 0fb6c0          movzx   eax,al
fffff803`21d8b5ec 83e007          and     eax,7

nt! ?? ::FNODOBFM::`string'+0x23ae0:
fffff803`21d8b5ef 3b05a3541800    cmp     eax,dword ptr [nt!MiStoreMinModWritePriority (fffff803`21f10a98)]
fffff803`21d8b5f5 0f823a56feff    jb      nt!MiWriteComplete+0x1c5 (fffff803`21d70c35)

nt! ?? ::FNODOBFM::`string'+0x23aec:
fffff803`21d8b5fb 440fb6442448    movzx   r8d,byte ptr [rsp+48h]
fffff803`21d8b601 488bc1          mov     rax,rcx
fffff803`21d8b604 4533c9          xor     r9d,r9d
fffff803`21d8b607 4883c801        or      rax,1
fffff803`21d8b60b 33d2            xor     edx,edx
fffff803`21d8b60d 498bce          mov     rcx,r14
fffff803`21d8b610 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`21d8b615 48c744242000000000 mov   qword ptr [rsp+20h],0
fffff803`21d8b61e e8497b0700      call    nt!MiStoreWritePfn (fffff803`21e0316c)
fffff803`21d8b623 3d333303c0      cmp     eax,0C0033333h
fffff803`21d8b628 0f85d459feff    jne     nt!MiWriteComplete+0x592 (fffff803`21d71002)

nt! ?? ::FNODOBFM::`string'+0x23b1f:
fffff803`21d8b62e 4d3bef          cmp     r13,r15
fffff803`21d8b631 7312            jae     nt! ?? ::FNODOBFM::`string'+0x23b3a (fffff803`21d8b645)

nt! ?? ::FNODOBFM::`string'+0x23b28:
fffff803`21d8b633 e8007b0700      call    nt!MiStoreGetWriteSupport (fffff803`21e03138)
fffff803`21d8b638 4c8bf0          mov     r14,rax
fffff803`21d8b63b 4889442438      mov     qword ptr [rsp+38h],rax
fffff803`21d8b640 e90256feff      jmp     nt!MiWriteComplete+0x1d7 (fffff803`21d70c47)

nt! ?? ::FNODOBFM::`string'+0x23b3a:
fffff803`21d8b645 4533f6          xor     r14d,r14d
fffff803`21d8b648 4c89742438      mov     qword ptr [rsp+38h],r14
fffff803`21d8b64d e9f555feff      jmp     nt!MiWriteComplete+0x1d7 (fffff803`21d70c47)

nt! ?? ::FNODOBFM::`string'+0x23b47:
fffff803`21d8b652 488bcb          mov     rcx,rbx
fffff803`21d8b655 e876c4fdff      call    nt!MiReleaseConfirmedPageFileInfo (fffff803`21d67ad0)
fffff803`21d8b65a 90              nop
fffff803`21d8b65b e9f055feff      jmp     nt!MiWriteComplete+0x1e0 (fffff803`21d70c50)

nt! ?? ::FNODOBFM::`string'+0x23b55:
fffff803`21d8b660 b903000000      mov     ecx,3
fffff803`21d8b665 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x23b5c:
fffff803`21d8b667 ba30000000      mov     edx,30h
fffff803`21d8b66c b900020000      mov     ecx,200h
fffff803`21d8b671 41b84d6d6470    mov     r8d,70646D4Dh
fffff803`21d8b677 e894691500      call    nt!ExAllocatePoolWithTag (fffff803`21ee2010)
fffff803`21d8b67c 488bd8          mov     rbx,rax
fffff803`21d8b67f 4885c0          test    rax,rax
fffff803`21d8b682 0f843b56feff    je      nt!MiWriteComplete+0x253 (fffff803`21d70cc3)

nt! ?? ::FNODOBFM::`string'+0x23b7d:
fffff803`21d8b688 498bcd          mov     rcx,r13
fffff803`21d8b68b e8a898fbff      call    nt!MI_REFERENCE_CONTROL_AREA_FILE (fffff803`21d44f38)
fffff803`21d8b690 8bac24c8000000  mov     ebp,dword ptr [rsp+0C8h]
fffff803`21d8b697 ba01000000      mov     edx,1
fffff803`21d8b69c 48894320        mov     qword ptr [rbx+20h],rax
fffff803`21d8b6a0 488d0505564500  lea     rax,[nt!MiLdwPopupWorker (fffff803`221e0cac)]
fffff803`21d8b6a7 488bcb          mov     rcx,rbx
fffff803`21d8b6aa 896b28          mov     dword ptr [rbx+28h],ebp
fffff803`21d8b6ad 48895b18        mov     qword ptr [rbx+18h],rbx
fffff803`21d8b6b1 48c70300000000  mov     qword ptr [rbx],0
fffff803`21d8b6b8 48894310        mov     qword ptr [rbx+10h],rax
fffff803`21d8b6bc e80fa0f7ff      call    nt!ExQueueWorkItem (fffff803`21d056d0)
fffff803`21d8b6c1 90              nop
fffff803`21d8b6c2 e90356feff      jmp     nt!MiWriteComplete+0x25a (fffff803`21d70cca)

nt! ?? ::FNODOBFM::`string'+0x23bbc:
fffff803`21d8b6c7 498d4d48        lea     rcx,[r13+48h]
fffff803`21d8b6cb e8d4a90a00      call    nt!ExpAcquireSpinLockExclusiveAtDpcLevelInstrumented (fffff803`21e360a4)
fffff803`21d8b6d0 90              nop
fffff803`21d8b6d1 e93056feff      jmp     nt!MiWriteComplete+0x296 (fffff803`21d70d06)

nt! ?? ::FNODOBFM::`string'+0x23bcb:
fffff803`21d8b6d6 ffc6            inc     esi
fffff803`21d8b6d8 85356eed2300    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21d8b6de 0f852859feff    jne     nt!MiWriteComplete+0x59c (fffff803`21d7100c)

nt! ?? ::FNODOBFM::`string'+0x23bd9:
fffff803`21d8b6e4 8b0586e92300    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21d8b6ea a840            test    al,40h
fffff803`21d8b6ec 0f841a59feff    je      nt!MiWriteComplete+0x59c (fffff803`21d7100c)

nt! ?? ::FNODOBFM::`string'+0x23be7:
fffff803`21d8b6f2 8bce            mov     ecx,esi
fffff803`21d8b6f4 e8cbfc0400      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x23bee:
fffff803`21d8b6f9 418b4548        mov     eax,dword ptr [r13+48h]
fffff803`21d8b6fd 3d00000080      cmp     eax,80000000h
fffff803`21d8b702 75d2            jne     nt! ?? ::FNODOBFM::`string'+0x23bcb (fffff803`21d8b6d6)

nt! ?? ::FNODOBFM::`string'+0x23bf9:
fffff803`21d8b704 e9fd55feff      jmp     nt!MiWriteComplete+0x296 (fffff803`21d70d06)

nt! ?? ::FNODOBFM::`string'+0x23bfe:
fffff803`21d8b709 488b9424b8000000 mov     rdx,qword ptr [rsp+0B8h]
fffff803`21d8b711 498d4d48        lea     rcx,[r13+48h]
fffff803`21d8b715 e866a90a00      call    nt!ExpReleaseSpinLockExclusiveFromDpcLevelInstrumented (fffff803`21e36080)
fffff803`21d8b71a 90              nop
fffff803`21d8b71b e91b56feff      jmp     nt!MiWriteComplete+0x2cb (fffff803`21d70d3b)

nt! ?? ::FNODOBFM::`string'+0x23c15:
fffff803`21d8b720 488b05a16e1800  mov     rax,qword ptr [nt!MmMappedFileHeader+0x8 (fffff803`21f125c8)]
fffff803`21d8b727 488d0d926e1800  lea     rcx,[nt!MmMappedFileHeader (fffff803`21f125c0)]
fffff803`21d8b72e 49894708        mov     qword ptr [r15+8],rax
fffff803`21d8b732 49890f          mov     qword ptr [r15],rcx
fffff803`21d8b735 483908          cmp     qword ptr [rax],rcx
fffff803`21d8b738 7407            je      nt! ?? ::FNODOBFM::`string'+0x23c3a (fffff803`21d8b741)

nt! ?? ::FNODOBFM::`string'+0x23c33:
fffff803`21d8b73a b903000000      mov     ecx,3
fffff803`21d8b73f cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x23c3a:
fffff803`21d8b741 833d68331b0001  cmp     dword ptr [nt!MiNeedMappedMdl (fffff803`21f3eab0)],1
fffff803`21d8b748 4c8938          mov     qword ptr [rax],r15
fffff803`21d8b74b 4c893d766e1800  mov     qword ptr [nt!MmMappedFileHeader+0x8 (fffff803`21f125c8)],r15
fffff803`21d8b752 0f851e56feff    jne     nt!MiWriteComplete+0x306 (fffff803`21d70d76)

nt! ?? ::FNODOBFM::`string'+0x23c51:
fffff803`21d8b758 488d0d716e1800  lea     rcx,[nt!MmMappedFileHeader+0x10 (fffff803`21f125d0)]
fffff803`21d8b75f ba01000000      mov     edx,1
fffff803`21d8b764 c70542331b0000000000 mov dword ptr [nt!MiNeedMappedMdl (fffff803`21f3eab0)],0
fffff803`21d8b76e e8c92cf2ff      call    nt!KeSignalGate (fffff803`21cae43c)
fffff803`21d8b773 90              nop
fffff803`21d8b774 e9fd55feff      jmp     nt!MiWriteComplete+0x306 (fffff803`21d70d76)

nt! ?? ::FNODOBFM::`string'+0x23c72:
fffff803`21d8b779 8bcd            mov     ecx,ebp
fffff803`21d8b77b e8b0b6f0ff      call    nt!FsRtlIsTotalDeviceFailure (fffff803`21c96e30)
fffff803`21d8b780 84c0            test    al,al
fffff803`21d8b782 0f84c357feff    je      nt!MiWriteComplete+0x4db (fffff803`21d70f4b)

nt! ?? ::FNODOBFM::`string'+0x23c81:
fffff803`21d8b788 e9b257feff      jmp     nt!MiWriteComplete+0x4cf (fffff803`21d70f3f)

nt! ?? ::FNODOBFM::`string'+0x23c86:
fffff803`21d8b78d 498bce          mov     rcx,r14
fffff803`21d8b790 e86f7e0700      call    nt!MiStoreFreeWriteSupport (fffff803`21e03604)
fffff803`21d8b795 90              nop
fffff803`21d8b796 e90b56feff      jmp     nt!MiWriteComplete+0x336 (fffff803`21d70da6)
