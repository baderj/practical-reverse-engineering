0: kd> uf ExFreePoolWithTag
nt!ExFreePoolWithTag:
fffff803`d9af7160 48894c2408      mov     qword ptr [rsp+8],rcx
fffff803`d9af7165 55              push    rbp
fffff803`d9af7166 53              push    rbx
fffff803`d9af7167 56              push    rsi
fffff803`d9af7168 57              push    rdi
fffff803`d9af7169 4156            push    r14
fffff803`d9af716b 4157            push    r15
fffff803`d9af716d 488d6c24d1      lea     rbp,[rsp-2Fh]
fffff803`d9af7172 4881eca8000000  sub     rsp,0A8h
fffff803`d9af7179 8b05850f0200    mov     eax,dword ptr [nt!ExpSpecialAllocations (fffff803`d9b18104)]
fffff803`d9af717f 4c8bf9          mov     r15,rcx
fffff803`d9af7182 85c0            test    eax,eax
fffff803`d9af7184 0f8566140000    jne     nt!ExFreePool+0x4a0 (fffff803`d9af85f0)

nt!ExFreePoolWithTag+0x2a:
fffff803`d9af718a 4c89a424e8000000 mov     qword ptr [rsp+0E8h],r12
fffff803`d9af7192 41b901000000    mov     r9d,1
fffff803`d9af7198 4c89ac24a0000000 mov     qword ptr [rsp+0A0h],r13
fffff803`d9af71a0 458be1          mov     r12d,r9d
fffff803`d9af71a3 49f7c7ff0f0000  test    r15,0FFFh
fffff803`d9af71aa 0f841b060000    je      nt!ExFreePoolWithTag+0x66b (fffff803`d9af77cb)

nt!ExFreePoolWithTag+0x50:
fffff803`d9af71b0 410fb677f3      movzx   esi,byte ptr [r15-0Dh]
fffff803`d9af71b5 418b47f0        mov     eax,dword ptr [r15-10h]
fffff803`d9af71b9 450fb677f2      movzx   r14d,byte ptr [r15-0Eh]
fffff803`d9af71be 498d5ff0        lea     rbx,[r15-10h]
fffff803`d9af71c2 448bee          mov     r13d,esi
fffff803`d9af71c5 4523e9          and     r13d,r9d
fffff803`d9af71c8 0fbae019        bt      eax,19h
fffff803`d9af71cc 0f837b180000    jae     nt!ExFreePool+0x967 (fffff803`d9af8a4d)

nt!ExFreePoolWithTag+0x72:
fffff803`d9af71d2 8b05c86e0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]
fffff803`d9af71d8 418bfe          mov     edi,r14d
fffff803`d9af71db 48c1e704        shl     rdi,4
fffff803`d9af71df a917040000      test    eax,417h
fffff803`d9af71e4 0f8581180000    jne     nt!ExFreePool+0x985 (fffff803`d9af8a6b)

nt!ExFreePoolWithTag+0x8a:
fffff803`d9af71ea 40f6c640        test    sil,40h
fffff803`d9af71ee 0f852c190000    jne     nt!ExFreePool+0xa56 (fffff803`d9af8b20)

nt!ExFreePoolWithTag+0x94:
fffff803`d9af71f4 40f6c604        test    sil,4
fffff803`d9af71f8 0f85fc040000    jne     nt!ExFreePoolWithTag+0x59a (fffff803`d9af76fa)

nt!ExFreePoolWithTag+0x9e:
fffff803`d9af71fe 4c8b4d67        mov     r9,qword ptr [rbp+67h]

nt!ExFreePoolWithTag+0xa2:
fffff803`d9af7202 804b0304        or      byte ptr [rbx+3],4
fffff803`d9af7206 f0830c2400      lock or dword ptr [rsp],0
fffff803`d9af720b 0fb64303        movzx   eax,byte ptr [rbx+3]
fffff803`d9af720f 8b7b04          mov     edi,dword ptr [rbx+4]
fffff803`d9af7212 24fd            and     al,0FDh
fffff803`d9af7214 897d7f          mov     dword ptr [rbp+7Fh],edi
fffff803`d9af7217 884303          mov     byte ptr [rbx+3],al
fffff803`d9af721a 85ff            test    edi,edi
fffff803`d9af721c 0f885d190000    js      nt!ExFreePool+0xab5 (fffff803`d9af8b7f)

nt!ExFreePoolWithTag+0xc2:
fffff803`d9af7222 418bd6          mov     edx,r14d
fffff803`d9af7225 458bd6          mov     r10d,r14d
fffff803`d9af7228 48c1e204        shl     rdx,4
fffff803`d9af722c 4803d3          add     rdx,rbx
fffff803`d9af722f 488955ff        mov     qword ptr [rbp-1],rdx
fffff803`d9af7233 48f7c2ff0f0000  test    rdx,0FFFh
fffff803`d9af723a 740e            je      nt!ExFreePoolWithTag+0xea (fffff803`d9af724a)

nt!ExFreePoolWithTag+0xdc:
fffff803`d9af723c 8b02            mov     eax,dword ptr [rdx]
fffff803`d9af723e 0fb6c8          movzx   ecx,al
fffff803`d9af7241 443bf1          cmp     r14d,ecx
fffff803`d9af7244 0f8541190000    jne     nt!ExFreePool+0xac1 (fffff803`d9af8b8b)

nt!ExFreePoolWithTag+0xea:
fffff803`d9af724a 0fb65301        movzx   edx,byte ptr [rbx+1]
fffff803`d9af724e 4c8d05abedd8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af7255 4963c5          movsxd  rax,r13d
fffff803`d9af7258 4d8bbcc0c0843500 mov     r15,qword ptr [r8+rax*8+3584C0h]
fffff803`d9af7260 4585ed          test    r13d,r13d
fffff803`d9af7263 0f85c0010000    jne     nt!ExFreePoolWithTag+0x2c9 (fffff803`d9af7429)

nt!ExFreePoolWithTag+0x109:
fffff803`d9af7269 8b05416e0e00    mov     eax,dword ptr [nt!ExpNumberOfNonPagedPools (fffff803`d9bde0b0)]
fffff803`d9af726f 413bc4          cmp     eax,r12d
fffff803`d9af7272 0f871f020000    ja      nt!ExFreePoolWithTag+0x337 (fffff803`d9af7497)

nt!ExFreePoolWithTag+0x118:
fffff803`d9af7278 48833d606e0e0000 cmp     qword ptr [nt!MmPaeMask (fffff803`d9bde0e0)],0
fffff803`d9af7280 743c            je      nt!ExFreePoolWithTag+0x15e (fffff803`d9af72be)

nt!ExFreePoolWithTag+0x122:
fffff803`d9af7282 488bc3          mov     rax,rbx
fffff803`d9af7285 49b800000040fbf6ffff mov r8,0FFFFF6FB40000000h
fffff803`d9af728f 48c1e812        shr     rax,12h
fffff803`d9af7293 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`d9af7298 4a8b0400        mov     rax,qword ptr [rax+r8]
fffff803`d9af729c 84c0            test    al,al
fffff803`d9af729e 0f890a040000    jns     nt!ExFreePoolWithTag+0x54e (fffff803`d9af76ae)

nt!ExFreePoolWithTag+0x144:
fffff803`d9af72a4 48b90000000000000080 mov rcx,8000000000000000h
fffff803`d9af72ae 4c8d054bedd8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af72b5 4885c1          test    rcx,rax
fffff803`d9af72b8 0f84f7090000    je      nt!ExFreePoolWithTag+0xb55 (fffff803`d9af7cb5)

nt!ExFreePoolWithTag+0x15e:
fffff803`d9af72be 413bd4          cmp     edx,r12d
fffff803`d9af72c1 0f83df180000    jae     nt!ExFreePool+0xadc (fffff803`d9af8ba6)

nt!ExFreePoolWithTag+0x167:
fffff803`d9af72c7 498bd2          mov     rdx,r10
fffff803`d9af72ca 0fbaf71f        btr     edi,1Fh
fffff803`d9af72ce 48c1e204        shl     rdx,4
fffff803`d9af72d2 3b3d746f0e00    cmp     edi,dword ptr [nt!PoolHitTag (fffff803`d9bde24c)]
fffff803`d9af72d8 488955c7        mov     qword ptr [rbp-39h],rdx
fffff803`d9af72dc 0f848c0e0000    je      nt!ExFreePoolWithTag+0x100e (fffff803`d9af816e)

nt!ExFreePoolWithTag+0x182:
fffff803`d9af72e2 8b059c6d0e00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)]
fffff803`d9af72e8 a841            test    al,41h
fffff803`d9af72ea 0f85cf180000    jne     nt!ExFreePool+0xaf5 (fffff803`d9af8bbf)

nt!ExFreePoolWithTag+0x190:
fffff803`d9af72f0 448be6          mov     r12d,esi
fffff803`d9af72f3 4183e420        and     r12d,20h
fffff803`d9af72f7 0f8580040000    jne     nt!ExFreePoolWithTag+0x61d (fffff803`d9af777d)

nt!ExFreePoolWithTag+0x19d:
fffff803`d9af72fd 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`d9af7305 4c8b0d1c220200  mov     r9,qword ptr [nt!PoolTrackTableMask (fffff803`d9b19528)]
fffff803`d9af730c 4d8b94c020212900 mov     r10,qword ptr [r8+rax*8+292120h]

nt!ExFreePoolWithTag+0x1b4:
fffff803`d9af7314 8bcf            mov     ecx,edi
fffff803`d9af7316 4869c95f9e0000  imul    rcx,rcx,9E5Fh
fffff803`d9af731d 488bc1          mov     rax,rcx
fffff803`d9af7320 48c1e820        shr     rax,20h
fffff803`d9af7324 33c1            xor     eax,ecx
fffff803`d9af7326 4123c1          and     eax,r9d
fffff803`d9af7329 448bd8          mov     r11d,eax
fffff803`d9af732c 488d1480        lea     rdx,[rax+rax*4]
fffff803`d9af7330 4c8d04d500000000 lea     r8,[rdx*8]
fffff803`d9af7338 438b0c02        mov     ecx,dword ptr [r10+r8]
fffff803`d9af733c 4b8d1402        lea     rdx,[r10+r8]
fffff803`d9af7340 3bcf            cmp     ecx,edi
fffff803`d9af7342 0f852e030000    jne     nt!ExFreePoolWithTag+0x516 (fffff803`d9af7676)

nt!ExFreePoolWithTag+0x1e8:
fffff803`d9af7348 488b45c7        mov     rax,qword ptr [rbp-39h]
fffff803`d9af734c 48f7d8          neg     rax
fffff803`d9af734f 4585ed          test    r13d,r13d
fffff803`d9af7352 0f85f2000000    jne     nt!ExFreePoolWithTag+0x2ea (fffff803`d9af744a)

nt!ExFreePoolWithTag+0x1f8:
fffff803`d9af7358 f0ff4208        lock inc dword ptr [rdx+8]
fffff803`d9af735c f0480fc14210    lock xadd qword ptr [rdx+10h],rax

nt!ExFreePoolWithTag+0x202:
fffff803`d9af7362 4533c9          xor     r9d,r9d
fffff803`d9af7365 40f6c608        test    sil,8
fffff803`d9af7369 0f85c0010000    jne     nt!ExFreePoolWithTag+0x3cf (fffff803`d9af752f)

nt!ExFreePoolWithTag+0x20f:
fffff803`d9af736f 4585e4          test    r12d,r12d
fffff803`d9af7372 0f8518040000    jne     nt!ExFreePoolWithTag+0x630 (fffff803`d9af7790)

nt!ExFreePoolWithTag+0x218:
fffff803`d9af7378 4183fe20        cmp     r14d,20h
fffff803`d9af737c 0f8725010000    ja      nt!ExFreePoolWithTag+0x347 (fffff803`d9af74a7)

nt!ExFreePoolWithTag+0x222:
fffff803`d9af7382 8b05186d0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]
fffff803`d9af7388 0fbae008        bt      eax,8
fffff803`d9af738c 0f821b010000    jb      nt!ExFreePoolWithTag+0x34d (fffff803`d9af74ad)

nt!ExFreePoolWithTag+0x232:
fffff803`d9af7392 4183fd01        cmp     r13d,1
fffff803`d9af7396 0f84bd000000    je      nt!ExFreePoolWithTag+0x2f9 (fffff803`d9af7459)

nt!ExFreePoolWithTag+0x23c:
fffff803`d9af739c 66833d646c0e0001 cmp     word ptr [nt!KeNumberNodes (fffff803`d9bde008)],1
fffff803`d9af73a4 0f875f010000    ja      nt!ExFreePoolWithTag+0x3a9 (fffff803`d9af7509)

nt!ExFreePoolWithTag+0x24a:
fffff803`d9af73aa 65488b142520000000 mov   rdx,qword ptr gs:[20h]
fffff803`d9af73b3 418d46ff        lea     eax,[r14-1]
fffff803`d9af73b7 488d0440        lea     rax,[rax+rax*2]
fffff803`d9af73bb 48c1e005        shl     rax,5
fffff803`d9af73bf 41813f00020000  cmp     dword ptr [r15],200h
fffff803`d9af73c6 0f8505090000    jne     nt!ExFreePoolWithTag+0xb71 (fffff803`d9af7cd1)

nt!ExFreePoolWithTag+0x26c:
fffff803`d9af73cc 488d8a80080000  lea     rcx,[rdx+880h]

nt!ExFreePoolWithTag+0x273:
fffff803`d9af73d3 4803c8          add     rcx,rax

nt!ExFreePoolWithTag+0x276:
fffff803`d9af73d6 4885c9          test    rcx,rcx
fffff803`d9af73d9 0f84c8000000    je      nt!ExFreePoolWithTag+0x347 (fffff803`d9af74a7)

nt!ExFreePoolWithTag+0x27f:
fffff803`d9af73df 0fb74110        movzx   eax,word ptr [rcx+10h]
fffff803`d9af73e3 ff411c          inc     dword ptr [rcx+1Ch]
fffff803`d9af73e6 663901          cmp     word ptr [rcx],ax
fffff803`d9af73e9 0f83b8000000    jae     nt!ExFreePoolWithTag+0x347 (fffff803`d9af74a7)

nt!ExFreePoolWithTag+0x28f:
fffff803`d9af73ef 488b05da700e00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff803`d9bde4d0)]
fffff803`d9af73f6 ff4120          inc     dword ptr [rcx+20h]
fffff803`d9af73f9 488b5567        mov     rdx,qword ptr [rbp+67h]
fffff803`d9af73fd 4833c3          xor     rax,rbx
fffff803`d9af7400 48894308        mov     qword ptr [rbx+8],rax
fffff803`d9af7404 e8d739deff      call    nt!ExpInterlockedPushEntrySList (fffff803`d98dade0)

nt!ExFreePoolWithTag+0x2a9:
fffff803`d9af7409 4c8ba424e8000000 mov     r12,qword ptr [rsp+0E8h]
fffff803`d9af7411 4c8bac24a0000000 mov     r13,qword ptr [rsp+0A0h]

nt!ExFreePoolWithTag+0x2b9:
fffff803`d9af7419 4881c4a8000000  add     rsp,0A8h
fffff803`d9af7420 415f            pop     r15
fffff803`d9af7422 415e            pop     r14
fffff803`d9af7424 5f              pop     rdi
fffff803`d9af7425 5e              pop     rsi
fffff803`d9af7426 5b              pop     rbx
fffff803`d9af7427 5d              pop     rbp
fffff803`d9af7428 c3              ret

nt!ExFreePoolWithTag+0x2c9:
fffff803`d9af7429 40f6c620        test    sil,20h
fffff803`d9af742d 0f858b030000    jne     nt!ExFreePoolWithTag+0x65e (fffff803`d9af77be)

nt!ExFreePoolWithTag+0x2d3:
fffff803`d9af7433 448b256e6c0e00  mov     r12d,dword ptr [nt!ExpNumberOfPagedPools (fffff803`d9bde0a8)]
fffff803`d9af743a 4d8bbcd0c0a13500 mov     r15,qword ptr [r8+rdx*8+35A1C0h]
fffff803`d9af7442 41ffc4          inc     r12d
fffff803`d9af7445 e974feffff      jmp     nt!ExFreePoolWithTag+0x15e (fffff803`d9af72be)

nt!ExFreePoolWithTag+0x2ea:
fffff803`d9af744a f0ff421c        lock inc dword ptr [rdx+1Ch]
fffff803`d9af744e f0480fc14220    lock xadd qword ptr [rdx+20h],rax
fffff803`d9af7454 e909ffffff      jmp     nt!ExFreePoolWithTag+0x202 (fffff803`d9af7362)

nt!ExFreePoolWithTag+0x2f9:
fffff803`d9af7459 458b8780000000  mov     r8d,dword ptr [r15+80h]
fffff803`d9af7460 4585c0          test    r8d,r8d
fffff803`d9af7463 7448            je      nt!ExFreePoolWithTag+0x34d (fffff803`d9af74ad)

nt!ExFreePoolWithTag+0x305:
fffff803`d9af7465 66833d9b6b0e0001 cmp     word ptr [nt!KeNumberNodes (fffff803`d9bde008)],1
fffff803`d9af746d 0f8762020000    ja      nt!ExFreePoolWithTag+0x575 (fffff803`d9af76d5)

nt!ExFreePoolWithTag+0x313:
fffff803`d9af7473 65488b142520000000 mov   rdx,qword ptr gs:[20h]
fffff803`d9af747c 418d46ff        lea     eax,[r14-1]
fffff803`d9af7480 488d0c40        lea     rcx,[rax+rax*2]
fffff803`d9af7484 4881c280200000  add     rdx,2080h
fffff803`d9af748b 48c1e105        shl     rcx,5
fffff803`d9af748f 4803ca          add     rcx,rdx
fffff803`d9af7492 e93fffffff      jmp     nt!ExFreePoolWithTag+0x276 (fffff803`d9af73d6)

nt!ExFreePoolWithTag+0x337:
fffff803`d9af7497 4d8bbcd0d0a33500 mov     r15,qword ptr [r8+rdx*8+35A3D0h]
fffff803`d9af749f 448be0          mov     r12d,eax
fffff803`d9af74a2 e9d1fdffff      jmp     nt!ExFreePoolWithTag+0x118 (fffff803`d9af7278)

nt!ExFreePoolWithTag+0x347:
fffff803`d9af74a7 8b05f36b0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePoolWithTag+0x34d:
fffff803`d9af74ad 0fbae009        bt      eax,9
fffff803`d9af74b1 0f83830b0000    jae     nt!ExFreePoolWithTag+0xeda (fffff803`d9af803a)

nt!ExFreePoolWithTag+0x357:
fffff803`d9af74b7 418b8708010000  mov     eax,dword ptr [r15+108h]
fffff803`d9af74be 83f820          cmp     eax,20h
fffff803`d9af74c1 0f8364070000    jae     nt!ExFreePoolWithTag+0xacb (fffff803`d9af7c2b)

nt!ExFreePoolWithTag+0x367:
fffff803`d9af74c7 488b0502700e00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff803`d9bde4d0)]
fffff803`d9af74ce 4833c3          xor     rax,rbx
fffff803`d9af74d1 48894308        mov     qword ptr [rbx+8],rax
fffff803`d9af74d5 410f0d8f00010000 prefetchw [r15+100h]
fffff803`d9af74dd 498b8700010000  mov     rax,qword ptr [r15+100h]
fffff803`d9af74e4 488b5567        mov     rdx,qword ptr [rbp+67h]

nt!ExFreePoolWithTag+0x388:
fffff803`d9af74e8 488902          mov     qword ptr [rdx],rax
fffff803`d9af74eb 488bc8          mov     rcx,rax
fffff803`d9af74ee f0490fb19700010000 lock cmpxchg qword ptr [r15+100h],rdx
fffff803`d9af74f7 483bc1          cmp     rax,rcx
fffff803`d9af74fa 75ec            jne     nt!ExFreePoolWithTag+0x388 (fffff803`d9af74e8)

nt!ExFreePoolWithTag+0x39c:
fffff803`d9af74fc f041ff8708010000 lock inc dword ptr [r15+108h]
fffff803`d9af7504 e900ffffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`d9af7409)

nt!ExFreePoolWithTag+0x3a9:
fffff803`d9af7509 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`d9af7512 488b8838530000  mov     rcx,qword ptr [rax+5338h]
fffff803`d9af7519 0fb74144        movzx   eax,word ptr [rcx+44h]
fffff803`d9af751d 413b8780000000  cmp     eax,dword ptr [r15+80h]
fffff803`d9af7524 0f8480feffff    je      nt!ExFreePoolWithTag+0x24a (fffff803`d9af73aa)

nt!ExFreePoolWithTag+0x3ca:
fffff803`d9af752a e978ffffff      jmp     nt!ExFreePoolWithTag+0x347 (fffff803`d9af74a7)

nt!ExFreePoolWithTag+0x3cf:
fffff803`d9af752f 0fb64b03        movzx   ecx,byte ptr [rbx+3]
fffff803`d9af7533 f6c108          test    cl,8
fffff803`d9af7536 0f8433feffff    je      nt!ExFreePoolWithTag+0x20f (fffff803`d9af736f)

nt!ExFreePoolWithTag+0x3dc:
fffff803`d9af753c 488b7b08        mov     rdi,qword ptr [rbx+8]
fffff803`d9af7540 48333d896f0e00  xor     rdi,qword ptr [nt!ExpPoolQuotaCookie (fffff803`d9bde4d0)]
fffff803`d9af7547 4833fb          xor     rdi,rbx
fffff803`d9af754a 0f841ffeffff    je      nt!ExFreePoolWithTag+0x20f (fffff803`d9af736f)

nt!ExFreePoolWithTag+0x3f0:
fffff803`d9af7550 483b3d116c0e00  cmp     rdi,qword ptr [nt!MmSystemRangeStart (fffff803`d9bde168)]
fffff803`d9af7557 0f82ae0a0000    jb      nt!ExFreePoolWithTag+0xeab (fffff803`d9af800b)

nt!ExFreePoolWithTag+0x3fd:
fffff803`d9af755d 0fb607          movzx   eax,byte ptr [rdi]
fffff803`d9af7560 247f            and     al,7Fh
fffff803`d9af7562 3c03            cmp     al,3
fffff803`d9af7564 0f85a10a0000    jne     nt!ExFreePoolWithTag+0xeab (fffff803`d9af800b)

nt!ExFreePoolWithTag+0x40a:
fffff803`d9af756a 0fb67302        movzx   esi,byte ptr [rbx+2]
fffff803`d9af756e 48c1e604        shl     rsi,4
fffff803`d9af7572 483b3da76a0e00  cmp     rdi,qword ptr [nt!PsInitialSystemProcess (fffff803`d9bde020)]
fffff803`d9af7579 0f84c8000000    je      nt!ExFreePoolWithTag+0x4e7 (fffff803`d9af7647)

nt!ExFreePoolWithTag+0x41f:
fffff803`d9af757f 488b9700040000  mov     rdx,qword ptr [rdi+400h]
fffff803`d9af7586 418bc1          mov     eax,r9d
fffff803`d9af7589 80e101          and     cl,1
fffff803`d9af758c 80f901          cmp     cl,1
fffff803`d9af758f 488955ef        mov     qword ptr [rbp-11h],rdx
fffff803`d9af7593 0f94c0          sete    al
fffff803`d9af7596 4c63d8          movsxd  r11,eax
fffff803`d9af7599 8945bf          mov     dword ptr [rbp-41h],eax
fffff803`d9af759c 488d055dead8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af75a3 420fb684d880893500 movzx eax,byte ptr [rax+r11*8+358980h]
fffff803`d9af75ac 4c895dcf        mov     qword ptr [rbp-31h],r11
fffff803`d9af75b0 884577          mov     byte ptr [rbp+77h],al
fffff803`d9af75b3 498bc3          mov     rax,r11
fffff803`d9af75b6 48c1e007        shl     rax,7
fffff803`d9af75ba 4889450f        mov     qword ptr [rbp+0Fh],rax
fffff803`d9af75be 4c8d1402        lea     r10,[rdx+rax]
fffff803`d9af75c2 4c895507        mov     qword ptr [rbp+7],r10
fffff803`d9af75c6 410f0d0a        prefetchw [r10]
fffff803`d9af75ca 4d8b02          mov     r8,qword ptr [r10]
fffff803`d9af75cd 4d8b4a40        mov     r9,qword ptr [r10+40h]
fffff803`d9af75d1 49837a5000      cmp     qword ptr [r10+50h],0
fffff803`d9af75d6 4c8945f7        mov     qword ptr [rbp-9],r8
fffff803`d9af75da 742d            je      nt!ExFreePoolWithTag+0x4a9 (fffff803`d9af7609)

nt!ExFreePoolWithTag+0x47c:
fffff803`d9af75dc 498bd3          mov     rdx,r11
fffff803`d9af75df 488d05fa740200  lea     rax,[nt!PspQuotaExpansionDescriptors (fffff803`d9b1eae0)]
fffff803`d9af75e6 486bd238        imul    rdx,rdx,38h
fffff803`d9af75ea 4803d0          add     rdx,rax
fffff803`d9af75ed 4d3bc8          cmp     r9,r8
fffff803`d9af75f0 7617            jbe     nt!ExFreePoolWithTag+0x4a9 (fffff803`d9af7609)

nt!ExFreePoolWithTag+0x492:
fffff803`d9af75f2 4c8b5a08        mov     r11,qword ptr [rdx+8]
fffff803`d9af75f6 498bc1          mov     rax,r9
fffff803`d9af75f9 492bc0          sub     rax,r8
fffff803`d9af75fc 493bc3          cmp     rax,r11
fffff803`d9af75ff 0f87d8060000    ja      nt!ExFreePoolWithTag+0xb7d (fffff803`d9af7cdd)

nt!ExFreePoolWithTag+0x4a5:
fffff803`d9af7605 4c8b5dcf        mov     r11,qword ptr [rbp-31h]

nt!ExFreePoolWithTag+0x4a9:
fffff803`d9af7609 488bce          mov     rcx,rsi

nt!ExFreePoolWithTag+0x4ac:
fffff803`d9af760c 493bc8          cmp     rcx,r8
fffff803`d9af760f 0f83ca150000    jae     nt!ExFreePool+0xb15 (fffff803`d9af8bdf)

nt!ExFreePoolWithTag+0x4b5:
fffff803`d9af7615 498bd0          mov     rdx,r8
fffff803`d9af7618 4c8bc9          mov     r9,rcx
fffff803`d9af761b 482bd1          sub     rdx,rcx

nt!ExFreePoolWithTag+0x4be:
fffff803`d9af761e 498bc0          mov     rax,r8
fffff803`d9af7621 f0490fb112      lock cmpxchg qword ptr [r10],rdx
fffff803`d9af7626 4c8bc0          mov     r8,rax
fffff803`d9af7629 75e1            jne     nt!ExFreePoolWithTag+0x4ac (fffff803`d9af760c)

nt!ExFreePoolWithTag+0x4cb:
fffff803`d9af762b 492bc9          sub     rcx,r9
fffff803`d9af762e 0f85b5150000    jne     nt!ExFreePool+0xb1f (fffff803`d9af8be9)

nt!ExFreePoolWithTag+0x4d4:
fffff803`d9af7634 f6457704        test    byte ptr [rbp+77h],4
fffff803`d9af7638 740d            je      nt!ExFreePoolWithTag+0x4e7 (fffff803`d9af7647)

nt!ExFreePoolWithTag+0x4da:
fffff803`d9af763a 48f7de          neg     rsi
fffff803`d9af763d f04a0fc1b4df00030000 lock xadd qword ptr [rdi+r11*8+300h],rsi

nt!ExFreePoolWithTag+0x4e7:
fffff803`d9af7647 833de6690e0000  cmp     dword ptr [nt!ObpTraceFlags (fffff803`d9bde034)],0
fffff803`d9af764e 448b4b04        mov     r9d,dword ptr [rbx+4]
fffff803`d9af7652 0f85ce150000    jne     nt!ExFreePool+0xb60 (fffff803`d9af8c26)

nt!ExFreePoolWithTag+0x4f8:
fffff803`d9af7658 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`d9af765c f0480fc147d0    lock xadd qword ptr [rdi-30h],rax
fffff803`d9af7662 48ffc8          dec     rax
fffff803`d9af7665 4885c0          test    rax,rax
fffff803`d9af7668 0f8e3d090000    jle     nt!ExFreePoolWithTag+0xe4b (fffff803`d9af7fab)

nt!ExFreePoolWithTag+0x50e:
fffff803`d9af766e 4533c9          xor     r9d,r9d
fffff803`d9af7671 e9f9fcffff      jmp     nt!ExFreePoolWithTag+0x20f (fffff803`d9af736f)

nt!ExFreePoolWithTag+0x516:
fffff803`d9af7676 85c9            test    ecx,ecx
fffff803`d9af7678 0f8488050000    je      nt!ExFreePoolWithTag+0xaa6 (fffff803`d9af7c06)

nt!ExFreePoolWithTag+0x51e:
fffff803`d9af767e 8d4801          lea     ecx,[rax+1]
fffff803`d9af7681 4123c9          and     ecx,r9d
fffff803`d9af7684 8bc1            mov     eax,ecx
fffff803`d9af7686 413bcb          cmp     ecx,r11d
fffff803`d9af7689 0f84c2050000    je      nt!ExFreePoolWithTag+0xaf1 (fffff803`d9af7c51)

nt!ExFreePoolWithTag+0x52f:
fffff803`d9af768f 8bc8            mov     ecx,eax
fffff803`d9af7691 488d1489        lea     rdx,[rcx+rcx*4]
fffff803`d9af7695 4c8d04d500000000 lea     r8,[rdx*8]
fffff803`d9af769d 438b0c02        mov     ecx,dword ptr [r10+r8]
fffff803`d9af76a1 4b8d1402        lea     rdx,[r10+r8]
fffff803`d9af76a5 3bcf            cmp     ecx,edi
fffff803`d9af76a7 75cd            jne     nt!ExFreePoolWithTag+0x516 (fffff803`d9af7676)

nt!ExFreePoolWithTag+0x549:
fffff803`d9af76a9 e99afcffff      jmp     nt!ExFreePoolWithTag+0x1e8 (fffff803`d9af7348)

nt!ExFreePoolWithTag+0x54e:
fffff803`d9af76ae 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`d9af76b8 488bc3          mov     rax,rbx
fffff803`d9af76bb 48c1e809        shr     rax,9
fffff803`d9af76bf 4823c1          and     rax,rcx
fffff803`d9af76c2 48b90000000080f6ffff mov rcx,0FFFFF68000000000h
fffff803`d9af76cc 488b0408        mov     rax,qword ptr [rax+rcx]
fffff803`d9af76d0 e9cffbffff      jmp     nt!ExFreePoolWithTag+0x144 (fffff803`d9af72a4)

nt!ExFreePoolWithTag+0x575:
fffff803`d9af76d5 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`d9af76de 488b8838530000  mov     rcx,qword ptr [rax+5338h]
fffff803`d9af76e5 418d40ff        lea     eax,[r8-1]
fffff803`d9af76e9 0fb75144        movzx   edx,word ptr [rcx+44h]
fffff803`d9af76ed 3bd0            cmp     edx,eax
fffff803`d9af76ef 0f847efdffff    je      nt!ExFreePoolWithTag+0x313 (fffff803`d9af7473)

nt!ExFreePoolWithTag+0x595:
fffff803`d9af76f5 e9adfdffff      jmp     nt!ExFreePoolWithTag+0x347 (fffff803`d9af74a7)

nt!ExFreePoolWithTag+0x59a:
fffff803`d9af76fa 8b13            mov     edx,dword ptr [rbx]
fffff803`d9af76fc 4c8bc3          mov     r8,rbx
fffff803`d9af76ff 0fb6c2          movzx   eax,dl
fffff803`d9af7702 48c1e004        shl     rax,4
fffff803`d9af7706 4c2bc0          sub     r8,rax
fffff803`d9af7709 458b08          mov     r9d,dword ptr [r8]
fffff803`d9af770c 410fbae119      bt      r9d,19h
fffff803`d9af7711 0f8324140000    jae     nt!ExFreePool+0xa71 (fffff803`d9af8b3b)

nt!ExFreePoolWithTag+0x5b7:
fffff803`d9af7717 8b05236a0e00    mov     eax,dword ptr [nt!ExpCacheLineSize (fffff803`d9bde140)]
fffff803`d9af771d b9f0ffffff      mov     ecx,0FFFFFFF0h
fffff803`d9af7722 412bc8          sub     ecx,r8d
fffff803`d9af7725 ffc8            dec     eax
fffff803`d9af7727 23c8            and     ecx,eax
fffff803`d9af7729 0f8436140000    je      nt!ExFreePool+0xa9b (fffff803`d9af8b65)

nt!ExFreePoolWithTag+0x5cf:
fffff803`d9af772f 8bc1            mov     eax,ecx
fffff803`d9af7731 4903c0          add     rax,r8
fffff803`d9af7734 483bc3          cmp     rax,rbx
fffff803`d9af7737 0f8528140000    jne     nt!ExFreePool+0xa9b (fffff803`d9af8b65)

nt!ExFreePoolWithTag+0x5dd:
fffff803`d9af773d 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff803`d9af7741 450fb67002      movzx   r14d,byte ptr [r8+2]
fffff803`d9af7746 0fb6d2          movzx   edx,dl
fffff803`d9af7749 03c2            add     eax,edx
fffff803`d9af774b 443bf0          cmp     r14d,eax
fffff803`d9af774e 0f8511140000    jne     nt!ExFreePool+0xa9b (fffff803`d9af8b65)

nt!ExFreePoolWithTag+0x5f4:
fffff803`d9af7754 413bd4          cmp     edx,r12d
fffff803`d9af7757 7614            jbe     nt!ExFreePoolWithTag+0x60d (fffff803`d9af776d)

nt!ExFreePoolWithTag+0x5f9:
fffff803`d9af7759 488b05706d0e00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff803`d9bde4d0)]
fffff803`d9af7760 4833c3          xor     rax,rbx
fffff803`d9af7763 493b4010        cmp     rax,qword ptr [r8+10h]
fffff803`d9af7767 0f85e3130000    jne     nt!ExFreePool+0xa86 (fffff803`d9af8b50)

nt!ExFreePoolWithTag+0x60d:
fffff803`d9af776d 4d8d4810        lea     r9,[r8+10h]
fffff803`d9af7771 498bd8          mov     rbx,r8
fffff803`d9af7774 4c894d67        mov     qword ptr [rbp+67h],r9
fffff803`d9af7778 e985faffff      jmp     nt!ExFreePoolWithTag+0xa2 (fffff803`d9af7202)

nt!ExFreePoolWithTag+0x61d:
fffff803`d9af777d 4c8b156c090200  mov     r10,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`d9b180f0)]
fffff803`d9af7784 4c8b0d5d090200  mov     r9,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`d9b180e8)]
fffff803`d9af778b e984fbffff      jmp     nt!ExFreePoolWithTag+0x1b4 (fffff803`d9af7314)

nt!ExFreePoolWithTag+0x630:
fffff803`d9af7790 4183fd01        cmp     r13d,1
fffff803`d9af7794 0f85defbffff    jne     nt!ExFreePoolWithTag+0x218 (fffff803`d9af7378)

nt!ExFreePoolWithTag+0x63a:
fffff803`d9af779a 443b35c36b0e00  cmp     r14d,dword ptr [nt!ExpSessionPoolSmallLists (fffff803`d9bde364)]
fffff803`d9af77a1 0f8700fdffff    ja      nt!ExFreePoolWithTag+0x347 (fffff803`d9af74a7)

nt!ExFreePoolWithTag+0x647:
fffff803`d9af77a7 488b05fa6d0e00  mov     rax,qword ptr [nt!ExpSessionPoolLookaside (fffff803`d9bde5a8)]
fffff803`d9af77ae 418bce          mov     ecx,r14d
fffff803`d9af77b1 48c1e107        shl     rcx,7
fffff803`d9af77b5 4883c080        add     rax,0FFFFFFFFFFFFFF80h
fffff803`d9af77b9 e915fcffff      jmp     nt!ExFreePoolWithTag+0x273 (fffff803`d9af73d3)

nt!ExFreePoolWithTag+0x65e:
fffff803`d9af77be e80dd91c00      call    nt!MiSessionPoolVector (fffff803`d9cc50d0)
fffff803`d9af77c3 4c8bf8          mov     r15,rax
fffff803`d9af77c6 e9f3faffff      jmp     nt!ExFreePoolWithTag+0x15e (fffff803`d9af72be)

nt!ExFreePoolWithTag+0x66b:
fffff803`d9af77cb 33d2            xor     edx,edx
fffff803`d9af77cd 4c3b3d84690e00  cmp     r15,qword ptr [nt!MmPagedPoolEnd (fffff803`d9bde158)]
fffff803`d9af77d4 48b800000000a0f8ffff mov rax,0FFFFF8A000000000h
fffff803`d9af77de 0f8680050000    jbe     nt!ExFreePoolWithTag+0xc04 (fffff803`d9af7d64)

nt!ExFreePoolWithTag+0x684:
fffff803`d9af77e4 48b80000000080060000 mov rax,68000000000h
fffff803`d9af77ee 48b9ffffffffff000000 mov rcx,0FFFFFFFFFFh
fffff803`d9af77f8 49b800000040fbf6ffff mov r8,0FFFFF6FB40000000h
fffff803`d9af7802 4903c7          add     rax,r15
fffff803`d9af7805 483bc1          cmp     rax,rcx
fffff803`d9af7808 0f861e100000    jbe     nt!ExFreePool+0x71e (fffff803`d9af882c)

nt!ExFreePoolWithTag+0x6ae:
fffff803`d9af780e 48b80000000000070000 mov rax,70000000000h
fffff803`d9af7818 48b9ffffffff7f000000 mov rcx,7FFFFFFFFFh
fffff803`d9af7822 4903c7          add     rax,r15
fffff803`d9af7825 483bc1          cmp     rax,rcx
fffff803`d9af7828 0f868f050000    jbe     nt!ExFreePoolWithTag+0xc5d (fffff803`d9af7dbd)

nt!ExFreePoolWithTag+0x6ce:
fffff803`d9af782e 8bf2            mov     esi,edx

nt!ExFreePoolWithTag+0x6d0:
fffff803`d9af7830 8bfe            mov     edi,esi
fffff803`d9af7832 488d0dc7e7d8ff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af7839 4863c6          movsxd  rax,esi
fffff803`d9af783c 4c8bb4c1c0843500 mov     r14,qword ptr [rcx+rax*8+3584C0h]
fffff803`d9af7844 4123f9          and     edi,r9d
fffff803`d9af7847 897d77          mov     dword ptr [rbp+77h],edi
fffff803`d9af784a 83fe21          cmp     esi,21h
fffff803`d9af784d 0f8474050000    je      nt!ExFreePoolWithTag+0xc67 (fffff803`d9af7dc7)

nt!ExFreePoolWithTag+0x6f3:
fffff803`d9af7853 85ff            test    edi,edi
fffff803`d9af7855 7534            jne     nt!ExFreePoolWithTag+0x72b (fffff803`d9af788b)

nt!ExFreePoolWithTag+0x6f7:
fffff803`d9af7857 48391582680e00  cmp     qword ptr [nt!MmPaeMask (fffff803`d9bde0e0)],rdx
fffff803`d9af785e 742b            je      nt!ExFreePoolWithTag+0x72b (fffff803`d9af788b)

nt!ExFreePoolWithTag+0x700:
fffff803`d9af7860 498bc7          mov     rax,r15
fffff803`d9af7863 48c1e812        shr     rax,12h
fffff803`d9af7867 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`d9af786c 4a8b0400        mov     rax,qword ptr [rax+r8]
fffff803`d9af7870 84c0            test    al,al
fffff803`d9af7872 0f89ec030000    jns     nt!ExFreePoolWithTag+0xb04 (fffff803`d9af7c64)

nt!ExFreePoolWithTag+0x718:
fffff803`d9af7878 48b90000000000000080 mov rcx,8000000000000000h
fffff803`d9af7882 4885c1          test    rcx,rax
fffff803`d9af7885 0f8490060000    je      nt!ExFreePoolWithTag+0xdbb (fffff803`d9af7f1b)

nt!ExFreePoolWithTag+0x72b:
fffff803`d9af788b 488955c7        mov     qword ptr [rbp-39h],rdx
fffff803`d9af788f 8955bf          mov     dword ptr [rbp-41h],edx
fffff803`d9af7892 4c8d45b7        lea     r8,[rbp-49h]
fffff803`d9af7896 488d557f        lea     rdx,[rbp+7Fh]
fffff803`d9af789a 448bce          mov     r9d,esi
fffff803`d9af789d 498bcf          mov     rcx,r15
fffff803`d9af78a0 e8cb26e4ff      call    nt!ExpFindAndRemoveTagBigPages (fffff803`d9939f70)
fffff803`d9af78a5 8bc8            mov     ecx,eax
fffff803`d9af78a7 80e121          and     cl,21h
fffff803`d9af78aa 80f920          cmp     cl,20h
fffff803`d9af78ad 0f84a8080000    je      nt!ExFreePoolWithTag+0xffb (fffff803`d9af815b)

nt!ExFreePoolWithTag+0x753:
fffff803`d9af78b3 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`d9af78b7 a840            test    al,40h
fffff803`d9af78b9 0f85b20f0000    jne     nt!ExFreePool+0x763 (fffff803`d9af8871)

nt!ExFreePoolWithTag+0x75f:
fffff803`d9af78bf 448beb          mov     r13d,ebx
fffff803`d9af78c2 4181e5ff0f0000  and     r13d,0FFFh
fffff803`d9af78c9 743f            je      nt!ExFreePoolWithTag+0x7aa (fffff803`d9af790a)

nt!ExFreePoolWithTag+0x76b:
fffff803`d9af78cb 4a8b443b10      mov     rax,qword ptr [rbx+r15+10h]
fffff803`d9af78d0 4e8d143b        lea     r10,[rbx+r15]
fffff803`d9af78d4 4c8955c7        mov     qword ptr [rbp-39h],r10
fffff803`d9af78d8 483bc3          cmp     rax,rbx
fffff803`d9af78db 0f85a70f0000    jne     nt!ExFreePool+0x77a (fffff803`d9af8888)

nt!ExFreePoolWithTag+0x781:
fffff803`d9af78e1 450fb65a01      movzx   r11d,byte ptr [r10+1]
fffff803`d9af78e6 44895dbf        mov     dword ptr [rbp-41h],r11d
fffff803`d9af78ea 85ff            test    edi,edi
fffff803`d9af78ec 0f8537050000    jne     nt!ExFreePoolWithTag+0xcc9 (fffff803`d9af7e29)

nt!ExFreePoolWithTag+0x792:
fffff803`d9af78f2 8b05b8670e00    mov     eax,dword ptr [nt!ExpNumberOfNonPagedPools (fffff803`d9bde0b0)]
fffff803`d9af78f8 413bc4          cmp     eax,r12d
fffff803`d9af78fb 0f877e040000    ja      nt!ExFreePoolWithTag+0xc1f (fffff803`d9af7d7f)

nt!ExFreePoolWithTag+0x7a1:
fffff803`d9af7901 453bdc          cmp     r11d,r12d
fffff803`d9af7904 0f83970f0000    jae     nt!ExFreePool+0x793 (fffff803`d9af88a1)

nt!ExFreePoolWithTag+0x7aa:
fffff803`d9af790a 8b7d7f          mov     edi,dword ptr [rbp+7Fh]
fffff803`d9af790d 85ff            test    edi,edi
fffff803`d9af790f 0f88a50f0000    js      nt!ExFreePool+0x7ac (fffff803`d9af88ba)

nt!ExFreePoolWithTag+0x7b5:
fffff803`d9af7915 0fbaf71f        btr     edi,1Fh
fffff803`d9af7919 3b3d2d690e00    cmp     edi,dword ptr [nt!PoolHitTag (fffff803`d9bde24c)]
fffff803`d9af791f 0f843d080000    je      nt!ExFreePoolWithTag+0x1002 (fffff803`d9af8162)

nt!ExFreePoolWithTag+0x7c5:
fffff803`d9af7925 8b0559670e00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)]
fffff803`d9af792b a841            test    al,41h
fffff803`d9af792d 0f85930f0000    jne     nt!ExFreePool+0x7b8 (fffff803`d9af88c6)

nt!ExFreePoolWithTag+0x7d3:
fffff803`d9af7933 448be6          mov     r12d,esi
fffff803`d9af7936 4183e420        and     r12d,20h
fffff803`d9af793a 0f8594040000    jne     nt!ExFreePoolWithTag+0xc74 (fffff803`d9af7dd4)

nt!ExFreePoolWithTag+0x7e0:
fffff803`d9af7940 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`d9af7948 4c8b0dd91b0200  mov     r9,qword ptr [nt!PoolTrackTableMask (fffff803`d9b19528)]
fffff803`d9af794f 8bc8            mov     ecx,eax
fffff803`d9af7951 488d05a8e6d8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af7958 4c8b9cc820212900 mov     r11,qword ptr [rax+rcx*8+292120h]

nt!ExFreePoolWithTag+0x800:
fffff803`d9af7960 8bc7            mov     eax,edi
fffff803`d9af7962 4869c05f9e0000  imul    rax,rax,9E5Fh
fffff803`d9af7969 488bd0          mov     rdx,rax
fffff803`d9af796c 48c1ea20        shr     rdx,20h
fffff803`d9af7970 33d0            xor     edx,eax
fffff803`d9af7972 4123d1          and     edx,r9d
fffff803`d9af7975 448bd2          mov     r10d,edx
fffff803`d9af7978 488d0c92        lea     rcx,[rdx+rdx*4]
fffff803`d9af797c 4c8d04cd00000000 lea     r8,[rcx*8]
fffff803`d9af7984 438b0418        mov     eax,dword ptr [r8+r11]
fffff803`d9af7988 4b8d0c03        lea     rcx,[r11+r8]
fffff803`d9af798c 3bc7            cmp     eax,edi
fffff803`d9af798e 7433            je      nt!ExFreePoolWithTag+0x863 (fffff803`d9af79c3)

nt!ExFreePoolWithTag+0x830:
fffff803`d9af7990 85c0            test    eax,eax
fffff803`d9af7992 0f84ee050000    je      nt!ExFreePoolWithTag+0xe26 (fffff803`d9af7f86)

nt!ExFreePoolWithTag+0x838:
fffff803`d9af7998 8d4201          lea     eax,[rdx+1]
fffff803`d9af799b 4123c1          and     eax,r9d
fffff803`d9af799e 8bd0            mov     edx,eax
fffff803`d9af79a0 413bc2          cmp     eax,r10d
fffff803`d9af79a3 0f8429060000    je      nt!ExFreePoolWithTag+0xe72 (fffff803`d9af7fd2)

nt!ExFreePoolWithTag+0x849:
fffff803`d9af79a9 8bc2            mov     eax,edx
fffff803`d9af79ab 488d0c80        lea     rcx,[rax+rax*4]
fffff803`d9af79af 4c8d04cd00000000 lea     r8,[rcx*8]
fffff803`d9af79b7 438b0418        mov     eax,dword ptr [r8+r11]
fffff803`d9af79bb 4b8d0c03        lea     rcx,[r11+r8]
fffff803`d9af79bf 3bc7            cmp     eax,edi
fffff803`d9af79c1 75cd            jne     nt!ExFreePoolWithTag+0x830 (fffff803`d9af7990)

nt!ExFreePoolWithTag+0x863:
fffff803`d9af79c3 40f6c601        test    sil,1
fffff803`d9af79c7 0f85d2020000    jne     nt!ExFreePoolWithTag+0xb3f (fffff803`d9af7c9f)

nt!ExFreePoolWithTag+0x86d:
fffff803`d9af79cd f0ff4108        lock inc dword ptr [rcx+8]
fffff803`d9af79d1 488b45b7        mov     rax,qword ptr [rbp-49h]
fffff803`d9af79d5 48f7d8          neg     rax
fffff803`d9af79d8 f0480fc14110    lock xadd qword ptr [rcx+10h],rax

nt!ExFreePoolWithTag+0x87e:
fffff803`d9af79de 488b5db7        mov     rbx,qword ptr [rbp-49h]

nt!ExFreePoolWithTag+0x882:
fffff803`d9af79e2 8b05b8660e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]
fffff803`d9af79e8 a917040000      test    eax,417h
fffff803`d9af79ed 0f85f00e0000    jne     nt!ExFreePool+0x7d5 (fffff803`d9af88e3)

nt!ExFreePoolWithTag+0x893:
fffff803`d9af79f3 488bfb          mov     rdi,rbx
fffff803`d9af79f6 4585ed          test    r13d,r13d
fffff803`d9af79f9 0f8499010000    je      nt!ExFreePoolWithTag+0xa38 (fffff803`d9af7b98)

nt!ExFreePoolWithTag+0x89f:
fffff803`d9af79ff 48c7c3e0ffffff  mov     rbx,0FFFFFFFFFFFFFFE0h
fffff803`d9af7a06 488bc3          mov     rax,rbx
fffff803`d9af7a09 f0490fc14650    lock xadd qword ptr [r14+50h],rax
fffff803`d9af7a0f 813d33680e0046726167 cmp dword ptr [nt!PoolHitTag (fffff803`d9bde24c)],67617246h
fffff803`d9af7a19 0f8449070000    je      nt!ExFreePoolWithTag+0x1008 (fffff803`d9af8168)

nt!ExFreePoolWithTag+0x8bf:
fffff803`d9af7a1f 8b055f660e00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)]
fffff803`d9af7a25 4c8b6dc7        mov     r13,qword ptr [rbp-39h]
fffff803`d9af7a29 a841            test    al,41h
fffff803`d9af7a2b 0f85670f0000    jne     nt!ExFreePool+0x8a6 (fffff803`d9af8998)

nt!ExFreePoolWithTag+0x8d1:
fffff803`d9af7a31 4585e4          test    r12d,r12d
fffff803`d9af7a34 0f85ce040000    jne     nt!ExFreePoolWithTag+0xda8 (fffff803`d9af7f08)

nt!ExFreePoolWithTag+0x8da:
fffff803`d9af7a3a 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`d9af7a42 4c8b05df1a0200  mov     r8,qword ptr [nt!PoolTrackTableMask (fffff803`d9b19528)]
fffff803`d9af7a49 8bc8            mov     ecx,eax
fffff803`d9af7a4b 488d05aee5d8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af7a52 4c8b8cc820212900 mov     r9,qword ptr [rax+rcx*8+292120h]

nt!ExFreePoolWithTag+0x8fa:
fffff803`d9af7a5a 418bd0          mov     edx,r8d
fffff803`d9af7a5d 81e20ea4b081    and     edx,81B0A40Eh
fffff803`d9af7a63 448bda          mov     r11d,edx
fffff803`d9af7a66 488d0c92        lea     rcx,[rdx+rdx*4]
fffff803`d9af7a6a 4c8d14cd00000000 lea     r10,[rcx*8]
fffff803`d9af7a72 438b0411        mov     eax,dword ptr [r9+r10]
fffff803`d9af7a76 4b8d0c0a        lea     rcx,[r10+r9]
fffff803`d9af7a7a 3d46726167      cmp     eax,67617246h
fffff803`d9af7a7f 0f85370f0000    jne     nt!ExFreePool+0x8ca (fffff803`d9af89bc)

nt!ExFreePoolWithTag+0x925:
fffff803`d9af7a85 40f6c601        test    sil,1
fffff803`d9af7a89 0f85f6030000    jne     nt!ExFreePoolWithTag+0xd25 (fffff803`d9af7e85)

nt!ExFreePoolWithTag+0x92f:
fffff803`d9af7a8f f0ff4108        lock inc dword ptr [rcx+8]
fffff803`d9af7a93 f0480fc15910    lock xadd qword ptr [rcx+10h],rbx

nt!ExFreePoolWithTag+0x939:
fffff803`d9af7a99 448b6577        mov     r12d,dword ptr [rbp+77h]
fffff803`d9af7a9d 4983c520        add     r13,20h
fffff803`d9af7aa1 498d7608        lea     rsi,[r14+8]
fffff803`d9af7aa5 4585e4          test    r12d,r12d
fffff803`d9af7aa8 0f8539030000    jne     nt!ExFreePoolWithTag+0xc87 (fffff803`d9af7de7)

nt!ExFreePoolWithTag+0x94e:
fffff803`d9af7aae 4533c9          xor     r9d,r9d
fffff803`d9af7ab1 488975df        mov     qword ptr [rbp-21h],rsi
fffff803`d9af7ab5 4c894dd7        mov     qword ptr [rbp-29h],r9
fffff803`d9af7ab9 440f20c0        mov     rax,cr8
fffff803`d9af7abd b902000000      mov     ecx,2
fffff803`d9af7ac2 440f22c1        mov     cr8,rcx
fffff803`d9af7ac6 f705b4650e0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d9af7ad0 8845e7          mov     byte ptr [rbp-19h],al
fffff803`d9af7ad3 0f85410f0000    jne     nt!ExFreePool+0x934 (fffff803`d9af8a1a)

nt!ExFreePoolWithTag+0x979:
fffff803`d9af7ad9 488d55d7        lea     rdx,[rbp-29h]
fffff803`d9af7add 488716          xchg    rdx,qword ptr [rsi]
fffff803`d9af7ae0 4885d2          test    rdx,rdx
fffff803`d9af7ae3 0f858c040000    jne     nt!ExFreePoolWithTag+0xe15 (fffff803`d9af7f75)

nt!ExFreePoolWithTag+0x989:
fffff803`d9af7ae9 410fb64502      movzx   eax,byte ptr [r13+2]
fffff803`d9af7aee 8bc8            mov     ecx,eax
fffff803`d9af7af0 48c1e104        shl     rcx,4
fffff803`d9af7af4 4903cd          add     rcx,r13
fffff803`d9af7af7 41807d0300      cmp     byte ptr [r13+3],0
fffff803`d9af7afc 0f8550040000    jne     nt!ExFreePoolWithTag+0xdf2 (fffff803`d9af7f52)

nt!ExFreePoolWithTag+0x9a2:
fffff803`d9af7b02 3c01            cmp     al,1
fffff803`d9af7b04 7426            je      nt!ExFreePoolWithTag+0x9cc (fffff803`d9af7b2c)

nt!ExFreePoolWithTag+0x9a6:
fffff803`d9af7b06 4d8b4510        mov     r8,qword ptr [r13+10h]
fffff803`d9af7b0a 498b5518        mov     rdx,qword ptr [r13+18h]
fffff803`d9af7b0e 498d4510        lea     rax,[r13+10h]
fffff803`d9af7b12 49394008        cmp     qword ptr [r8+8],rax
fffff803`d9af7b16 0f85100f0000    jne     nt!ExFreePool+0x946 (fffff803`d9af8a2c)

nt!ExFreePoolWithTag+0x9bc:
fffff803`d9af7b1c 483902          cmp     qword ptr [rdx],rax
fffff803`d9af7b1f 0f85070f0000    jne     nt!ExFreePool+0x946 (fffff803`d9af8a2c)

nt!ExFreePoolWithTag+0x9c5:
fffff803`d9af7b25 4c8902          mov     qword ptr [rdx],r8
fffff803`d9af7b28 49895008        mov     qword ptr [r8+8],rdx

nt!ExFreePoolWithTag+0x9cc:
fffff803`d9af7b2c 4c8be9          mov     r13,rcx

nt!ExFreePoolWithTag+0x9cf:
fffff803`d9af7b2f 48f7c1ff0f0000  test    rcx,0FFFh
fffff803`d9af7b36 0f8558030000    jne     nt!ExFreePoolWithTag+0xd34 (fffff803`d9af7e94)

nt!ExFreePoolWithTag+0x9dc:
fffff803`d9af7b3c f041ff8ec0000000 lock dec dword ptr [r14+0C0h]
fffff803`d9af7b44 488b5db7        mov     rbx,qword ptr [rbp-49h]

nt!ExFreePoolWithTag+0x9e8:
fffff803`d9af7b48 4585e4          test    r12d,r12d
fffff803`d9af7b4b 0f8500030000    jne     nt!ExFreePoolWithTag+0xcf1 (fffff803`d9af7e51)

nt!ExFreePoolWithTag+0x9f1:
fffff803`d9af7b51 f70529650e0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d9af7b5b 0f85d90e0000    jne     nt!ExFreePool+0x954 (fffff803`d9af8a3a)

nt!ExFreePoolWithTag+0xa01:
fffff803`d9af7b61 0f0d4dd7        prefetchw [rbp-29h]
fffff803`d9af7b65 488b45d7        mov     rax,qword ptr [rbp-29h]
fffff803`d9af7b69 4885c0          test    rax,rax
fffff803`d9af7b6c 0f85f4030000    jne     nt!ExFreePoolWithTag+0xe06 (fffff803`d9af7f66)

nt!ExFreePoolWithTag+0xa12:
fffff803`d9af7b72 488b4ddf        mov     rcx,qword ptr [rbp-21h]
fffff803`d9af7b76 488d45d7        lea     rax,[rbp-29h]
fffff803`d9af7b7a f04c0fb109      lock cmpxchg qword ptr [rcx],r9
fffff803`d9af7b7f 488d4dd7        lea     rcx,[rbp-29h]
fffff803`d9af7b83 483bc1          cmp     rax,rcx
fffff803`d9af7b86 0f85ce030000    jne     nt!ExFreePoolWithTag+0xdfa (fffff803`d9af7f5a)

nt!ExFreePoolWithTag+0xa2c:
fffff803`d9af7b8c 488b5db7        mov     rbx,qword ptr [rbp-49h]

nt!ExFreePoolWithTag+0xa30:
fffff803`d9af7b90 0fb645e7        movzx   eax,byte ptr [rbp-19h]

nt!ExFreePoolWithTag+0xa34:
fffff803`d9af7b94 440f22c0        mov     cr8,rax

nt!ExFreePoolWithTag+0xa38:
fffff803`d9af7b98 4885db          test    rbx,rbx
fffff803`d9af7b9b 7456            je      nt!ExFreePoolWithTag+0xa93 (fffff803`d9af7bf3)

nt!ExFreePoolWithTag+0xa3d:
fffff803`d9af7b9d 4c3b3dd4640e00  cmp     r15,qword ptr [nt!MmNonPagedPoolStart (fffff803`d9bde078)]
fffff803`d9af7ba4 0f82e1000000    jb      nt!ExFreePoolWithTag+0xb2b (fffff803`d9af7c8b)

nt!ExFreePoolWithTag+0xa4a:
fffff803`d9af7baa 4c3b3daf650e00  cmp     r15,qword ptr [nt!MiNonPagedPoolEnd (fffff803`d9bde160)]
fffff803`d9af7bb1 0f83d4000000    jae     nt!ExFreePoolWithTag+0xb2b (fffff803`d9af7c8b)

nt!ExFreePoolWithTag+0xa57:
fffff803`d9af7bb7 b800000000      mov     eax,0
fffff803`d9af7bbc 48f7c3ff0f0000  test    rbx,0FFFh
fffff803`d9af7bc3 488bf3          mov     rsi,rbx
fffff803`d9af7bc6 0f95c0          setne   al
fffff803`d9af7bc9 48c1ee0c        shr     rsi,0Ch
fffff803`d9af7bcd 498bcf          mov     rcx,r15
fffff803`d9af7bd0 4803f0          add     rsi,rax
fffff803`d9af7bd3 488bd6          mov     rdx,rsi
fffff803`d9af7bd6 e89570e3ff      call    nt!MiInsertNonPagedPoolOnSlist (fffff803`d992ec70)
fffff803`d9af7bdb 448be0          mov     r12d,eax
fffff803`d9af7bde 83f801          cmp     eax,1
fffff803`d9af7be1 0f8556010000    jne     nt!ExFreePoolWithTag+0xbdd (fffff803`d9af7d3d)

nt!ExFreePoolWithTag+0xa87:
fffff803`d9af7be7 48c1eb0c        shr     rbx,0Ch
fffff803`d9af7beb f7db            neg     ebx
fffff803`d9af7bed f0410fc15e48    lock xadd dword ptr [r14+48h],ebx

nt!ExFreePoolWithTag+0xa93:
fffff803`d9af7bf3 f041ff4644      lock inc dword ptr [r14+44h]
fffff803`d9af7bf8 48f7df          neg     rdi
fffff803`d9af7bfb f0490fc17e50    lock xadd qword ptr [r14+50h],rdi
fffff803`d9af7c01 e903f8ffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`d9af7409)

nt!ExFreePoolWithTag+0xaa6:
fffff803`d9af7c06 4585e4          test    r12d,r12d
fffff803`d9af7c09 0f856ffaffff    jne     nt!ExFreePoolWithTag+0x51e (fffff803`d9af767e)

nt!ExFreePoolWithTag+0xaaf:
fffff803`d9af7c0f 488b0dca040200  mov     rcx,qword ptr [nt!PoolTrackTable (fffff803`d9b180e0)]
fffff803`d9af7c16 458b0408        mov     r8d,dword ptr [r8+rcx]
fffff803`d9af7c1a 4585c0          test    r8d,r8d
fffff803`d9af7c1d 0f845bfaffff    je      nt!ExFreePoolWithTag+0x51e (fffff803`d9af767e)

nt!ExFreePoolWithTag+0xac3:
fffff803`d9af7c23 448902          mov     dword ptr [rdx],r8d
fffff803`d9af7c26 e964faffff      jmp     nt!ExFreePoolWithTag+0x52f (fffff803`d9af768f)

nt!ExFreePoolWithTag+0xacb:
fffff803`d9af7c2b 3d00010000      cmp     eax,100h
fffff803`d9af7c30 0f83f2030000    jae     nt!ExFreePoolWithTag+0xec8 (fffff803`d9af8028)

nt!ExFreePoolWithTag+0xad6:
fffff803`d9af7c36 418b474c        mov     eax,dword ptr [r15+4Ch]
fffff803`d9af7c3a 85c0            test    eax,eax
fffff803`d9af7c3c 0f8585f8ffff    jne     nt!ExFreePoolWithTag+0x367 (fffff803`d9af74c7)

nt!ExFreePoolWithTag+0xae2:
fffff803`d9af7c42 33d2            xor     edx,edx
fffff803`d9af7c44 498bcf          mov     rcx,r15
fffff803`d9af7c47 e8f4efffff      call    nt!ExDeferredFreePool (fffff803`d9af6c40)
fffff803`d9af7c4c e976f8ffff      jmp     nt!ExFreePoolWithTag+0x367 (fffff803`d9af74c7)

nt!ExFreePoolWithTag+0xaf1:
fffff803`d9af7c51 488b55c7        mov     rdx,qword ptr [rbp-39h]
fffff803`d9af7c55 448bc6          mov     r8d,esi
fffff803`d9af7c58 8bcf            mov     ecx,edi
fffff803`d9af7c5a e821d7e4ff      call    nt!ExpRemovePoolTrackerExpansion (fffff803`d9945380)
fffff803`d9af7c5f e9fef6ffff      jmp     nt!ExFreePoolWithTag+0x202 (fffff803`d9af7362)

nt!ExFreePoolWithTag+0xb04:
fffff803`d9af7c64 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`d9af7c6e 498bc7          mov     rax,r15
fffff803`d9af7c71 48c1e809        shr     rax,9
fffff803`d9af7c75 4823c1          and     rax,rcx
fffff803`d9af7c78 48b90000000080f6ffff mov rcx,0FFFFF68000000000h
fffff803`d9af7c82 488b0408        mov     rax,qword ptr [rax+rcx]
fffff803`d9af7c86 e9edfbffff      jmp     nt!ExFreePoolWithTag+0x718 (fffff803`d9af7878)

nt!ExFreePoolWithTag+0xb2b:
fffff803`d9af7c8b 448b457f        mov     r8d,dword ptr [rbp+7Fh]
fffff803`d9af7c8f 488bd3          mov     rdx,rbx
fffff803`d9af7c92 498bcf          mov     rcx,r15
fffff803`d9af7c95 e826d0e5ff      call    nt!MiFreePagedPoolPages (fffff803`d9954cc0)
fffff803`d9af7c9a e948ffffff      jmp     nt!ExFreePoolWithTag+0xa87 (fffff803`d9af7be7)

nt!ExFreePoolWithTag+0xb3f:
fffff803`d9af7c9f f0ff411c        lock inc dword ptr [rcx+1Ch]
fffff803`d9af7ca3 488b45b7        mov     rax,qword ptr [rbp-49h]
fffff803`d9af7ca7 48f7d8          neg     rax
fffff803`d9af7caa f0480fc14120    lock xadd qword ptr [rcx+20h],rax
fffff803`d9af7cb0 e929fdffff      jmp     nt!ExFreePoolWithTag+0x87e (fffff803`d9af79de)

nt!ExFreePoolWithTag+0xb55:
fffff803`d9af7cb5 f705e1630e0000080000 test dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)],800h
fffff803`d9af7cbf 0f85f9f5ffff    jne     nt!ExFreePoolWithTag+0x15e (fffff803`d9af72be)

nt!ExFreePoolWithTag+0xb65:
fffff803`d9af7cc5 4981c740110000  add     r15,1140h
fffff803`d9af7ccc e9edf5ffff      jmp     nt!ExFreePoolWithTag+0x15e (fffff803`d9af72be)

nt!ExFreePoolWithTag+0xb71:
fffff803`d9af7cd1 488d8a80140000  lea     rcx,[rdx+1480h]
fffff803`d9af7cd8 e9f6f6ffff      jmp     nt!ExFreePoolWithTag+0x273 (fffff803`d9af73d3)

nt!ExFreePoolWithTag+0xb7d:
fffff803`d9af7cdd 4c3bde          cmp     r11,rsi
fffff803`d9af7ce0 7603            jbe     nt!ExFreePoolWithTag+0xb85 (fffff803`d9af7ce5)

nt!ExFreePoolWithTag+0xb82:
fffff803`d9af7ce2 4c8bde          mov     r11,rsi

nt!ExFreePoolWithTag+0xb85:
fffff803`d9af7ce5 498bc9          mov     rcx,r9
fffff803`d9af7ce8 498bc1          mov     rax,r9
fffff803`d9af7ceb 492bcb          sub     rcx,r11
fffff803`d9af7cee f0490fb14a40    lock cmpxchg qword ptr [r10+40h],rcx
fffff803`d9af7cf4 0f850bf9ffff    jne     nt!ExFreePoolWithTag+0x4a5 (fffff803`d9af7605)

nt!ExFreePoolWithTag+0xb9a:
fffff803`d9af7cfa 498bc3          mov     rax,r11
fffff803`d9af7cfd f0490fc14248    lock xadd qword ptr [r10+48h],rax
fffff803`d9af7d03 4c03d8          add     r11,rax
fffff803`d9af7d06 4c3b5a08        cmp     r11,qword ptr [rdx+8]
fffff803`d9af7d0a 0f86f5f8ffff    jbe     nt!ExFreePoolWithTag+0x4a5 (fffff803`d9af7605)

nt!ExFreePoolWithTag+0xbb0:
fffff803`d9af7d10 33c0            xor     eax,eax
fffff803`d9af7d12 49874248        xchg    rax,qword ptr [r10+48h]
fffff803`d9af7d16 4885c0          test    rax,rax
fffff803`d9af7d19 0f84e6f8ffff    je      nt!ExFreePoolWithTag+0x4a5 (fffff803`d9af7605)

nt!ExFreePoolWithTag+0xbbf:
fffff803`d9af7d1f 8b4dbf          mov     ecx,dword ptr [rbp-41h]
fffff803`d9af7d22 4533c9          xor     r9d,r9d
fffff803`d9af7d25 4c8bc0          mov     r8,rax
fffff803`d9af7d28 498bd2          mov     rdx,r10
fffff803`d9af7d2b e83858e8ff      call    nt!PspReturnResourceQuota (fffff803`d997d568)
fffff803`d9af7d30 4c8b45f7        mov     r8,qword ptr [rbp-9]
fffff803`d9af7d34 4c8b5507        mov     r10,qword ptr [rbp+7]
fffff803`d9af7d38 e9c8f8ffff      jmp     nt!ExFreePoolWithTag+0x4a5 (fffff803`d9af7605)

nt!ExFreePoolWithTag+0xbdd:
fffff803`d9af7d3d 488bd6          mov     rdx,rsi
fffff803`d9af7d40 498bcf          mov     rcx,r15
fffff803`d9af7d43 e888a4e3ff      call    nt!MiClearNonPagedPtes (fffff803`d99321d0)
fffff803`d9af7d48 4885c0          test    rax,rax
fffff803`d9af7d4b 0f85e6010000    jne     nt!ExFreePoolWithTag+0xdd7 (fffff803`d9af7f37)

nt!ExFreePoolWithTag+0xbf1:
fffff803`d9af7d51 458bc4          mov     r8d,r12d
fffff803`d9af7d54 488bd6          mov     rdx,rsi
fffff803`d9af7d57 498bcf          mov     rcx,r15
fffff803`d9af7d5a e87137e3ff      call    nt!MiReturnNonPagedPoolVa (fffff803`d992b4d0)
fffff803`d9af7d5f e983feffff      jmp     nt!ExFreePoolWithTag+0xa87 (fffff803`d9af7be7)

nt!ExFreePoolWithTag+0xc04:
fffff803`d9af7d64 4c3bf8          cmp     r15,rax
fffff803`d9af7d67 0f8277faffff    jb      nt!ExFreePoolWithTag+0x684 (fffff803`d9af77e4)

nt!ExFreePoolWithTag+0xc0d:
fffff803`d9af7d6d 49b800000040fbf6ffff mov r8,0FFFFF6FB40000000h

nt!ExFreePoolWithTag+0xc17:
fffff803`d9af7d77 418bf1          mov     esi,r9d
fffff803`d9af7d7a e9b1faffff      jmp     nt!ExFreePoolWithTag+0x6d0 (fffff803`d9af7830)

nt!ExFreePoolWithTag+0xc1f:
fffff803`d9af7d7f 4c8d357ae2d8ff  lea     r14,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af7d86 498bca          mov     rcx,r10
fffff803`d9af7d89 448be0          mov     r12d,eax
fffff803`d9af7d8c 4f8bb4ded0a33500 mov     r14,qword ptr [r14+r11*8+35A3D0h]
fffff803`d9af7d94 e877a7d9ff      call    nt!MmIsNonPagedPoolNx (fffff803`d9892510)
fffff803`d9af7d99 85c0            test    eax,eax
fffff803`d9af7d9b 0f8560fbffff    jne     nt!ExFreePoolWithTag+0x7a1 (fffff803`d9af7901)

nt!ExFreePoolWithTag+0xc41:
fffff803`d9af7da1 f705f5620e0000080000 test dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)],800h
fffff803`d9af7dab 0f8550fbffff    jne     nt!ExFreePoolWithTag+0x7a1 (fffff803`d9af7901)

nt!ExFreePoolWithTag+0xc51:
fffff803`d9af7db1 4981c640110000  add     r14,1140h
fffff803`d9af7db8 e944fbffff      jmp     nt!ExFreePoolWithTag+0x7a1 (fffff803`d9af7901)

nt!ExFreePoolWithTag+0xc5d:
fffff803`d9af7dbd be21000000      mov     esi,21h
fffff803`d9af7dc2 e969faffff      jmp     nt!ExFreePoolWithTag+0x6d0 (fffff803`d9af7830)

nt!ExFreePoolWithTag+0xc67:
fffff803`d9af7dc7 e804d31c00      call    nt!MiSessionPoolVector (fffff803`d9cc50d0)
fffff803`d9af7dcc 4c8bf0          mov     r14,rax
fffff803`d9af7dcf e9b7faffff      jmp     nt!ExFreePoolWithTag+0x72b (fffff803`d9af788b)

nt!ExFreePoolWithTag+0xc74:
fffff803`d9af7dd4 4c8b1d15030200  mov     r11,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`d9b180f0)]
fffff803`d9af7ddb 4c8b0d06030200  mov     r9,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`d9b180e8)]
fffff803`d9af7de2 e979fbffff      jmp     nt!ExFreePoolWithTag+0x800 (fffff803`d9af7960)

nt!ExFreePoolWithTag+0xc87:
fffff803`d9af7de7 440f20c3        mov     rbx,cr8
fffff803`d9af7deb b801000000      mov     eax,1
fffff803`d9af7df0 440f22c0        mov     cr8,rax
fffff803`d9af7df4 f00fba3600      lock btr dword ptr [rsi],0
fffff803`d9af7df9 0f83ff010000    jae     nt!ExFreePoolWithTag+0xe9e (fffff803`d9af7ffe)

nt!ExFreePoolWithTag+0xc9f:
fffff803`d9af7dff 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af7e08 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9af7e0c 0fb6c3          movzx   eax,bl
fffff803`d9af7e0f 894630          mov     dword ptr [rsi+30h],eax
fffff803`d9af7e12 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af7e1b fe8037040000    inc     byte ptr [rax+437h]

nt!ExFreePoolWithTag+0xcc1:
fffff803`d9af7e21 4533c9          xor     r9d,r9d
fffff803`d9af7e24 e9c0fcffff      jmp     nt!ExFreePoolWithTag+0x989 (fffff803`d9af7ae9)

nt!ExFreePoolWithTag+0xcc9:
fffff803`d9af7e29 40f6c620        test    sil,20h
fffff803`d9af7e2d 0f85cefaffff    jne     nt!ExFreePoolWithTag+0x7a1 (fffff803`d9af7901)

nt!ExFreePoolWithTag+0xcd3:
fffff803`d9af7e33 448b256e620e00  mov     r12d,dword ptr [nt!ExpNumberOfPagedPools (fffff803`d9bde0a8)]
fffff803`d9af7e3a 4c8d35bfe1d8ff  lea     r14,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af7e41 4f8bb4dec0a13500 mov     r14,qword ptr [r14+r11*8+35A1C0h]
fffff803`d9af7e49 41ffc4          inc     r12d
fffff803`d9af7e4c e9b0faffff      jmp     nt!ExFreePoolWithTag+0x7a1 (fffff803`d9af7901)

nt!ExFreePoolWithTag+0xcf1:
fffff803`d9af7e51 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af7e5a b901000000      mov     ecx,1
fffff803`d9af7e5f fe8837040000    dec     byte ptr [rax+437h]
fffff803`d9af7e65 0fb65e30        movzx   ebx,byte ptr [rsi+30h]
fffff803`d9af7e69 4c894e08        mov     qword ptr [rsi+8],r9
fffff803`d9af7e6d 33c0            xor     eax,eax
fffff803`d9af7e6f f00fb10e        lock cmpxchg dword ptr [rsi],ecx
fffff803`d9af7e73 0f856f010000    jne     nt!ExFreePoolWithTag+0xe88 (fffff803`d9af7fe8)

nt!ExFreePoolWithTag+0xd19:
fffff803`d9af7e79 0fb6c3          movzx   eax,bl
fffff803`d9af7e7c 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`d9af7e80 e90ffdffff      jmp     nt!ExFreePoolWithTag+0xa34 (fffff803`d9af7b94)

nt!ExFreePoolWithTag+0xd25:
fffff803`d9af7e85 f0ff411c        lock inc dword ptr [rcx+1Ch]
fffff803`d9af7e89 f0480fc15920    lock xadd qword ptr [rcx+20h],rbx
fffff803`d9af7e8f e905fcffff      jmp     nt!ExFreePoolWithTag+0x939 (fffff803`d9af7a99)

nt!ExFreePoolWithTag+0xd34:
fffff803`d9af7e94 4881e100f0ffff  and     rcx,0FFFFFFFFFFFFF000h
fffff803`d9af7e9b 498bc5          mov     rax,r13
fffff803`d9af7e9e c6410300        mov     byte ptr [rcx+3],0
fffff803`d9af7ea2 482bc1          sub     rax,rcx
fffff803`d9af7ea5 c60100          mov     byte ptr [rcx],0
fffff803`d9af7ea8 c7410446726565  mov     dword ptr [rcx+4],65657246h
fffff803`d9af7eaf 48c1f804        sar     rax,4
fffff803`d9af7eb3 4883c110        add     rcx,10h
fffff803`d9af7eb7 8841f2          mov     byte ptr [rcx-0Eh],al
fffff803`d9af7eba 8b45bf          mov     eax,dword ptr [rbp-41h]
fffff803`d9af7ebd 8841f1          mov     byte ptr [rcx-0Fh],al
fffff803`d9af7ec0 0fb641f2        movzx   eax,byte ptr [rcx-0Eh]
fffff803`d9af7ec4 41884500        mov     byte ptr [r13],al
fffff803`d9af7ec8 0fb651f2        movzx   edx,byte ptr [rcx-0Eh]
fffff803`d9af7ecc ffca            dec     edx
fffff803`d9af7ece 4883c214        add     rdx,14h
fffff803`d9af7ed2 48c1e204        shl     rdx,4
fffff803`d9af7ed6 4903d6          add     rdx,r14
fffff803`d9af7ed9 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`d9af7edd 488911          mov     qword ptr [rcx],rdx
fffff803`d9af7ee0 48894108        mov     qword ptr [rcx+8],rax
fffff803`d9af7ee4 483910          cmp     qword ptr [rax],rdx
fffff803`d9af7ee7 0f85460b0000    jne     nt!ExFreePool+0x94d (fffff803`d9af8a33)

nt!ExFreePoolWithTag+0xd8d:
fffff803`d9af7eed 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`d9af7ef1 488908          mov     qword ptr [rax],rcx
fffff803`d9af7ef4 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9af7ef8 4881e300f0ffff  and     rbx,0FFFFFFFFFFFFF000h
fffff803`d9af7eff 48895db7        mov     qword ptr [rbp-49h],rbx
fffff803`d9af7f03 e940fcffff      jmp     nt!ExFreePoolWithTag+0x9e8 (fffff803`d9af7b48)

nt!ExFreePoolWithTag+0xda8:
fffff803`d9af7f08 4c8b0de1010200  mov     r9,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`d9b180f0)]
fffff803`d9af7f0f 4c8b05d2010200  mov     r8,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`d9b180e8)]
fffff803`d9af7f16 e93ffbffff      jmp     nt!ExFreePoolWithTag+0x8fa (fffff803`d9af7a5a)

nt!ExFreePoolWithTag+0xdbb:
fffff803`d9af7f1b f7057b610e0000080000 test dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)],800h
fffff803`d9af7f25 0f8560f9ffff    jne     nt!ExFreePoolWithTag+0x72b (fffff803`d9af788b)

nt!ExFreePoolWithTag+0xdcb:
fffff803`d9af7f2b 4981c640110000  add     r14,1140h
fffff803`d9af7f32 e954f9ffff      jmp     nt!ExFreePoolWithTag+0x72b (fffff803`d9af788b)

nt!ExFreePoolWithTag+0xdd7:
fffff803`d9af7f37 488bc8          mov     rcx,rax
fffff803`d9af7f3a e85584ecff      call    nt!MiReturnPhysicalPoolPages (fffff803`d99c0394)
fffff803`d9af7f3f 458bc4          mov     r8d,r12d
fffff803`d9af7f42 488bd6          mov     rdx,rsi
fffff803`d9af7f45 498bcf          mov     rcx,r15
fffff803`d9af7f48 e88335e3ff      call    nt!MiReturnNonPagedPoolVa (fffff803`d992b4d0)
fffff803`d9af7f4d e995fcffff      jmp     nt!ExFreePoolWithTag+0xa87 (fffff803`d9af7be7)

nt!ExFreePoolWithTag+0xdf2:
fffff803`d9af7f52 498bcd          mov     rcx,r13
fffff803`d9af7f55 e9d5fbffff      jmp     nt!ExFreePoolWithTag+0x9cf (fffff803`d9af7b2f)

nt!ExFreePoolWithTag+0xdfa:
fffff803`d9af7f5a 488d4dd7        lea     rcx,[rbp-29h]
fffff803`d9af7f5e e80dc6e4ff      call    nt!KxWaitForLockChainValid (fffff803`d9944570)
fffff803`d9af7f63 4533c9          xor     r9d,r9d

nt!ExFreePoolWithTag+0xe06:
fffff803`d9af7f66 f04883700801    lock xor qword ptr [rax+8],1
fffff803`d9af7f6c 4c894dd7        mov     qword ptr [rbp-29h],r9
fffff803`d9af7f70 e917fcffff      jmp     nt!ExFreePoolWithTag+0xa2c (fffff803`d9af7b8c)

nt!ExFreePoolWithTag+0xe15:
fffff803`d9af7f75 488d4dd7        lea     rcx,[rbp-29h]
fffff803`d9af7f79 e86222e3ff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d9af7f7e 4533c9          xor     r9d,r9d
fffff803`d9af7f81 e963fbffff      jmp     nt!ExFreePoolWithTag+0x989 (fffff803`d9af7ae9)

nt!ExFreePoolWithTag+0xe26:
fffff803`d9af7f86 4585e4          test    r12d,r12d
fffff803`d9af7f89 0f8509faffff    jne     nt!ExFreePoolWithTag+0x838 (fffff803`d9af7998)

nt!ExFreePoolWithTag+0xe2f:
fffff803`d9af7f8f 488b054a010200  mov     rax,qword ptr [nt!PoolTrackTable (fffff803`d9b180e0)]
fffff803`d9af7f96 458b0400        mov     r8d,dword ptr [r8+rax]
fffff803`d9af7f9a 4585c0          test    r8d,r8d
fffff803`d9af7f9d 0f84f5f9ffff    je      nt!ExFreePoolWithTag+0x838 (fffff803`d9af7998)

nt!ExFreePoolWithTag+0xe43:
fffff803`d9af7fa3 448901          mov     dword ptr [rcx],r8d
fffff803`d9af7fa6 e9fef9ffff      jmp     nt!ExFreePoolWithTag+0x849 (fffff803`d9af79a9)

nt!ExFreePoolWithTag+0xe4b:
fffff803`d9af7fab 488b4fd8        mov     rcx,qword ptr [rdi-28h]
fffff803`d9af7faf 4885c9          test    rcx,rcx
fffff803`d9af7fb2 0f85830c0000    jne     nt!ExFreePool+0xb75 (fffff803`d9af8c3b)

nt!ExFreePoolWithTag+0xe58:
fffff803`d9af7fb8 4885c0          test    rax,rax
fffff803`d9af7fbb 0f88a50c0000    js      nt!ExFreePool+0xba0 (fffff803`d9af8c66)

nt!ExFreePoolWithTag+0xe61:
fffff803`d9af7fc1 488d4fd0        lea     rcx,[rdi-30h]
fffff803`d9af7fc5 e8ae2ce9ff      call    nt!ObpDeferObjectDeletion (fffff803`d998ac78)
fffff803`d9af7fca 4533c9          xor     r9d,r9d
fffff803`d9af7fcd e99df3ffff      jmp     nt!ExFreePoolWithTag+0x20f (fffff803`d9af736f)

nt!ExFreePoolWithTag+0xe72:
fffff803`d9af7fd2 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`d9af7fd6 448bc6          mov     r8d,esi
fffff803`d9af7fd9 8bcf            mov     ecx,edi
fffff803`d9af7fdb 488bd3          mov     rdx,rbx
fffff803`d9af7fde e89dd3e4ff      call    nt!ExpRemovePoolTrackerExpansion (fffff803`d9945380)
fffff803`d9af7fe3 e9faf9ffff      jmp     nt!ExFreePoolWithTag+0x882 (fffff803`d9af79e2)

nt!ExFreePoolWithTag+0xe88:
fffff803`d9af7fe8 8bd0            mov     edx,eax
fffff803`d9af7fea 488bce          mov     rcx,rsi
fffff803`d9af7fed e83af0e8ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9af7ff2 0fb6c3          movzx   eax,bl
fffff803`d9af7ff5 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`d9af7ff9 e996fbffff      jmp     nt!ExFreePoolWithTag+0xa34 (fffff803`d9af7b94)

nt!ExFreePoolWithTag+0xe9e:
fffff803`d9af7ffe 488bce          mov     rcx,rsi
fffff803`d9af8001 e81afae8ff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)
fffff803`d9af8006 e9f4fdffff      jmp     nt!ExFreePoolWithTag+0xc9f (fffff803`d9af7dff)

nt!ExFreePoolWithTag+0xeab:
fffff803`d9af800b 448b4b04        mov     r9d,dword ptr [rbx+4]
fffff803`d9af800f 4c8d4310        lea     r8,[rbx+10h]
fffff803`d9af8013 ba0d000000      mov     edx,0Dh
fffff803`d9af8018 b9c2000000      mov     ecx,0C2h
fffff803`d9af801d 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff803`d9af8022 e81984deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8027 cc              int     3

nt!ExFreePoolWithTag+0xec8:
fffff803`d9af8028 ba01000000      mov     edx,1
fffff803`d9af802d 498bcf          mov     rcx,r15
fffff803`d9af8030 e80becffff      call    nt!ExDeferredFreePool (fffff803`d9af6c40)
fffff803`d9af8035 e98df4ffff      jmp     nt!ExFreePoolWithTag+0x367 (fffff803`d9af74c7)

nt!ExFreePoolWithTag+0xeda:
fffff803`d9af803a 418bf1          mov     esi,r9d
fffff803`d9af803d f041ff4744      lock inc dword ptr [r15+44h]
fffff803`d9af8042 488b45c7        mov     rax,qword ptr [rbp-39h]
fffff803`d9af8046 48f7d8          neg     rax
fffff803`d9af8049 f0490fc14750    lock xadd qword ptr [r15+50h],rax
fffff803`d9af804f 498d7f08        lea     rdi,[r15+8]
fffff803`d9af8053 4585ed          test    r13d,r13d
fffff803`d9af8056 0f85230c0000    jne     nt!ExFreePool+0xbb9 (fffff803`d9af8c7f)

nt!ExFreePoolWithTag+0xefc:
fffff803`d9af805c 488d55d7        lea     rdx,[rbp-29h]
fffff803`d9af8060 488bcf          mov     rcx,rdi
fffff803`d9af8063 e88886e4ff      call    nt!KeAcquireInStackQueuedSpinLock (fffff803`d99406f0)
fffff803`d9af8068 4533c9          xor     r9d,r9d
fffff803`d9af806b 418d5501        lea     edx,[r13+1]

nt!ExFreePoolWithTag+0xf0f:
fffff803`d9af806f 4c8b45ff        mov     r8,qword ptr [rbp-1]
fffff803`d9af8073 49f7c0ff0f0000  test    r8,0FFFh
fffff803`d9af807a 7443            je      nt!ExFreePoolWithTag+0xf5f (fffff803`d9af80bf)

nt!ExFreePoolWithTag+0xf1c:
fffff803`d9af807c 4180780300      cmp     byte ptr [r8+3],0
fffff803`d9af8081 753c            jne     nt!ExFreePoolWithTag+0xf5f (fffff803`d9af80bf)

nt!ExFreePoolWithTag+0xf23:
fffff803`d9af8083 4180780201      cmp     byte ptr [r8+2],1
fffff803`d9af8088 8bf2            mov     esi,edx
fffff803`d9af808a 742b            je      nt!ExFreePoolWithTag+0xf57 (fffff803`d9af80b7)

nt!ExFreePoolWithTag+0xf2c:
fffff803`d9af808c 498b5010        mov     rdx,qword ptr [r8+10h]
fffff803`d9af8090 498b4818        mov     rcx,qword ptr [r8+18h]
fffff803`d9af8094 498d4010        lea     rax,[r8+10h]
fffff803`d9af8098 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9af809c 0f85280c0000    jne     nt!ExFreePool+0xc08 (fffff803`d9af8cca)

nt!ExFreePoolWithTag+0xf42:
fffff803`d9af80a2 483901          cmp     qword ptr [rcx],rax
fffff803`d9af80a5 0f851f0c0000    jne     nt!ExFreePool+0xc08 (fffff803`d9af8cca)

nt!ExFreePoolWithTag+0xf4b:
fffff803`d9af80ab 488911          mov     qword ptr [rcx],rdx
fffff803`d9af80ae 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9af80b2 ba01000000      mov     edx,1

nt!ExFreePoolWithTag+0xf57:
fffff803`d9af80b7 410fb64002      movzx   eax,byte ptr [r8+2]
fffff803`d9af80bc 004302          add     byte ptr [rbx+2],al

nt!ExFreePoolWithTag+0xf5f:
fffff803`d9af80bf 8b03            mov     eax,dword ptr [rbx]
fffff803`d9af80c1 84c0            test    al,al
fffff803`d9af80c3 7417            je      nt!ExFreePoolWithTag+0xf7c (fffff803`d9af80dc)

nt!ExFreePoolWithTag+0xf65:
fffff803`d9af80c5 0fb6c0          movzx   eax,al
fffff803`d9af80c8 488bcb          mov     rcx,rbx
fffff803`d9af80cb 48c1e004        shl     rax,4
fffff803`d9af80cf 482bc8          sub     rcx,rax
fffff803`d9af80d2 80790300        cmp     byte ptr [rcx+3],0
fffff803`d9af80d6 0f84f50b0000    je      nt!ExFreePool+0xc0f (fffff803`d9af8cd1)

nt!ExFreePoolWithTag+0xf7c:
fffff803`d9af80dc 48f7c3ff0f0000  test    rbx,0FFFh
fffff803`d9af80e3 745e            je      nt!ExFreePoolWithTag+0xfe3 (fffff803`d9af8143)

nt!ExFreePoolWithTag+0xf85:
fffff803`d9af80e5 0fb64b02        movzx   ecx,byte ptr [rbx+2]
fffff803`d9af80e9 c6430300        mov     byte ptr [rbx+3],0
fffff803`d9af80ed 85f6            test    esi,esi
fffff803`d9af80ef 7413            je      nt!ExFreePoolWithTag+0xfa4 (fffff803`d9af8104)

nt!ExFreePoolWithTag+0xf91:
fffff803`d9af80f1 8bc1            mov     eax,ecx
fffff803`d9af80f3 48c1e004        shl     rax,4
fffff803`d9af80f7 4803c3          add     rax,rbx
fffff803`d9af80fa 48a9ff0f0000    test    rax,0FFFh
fffff803`d9af8100 7402            je      nt!ExFreePoolWithTag+0xfa4 (fffff803`d9af8104)

nt!ExFreePoolWithTag+0xfa2:
fffff803`d9af8102 8808            mov     byte ptr [rax],cl

nt!ExFreePoolWithTag+0xfa4:
fffff803`d9af8104 ffc9            dec     ecx
fffff803`d9af8106 4883c310        add     rbx,10h
fffff803`d9af810a 4883c114        add     rcx,14h
fffff803`d9af810e 48c1e104        shl     rcx,4
fffff803`d9af8112 4903cf          add     rcx,r15
fffff803`d9af8115 488b01          mov     rax,qword ptr [rcx]
fffff803`d9af8118 48894b08        mov     qword ptr [rbx+8],rcx
fffff803`d9af811c 488903          mov     qword ptr [rbx],rax
fffff803`d9af811f 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d9af8123 754f            jne     nt!ExFreePoolWithTag+0x1014 (fffff803`d9af8174)

nt!ExFreePoolWithTag+0xfc5:
fffff803`d9af8125 48895808        mov     qword ptr [rax+8],rbx
fffff803`d9af8129 488919          mov     qword ptr [rcx],rbx
fffff803`d9af812c 4585ed          test    r13d,r13d
fffff803`d9af812f 0f853d0c0000    jne     nt!ExFreePool+0xcc7 (fffff803`d9af8d72)

nt!ExFreePoolWithTag+0xfd5:
fffff803`d9af8135 488d4dd7        lea     rcx,[rbp-29h]
fffff803`d9af8139 e8f20fe2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`d9919130)
fffff803`d9af813e e9c6f2ffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`d9af7409)

nt!ExFreePoolWithTag+0xfe3:
fffff803`d9af8143 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff803`d9af8147 48c1e004        shl     rax,4
fffff803`d9af814b 4803c3          add     rax,rbx
fffff803`d9af814e 48a9ff0f0000    test    rax,0FFFh
fffff803`d9af8154 758f            jne     nt!ExFreePoolWithTag+0xf85 (fffff803`d9af80e5)

nt!ExFreePoolWithTag+0xff6:
fffff803`d9af8156 e9b70b0000      jmp     nt!ExFreePool+0xc5c (fffff803`d9af8d12)

nt!ExFreePoolWithTag+0xffb:
fffff803`d9af815b 8bf0            mov     esi,eax
fffff803`d9af815d e951f7ffff      jmp     nt!ExFreePoolWithTag+0x753 (fffff803`d9af78b3)

nt!ExFreePoolWithTag+0x1002:
fffff803`d9af8162 cc              int     3
fffff803`d9af8163 e9bdf7ffff      jmp     nt!ExFreePoolWithTag+0x7c5 (fffff803`d9af7925)

nt!ExFreePoolWithTag+0x1008:
fffff803`d9af8168 cc              int     3
fffff803`d9af8169 e9b1f8ffff      jmp     nt!ExFreePoolWithTag+0x8bf (fffff803`d9af7a1f)

nt!ExFreePoolWithTag+0x100e:
fffff803`d9af816e cc              int     3
fffff803`d9af816f e96ef1ffff      jmp     nt!ExFreePoolWithTag+0x182 (fffff803`d9af72e2)

nt!ExFreePoolWithTag+0x1014:
fffff803`d9af8174 b903000000      mov     ecx,3
fffff803`d9af8179 cd29            int     29h
fffff803`d9af817b 90              nop
fffff803`d9af817c 90              nop
fffff803`d9af817d 90              nop
fffff803`d9af817e 90              nop
fffff803`d9af817f 90              nop
fffff803`d9af8180 90              nop
fffff803`d9af8181 90              nop
fffff803`d9af8182 90              nop
fffff803`d9af8183 90              nop
fffff803`d9af8184 33d2            xor     edx,edx
fffff803`d9af8186 e9d5efffff      jmp     nt!ExFreePoolWithTag (fffff803`d9af7160)

nt!ExFreePool+0x4a0:
fffff803`d9af85f0 e83ffcdcff      call    nt!MmIsSpecialPoolAddress (fffff803`d98c8234)
fffff803`d9af85f5 83f801          cmp     eax,1
fffff803`d9af85f8 0f858cebffff    jne     nt!ExFreePoolWithTag+0x2a (fffff803`d9af718a)

nt!ExFreePool+0x4ae:
fffff803`d9af85fe f0ff0dfffa0100  lock dec dword ptr [nt!ExpSpecialAllocations (fffff803`d9b18104)]
fffff803`d9af8605 418bc7          mov     eax,r15d
fffff803`d9af8608 bb00100000      mov     ebx,1000h
fffff803`d9af860d 25ff0f0000      and     eax,0FFFh
fffff803`d9af8612 2bd8            sub     ebx,eax
fffff803`d9af8614 8b05865a0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]
fffff803`d9af861a a917040000      test    eax,417h
fffff803`d9af861f 0f84a4000000    je      nt!ExFreePool+0x595 (fffff803`d9af86c9)

nt!ExFreePool+0x4d5:
fffff803`d9af8625 0fbae00a        bt      eax,0Ah
fffff803`d9af8629 7350            jae     nt!ExFreePool+0x537 (fffff803`d9af867b)

nt!ExFreePool+0x4df:
fffff803`d9af862b 48833d1d51020000 cmp     qword ptr [nt!ViVerifierDriverAddedThunkListHead (fffff803`d9b1d750)],0
fffff803`d9af8633 740e            je      nt!ExFreePool+0x4ff (fffff803`d9af8643)

nt!ExFreePool+0x4ed:
fffff803`d9af8635 8bd3            mov     edx,ebx
fffff803`d9af8637 498bcf          mov     rcx,r15
fffff803`d9af863a e811323e00      call    nt!VfCheckForLookaside (fffff803`d9edb850)
fffff803`d9af863f 85c0            test    eax,eax
fffff803`d9af8641 7532            jne     nt!ExFreePool+0x531 (fffff803`d9af8675)

nt!ExFreePool+0x4ff:
fffff803`d9af8643 4c8d0d76f40100  lea     r9,[nt!ExNPagedLookasideLock (fffff803`d9b17ac0)]
fffff803`d9af864a 4c8d054ff40100  lea     r8,[nt!ExNPagedLookasideListHead (fffff803`d9b17aa0)]
fffff803`d9af8651 488bd3          mov     rdx,rbx
fffff803`d9af8654 498bcf          mov     rcx,r15
fffff803`d9af8657 e8f41ef5ff      call    nt!ExpCheckForLookasideList (fffff803`d9a4a550)
fffff803`d9af865c 4c8d0d7df40100  lea     r9,[nt!ExPagedLookasideLock (fffff803`d9b17ae0)]
fffff803`d9af8663 4c8d0546f40100  lea     r8,[nt!ExPagedLookasideListHead (fffff803`d9b17ab0)]
fffff803`d9af866a 488bd3          mov     rdx,rbx
fffff803`d9af866d 498bcf          mov     rcx,r15
fffff803`d9af8670 e8db1ef5ff      call    nt!ExpCheckForLookasideList (fffff803`d9a4a550)

nt!ExFreePool+0x531:
fffff803`d9af8675 8b05255a0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x537:
fffff803`d9af867b a801            test    al,1
fffff803`d9af867d 7411            je      nt!ExFreePool+0x550 (fffff803`d9af8690)

nt!ExFreePool+0x53f:
fffff803`d9af867f 488bd3          mov     rdx,rbx
fffff803`d9af8682 498bcf          mov     rcx,r15
fffff803`d9af8685 e84e77f0ff      call    nt!KeCheckForTimer (fffff803`d99ffdd8)
fffff803`d9af868a 8b05105a0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x550:
fffff803`d9af8690 a804            test    al,4
fffff803`d9af8692 7411            je      nt!ExFreePool+0x569 (fffff803`d9af86a5)

nt!ExFreePool+0x558:
fffff803`d9af8694 488bd3          mov     rdx,rbx
fffff803`d9af8697 498bcf          mov     rcx,r15
fffff803`d9af869a e8e116f5ff      call    nt!ExpCheckForResource (fffff803`d9a49d80)
fffff803`d9af869f 8b05fb590e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x569:
fffff803`d9af86a5 a802            test    al,2
fffff803`d9af86a7 7411            je      nt!ExFreePool+0x582 (fffff803`d9af86ba)

nt!ExFreePool+0x571:
fffff803`d9af86a9 488bd3          mov     rdx,rbx
fffff803`d9af86ac 498bcf          mov     rcx,r15
fffff803`d9af86af e8ac24f5ff      call    nt!ExpCheckForWorker (fffff803`d9a4ab60)
fffff803`d9af86b4 8b05e6590e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x582:
fffff803`d9af86ba a810            test    al,10h
fffff803`d9af86bc 740b            je      nt!ExFreePool+0x595 (fffff803`d9af86c9)

nt!ExFreePool+0x58a:
fffff803`d9af86be 488bd3          mov     rdx,rbx
fffff803`d9af86c1 498bcf          mov     rcx,r15
fffff803`d9af86c4 e8ebe23d00      call    nt!VfFreePoolNotification (fffff803`d9ed69b4)

nt!ExFreePool+0x595:
fffff803`d9af86c9 4d8bc7          mov     r8,r15
fffff803`d9af86cc 4981e000f0ffff  and     r8,0FFFFFFFFFFFFF000h
fffff803`d9af86d3 49f7c7ff0f0000  test    r15,0FFFh
fffff803`d9af86da 7507            jne     nt!ExFreePool+0x5b3 (fffff803`d9af86e3)

nt!ExFreePool+0x5ac:
fffff803`d9af86dc 4981c0f00f0000  add     r8,0FF0h

nt!ExFreePool+0x5b3:
fffff803`d9af86e3 498bcf          mov     rcx,r15
fffff803`d9af86e6 e8a9a1f1ff      call    nt!MmQuerySpecialPoolBlockType (fffff803`d9a12894)
fffff803`d9af86eb 498bcf          mov     rcx,r15
fffff803`d9af86ee 8bf0            mov     esi,eax
fffff803`d9af86f0 e82ba2f1ff      call    nt!MmQuerySpecialPoolBlockSize (fffff803`d9a12920)
fffff803`d9af86f5 418b7804        mov     edi,dword ptr [r8+4]
fffff803`d9af86f9 0fbaf71f        btr     edi,1Fh
fffff803`d9af86fd 488bd8          mov     rbx,rax
fffff803`d9af8700 3b3d465b0e00    cmp     edi,dword ptr [nt!PoolHitTag (fffff803`d9bde24c)]
fffff803`d9af8706 7501            jne     nt!ExFreePool+0x5dd (fffff803`d9af8709)

nt!ExFreePool+0x5dc:
fffff803`d9af8708 cc              int     3

nt!ExFreePool+0x5dd:
fffff803`d9af8709 8b0d75590e00    mov     ecx,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)]
fffff803`d9af870f f6c141          test    cl,41h
fffff803`d9af8712 7417            je      nt!ExFreePool+0x603 (fffff803`d9af872b)

nt!ExFreePool+0x5ec:
fffff803`d9af8714 b9220e0000      mov     ecx,0E22h
fffff803`d9af8719 4d8bcf          mov     r9,r15
fffff803`d9af871c 448bc7          mov     r8d,edi
fffff803`d9af871f 8bd6            mov     edx,esi
fffff803`d9af8721 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9af8726 e82dccf4ff      call    nt!EtwTracePool (fffff803`d9a45358)

nt!ExFreePool+0x603:
fffff803`d9af872b 448bc6          mov     r8d,esi
fffff803`d9af872e 4183e020        and     r8d,20h
fffff803`d9af8732 7522            jne     nt!ExFreePool+0x635 (fffff803`d9af8756)

nt!ExFreePool+0x610:
fffff803`d9af8734 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`d9af873c 4c8b15e50d0200  mov     r10,qword ptr [nt!PoolTrackTableMask (fffff803`d9b19528)]
fffff803`d9af8743 8bc8            mov     ecx,eax
fffff803`d9af8745 488d05b4d8d8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af874c 4c8b9cc820212900 mov     r11,qword ptr [rax+rcx*8+292120h]
fffff803`d9af8754 eb0e            jmp     nt!ExFreePool+0x643 (fffff803`d9af8764)

nt!ExFreePool+0x635:
fffff803`d9af8756 4c8b1d93f90100  mov     r11,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`d9b180f0)]
fffff803`d9af875d 4c8b1584f90100  mov     r10,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`d9b180e8)]

nt!ExFreePool+0x643:
fffff803`d9af8764 8bc7            mov     eax,edi
fffff803`d9af8766 4869c05f9e0000  imul    rax,rax,9E5Fh
fffff803`d9af876d 488bd0          mov     rdx,rax
fffff803`d9af8770 48c1ea20        shr     rdx,20h
fffff803`d9af8774 33d0            xor     edx,eax
fffff803`d9af8776 4123d2          and     edx,r10d
fffff803`d9af8779 448bf2          mov     r14d,edx
fffff803`d9af877c 488d0c92        lea     rcx,[rdx+rdx*4]
fffff803`d9af8780 4c8d0ccd00000000 lea     r9,[rcx*8]
fffff803`d9af8788 438b040b        mov     eax,dword ptr [r11+r9]
fffff803`d9af878c 4b8d0c0b        lea     rcx,[r11+r9]
fffff803`d9af8790 3bc7            cmp     eax,edi
fffff803`d9af8792 7436            je      nt!ExFreePool+0x6b9 (fffff803`d9af87ca)

nt!ExFreePool+0x677:
fffff803`d9af8794 85c0            test    eax,eax
fffff803`d9af8796 7553            jne     nt!ExFreePool+0x6de (fffff803`d9af87eb)

nt!ExFreePool+0x67f:
fffff803`d9af8798 4585c0          test    r8d,r8d
fffff803`d9af879b 754e            jne     nt!ExFreePool+0x6de (fffff803`d9af87eb)

nt!ExFreePool+0x688:
fffff803`d9af879d 488b053cf90100  mov     rax,qword ptr [nt!PoolTrackTable (fffff803`d9b180e0)]
fffff803`d9af87a4 468b0c08        mov     r9d,dword ptr [rax+r9]
fffff803`d9af87a8 4585c9          test    r9d,r9d
fffff803`d9af87ab 743e            je      nt!ExFreePool+0x6de (fffff803`d9af87eb)

nt!ExFreePool+0x69c:
fffff803`d9af87ad 448909          mov     dword ptr [rcx],r9d

nt!ExFreePool+0x69f:
fffff803`d9af87b0 8bc2            mov     eax,edx
fffff803`d9af87b2 488d0c80        lea     rcx,[rax+rax*4]
fffff803`d9af87b6 4c8d0ccd00000000 lea     r9,[rcx*8]
fffff803`d9af87be 438b040b        mov     eax,dword ptr [r11+r9]
fffff803`d9af87c2 4b8d0c0b        lea     rcx,[r11+r9]
fffff803`d9af87c6 3bc7            cmp     eax,edi
fffff803`d9af87c8 75ca            jne     nt!ExFreePool+0x677 (fffff803`d9af8794)

nt!ExFreePool+0x6b9:
fffff803`d9af87ca 48f7db          neg     rbx
fffff803`d9af87cd 40f6c601        test    sil,1
fffff803`d9af87d1 7540            jne     nt!ExFreePool+0x706 (fffff803`d9af8813)

nt!ExFreePool+0x6c6:
fffff803`d9af87d3 f0ff4108        lock inc dword ptr [rcx+8]
fffff803`d9af87d7 f0480fc15910    lock xadd qword ptr [rcx+10h],rbx
fffff803`d9af87dd 498bcf          mov     rcx,r15
fffff803`d9af87e0 e867a1f1ff      call    nt!MmFreeSpecialPool (fffff803`d9a1294c)
fffff803`d9af87e5 90              nop
fffff803`d9af87e6 e92eecffff      jmp     nt!ExFreePoolWithTag+0x2b9 (fffff803`d9af7419)

nt!ExFreePool+0x6de:
fffff803`d9af87eb 8d4201          lea     eax,[rdx+1]
fffff803`d9af87ee 4123c2          and     eax,r10d
fffff803`d9af87f1 8bd0            mov     edx,eax
fffff803`d9af87f3 413bc6          cmp     eax,r14d
fffff803`d9af87f6 75b8            jne     nt!ExFreePool+0x69f (fffff803`d9af87b0)

nt!ExFreePool+0x6eb:
fffff803`d9af87f8 448bc6          mov     r8d,esi
fffff803`d9af87fb 488bd3          mov     rdx,rbx
fffff803`d9af87fe 8bcf            mov     ecx,edi
fffff803`d9af8800 e87bcbe4ff      call    nt!ExpRemovePoolTrackerExpansion (fffff803`d9945380)
fffff803`d9af8805 498bcf          mov     rcx,r15
fffff803`d9af8808 e83fa1f1ff      call    nt!MmFreeSpecialPool (fffff803`d9a1294c)
fffff803`d9af880d 90              nop
fffff803`d9af880e e906ecffff      jmp     nt!ExFreePoolWithTag+0x2b9 (fffff803`d9af7419)

nt!ExFreePool+0x706:
fffff803`d9af8813 f0ff411c        lock inc dword ptr [rcx+1Ch]
fffff803`d9af8817 f0480fc15920    lock xadd qword ptr [rcx+20h],rbx
fffff803`d9af881d 498bcf          mov     rcx,r15
fffff803`d9af8820 e827a1f1ff      call    nt!MmFreeSpecialPool (fffff803`d9a1294c)
fffff803`d9af8825 90              nop
fffff803`d9af8826 e9eeebffff      jmp     nt!ExFreePoolWithTag+0x2b9 (fffff803`d9af7419)

nt!ExFreePool+0x71e:
fffff803`d9af882c 498bc7          mov     rax,r15
fffff803`d9af882f 48c1e812        shr     rax,12h
fffff803`d9af8833 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`d9af8838 4a8b0c00        mov     rcx,qword ptr [rax+r8]
fffff803`d9af883c 48b8ffffffff0f000000 mov rax,0FFFFFFFFFh
fffff803`d9af8846 48c1e90c        shr     rcx,0Ch
fffff803`d9af884a 4823c8          and     rcx,rax
fffff803`d9af884d 488d0449        lea     rax,[rcx+rcx*2]
fffff803`d9af8851 48b91e00000080faffff mov rcx,0FFFFFA800000001Eh
fffff803`d9af885b 4803c0          add     rax,rax
fffff803`d9af885e 0fb604c1        movzx   eax,byte ptr [rcx+rax*8]
fffff803`d9af8862 24f0            and     al,0F0h
fffff803`d9af8864 3c70            cmp     al,70h
fffff803`d9af8866 0f85a2efffff    jne     nt!ExFreePoolWithTag+0x6ae (fffff803`d9af780e)

nt!ExFreePool+0x75e:
fffff803`d9af886c e906f5ffff      jmp     nt!ExFreePoolWithTag+0xc17 (fffff803`d9af7d77)

nt!ExFreePool+0x763:
fffff803`d9af8871 4533c9          xor     r9d,r9d
fffff803`d9af8874 448bc0          mov     r8d,eax
fffff803`d9af8877 488bd3          mov     rdx,rbx
fffff803`d9af887a 498bcf          mov     rcx,r15
fffff803`d9af887d e85638f2ff      call    nt!VerifierFreeTrackedPool (fffff803`d9a1c0d8)
fffff803`d9af8882 90              nop
fffff803`d9af8883 e937f0ffff      jmp     nt!ExFreePoolWithTag+0x75f (fffff803`d9af78bf)

nt!ExFreePool+0x77a:
fffff803`d9af8888 ba21000000      mov     edx,21h
fffff803`d9af888d 4c8bcb          mov     r9,rbx
fffff803`d9af8890 4d8bc7          mov     r8,r15
fffff803`d9af8893 8d4af8          lea     ecx,[rdx-8]
fffff803`d9af8896 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9af889b e8a07bdeff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af88a0 cc              int     3

nt!ExFreePool+0x793:
fffff803`d9af88a1 ba24000000      mov     edx,24h
fffff803`d9af88a6 458bcc          mov     r9d,r12d
fffff803`d9af88a9 4d8bc3          mov     r8,r11
fffff803`d9af88ac 8d4af5          lea     ecx,[rdx-0Bh]
fffff803`d9af88af 4c89542420      mov     qword ptr [rsp+20h],r10
fffff803`d9af88b4 e8877bdeff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af88b9 cc              int     3

nt!ExFreePool+0x7ac:
fffff803`d9af88ba 0fbaf71f        btr     edi,1Fh
fffff803`d9af88be 897d7f          mov     dword ptr [rbp+7Fh],edi
fffff803`d9af88c1 e94ff0ffff      jmp     nt!ExFreePoolWithTag+0x7b5 (fffff803`d9af7915)

nt!ExFreePool+0x7b8:
fffff803`d9af88c6 b9220e0000      mov     ecx,0E22h
fffff803`d9af88cb 4d8bcf          mov     r9,r15
fffff803`d9af88ce 448bc7          mov     r8d,edi
fffff803`d9af88d1 8bd6            mov     edx,esi
fffff803`d9af88d3 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`d9af88d8 e87bcaf4ff      call    nt!EtwTracePool (fffff803`d9a45358)
fffff803`d9af88dd 90              nop
fffff803`d9af88de e950f0ffff      jmp     nt!ExFreePoolWithTag+0x7d3 (fffff803`d9af7933)

nt!ExFreePool+0x7d5:
fffff803`d9af88e3 0fbae00a        bt      eax,0Ah
fffff803`d9af88e7 7357            jae     nt!ExFreePool+0x842 (fffff803`d9af8940)

nt!ExFreePool+0x7df:
fffff803`d9af88e9 837d7700        cmp     dword ptr [rbp+77h],0
fffff803`d9af88ed 7551            jne     nt!ExFreePool+0x842 (fffff803`d9af8940)

nt!ExFreePool+0x7e9:
fffff803`d9af88ef 48833d594e020000 cmp     qword ptr [nt!ViVerifierDriverAddedThunkListHead (fffff803`d9b1d750)],0
fffff803`d9af88f7 740f            je      nt!ExFreePool+0x80a (fffff803`d9af8908)

nt!ExFreePool+0x7f7:
fffff803`d9af88f9 488bd3          mov     rdx,rbx
fffff803`d9af88fc 498bcf          mov     rcx,r15
fffff803`d9af88ff e84c2f3e00      call    nt!VfCheckForLookaside (fffff803`d9edb850)
fffff803`d9af8904 85c0            test    eax,eax
fffff803`d9af8906 7532            jne     nt!ExFreePool+0x83c (fffff803`d9af893a)

nt!ExFreePool+0x80a:
fffff803`d9af8908 4c8d0db1f10100  lea     r9,[nt!ExNPagedLookasideLock (fffff803`d9b17ac0)]
fffff803`d9af890f 4c8d058af10100  lea     r8,[nt!ExNPagedLookasideListHead (fffff803`d9b17aa0)]
fffff803`d9af8916 488bd3          mov     rdx,rbx
fffff803`d9af8919 498bcf          mov     rcx,r15
fffff803`d9af891c e82f1cf5ff      call    nt!ExpCheckForLookasideList (fffff803`d9a4a550)
fffff803`d9af8921 4c8d0db8f10100  lea     r9,[nt!ExPagedLookasideLock (fffff803`d9b17ae0)]
fffff803`d9af8928 4c8d0581f10100  lea     r8,[nt!ExPagedLookasideListHead (fffff803`d9b17ab0)]
fffff803`d9af892f 488bd3          mov     rdx,rbx
fffff803`d9af8932 498bcf          mov     rcx,r15
fffff803`d9af8935 e8161cf5ff      call    nt!ExpCheckForLookasideList (fffff803`d9a4a550)

nt!ExFreePool+0x83c:
fffff803`d9af893a 8b0560570e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x842:
fffff803`d9af8940 a801            test    al,1
fffff803`d9af8942 7411            je      nt!ExFreePool+0x85b (fffff803`d9af8955)

nt!ExFreePool+0x84a:
fffff803`d9af8944 488bd3          mov     rdx,rbx
fffff803`d9af8947 498bcf          mov     rcx,r15
fffff803`d9af894a e88974f0ff      call    nt!KeCheckForTimer (fffff803`d99ffdd8)
fffff803`d9af894f 8b054b570e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x85b:
fffff803`d9af8955 a804            test    al,4
fffff803`d9af8957 7411            je      nt!ExFreePool+0x874 (fffff803`d9af896a)

nt!ExFreePool+0x863:
fffff803`d9af8959 488bd3          mov     rdx,rbx
fffff803`d9af895c 498bcf          mov     rcx,r15
fffff803`d9af895f e81c14f5ff      call    nt!ExpCheckForResource (fffff803`d9a49d80)
fffff803`d9af8964 8b0536570e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x874:
fffff803`d9af896a a802            test    al,2
fffff803`d9af896c 7411            je      nt!ExFreePool+0x88d (fffff803`d9af897f)

nt!ExFreePool+0x87c:
fffff803`d9af896e 488bd3          mov     rdx,rbx
fffff803`d9af8971 498bcf          mov     rcx,r15
fffff803`d9af8974 e8e721f5ff      call    nt!ExpCheckForWorker (fffff803`d9a4ab60)
fffff803`d9af8979 8b0521570e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x88d:
fffff803`d9af897f a810            test    al,10h
fffff803`d9af8981 0f846cf0ffff    je      nt!ExFreePoolWithTag+0x893 (fffff803`d9af79f3)

nt!ExFreePool+0x895:
fffff803`d9af8987 488bd3          mov     rdx,rbx
fffff803`d9af898a 498bcf          mov     rcx,r15
fffff803`d9af898d e822e03d00      call    nt!VfFreePoolNotification (fffff803`d9ed69b4)
fffff803`d9af8992 90              nop
fffff803`d9af8993 e95bf0ffff      jmp     nt!ExFreePoolWithTag+0x893 (fffff803`d9af79f3)

nt!ExFreePool+0x8a6:
fffff803`d9af8998 b9220e0000      mov     ecx,0E22h
fffff803`d9af899d 4d8bcd          mov     r9,r13
fffff803`d9af89a0 41b846726167    mov     r8d,67617246h
fffff803`d9af89a6 8bd6            mov     edx,esi
fffff803`d9af89a8 48c744242020000000 mov   qword ptr [rsp+20h],20h
fffff803`d9af89b1 e8a2c9f4ff      call    nt!EtwTracePool (fffff803`d9a45358)
fffff803`d9af89b6 90              nop
fffff803`d9af89b7 e975f0ffff      jmp     nt!ExFreePoolWithTag+0x8d1 (fffff803`d9af7a31)

nt!ExFreePool+0x8ca:
fffff803`d9af89bc 85c0            test    eax,eax
fffff803`d9af89be 7538            jne     nt!ExFreePool+0x912 (fffff803`d9af89f8)

nt!ExFreePool+0x8d2:
fffff803`d9af89c0 4585e4          test    r12d,r12d
fffff803`d9af89c3 7533            jne     nt!ExFreePool+0x912 (fffff803`d9af89f8)

nt!ExFreePool+0x8db:
fffff803`d9af89c5 488b0514f70100  mov     rax,qword ptr [nt!PoolTrackTable (fffff803`d9b180e0)]
fffff803`d9af89cc 458b1402        mov     r10d,dword ptr [r10+rax]
fffff803`d9af89d0 4585d2          test    r10d,r10d
fffff803`d9af89d3 7423            je      nt!ExFreePool+0x912 (fffff803`d9af89f8)

nt!ExFreePool+0x8ef:
fffff803`d9af89d5 448911          mov     dword ptr [rcx],r10d

nt!ExFreePool+0x8f2:
fffff803`d9af89d8 488d0c92        lea     rcx,[rdx+rdx*4]
fffff803`d9af89dc 4c8d14cd00000000 lea     r10,[rcx*8]
fffff803`d9af89e4 438b0411        mov     eax,dword ptr [r9+r10]
fffff803`d9af89e8 4b8d0c0a        lea     rcx,[r10+r9]
fffff803`d9af89ec 3d46726167      cmp     eax,67617246h
fffff803`d9af89f1 75c9            jne     nt!ExFreePool+0x8ca (fffff803`d9af89bc)

nt!ExFreePool+0x90d:
fffff803`d9af89f3 e98df0ffff      jmp     nt!ExFreePoolWithTag+0x925 (fffff803`d9af7a85)

nt!ExFreePool+0x912:
fffff803`d9af89f8 ffc2            inc     edx
fffff803`d9af89fa 4123d0          and     edx,r8d
fffff803`d9af89fd 413bd3          cmp     edx,r11d
fffff803`d9af8a00 75d6            jne     nt!ExFreePool+0x8f2 (fffff803`d9af89d8)

nt!ExFreePool+0x91c:
fffff803`d9af8a02 448bc6          mov     r8d,esi
fffff803`d9af8a05 ba20000000      mov     edx,20h
fffff803`d9af8a0a b946726167      mov     ecx,67617246h
fffff803`d9af8a0f e86cc9e4ff      call    nt!ExpRemovePoolTrackerExpansion (fffff803`d9945380)
fffff803`d9af8a14 90              nop
fffff803`d9af8a15 e97ff0ffff      jmp     nt!ExFreePoolWithTag+0x939 (fffff803`d9af7a99)

nt!ExFreePool+0x934:
fffff803`d9af8a1a 488d4dd7        lea     rcx,[rbp-29h]
fffff803`d9af8a1e 488bd6          mov     rdx,rsi
fffff803`d9af8a21 e8ca8cf0ff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9af8a26 90              nop
fffff803`d9af8a27 e9f5f3ffff      jmp     nt!ExFreePoolWithTag+0xcc1 (fffff803`d9af7e21)

nt!ExFreePool+0x946:
fffff803`d9af8a2c b903000000      mov     ecx,3
fffff803`d9af8a31 cd29            int     29h

nt!ExFreePool+0x94d:
fffff803`d9af8a33 b903000000      mov     ecx,3
fffff803`d9af8a38 cd29            int     29h

nt!ExFreePool+0x954:
fffff803`d9af8a3a 488b555f        mov     rdx,qword ptr [rbp+5Fh]
fffff803`d9af8a3e 488d4dd7        lea     rcx,[rbp-29h]
fffff803`d9af8a42 e8898bf0ff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9af8a47 90              nop
fffff803`d9af8a48 e943f1ffff      jmp     nt!ExFreePoolWithTag+0xa30 (fffff803`d9af7b90)

nt!ExFreePool+0x967:
fffff803`d9af8a4d 4c8bc8          mov     r9,rax
fffff803`d9af8a50 ba07000000      mov     edx,7
fffff803`d9af8a55 b9c2000000      mov     ecx,0C2h
fffff803`d9af8a5a 41b8c1110000    mov     r8d,11C1h
fffff803`d9af8a60 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`d9af8a65 e8d679deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8a6a cc              int     3

nt!ExFreePool+0x985:
fffff803`d9af8a6b 0fbae00a        bt      eax,0Ah
fffff803`d9af8a6f 7356            jae     nt!ExFreePool+0x9f1 (fffff803`d9af8ac7)

nt!ExFreePool+0x98f:
fffff803`d9af8a71 4585ed          test    r13d,r13d
fffff803`d9af8a74 7551            jne     nt!ExFreePool+0x9f1 (fffff803`d9af8ac7)

nt!ExFreePool+0x998:
fffff803`d9af8a76 48833dd24c020000 cmp     qword ptr [nt!ViVerifierDriverAddedThunkListHead (fffff803`d9b1d750)],0
fffff803`d9af8a7e 740f            je      nt!ExFreePool+0x9b9 (fffff803`d9af8a8f)

nt!ExFreePool+0x9a6:
fffff803`d9af8a80 488bd7          mov     rdx,rdi
fffff803`d9af8a83 488bcb          mov     rcx,rbx
fffff803`d9af8a86 e8c52d3e00      call    nt!VfCheckForLookaside (fffff803`d9edb850)
fffff803`d9af8a8b 85c0            test    eax,eax
fffff803`d9af8a8d 7532            jne     nt!ExFreePool+0x9eb (fffff803`d9af8ac1)

nt!ExFreePool+0x9b9:
fffff803`d9af8a8f 4c8d0d2af00100  lea     r9,[nt!ExNPagedLookasideLock (fffff803`d9b17ac0)]
fffff803`d9af8a96 4c8d0503f00100  lea     r8,[nt!ExNPagedLookasideListHead (fffff803`d9b17aa0)]
fffff803`d9af8a9d 488bd7          mov     rdx,rdi
fffff803`d9af8aa0 488bcb          mov     rcx,rbx
fffff803`d9af8aa3 e8a81af5ff      call    nt!ExpCheckForLookasideList (fffff803`d9a4a550)
fffff803`d9af8aa8 4c8d0d31f00100  lea     r9,[nt!ExPagedLookasideLock (fffff803`d9b17ae0)]
fffff803`d9af8aaf 4c8d05faef0100  lea     r8,[nt!ExPagedLookasideListHead (fffff803`d9b17ab0)]
fffff803`d9af8ab6 488bd7          mov     rdx,rdi
fffff803`d9af8ab9 488bcb          mov     rcx,rbx
fffff803`d9af8abc e88f1af5ff      call    nt!ExpCheckForLookasideList (fffff803`d9a4a550)

nt!ExFreePool+0x9eb:
fffff803`d9af8ac1 8b05d9550e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x9f1:
fffff803`d9af8ac7 4184c4          test    r12b,al
fffff803`d9af8aca 7411            je      nt!ExFreePool+0xa0b (fffff803`d9af8add)

nt!ExFreePool+0x9fa:
fffff803`d9af8acc 488bd7          mov     rdx,rdi
fffff803`d9af8acf 488bcb          mov     rcx,rbx
fffff803`d9af8ad2 e80173f0ff      call    nt!KeCheckForTimer (fffff803`d99ffdd8)
fffff803`d9af8ad7 8b05c3550e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0xa0b:
fffff803`d9af8add a804            test    al,4
fffff803`d9af8adf 7411            je      nt!ExFreePool+0xa24 (fffff803`d9af8af2)

nt!ExFreePool+0xa13:
fffff803`d9af8ae1 488bd7          mov     rdx,rdi
fffff803`d9af8ae4 488bcb          mov     rcx,rbx
fffff803`d9af8ae7 e89412f5ff      call    nt!ExpCheckForResource (fffff803`d9a49d80)
fffff803`d9af8aec 8b05ae550e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0xa24:
fffff803`d9af8af2 a802            test    al,2
fffff803`d9af8af4 7411            je      nt!ExFreePool+0xa3d (fffff803`d9af8b07)

nt!ExFreePool+0xa2c:
fffff803`d9af8af6 488bd7          mov     rdx,rdi
fffff803`d9af8af9 488bcb          mov     rcx,rbx
fffff803`d9af8afc e85f20f5ff      call    nt!ExpCheckForWorker (fffff803`d9a4ab60)
fffff803`d9af8b01 8b0599550e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0xa3d:
fffff803`d9af8b07 a810            test    al,10h
fffff803`d9af8b09 0f84dbe6ffff    je      nt!ExFreePoolWithTag+0x8a (fffff803`d9af71ea)

nt!ExFreePool+0xa45:
fffff803`d9af8b0f 488bd7          mov     rdx,rdi
fffff803`d9af8b12 488bcb          mov     rcx,rbx
fffff803`d9af8b15 e89ade3d00      call    nt!VfFreePoolNotification (fffff803`d9ed69b4)
fffff803`d9af8b1a 90              nop
fffff803`d9af8b1b e9cae6ffff      jmp     nt!ExFreePoolWithTag+0x8a (fffff803`d9af71ea)

nt!ExFreePool+0xa56:
fffff803`d9af8b20 4533c9          xor     r9d,r9d
fffff803`d9af8b23 458bc5          mov     r8d,r13d
fffff803`d9af8b26 488bd7          mov     rdx,rdi
fffff803`d9af8b29 498bcf          mov     rcx,r15
fffff803`d9af8b2c 48897db7        mov     qword ptr [rbp-49h],rdi
fffff803`d9af8b30 e8a335f2ff      call    nt!VerifierFreeTrackedPool (fffff803`d9a1c0d8)
fffff803`d9af8b35 90              nop
fffff803`d9af8b36 e9b9e6ffff      jmp     nt!ExFreePoolWithTag+0x94 (fffff803`d9af71f4)

nt!ExFreePool+0xa71:
fffff803`d9af8b3b ba0b000000      mov     edx,0Bh
fffff803`d9af8b40 b9c2000000      mov     ecx,0C2h
fffff803`d9af8b45 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`d9af8b4a e8f178deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8b4f cc              int     3

nt!ExFreePool+0xa86:
fffff803`d9af8b50 ba11000000      mov     edx,11h
fffff803`d9af8b55 b9c2000000      mov     ecx,0C2h
fffff803`d9af8b5a 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9af8b5f e8dc78deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8b64 cc              int     3

nt!ExFreePool+0xa9b:
fffff803`d9af8b65 8bc1            mov     eax,ecx
fffff803`d9af8b67 ba10000000      mov     edx,10h
fffff803`d9af8b6c b9c2000000      mov     ecx,0C2h
fffff803`d9af8b71 4903c0          add     rax,r8
fffff803`d9af8b74 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9af8b79 e8c278deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8b7e cc              int     3

nt!ExFreePool+0xab5:
fffff803`d9af8b7f 0fbaf71f        btr     edi,1Fh
fffff803`d9af8b83 897d7f          mov     dword ptr [rbp+7Fh],edi
fffff803`d9af8b86 e997e6ffff      jmp     nt!ExFreePoolWithTag+0xc2 (fffff803`d9af7222)

nt!ExFreePool+0xac1:
fffff803`d9af8b8b 8b03            mov     eax,dword ptr [rbx]
fffff803`d9af8b8d 4c8bca          mov     r9,rdx
fffff803`d9af8b90 ba20000000      mov     edx,20h
fffff803`d9af8b95 8d4af9          lea     ecx,[rdx-7]
fffff803`d9af8b98 4c8bc3          mov     r8,rbx
fffff803`d9af8b9b 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9af8ba0 e89b78deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8ba5 cc              int     3

nt!ExFreePool+0xadc:
fffff803`d9af8ba6 4c8bc2          mov     r8,rdx
fffff803`d9af8ba9 ba25000000      mov     edx,25h
fffff803`d9af8bae 458bcc          mov     r9d,r12d
fffff803`d9af8bb1 8d4af4          lea     ecx,[rdx-0Ch]
fffff803`d9af8bb4 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`d9af8bb9 e88278deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8bbe cc              int     3

nt!ExFreePool+0xaf5:
fffff803`d9af8bbf 4889542420      mov     qword ptr [rsp+20h],rdx
fffff803`d9af8bc4 b9220e0000      mov     ecx,0E22h
fffff803`d9af8bc9 448bc7          mov     r8d,edi
fffff803`d9af8bcc 8bd6            mov     edx,esi
fffff803`d9af8bce e885c7f4ff      call    nt!EtwTracePool (fffff803`d9a45358)
fffff803`d9af8bd3 4c8d0526d4d8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af8bda e911e7ffff      jmp     nt!ExFreePoolWithTag+0x190 (fffff803`d9af72f0)

nt!ExFreePool+0xb15:
fffff803`d9af8bdf 4d8bc8          mov     r9,r8
fffff803`d9af8be2 33d2            xor     edx,edx
fffff803`d9af8be4 e935eaffff      jmp     nt!ExFreePoolWithTag+0x4be (fffff803`d9af761e)

nt!ExFreePool+0xb1f:
fffff803`d9af8be9 488d15d0850100  lea     rdx,[nt!PspSystemQuotaBlock (fffff803`d9b111c0)]
fffff803`d9af8bf0 483955ef        cmp     qword ptr [rbp-11h],rdx
fffff803`d9af8bf4 7417            je      nt!ExFreePool+0xb47 (fffff803`d9af8c0d)

nt!ExFreePool+0xb30:
fffff803`d9af8bf6 4c8b550f        mov     r10,qword ptr [rbp+0Fh]
fffff803`d9af8bfa 488955ef        mov     qword ptr [rbp-11h],rdx
fffff803`d9af8bfe 4c03d2          add     r10,rdx
fffff803`d9af8c01 410f0d0a        prefetchw [r10]
fffff803`d9af8c05 4d8b02          mov     r8,qword ptr [r10]
fffff803`d9af8c08 e9ffe9ffff      jmp     nt!ExFreePoolWithTag+0x4ac (fffff803`d9af760c)

nt!ExFreePool+0xb47:
fffff803`d9af8c0d 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`d9af8c12 4c8bce          mov     r9,rsi
fffff803`d9af8c15 4d8bc3          mov     r8,r11
fffff803`d9af8c18 b921000000      mov     ecx,21h
fffff803`d9af8c1d 488bd7          mov     rdx,rdi
fffff803`d9af8c20 e81b78deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8c25 cc              int     3

nt!ExFreePool+0xb60:
fffff803`d9af8c26 33d2            xor     edx,edx
fffff803`d9af8c28 488d4fd0        lea     rcx,[rdi-30h]
fffff803`d9af8c2c 448d4201        lea     r8d,[rdx+1]
fffff803`d9af8c30 e8fb35f2ff      call    nt!ObpPushStackInfo (fffff803`d9a1c230)
fffff803`d9af8c35 90              nop
fffff803`d9af8c36 e91deaffff      jmp     nt!ExFreePoolWithTag+0x4f8 (fffff803`d9af7658)

nt!ExFreePool+0xb75:
fffff803`d9af8c3b 0fb657e8        movzx   edx,byte ptr [rdi-18h]
fffff803`d9af8c3f 488d05bad3d8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af8c46 41b903000000    mov     r9d,3
fffff803`d9af8c4c 488b94d000be2900 mov     rdx,qword ptr [rax+rdx*8+29BE00h]
fffff803`d9af8c54 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`d9af8c59 418d4915        lea     ecx,[r9+15h]
fffff803`d9af8c5d 4c8bc7          mov     r8,rdi
fffff803`d9af8c60 e8db77deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8c65 cc              int     3

nt!ExFreePool+0xba0:
fffff803`d9af8c66 33d2            xor     edx,edx
fffff803`d9af8c68 41b904000000    mov     r9d,4
fffff803`d9af8c6e 4c8bc7          mov     r8,rdi
fffff803`d9af8c71 8d4a18          lea     ecx,[rdx+18h]
fffff803`d9af8c74 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9af8c79 e8c277deff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8c7e cc              int     3

nt!ExFreePool+0xbb9:
fffff803`d9af8c7f 450f20c6        mov     r14,cr8
fffff803`d9af8c83 ba01000000      mov     edx,1
fffff803`d9af8c88 440f22c2        mov     cr8,rdx
fffff803`d9af8c8c f00fba3700      lock btr dword ptr [rdi],0
fffff803`d9af8c91 720f            jb      nt!ExFreePool+0xbe0 (fffff803`d9af8ca2)

nt!ExFreePool+0xbd1:
fffff803`d9af8c93 488bcf          mov     rcx,rdi
fffff803`d9af8c96 e885ede8ff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)
fffff803`d9af8c9b 4533c9          xor     r9d,r9d
fffff803`d9af8c9e 418d5101        lea     edx,[r9+1]

nt!ExFreePool+0xbe0:
fffff803`d9af8ca2 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af8cab 48894708        mov     qword ptr [rdi+8],rax
fffff803`d9af8caf 410fb6c6        movzx   eax,r14b
fffff803`d9af8cb3 894730          mov     dword ptr [rdi+30h],eax
fffff803`d9af8cb6 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af8cbf fe8037040000    inc     byte ptr [rax+437h]
fffff803`d9af8cc5 e9a5f3ffff      jmp     nt!ExFreePoolWithTag+0xf0f (fffff803`d9af806f)

nt!ExFreePool+0xc08:
fffff803`d9af8cca b903000000      mov     ecx,3
fffff803`d9af8ccf cd29            int     29h

nt!ExFreePool+0xc0f:
fffff803`d9af8cd1 80790201        cmp     byte ptr [rcx+2],1
fffff803`d9af8cd5 8bf2            mov     esi,edx
fffff803`d9af8cd7 7423            je      nt!ExFreePool+0xc46 (fffff803`d9af8cfc)

nt!ExFreePool+0xc1b:
fffff803`d9af8cd9 4c8b4110        mov     r8,qword ptr [rcx+10h]
fffff803`d9af8cdd 488b5118        mov     rdx,qword ptr [rcx+18h]
fffff803`d9af8ce1 488d4110        lea     rax,[rcx+10h]
fffff803`d9af8ce5 49394008        cmp     qword ptr [r8+8],rax
fffff803`d9af8ce9 7520            jne     nt!ExFreePool+0xc55 (fffff803`d9af8d0b)

nt!ExFreePool+0xc31:
fffff803`d9af8ceb 483902          cmp     qword ptr [rdx],rax
fffff803`d9af8cee 751b            jne     nt!ExFreePool+0xc55 (fffff803`d9af8d0b)

nt!ExFreePool+0xc3a:
fffff803`d9af8cf0 4c8902          mov     qword ptr [rdx],r8
fffff803`d9af8cf3 49895008        mov     qword ptr [r8+8],rdx
fffff803`d9af8cf7 ba01000000      mov     edx,1

nt!ExFreePool+0xc46:
fffff803`d9af8cfc 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff803`d9af8d00 488bd9          mov     rbx,rcx
fffff803`d9af8d03 004102          add     byte ptr [rcx+2],al
fffff803`d9af8d06 e9d1f3ffff      jmp     nt!ExFreePoolWithTag+0xf7c (fffff803`d9af80dc)

nt!ExFreePool+0xc55:
fffff803`d9af8d0b b903000000      mov     ecx,3
fffff803`d9af8d10 cd29            int     29h

nt!ExFreePool+0xc5c:
fffff803`d9af8d12 4585ed          test    r13d,r13d
fffff803`d9af8d15 750b            jne     nt!ExFreePool+0xc73 (fffff803`d9af8d22)

nt!ExFreePool+0xc65:
fffff803`d9af8d17 488d4dd7        lea     rcx,[rbp-29h]
fffff803`d9af8d1b e81004e2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`d9919130)
fffff803`d9af8d20 eb31            jmp     nt!ExFreePool+0xca8 (fffff803`d9af8d53)

nt!ExFreePool+0xc73:
fffff803`d9af8d22 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af8d2b fe8837040000    dec     byte ptr [rax+437h]
fffff803`d9af8d31 0fb67730        movzx   esi,byte ptr [rdi+30h]
fffff803`d9af8d35 4c894f08        mov     qword ptr [rdi+8],r9
fffff803`d9af8d39 33c0            xor     eax,eax
fffff803`d9af8d3b f00fb117        lock cmpxchg dword ptr [rdi],edx
fffff803`d9af8d3f 740a            je      nt!ExFreePool+0xca0 (fffff803`d9af8d4b)

nt!ExFreePool+0xc96:
fffff803`d9af8d41 8bd0            mov     edx,eax
fffff803`d9af8d43 488bcf          mov     rcx,rdi
fffff803`d9af8d46 e8e1e2e8ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!ExFreePool+0xca0:
fffff803`d9af8d4b 400fb6c6        movzx   eax,sil
fffff803`d9af8d4f 440f22c0        mov     cr8,rax

nt!ExFreePool+0xca8:
fffff803`d9af8d53 f041ff8fc0000000 lock dec dword ptr [r15+0C0h]
fffff803`d9af8d5b 448b457f        mov     r8d,dword ptr [rbp+7Fh]
fffff803`d9af8d5f ba00100000      mov     edx,1000h
fffff803`d9af8d64 488bcb          mov     rcx,rbx
fffff803`d9af8d67 e854c6edff      call    nt!MiFreePoolPages (fffff803`d99d53c0)
fffff803`d9af8d6c 90              nop
fffff803`d9af8d6d e997e6ffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`d9af7409)

nt!ExFreePool+0xcc7:
fffff803`d9af8d72 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af8d7b fe8837040000    dec     byte ptr [rax+437h]
fffff803`d9af8d81 0fb65f30        movzx   ebx,byte ptr [rdi+30h]
fffff803`d9af8d85 4c894f08        mov     qword ptr [rdi+8],r9
fffff803`d9af8d89 33c0            xor     eax,eax
fffff803`d9af8d8b f00fb117        lock cmpxchg dword ptr [rdi],edx
fffff803`d9af8d8f 740a            je      nt!ExFreePool+0xcf4 (fffff803`d9af8d9b)

nt!ExFreePool+0xcea:
fffff803`d9af8d91 8bd0            mov     edx,eax
fffff803`d9af8d93 488bcf          mov     rcx,rdi
fffff803`d9af8d96 e891e2e8ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!ExFreePool+0xcf4:
fffff803`d9af8d9b 0fb6c3          movzx   eax,bl
fffff803`d9af8d9e 440f22c0        mov     cr8,rax
fffff803`d9af8da2 e962e6ffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`d9af7409)
