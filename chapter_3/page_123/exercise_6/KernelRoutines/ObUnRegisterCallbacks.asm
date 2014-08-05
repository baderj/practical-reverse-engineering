nt!ExFreePoolWithTag:
fffff803`21ee3160 48894c2408      mov     qword ptr [rsp+8],rcx
fffff803`21ee3165 55              push    rbp
fffff803`21ee3166 53              push    rbx
fffff803`21ee3167 56              push    rsi
fffff803`21ee3168 57              push    rdi
fffff803`21ee3169 4156            push    r14
fffff803`21ee316b 4157            push    r15
fffff803`21ee316d 488d6c24d1      lea     rbp,[rsp-2Fh]
fffff803`21ee3172 4881eca8000000  sub     rsp,0A8h
fffff803`21ee3179 8b05850f0200    mov     eax,dword ptr [nt!ExpSpecialAllocations (fffff803`21f04104)]
fffff803`21ee317f 4c8bf9          mov     r15,rcx
fffff803`21ee3182 85c0            test    eax,eax
fffff803`21ee3184 0f8566140000    jne     nt!ExFreePool+0x4a0 (fffff803`21ee45f0)

nt!ExFreePoolWithTag+0x2a:
fffff803`21ee318a 4c89a424e8000000 mov     qword ptr [rsp+0E8h],r12
fffff803`21ee3192 41b901000000    mov     r9d,1
fffff803`21ee3198 4c89ac24a0000000 mov     qword ptr [rsp+0A0h],r13
fffff803`21ee31a0 458be1          mov     r12d,r9d
fffff803`21ee31a3 49f7c7ff0f0000  test    r15,0FFFh
fffff803`21ee31aa 0f841b060000    je      nt!ExFreePoolWithTag+0x66b (fffff803`21ee37cb)

nt!ExFreePoolWithTag+0x50:
fffff803`21ee31b0 410fb677f3      movzx   esi,byte ptr [r15-0Dh]
fffff803`21ee31b5 418b47f0        mov     eax,dword ptr [r15-10h]
fffff803`21ee31b9 450fb677f2      movzx   r14d,byte ptr [r15-0Eh]
fffff803`21ee31be 498d5ff0        lea     rbx,[r15-10h]
fffff803`21ee31c2 448bee          mov     r13d,esi
fffff803`21ee31c5 4523e9          and     r13d,r9d
fffff803`21ee31c8 0fbae019        bt      eax,19h
fffff803`21ee31cc 0f837b180000    jae     nt!ExFreePool+0x967 (fffff803`21ee4a4d)

nt!ExFreePoolWithTag+0x72:
fffff803`21ee31d2 8b05c86e0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]
fffff803`21ee31d8 418bfe          mov     edi,r14d
fffff803`21ee31db 48c1e704        shl     rdi,4
fffff803`21ee31df a917040000      test    eax,417h
fffff803`21ee31e4 0f8581180000    jne     nt!ExFreePool+0x985 (fffff803`21ee4a6b)

nt!ExFreePoolWithTag+0x8a:
fffff803`21ee31ea 40f6c640        test    sil,40h
fffff803`21ee31ee 0f852c190000    jne     nt!ExFreePool+0xa56 (fffff803`21ee4b20)

nt!ExFreePoolWithTag+0x94:
fffff803`21ee31f4 40f6c604        test    sil,4
fffff803`21ee31f8 0f85fc040000    jne     nt!ExFreePoolWithTag+0x59a (fffff803`21ee36fa)

nt!ExFreePoolWithTag+0x9e:
fffff803`21ee31fe 4c8b4d67        mov     r9,qword ptr [rbp+67h]

nt!ExFreePoolWithTag+0xa2:
fffff803`21ee3202 804b0304        or      byte ptr [rbx+3],4
fffff803`21ee3206 f0830c2400      lock or dword ptr [rsp],0
fffff803`21ee320b 0fb64303        movzx   eax,byte ptr [rbx+3]
fffff803`21ee320f 8b7b04          mov     edi,dword ptr [rbx+4]
fffff803`21ee3212 24fd            and     al,0FDh
fffff803`21ee3214 897d7f          mov     dword ptr [rbp+7Fh],edi
fffff803`21ee3217 884303          mov     byte ptr [rbx+3],al
fffff803`21ee321a 85ff            test    edi,edi
fffff803`21ee321c 0f885d190000    js      nt!ExFreePool+0xab5 (fffff803`21ee4b7f)

nt!ExFreePoolWithTag+0xc2:
fffff803`21ee3222 418bd6          mov     edx,r14d
fffff803`21ee3225 458bd6          mov     r10d,r14d
fffff803`21ee3228 48c1e204        shl     rdx,4
fffff803`21ee322c 4803d3          add     rdx,rbx
fffff803`21ee322f 488955ff        mov     qword ptr [rbp-1],rdx
fffff803`21ee3233 48f7c2ff0f0000  test    rdx,0FFFh
fffff803`21ee323a 740e            je      nt!ExFreePoolWithTag+0xea (fffff803`21ee324a)

nt!ExFreePoolWithTag+0xdc:
fffff803`21ee323c 8b02            mov     eax,dword ptr [rdx]
fffff803`21ee323e 0fb6c8          movzx   ecx,al
fffff803`21ee3241 443bf1          cmp     r14d,ecx
fffff803`21ee3244 0f8541190000    jne     nt!ExFreePool+0xac1 (fffff803`21ee4b8b)

nt!ExFreePoolWithTag+0xea:
fffff803`21ee324a 0fb65301        movzx   edx,byte ptr [rbx+1]
fffff803`21ee324e 4c8d05abedd8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee3255 4963c5          movsxd  rax,r13d
fffff803`21ee3258 4d8bbcc0c0843500 mov     r15,qword ptr [r8+rax*8+3584C0h]
fffff803`21ee3260 4585ed          test    r13d,r13d
fffff803`21ee3263 0f85c0010000    jne     nt!ExFreePoolWithTag+0x2c9 (fffff803`21ee3429)

nt!ExFreePoolWithTag+0x109:
fffff803`21ee3269 8b05416e0e00    mov     eax,dword ptr [nt!ExpNumberOfNonPagedPools (fffff803`21fca0b0)]
fffff803`21ee326f 413bc4          cmp     eax,r12d
fffff803`21ee3272 0f871f020000    ja      nt!ExFreePoolWithTag+0x337 (fffff803`21ee3497)

nt!ExFreePoolWithTag+0x118:
fffff803`21ee3278 48833d606e0e0000 cmp     qword ptr [nt!MmPaeMask (fffff803`21fca0e0)],0
fffff803`21ee3280 743c            je      nt!ExFreePoolWithTag+0x15e (fffff803`21ee32be)

nt!ExFreePoolWithTag+0x122:
fffff803`21ee3282 488bc3          mov     rax,rbx
fffff803`21ee3285 49b800000040fbf6ffff mov r8,0FFFFF6FB40000000h
fffff803`21ee328f 48c1e812        shr     rax,12h
fffff803`21ee3293 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`21ee3298 4a8b0400        mov     rax,qword ptr [rax+r8]
fffff803`21ee329c 84c0            test    al,al
fffff803`21ee329e 0f890a040000    jns     nt!ExFreePoolWithTag+0x54e (fffff803`21ee36ae)

nt!ExFreePoolWithTag+0x144:
fffff803`21ee32a4 48b90000000000000080 mov rcx,8000000000000000h
fffff803`21ee32ae 4c8d054bedd8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee32b5 4885c1          test    rcx,rax
fffff803`21ee32b8 0f84f7090000    je      nt!ExFreePoolWithTag+0xb55 (fffff803`21ee3cb5)

nt!ExFreePoolWithTag+0x15e:
fffff803`21ee32be 413bd4          cmp     edx,r12d
fffff803`21ee32c1 0f83df180000    jae     nt!ExFreePool+0xadc (fffff803`21ee4ba6)

nt!ExFreePoolWithTag+0x167:
fffff803`21ee32c7 498bd2          mov     rdx,r10
fffff803`21ee32ca 0fbaf71f        btr     edi,1Fh
fffff803`21ee32ce 48c1e204        shl     rdx,4
fffff803`21ee32d2 3b3d746f0e00    cmp     edi,dword ptr [nt!PoolHitTag (fffff803`21fca24c)]
fffff803`21ee32d8 488955c7        mov     qword ptr [rbp-39h],rdx
fffff803`21ee32dc 0f848c0e0000    je      nt!ExFreePoolWithTag+0x100e (fffff803`21ee416e)

nt!ExFreePoolWithTag+0x182:
fffff803`21ee32e2 8b059c6d0e00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)]
fffff803`21ee32e8 a841            test    al,41h
fffff803`21ee32ea 0f85cf180000    jne     nt!ExFreePool+0xaf5 (fffff803`21ee4bbf)

nt!ExFreePoolWithTag+0x190:
fffff803`21ee32f0 448be6          mov     r12d,esi
fffff803`21ee32f3 4183e420        and     r12d,20h
fffff803`21ee32f7 0f8580040000    jne     nt!ExFreePoolWithTag+0x61d (fffff803`21ee377d)

nt!ExFreePoolWithTag+0x19d:
fffff803`21ee32fd 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`21ee3305 4c8b0d1c220200  mov     r9,qword ptr [nt!PoolTrackTableMask (fffff803`21f05528)]
fffff803`21ee330c 4d8b94c020212900 mov     r10,qword ptr [r8+rax*8+292120h]

nt!ExFreePoolWithTag+0x1b4:
fffff803`21ee3314 8bcf            mov     ecx,edi
fffff803`21ee3316 4869c95f9e0000  imul    rcx,rcx,9E5Fh
fffff803`21ee331d 488bc1          mov     rax,rcx
fffff803`21ee3320 48c1e820        shr     rax,20h
fffff803`21ee3324 33c1            xor     eax,ecx
fffff803`21ee3326 4123c1          and     eax,r9d
fffff803`21ee3329 448bd8          mov     r11d,eax
fffff803`21ee332c 488d1480        lea     rdx,[rax+rax*4]
fffff803`21ee3330 4c8d04d500000000 lea     r8,[rdx*8]
fffff803`21ee3338 438b0c02        mov     ecx,dword ptr [r10+r8]
fffff803`21ee333c 4b8d1402        lea     rdx,[r10+r8]
fffff803`21ee3340 3bcf            cmp     ecx,edi
fffff803`21ee3342 0f852e030000    jne     nt!ExFreePoolWithTag+0x516 (fffff803`21ee3676)

nt!ExFreePoolWithTag+0x1e8:
fffff803`21ee3348 488b45c7        mov     rax,qword ptr [rbp-39h]
fffff803`21ee334c 48f7d8          neg     rax
fffff803`21ee334f 4585ed          test    r13d,r13d
fffff803`21ee3352 0f85f2000000    jne     nt!ExFreePoolWithTag+0x2ea (fffff803`21ee344a)

nt!ExFreePoolWithTag+0x1f8:
fffff803`21ee3358 f0ff4208        lock inc dword ptr [rdx+8]
fffff803`21ee335c f0480fc14210    lock xadd qword ptr [rdx+10h],rax

nt!ExFreePoolWithTag+0x202:
fffff803`21ee3362 4533c9          xor     r9d,r9d
fffff803`21ee3365 40f6c608        test    sil,8
fffff803`21ee3369 0f85c0010000    jne     nt!ExFreePoolWithTag+0x3cf (fffff803`21ee352f)

nt!ExFreePoolWithTag+0x20f:
fffff803`21ee336f 4585e4          test    r12d,r12d
fffff803`21ee3372 0f8518040000    jne     nt!ExFreePoolWithTag+0x630 (fffff803`21ee3790)

nt!ExFreePoolWithTag+0x218:
fffff803`21ee3378 4183fe20        cmp     r14d,20h
fffff803`21ee337c 0f8725010000    ja      nt!ExFreePoolWithTag+0x347 (fffff803`21ee34a7)

nt!ExFreePoolWithTag+0x222:
fffff803`21ee3382 8b05186d0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]
fffff803`21ee3388 0fbae008        bt      eax,8
fffff803`21ee338c 0f821b010000    jb      nt!ExFreePoolWithTag+0x34d (fffff803`21ee34ad)

nt!ExFreePoolWithTag+0x232:
fffff803`21ee3392 4183fd01        cmp     r13d,1
fffff803`21ee3396 0f84bd000000    je      nt!ExFreePoolWithTag+0x2f9 (fffff803`21ee3459)

nt!ExFreePoolWithTag+0x23c:
fffff803`21ee339c 66833d646c0e0001 cmp     word ptr [nt!KeNumberNodes (fffff803`21fca008)],1
fffff803`21ee33a4 0f875f010000    ja      nt!ExFreePoolWithTag+0x3a9 (fffff803`21ee3509)

nt!ExFreePoolWithTag+0x24a:
fffff803`21ee33aa 65488b142520000000 mov   rdx,qword ptr gs:[20h]
fffff803`21ee33b3 418d46ff        lea     eax,[r14-1]
fffff803`21ee33b7 488d0440        lea     rax,[rax+rax*2]
fffff803`21ee33bb 48c1e005        shl     rax,5
fffff803`21ee33bf 41813f00020000  cmp     dword ptr [r15],200h
fffff803`21ee33c6 0f8505090000    jne     nt!ExFreePoolWithTag+0xb71 (fffff803`21ee3cd1)

nt!ExFreePoolWithTag+0x26c:
fffff803`21ee33cc 488d8a80080000  lea     rcx,[rdx+880h]

nt!ExFreePoolWithTag+0x273:
fffff803`21ee33d3 4803c8          add     rcx,rax

nt!ExFreePoolWithTag+0x276:
fffff803`21ee33d6 4885c9          test    rcx,rcx
fffff803`21ee33d9 0f84c8000000    je      nt!ExFreePoolWithTag+0x347 (fffff803`21ee34a7)

nt!ExFreePoolWithTag+0x27f:
fffff803`21ee33df 0fb74110        movzx   eax,word ptr [rcx+10h]
fffff803`21ee33e3 ff411c          inc     dword ptr [rcx+1Ch]
fffff803`21ee33e6 663901          cmp     word ptr [rcx],ax
fffff803`21ee33e9 0f83b8000000    jae     nt!ExFreePoolWithTag+0x347 (fffff803`21ee34a7)

nt!ExFreePoolWithTag+0x28f:
fffff803`21ee33ef 488b05da700e00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff803`21fca4d0)]
fffff803`21ee33f6 ff4120          inc     dword ptr [rcx+20h]
fffff803`21ee33f9 488b5567        mov     rdx,qword ptr [rbp+67h]
fffff803`21ee33fd 4833c3          xor     rax,rbx
fffff803`21ee3400 48894308        mov     qword ptr [rbx+8],rax
fffff803`21ee3404 e8d739deff      call    nt!ExpInterlockedPushEntrySList (fffff803`21cc6de0)

nt!ExFreePoolWithTag+0x2a9:
fffff803`21ee3409 4c8ba424e8000000 mov     r12,qword ptr [rsp+0E8h]
fffff803`21ee3411 4c8bac24a0000000 mov     r13,qword ptr [rsp+0A0h]

nt!ExFreePoolWithTag+0x2b9:
fffff803`21ee3419 4881c4a8000000  add     rsp,0A8h
fffff803`21ee3420 415f            pop     r15
fffff803`21ee3422 415e            pop     r14
fffff803`21ee3424 5f              pop     rdi
fffff803`21ee3425 5e              pop     rsi
fffff803`21ee3426 5b              pop     rbx
fffff803`21ee3427 5d              pop     rbp
fffff803`21ee3428 c3              ret

nt!ExFreePoolWithTag+0x2c9:
fffff803`21ee3429 40f6c620        test    sil,20h
fffff803`21ee342d 0f858b030000    jne     nt!ExFreePoolWithTag+0x65e (fffff803`21ee37be)

nt!ExFreePoolWithTag+0x2d3:
fffff803`21ee3433 448b256e6c0e00  mov     r12d,dword ptr [nt!ExpNumberOfPagedPools (fffff803`21fca0a8)]
fffff803`21ee343a 4d8bbcd0c0a13500 mov     r15,qword ptr [r8+rdx*8+35A1C0h]
fffff803`21ee3442 41ffc4          inc     r12d
fffff803`21ee3445 e974feffff      jmp     nt!ExFreePoolWithTag+0x15e (fffff803`21ee32be)

nt!ExFreePoolWithTag+0x2ea:
fffff803`21ee344a f0ff421c        lock inc dword ptr [rdx+1Ch]
fffff803`21ee344e f0480fc14220    lock xadd qword ptr [rdx+20h],rax
fffff803`21ee3454 e909ffffff      jmp     nt!ExFreePoolWithTag+0x202 (fffff803`21ee3362)

nt!ExFreePoolWithTag+0x2f9:
fffff803`21ee3459 458b8780000000  mov     r8d,dword ptr [r15+80h]
fffff803`21ee3460 4585c0          test    r8d,r8d
fffff803`21ee3463 7448            je      nt!ExFreePoolWithTag+0x34d (fffff803`21ee34ad)

nt!ExFreePoolWithTag+0x305:
fffff803`21ee3465 66833d9b6b0e0001 cmp     word ptr [nt!KeNumberNodes (fffff803`21fca008)],1
fffff803`21ee346d 0f8762020000    ja      nt!ExFreePoolWithTag+0x575 (fffff803`21ee36d5)

nt!ExFreePoolWithTag+0x313:
fffff803`21ee3473 65488b142520000000 mov   rdx,qword ptr gs:[20h]
fffff803`21ee347c 418d46ff        lea     eax,[r14-1]
fffff803`21ee3480 488d0c40        lea     rcx,[rax+rax*2]
fffff803`21ee3484 4881c280200000  add     rdx,2080h
fffff803`21ee348b 48c1e105        shl     rcx,5
fffff803`21ee348f 4803ca          add     rcx,rdx
fffff803`21ee3492 e93fffffff      jmp     nt!ExFreePoolWithTag+0x276 (fffff803`21ee33d6)

nt!ExFreePoolWithTag+0x337:
fffff803`21ee3497 4d8bbcd0d0a33500 mov     r15,qword ptr [r8+rdx*8+35A3D0h]
fffff803`21ee349f 448be0          mov     r12d,eax
fffff803`21ee34a2 e9d1fdffff      jmp     nt!ExFreePoolWithTag+0x118 (fffff803`21ee3278)

nt!ExFreePoolWithTag+0x347:
fffff803`21ee34a7 8b05f36b0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePoolWithTag+0x34d:
fffff803`21ee34ad 0fbae009        bt      eax,9
fffff803`21ee34b1 0f83830b0000    jae     nt!ExFreePoolWithTag+0xeda (fffff803`21ee403a)

nt!ExFreePoolWithTag+0x357:
fffff803`21ee34b7 418b8708010000  mov     eax,dword ptr [r15+108h]
fffff803`21ee34be 83f820          cmp     eax,20h
fffff803`21ee34c1 0f8364070000    jae     nt!ExFreePoolWithTag+0xacb (fffff803`21ee3c2b)

nt!ExFreePoolWithTag+0x367:
fffff803`21ee34c7 488b0502700e00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff803`21fca4d0)]
fffff803`21ee34ce 4833c3          xor     rax,rbx
fffff803`21ee34d1 48894308        mov     qword ptr [rbx+8],rax
fffff803`21ee34d5 410f0d8f00010000 prefetchw [r15+100h]
fffff803`21ee34dd 498b8700010000  mov     rax,qword ptr [r15+100h]
fffff803`21ee34e4 488b5567        mov     rdx,qword ptr [rbp+67h]

nt!ExFreePoolWithTag+0x388:
fffff803`21ee34e8 488902          mov     qword ptr [rdx],rax
fffff803`21ee34eb 488bc8          mov     rcx,rax
fffff803`21ee34ee f0490fb19700010000 lock cmpxchg qword ptr [r15+100h],rdx
fffff803`21ee34f7 483bc1          cmp     rax,rcx
fffff803`21ee34fa 75ec            jne     nt!ExFreePoolWithTag+0x388 (fffff803`21ee34e8)

nt!ExFreePoolWithTag+0x39c:
fffff803`21ee34fc f041ff8708010000 lock inc dword ptr [r15+108h]
fffff803`21ee3504 e900ffffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`21ee3409)

nt!ExFreePoolWithTag+0x3a9:
fffff803`21ee3509 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`21ee3512 488b8838530000  mov     rcx,qword ptr [rax+5338h]
fffff803`21ee3519 0fb74144        movzx   eax,word ptr [rcx+44h]
fffff803`21ee351d 413b8780000000  cmp     eax,dword ptr [r15+80h]
fffff803`21ee3524 0f8480feffff    je      nt!ExFreePoolWithTag+0x24a (fffff803`21ee33aa)

nt!ExFreePoolWithTag+0x3ca:
fffff803`21ee352a e978ffffff      jmp     nt!ExFreePoolWithTag+0x347 (fffff803`21ee34a7)

nt!ExFreePoolWithTag+0x3cf:
fffff803`21ee352f 0fb64b03        movzx   ecx,byte ptr [rbx+3]
fffff803`21ee3533 f6c108          test    cl,8
fffff803`21ee3536 0f8433feffff    je      nt!ExFreePoolWithTag+0x20f (fffff803`21ee336f)

nt!ExFreePoolWithTag+0x3dc:
fffff803`21ee353c 488b7b08        mov     rdi,qword ptr [rbx+8]
fffff803`21ee3540 48333d896f0e00  xor     rdi,qword ptr [nt!ExpPoolQuotaCookie (fffff803`21fca4d0)]
fffff803`21ee3547 4833fb          xor     rdi,rbx
fffff803`21ee354a 0f841ffeffff    je      nt!ExFreePoolWithTag+0x20f (fffff803`21ee336f)

nt!ExFreePoolWithTag+0x3f0:
fffff803`21ee3550 483b3d116c0e00  cmp     rdi,qword ptr [nt!MmSystemRangeStart (fffff803`21fca168)]
fffff803`21ee3557 0f82ae0a0000    jb      nt!ExFreePoolWithTag+0xeab (fffff803`21ee400b)

nt!ExFreePoolWithTag+0x3fd:
fffff803`21ee355d 0fb607          movzx   eax,byte ptr [rdi]
fffff803`21ee3560 247f            and     al,7Fh
fffff803`21ee3562 3c03            cmp     al,3
fffff803`21ee3564 0f85a10a0000    jne     nt!ExFreePoolWithTag+0xeab (fffff803`21ee400b)

nt!ExFreePoolWithTag+0x40a:
fffff803`21ee356a 0fb67302        movzx   esi,byte ptr [rbx+2]
fffff803`21ee356e 48c1e604        shl     rsi,4
fffff803`21ee3572 483b3da76a0e00  cmp     rdi,qword ptr [nt!PsInitialSystemProcess (fffff803`21fca020)]
fffff803`21ee3579 0f84c8000000    je      nt!ExFreePoolWithTag+0x4e7 (fffff803`21ee3647)

nt!ExFreePoolWithTag+0x41f:
fffff803`21ee357f 488b9700040000  mov     rdx,qword ptr [rdi+400h]
fffff803`21ee3586 418bc1          mov     eax,r9d
fffff803`21ee3589 80e101          and     cl,1
fffff803`21ee358c 80f901          cmp     cl,1
fffff803`21ee358f 488955ef        mov     qword ptr [rbp-11h],rdx
fffff803`21ee3593 0f94c0          sete    al
fffff803`21ee3596 4c63d8          movsxd  r11,eax
fffff803`21ee3599 8945bf          mov     dword ptr [rbp-41h],eax
fffff803`21ee359c 488d055dead8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee35a3 420fb684d880893500 movzx eax,byte ptr [rax+r11*8+358980h]
fffff803`21ee35ac 4c895dcf        mov     qword ptr [rbp-31h],r11
fffff803`21ee35b0 884577          mov     byte ptr [rbp+77h],al
fffff803`21ee35b3 498bc3          mov     rax,r11
fffff803`21ee35b6 48c1e007        shl     rax,7
fffff803`21ee35ba 4889450f        mov     qword ptr [rbp+0Fh],rax
fffff803`21ee35be 4c8d1402        lea     r10,[rdx+rax]
fffff803`21ee35c2 4c895507        mov     qword ptr [rbp+7],r10
fffff803`21ee35c6 410f0d0a        prefetchw [r10]
fffff803`21ee35ca 4d8b02          mov     r8,qword ptr [r10]
fffff803`21ee35cd 4d8b4a40        mov     r9,qword ptr [r10+40h]
fffff803`21ee35d1 49837a5000      cmp     qword ptr [r10+50h],0
fffff803`21ee35d6 4c8945f7        mov     qword ptr [rbp-9],r8
fffff803`21ee35da 742d            je      nt!ExFreePoolWithTag+0x4a9 (fffff803`21ee3609)

nt!ExFreePoolWithTag+0x47c:
fffff803`21ee35dc 498bd3          mov     rdx,r11
fffff803`21ee35df 488d05fa740200  lea     rax,[nt!PspQuotaExpansionDescriptors (fffff803`21f0aae0)]
fffff803`21ee35e6 486bd238        imul    rdx,rdx,38h
fffff803`21ee35ea 4803d0          add     rdx,rax
fffff803`21ee35ed 4d3bc8          cmp     r9,r8
fffff803`21ee35f0 7617            jbe     nt!ExFreePoolWithTag+0x4a9 (fffff803`21ee3609)

nt!ExFreePoolWithTag+0x492:
fffff803`21ee35f2 4c8b5a08        mov     r11,qword ptr [rdx+8]
fffff803`21ee35f6 498bc1          mov     rax,r9
fffff803`21ee35f9 492bc0          sub     rax,r8
fffff803`21ee35fc 493bc3          cmp     rax,r11
fffff803`21ee35ff 0f87d8060000    ja      nt!ExFreePoolWithTag+0xb7d (fffff803`21ee3cdd)

nt!ExFreePoolWithTag+0x4a5:
fffff803`21ee3605 4c8b5dcf        mov     r11,qword ptr [rbp-31h]

nt!ExFreePoolWithTag+0x4a9:
fffff803`21ee3609 488bce          mov     rcx,rsi

nt!ExFreePoolWithTag+0x4ac:
fffff803`21ee360c 493bc8          cmp     rcx,r8
fffff803`21ee360f 0f83ca150000    jae     nt!ExFreePool+0xb15 (fffff803`21ee4bdf)

nt!ExFreePoolWithTag+0x4b5:
fffff803`21ee3615 498bd0          mov     rdx,r8
fffff803`21ee3618 4c8bc9          mov     r9,rcx
fffff803`21ee361b 482bd1          sub     rdx,rcx

nt!ExFreePoolWithTag+0x4be:
fffff803`21ee361e 498bc0          mov     rax,r8
fffff803`21ee3621 f0490fb112      lock cmpxchg qword ptr [r10],rdx
fffff803`21ee3626 4c8bc0          mov     r8,rax
fffff803`21ee3629 75e1            jne     nt!ExFreePoolWithTag+0x4ac (fffff803`21ee360c)

nt!ExFreePoolWithTag+0x4cb:
fffff803`21ee362b 492bc9          sub     rcx,r9
fffff803`21ee362e 0f85b5150000    jne     nt!ExFreePool+0xb1f (fffff803`21ee4be9)

nt!ExFreePoolWithTag+0x4d4:
fffff803`21ee3634 f6457704        test    byte ptr [rbp+77h],4
fffff803`21ee3638 740d            je      nt!ExFreePoolWithTag+0x4e7 (fffff803`21ee3647)

nt!ExFreePoolWithTag+0x4da:
fffff803`21ee363a 48f7de          neg     rsi
fffff803`21ee363d f04a0fc1b4df00030000 lock xadd qword ptr [rdi+r11*8+300h],rsi

nt!ExFreePoolWithTag+0x4e7:
fffff803`21ee3647 833de6690e0000  cmp     dword ptr [nt!ObpTraceFlags (fffff803`21fca034)],0
fffff803`21ee364e 448b4b04        mov     r9d,dword ptr [rbx+4]
fffff803`21ee3652 0f85ce150000    jne     nt!ExFreePool+0xb60 (fffff803`21ee4c26)

nt!ExFreePoolWithTag+0x4f8:
fffff803`21ee3658 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`21ee365c f0480fc147d0    lock xadd qword ptr [rdi-30h],rax
fffff803`21ee3662 48ffc8          dec     rax
fffff803`21ee3665 4885c0          test    rax,rax
fffff803`21ee3668 0f8e3d090000    jle     nt!ExFreePoolWithTag+0xe4b (fffff803`21ee3fab)

nt!ExFreePoolWithTag+0x50e:
fffff803`21ee366e 4533c9          xor     r9d,r9d
fffff803`21ee3671 e9f9fcffff      jmp     nt!ExFreePoolWithTag+0x20f (fffff803`21ee336f)

nt!ExFreePoolWithTag+0x516:
fffff803`21ee3676 85c9            test    ecx,ecx
fffff803`21ee3678 0f8488050000    je      nt!ExFreePoolWithTag+0xaa6 (fffff803`21ee3c06)

nt!ExFreePoolWithTag+0x51e:
fffff803`21ee367e 8d4801          lea     ecx,[rax+1]
fffff803`21ee3681 4123c9          and     ecx,r9d
fffff803`21ee3684 8bc1            mov     eax,ecx
fffff803`21ee3686 413bcb          cmp     ecx,r11d
fffff803`21ee3689 0f84c2050000    je      nt!ExFreePoolWithTag+0xaf1 (fffff803`21ee3c51)

nt!ExFreePoolWithTag+0x52f:
fffff803`21ee368f 8bc8            mov     ecx,eax
fffff803`21ee3691 488d1489        lea     rdx,[rcx+rcx*4]
fffff803`21ee3695 4c8d04d500000000 lea     r8,[rdx*8]
fffff803`21ee369d 438b0c02        mov     ecx,dword ptr [r10+r8]
fffff803`21ee36a1 4b8d1402        lea     rdx,[r10+r8]
fffff803`21ee36a5 3bcf            cmp     ecx,edi
fffff803`21ee36a7 75cd            jne     nt!ExFreePoolWithTag+0x516 (fffff803`21ee3676)

nt!ExFreePoolWithTag+0x549:
fffff803`21ee36a9 e99afcffff      jmp     nt!ExFreePoolWithTag+0x1e8 (fffff803`21ee3348)

nt!ExFreePoolWithTag+0x54e:
fffff803`21ee36ae 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`21ee36b8 488bc3          mov     rax,rbx
fffff803`21ee36bb 48c1e809        shr     rax,9
fffff803`21ee36bf 4823c1          and     rax,rcx
fffff803`21ee36c2 48b90000000080f6ffff mov rcx,0FFFFF68000000000h
fffff803`21ee36cc 488b0408        mov     rax,qword ptr [rax+rcx]
fffff803`21ee36d0 e9cffbffff      jmp     nt!ExFreePoolWithTag+0x144 (fffff803`21ee32a4)

nt!ExFreePoolWithTag+0x575:
fffff803`21ee36d5 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`21ee36de 488b8838530000  mov     rcx,qword ptr [rax+5338h]
fffff803`21ee36e5 418d40ff        lea     eax,[r8-1]
fffff803`21ee36e9 0fb75144        movzx   edx,word ptr [rcx+44h]
fffff803`21ee36ed 3bd0            cmp     edx,eax
fffff803`21ee36ef 0f847efdffff    je      nt!ExFreePoolWithTag+0x313 (fffff803`21ee3473)

nt!ExFreePoolWithTag+0x595:
fffff803`21ee36f5 e9adfdffff      jmp     nt!ExFreePoolWithTag+0x347 (fffff803`21ee34a7)

nt!ExFreePoolWithTag+0x59a:
fffff803`21ee36fa 8b13            mov     edx,dword ptr [rbx]
fffff803`21ee36fc 4c8bc3          mov     r8,rbx
fffff803`21ee36ff 0fb6c2          movzx   eax,dl
fffff803`21ee3702 48c1e004        shl     rax,4
fffff803`21ee3706 4c2bc0          sub     r8,rax
fffff803`21ee3709 458b08          mov     r9d,dword ptr [r8]
fffff803`21ee370c 410fbae119      bt      r9d,19h
fffff803`21ee3711 0f8324140000    jae     nt!ExFreePool+0xa71 (fffff803`21ee4b3b)

nt!ExFreePoolWithTag+0x5b7:
fffff803`21ee3717 8b05236a0e00    mov     eax,dword ptr [nt!ExpCacheLineSize (fffff803`21fca140)]
fffff803`21ee371d b9f0ffffff      mov     ecx,0FFFFFFF0h
fffff803`21ee3722 412bc8          sub     ecx,r8d
fffff803`21ee3725 ffc8            dec     eax
fffff803`21ee3727 23c8            and     ecx,eax
fffff803`21ee3729 0f8436140000    je      nt!ExFreePool+0xa9b (fffff803`21ee4b65)

nt!ExFreePoolWithTag+0x5cf:
fffff803`21ee372f 8bc1            mov     eax,ecx
fffff803`21ee3731 4903c0          add     rax,r8
fffff803`21ee3734 483bc3          cmp     rax,rbx
fffff803`21ee3737 0f8528140000    jne     nt!ExFreePool+0xa9b (fffff803`21ee4b65)

nt!ExFreePoolWithTag+0x5dd:
fffff803`21ee373d 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff803`21ee3741 450fb67002      movzx   r14d,byte ptr [r8+2]
fffff803`21ee3746 0fb6d2          movzx   edx,dl
fffff803`21ee3749 03c2            add     eax,edx
fffff803`21ee374b 443bf0          cmp     r14d,eax
fffff803`21ee374e 0f8511140000    jne     nt!ExFreePool+0xa9b (fffff803`21ee4b65)

nt!ExFreePoolWithTag+0x5f4:
fffff803`21ee3754 413bd4          cmp     edx,r12d
fffff803`21ee3757 7614            jbe     nt!ExFreePoolWithTag+0x60d (fffff803`21ee376d)

nt!ExFreePoolWithTag+0x5f9:
fffff803`21ee3759 488b05706d0e00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff803`21fca4d0)]
fffff803`21ee3760 4833c3          xor     rax,rbx
fffff803`21ee3763 493b4010        cmp     rax,qword ptr [r8+10h]
fffff803`21ee3767 0f85e3130000    jne     nt!ExFreePool+0xa86 (fffff803`21ee4b50)

nt!ExFreePoolWithTag+0x60d:
fffff803`21ee376d 4d8d4810        lea     r9,[r8+10h]
fffff803`21ee3771 498bd8          mov     rbx,r8
fffff803`21ee3774 4c894d67        mov     qword ptr [rbp+67h],r9
fffff803`21ee3778 e985faffff      jmp     nt!ExFreePoolWithTag+0xa2 (fffff803`21ee3202)

nt!ExFreePoolWithTag+0x61d:
fffff803`21ee377d 4c8b156c090200  mov     r10,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`21f040f0)]
fffff803`21ee3784 4c8b0d5d090200  mov     r9,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`21f040e8)]
fffff803`21ee378b e984fbffff      jmp     nt!ExFreePoolWithTag+0x1b4 (fffff803`21ee3314)

nt!ExFreePoolWithTag+0x630:
fffff803`21ee3790 4183fd01        cmp     r13d,1
fffff803`21ee3794 0f85defbffff    jne     nt!ExFreePoolWithTag+0x218 (fffff803`21ee3378)

nt!ExFreePoolWithTag+0x63a:
fffff803`21ee379a 443b35c36b0e00  cmp     r14d,dword ptr [nt!ExpSessionPoolSmallLists (fffff803`21fca364)]
fffff803`21ee37a1 0f8700fdffff    ja      nt!ExFreePoolWithTag+0x347 (fffff803`21ee34a7)

nt!ExFreePoolWithTag+0x647:
fffff803`21ee37a7 488b05fa6d0e00  mov     rax,qword ptr [nt!ExpSessionPoolLookaside (fffff803`21fca5a8)]
fffff803`21ee37ae 418bce          mov     ecx,r14d
fffff803`21ee37b1 48c1e107        shl     rcx,7
fffff803`21ee37b5 4883c080        add     rax,0FFFFFFFFFFFFFF80h
fffff803`21ee37b9 e915fcffff      jmp     nt!ExFreePoolWithTag+0x273 (fffff803`21ee33d3)

nt!ExFreePoolWithTag+0x65e:
fffff803`21ee37be e80dd91c00      call    nt!MiSessionPoolVector (fffff803`220b10d0)
fffff803`21ee37c3 4c8bf8          mov     r15,rax
fffff803`21ee37c6 e9f3faffff      jmp     nt!ExFreePoolWithTag+0x15e (fffff803`21ee32be)

nt!ExFreePoolWithTag+0x66b:
fffff803`21ee37cb 33d2            xor     edx,edx
fffff803`21ee37cd 4c3b3d84690e00  cmp     r15,qword ptr [nt!MmPagedPoolEnd (fffff803`21fca158)]
fffff803`21ee37d4 48b800000000a0f8ffff mov rax,0FFFFF8A000000000h
fffff803`21ee37de 0f8680050000    jbe     nt!ExFreePoolWithTag+0xc04 (fffff803`21ee3d64)

nt!ExFreePoolWithTag+0x684:
fffff803`21ee37e4 48b80000000080060000 mov rax,68000000000h
fffff803`21ee37ee 48b9ffffffffff000000 mov rcx,0FFFFFFFFFFh
fffff803`21ee37f8 49b800000040fbf6ffff mov r8,0FFFFF6FB40000000h
fffff803`21ee3802 4903c7          add     rax,r15
fffff803`21ee3805 483bc1          cmp     rax,rcx
fffff803`21ee3808 0f861e100000    jbe     nt!ExFreePool+0x71e (fffff803`21ee482c)

nt!ExFreePoolWithTag+0x6ae:
fffff803`21ee380e 48b80000000000070000 mov rax,70000000000h
fffff803`21ee3818 48b9ffffffff7f000000 mov rcx,7FFFFFFFFFh
fffff803`21ee3822 4903c7          add     rax,r15
fffff803`21ee3825 483bc1          cmp     rax,rcx
fffff803`21ee3828 0f868f050000    jbe     nt!ExFreePoolWithTag+0xc5d (fffff803`21ee3dbd)

nt!ExFreePoolWithTag+0x6ce:
fffff803`21ee382e 8bf2            mov     esi,edx

nt!ExFreePoolWithTag+0x6d0:
fffff803`21ee3830 8bfe            mov     edi,esi
fffff803`21ee3832 488d0dc7e7d8ff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee3839 4863c6          movsxd  rax,esi
fffff803`21ee383c 4c8bb4c1c0843500 mov     r14,qword ptr [rcx+rax*8+3584C0h]
fffff803`21ee3844 4123f9          and     edi,r9d
fffff803`21ee3847 897d77          mov     dword ptr [rbp+77h],edi
fffff803`21ee384a 83fe21          cmp     esi,21h
fffff803`21ee384d 0f8474050000    je      nt!ExFreePoolWithTag+0xc67 (fffff803`21ee3dc7)

nt!ExFreePoolWithTag+0x6f3:
fffff803`21ee3853 85ff            test    edi,edi
fffff803`21ee3855 7534            jne     nt!ExFreePoolWithTag+0x72b (fffff803`21ee388b)

nt!ExFreePoolWithTag+0x6f7:
fffff803`21ee3857 48391582680e00  cmp     qword ptr [nt!MmPaeMask (fffff803`21fca0e0)],rdx
fffff803`21ee385e 742b            je      nt!ExFreePoolWithTag+0x72b (fffff803`21ee388b)

nt!ExFreePoolWithTag+0x700:
fffff803`21ee3860 498bc7          mov     rax,r15
fffff803`21ee3863 48c1e812        shr     rax,12h
fffff803`21ee3867 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`21ee386c 4a8b0400        mov     rax,qword ptr [rax+r8]
fffff803`21ee3870 84c0            test    al,al
fffff803`21ee3872 0f89ec030000    jns     nt!ExFreePoolWithTag+0xb04 (fffff803`21ee3c64)

nt!ExFreePoolWithTag+0x718:
fffff803`21ee3878 48b90000000000000080 mov rcx,8000000000000000h
fffff803`21ee3882 4885c1          test    rcx,rax
fffff803`21ee3885 0f8490060000    je      nt!ExFreePoolWithTag+0xdbb (fffff803`21ee3f1b)

nt!ExFreePoolWithTag+0x72b:
fffff803`21ee388b 488955c7        mov     qword ptr [rbp-39h],rdx
fffff803`21ee388f 8955bf          mov     dword ptr [rbp-41h],edx
fffff803`21ee3892 4c8d45b7        lea     r8,[rbp-49h]
fffff803`21ee3896 488d557f        lea     rdx,[rbp+7Fh]
fffff803`21ee389a 448bce          mov     r9d,esi
fffff803`21ee389d 498bcf          mov     rcx,r15
fffff803`21ee38a0 e8cb26e4ff      call    nt!ExpFindAndRemoveTagBigPages (fffff803`21d25f70)
fffff803`21ee38a5 8bc8            mov     ecx,eax
fffff803`21ee38a7 80e121          and     cl,21h
fffff803`21ee38aa 80f920          cmp     cl,20h
fffff803`21ee38ad 0f84a8080000    je      nt!ExFreePoolWithTag+0xffb (fffff803`21ee415b)

nt!ExFreePoolWithTag+0x753:
fffff803`21ee38b3 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`21ee38b7 a840            test    al,40h
fffff803`21ee38b9 0f85b20f0000    jne     nt!ExFreePool+0x763 (fffff803`21ee4871)

nt!ExFreePoolWithTag+0x75f:
fffff803`21ee38bf 448beb          mov     r13d,ebx
fffff803`21ee38c2 4181e5ff0f0000  and     r13d,0FFFh
fffff803`21ee38c9 743f            je      nt!ExFreePoolWithTag+0x7aa (fffff803`21ee390a)

nt!ExFreePoolWithTag+0x76b:
fffff803`21ee38cb 4a8b443b10      mov     rax,qword ptr [rbx+r15+10h]
fffff803`21ee38d0 4e8d143b        lea     r10,[rbx+r15]
fffff803`21ee38d4 4c8955c7        mov     qword ptr [rbp-39h],r10
fffff803`21ee38d8 483bc3          cmp     rax,rbx
fffff803`21ee38db 0f85a70f0000    jne     nt!ExFreePool+0x77a (fffff803`21ee4888)

nt!ExFreePoolWithTag+0x781:
fffff803`21ee38e1 450fb65a01      movzx   r11d,byte ptr [r10+1]
fffff803`21ee38e6 44895dbf        mov     dword ptr [rbp-41h],r11d
fffff803`21ee38ea 85ff            test    edi,edi
fffff803`21ee38ec 0f8537050000    jne     nt!ExFreePoolWithTag+0xcc9 (fffff803`21ee3e29)

nt!ExFreePoolWithTag+0x792:
fffff803`21ee38f2 8b05b8670e00    mov     eax,dword ptr [nt!ExpNumberOfNonPagedPools (fffff803`21fca0b0)]
fffff803`21ee38f8 413bc4          cmp     eax,r12d
fffff803`21ee38fb 0f877e040000    ja      nt!ExFreePoolWithTag+0xc1f (fffff803`21ee3d7f)

nt!ExFreePoolWithTag+0x7a1:
fffff803`21ee3901 453bdc          cmp     r11d,r12d
fffff803`21ee3904 0f83970f0000    jae     nt!ExFreePool+0x793 (fffff803`21ee48a1)

nt!ExFreePoolWithTag+0x7aa:
fffff803`21ee390a 8b7d7f          mov     edi,dword ptr [rbp+7Fh]
fffff803`21ee390d 85ff            test    edi,edi
fffff803`21ee390f 0f88a50f0000    js      nt!ExFreePool+0x7ac (fffff803`21ee48ba)

nt!ExFreePoolWithTag+0x7b5:
fffff803`21ee3915 0fbaf71f        btr     edi,1Fh
fffff803`21ee3919 3b3d2d690e00    cmp     edi,dword ptr [nt!PoolHitTag (fffff803`21fca24c)]
fffff803`21ee391f 0f843d080000    je      nt!ExFreePoolWithTag+0x1002 (fffff803`21ee4162)

nt!ExFreePoolWithTag+0x7c5:
fffff803`21ee3925 8b0559670e00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)]
fffff803`21ee392b a841            test    al,41h
fffff803`21ee392d 0f85930f0000    jne     nt!ExFreePool+0x7b8 (fffff803`21ee48c6)

nt!ExFreePoolWithTag+0x7d3:
fffff803`21ee3933 448be6          mov     r12d,esi
fffff803`21ee3936 4183e420        and     r12d,20h
fffff803`21ee393a 0f8594040000    jne     nt!ExFreePoolWithTag+0xc74 (fffff803`21ee3dd4)

nt!ExFreePoolWithTag+0x7e0:
fffff803`21ee3940 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`21ee3948 4c8b0dd91b0200  mov     r9,qword ptr [nt!PoolTrackTableMask (fffff803`21f05528)]
fffff803`21ee394f 8bc8            mov     ecx,eax
fffff803`21ee3951 488d05a8e6d8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee3958 4c8b9cc820212900 mov     r11,qword ptr [rax+rcx*8+292120h]

nt!ExFreePoolWithTag+0x800:
fffff803`21ee3960 8bc7            mov     eax,edi
fffff803`21ee3962 4869c05f9e0000  imul    rax,rax,9E5Fh
fffff803`21ee3969 488bd0          mov     rdx,rax
fffff803`21ee396c 48c1ea20        shr     rdx,20h
fffff803`21ee3970 33d0            xor     edx,eax
fffff803`21ee3972 4123d1          and     edx,r9d
fffff803`21ee3975 448bd2          mov     r10d,edx
fffff803`21ee3978 488d0c92        lea     rcx,[rdx+rdx*4]
fffff803`21ee397c 4c8d04cd00000000 lea     r8,[rcx*8]
fffff803`21ee3984 438b0418        mov     eax,dword ptr [r8+r11]
fffff803`21ee3988 4b8d0c03        lea     rcx,[r11+r8]
fffff803`21ee398c 3bc7            cmp     eax,edi
fffff803`21ee398e 7433            je      nt!ExFreePoolWithTag+0x863 (fffff803`21ee39c3)

nt!ExFreePoolWithTag+0x830:
fffff803`21ee3990 85c0            test    eax,eax
fffff803`21ee3992 0f84ee050000    je      nt!ExFreePoolWithTag+0xe26 (fffff803`21ee3f86)

nt!ExFreePoolWithTag+0x838:
fffff803`21ee3998 8d4201          lea     eax,[rdx+1]
fffff803`21ee399b 4123c1          and     eax,r9d
fffff803`21ee399e 8bd0            mov     edx,eax
fffff803`21ee39a0 413bc2          cmp     eax,r10d
fffff803`21ee39a3 0f8429060000    je      nt!ExFreePoolWithTag+0xe72 (fffff803`21ee3fd2)

nt!ExFreePoolWithTag+0x849:
fffff803`21ee39a9 8bc2            mov     eax,edx
fffff803`21ee39ab 488d0c80        lea     rcx,[rax+rax*4]
fffff803`21ee39af 4c8d04cd00000000 lea     r8,[rcx*8]
fffff803`21ee39b7 438b0418        mov     eax,dword ptr [r8+r11]
fffff803`21ee39bb 4b8d0c03        lea     rcx,[r11+r8]
fffff803`21ee39bf 3bc7            cmp     eax,edi
fffff803`21ee39c1 75cd            jne     nt!ExFreePoolWithTag+0x830 (fffff803`21ee3990)

nt!ExFreePoolWithTag+0x863:
fffff803`21ee39c3 40f6c601        test    sil,1
fffff803`21ee39c7 0f85d2020000    jne     nt!ExFreePoolWithTag+0xb3f (fffff803`21ee3c9f)

nt!ExFreePoolWithTag+0x86d:
fffff803`21ee39cd f0ff4108        lock inc dword ptr [rcx+8]
fffff803`21ee39d1 488b45b7        mov     rax,qword ptr [rbp-49h]
fffff803`21ee39d5 48f7d8          neg     rax
fffff803`21ee39d8 f0480fc14110    lock xadd qword ptr [rcx+10h],rax

nt!ExFreePoolWithTag+0x87e:
fffff803`21ee39de 488b5db7        mov     rbx,qword ptr [rbp-49h]

nt!ExFreePoolWithTag+0x882:
fffff803`21ee39e2 8b05b8660e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]
fffff803`21ee39e8 a917040000      test    eax,417h
fffff803`21ee39ed 0f85f00e0000    jne     nt!ExFreePool+0x7d5 (fffff803`21ee48e3)

nt!ExFreePoolWithTag+0x893:
fffff803`21ee39f3 488bfb          mov     rdi,rbx
fffff803`21ee39f6 4585ed          test    r13d,r13d
fffff803`21ee39f9 0f8499010000    je      nt!ExFreePoolWithTag+0xa38 (fffff803`21ee3b98)

nt!ExFreePoolWithTag+0x89f:
fffff803`21ee39ff 48c7c3e0ffffff  mov     rbx,0FFFFFFFFFFFFFFE0h
fffff803`21ee3a06 488bc3          mov     rax,rbx
fffff803`21ee3a09 f0490fc14650    lock xadd qword ptr [r14+50h],rax
fffff803`21ee3a0f 813d33680e0046726167 cmp dword ptr [nt!PoolHitTag (fffff803`21fca24c)],67617246h
fffff803`21ee3a19 0f8449070000    je      nt!ExFreePoolWithTag+0x1008 (fffff803`21ee4168)

nt!ExFreePoolWithTag+0x8bf:
fffff803`21ee3a1f 8b055f660e00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)]
fffff803`21ee3a25 4c8b6dc7        mov     r13,qword ptr [rbp-39h]
fffff803`21ee3a29 a841            test    al,41h
fffff803`21ee3a2b 0f85670f0000    jne     nt!ExFreePool+0x8a6 (fffff803`21ee4998)

nt!ExFreePoolWithTag+0x8d1:
fffff803`21ee3a31 4585e4          test    r12d,r12d
fffff803`21ee3a34 0f85ce040000    jne     nt!ExFreePoolWithTag+0xda8 (fffff803`21ee3f08)

nt!ExFreePoolWithTag+0x8da:
fffff803`21ee3a3a 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`21ee3a42 4c8b05df1a0200  mov     r8,qword ptr [nt!PoolTrackTableMask (fffff803`21f05528)]
fffff803`21ee3a49 8bc8            mov     ecx,eax
fffff803`21ee3a4b 488d05aee5d8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee3a52 4c8b8cc820212900 mov     r9,qword ptr [rax+rcx*8+292120h]

nt!ExFreePoolWithTag+0x8fa:
fffff803`21ee3a5a 418bd0          mov     edx,r8d
fffff803`21ee3a5d 81e20ea4b081    and     edx,81B0A40Eh
fffff803`21ee3a63 448bda          mov     r11d,edx
fffff803`21ee3a66 488d0c92        lea     rcx,[rdx+rdx*4]
fffff803`21ee3a6a 4c8d14cd00000000 lea     r10,[rcx*8]
fffff803`21ee3a72 438b0411        mov     eax,dword ptr [r9+r10]
fffff803`21ee3a76 4b8d0c0a        lea     rcx,[r10+r9]
fffff803`21ee3a7a 3d46726167      cmp     eax,67617246h
fffff803`21ee3a7f 0f85370f0000    jne     nt!ExFreePool+0x8ca (fffff803`21ee49bc)

nt!ExFreePoolWithTag+0x925:
fffff803`21ee3a85 40f6c601        test    sil,1
fffff803`21ee3a89 0f85f6030000    jne     nt!ExFreePoolWithTag+0xd25 (fffff803`21ee3e85)

nt!ExFreePoolWithTag+0x92f:
fffff803`21ee3a8f f0ff4108        lock inc dword ptr [rcx+8]
fffff803`21ee3a93 f0480fc15910    lock xadd qword ptr [rcx+10h],rbx

nt!ExFreePoolWithTag+0x939:
fffff803`21ee3a99 448b6577        mov     r12d,dword ptr [rbp+77h]
fffff803`21ee3a9d 4983c520        add     r13,20h
fffff803`21ee3aa1 498d7608        lea     rsi,[r14+8]
fffff803`21ee3aa5 4585e4          test    r12d,r12d
fffff803`21ee3aa8 0f8539030000    jne     nt!ExFreePoolWithTag+0xc87 (fffff803`21ee3de7)

nt!ExFreePoolWithTag+0x94e:
fffff803`21ee3aae 4533c9          xor     r9d,r9d
fffff803`21ee3ab1 488975df        mov     qword ptr [rbp-21h],rsi
fffff803`21ee3ab5 4c894dd7        mov     qword ptr [rbp-29h],r9
fffff803`21ee3ab9 440f20c0        mov     rax,cr8
fffff803`21ee3abd b902000000      mov     ecx,2
fffff803`21ee3ac2 440f22c1        mov     cr8,rcx
fffff803`21ee3ac6 f705b4650e0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21ee3ad0 8845e7          mov     byte ptr [rbp-19h],al
fffff803`21ee3ad3 0f85410f0000    jne     nt!ExFreePool+0x934 (fffff803`21ee4a1a)

nt!ExFreePoolWithTag+0x979:
fffff803`21ee3ad9 488d55d7        lea     rdx,[rbp-29h]
fffff803`21ee3add 488716          xchg    rdx,qword ptr [rsi]
fffff803`21ee3ae0 4885d2          test    rdx,rdx
fffff803`21ee3ae3 0f858c040000    jne     nt!ExFreePoolWithTag+0xe15 (fffff803`21ee3f75)

nt!ExFreePoolWithTag+0x989:
fffff803`21ee3ae9 410fb64502      movzx   eax,byte ptr [r13+2]
fffff803`21ee3aee 8bc8            mov     ecx,eax
fffff803`21ee3af0 48c1e104        shl     rcx,4
fffff803`21ee3af4 4903cd          add     rcx,r13
fffff803`21ee3af7 41807d0300      cmp     byte ptr [r13+3],0
fffff803`21ee3afc 0f8550040000    jne     nt!ExFreePoolWithTag+0xdf2 (fffff803`21ee3f52)

nt!ExFreePoolWithTag+0x9a2:
fffff803`21ee3b02 3c01            cmp     al,1
fffff803`21ee3b04 7426            je      nt!ExFreePoolWithTag+0x9cc (fffff803`21ee3b2c)

nt!ExFreePoolWithTag+0x9a6:
fffff803`21ee3b06 4d8b4510        mov     r8,qword ptr [r13+10h]
fffff803`21ee3b0a 498b5518        mov     rdx,qword ptr [r13+18h]
fffff803`21ee3b0e 498d4510        lea     rax,[r13+10h]
fffff803`21ee3b12 49394008        cmp     qword ptr [r8+8],rax
fffff803`21ee3b16 0f85100f0000    jne     nt!ExFreePool+0x946 (fffff803`21ee4a2c)

nt!ExFreePoolWithTag+0x9bc:
fffff803`21ee3b1c 483902          cmp     qword ptr [rdx],rax
fffff803`21ee3b1f 0f85070f0000    jne     nt!ExFreePool+0x946 (fffff803`21ee4a2c)

nt!ExFreePoolWithTag+0x9c5:
fffff803`21ee3b25 4c8902          mov     qword ptr [rdx],r8
fffff803`21ee3b28 49895008        mov     qword ptr [r8+8],rdx

nt!ExFreePoolWithTag+0x9cc:
fffff803`21ee3b2c 4c8be9          mov     r13,rcx

nt!ExFreePoolWithTag+0x9cf:
fffff803`21ee3b2f 48f7c1ff0f0000  test    rcx,0FFFh
fffff803`21ee3b36 0f8558030000    jne     nt!ExFreePoolWithTag+0xd34 (fffff803`21ee3e94)

nt!ExFreePoolWithTag+0x9dc:
fffff803`21ee3b3c f041ff8ec0000000 lock dec dword ptr [r14+0C0h]
fffff803`21ee3b44 488b5db7        mov     rbx,qword ptr [rbp-49h]

nt!ExFreePoolWithTag+0x9e8:
fffff803`21ee3b48 4585e4          test    r12d,r12d
fffff803`21ee3b4b 0f8500030000    jne     nt!ExFreePoolWithTag+0xcf1 (fffff803`21ee3e51)

nt!ExFreePoolWithTag+0x9f1:
fffff803`21ee3b51 f70529650e0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21ee3b5b 0f85d90e0000    jne     nt!ExFreePool+0x954 (fffff803`21ee4a3a)

nt!ExFreePoolWithTag+0xa01:
fffff803`21ee3b61 0f0d4dd7        prefetchw [rbp-29h]
fffff803`21ee3b65 488b45d7        mov     rax,qword ptr [rbp-29h]
fffff803`21ee3b69 4885c0          test    rax,rax
fffff803`21ee3b6c 0f85f4030000    jne     nt!ExFreePoolWithTag+0xe06 (fffff803`21ee3f66)

nt!ExFreePoolWithTag+0xa12:
fffff803`21ee3b72 488b4ddf        mov     rcx,qword ptr [rbp-21h]
fffff803`21ee3b76 488d45d7        lea     rax,[rbp-29h]
fffff803`21ee3b7a f04c0fb109      lock cmpxchg qword ptr [rcx],r9
fffff803`21ee3b7f 488d4dd7        lea     rcx,[rbp-29h]
fffff803`21ee3b83 483bc1          cmp     rax,rcx
fffff803`21ee3b86 0f85ce030000    jne     nt!ExFreePoolWithTag+0xdfa (fffff803`21ee3f5a)

nt!ExFreePoolWithTag+0xa2c:
fffff803`21ee3b8c 488b5db7        mov     rbx,qword ptr [rbp-49h]

nt!ExFreePoolWithTag+0xa30:
fffff803`21ee3b90 0fb645e7        movzx   eax,byte ptr [rbp-19h]

nt!ExFreePoolWithTag+0xa34:
fffff803`21ee3b94 440f22c0        mov     cr8,rax

nt!ExFreePoolWithTag+0xa38:
fffff803`21ee3b98 4885db          test    rbx,rbx
fffff803`21ee3b9b 7456            je      nt!ExFreePoolWithTag+0xa93 (fffff803`21ee3bf3)

nt!ExFreePoolWithTag+0xa3d:
fffff803`21ee3b9d 4c3b3dd4640e00  cmp     r15,qword ptr [nt!MmNonPagedPoolStart (fffff803`21fca078)]
fffff803`21ee3ba4 0f82e1000000    jb      nt!ExFreePoolWithTag+0xb2b (fffff803`21ee3c8b)

nt!ExFreePoolWithTag+0xa4a:
fffff803`21ee3baa 4c3b3daf650e00  cmp     r15,qword ptr [nt!MiNonPagedPoolEnd (fffff803`21fca160)]
fffff803`21ee3bb1 0f83d4000000    jae     nt!ExFreePoolWithTag+0xb2b (fffff803`21ee3c8b)

nt!ExFreePoolWithTag+0xa57:
fffff803`21ee3bb7 b800000000      mov     eax,0
fffff803`21ee3bbc 48f7c3ff0f0000  test    rbx,0FFFh
fffff803`21ee3bc3 488bf3          mov     rsi,rbx
fffff803`21ee3bc6 0f95c0          setne   al
fffff803`21ee3bc9 48c1ee0c        shr     rsi,0Ch
fffff803`21ee3bcd 498bcf          mov     rcx,r15
fffff803`21ee3bd0 4803f0          add     rsi,rax
fffff803`21ee3bd3 488bd6          mov     rdx,rsi
fffff803`21ee3bd6 e89570e3ff      call    nt!MiInsertNonPagedPoolOnSlist (fffff803`21d1ac70)
fffff803`21ee3bdb 448be0          mov     r12d,eax
fffff803`21ee3bde 83f801          cmp     eax,1
fffff803`21ee3be1 0f8556010000    jne     nt!ExFreePoolWithTag+0xbdd (fffff803`21ee3d3d)

nt!ExFreePoolWithTag+0xa87:
fffff803`21ee3be7 48c1eb0c        shr     rbx,0Ch
fffff803`21ee3beb f7db            neg     ebx
fffff803`21ee3bed f0410fc15e48    lock xadd dword ptr [r14+48h],ebx

nt!ExFreePoolWithTag+0xa93:
fffff803`21ee3bf3 f041ff4644      lock inc dword ptr [r14+44h]
fffff803`21ee3bf8 48f7df          neg     rdi
fffff803`21ee3bfb f0490fc17e50    lock xadd qword ptr [r14+50h],rdi
fffff803`21ee3c01 e903f8ffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`21ee3409)

nt!ExFreePoolWithTag+0xaa6:
fffff803`21ee3c06 4585e4          test    r12d,r12d
fffff803`21ee3c09 0f856ffaffff    jne     nt!ExFreePoolWithTag+0x51e (fffff803`21ee367e)

nt!ExFreePoolWithTag+0xaaf:
fffff803`21ee3c0f 488b0dca040200  mov     rcx,qword ptr [nt!PoolTrackTable (fffff803`21f040e0)]
fffff803`21ee3c16 458b0408        mov     r8d,dword ptr [r8+rcx]
fffff803`21ee3c1a 4585c0          test    r8d,r8d
fffff803`21ee3c1d 0f845bfaffff    je      nt!ExFreePoolWithTag+0x51e (fffff803`21ee367e)

nt!ExFreePoolWithTag+0xac3:
fffff803`21ee3c23 448902          mov     dword ptr [rdx],r8d
fffff803`21ee3c26 e964faffff      jmp     nt!ExFreePoolWithTag+0x52f (fffff803`21ee368f)

nt!ExFreePoolWithTag+0xacb:
fffff803`21ee3c2b 3d00010000      cmp     eax,100h
fffff803`21ee3c30 0f83f2030000    jae     nt!ExFreePoolWithTag+0xec8 (fffff803`21ee4028)

nt!ExFreePoolWithTag+0xad6:
fffff803`21ee3c36 418b474c        mov     eax,dword ptr [r15+4Ch]
fffff803`21ee3c3a 85c0            test    eax,eax
fffff803`21ee3c3c 0f8585f8ffff    jne     nt!ExFreePoolWithTag+0x367 (fffff803`21ee34c7)

nt!ExFreePoolWithTag+0xae2:
fffff803`21ee3c42 33d2            xor     edx,edx
fffff803`21ee3c44 498bcf          mov     rcx,r15
fffff803`21ee3c47 e8f4efffff      call    nt!ExDeferredFreePool (fffff803`21ee2c40)
fffff803`21ee3c4c e976f8ffff      jmp     nt!ExFreePoolWithTag+0x367 (fffff803`21ee34c7)

nt!ExFreePoolWithTag+0xaf1:
fffff803`21ee3c51 488b55c7        mov     rdx,qword ptr [rbp-39h]
fffff803`21ee3c55 448bc6          mov     r8d,esi
fffff803`21ee3c58 8bcf            mov     ecx,edi
fffff803`21ee3c5a e821d7e4ff      call    nt!ExpRemovePoolTrackerExpansion (fffff803`21d31380)
fffff803`21ee3c5f e9fef6ffff      jmp     nt!ExFreePoolWithTag+0x202 (fffff803`21ee3362)

nt!ExFreePoolWithTag+0xb04:
fffff803`21ee3c64 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`21ee3c6e 498bc7          mov     rax,r15
fffff803`21ee3c71 48c1e809        shr     rax,9
fffff803`21ee3c75 4823c1          and     rax,rcx
fffff803`21ee3c78 48b90000000080f6ffff mov rcx,0FFFFF68000000000h
fffff803`21ee3c82 488b0408        mov     rax,qword ptr [rax+rcx]
fffff803`21ee3c86 e9edfbffff      jmp     nt!ExFreePoolWithTag+0x718 (fffff803`21ee3878)

nt!ExFreePoolWithTag+0xb2b:
fffff803`21ee3c8b 448b457f        mov     r8d,dword ptr [rbp+7Fh]
fffff803`21ee3c8f 488bd3          mov     rdx,rbx
fffff803`21ee3c92 498bcf          mov     rcx,r15
fffff803`21ee3c95 e826d0e5ff      call    nt!MiFreePagedPoolPages (fffff803`21d40cc0)
fffff803`21ee3c9a e948ffffff      jmp     nt!ExFreePoolWithTag+0xa87 (fffff803`21ee3be7)

nt!ExFreePoolWithTag+0xb3f:
fffff803`21ee3c9f f0ff411c        lock inc dword ptr [rcx+1Ch]
fffff803`21ee3ca3 488b45b7        mov     rax,qword ptr [rbp-49h]
fffff803`21ee3ca7 48f7d8          neg     rax
fffff803`21ee3caa f0480fc14120    lock xadd qword ptr [rcx+20h],rax
fffff803`21ee3cb0 e929fdffff      jmp     nt!ExFreePoolWithTag+0x87e (fffff803`21ee39de)

nt!ExFreePoolWithTag+0xb55:
fffff803`21ee3cb5 f705e1630e0000080000 test dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)],800h
fffff803`21ee3cbf 0f85f9f5ffff    jne     nt!ExFreePoolWithTag+0x15e (fffff803`21ee32be)

nt!ExFreePoolWithTag+0xb65:
fffff803`21ee3cc5 4981c740110000  add     r15,1140h
fffff803`21ee3ccc e9edf5ffff      jmp     nt!ExFreePoolWithTag+0x15e (fffff803`21ee32be)

nt!ExFreePoolWithTag+0xb71:
fffff803`21ee3cd1 488d8a80140000  lea     rcx,[rdx+1480h]
fffff803`21ee3cd8 e9f6f6ffff      jmp     nt!ExFreePoolWithTag+0x273 (fffff803`21ee33d3)

nt!ExFreePoolWithTag+0xb7d:
fffff803`21ee3cdd 4c3bde          cmp     r11,rsi
fffff803`21ee3ce0 7603            jbe     nt!ExFreePoolWithTag+0xb85 (fffff803`21ee3ce5)

nt!ExFreePoolWithTag+0xb82:
fffff803`21ee3ce2 4c8bde          mov     r11,rsi

nt!ExFreePoolWithTag+0xb85:
fffff803`21ee3ce5 498bc9          mov     rcx,r9
fffff803`21ee3ce8 498bc1          mov     rax,r9
fffff803`21ee3ceb 492bcb          sub     rcx,r11
fffff803`21ee3cee f0490fb14a40    lock cmpxchg qword ptr [r10+40h],rcx
fffff803`21ee3cf4 0f850bf9ffff    jne     nt!ExFreePoolWithTag+0x4a5 (fffff803`21ee3605)

nt!ExFreePoolWithTag+0xb9a:
fffff803`21ee3cfa 498bc3          mov     rax,r11
fffff803`21ee3cfd f0490fc14248    lock xadd qword ptr [r10+48h],rax
fffff803`21ee3d03 4c03d8          add     r11,rax
fffff803`21ee3d06 4c3b5a08        cmp     r11,qword ptr [rdx+8]
fffff803`21ee3d0a 0f86f5f8ffff    jbe     nt!ExFreePoolWithTag+0x4a5 (fffff803`21ee3605)

nt!ExFreePoolWithTag+0xbb0:
fffff803`21ee3d10 33c0            xor     eax,eax
fffff803`21ee3d12 49874248        xchg    rax,qword ptr [r10+48h]
fffff803`21ee3d16 4885c0          test    rax,rax
fffff803`21ee3d19 0f84e6f8ffff    je      nt!ExFreePoolWithTag+0x4a5 (fffff803`21ee3605)

nt!ExFreePoolWithTag+0xbbf:
fffff803`21ee3d1f 8b4dbf          mov     ecx,dword ptr [rbp-41h]
fffff803`21ee3d22 4533c9          xor     r9d,r9d
fffff803`21ee3d25 4c8bc0          mov     r8,rax
fffff803`21ee3d28 498bd2          mov     rdx,r10
fffff803`21ee3d2b e83858e8ff      call    nt!PspReturnResourceQuota (fffff803`21d69568)
fffff803`21ee3d30 4c8b45f7        mov     r8,qword ptr [rbp-9]
fffff803`21ee3d34 4c8b5507        mov     r10,qword ptr [rbp+7]
fffff803`21ee3d38 e9c8f8ffff      jmp     nt!ExFreePoolWithTag+0x4a5 (fffff803`21ee3605)

nt!ExFreePoolWithTag+0xbdd:
fffff803`21ee3d3d 488bd6          mov     rdx,rsi
fffff803`21ee3d40 498bcf          mov     rcx,r15
fffff803`21ee3d43 e888a4e3ff      call    nt!MiClearNonPagedPtes (fffff803`21d1e1d0)
fffff803`21ee3d48 4885c0          test    rax,rax
fffff803`21ee3d4b 0f85e6010000    jne     nt!ExFreePoolWithTag+0xdd7 (fffff803`21ee3f37)

nt!ExFreePoolWithTag+0xbf1:
fffff803`21ee3d51 458bc4          mov     r8d,r12d
fffff803`21ee3d54 488bd6          mov     rdx,rsi
fffff803`21ee3d57 498bcf          mov     rcx,r15
fffff803`21ee3d5a e87137e3ff      call    nt!MiReturnNonPagedPoolVa (fffff803`21d174d0)
fffff803`21ee3d5f e983feffff      jmp     nt!ExFreePoolWithTag+0xa87 (fffff803`21ee3be7)

nt!ExFreePoolWithTag+0xc04:
fffff803`21ee3d64 4c3bf8          cmp     r15,rax
fffff803`21ee3d67 0f8277faffff    jb      nt!ExFreePoolWithTag+0x684 (fffff803`21ee37e4)

nt!ExFreePoolWithTag+0xc0d:
fffff803`21ee3d6d 49b800000040fbf6ffff mov r8,0FFFFF6FB40000000h

nt!ExFreePoolWithTag+0xc17:
fffff803`21ee3d77 418bf1          mov     esi,r9d
fffff803`21ee3d7a e9b1faffff      jmp     nt!ExFreePoolWithTag+0x6d0 (fffff803`21ee3830)

nt!ExFreePoolWithTag+0xc1f:
fffff803`21ee3d7f 4c8d357ae2d8ff  lea     r14,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee3d86 498bca          mov     rcx,r10
fffff803`21ee3d89 448be0          mov     r12d,eax
fffff803`21ee3d8c 4f8bb4ded0a33500 mov     r14,qword ptr [r14+r11*8+35A3D0h]
fffff803`21ee3d94 e877a7d9ff      call    nt!MmIsNonPagedPoolNx (fffff803`21c7e510)
fffff803`21ee3d99 85c0            test    eax,eax
fffff803`21ee3d9b 0f8560fbffff    jne     nt!ExFreePoolWithTag+0x7a1 (fffff803`21ee3901)

nt!ExFreePoolWithTag+0xc41:
fffff803`21ee3da1 f705f5620e0000080000 test dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)],800h
fffff803`21ee3dab 0f8550fbffff    jne     nt!ExFreePoolWithTag+0x7a1 (fffff803`21ee3901)

nt!ExFreePoolWithTag+0xc51:
fffff803`21ee3db1 4981c640110000  add     r14,1140h
fffff803`21ee3db8 e944fbffff      jmp     nt!ExFreePoolWithTag+0x7a1 (fffff803`21ee3901)

nt!ExFreePoolWithTag+0xc5d:
fffff803`21ee3dbd be21000000      mov     esi,21h
fffff803`21ee3dc2 e969faffff      jmp     nt!ExFreePoolWithTag+0x6d0 (fffff803`21ee3830)

nt!ExFreePoolWithTag+0xc67:
fffff803`21ee3dc7 e804d31c00      call    nt!MiSessionPoolVector (fffff803`220b10d0)
fffff803`21ee3dcc 4c8bf0          mov     r14,rax
fffff803`21ee3dcf e9b7faffff      jmp     nt!ExFreePoolWithTag+0x72b (fffff803`21ee388b)

nt!ExFreePoolWithTag+0xc74:
fffff803`21ee3dd4 4c8b1d15030200  mov     r11,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`21f040f0)]
fffff803`21ee3ddb 4c8b0d06030200  mov     r9,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`21f040e8)]
fffff803`21ee3de2 e979fbffff      jmp     nt!ExFreePoolWithTag+0x800 (fffff803`21ee3960)

nt!ExFreePoolWithTag+0xc87:
fffff803`21ee3de7 440f20c3        mov     rbx,cr8
fffff803`21ee3deb b801000000      mov     eax,1
fffff803`21ee3df0 440f22c0        mov     cr8,rax
fffff803`21ee3df4 f00fba3600      lock btr dword ptr [rsi],0
fffff803`21ee3df9 0f83ff010000    jae     nt!ExFreePoolWithTag+0xe9e (fffff803`21ee3ffe)

nt!ExFreePoolWithTag+0xc9f:
fffff803`21ee3dff 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21ee3e08 48894608        mov     qword ptr [rsi+8],rax
fffff803`21ee3e0c 0fb6c3          movzx   eax,bl
fffff803`21ee3e0f 894630          mov     dword ptr [rsi+30h],eax
fffff803`21ee3e12 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21ee3e1b fe8037040000    inc     byte ptr [rax+437h]

nt!ExFreePoolWithTag+0xcc1:
fffff803`21ee3e21 4533c9          xor     r9d,r9d
fffff803`21ee3e24 e9c0fcffff      jmp     nt!ExFreePoolWithTag+0x989 (fffff803`21ee3ae9)

nt!ExFreePoolWithTag+0xcc9:
fffff803`21ee3e29 40f6c620        test    sil,20h
fffff803`21ee3e2d 0f85cefaffff    jne     nt!ExFreePoolWithTag+0x7a1 (fffff803`21ee3901)

nt!ExFreePoolWithTag+0xcd3:
fffff803`21ee3e33 448b256e620e00  mov     r12d,dword ptr [nt!ExpNumberOfPagedPools (fffff803`21fca0a8)]
fffff803`21ee3e3a 4c8d35bfe1d8ff  lea     r14,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee3e41 4f8bb4dec0a13500 mov     r14,qword ptr [r14+r11*8+35A1C0h]
fffff803`21ee3e49 41ffc4          inc     r12d
fffff803`21ee3e4c e9b0faffff      jmp     nt!ExFreePoolWithTag+0x7a1 (fffff803`21ee3901)

nt!ExFreePoolWithTag+0xcf1:
fffff803`21ee3e51 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21ee3e5a b901000000      mov     ecx,1
fffff803`21ee3e5f fe8837040000    dec     byte ptr [rax+437h]
fffff803`21ee3e65 0fb65e30        movzx   ebx,byte ptr [rsi+30h]
fffff803`21ee3e69 4c894e08        mov     qword ptr [rsi+8],r9
fffff803`21ee3e6d 33c0            xor     eax,eax
fffff803`21ee3e6f f00fb10e        lock cmpxchg dword ptr [rsi],ecx
fffff803`21ee3e73 0f856f010000    jne     nt!ExFreePoolWithTag+0xe88 (fffff803`21ee3fe8)

nt!ExFreePoolWithTag+0xd19:
fffff803`21ee3e79 0fb6c3          movzx   eax,bl
fffff803`21ee3e7c 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`21ee3e80 e90ffdffff      jmp     nt!ExFreePoolWithTag+0xa34 (fffff803`21ee3b94)

nt!ExFreePoolWithTag+0xd25:
fffff803`21ee3e85 f0ff411c        lock inc dword ptr [rcx+1Ch]
fffff803`21ee3e89 f0480fc15920    lock xadd qword ptr [rcx+20h],rbx
fffff803`21ee3e8f e905fcffff      jmp     nt!ExFreePoolWithTag+0x939 (fffff803`21ee3a99)

nt!ExFreePoolWithTag+0xd34:
fffff803`21ee3e94 4881e100f0ffff  and     rcx,0FFFFFFFFFFFFF000h
fffff803`21ee3e9b 498bc5          mov     rax,r13
fffff803`21ee3e9e c6410300        mov     byte ptr [rcx+3],0
fffff803`21ee3ea2 482bc1          sub     rax,rcx
fffff803`21ee3ea5 c60100          mov     byte ptr [rcx],0
fffff803`21ee3ea8 c7410446726565  mov     dword ptr [rcx+4],65657246h
fffff803`21ee3eaf 48c1f804        sar     rax,4
fffff803`21ee3eb3 4883c110        add     rcx,10h
fffff803`21ee3eb7 8841f2          mov     byte ptr [rcx-0Eh],al
fffff803`21ee3eba 8b45bf          mov     eax,dword ptr [rbp-41h]
fffff803`21ee3ebd 8841f1          mov     byte ptr [rcx-0Fh],al
fffff803`21ee3ec0 0fb641f2        movzx   eax,byte ptr [rcx-0Eh]
fffff803`21ee3ec4 41884500        mov     byte ptr [r13],al
fffff803`21ee3ec8 0fb651f2        movzx   edx,byte ptr [rcx-0Eh]
fffff803`21ee3ecc ffca            dec     edx
fffff803`21ee3ece 4883c214        add     rdx,14h
fffff803`21ee3ed2 48c1e204        shl     rdx,4
fffff803`21ee3ed6 4903d6          add     rdx,r14
fffff803`21ee3ed9 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`21ee3edd 488911          mov     qword ptr [rcx],rdx
fffff803`21ee3ee0 48894108        mov     qword ptr [rcx+8],rax
fffff803`21ee3ee4 483910          cmp     qword ptr [rax],rdx
fffff803`21ee3ee7 0f85460b0000    jne     nt!ExFreePool+0x94d (fffff803`21ee4a33)

nt!ExFreePoolWithTag+0xd8d:
fffff803`21ee3eed 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`21ee3ef1 488908          mov     qword ptr [rax],rcx
fffff803`21ee3ef4 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21ee3ef8 4881e300f0ffff  and     rbx,0FFFFFFFFFFFFF000h
fffff803`21ee3eff 48895db7        mov     qword ptr [rbp-49h],rbx
fffff803`21ee3f03 e940fcffff      jmp     nt!ExFreePoolWithTag+0x9e8 (fffff803`21ee3b48)

nt!ExFreePoolWithTag+0xda8:
fffff803`21ee3f08 4c8b0de1010200  mov     r9,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`21f040f0)]
fffff803`21ee3f0f 4c8b05d2010200  mov     r8,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`21f040e8)]
fffff803`21ee3f16 e93ffbffff      jmp     nt!ExFreePoolWithTag+0x8fa (fffff803`21ee3a5a)

nt!ExFreePoolWithTag+0xdbb:
fffff803`21ee3f1b f7057b610e0000080000 test dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)],800h
fffff803`21ee3f25 0f8560f9ffff    jne     nt!ExFreePoolWithTag+0x72b (fffff803`21ee388b)

nt!ExFreePoolWithTag+0xdcb:
fffff803`21ee3f2b 4981c640110000  add     r14,1140h
fffff803`21ee3f32 e954f9ffff      jmp     nt!ExFreePoolWithTag+0x72b (fffff803`21ee388b)

nt!ExFreePoolWithTag+0xdd7:
fffff803`21ee3f37 488bc8          mov     rcx,rax
fffff803`21ee3f3a e85584ecff      call    nt!MiReturnPhysicalPoolPages (fffff803`21dac394)
fffff803`21ee3f3f 458bc4          mov     r8d,r12d
fffff803`21ee3f42 488bd6          mov     rdx,rsi
fffff803`21ee3f45 498bcf          mov     rcx,r15
fffff803`21ee3f48 e88335e3ff      call    nt!MiReturnNonPagedPoolVa (fffff803`21d174d0)
fffff803`21ee3f4d e995fcffff      jmp     nt!ExFreePoolWithTag+0xa87 (fffff803`21ee3be7)

nt!ExFreePoolWithTag+0xdf2:
fffff803`21ee3f52 498bcd          mov     rcx,r13
fffff803`21ee3f55 e9d5fbffff      jmp     nt!ExFreePoolWithTag+0x9cf (fffff803`21ee3b2f)

nt!ExFreePoolWithTag+0xdfa:
fffff803`21ee3f5a 488d4dd7        lea     rcx,[rbp-29h]
fffff803`21ee3f5e e80dc6e4ff      call    nt!KxWaitForLockChainValid (fffff803`21d30570)
fffff803`21ee3f63 4533c9          xor     r9d,r9d

nt!ExFreePoolWithTag+0xe06:
fffff803`21ee3f66 f04883700801    lock xor qword ptr [rax+8],1
fffff803`21ee3f6c 4c894dd7        mov     qword ptr [rbp-29h],r9
fffff803`21ee3f70 e917fcffff      jmp     nt!ExFreePoolWithTag+0xa2c (fffff803`21ee3b8c)

nt!ExFreePoolWithTag+0xe15:
fffff803`21ee3f75 488d4dd7        lea     rcx,[rbp-29h]
fffff803`21ee3f79 e86222e3ff      call    nt!KxWaitForLockOwnerShip (fffff803`21d161e0)
fffff803`21ee3f7e 4533c9          xor     r9d,r9d
fffff803`21ee3f81 e963fbffff      jmp     nt!ExFreePoolWithTag+0x989 (fffff803`21ee3ae9)

nt!ExFreePoolWithTag+0xe26:
fffff803`21ee3f86 4585e4          test    r12d,r12d
fffff803`21ee3f89 0f8509faffff    jne     nt!ExFreePoolWithTag+0x838 (fffff803`21ee3998)

nt!ExFreePoolWithTag+0xe2f:
fffff803`21ee3f8f 488b054a010200  mov     rax,qword ptr [nt!PoolTrackTable (fffff803`21f040e0)]
fffff803`21ee3f96 458b0400        mov     r8d,dword ptr [r8+rax]
fffff803`21ee3f9a 4585c0          test    r8d,r8d
fffff803`21ee3f9d 0f84f5f9ffff    je      nt!ExFreePoolWithTag+0x838 (fffff803`21ee3998)

nt!ExFreePoolWithTag+0xe43:
fffff803`21ee3fa3 448901          mov     dword ptr [rcx],r8d
fffff803`21ee3fa6 e9fef9ffff      jmp     nt!ExFreePoolWithTag+0x849 (fffff803`21ee39a9)

nt!ExFreePoolWithTag+0xe4b:
fffff803`21ee3fab 488b4fd8        mov     rcx,qword ptr [rdi-28h]
fffff803`21ee3faf 4885c9          test    rcx,rcx
fffff803`21ee3fb2 0f85830c0000    jne     nt!ExFreePool+0xb75 (fffff803`21ee4c3b)

nt!ExFreePoolWithTag+0xe58:
fffff803`21ee3fb8 4885c0          test    rax,rax
fffff803`21ee3fbb 0f88a50c0000    js      nt!ExFreePool+0xba0 (fffff803`21ee4c66)

nt!ExFreePoolWithTag+0xe61:
fffff803`21ee3fc1 488d4fd0        lea     rcx,[rdi-30h]
fffff803`21ee3fc5 e8ae2ce9ff      call    nt!ObpDeferObjectDeletion (fffff803`21d76c78)
fffff803`21ee3fca 4533c9          xor     r9d,r9d
fffff803`21ee3fcd e99df3ffff      jmp     nt!ExFreePoolWithTag+0x20f (fffff803`21ee336f)

nt!ExFreePoolWithTag+0xe72:
fffff803`21ee3fd2 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`21ee3fd6 448bc6          mov     r8d,esi
fffff803`21ee3fd9 8bcf            mov     ecx,edi
fffff803`21ee3fdb 488bd3          mov     rdx,rbx
fffff803`21ee3fde e89dd3e4ff      call    nt!ExpRemovePoolTrackerExpansion (fffff803`21d31380)
fffff803`21ee3fe3 e9faf9ffff      jmp     nt!ExFreePoolWithTag+0x882 (fffff803`21ee39e2)

nt!ExFreePoolWithTag+0xe88:
fffff803`21ee3fe8 8bd0            mov     edx,eax
fffff803`21ee3fea 488bce          mov     rcx,rsi
fffff803`21ee3fed e83af0e8ff      call    nt!ExpReleaseFastMutexContended (fffff803`21d7302c)
fffff803`21ee3ff2 0fb6c3          movzx   eax,bl
fffff803`21ee3ff5 488b5db7        mov     rbx,qword ptr [rbp-49h]
fffff803`21ee3ff9 e996fbffff      jmp     nt!ExFreePoolWithTag+0xa34 (fffff803`21ee3b94)

nt!ExFreePoolWithTag+0xe9e:
fffff803`21ee3ffe 488bce          mov     rcx,rsi
fffff803`21ee4001 e81afae8ff      call    nt!ExpAcquireFastMutexContended (fffff803`21d73a20)
fffff803`21ee4006 e9f4fdffff      jmp     nt!ExFreePoolWithTag+0xc9f (fffff803`21ee3dff)

nt!ExFreePoolWithTag+0xeab:
fffff803`21ee400b 448b4b04        mov     r9d,dword ptr [rbx+4]
fffff803`21ee400f 4c8d4310        lea     r8,[rbx+10h]
fffff803`21ee4013 ba0d000000      mov     edx,0Dh
fffff803`21ee4018 b9c2000000      mov     ecx,0C2h
fffff803`21ee401d 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff803`21ee4022 e81984deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4027 cc              int     3

nt!ExFreePoolWithTag+0xec8:
fffff803`21ee4028 ba01000000      mov     edx,1
fffff803`21ee402d 498bcf          mov     rcx,r15
fffff803`21ee4030 e80becffff      call    nt!ExDeferredFreePool (fffff803`21ee2c40)
fffff803`21ee4035 e98df4ffff      jmp     nt!ExFreePoolWithTag+0x367 (fffff803`21ee34c7)

nt!ExFreePoolWithTag+0xeda:
fffff803`21ee403a 418bf1          mov     esi,r9d
fffff803`21ee403d f041ff4744      lock inc dword ptr [r15+44h]
fffff803`21ee4042 488b45c7        mov     rax,qword ptr [rbp-39h]
fffff803`21ee4046 48f7d8          neg     rax
fffff803`21ee4049 f0490fc14750    lock xadd qword ptr [r15+50h],rax
fffff803`21ee404f 498d7f08        lea     rdi,[r15+8]
fffff803`21ee4053 4585ed          test    r13d,r13d
fffff803`21ee4056 0f85230c0000    jne     nt!ExFreePool+0xbb9 (fffff803`21ee4c7f)

nt!ExFreePoolWithTag+0xefc:
fffff803`21ee405c 488d55d7        lea     rdx,[rbp-29h]
fffff803`21ee4060 488bcf          mov     rcx,rdi
fffff803`21ee4063 e88886e4ff      call    nt!KeAcquireInStackQueuedSpinLock (fffff803`21d2c6f0)
fffff803`21ee4068 4533c9          xor     r9d,r9d
fffff803`21ee406b 418d5501        lea     edx,[r13+1]

nt!ExFreePoolWithTag+0xf0f:
fffff803`21ee406f 4c8b45ff        mov     r8,qword ptr [rbp-1]
fffff803`21ee4073 49f7c0ff0f0000  test    r8,0FFFh
fffff803`21ee407a 7443            je      nt!ExFreePoolWithTag+0xf5f (fffff803`21ee40bf)

nt!ExFreePoolWithTag+0xf1c:
fffff803`21ee407c 4180780300      cmp     byte ptr [r8+3],0
fffff803`21ee4081 753c            jne     nt!ExFreePoolWithTag+0xf5f (fffff803`21ee40bf)

nt!ExFreePoolWithTag+0xf23:
fffff803`21ee4083 4180780201      cmp     byte ptr [r8+2],1
fffff803`21ee4088 8bf2            mov     esi,edx
fffff803`21ee408a 742b            je      nt!ExFreePoolWithTag+0xf57 (fffff803`21ee40b7)

nt!ExFreePoolWithTag+0xf2c:
fffff803`21ee408c 498b5010        mov     rdx,qword ptr [r8+10h]
fffff803`21ee4090 498b4818        mov     rcx,qword ptr [r8+18h]
fffff803`21ee4094 498d4010        lea     rax,[r8+10h]
fffff803`21ee4098 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21ee409c 0f85280c0000    jne     nt!ExFreePool+0xc08 (fffff803`21ee4cca)

nt!ExFreePoolWithTag+0xf42:
fffff803`21ee40a2 483901          cmp     qword ptr [rcx],rax
fffff803`21ee40a5 0f851f0c0000    jne     nt!ExFreePool+0xc08 (fffff803`21ee4cca)

nt!ExFreePoolWithTag+0xf4b:
fffff803`21ee40ab 488911          mov     qword ptr [rcx],rdx
fffff803`21ee40ae 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21ee40b2 ba01000000      mov     edx,1

nt!ExFreePoolWithTag+0xf57:
fffff803`21ee40b7 410fb64002      movzx   eax,byte ptr [r8+2]
fffff803`21ee40bc 004302          add     byte ptr [rbx+2],al

nt!ExFreePoolWithTag+0xf5f:
fffff803`21ee40bf 8b03            mov     eax,dword ptr [rbx]
fffff803`21ee40c1 84c0            test    al,al
fffff803`21ee40c3 7417            je      nt!ExFreePoolWithTag+0xf7c (fffff803`21ee40dc)

nt!ExFreePoolWithTag+0xf65:
fffff803`21ee40c5 0fb6c0          movzx   eax,al
fffff803`21ee40c8 488bcb          mov     rcx,rbx
fffff803`21ee40cb 48c1e004        shl     rax,4
fffff803`21ee40cf 482bc8          sub     rcx,rax
fffff803`21ee40d2 80790300        cmp     byte ptr [rcx+3],0
fffff803`21ee40d6 0f84f50b0000    je      nt!ExFreePool+0xc0f (fffff803`21ee4cd1)

nt!ExFreePoolWithTag+0xf7c:
fffff803`21ee40dc 48f7c3ff0f0000  test    rbx,0FFFh
fffff803`21ee40e3 745e            je      nt!ExFreePoolWithTag+0xfe3 (fffff803`21ee4143)

nt!ExFreePoolWithTag+0xf85:
fffff803`21ee40e5 0fb64b02        movzx   ecx,byte ptr [rbx+2]
fffff803`21ee40e9 c6430300        mov     byte ptr [rbx+3],0
fffff803`21ee40ed 85f6            test    esi,esi
fffff803`21ee40ef 7413            je      nt!ExFreePoolWithTag+0xfa4 (fffff803`21ee4104)

nt!ExFreePoolWithTag+0xf91:
fffff803`21ee40f1 8bc1            mov     eax,ecx
fffff803`21ee40f3 48c1e004        shl     rax,4
fffff803`21ee40f7 4803c3          add     rax,rbx
fffff803`21ee40fa 48a9ff0f0000    test    rax,0FFFh
fffff803`21ee4100 7402            je      nt!ExFreePoolWithTag+0xfa4 (fffff803`21ee4104)

nt!ExFreePoolWithTag+0xfa2:
fffff803`21ee4102 8808            mov     byte ptr [rax],cl

nt!ExFreePoolWithTag+0xfa4:
fffff803`21ee4104 ffc9            dec     ecx
fffff803`21ee4106 4883c310        add     rbx,10h
fffff803`21ee410a 4883c114        add     rcx,14h
fffff803`21ee410e 48c1e104        shl     rcx,4
fffff803`21ee4112 4903cf          add     rcx,r15
fffff803`21ee4115 488b01          mov     rax,qword ptr [rcx]
fffff803`21ee4118 48894b08        mov     qword ptr [rbx+8],rcx
fffff803`21ee411c 488903          mov     qword ptr [rbx],rax
fffff803`21ee411f 48394808        cmp     qword ptr [rax+8],rcx
fffff803`21ee4123 754f            jne     nt!ExFreePoolWithTag+0x1014 (fffff803`21ee4174)

nt!ExFreePoolWithTag+0xfc5:
fffff803`21ee4125 48895808        mov     qword ptr [rax+8],rbx
fffff803`21ee4129 488919          mov     qword ptr [rcx],rbx
fffff803`21ee412c 4585ed          test    r13d,r13d
fffff803`21ee412f 0f853d0c0000    jne     nt!ExFreePool+0xcc7 (fffff803`21ee4d72)

nt!ExFreePoolWithTag+0xfd5:
fffff803`21ee4135 488d4dd7        lea     rcx,[rbp-29h]
fffff803`21ee4139 e8f20fe2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`21d05130)
fffff803`21ee413e e9c6f2ffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`21ee3409)

nt!ExFreePoolWithTag+0xfe3:
fffff803`21ee4143 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff803`21ee4147 48c1e004        shl     rax,4
fffff803`21ee414b 4803c3          add     rax,rbx
fffff803`21ee414e 48a9ff0f0000    test    rax,0FFFh
fffff803`21ee4154 758f            jne     nt!ExFreePoolWithTag+0xf85 (fffff803`21ee40e5)

nt!ExFreePoolWithTag+0xff6:
fffff803`21ee4156 e9b70b0000      jmp     nt!ExFreePool+0xc5c (fffff803`21ee4d12)

nt!ExFreePoolWithTag+0xffb:
fffff803`21ee415b 8bf0            mov     esi,eax
fffff803`21ee415d e951f7ffff      jmp     nt!ExFreePoolWithTag+0x753 (fffff803`21ee38b3)

nt!ExFreePoolWithTag+0x1002:
fffff803`21ee4162 cc              int     3
fffff803`21ee4163 e9bdf7ffff      jmp     nt!ExFreePoolWithTag+0x7c5 (fffff803`21ee3925)

nt!ExFreePoolWithTag+0x1008:
fffff803`21ee4168 cc              int     3
fffff803`21ee4169 e9b1f8ffff      jmp     nt!ExFreePoolWithTag+0x8bf (fffff803`21ee3a1f)

nt!ExFreePoolWithTag+0x100e:
fffff803`21ee416e cc              int     3
fffff803`21ee416f e96ef1ffff      jmp     nt!ExFreePoolWithTag+0x182 (fffff803`21ee32e2)

nt!ExFreePoolWithTag+0x1014:
fffff803`21ee4174 b903000000      mov     ecx,3
fffff803`21ee4179 cd29            int     29h
fffff803`21ee417b 90              nop
fffff803`21ee417c 90              nop
fffff803`21ee417d 90              nop
fffff803`21ee417e 90              nop
fffff803`21ee417f 90              nop
fffff803`21ee4180 90              nop
fffff803`21ee4181 90              nop
fffff803`21ee4182 90              nop
fffff803`21ee4183 90              nop
fffff803`21ee4184 33d2            xor     edx,edx
fffff803`21ee4186 e9d5efffff      jmp     nt!ExFreePoolWithTag (fffff803`21ee3160)

nt!ExFreePool+0x4a0:
fffff803`21ee45f0 e83ffcdcff      call    nt!MmIsSpecialPoolAddress (fffff803`21cb4234)
fffff803`21ee45f5 83f801          cmp     eax,1
fffff803`21ee45f8 0f858cebffff    jne     nt!ExFreePoolWithTag+0x2a (fffff803`21ee318a)

nt!ExFreePool+0x4ae:
fffff803`21ee45fe f0ff0dfffa0100  lock dec dword ptr [nt!ExpSpecialAllocations (fffff803`21f04104)]
fffff803`21ee4605 418bc7          mov     eax,r15d
fffff803`21ee4608 bb00100000      mov     ebx,1000h
fffff803`21ee460d 25ff0f0000      and     eax,0FFFh
fffff803`21ee4612 2bd8            sub     ebx,eax
fffff803`21ee4614 8b05865a0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]
fffff803`21ee461a a917040000      test    eax,417h
fffff803`21ee461f 0f84a4000000    je      nt!ExFreePool+0x595 (fffff803`21ee46c9)

nt!ExFreePool+0x4d5:
fffff803`21ee4625 0fbae00a        bt      eax,0Ah
fffff803`21ee4629 7350            jae     nt!ExFreePool+0x537 (fffff803`21ee467b)

nt!ExFreePool+0x4df:
fffff803`21ee462b 48833d1d51020000 cmp     qword ptr [nt!ViVerifierDriverAddedThunkListHead (fffff803`21f09750)],0
fffff803`21ee4633 740e            je      nt!ExFreePool+0x4ff (fffff803`21ee4643)

nt!ExFreePool+0x4ed:
fffff803`21ee4635 8bd3            mov     edx,ebx
fffff803`21ee4637 498bcf          mov     rcx,r15
fffff803`21ee463a e811323e00      call    nt!VfCheckForLookaside (fffff803`222c7850)
fffff803`21ee463f 85c0            test    eax,eax
fffff803`21ee4641 7532            jne     nt!ExFreePool+0x531 (fffff803`21ee4675)

nt!ExFreePool+0x4ff:
fffff803`21ee4643 4c8d0d76f40100  lea     r9,[nt!ExNPagedLookasideLock (fffff803`21f03ac0)]
fffff803`21ee464a 4c8d054ff40100  lea     r8,[nt!ExNPagedLookasideListHead (fffff803`21f03aa0)]
fffff803`21ee4651 488bd3          mov     rdx,rbx
fffff803`21ee4654 498bcf          mov     rcx,r15
fffff803`21ee4657 e8f41ef5ff      call    nt!ExpCheckForLookasideList (fffff803`21e36550)
fffff803`21ee465c 4c8d0d7df40100  lea     r9,[nt!ExPagedLookasideLock (fffff803`21f03ae0)]
fffff803`21ee4663 4c8d0546f40100  lea     r8,[nt!ExPagedLookasideListHead (fffff803`21f03ab0)]
fffff803`21ee466a 488bd3          mov     rdx,rbx
fffff803`21ee466d 498bcf          mov     rcx,r15
fffff803`21ee4670 e8db1ef5ff      call    nt!ExpCheckForLookasideList (fffff803`21e36550)

nt!ExFreePool+0x531:
fffff803`21ee4675 8b05255a0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x537:
fffff803`21ee467b a801            test    al,1
fffff803`21ee467d 7411            je      nt!ExFreePool+0x550 (fffff803`21ee4690)

nt!ExFreePool+0x53f:
fffff803`21ee467f 488bd3          mov     rdx,rbx
fffff803`21ee4682 498bcf          mov     rcx,r15
fffff803`21ee4685 e84e77f0ff      call    nt!KeCheckForTimer (fffff803`21debdd8)
fffff803`21ee468a 8b05105a0e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x550:
fffff803`21ee4690 a804            test    al,4
fffff803`21ee4692 7411            je      nt!ExFreePool+0x569 (fffff803`21ee46a5)

nt!ExFreePool+0x558:
fffff803`21ee4694 488bd3          mov     rdx,rbx
fffff803`21ee4697 498bcf          mov     rcx,r15
fffff803`21ee469a e8e116f5ff      call    nt!ExpCheckForResource (fffff803`21e35d80)
fffff803`21ee469f 8b05fb590e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x569:
fffff803`21ee46a5 a802            test    al,2
fffff803`21ee46a7 7411            je      nt!ExFreePool+0x582 (fffff803`21ee46ba)

nt!ExFreePool+0x571:
fffff803`21ee46a9 488bd3          mov     rdx,rbx
fffff803`21ee46ac 498bcf          mov     rcx,r15
fffff803`21ee46af e8ac24f5ff      call    nt!ExpCheckForWorker (fffff803`21e36b60)
fffff803`21ee46b4 8b05e6590e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x582:
fffff803`21ee46ba a810            test    al,10h
fffff803`21ee46bc 740b            je      nt!ExFreePool+0x595 (fffff803`21ee46c9)

nt!ExFreePool+0x58a:
fffff803`21ee46be 488bd3          mov     rdx,rbx
fffff803`21ee46c1 498bcf          mov     rcx,r15
fffff803`21ee46c4 e8ebe23d00      call    nt!VfFreePoolNotification (fffff803`222c29b4)

nt!ExFreePool+0x595:
fffff803`21ee46c9 4d8bc7          mov     r8,r15
fffff803`21ee46cc 4981e000f0ffff  and     r8,0FFFFFFFFFFFFF000h
fffff803`21ee46d3 49f7c7ff0f0000  test    r15,0FFFh
fffff803`21ee46da 7507            jne     nt!ExFreePool+0x5b3 (fffff803`21ee46e3)

nt!ExFreePool+0x5ac:
fffff803`21ee46dc 4981c0f00f0000  add     r8,0FF0h

nt!ExFreePool+0x5b3:
fffff803`21ee46e3 498bcf          mov     rcx,r15
fffff803`21ee46e6 e8a9a1f1ff      call    nt!MmQuerySpecialPoolBlockType (fffff803`21dfe894)
fffff803`21ee46eb 498bcf          mov     rcx,r15
fffff803`21ee46ee 8bf0            mov     esi,eax
fffff803`21ee46f0 e82ba2f1ff      call    nt!MmQuerySpecialPoolBlockSize (fffff803`21dfe920)
fffff803`21ee46f5 418b7804        mov     edi,dword ptr [r8+4]
fffff803`21ee46f9 0fbaf71f        btr     edi,1Fh
fffff803`21ee46fd 488bd8          mov     rbx,rax
fffff803`21ee4700 3b3d465b0e00    cmp     edi,dword ptr [nt!PoolHitTag (fffff803`21fca24c)]
fffff803`21ee4706 7501            jne     nt!ExFreePool+0x5dd (fffff803`21ee4709)

nt!ExFreePool+0x5dc:
fffff803`21ee4708 cc              int     3

nt!ExFreePool+0x5dd:
fffff803`21ee4709 8b0d75590e00    mov     ecx,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)]
fffff803`21ee470f f6c141          test    cl,41h
fffff803`21ee4712 7417            je      nt!ExFreePool+0x603 (fffff803`21ee472b)

nt!ExFreePool+0x5ec:
fffff803`21ee4714 b9220e0000      mov     ecx,0E22h
fffff803`21ee4719 4d8bcf          mov     r9,r15
fffff803`21ee471c 448bc7          mov     r8d,edi
fffff803`21ee471f 8bd6            mov     edx,esi
fffff803`21ee4721 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21ee4726 e82dccf4ff      call    nt!EtwTracePool (fffff803`21e31358)

nt!ExFreePool+0x603:
fffff803`21ee472b 448bc6          mov     r8d,esi
fffff803`21ee472e 4183e020        and     r8d,20h
fffff803`21ee4732 7522            jne     nt!ExFreePool+0x635 (fffff803`21ee4756)

nt!ExFreePool+0x610:
fffff803`21ee4734 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`21ee473c 4c8b15e50d0200  mov     r10,qword ptr [nt!PoolTrackTableMask (fffff803`21f05528)]
fffff803`21ee4743 8bc8            mov     ecx,eax
fffff803`21ee4745 488d05b4d8d8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee474c 4c8b9cc820212900 mov     r11,qword ptr [rax+rcx*8+292120h]
fffff803`21ee4754 eb0e            jmp     nt!ExFreePool+0x643 (fffff803`21ee4764)

nt!ExFreePool+0x635:
fffff803`21ee4756 4c8b1d93f90100  mov     r11,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`21f040f0)]
fffff803`21ee475d 4c8b1584f90100  mov     r10,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`21f040e8)]

nt!ExFreePool+0x643:
fffff803`21ee4764 8bc7            mov     eax,edi
fffff803`21ee4766 4869c05f9e0000  imul    rax,rax,9E5Fh
fffff803`21ee476d 488bd0          mov     rdx,rax
fffff803`21ee4770 48c1ea20        shr     rdx,20h
fffff803`21ee4774 33d0            xor     edx,eax
fffff803`21ee4776 4123d2          and     edx,r10d
fffff803`21ee4779 448bf2          mov     r14d,edx
fffff803`21ee477c 488d0c92        lea     rcx,[rdx+rdx*4]
fffff803`21ee4780 4c8d0ccd00000000 lea     r9,[rcx*8]
fffff803`21ee4788 438b040b        mov     eax,dword ptr [r11+r9]
fffff803`21ee478c 4b8d0c0b        lea     rcx,[r11+r9]
fffff803`21ee4790 3bc7            cmp     eax,edi
fffff803`21ee4792 7436            je      nt!ExFreePool+0x6b9 (fffff803`21ee47ca)

nt!ExFreePool+0x677:
fffff803`21ee4794 85c0            test    eax,eax
fffff803`21ee4796 7553            jne     nt!ExFreePool+0x6de (fffff803`21ee47eb)

nt!ExFreePool+0x67f:
fffff803`21ee4798 4585c0          test    r8d,r8d
fffff803`21ee479b 754e            jne     nt!ExFreePool+0x6de (fffff803`21ee47eb)

nt!ExFreePool+0x688:
fffff803`21ee479d 488b053cf90100  mov     rax,qword ptr [nt!PoolTrackTable (fffff803`21f040e0)]
fffff803`21ee47a4 468b0c08        mov     r9d,dword ptr [rax+r9]
fffff803`21ee47a8 4585c9          test    r9d,r9d
fffff803`21ee47ab 743e            je      nt!ExFreePool+0x6de (fffff803`21ee47eb)

nt!ExFreePool+0x69c:
fffff803`21ee47ad 448909          mov     dword ptr [rcx],r9d

nt!ExFreePool+0x69f:
fffff803`21ee47b0 8bc2            mov     eax,edx
fffff803`21ee47b2 488d0c80        lea     rcx,[rax+rax*4]
fffff803`21ee47b6 4c8d0ccd00000000 lea     r9,[rcx*8]
fffff803`21ee47be 438b040b        mov     eax,dword ptr [r11+r9]
fffff803`21ee47c2 4b8d0c0b        lea     rcx,[r11+r9]
fffff803`21ee47c6 3bc7            cmp     eax,edi
fffff803`21ee47c8 75ca            jne     nt!ExFreePool+0x677 (fffff803`21ee4794)

nt!ExFreePool+0x6b9:
fffff803`21ee47ca 48f7db          neg     rbx
fffff803`21ee47cd 40f6c601        test    sil,1
fffff803`21ee47d1 7540            jne     nt!ExFreePool+0x706 (fffff803`21ee4813)

nt!ExFreePool+0x6c6:
fffff803`21ee47d3 f0ff4108        lock inc dword ptr [rcx+8]
fffff803`21ee47d7 f0480fc15910    lock xadd qword ptr [rcx+10h],rbx
fffff803`21ee47dd 498bcf          mov     rcx,r15
fffff803`21ee47e0 e867a1f1ff      call    nt!MmFreeSpecialPool (fffff803`21dfe94c)
fffff803`21ee47e5 90              nop
fffff803`21ee47e6 e92eecffff      jmp     nt!ExFreePoolWithTag+0x2b9 (fffff803`21ee3419)

nt!ExFreePool+0x6de:
fffff803`21ee47eb 8d4201          lea     eax,[rdx+1]
fffff803`21ee47ee 4123c2          and     eax,r10d
fffff803`21ee47f1 8bd0            mov     edx,eax
fffff803`21ee47f3 413bc6          cmp     eax,r14d
fffff803`21ee47f6 75b8            jne     nt!ExFreePool+0x69f (fffff803`21ee47b0)

nt!ExFreePool+0x6eb:
fffff803`21ee47f8 448bc6          mov     r8d,esi
fffff803`21ee47fb 488bd3          mov     rdx,rbx
fffff803`21ee47fe 8bcf            mov     ecx,edi
fffff803`21ee4800 e87bcbe4ff      call    nt!ExpRemovePoolTrackerExpansion (fffff803`21d31380)
fffff803`21ee4805 498bcf          mov     rcx,r15
fffff803`21ee4808 e83fa1f1ff      call    nt!MmFreeSpecialPool (fffff803`21dfe94c)
fffff803`21ee480d 90              nop
fffff803`21ee480e e906ecffff      jmp     nt!ExFreePoolWithTag+0x2b9 (fffff803`21ee3419)

nt!ExFreePool+0x706:
fffff803`21ee4813 f0ff411c        lock inc dword ptr [rcx+1Ch]
fffff803`21ee4817 f0480fc15920    lock xadd qword ptr [rcx+20h],rbx
fffff803`21ee481d 498bcf          mov     rcx,r15
fffff803`21ee4820 e827a1f1ff      call    nt!MmFreeSpecialPool (fffff803`21dfe94c)
fffff803`21ee4825 90              nop
fffff803`21ee4826 e9eeebffff      jmp     nt!ExFreePoolWithTag+0x2b9 (fffff803`21ee3419)

nt!ExFreePool+0x71e:
fffff803`21ee482c 498bc7          mov     rax,r15
fffff803`21ee482f 48c1e812        shr     rax,12h
fffff803`21ee4833 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`21ee4838 4a8b0c00        mov     rcx,qword ptr [rax+r8]
fffff803`21ee483c 48b8ffffffff0f000000 mov rax,0FFFFFFFFFh
fffff803`21ee4846 48c1e90c        shr     rcx,0Ch
fffff803`21ee484a 4823c8          and     rcx,rax
fffff803`21ee484d 488d0449        lea     rax,[rcx+rcx*2]
fffff803`21ee4851 48b91e00000080faffff mov rcx,0FFFFFA800000001Eh
fffff803`21ee485b 4803c0          add     rax,rax
fffff803`21ee485e 0fb604c1        movzx   eax,byte ptr [rcx+rax*8]
fffff803`21ee4862 24f0            and     al,0F0h
fffff803`21ee4864 3c70            cmp     al,70h
fffff803`21ee4866 0f85a2efffff    jne     nt!ExFreePoolWithTag+0x6ae (fffff803`21ee380e)

nt!ExFreePool+0x75e:
fffff803`21ee486c e906f5ffff      jmp     nt!ExFreePoolWithTag+0xc17 (fffff803`21ee3d77)

nt!ExFreePool+0x763:
fffff803`21ee4871 4533c9          xor     r9d,r9d
fffff803`21ee4874 448bc0          mov     r8d,eax
fffff803`21ee4877 488bd3          mov     rdx,rbx
fffff803`21ee487a 498bcf          mov     rcx,r15
fffff803`21ee487d e85638f2ff      call    nt!VerifierFreeTrackedPool (fffff803`21e080d8)
fffff803`21ee4882 90              nop
fffff803`21ee4883 e937f0ffff      jmp     nt!ExFreePoolWithTag+0x75f (fffff803`21ee38bf)

nt!ExFreePool+0x77a:
fffff803`21ee4888 ba21000000      mov     edx,21h
fffff803`21ee488d 4c8bcb          mov     r9,rbx
fffff803`21ee4890 4d8bc7          mov     r8,r15
fffff803`21ee4893 8d4af8          lea     ecx,[rdx-8]
fffff803`21ee4896 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21ee489b e8a07bdeff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee48a0 cc              int     3

nt!ExFreePool+0x793:
fffff803`21ee48a1 ba24000000      mov     edx,24h
fffff803`21ee48a6 458bcc          mov     r9d,r12d
fffff803`21ee48a9 4d8bc3          mov     r8,r11
fffff803`21ee48ac 8d4af5          lea     ecx,[rdx-0Bh]
fffff803`21ee48af 4c89542420      mov     qword ptr [rsp+20h],r10
fffff803`21ee48b4 e8877bdeff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee48b9 cc              int     3

nt!ExFreePool+0x7ac:
fffff803`21ee48ba 0fbaf71f        btr     edi,1Fh
fffff803`21ee48be 897d7f          mov     dword ptr [rbp+7Fh],edi
fffff803`21ee48c1 e94ff0ffff      jmp     nt!ExFreePoolWithTag+0x7b5 (fffff803`21ee3915)

nt!ExFreePool+0x7b8:
fffff803`21ee48c6 b9220e0000      mov     ecx,0E22h
fffff803`21ee48cb 4d8bcf          mov     r9,r15
fffff803`21ee48ce 448bc7          mov     r8d,edi
fffff803`21ee48d1 8bd6            mov     edx,esi
fffff803`21ee48d3 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`21ee48d8 e87bcaf4ff      call    nt!EtwTracePool (fffff803`21e31358)
fffff803`21ee48dd 90              nop
fffff803`21ee48de e950f0ffff      jmp     nt!ExFreePoolWithTag+0x7d3 (fffff803`21ee3933)

nt!ExFreePool+0x7d5:
fffff803`21ee48e3 0fbae00a        bt      eax,0Ah
fffff803`21ee48e7 7357            jae     nt!ExFreePool+0x842 (fffff803`21ee4940)

nt!ExFreePool+0x7df:
fffff803`21ee48e9 837d7700        cmp     dword ptr [rbp+77h],0
fffff803`21ee48ed 7551            jne     nt!ExFreePool+0x842 (fffff803`21ee4940)

nt!ExFreePool+0x7e9:
fffff803`21ee48ef 48833d594e020000 cmp     qword ptr [nt!ViVerifierDriverAddedThunkListHead (fffff803`21f09750)],0
fffff803`21ee48f7 740f            je      nt!ExFreePool+0x80a (fffff803`21ee4908)

nt!ExFreePool+0x7f7:
fffff803`21ee48f9 488bd3          mov     rdx,rbx
fffff803`21ee48fc 498bcf          mov     rcx,r15
fffff803`21ee48ff e84c2f3e00      call    nt!VfCheckForLookaside (fffff803`222c7850)
fffff803`21ee4904 85c0            test    eax,eax
fffff803`21ee4906 7532            jne     nt!ExFreePool+0x83c (fffff803`21ee493a)

nt!ExFreePool+0x80a:
fffff803`21ee4908 4c8d0db1f10100  lea     r9,[nt!ExNPagedLookasideLock (fffff803`21f03ac0)]
fffff803`21ee490f 4c8d058af10100  lea     r8,[nt!ExNPagedLookasideListHead (fffff803`21f03aa0)]
fffff803`21ee4916 488bd3          mov     rdx,rbx
fffff803`21ee4919 498bcf          mov     rcx,r15
fffff803`21ee491c e82f1cf5ff      call    nt!ExpCheckForLookasideList (fffff803`21e36550)
fffff803`21ee4921 4c8d0db8f10100  lea     r9,[nt!ExPagedLookasideLock (fffff803`21f03ae0)]
fffff803`21ee4928 4c8d0581f10100  lea     r8,[nt!ExPagedLookasideListHead (fffff803`21f03ab0)]
fffff803`21ee492f 488bd3          mov     rdx,rbx
fffff803`21ee4932 498bcf          mov     rcx,r15
fffff803`21ee4935 e8161cf5ff      call    nt!ExpCheckForLookasideList (fffff803`21e36550)

nt!ExFreePool+0x83c:
fffff803`21ee493a 8b0560570e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x842:
fffff803`21ee4940 a801            test    al,1
fffff803`21ee4942 7411            je      nt!ExFreePool+0x85b (fffff803`21ee4955)

nt!ExFreePool+0x84a:
fffff803`21ee4944 488bd3          mov     rdx,rbx
fffff803`21ee4947 498bcf          mov     rcx,r15
fffff803`21ee494a e88974f0ff      call    nt!KeCheckForTimer (fffff803`21debdd8)
fffff803`21ee494f 8b054b570e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x85b:
fffff803`21ee4955 a804            test    al,4
fffff803`21ee4957 7411            je      nt!ExFreePool+0x874 (fffff803`21ee496a)

nt!ExFreePool+0x863:
fffff803`21ee4959 488bd3          mov     rdx,rbx
fffff803`21ee495c 498bcf          mov     rcx,r15
fffff803`21ee495f e81c14f5ff      call    nt!ExpCheckForResource (fffff803`21e35d80)
fffff803`21ee4964 8b0536570e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x874:
fffff803`21ee496a a802            test    al,2
fffff803`21ee496c 7411            je      nt!ExFreePool+0x88d (fffff803`21ee497f)

nt!ExFreePool+0x87c:
fffff803`21ee496e 488bd3          mov     rdx,rbx
fffff803`21ee4971 498bcf          mov     rcx,r15
fffff803`21ee4974 e8e721f5ff      call    nt!ExpCheckForWorker (fffff803`21e36b60)
fffff803`21ee4979 8b0521570e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x88d:
fffff803`21ee497f a810            test    al,10h
fffff803`21ee4981 0f846cf0ffff    je      nt!ExFreePoolWithTag+0x893 (fffff803`21ee39f3)

nt!ExFreePool+0x895:
fffff803`21ee4987 488bd3          mov     rdx,rbx
fffff803`21ee498a 498bcf          mov     rcx,r15
fffff803`21ee498d e822e03d00      call    nt!VfFreePoolNotification (fffff803`222c29b4)
fffff803`21ee4992 90              nop
fffff803`21ee4993 e95bf0ffff      jmp     nt!ExFreePoolWithTag+0x893 (fffff803`21ee39f3)

nt!ExFreePool+0x8a6:
fffff803`21ee4998 b9220e0000      mov     ecx,0E22h
fffff803`21ee499d 4d8bcd          mov     r9,r13
fffff803`21ee49a0 41b846726167    mov     r8d,67617246h
fffff803`21ee49a6 8bd6            mov     edx,esi
fffff803`21ee49a8 48c744242020000000 mov   qword ptr [rsp+20h],20h
fffff803`21ee49b1 e8a2c9f4ff      call    nt!EtwTracePool (fffff803`21e31358)
fffff803`21ee49b6 90              nop
fffff803`21ee49b7 e975f0ffff      jmp     nt!ExFreePoolWithTag+0x8d1 (fffff803`21ee3a31)

nt!ExFreePool+0x8ca:
fffff803`21ee49bc 85c0            test    eax,eax
fffff803`21ee49be 7538            jne     nt!ExFreePool+0x912 (fffff803`21ee49f8)

nt!ExFreePool+0x8d2:
fffff803`21ee49c0 4585e4          test    r12d,r12d
fffff803`21ee49c3 7533            jne     nt!ExFreePool+0x912 (fffff803`21ee49f8)

nt!ExFreePool+0x8db:
fffff803`21ee49c5 488b0514f70100  mov     rax,qword ptr [nt!PoolTrackTable (fffff803`21f040e0)]
fffff803`21ee49cc 458b1402        mov     r10d,dword ptr [r10+rax]
fffff803`21ee49d0 4585d2          test    r10d,r10d
fffff803`21ee49d3 7423            je      nt!ExFreePool+0x912 (fffff803`21ee49f8)

nt!ExFreePool+0x8ef:
fffff803`21ee49d5 448911          mov     dword ptr [rcx],r10d

nt!ExFreePool+0x8f2:
fffff803`21ee49d8 488d0c92        lea     rcx,[rdx+rdx*4]
fffff803`21ee49dc 4c8d14cd00000000 lea     r10,[rcx*8]
fffff803`21ee49e4 438b0411        mov     eax,dword ptr [r9+r10]
fffff803`21ee49e8 4b8d0c0a        lea     rcx,[r10+r9]
fffff803`21ee49ec 3d46726167      cmp     eax,67617246h
fffff803`21ee49f1 75c9            jne     nt!ExFreePool+0x8ca (fffff803`21ee49bc)

nt!ExFreePool+0x90d:
fffff803`21ee49f3 e98df0ffff      jmp     nt!ExFreePoolWithTag+0x925 (fffff803`21ee3a85)

nt!ExFreePool+0x912:
fffff803`21ee49f8 ffc2            inc     edx
fffff803`21ee49fa 4123d0          and     edx,r8d
fffff803`21ee49fd 413bd3          cmp     edx,r11d
fffff803`21ee4a00 75d6            jne     nt!ExFreePool+0x8f2 (fffff803`21ee49d8)

nt!ExFreePool+0x91c:
fffff803`21ee4a02 448bc6          mov     r8d,esi
fffff803`21ee4a05 ba20000000      mov     edx,20h
fffff803`21ee4a0a b946726167      mov     ecx,67617246h
fffff803`21ee4a0f e86cc9e4ff      call    nt!ExpRemovePoolTrackerExpansion (fffff803`21d31380)
fffff803`21ee4a14 90              nop
fffff803`21ee4a15 e97ff0ffff      jmp     nt!ExFreePoolWithTag+0x939 (fffff803`21ee3a99)

nt!ExFreePool+0x934:
fffff803`21ee4a1a 488d4dd7        lea     rcx,[rbp-29h]
fffff803`21ee4a1e 488bd6          mov     rdx,rsi
fffff803`21ee4a21 e8ca8cf0ff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`21ded6f0)
fffff803`21ee4a26 90              nop
fffff803`21ee4a27 e9f5f3ffff      jmp     nt!ExFreePoolWithTag+0xcc1 (fffff803`21ee3e21)

nt!ExFreePool+0x946:
fffff803`21ee4a2c b903000000      mov     ecx,3
fffff803`21ee4a31 cd29            int     29h

nt!ExFreePool+0x94d:
fffff803`21ee4a33 b903000000      mov     ecx,3
fffff803`21ee4a38 cd29            int     29h

nt!ExFreePool+0x954:
fffff803`21ee4a3a 488b555f        mov     rdx,qword ptr [rbp+5Fh]
fffff803`21ee4a3e 488d4dd7        lea     rcx,[rbp-29h]
fffff803`21ee4a42 e8898bf0ff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`21ded5d0)
fffff803`21ee4a47 90              nop
fffff803`21ee4a48 e943f1ffff      jmp     nt!ExFreePoolWithTag+0xa30 (fffff803`21ee3b90)

nt!ExFreePool+0x967:
fffff803`21ee4a4d 4c8bc8          mov     r9,rax
fffff803`21ee4a50 ba07000000      mov     edx,7
fffff803`21ee4a55 b9c2000000      mov     ecx,0C2h
fffff803`21ee4a5a 41b8c1110000    mov     r8d,11C1h
fffff803`21ee4a60 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`21ee4a65 e8d679deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4a6a cc              int     3

nt!ExFreePool+0x985:
fffff803`21ee4a6b 0fbae00a        bt      eax,0Ah
fffff803`21ee4a6f 7356            jae     nt!ExFreePool+0x9f1 (fffff803`21ee4ac7)

nt!ExFreePool+0x98f:
fffff803`21ee4a71 4585ed          test    r13d,r13d
fffff803`21ee4a74 7551            jne     nt!ExFreePool+0x9f1 (fffff803`21ee4ac7)

nt!ExFreePool+0x998:
fffff803`21ee4a76 48833dd24c020000 cmp     qword ptr [nt!ViVerifierDriverAddedThunkListHead (fffff803`21f09750)],0
fffff803`21ee4a7e 740f            je      nt!ExFreePool+0x9b9 (fffff803`21ee4a8f)

nt!ExFreePool+0x9a6:
fffff803`21ee4a80 488bd7          mov     rdx,rdi
fffff803`21ee4a83 488bcb          mov     rcx,rbx
fffff803`21ee4a86 e8c52d3e00      call    nt!VfCheckForLookaside (fffff803`222c7850)
fffff803`21ee4a8b 85c0            test    eax,eax
fffff803`21ee4a8d 7532            jne     nt!ExFreePool+0x9eb (fffff803`21ee4ac1)

nt!ExFreePool+0x9b9:
fffff803`21ee4a8f 4c8d0d2af00100  lea     r9,[nt!ExNPagedLookasideLock (fffff803`21f03ac0)]
fffff803`21ee4a96 4c8d0503f00100  lea     r8,[nt!ExNPagedLookasideListHead (fffff803`21f03aa0)]
fffff803`21ee4a9d 488bd7          mov     rdx,rdi
fffff803`21ee4aa0 488bcb          mov     rcx,rbx
fffff803`21ee4aa3 e8a81af5ff      call    nt!ExpCheckForLookasideList (fffff803`21e36550)
fffff803`21ee4aa8 4c8d0d31f00100  lea     r9,[nt!ExPagedLookasideLock (fffff803`21f03ae0)]
fffff803`21ee4aaf 4c8d05faef0100  lea     r8,[nt!ExPagedLookasideListHead (fffff803`21f03ab0)]
fffff803`21ee4ab6 488bd7          mov     rdx,rdi
fffff803`21ee4ab9 488bcb          mov     rcx,rbx
fffff803`21ee4abc e88f1af5ff      call    nt!ExpCheckForLookasideList (fffff803`21e36550)

nt!ExFreePool+0x9eb:
fffff803`21ee4ac1 8b05d9550e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0x9f1:
fffff803`21ee4ac7 4184c4          test    r12b,al
fffff803`21ee4aca 7411            je      nt!ExFreePool+0xa0b (fffff803`21ee4add)

nt!ExFreePool+0x9fa:
fffff803`21ee4acc 488bd7          mov     rdx,rdi
fffff803`21ee4acf 488bcb          mov     rcx,rbx
fffff803`21ee4ad2 e80173f0ff      call    nt!KeCheckForTimer (fffff803`21debdd8)
fffff803`21ee4ad7 8b05c3550e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0xa0b:
fffff803`21ee4add a804            test    al,4
fffff803`21ee4adf 7411            je      nt!ExFreePool+0xa24 (fffff803`21ee4af2)

nt!ExFreePool+0xa13:
fffff803`21ee4ae1 488bd7          mov     rdx,rdi
fffff803`21ee4ae4 488bcb          mov     rcx,rbx
fffff803`21ee4ae7 e89412f5ff      call    nt!ExpCheckForResource (fffff803`21e35d80)
fffff803`21ee4aec 8b05ae550e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0xa24:
fffff803`21ee4af2 a802            test    al,2
fffff803`21ee4af4 7411            je      nt!ExFreePool+0xa3d (fffff803`21ee4b07)

nt!ExFreePool+0xa2c:
fffff803`21ee4af6 488bd7          mov     rdx,rdi
fffff803`21ee4af9 488bcb          mov     rcx,rbx
fffff803`21ee4afc e85f20f5ff      call    nt!ExpCheckForWorker (fffff803`21e36b60)
fffff803`21ee4b01 8b0599550e00    mov     eax,dword ptr [nt!ExpPoolFlags (fffff803`21fca0a0)]

nt!ExFreePool+0xa3d:
fffff803`21ee4b07 a810            test    al,10h
fffff803`21ee4b09 0f84dbe6ffff    je      nt!ExFreePoolWithTag+0x8a (fffff803`21ee31ea)

nt!ExFreePool+0xa45:
fffff803`21ee4b0f 488bd7          mov     rdx,rdi
fffff803`21ee4b12 488bcb          mov     rcx,rbx
fffff803`21ee4b15 e89ade3d00      call    nt!VfFreePoolNotification (fffff803`222c29b4)
fffff803`21ee4b1a 90              nop
fffff803`21ee4b1b e9cae6ffff      jmp     nt!ExFreePoolWithTag+0x8a (fffff803`21ee31ea)

nt!ExFreePool+0xa56:
fffff803`21ee4b20 4533c9          xor     r9d,r9d
fffff803`21ee4b23 458bc5          mov     r8d,r13d
fffff803`21ee4b26 488bd7          mov     rdx,rdi
fffff803`21ee4b29 498bcf          mov     rcx,r15
fffff803`21ee4b2c 48897db7        mov     qword ptr [rbp-49h],rdi
fffff803`21ee4b30 e8a335f2ff      call    nt!VerifierFreeTrackedPool (fffff803`21e080d8)
fffff803`21ee4b35 90              nop
fffff803`21ee4b36 e9b9e6ffff      jmp     nt!ExFreePoolWithTag+0x94 (fffff803`21ee31f4)

nt!ExFreePool+0xa71:
fffff803`21ee4b3b ba0b000000      mov     edx,0Bh
fffff803`21ee4b40 b9c2000000      mov     ecx,0C2h
fffff803`21ee4b45 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`21ee4b4a e8f178deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4b4f cc              int     3

nt!ExFreePool+0xa86:
fffff803`21ee4b50 ba11000000      mov     edx,11h
fffff803`21ee4b55 b9c2000000      mov     ecx,0C2h
fffff803`21ee4b5a 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21ee4b5f e8dc78deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4b64 cc              int     3

nt!ExFreePool+0xa9b:
fffff803`21ee4b65 8bc1            mov     eax,ecx
fffff803`21ee4b67 ba10000000      mov     edx,10h
fffff803`21ee4b6c b9c2000000      mov     ecx,0C2h
fffff803`21ee4b71 4903c0          add     rax,r8
fffff803`21ee4b74 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21ee4b79 e8c278deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4b7e cc              int     3

nt!ExFreePool+0xab5:
fffff803`21ee4b7f 0fbaf71f        btr     edi,1Fh
fffff803`21ee4b83 897d7f          mov     dword ptr [rbp+7Fh],edi
fffff803`21ee4b86 e997e6ffff      jmp     nt!ExFreePoolWithTag+0xc2 (fffff803`21ee3222)

nt!ExFreePool+0xac1:
fffff803`21ee4b8b 8b03            mov     eax,dword ptr [rbx]
fffff803`21ee4b8d 4c8bca          mov     r9,rdx
fffff803`21ee4b90 ba20000000      mov     edx,20h
fffff803`21ee4b95 8d4af9          lea     ecx,[rdx-7]
fffff803`21ee4b98 4c8bc3          mov     r8,rbx
fffff803`21ee4b9b 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21ee4ba0 e89b78deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4ba5 cc              int     3

nt!ExFreePool+0xadc:
fffff803`21ee4ba6 4c8bc2          mov     r8,rdx
fffff803`21ee4ba9 ba25000000      mov     edx,25h
fffff803`21ee4bae 458bcc          mov     r9d,r12d
fffff803`21ee4bb1 8d4af4          lea     ecx,[rdx-0Ch]
fffff803`21ee4bb4 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`21ee4bb9 e88278deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4bbe cc              int     3

nt!ExFreePool+0xaf5:
fffff803`21ee4bbf 4889542420      mov     qword ptr [rsp+20h],rdx
fffff803`21ee4bc4 b9220e0000      mov     ecx,0E22h
fffff803`21ee4bc9 448bc7          mov     r8d,edi
fffff803`21ee4bcc 8bd6            mov     edx,esi
fffff803`21ee4bce e885c7f4ff      call    nt!EtwTracePool (fffff803`21e31358)
fffff803`21ee4bd3 4c8d0526d4d8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee4bda e911e7ffff      jmp     nt!ExFreePoolWithTag+0x190 (fffff803`21ee32f0)

nt!ExFreePool+0xb15:
fffff803`21ee4bdf 4d8bc8          mov     r9,r8
fffff803`21ee4be2 33d2            xor     edx,edx
fffff803`21ee4be4 e935eaffff      jmp     nt!ExFreePoolWithTag+0x4be (fffff803`21ee361e)

nt!ExFreePool+0xb1f:
fffff803`21ee4be9 488d15d0850100  lea     rdx,[nt!PspSystemQuotaBlock (fffff803`21efd1c0)]
fffff803`21ee4bf0 483955ef        cmp     qword ptr [rbp-11h],rdx
fffff803`21ee4bf4 7417            je      nt!ExFreePool+0xb47 (fffff803`21ee4c0d)

nt!ExFreePool+0xb30:
fffff803`21ee4bf6 4c8b550f        mov     r10,qword ptr [rbp+0Fh]
fffff803`21ee4bfa 488955ef        mov     qword ptr [rbp-11h],rdx
fffff803`21ee4bfe 4c03d2          add     r10,rdx
fffff803`21ee4c01 410f0d0a        prefetchw [r10]
fffff803`21ee4c05 4d8b02          mov     r8,qword ptr [r10]
fffff803`21ee4c08 e9ffe9ffff      jmp     nt!ExFreePoolWithTag+0x4ac (fffff803`21ee360c)

nt!ExFreePool+0xb47:
fffff803`21ee4c0d 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`21ee4c12 4c8bce          mov     r9,rsi
fffff803`21ee4c15 4d8bc3          mov     r8,r11
fffff803`21ee4c18 b921000000      mov     ecx,21h
fffff803`21ee4c1d 488bd7          mov     rdx,rdi
fffff803`21ee4c20 e81b78deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4c25 cc              int     3

nt!ExFreePool+0xb60:
fffff803`21ee4c26 33d2            xor     edx,edx
fffff803`21ee4c28 488d4fd0        lea     rcx,[rdi-30h]
fffff803`21ee4c2c 448d4201        lea     r8d,[rdx+1]
fffff803`21ee4c30 e8fb35f2ff      call    nt!ObpPushStackInfo (fffff803`21e08230)
fffff803`21ee4c35 90              nop
fffff803`21ee4c36 e91deaffff      jmp     nt!ExFreePoolWithTag+0x4f8 (fffff803`21ee3658)

nt!ExFreePool+0xb75:
fffff803`21ee4c3b 0fb657e8        movzx   edx,byte ptr [rdi-18h]
fffff803`21ee4c3f 488d05bad3d8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21ee4c46 41b903000000    mov     r9d,3
fffff803`21ee4c4c 488b94d000be2900 mov     rdx,qword ptr [rax+rdx*8+29BE00h]
fffff803`21ee4c54 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`21ee4c59 418d4915        lea     ecx,[r9+15h]
fffff803`21ee4c5d 4c8bc7          mov     r8,rdi
fffff803`21ee4c60 e8db77deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4c65 cc              int     3

nt!ExFreePool+0xba0:
fffff803`21ee4c66 33d2            xor     edx,edx
fffff803`21ee4c68 41b904000000    mov     r9d,4
fffff803`21ee4c6e 4c8bc7          mov     r8,rdi
fffff803`21ee4c71 8d4a18          lea     ecx,[rdx+18h]
fffff803`21ee4c74 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21ee4c79 e8c277deff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21ee4c7e cc              int     3

nt!ExFreePool+0xbb9:
fffff803`21ee4c7f 450f20c6        mov     r14,cr8
fffff803`21ee4c83 ba01000000      mov     edx,1
fffff803`21ee4c88 440f22c2        mov     cr8,rdx
fffff803`21ee4c8c f00fba3700      lock btr dword ptr [rdi],0
fffff803`21ee4c91 720f            jb      nt!ExFreePool+0xbe0 (fffff803`21ee4ca2)

nt!ExFreePool+0xbd1:
fffff803`21ee4c93 488bcf          mov     rcx,rdi
fffff803`21ee4c96 e885ede8ff      call    nt!ExpAcquireFastMutexContended (fffff803`21d73a20)
fffff803`21ee4c9b 4533c9          xor     r9d,r9d
fffff803`21ee4c9e 418d5101        lea     edx,[r9+1]

nt!ExFreePool+0xbe0:
fffff803`21ee4ca2 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21ee4cab 48894708        mov     qword ptr [rdi+8],rax
fffff803`21ee4caf 410fb6c6        movzx   eax,r14b
fffff803`21ee4cb3 894730          mov     dword ptr [rdi+30h],eax
fffff803`21ee4cb6 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21ee4cbf fe8037040000    inc     byte ptr [rax+437h]
fffff803`21ee4cc5 e9a5f3ffff      jmp     nt!ExFreePoolWithTag+0xf0f (fffff803`21ee406f)

nt!ExFreePool+0xc08:
fffff803`21ee4cca b903000000      mov     ecx,3
fffff803`21ee4ccf cd29            int     29h

nt!ExFreePool+0xc0f:
fffff803`21ee4cd1 80790201        cmp     byte ptr [rcx+2],1
fffff803`21ee4cd5 8bf2            mov     esi,edx
fffff803`21ee4cd7 7423            je      nt!ExFreePool+0xc46 (fffff803`21ee4cfc)

nt!ExFreePool+0xc1b:
fffff803`21ee4cd9 4c8b4110        mov     r8,qword ptr [rcx+10h]
fffff803`21ee4cdd 488b5118        mov     rdx,qword ptr [rcx+18h]
fffff803`21ee4ce1 488d4110        lea     rax,[rcx+10h]
fffff803`21ee4ce5 49394008        cmp     qword ptr [r8+8],rax
fffff803`21ee4ce9 7520            jne     nt!ExFreePool+0xc55 (fffff803`21ee4d0b)

nt!ExFreePool+0xc31:
fffff803`21ee4ceb 483902          cmp     qword ptr [rdx],rax
fffff803`21ee4cee 751b            jne     nt!ExFreePool+0xc55 (fffff803`21ee4d0b)

nt!ExFreePool+0xc3a:
fffff803`21ee4cf0 4c8902          mov     qword ptr [rdx],r8
fffff803`21ee4cf3 49895008        mov     qword ptr [r8+8],rdx
fffff803`21ee4cf7 ba01000000      mov     edx,1

nt!ExFreePool+0xc46:
fffff803`21ee4cfc 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff803`21ee4d00 488bd9          mov     rbx,rcx
fffff803`21ee4d03 004102          add     byte ptr [rcx+2],al
fffff803`21ee4d06 e9d1f3ffff      jmp     nt!ExFreePoolWithTag+0xf7c (fffff803`21ee40dc)

nt!ExFreePool+0xc55:
fffff803`21ee4d0b b903000000      mov     ecx,3
fffff803`21ee4d10 cd29            int     29h

nt!ExFreePool+0xc5c:
fffff803`21ee4d12 4585ed          test    r13d,r13d
fffff803`21ee4d15 750b            jne     nt!ExFreePool+0xc73 (fffff803`21ee4d22)

nt!ExFreePool+0xc65:
fffff803`21ee4d17 488d4dd7        lea     rcx,[rbp-29h]
fffff803`21ee4d1b e81004e2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`21d05130)
fffff803`21ee4d20 eb31            jmp     nt!ExFreePool+0xca8 (fffff803`21ee4d53)

nt!ExFreePool+0xc73:
fffff803`21ee4d22 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21ee4d2b fe8837040000    dec     byte ptr [rax+437h]
fffff803`21ee4d31 0fb67730        movzx   esi,byte ptr [rdi+30h]
fffff803`21ee4d35 4c894f08        mov     qword ptr [rdi+8],r9
fffff803`21ee4d39 33c0            xor     eax,eax
fffff803`21ee4d3b f00fb117        lock cmpxchg dword ptr [rdi],edx
fffff803`21ee4d3f 740a            je      nt!ExFreePool+0xca0 (fffff803`21ee4d4b)

nt!ExFreePool+0xc96:
fffff803`21ee4d41 8bd0            mov     edx,eax
fffff803`21ee4d43 488bcf          mov     rcx,rdi
fffff803`21ee4d46 e8e1e2e8ff      call    nt!ExpReleaseFastMutexContended (fffff803`21d7302c)

nt!ExFreePool+0xca0:
fffff803`21ee4d4b 400fb6c6        movzx   eax,sil
fffff803`21ee4d4f 440f22c0        mov     cr8,rax

nt!ExFreePool+0xca8:
fffff803`21ee4d53 f041ff8fc0000000 lock dec dword ptr [r15+0C0h]
fffff803`21ee4d5b 448b457f        mov     r8d,dword ptr [rbp+7Fh]
fffff803`21ee4d5f ba00100000      mov     edx,1000h
fffff803`21ee4d64 488bcb          mov     rcx,rbx
fffff803`21ee4d67 e854c6edff      call    nt!MiFreePoolPages (fffff803`21dc13c0)
fffff803`21ee4d6c 90              nop
fffff803`21ee4d6d e997e6ffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`21ee3409)

nt!ExFreePool+0xcc7:
fffff803`21ee4d72 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21ee4d7b fe8837040000    dec     byte ptr [rax+437h]
fffff803`21ee4d81 0fb65f30        movzx   ebx,byte ptr [rdi+30h]
fffff803`21ee4d85 4c894f08        mov     qword ptr [rdi+8],r9
fffff803`21ee4d89 33c0            xor     eax,eax
fffff803`21ee4d8b f00fb117        lock cmpxchg dword ptr [rdi],edx
fffff803`21ee4d8f 740a            je      nt!ExFreePool+0xcf4 (fffff803`21ee4d9b)

nt!ExFreePool+0xcea:
fffff803`21ee4d91 8bd0            mov     edx,eax
fffff803`21ee4d93 488bcf          mov     rcx,rdi
fffff803`21ee4d96 e891e2e8ff      call    nt!ExpReleaseFastMutexContended (fffff803`21d7302c)

nt!ExFreePool+0xcf4:
fffff803`21ee4d9b 0fb6c3          movzx   eax,bl
fffff803`21ee4d9e 440f22c0        mov     cr8,rax
fffff803`21ee4da2 e962e6ffff      jmp     nt!ExFreePoolWithTag+0x2a9 (fffff803`21ee3409)

nt!ObUnRegisterCallbacks:
fffff803`221e9710 488bc4          mov     rax,rsp
fffff803`221e9713 48895808        mov     qword ptr [rax+8],rbx
fffff803`221e9717 48896810        mov     qword ptr [rax+10h],rbp
fffff803`221e971b 48897018        mov     qword ptr [rax+18h],rsi
fffff803`221e971f 48897820        mov     qword ptr [rax+20h],rdi
fffff803`221e9723 4156            push    r14
fffff803`221e9725 4883ec20        sub     rsp,20h
fffff803`221e9729 33ed            xor     ebp,ebp
fffff803`221e972b 488bf9          mov     rdi,rcx
fffff803`221e972e 8bf5            mov     esi,ebp
fffff803`221e9730 663b6902        cmp     bp,word ptr [rcx+2]
fffff803`221e9734 0f83f1000000    jae     nt!ObUnRegisterCallbacks+0x11b (fffff803`221e982b)

nt!ObUnRegisterCallbacks+0x2a:
fffff803`221e973a 488d5958        lea     rbx,[rcx+58h]
fffff803`221e973e 448d7501        lea     r14d,[rbp+1]

nt!ObUnRegisterCallbacks+0x32:
fffff803`221e9742 33c0            xor     eax,eax
fffff803`221e9744 f04c0fb133      lock cmpxchg qword ptr [rbx],r14
fffff803`221e9749 7410            je      nt!ObUnRegisterCallbacks+0x4b (fffff803`221e975b)

nt!ObUnRegisterCallbacks+0x3b:
fffff803`221e974b 493bc6          cmp     rax,r14
fffff803`221e974e 740b            je      nt!ObUnRegisterCallbacks+0x4b (fffff803`221e975b)

nt!ObUnRegisterCallbacks+0x40:
fffff803`221e9750 488bd0          mov     rdx,rax
fffff803`221e9753 488bcb          mov     rcx,rbx
fffff803`221e9756 e8f5a1b8ff      call    nt!ExfWaitForRundownProtectionRelease (fffff803`21d73950)

nt!ObUnRegisterCallbacks+0x4b:
fffff803`221e975b 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`221e9764 66ff88e6010000  dec     word ptr [rax+1E6h]
fffff803`221e976b 488b4be8        mov     rcx,qword ptr [rbx-18h]
fffff803`221e976f 4881c1b8000000  add     rcx,0B8h
fffff803`221e9776 f0480fba2900    lock bts qword ptr [rcx],0
fffff803`221e977c 7305            jae     nt!ObUnRegisterCallbacks+0x73 (fffff803`221e9783)

nt!ObUnRegisterCallbacks+0x6e:
fffff803`221e977e e87d7cb6ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)

nt!ObUnRegisterCallbacks+0x73:
fffff803`221e9783 488b4bd0        mov     rcx,qword ptr [rbx-30h]
fffff803`221e9787 488d43c8        lea     rax,[rbx-38h]
fffff803`221e978b 488b10          mov     rdx,qword ptr [rax]
fffff803`221e978e 48394208        cmp     qword ptr [rdx+8],rax
fffff803`221e9792 0f85ba000000    jne     nt!ObUnRegisterCallbacks+0x142 (fffff803`221e9852)

nt!ObUnRegisterCallbacks+0x88:
fffff803`221e9798 483901          cmp     qword ptr [rcx],rax
fffff803`221e979b 0f85b1000000    jne     nt!ObUnRegisterCallbacks+0x142 (fffff803`221e9852)

nt!ObUnRegisterCallbacks+0x91:
fffff803`221e97a1 488911          mov     qword ptr [rcx],rdx
fffff803`221e97a4 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`221e97a8 488b53e8        mov     rdx,qword ptr [rbx-18h]
fffff803`221e97ac 0f0d8ab8000000  prefetchw [rdx+0B8h]
fffff803`221e97b3 488b82b8000000  mov     rax,qword ptr [rdx+0B8h]
fffff803`221e97ba 488bc8          mov     rcx,rax
fffff803`221e97bd 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`221e97c1 4883f910        cmp     rcx,10h
fffff803`221e97c5 488d48f0        lea     rcx,[rax-10h]
fffff803`221e97c9 7703            ja      nt!ObUnRegisterCallbacks+0xbe (fffff803`221e97ce)

nt!ObUnRegisterCallbacks+0xbb:
fffff803`221e97cb 488bcd          mov     rcx,rbp

nt!ObUnRegisterCallbacks+0xbe:
fffff803`221e97ce a802            test    al,2
fffff803`221e97d0 750b            jne     nt!ObUnRegisterCallbacks+0xcd (fffff803`221e97dd)

nt!ObUnRegisterCallbacks+0xc2:
fffff803`221e97d2 f0480fb18ab8000000 lock cmpxchg qword ptr [rdx+0B8h],rcx
fffff803`221e97db 740c            je      nt!ObUnRegisterCallbacks+0xd9 (fffff803`221e97e9)

nt!ObUnRegisterCallbacks+0xcd:
fffff803`221e97dd 488d8ab8000000  lea     rcx,[rdx+0B8h]
fffff803`221e97e4 e8032cb4ff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt!ObUnRegisterCallbacks+0xd9:
fffff803`221e97e9 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`221e97f2 0fbf81e6010000  movsx   eax,word ptr [rcx+1E6h]
fffff803`221e97f9 ffc0            inc     eax
fffff803`221e97fb 668981e6010000  mov     word ptr [rcx+1E6h],ax
fffff803`221e9802 6685c0          test    ax,ax
fffff803`221e9805 7511            jne     nt!ObUnRegisterCallbacks+0x108 (fffff803`221e9818)

nt!ObUnRegisterCallbacks+0xf7:
fffff803`221e9807 488d8198000000  lea     rax,[rcx+98h]
fffff803`221e980e 483900          cmp     qword ptr [rax],rax
fffff803`221e9811 7405            je      nt!ObUnRegisterCallbacks+0x108 (fffff803`221e9818)

nt!ObUnRegisterCallbacks+0x103:
fffff803`221e9813 e8e8ffb7ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!ObUnRegisterCallbacks+0x108:
fffff803`221e9818 0fb74702        movzx   eax,word ptr [rdi+2]
fffff803`221e981c 4103f6          add     esi,r14d
fffff803`221e981f 4883c340        add     rbx,40h
fffff803`221e9823 3bf0            cmp     esi,eax
fffff803`221e9825 0f8217ffffff    jb      nt!ObUnRegisterCallbacks+0x32 (fffff803`221e9742)

nt!ObUnRegisterCallbacks+0x11b:
fffff803`221e982b ba4f62466c      mov     edx,6C46624Fh
fffff803`221e9830 488bcf          mov     rcx,rdi
fffff803`221e9833 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`221e9838 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`221e983d 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`221e9842 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff803`221e9847 4883c420        add     rsp,20h
fffff803`221e984b 415e            pop     r14
fffff803`221e984d e90e99cfff      jmp     nt!ExFreePoolWithTag (fffff803`21ee3160)

nt!ObUnRegisterCallbacks+0x142:
fffff803`221e9852 b903000000      mov     ecx,3
fffff803`221e9857 cd29            int     29h
fffff803`221e9859 90              nop
fffff803`221e985a 90              nop
fffff803`221e985b 90              nop
fffff803`221e985c b800010000      mov     eax,100h
fffff803`221e9861 c3              ret
