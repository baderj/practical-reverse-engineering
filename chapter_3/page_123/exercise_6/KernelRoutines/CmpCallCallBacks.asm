nt!CmpCallCallBacks:
fffff803`2214d640 44894c2420      mov     dword ptr [rsp+20h],r9d
fffff803`2214d645 4488442418      mov     byte ptr [rsp+18h],r8b
fffff803`2214d64a 4889542410      mov     qword ptr [rsp+10h],rdx
fffff803`2214d64f 894c2408        mov     dword ptr [rsp+8],ecx
fffff803`2214d653 53              push    rbx
fffff803`2214d654 56              push    rsi
fffff803`2214d655 57              push    rdi
fffff803`2214d656 4154            push    r12
fffff803`2214d658 4155            push    r13
fffff803`2214d65a 4156            push    r14
fffff803`2214d65c 4157            push    r15
fffff803`2214d65e 4881eca0000000  sub     rsp,0A0h
fffff803`2214d665 410fb6d8        movzx   ebx,r8b
fffff803`2214d669 4c8bea          mov     r13,rdx
fffff803`2214d66c 448bf9          mov     r15d,ecx
fffff803`2214d66f 33ff            xor     edi,edi
fffff803`2214d671 897c2424        mov     dword ptr [rsp+24h],edi
fffff803`2214d675 448be7          mov     r12d,edi
fffff803`2214d678 40887c2421      mov     byte ptr [rsp+21h],dil
fffff803`2214d67d 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`2214d686 4889442450      mov     qword ptr [rsp+50h],rax
fffff803`2214d68b 4180f801        cmp     r8b,1
fffff803`2214d68f 0f85c3030000    jne     nt!CmpCallCallBacks+0x418 (fffff803`2214da58)

nt!CmpCallCallBacks+0x55:
fffff803`2214d695 488b88a8040000  mov     rcx,qword ptr [rax+4A8h]
fffff803`2214d69c 4885c9          test    rcx,rcx
fffff803`2214d69f 0f853c040000    jne     nt!CmpCallCallBacks+0x4a1 (fffff803`2214dae1)

nt!CmpCallCallBacks+0x65:
fffff803`2214d6a5 4c8d35d4c4e0ff  lea     r14,[nt!CallbackListHead (fffff803`21f59b80)]

nt!CmpCallCallBacks+0x6c:
fffff803`2214d6ac c644242001      mov     byte ptr [rsp+20h],1
fffff803`2214d6b1 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`2214d6ba 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`2214d6c1 33c0            xor     eax,eax
fffff803`2214d6c3 41ba11000000    mov     r10d,11h
fffff803`2214d6c9 f04c0fb1159ec4e0ff lock cmpxchg qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)],r10
fffff803`2214d6d2 0f85c4030000    jne     nt!CmpCallCallBacks+0x45c (fffff803`2214da9c)

nt!CmpCallCallBacks+0x98:
fffff803`2214d6d8 488bb42408010000 mov     rsi,qword ptr [rsp+108h]

nt!CmpCallCallBacks+0xa0:
fffff803`2214d6e0 4d8b36          mov     r14,qword ptr [r14]
fffff803`2214d6e3 4c89742448      mov     qword ptr [rsp+48h],r14
fffff803`2214d6e8 488d0591c4e0ff  lea     rax,[nt!CallbackListHead (fffff803`21f59b80)]
fffff803`2214d6ef 4c3bf0          cmp     r14,rax
fffff803`2214d6f2 0f8498010000    je      nt!CmpCallCallBacks+0x250 (fffff803`2214d890)

nt!CmpCallCallBacks+0xb8:
fffff803`2214d6f8 418b4610        mov     eax,dword ptr [r14+10h]
fffff803`2214d6fc 85c0            test    eax,eax
fffff803`2214d6fe 78e0            js      nt!CmpCallCallBacks+0xa0 (fffff803`2214d6e0)

nt!CmpCallCallBacks+0xc0:
fffff803`2214d700 f041ff4610      lock inc dword ptr [r14+10h]
fffff803`2214d705 0f0d0d64c4e0ff  prefetchw [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2214d70c 488b055dc4e0ff  mov     rax,qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2214d713 488bc8          mov     rcx,rax
fffff803`2214d716 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`2214d71a 4883f910        cmp     rcx,10h
fffff803`2214d71e 0f8789030000    ja      nt!CmpCallCallBacks+0x46d (fffff803`2214daad)

nt!CmpCallCallBacks+0xe4:
fffff803`2214d724 488bcf          mov     rcx,rdi

nt!CmpCallCallBacks+0xe7:
fffff803`2214d727 a802            test    al,2
fffff803`2214d729 0f8590030000    jne     nt!CmpCallCallBacks+0x47f (fffff803`2214dabf)

nt!CmpCallCallBacks+0xef:
fffff803`2214d72f f0480fb10d38c4e0ff lock cmpxchg qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)],rcx
fffff803`2214d738 0f8581030000    jne     nt!CmpCallCallBacks+0x47f (fffff803`2214dabf)

nt!CmpCallCallBacks+0xfe:
fffff803`2214d73e 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`2214d747 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`2214d74e ffc0            inc     eax
fffff803`2214d750 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`2214d757 6685c0          test    ax,ax
fffff803`2214d75a 0f8409030000    je      nt!CmpCallCallBacks+0x429 (fffff803`2214da69)

nt!CmpCallCallBacks+0x120:
fffff803`2214d760 32c0            xor     al,al
fffff803`2214d762 88442420        mov     byte ptr [rsp+20h],al
fffff803`2214d766 488d0dd365daff  lea     rcx,[nt!CmpCallbackContextSList (fffff803`21ef3d40)]
fffff803`2214d76d e8de95b7ff      call    nt!ExpInterlockedPopEntrySList (fffff803`21cc6d50)
fffff803`2214d772 4c8bc0          mov     r8,rax
fffff803`2214d775 4889442440      mov     qword ptr [rsp+40h],rax
fffff803`2214d77a 4885c0          test    rax,rax
fffff803`2214d77d 0f84c2030000    je      nt!CmpCallCallBacks+0x505 (fffff803`2214db45)

nt!CmpCallCallBacks+0x143:
fffff803`2214d783 4c89442430      mov     qword ptr [rsp+30h],r8
fffff803`2214d788 4d85c0          test    r8,r8
fffff803`2214d78b 0f8459030000    je      nt!CmpCallCallBacks+0x4aa (fffff803`2214daea)

nt!CmpCallCallBacks+0x151:
fffff803`2214d791 4d897018        mov     qword ptr [r8+18h],r14
fffff803`2214d795 49897820        mov     qword ptr [r8+20h],rdi
fffff803`2214d799 498d4810        lea     rcx,[r8+10h]
fffff803`2214d79d 488b542450      mov     rdx,qword ptr [rsp+50h]
fffff803`2214d7a2 488b82a8040000  mov     rax,qword ptr [rdx+4A8h]
fffff803`2214d7a9 488901          mov     qword ptr [rcx],rax
fffff803`2214d7ac 48898aa8040000  mov     qword ptr [rdx+4A8h],rcx
fffff803`2214d7b3 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`2214d7b7 498930          mov     qword ptr [r8],rsi
fffff803`2214d7ba 49894008        mov     qword ptr [r8+8],rax
fffff803`2214d7be 483930          cmp     qword ptr [rax],rsi
fffff803`2214d7c1 0f85b3450f00    jne     nt! ?? ::NNGAKEGL::`string'+0x55cf (fffff803`22241d7a)

nt!CmpCallCallBacks+0x187:
fffff803`2214d7c7 4c8900          mov     qword ptr [rax],r8
fffff803`2214d7ca 4c894608        mov     qword ptr [rsi+8],r8
fffff803`2214d7ce 4d8d4618        lea     r8,[r14+18h]
fffff803`2214d7d2 498bd5          mov     rdx,r13
fffff803`2214d7d5 418bcf          mov     ecx,r15d
fffff803`2214d7d8 e843f3ffff      call    nt!CmpCallbackFillObjectContext (fffff803`2214cb20)
fffff803`2214d7dd 90              nop
fffff803`2214d7de 4963d7          movsxd  rdx,r15d
fffff803`2214d7e1 4d8bc5          mov     r8,r13
fffff803`2214d7e4 498b4e20        mov     rcx,qword ptr [r14+20h]
fffff803`2214d7e8 41ff5628        call    qword ptr [r14+28h]
fffff803`2214d7ec 89442424        mov     dword ptr [rsp+24h],eax
fffff803`2214d7f0 4c8b442440      mov     r8,qword ptr [rsp+40h]
fffff803`2214d7f5 41ba11000000    mov     r10d,11h
fffff803`2214d7fb eb3f            jmp     nt!CmpCallCallBacks+0x1fc (fffff803`2214d83c)

nt!CmpCallCallBacks+0x1fc:
fffff803`2214d83c 4183ff0e        cmp     r15d,0Eh
fffff803`2214d840 0f844d020000    je      nt!CmpCallCallBacks+0x453 (fffff803`2214da93)

nt!CmpCallCallBacks+0x206:
fffff803`2214d846 85c0            test    eax,eax
fffff803`2214d848 0f8833450f00    js      nt! ?? ::NNGAKEGL::`string'+0x55d6 (fffff803`22241d81)

nt!CmpCallCallBacks+0x20e:
fffff803`2214d84e 498bd5          mov     rdx,r13
fffff803`2214d851 418bcf          mov     ecx,r15d
fffff803`2214d854 e8c7fcffff      call    nt!CmpCallbackFetchCallContext (fffff803`2214d520)
fffff803`2214d859 c644242001      mov     byte ptr [rsp+20h],1
fffff803`2214d85e 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`2214d867 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`2214d86e 33c0            xor     eax,eax
fffff803`2214d870 f04c0fb115f7c2e0ff lock cmpxchg qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)],r10
fffff803`2214d879 0f8461feffff    je      nt!CmpCallCallBacks+0xa0 (fffff803`2214d6e0)

nt!CmpCallCallBacks+0x23f:
fffff803`2214d87f 488d0deac2e0ff  lea     rcx,[nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2214d886 e8b5ffbcff      call    nt!ExfAcquirePushLockShared (fffff803`21d1d840)
fffff803`2214d88b e950feffff      jmp     nt!CmpCallCallBacks+0xa0 (fffff803`2214d6e0)

nt!CmpCallCallBacks+0x250:
fffff803`2214d890 8b4c2424        mov     ecx,dword ptr [rsp+24h]

nt!CmpCallCallBacks+0x254:
fffff803`2214d894 807c242000      cmp     byte ptr [rsp+20h],0
fffff803`2214d899 745f            je      nt!CmpCallCallBacks+0x2ba (fffff803`2214d8fa)

nt!CmpCallCallBacks+0x25b:
fffff803`2214d89b 0f0d0dcec2e0ff  prefetchw [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2214d8a2 488b05c7c2e0ff  mov     rax,qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2214d8a9 488bc8          mov     rcx,rax
fffff803`2214d8ac 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`2214d8b0 4883f910        cmp     rcx,10h
fffff803`2214d8b4 0f87fc010000    ja      nt!CmpCallCallBacks+0x476 (fffff803`2214dab6)

nt!CmpCallCallBacks+0x27a:
fffff803`2214d8ba 488bcf          mov     rcx,rdi

nt!CmpCallCallBacks+0x27d:
fffff803`2214d8bd a802            test    al,2
fffff803`2214d8bf 0f850b020000    jne     nt!CmpCallCallBacks+0x490 (fffff803`2214dad0)

nt!CmpCallCallBacks+0x285:
fffff803`2214d8c5 f0480fb10da2c2e0ff lock cmpxchg qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)],rcx
fffff803`2214d8ce 0f85fc010000    jne     nt!CmpCallCallBacks+0x490 (fffff803`2214dad0)

nt!CmpCallCallBacks+0x294:
fffff803`2214d8d4 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`2214d8dd 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`2214d8e4 ffc0            inc     eax
fffff803`2214d8e6 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`2214d8ed 6685c0          test    ax,ax
fffff803`2214d8f0 0f8488010000    je      nt!CmpCallCallBacks+0x43e (fffff803`2214da7e)

nt!CmpCallCallBacks+0x2b6:
fffff803`2214d8f6 8b4c2424        mov     ecx,dword ptr [rsp+24h]

nt!CmpCallCallBacks+0x2ba:
fffff803`2214d8fa 448b8c24f8000000 mov     r9d,dword ptr [rsp+0F8h]

nt!CmpCallCallBacks+0x2c2:
fffff803`2214d902 84db            test    bl,bl
fffff803`2214d904 7426            je      nt!CmpCallCallBacks+0x2ec (fffff803`2214d92c)

nt!CmpCallCallBacks+0x2c6:
fffff803`2214d906 41bf030500c0    mov     r15d,0C0000503h

nt!CmpCallCallBacks+0x2cc:
fffff803`2214d90c 807c242101      cmp     byte ptr [rsp+21h],1
fffff803`2214d911 0f84ed450f00    je      nt! ?? ::NNGAKEGL::`string'+0x5777 (fffff803`22241f04)

nt!CmpCallCallBacks+0x2d7:
fffff803`2214d917 8bc1            mov     eax,ecx
fffff803`2214d919 4881c4a0000000  add     rsp,0A0h
fffff803`2214d920 415f            pop     r15
fffff803`2214d922 415e            pop     r14
fffff803`2214d924 415d            pop     r13
fffff803`2214d926 415c            pop     r12
fffff803`2214d928 5f              pop     rdi
fffff803`2214d929 5e              pop     rsi
fffff803`2214d92a 5b              pop     rbx
fffff803`2214d92b c3              ret

nt!CmpCallCallBacks+0x2ec:
fffff803`2214d92c 807c242101      cmp     byte ptr [rsp+21h],1
fffff803`2214d931 0f8405450f00    je      nt! ?? ::NNGAKEGL::`string'+0x56a4 (fffff803`22241e3c)

nt!CmpCallCallBacks+0x2f7:
fffff803`2214d937 4d8be5          mov     r12,r13
fffff803`2214d93a 4c896c2438      mov     qword ptr [rsp+38h],r13
fffff803`2214d93f 458bcf          mov     r9d,r15d
fffff803`2214d942 4489bc24f8000000 mov     dword ptr [rsp+0F8h],r15d
fffff803`2214d94a 41bf030500c0    mov     r15d,0C0000503h

nt!CmpCallCallBacks+0x310:
fffff803`2214d950 483936          cmp     qword ptr [rsi],rsi
fffff803`2214d953 74b7            je      nt!CmpCallCallBacks+0x2cc (fffff803`2214d90c)

nt!CmpCallCallBacks+0x315:
fffff803`2214d955 488b5e08        mov     rbx,qword ptr [rsi+8]
fffff803`2214d959 48895c2440      mov     qword ptr [rsp+40h],rbx
fffff803`2214d95e 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`2214d962 483933          cmp     qword ptr [rbx],rsi
fffff803`2214d965 0f8592450f00    jne     nt! ?? ::NNGAKEGL::`string'+0x5770 (fffff803`22241efd)

nt!CmpCallCallBacks+0x32b:
fffff803`2214d96b 483918          cmp     qword ptr [rax],rbx
fffff803`2214d96e 0f8589450f00    jne     nt! ?? ::NNGAKEGL::`string'+0x5770 (fffff803`22241efd)

nt!CmpCallCallBacks+0x334:
fffff803`2214d974 48894608        mov     qword ptr [rsi+8],rax
fffff803`2214d978 488930          mov     qword ptr [rax],rsi
fffff803`2214d97b 4c8b7318        mov     r14,qword ptr [rbx+18h]
fffff803`2214d97f 4c89742430      mov     qword ptr [rsp+30h],r14
fffff803`2214d984 488b4320        mov     rax,qword ptr [rbx+20h]
fffff803`2214d988 4989442420      mov     qword ptr [r12+20h],rax
fffff803`2214d98d 4d8d4618        lea     r8,[r14+18h]
fffff803`2214d991 498bd4          mov     rdx,r12
fffff803`2214d994 418bc9          mov     ecx,r9d
fffff803`2214d997 e884f1ffff      call    nt!CmpCallbackFillObjectContext (fffff803`2214cb20)
fffff803`2214d99c 90              nop
fffff803`2214d99d 48639424f8000000 movsxd  rdx,dword ptr [rsp+0F8h]
fffff803`2214d9a5 4d8bc4          mov     r8,r12
fffff803`2214d9a8 498b4e20        mov     rcx,qword ptr [r14+20h]
fffff803`2214d9ac 41ff5628        call    qword ptr [r14+28h]
fffff803`2214d9b0 89442424        mov     dword ptr [rsp+24h],eax
fffff803`2214d9b4 eb1f            jmp     nt!CmpCallCallBacks+0x395 (fffff803`2214d9d5)

nt!CmpCallCallBacks+0x395:
fffff803`2214d9d5 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff803`2214d9da 488b81a8040000  mov     rax,qword ptr [rcx+4A8h]
fffff803`2214d9e1 4885c0          test    rax,rax
fffff803`2214d9e4 740a            je      nt!CmpCallCallBacks+0x3b0 (fffff803`2214d9f0)

nt!CmpCallCallBacks+0x3a6:
fffff803`2214d9e6 488b00          mov     rax,qword ptr [rax]
fffff803`2214d9e9 488981a8040000  mov     qword ptr [rcx+4A8h],rax

nt!CmpCallCallBacks+0x3b0:
fffff803`2214d9f0 8b0d16c6e7ff    mov     ecx,dword ptr [nt!KeNumberProcessors (fffff803`21fca00c)]
fffff803`2214d9f6 0faf0d3363daff  imul    ecx,dword ptr [nt!CmpCallBackCount (fffff803`21ef3d30)]
fffff803`2214d9fd 83f940          cmp     ecx,40h
fffff803`2214da00 0f877b010000    ja      nt!CmpCallCallBacks+0x541 (fffff803`2214db81)

nt!CmpCallCallBacks+0x3c6:
fffff803`2214da06 0fb7053363daff  movzx   eax,word ptr [nt!CmpCallbackContextSList (fffff803`21ef3d40)]
fffff803`2214da0d 3bc1            cmp     eax,ecx
fffff803`2214da0f 0f8350010000    jae     nt!CmpCallCallBacks+0x525 (fffff803`2214db65)

nt!CmpCallCallBacks+0x3d5:
fffff803`2214da15 488bd3          mov     rdx,rbx
fffff803`2214da18 488d0d2163daff  lea     rcx,[nt!CmpCallbackContextSList (fffff803`21ef3d40)]
fffff803`2214da1f e8bc93b7ff      call    nt!ExpInterlockedPushEntrySList (fffff803`21cc6de0)

nt!CmpCallCallBacks+0x3e4:
fffff803`2214da24 83c8ff          or      eax,0FFFFFFFFh
fffff803`2214da27 f0410fc14610    lock xadd dword ptr [r14+10h],eax
fffff803`2214da2d ffc8            dec     eax
fffff803`2214da2f 3d00000080      cmp     eax,80000000h
fffff803`2214da34 0f848d440f00    je      nt! ?? ::NNGAKEGL::`string'+0x573a (fffff803`22241ec7)

nt!CmpCallCallBacks+0x3fa:
fffff803`2214da3a 44397c2424      cmp     dword ptr [rsp+24h],r15d
fffff803`2214da3f 0f84a9440f00    je      nt! ?? ::NNGAKEGL::`string'+0x5761 (fffff803`22241eee)

nt!CmpCallCallBacks+0x405:
fffff803`2214da45 8bcf            mov     ecx,edi
fffff803`2214da47 894c2424        mov     dword ptr [rsp+24h],ecx
fffff803`2214da4b 448b8c24f8000000 mov     r9d,dword ptr [rsp+0F8h]
fffff803`2214da53 e9f8feffff      jmp     nt!CmpCallCallBacks+0x310 (fffff803`2214d950)

nt!CmpCallCallBacks+0x418:
fffff803`2214da58 488bb42408010000 mov     rsi,qword ptr [rsp+108h]
fffff803`2214da60 8b4c2424        mov     ecx,dword ptr [rsp+24h]
fffff803`2214da64 e999feffff      jmp     nt!CmpCallCallBacks+0x2c2 (fffff803`2214d902)

nt!CmpCallCallBacks+0x429:
fffff803`2214da69 488d8198000000  lea     rax,[rcx+98h]
fffff803`2214da70 483900          cmp     qword ptr [rax],rax
fffff803`2214da73 0f84e7fcffff    je      nt!CmpCallCallBacks+0x120 (fffff803`2214d760)

nt!CmpCallCallBacks+0x439:
fffff803`2214da79 e997000000      jmp     nt!CmpCallCallBacks+0x4d5 (fffff803`2214db15)

nt!CmpCallCallBacks+0x43e:
fffff803`2214da7e 488d8198000000  lea     rax,[rcx+98h]
fffff803`2214da85 483900          cmp     qword ptr [rax],rax
fffff803`2214da88 0f8468feffff    je      nt!CmpCallCallBacks+0x2b6 (fffff803`2214d8f6)

nt!CmpCallCallBacks+0x44e:
fffff803`2214da8e e99a000000      jmp     nt!CmpCallCallBacks+0x4ed (fffff803`2214db2d)

nt!CmpCallCallBacks+0x453:
fffff803`2214da93 897c2424        mov     dword ptr [rsp+24h],edi
fffff803`2214da97 e9b2fdffff      jmp     nt!CmpCallCallBacks+0x20e (fffff803`2214d84e)

nt!CmpCallCallBacks+0x45c:
fffff803`2214da9c 488d0dcdc0e0ff  lea     rcx,[nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2214daa3 e898fdbcff      call    nt!ExfAcquirePushLockShared (fffff803`21d1d840)
fffff803`2214daa8 e92bfcffff      jmp     nt!CmpCallCallBacks+0x98 (fffff803`2214d6d8)

nt!CmpCallCallBacks+0x46d:
fffff803`2214daad 488d48f0        lea     rcx,[rax-10h]
fffff803`2214dab1 e971fcffff      jmp     nt!CmpCallCallBacks+0xe7 (fffff803`2214d727)

nt!CmpCallCallBacks+0x476:
fffff803`2214dab6 488d48f0        lea     rcx,[rax-10h]
fffff803`2214daba e9fefdffff      jmp     nt!CmpCallCallBacks+0x27d (fffff803`2214d8bd)

nt!CmpCallCallBacks+0x47f:
fffff803`2214dabf 488d0daac0e0ff  lea     rcx,[nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2214dac6 e821e9bdff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)
fffff803`2214dacb e96efcffff      jmp     nt!CmpCallCallBacks+0xfe (fffff803`2214d73e)

nt!CmpCallCallBacks+0x490:
fffff803`2214dad0 488d0d99c0e0ff  lea     rcx,[nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2214dad7 e810e9bdff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)
fffff803`2214dadc e9f3fdffff      jmp     nt!CmpCallCallBacks+0x294 (fffff803`2214d8d4)

nt!CmpCallCallBacks+0x4a1:
fffff803`2214dae1 4c8b7108        mov     r14,qword ptr [rcx+8]
fffff803`2214dae5 e9c2fbffff      jmp     nt!CmpCallCallBacks+0x6c (fffff803`2214d6ac)

nt!CmpCallCallBacks+0x4aa:
fffff803`2214daea 83c8ff          or      eax,0FFFFFFFFh
fffff803`2214daed f0410fc14610    lock xadd dword ptr [r14+10h],eax
fffff803`2214daf3 ffc8            dec     eax
fffff803`2214daf5 3d00000080      cmp     eax,80000000h
fffff803`2214dafa 0f8453420f00    je      nt! ?? ::NNGAKEGL::`string'+0x55a8 (fffff803`22241d53)

nt!CmpCallCallBacks+0x4c0:
fffff803`2214db00 b99a0000c0      mov     ecx,0C000009Ah
fffff803`2214db05 894c2424        mov     dword ptr [rsp+24h],ecx
fffff803`2214db09 c644242101      mov     byte ptr [rsp+21h],1
fffff803`2214db0e 32db            xor     bl,bl
fffff803`2214db10 e97ffdffff      jmp     nt!CmpCallCallBacks+0x254 (fffff803`2214d894)

nt!CmpCallCallBacks+0x4d5:
fffff803`2214db15 6683b9e601000000 cmp     word ptr [rcx+1E6h],0
fffff803`2214db1d 0f853dfcffff    jne     nt!CmpCallCallBacks+0x120 (fffff803`2214d760)

nt!CmpCallCallBacks+0x4e3:
fffff803`2214db23 e8d8bcc1ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`2214db28 e933fcffff      jmp     nt!CmpCallCallBacks+0x120 (fffff803`2214d760)

nt!CmpCallCallBacks+0x4ed:
fffff803`2214db2d 6683b9e601000000 cmp     word ptr [rcx+1E6h],0
fffff803`2214db35 0f85bbfdffff    jne     nt!CmpCallCallBacks+0x2b6 (fffff803`2214d8f6)

nt!CmpCallCallBacks+0x4fb:
fffff803`2214db3b e8c0bcc1ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`2214db40 e9b1fdffff      jmp     nt!CmpCallCallBacks+0x2b6 (fffff803`2214d8f6)

nt!CmpCallCallBacks+0x505:
fffff803`2214db45 ba30000000      mov     edx,30h
fffff803`2214db4a 8d4ad1          lea     ecx,[rdx-2Fh]
fffff803`2214db4d 41b8434d6369    mov     r8d,69634D43h
fffff803`2214db53 e8b844d9ff      call    nt!ExAllocatePoolWithTag (fffff803`21ee2010)
fffff803`2214db58 4c8bc0          mov     r8,rax
fffff803`2214db5b 4889442440      mov     qword ptr [rsp+40h],rax
fffff803`2214db60 e91efcffff      jmp     nt!CmpCallCallBacks+0x143 (fffff803`2214d783)

nt!CmpCallCallBacks+0x525:
fffff803`2214db65 33d2            xor     edx,edx
fffff803`2214db67 488bcb          mov     rcx,rbx
fffff803`2214db6a e8f155d9ff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`2214db6f e9b0feffff      jmp     nt!CmpCallCallBacks+0x3e4 (fffff803`2214da24)

nt!CmpCallCallBacks+0x534:
fffff803`2214db74 488bd7          mov     rdx,rdi

nt!CmpCallCallBacks+0x537:
fffff803`2214db77 4889542458      mov     qword ptr [rsp+58h],rdx
fffff803`2214db7c e92c430f00      jmp     nt! ?? ::NNGAKEGL::`string'+0x5720 (fffff803`22241ead)

nt!CmpCallCallBacks+0x541:
fffff803`2214db81 b940000000      mov     ecx,40h
fffff803`2214db86 e97bfeffff      jmp     nt!CmpCallCallBacks+0x3c6 (fffff803`2214da06)

nt! ?? ::NNGAKEGL::`string'+0x55a8:
fffff803`22241d53 f0830c2400      lock or dword ptr [rsp],0
fffff803`22241d58 48833d307ed1ff00 cmp     qword ptr [nt!CallbackListDeleteEvent (fffff803`21f59b90)],0
fffff803`22241d60 0f849abdf0ff    je      nt!CmpCallCallBacks+0x4c0 (fffff803`2214db00)

nt! ?? ::NNGAKEGL::`string'+0x55bb:
fffff803`22241d66 33d2            xor     edx,edx
fffff803`22241d68 488d0d217ed1ff  lea     rcx,[nt!CallbackListDeleteEvent (fffff803`21f59b90)]
fffff803`22241d6f e88467a4ff      call    nt!ExfUnblockPushLock (fffff803`21c884f8)
fffff803`22241d74 90              nop
fffff803`22241d75 e986bdf0ff      jmp     nt!CmpCallCallBacks+0x4c0 (fffff803`2214db00)

nt! ?? ::NNGAKEGL::`string'+0x55cf:
fffff803`22241d7a b903000000      mov     ecx,3
fffff803`22241d7f cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x55d6:
fffff803`22241d81 498b08          mov     rcx,qword ptr [r8]
fffff803`22241d84 498b4008        mov     rax,qword ptr [r8+8]
fffff803`22241d88 4c394108        cmp     qword ptr [rcx+8],r8
fffff803`22241d8c 0f85a3000000    jne     nt! ?? ::NNGAKEGL::`string'+0x569d (fffff803`22241e35)

nt! ?? ::NNGAKEGL::`string'+0x55e7:
fffff803`22241d92 4c3900          cmp     qword ptr [rax],r8
fffff803`22241d95 0f859a000000    jne     nt! ?? ::NNGAKEGL::`string'+0x569d (fffff803`22241e35)

nt! ?? ::NNGAKEGL::`string'+0x55f0:
fffff803`22241d9b 488908          mov     qword ptr [rax],rcx
fffff803`22241d9e 48894108        mov     qword ptr [rcx+8],rax
fffff803`22241da2 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff803`22241da7 488b81a8040000  mov     rax,qword ptr [rcx+4A8h]
fffff803`22241dae 4885c0          test    rax,rax
fffff803`22241db1 740a            je      nt! ?? ::NNGAKEGL::`string'+0x5616 (fffff803`22241dbd)

nt! ?? ::NNGAKEGL::`string'+0x560c:
fffff803`22241db3 488b00          mov     rax,qword ptr [rax]
fffff803`22241db6 488981a8040000  mov     qword ptr [rcx+4A8h],rax

nt! ?? ::NNGAKEGL::`string'+0x5616:
fffff803`22241dbd 8b0d4982d8ff    mov     ecx,dword ptr [nt!KeNumberProcessors (fffff803`21fca00c)]
fffff803`22241dc3 0faf0d661fcbff  imul    ecx,dword ptr [nt!CmpCallBackCount (fffff803`21ef3d30)]
fffff803`22241dca b840000000      mov     eax,40h
fffff803`22241dcf 3bc8            cmp     ecx,eax
fffff803`22241dd1 0f47c8          cmova   ecx,eax
fffff803`22241dd4 0fb705651fcbff  movzx   eax,word ptr [nt!CmpCallbackContextSList (fffff803`21ef3d40)]
fffff803`22241ddb 3bc1            cmp     eax,ecx
fffff803`22241ddd 7311            jae     nt! ?? ::NNGAKEGL::`string'+0x5650 (fffff803`22241df0)

nt! ?? ::NNGAKEGL::`string'+0x563c:
fffff803`22241ddf 498bd0          mov     rdx,r8
fffff803`22241de2 488d0d571fcbff  lea     rcx,[nt!CmpCallbackContextSList (fffff803`21ef3d40)]
fffff803`22241de9 e8f24fa8ff      call    nt!ExpInterlockedPushEntrySList (fffff803`21cc6de0)
fffff803`22241dee eb0a            jmp     nt! ?? ::NNGAKEGL::`string'+0x565a (fffff803`22241dfa)

nt! ?? ::NNGAKEGL::`string'+0x5650:
fffff803`22241df0 33d2            xor     edx,edx
fffff803`22241df2 498bc8          mov     rcx,r8
fffff803`22241df5 e86613caff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)

nt! ?? ::NNGAKEGL::`string'+0x565a:
fffff803`22241dfa 83c8ff          or      eax,0FFFFFFFFh
fffff803`22241dfd f0410fc14610    lock xadd dword ptr [r14+10h],eax
fffff803`22241e03 ffc8            dec     eax
fffff803`22241e05 3d00000080      cmp     eax,80000000h
fffff803`22241e0a 751d            jne     nt! ?? ::NNGAKEGL::`string'+0x5691 (fffff803`22241e29)

nt! ?? ::NNGAKEGL::`string'+0x5670:
fffff803`22241e0c f0830c2400      lock or dword ptr [rsp],0
fffff803`22241e11 48833d777dd1ff00 cmp     qword ptr [nt!CallbackListDeleteEvent (fffff803`21f59b90)],0
fffff803`22241e19 740e            je      nt! ?? ::NNGAKEGL::`string'+0x5691 (fffff803`22241e29)

nt! ?? ::NNGAKEGL::`string'+0x5683:
fffff803`22241e1b 33d2            xor     edx,edx
fffff803`22241e1d 488d0d6c7dd1ff  lea     rcx,[nt!CallbackListDeleteEvent (fffff803`21f59b90)]
fffff803`22241e24 e8cf66a4ff      call    nt!ExfUnblockPushLock (fffff803`21c884f8)

nt! ?? ::NNGAKEGL::`string'+0x5691:
fffff803`22241e29 32db            xor     bl,bl
fffff803`22241e2b c644242101      mov     byte ptr [rsp+21h],1
fffff803`22241e30 e95bbaf0ff      jmp     nt!CmpCallCallBacks+0x250 (fffff803`2214d890)

nt! ?? ::NNGAKEGL::`string'+0x569d:
fffff803`22241e35 b903000000      mov     ecx,3
fffff803`22241e3a cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x56a4:
fffff803`22241e3c 33c0            xor     eax,eax
fffff803`22241e3e 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`22241e43 4889442460      mov     qword ptr [rsp+60h],rax
fffff803`22241e48 4889442468      mov     qword ptr [rsp+68h],rax
fffff803`22241e4d 4889442470      mov     qword ptr [rsp+70h],rax
fffff803`22241e52 4889442478      mov     qword ptr [rsp+78h],rax
fffff803`22241e57 4889842480000000 mov     qword ptr [rsp+80h],rax
fffff803`22241e5f 4889842488000000 mov     qword ptr [rsp+88h],rax
fffff803`22241e67 4c8d642458      lea     r12,[rsp+58h]
fffff803`22241e6c 4c89642438      mov     qword ptr [rsp+38h],r12
fffff803`22241e71 4183f91b        cmp     r9d,1Bh
fffff803`22241e75 741b            je      nt! ?? ::NNGAKEGL::`string'+0x5705 (fffff803`22241e92)

nt! ?? ::NNGAKEGL::`string'+0x56e3:
fffff803`22241e77 4183f91d        cmp     r9d,1Dh
fffff803`22241e7b 7415            je      nt! ?? ::NNGAKEGL::`string'+0x5705 (fffff803`22241e92)

nt! ?? ::NNGAKEGL::`string'+0x56ed:
fffff803`22241e7d 488b842400010000 mov     rax,qword ptr [rsp+100h]
fffff803`22241e85 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`22241e8a 41bf030500c0    mov     r15d,0C0000503h
fffff803`22241e90 eb1b            jmp     nt! ?? ::NNGAKEGL::`string'+0x5720 (fffff803`22241ead)

nt! ?? ::NNGAKEGL::`string'+0x5705:
fffff803`22241e92 41bf030500c0    mov     r15d,0C0000503h
fffff803`22241e98 413bcf          cmp     ecx,r15d
fffff803`22241e9b 0f85d3bcf0ff    jne     nt!CmpCallCallBacks+0x534 (fffff803`2214db74)

nt! ?? ::NNGAKEGL::`string'+0x5714:
fffff803`22241ea1 498b4548        mov     rax,qword ptr [r13+48h]
fffff803`22241ea5 488b10          mov     rdx,qword ptr [rax]
fffff803`22241ea8 e9cabcf0ff      jmp     nt!CmpCallCallBacks+0x537 (fffff803`2214db77)

nt! ?? ::NNGAKEGL::`string'+0x5720:
fffff803`22241ead 8bc1            mov     eax,ecx
fffff803`22241eaf 413bcf          cmp     ecx,r15d
fffff803`22241eb2 0f44c7          cmove   eax,edi
fffff803`22241eb5 89442460        mov     dword ptr [rsp+60h],eax
fffff803`22241eb9 89442470        mov     dword ptr [rsp+70h],eax
fffff803`22241ebd 4c896c2468      mov     qword ptr [rsp+68h],r13
fffff803`22241ec2 e989baf0ff      jmp     nt!CmpCallCallBacks+0x310 (fffff803`2214d950)

nt! ?? ::NNGAKEGL::`string'+0x573a:
fffff803`22241ec7 f0830c2400      lock or dword ptr [rsp],0
fffff803`22241ecc 48833dbc7cd1ff00 cmp     qword ptr [nt!CallbackListDeleteEvent (fffff803`21f59b90)],0
fffff803`22241ed4 0f8460bbf0ff    je      nt!CmpCallCallBacks+0x3fa (fffff803`2214da3a)

nt! ?? ::NNGAKEGL::`string'+0x574d:
fffff803`22241eda 33d2            xor     edx,edx
fffff803`22241edc 488d0dad7cd1ff  lea     rcx,[nt!CallbackListDeleteEvent (fffff803`21f59b90)]
fffff803`22241ee3 e81066a4ff      call    nt!ExfUnblockPushLock (fffff803`21c884f8)
fffff803`22241ee8 90              nop
fffff803`22241ee9 e94cbbf0ff      jmp     nt!CmpCallCallBacks+0x3fa (fffff803`2214da3a)

nt! ?? ::NNGAKEGL::`string'+0x5761:
fffff803`22241eee 418b442418      mov     eax,dword ptr [r12+18h]
fffff803`22241ef3 4189442408      mov     dword ptr [r12+8],eax
fffff803`22241ef8 e948bbf0ff      jmp     nt!CmpCallCallBacks+0x405 (fffff803`2214da45)

nt! ?? ::NNGAKEGL::`string'+0x5770:
fffff803`22241efd b903000000      mov     ecx,3
fffff803`22241f02 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x5777:
fffff803`22241f04 4d85e4          test    r12,r12
fffff803`22241f07 0f840abaf0ff    je      nt!CmpCallCallBacks+0x2d7 (fffff803`2214d917)

nt! ?? ::NNGAKEGL::`string'+0x5780:
fffff803`22241f0d 418b4c2418      mov     ecx,dword ptr [r12+18h]
fffff803`22241f12 85c9            test    ecx,ecx
fffff803`22241f14 410f49cf        cmovns  ecx,r15d
fffff803`22241f18 e9fab9f0ff      jmp     nt!CmpCallCallBacks+0x2d7 (fffff803`2214d917)
