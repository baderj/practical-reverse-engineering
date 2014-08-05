nt!CcLazyWriteScan:
fffff803`21d6fac4 48895c2418      mov     qword ptr [rsp+18h],rbx
fffff803`21d6fac9 55              push    rbp
fffff803`21d6faca 56              push    rsi
fffff803`21d6facb 57              push    rdi
fffff803`21d6facc 4154            push    r12
fffff803`21d6face 4155            push    r13
fffff803`21d6fad0 4156            push    r14
fffff803`21d6fad2 4157            push    r15
fffff803`21d6fad4 488d6c24d9      lea     rbp,[rsp-27h]
fffff803`21d6fad9 4881ec90000000  sub     rsp,90h
fffff803`21d6fae0 488b05b11f1800  mov     rax,qword ptr [nt!_security_cookie (fffff803`21ef1a98)]
fffff803`21d6fae7 4833c4          xor     rax,rsp
fffff803`21d6faea 4889451f        mov     qword ptr [rbp+1Fh],rax
fffff803`21d6faee 4533ff          xor     r15d,r15d
fffff803`21d6faf1 488bf9          mov     rdi,rcx
fffff803`21d6faf4 488d4dcb        lea     rcx,[rbp-35h]
fffff803`21d6faf8 448bea          mov     r13d,edx
fffff803`21d6fafb 44887dc8        mov     byte ptr [rbp-38h],r15b
fffff803`21d6faff 44887dc7        mov     byte ptr [rbp-39h],r15b
fffff803`21d6fb03 418bf7          mov     esi,r15d
fffff803`21d6fb06 44887dc9        mov     byte ptr [rbp-37h],r15b
fffff803`21d6fb0a e8f1070000      call    nt!CcScanLogHandleList (fffff803`21d70300)
fffff803`21d6fb0f 450f20c6        mov     r14,cr8
fffff803`21d6fb13 418d4702        lea     eax,[r15+2]
fffff803`21d6fb17 440f22c0        mov     cr8,rax
fffff803`21d6fb1b 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`21d6fb24 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`21d6fb28 4883c150        add     rcx,50h
fffff803`21d6fb2c f7054ea5250000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d6fb36 0f8577fb0c00    jne     nt! ?? ::FNODOBFM::`string'+0x3714 (fffff803`21e3f6b3)

nt!CcLazyWriteScan+0x78:
fffff803`21d6fb3c 488bd1          mov     rdx,rcx
fffff803`21d6fb3f 498710          xchg    rdx,qword ptr [r8]
fffff803`21d6fb42 4885d2          test    rdx,rdx
fffff803`21d6fb45 0f8513070000    jne     nt!CcLazyWriteScan+0x79a (fffff803`21d7025e)

nt!CcLazyWriteScan+0x87:
fffff803`21d6fb4b 33d2            xor     edx,edx
fffff803`21d6fb4d 418bcd          mov     ecx,r13d
fffff803`21d6fb50 e8eb3b0000      call    nt!CcSetLazyWriteScanQueued (fffff803`21d73740)
fffff803`21d6fb55 4c393d04b01e00  cmp     qword ptr [nt!CcGlobalDirtyPageStatistics (fffff803`21f5ab60)],r15
fffff803`21d6fb5c 0f84fc050000    je      nt!CcLazyWriteScan+0x69a (fffff803`21d7015e)

nt!CcLazyWriteScan+0x9e:
fffff803`21d6fb62 488d45cf        lea     rax,[rbp-31h]
fffff803`21d6fb66 4c8d0543b11e00  lea     r8,[nt!CcPostTickWorkQueue (fffff803`21f5acb0)]
fffff803`21d6fb6d 488945d7        mov     qword ptr [rbp-29h],rax
fffff803`21d6fb71 488d45cf        lea     rax,[rbp-31h]
fffff803`21d6fb75 488945cf        mov     qword ptr [rbp-31h],rax

nt!CcLazyWriteScan+0xb5:
fffff803`21d6fb79 488b0530b11e00  mov     rax,qword ptr [nt!CcPostTickWorkQueue (fffff803`21f5acb0)]
fffff803`21d6fb80 493bc0          cmp     rax,r8
fffff803`21d6fb83 0f85e8060000    jne     nt!CcLazyWriteScan+0x7ad (fffff803`21d70271)

nt!CcLazyWriteScan+0xc5:
fffff803`21d6fb89 4c8d0530b11e00  lea     r8,[nt!CcGlobalDirtyPageThresholds (fffff803`21f5acc0)]
fffff803`21d6fb90 488d15c9af1e00  lea     rdx,[nt!CcGlobalDirtyPageStatistics (fffff803`21f5ab60)]
fffff803`21d6fb97 4533c9          xor     r9d,r9d
fffff803`21d6fb9a 418bcd          mov     ecx,r13d
fffff803`21d6fb9d 44883dddb11e00  mov     byte ptr [nt!LazyWriter+0x81 (fffff803`21f5ad81)],r15b
fffff803`21d6fba4 e8c3090000      call    nt!CcCalculatePagesToWrite (fffff803`21d7056c)
fffff803`21d6fba9 488d0db0af1e00  lea     rcx,[nt!CcGlobalDirtyPageStatistics (fffff803`21f5ab60)]
fffff803`21d6fbb0 498bd0          mov     rdx,r8
fffff803`21d6fbb3 8bd8            mov     ebx,eax
fffff803`21d6fbb5 8945cb          mov     dword ptr [rbp-35h],eax
fffff803`21d6fbb8 e8c33f0000      call    nt!CcAdjustThrottle (fffff803`21d73b80)
fffff803`21d6fbbd 4c8b1d9caf1e00  mov     r11,qword ptr [nt!CcGlobalDirtyPageStatistics (fffff803`21f5ab60)]
fffff803`21d6fbc4 8b154a411800    mov     edx,dword ptr [nt!CcActiveExtraWriteBehindThreads (fffff803`21ef3d14)]
fffff803`21d6fbca 488b0d1fb11e00  mov     rcx,qword ptr [nt!CcThroughputStats (fffff803`21f5acf0)]
fffff803`21d6fbd1 4c891d90af1e00  mov     qword ptr [nt!CcGlobalDirtyPageStatistics+0x8 (fffff803`21f5ab68)],r11
fffff803`21d6fbd8 891d92af1e00    mov     dword ptr [nt!CcGlobalDirtyPageStatistics+0x10 (fffff803`21f5ab70)],ebx
fffff803`21d6fbde 891d78af1e00    mov     dword ptr [nt!CcPagesYetToWrite (fffff803`21f5ab5c)],ebx
fffff803`21d6fbe4 891cd1          mov     dword ptr [rcx+rdx*8],ebx
fffff803`21d6fbe7 48b81400000080f7ffff mov rax,0FFFFF78000000014h
fffff803`21d6fbf1 488b00          mov     rax,qword ptr [rax]
fffff803`21d6fbf4 f70592a4250000000200 test dword ptr [nt!PerfGlobalGroupMask+0x10 (fffff803`21fca090)],20000h
fffff803`21d6fbfe 488905d33e1800  mov     qword ptr [nt!CcPrevExtraWBThreadCheckTime (fffff803`21ef3ad8)],rax
fffff803`21d6fc05 0f85d2050000    jne     nt!CcLazyWriteScan+0x719 (fffff803`21d701dd)

nt!CcLazyWriteScan+0x147:
fffff803`21d6fc0b 488b1dceaf1e00  mov     rbx,qword ptr [nt!CcLazyWriterCursor (fffff803`21f5abe0)]
fffff803`21d6fc12 4d8be7          mov     r12,r15
fffff803`21d6fc15 4881c378ffffff  add     rbx,0FFFFFFFFFFFFFF78h
fffff803`21d6fc1c 7479            je      nt!CcLazyWriteScan+0x1d3 (fffff803`21d6fc97)

nt!CcLazyWriteScan+0x15a:
fffff803`21d6fc1e 488d3dbbaf1e00  lea     rdi,[nt!CcLazyWriterCursor (fffff803`21f5abe0)]

nt!CcLazyWriteScan+0x161:
fffff803`21d6fc25 4c8dbb88000000  lea     r15,[rbx+88h]
fffff803`21d6fc2c 4c3bff          cmp     r15,rdi
fffff803`21d6fc2f 7458            je      nt!CcLazyWriteScan+0x1c5 (fffff803`21d6fc89)

nt!CcLazyWriteScan+0x16d:
fffff803`21d6fc31 4c8b4360        mov     r8,qword ptr [rbx+60h]
fffff803`21d6fc35 8b55cb          mov     edx,dword ptr [rbp-35h]
fffff803`21d6fc38 4d85e4          test    r12,r12
fffff803`21d6fc3b 4c0f44e3        cmove   r12,rbx
fffff803`21d6fc3f 488bcb          mov     rcx,rbx
fffff803`21d6fc42 4983e0f0        and     r8,0FFFFFFFFFFFFFFF0h
fffff803`21d6fc46 e8fd090000      call    nt!CcShouldLazyWriteCacheMap (fffff803`21d70648)
fffff803`21d6fc4b 4533c9          xor     r9d,r9d
fffff803`21d6fc4e 84c0            test    al,al
fffff803`21d6fc50 0f85e8000000    jne     nt!CcLazyWriteScan+0x27a (fffff803`21d6fd3e)

nt!CcLazyWriteScan+0x192:
fffff803`21d6fc56 8b8398000000    mov     eax,dword ptr [rbx+98h]
fffff803`21d6fc5c a820            test    al,20h
fffff803`21d6fc5e 0f855f040000    jne     nt!CcLazyWriteScan+0x5ff (fffff803`21d700c3)

nt!CcLazyWriteScan+0x1a0:
fffff803`21d6fc64 ffc6            inc     esi
fffff803`21d6fc66 83fe14          cmp     esi,14h
fffff803`21d6fc69 0f8343020000    jae     nt!CcLazyWriteScan+0x3ee (fffff803`21d6feb2)

nt!CcLazyWriteScan+0x1ab:
fffff803`21d6fc6f 33d2            xor     edx,edx

nt!CcLazyWriteScan+0x1ad:
fffff803`21d6fc71 498b1f          mov     rbx,qword ptr [r15]
fffff803`21d6fc74 4881eb88000000  sub     rbx,88h
fffff803`21d6fc7b 3855c7          cmp     byte ptr [rbp-39h],dl
fffff803`21d6fc7e 0f8588040000    jne     nt!CcLazyWriteScan+0x648 (fffff803`21d7010c)

nt!CcLazyWriteScan+0x1c0:
fffff803`21d6fc84 493bdc          cmp     rbx,r12
fffff803`21d6fc87 759c            jne     nt!CcLazyWriteScan+0x161 (fffff803`21d6fc25)

nt!CcLazyWriteScan+0x1c5:
fffff803`21d6fc89 8a45c9          mov     al,byte ptr [rbp-37h]
fffff803`21d6fc8c 4533ff          xor     r15d,r15d
fffff803`21d6fc8f 84c0            test    al,al
fffff803`21d6fc91 0f85e6030000    jne     nt!CcLazyWriteScan+0x5b9 (fffff803`21d7007d)

nt!CcLazyWriteScan+0x1d3:
fffff803`21d6fc97 488b4dcf        mov     rcx,qword ptr [rbp-31h]
fffff803`21d6fc9b 488d45cf        lea     rax,[rbp-31h]
fffff803`21d6fc9f 483bc8          cmp     rcx,rax
fffff803`21d6fca2 0f8507060000    jne     nt!CcLazyWriteScan+0x7eb (fffff803`21d702af)

nt!CcLazyWriteScan+0x1e4:
fffff803`21d6fca8 e88f400000      call    nt!CcRescheduleLazyWriteScan (fffff803`21d73d3c)
fffff803`21d6fcad 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`21d6fcb6 4883c350        add     rbx,50h
fffff803`21d6fcba f705c0a3250000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d6fcc4 0f85b6fa0c00    jne     nt! ?? ::FNODOBFM::`string'+0x37e1 (fffff803`21e3f780)

nt!CcLazyWriteScan+0x206:
fffff803`21d6fcca 0f0d0b          prefetchw [rbx]
fffff803`21d6fccd 488b03          mov     rax,qword ptr [rbx]
fffff803`21d6fcd0 4885c0          test    rax,rax
fffff803`21d6fcd3 0f85e0040000    jne     nt!CcLazyWriteScan+0x6f5 (fffff803`21d701b9)

nt!CcLazyWriteScan+0x215:
fffff803`21d6fcd9 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`21d6fcdd 488bc3          mov     rax,rbx
fffff803`21d6fce0 f04c0fb139      lock cmpxchg qword ptr [rcx],r15
fffff803`21d6fce5 0f85c6040000    jne     nt!CcLazyWriteScan+0x6ed (fffff803`21d701b1)

nt!CcLazyWriteScan+0x227:
fffff803`21d6fceb 410fb6c6        movzx   eax,r14b
fffff803`21d6fcef 440f22c0        mov     cr8,rax
fffff803`21d6fcf3 f70593a3250000000200 test dword ptr [nt!PerfGlobalGroupMask+0x10 (fffff803`21fca090)],20000h
fffff803`21d6fcfd 0f854e050000    jne     nt!CcLazyWriteScan+0x78d (fffff803`21d70251)

nt!CcLazyWriteScan+0x23f:
fffff803`21d6fd03 488d0536b11e00  lea     rax,[nt!CcDeferredWrites (fffff803`21f5ae40)]
fffff803`21d6fd0a 4839052fb11e00  cmp     qword ptr [nt!CcDeferredWrites (fffff803`21f5ae40)],rax
fffff803`21d6fd11 0f85bcf90c00    jne     nt! ?? ::FNODOBFM::`string'+0x3734 (fffff803`21e3f6d3)

nt!CcLazyWriteScan+0x253:
fffff803`21d6fd17 488b4d1f        mov     rcx,qword ptr [rbp+1Fh]
fffff803`21d6fd1b 4833cc          xor     rcx,rsp
fffff803`21d6fd1e e89d37f5ff      call    nt!_security_check_cookie (fffff803`21cc34c0)
fffff803`21d6fd23 488b9c24e0000000 mov     rbx,qword ptr [rsp+0E0h]
fffff803`21d6fd2b 4881c490000000  add     rsp,90h
fffff803`21d6fd32 415f            pop     r15
fffff803`21d6fd34 415e            pop     r14
fffff803`21d6fd36 415d            pop     r13
fffff803`21d6fd38 415c            pop     r12
fffff803`21d6fd3a 5f              pop     rdi
fffff803`21d6fd3b 5e              pop     rsi
fffff803`21d6fd3c 5d              pop     rbp
fffff803`21d6fd3d c3              ret

nt!CcLazyWriteScan+0x27a:
fffff803`21d6fd3e ba00000001      mov     edx,1000000h
fffff803`21d6fd43 859398000000    test    dword ptr [rbx+98h],edx
fffff803`21d6fd49 0f8519020000    jne     nt!CcLazyWriteScan+0x4a4 (fffff803`21d6ff68)

nt!CcLazyWriteScan+0x28b:
fffff803`21d6fd4f 8b8b98000000    mov     ecx,dword ptr [rbx+98h]
fffff803`21d6fd55 8b4370          mov     eax,dword ptr [rbx+70h]
fffff803`21d6fd58 8983c0000000    mov     dword ptr [rbx+0C0h],eax
fffff803`21d6fd5e 0fbae109        bt      ecx,9
fffff803`21d6fd62 0f8261020000    jb      nt!CcLazyWriteScan+0x505 (fffff803`21d6ffc9)

nt!CcLazyWriteScan+0x2a4:
fffff803`21d6fd68 44384dc8        cmp     byte ptr [rbp-38h],r9b
fffff803`21d6fd6c 7512            jne     nt!CcLazyWriteScan+0x2bc (fffff803`21d6fd80)

nt!CcLazyWriteScan+0x2aa:
fffff803`21d6fd6e 8b83c0000000    mov     eax,dword ptr [rbx+0C0h]
fffff803`21d6fd74 3b45cb          cmp     eax,dword ptr [rbp-35h]
fffff803`21d6fd77 0f8390020000    jae     nt!CcLazyWriteScan+0x549 (fffff803`21d7000d)

nt!CcLazyWriteScan+0x2b9:
fffff803`21d6fd7d 2945cb          sub     dword ptr [rbp-35h],eax

nt!CcLazyWriteScan+0x2bc:
fffff803`21d6fd80 838b9800000020  or      dword ptr [rbx+98h],20h
fffff803`21d6fd87 ff4370          inc     dword ptr [rbx+70h]
fffff803`21d6fd8a 65488b3c2528000000 mov   rdi,qword ptr gs:[28h]
fffff803`21d6fd93 4883c750        add     rdi,50h
fffff803`21d6fd97 f705e3a2250000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d6fda1 0f8537f90c00    jne     nt! ?? ::FNODOBFM::`string'+0x373f (fffff803`21e3f6de)

nt!CcLazyWriteScan+0x2e3:
fffff803`21d6fda7 0f0d0f          prefetchw [rdi]
fffff803`21d6fdaa 488b07          mov     rax,qword ptr [rdi]
fffff803`21d6fdad 4885c0          test    rax,rax
fffff803`21d6fdb0 0f8527030000    jne     nt!CcLazyWriteScan+0x619 (fffff803`21d700dd)

nt!CcLazyWriteScan+0x2f2:
fffff803`21d6fdb6 488b4f08        mov     rcx,qword ptr [rdi+8]
fffff803`21d6fdba 488bc7          mov     rax,rdi
fffff803`21d6fdbd f04c0fb109      lock cmpxchg qword ptr [rcx],r9
fffff803`21d6fdc2 0f850a030000    jne     nt!CcLazyWriteScan+0x60e (fffff803`21d700d2)

nt!CcLazyWriteScan+0x304:
fffff803`21d6fdc8 410fb6c6        movzx   eax,r14b
fffff803`21d6fdcc 440f22c0        mov     cr8,rax
fffff803`21d6fdd0 654c8b342520000000 mov   r14,qword ptr gs:[20h]
fffff803`21d6fdd9 498bb6e0070000  mov     rsi,qword ptr [r14+7E0h]
fffff803`21d6fde0 488bce          mov     rcx,rsi
fffff803`21d6fde3 ff4614          inc     dword ptr [rsi+14h]
fffff803`21d6fde6 e8656ff5ff      call    nt!ExpInterlockedPopEntrySList (fffff803`21cc6d50)
fffff803`21d6fdeb 488bf8          mov     rdi,rax
fffff803`21d6fdee 4885c0          test    rax,rax
fffff803`21d6fdf1 7539            jne     nt!CcLazyWriteScan+0x368 (fffff803`21d6fe2c)

nt!CcLazyWriteScan+0x32f:
fffff803`21d6fdf3 ff4618          inc     dword ptr [rsi+18h]
fffff803`21d6fdf6 498bb6e8070000  mov     rsi,qword ptr [r14+7E8h]
fffff803`21d6fdfd ff4614          inc     dword ptr [rsi+14h]
fffff803`21d6fe00 488bce          mov     rcx,rsi
fffff803`21d6fe03 e8486ff5ff      call    nt!ExpInterlockedPopEntrySList (fffff803`21cc6d50)
fffff803`21d6fe08 488bf8          mov     rdi,rax
fffff803`21d6fe0b 4885c0          test    rax,rax
fffff803`21d6fe0e 751c            jne     nt!CcLazyWriteScan+0x368 (fffff803`21d6fe2c)

nt!CcLazyWriteScan+0x34c:
fffff803`21d6fe10 8b562c          mov     edx,dword ptr [rsi+2Ch]
fffff803`21d6fe13 448b4628        mov     r8d,dword ptr [rsi+28h]
fffff803`21d6fe17 8b4e24          mov     ecx,dword ptr [rsi+24h]
fffff803`21d6fe1a ff4618          inc     dword ptr [rsi+18h]
fffff803`21d6fe1d ff5630          call    qword ptr [rsi+30h]
fffff803`21d6fe20 488bf8          mov     rdi,rax
fffff803`21d6fe23 4885c0          test    rax,rax
fffff803`21d6fe26 0f842af90c00    je      nt! ?? ::FNODOBFM::`string'+0x37b7 (fffff803`21e3f756)

nt!CcLazyWriteScan+0x368:
fffff803`21d6fe2c 418b4624        mov     eax,dword ptr [r14+24h]
fffff803`21d6fe30 48895f10        mov     qword ptr [rdi+10h],rbx
fffff803`21d6fe34 8907            mov     dword ptr [rdi],eax
fffff803`21d6fe36 b802000000      mov     eax,2
fffff803`21d6fe3b 884718          mov     byte ptr [rdi+18h],al
fffff803`21d6fe3e 440f20c6        mov     rsi,cr8
fffff803`21d6fe42 440f22c0        mov     cr8,rax
fffff803`21d6fe46 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`21d6fe4f 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`21d6fe53 4883c150        add     rcx,50h
fffff803`21d6fe57 f70523a2250000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d6fe61 0f8589f80c00    jne     nt! ?? ::FNODOBFM::`string'+0x3751 (fffff803`21e3f6f0)

nt!CcLazyWriteScan+0x3a3:
fffff803`21d6fe67 488bd1          mov     rdx,rcx
fffff803`21d6fe6a 498710          xchg    rdx,qword ptr [r8]
fffff803`21d6fe6d 4885d2          test    rdx,rdx
fffff803`21d6fe70 0f858d010000    jne     nt!CcLazyWriteScan+0x53f (fffff803`21d70003)

nt!CcLazyWriteScan+0x3b2:
fffff803`21d6fe76 ff4b70          dec     dword ptr [rbx+70h]
fffff803`21d6fe79 f7839800000000000100 test dword ptr [rbx+98h],10000h
fffff803`21d6fe83 448af6          mov     r14b,sil
fffff803`21d6fe86 488bcf          mov     rcx,rdi
fffff803`21d6fe89 0f856ff80c00    jne     nt! ?? ::FNODOBFM::`string'+0x375f (fffff803`21e3f6fe)

nt!CcLazyWriteScan+0x3cb:
fffff803`21d6fe8f 4889bbf0010000  mov     qword ptr [rbx+1F0h],rdi
fffff803`21d6fe96 488d1503ae1e00  lea     rdx,[nt!CcRegularWorkQueue (fffff803`21f5aca0)]

nt!CcLazyWriteScan+0x3d9:
fffff803`21d6fe9d e87a9ef8ff      call    nt!CcPostWorkQueue (fffff803`21cf9d1c)
fffff803`21d6fea2 33d2            xor     edx,edx
fffff803`21d6fea4 488d3d35ad1e00  lea     rdi,[nt!CcLazyWriterCursor (fffff803`21f5abe0)]
fffff803`21d6feab 8bf2            mov     esi,edx
fffff803`21d6fead e9bffdffff      jmp     nt!CcLazyWriteScan+0x1ad (fffff803`21d6fc71)

nt!CcLazyWriteScan+0x3ee:
fffff803`21d6feb2 a920080000      test    eax,820h
fffff803`21d6feb7 0f85b2fdffff    jne     nt!CcLazyWriteScan+0x1ab (fffff803`21d6fc6f)

nt!CcLazyWriteScan+0x3f9:
fffff803`21d6febd ff4370          inc     dword ptr [rbx+70h]
fffff803`21d6fec0 83c820          or      eax,20h
fffff803`21d6fec3 898398000000    mov     dword ptr [rbx+98h],eax
fffff803`21d6fec9 65488b3c2528000000 mov   rdi,qword ptr gs:[28h]
fffff803`21d6fed2 4883c750        add     rdi,50h
fffff803`21d6fed6 f705a4a1250000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d6fee0 0f8540f80c00    jne     nt! ?? ::FNODOBFM::`string'+0x3787 (fffff803`21e3f726)

nt!CcLazyWriteScan+0x422:
fffff803`21d6fee6 0f0d0f          prefetchw [rdi]
fffff803`21d6fee9 488b07          mov     rax,qword ptr [rdi]
fffff803`21d6feec 4885c0          test    rax,rax
fffff803`21d6feef 0f85ae020000    jne     nt!CcLazyWriteScan+0x6df (fffff803`21d701a3)

nt!CcLazyWriteScan+0x431:
fffff803`21d6fef5 488b4f08        mov     rcx,qword ptr [rdi+8]
fffff803`21d6fef9 488bc7          mov     rax,rdi
fffff803`21d6fefc f04c0fb109      lock cmpxchg qword ptr [rcx],r9
fffff803`21d6ff01 0f8591020000    jne     nt!CcLazyWriteScan+0x6d4 (fffff803`21d70198)

nt!CcLazyWriteScan+0x443:
fffff803`21d6ff07 410fb6c6        movzx   eax,r14b
fffff803`21d6ff0b 440f22c0        mov     cr8,rax
fffff803`21d6ff0f 418bf1          mov     esi,r9d
fffff803`21d6ff12 440f20c7        mov     rdi,cr8
fffff803`21d6ff16 b802000000      mov     eax,2
fffff803`21d6ff1b 440f22c0        mov     cr8,rax
fffff803`21d6ff1f 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`21d6ff28 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`21d6ff2c 4883c150        add     rcx,50h
fffff803`21d6ff30 f7054aa1250000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d6ff3a 0f85faf70c00    jne     nt! ?? ::FNODOBFM::`string'+0x379b (fffff803`21e3f73a)

nt!CcLazyWriteScan+0x47c:
fffff803`21d6ff40 488bd1          mov     rdx,rcx
fffff803`21d6ff43 498710          xchg    rdx,qword ptr [r8]
fffff803`21d6ff46 4885d2          test    rdx,rdx
fffff803`21d6ff49 0f85b3010000    jne     nt!CcLazyWriteScan+0x63e (fffff803`21d70102)

nt!CcLazyWriteScan+0x48b:
fffff803`21d6ff4f 83a398000000df  and     dword ptr [rbx+98h],0FFFFFFDFh
fffff803`21d6ff56 ff4b70          dec     dword ptr [rbx+70h]
fffff803`21d6ff59 448af7          mov     r14b,dil
fffff803`21d6ff5c 488d3d7dac1e00  lea     rdi,[nt!CcLazyWriterCursor (fffff803`21f5abe0)]
fffff803`21d6ff63 e907fdffff      jmp     nt!CcLazyWriteScan+0x1ab (fffff803`21d6fc6f)

nt!CcLazyWriteScan+0x4a4:
fffff803`21d6ff68 48a12003000080f7ffff mov rax,qword ptr [FFFFF78000000320h]
fffff803`21d6ff72 488b83f0000000  mov     rax,qword ptr [rbx+0F0h]
fffff803`21d6ff79 c645c901        mov     byte ptr [rbp-37h],1
fffff803`21d6ff7d 83487801        or      dword ptr [rax+78h],1
fffff803`21d6ff81 488b83f0000000  mov     rax,qword ptr [rbx+0F0h]
fffff803`21d6ff88 488b8b00010000  mov     rcx,qword ptr [rbx+100h]
fffff803`21d6ff8f 483b4858        cmp     rcx,qword ptr [rax+58h]
fffff803`21d6ff93 0f8eb6fdffff    jle     nt!CcLazyWriteScan+0x28b (fffff803`21d6fd4f)

nt!CcLazyWriteScan+0x4d5:
fffff803`21d6ff99 48894858        mov     qword ptr [rax+58h],rcx
fffff803`21d6ff9d f705e9a0250000000200 test dword ptr [nt!PerfGlobalGroupMask+0x10 (fffff803`21fca090)],20000h
fffff803`21d6ffa7 0f84a2fdffff    je      nt!CcLazyWriteScan+0x28b (fffff803`21d6fd4f)

nt!CcLazyWriteScan+0x4e9:
fffff803`21d6ffad 488b4360        mov     rax,qword ptr [rbx+60h]
fffff803`21d6ffb1 488b8bf0000000  mov     rcx,qword ptr [rbx+0F0h]
fffff803`21d6ffb8 4883e0f0        and     rax,0FFFFFFFFFFFFFFF0h
fffff803`21d6ffbc 488b4018        mov     rax,qword ptr [rax+18h]
fffff803`21d6ffc0 48894168        mov     qword ptr [rcx+68h],rax
fffff803`21d6ffc4 e986fdffff      jmp     nt!CcLazyWriteScan+0x28b (fffff803`21d6fd4f)

nt!CcLazyWriteScan+0x505:
fffff803`21d6ffc9 83f840          cmp     eax,40h
fffff803`21d6ffcc 0f8296fdffff    jb      nt!CcLazyWriteScan+0x2a4 (fffff803`21d6fd68)

nt!CcLazyWriteScan+0x50e:
fffff803`21d6ffd2 44390d07ad1e00  cmp     dword ptr [nt!CcCapturedSystemSize (fffff803`21f5ace0)],r9d
fffff803`21d6ffd9 0f8489fdffff    je      nt!CcLazyWriteScan+0x2a4 (fffff803`21d6fd68)

nt!CcLazyWriteScan+0x51b:
fffff803`21d6ffdf 85ca            test    edx,ecx
fffff803`21d6ffe1 7412            je      nt!CcLazyWriteScan+0x531 (fffff803`21d6fff5)

nt!CcLazyWriteScan+0x51f:
fffff803`21d6ffe3 488b8bf0000000  mov     rcx,qword ptr [rbx+0F0h]
fffff803`21d6ffea 8b5150          mov     edx,dword ptr [rcx+50h]
fffff803`21d6ffed 85d2            test    edx,edx
fffff803`21d6ffef 0f85d2010000    jne     nt!CcLazyWriteScan+0x703 (fffff803`21d701c7)

nt!CcLazyWriteScan+0x531:
fffff803`21d6fff5 c1e803          shr     eax,3
fffff803`21d6fff8 8983c0000000    mov     dword ptr [rbx+0C0h],eax
fffff803`21d6fffe e965fdffff      jmp     nt!CcLazyWriteScan+0x2a4 (fffff803`21d6fd68)

nt!CcLazyWriteScan+0x53f:
fffff803`21d70003 e8d861faff      call    nt!KxWaitForLockOwnerShip (fffff803`21d161e0)
fffff803`21d70008 e969feffff      jmp     nt!CcLazyWriteScan+0x3b2 (fffff803`21d6fe76)

nt!CcLazyWriteScan+0x549:
fffff803`21d7000d f7839800000000020000 test dword ptr [rbx+98h],200h
fffff803`21d70017 0f85dc000000    jne     nt!CcLazyWriteScan+0x635 (fffff803`21d700f9)

nt!CcLazyWriteScan+0x559:
fffff803`21d7001d 4c3be3          cmp     r12,rbx
fffff803`21d70020 0f84c5000000    je      nt!CcLazyWriteScan+0x627 (fffff803`21d700eb)

nt!CcLazyWriteScan+0x562:
fffff803`21d70026 488b0db3ab1e00  mov     rcx,qword ptr [nt!CcLazyWriterCursor (fffff803`21f5abe0)]
fffff803`21d7002d 488b05b4ab1e00  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)]
fffff803`21d70034 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`21d70038 0f8511f70c00    jne     nt! ?? ::FNODOBFM::`string'+0x37b0 (fffff803`21e3f74f)

nt!CcLazyWriteScan+0x57a:
fffff803`21d7003e 483938          cmp     qword ptr [rax],rdi
fffff803`21d70041 0f8508f70c00    jne     nt! ?? ::FNODOBFM::`string'+0x37b0 (fffff803`21e3f74f)

nt!CcLazyWriteScan+0x583:
fffff803`21d70047 488908          mov     qword ptr [rax],rcx
fffff803`21d7004a 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d7004e 498b4708        mov     rax,qword ptr [r15+8]
fffff803`21d70052 4889058fab1e00  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)],rax
fffff803`21d70059 4c893d80ab1e00  mov     qword ptr [nt!CcLazyWriterCursor (fffff803`21f5abe0)],r15
fffff803`21d70060 4c3938          cmp     qword ptr [rax],r15
fffff803`21d70063 0f85dff60c00    jne     nt! ?? ::FNODOBFM::`string'+0x37a9 (fffff803`21e3f748)

nt!CcLazyWriteScan+0x5a5:
fffff803`21d70069 488938          mov     qword ptr [rax],rdi
fffff803`21d7006c 49897f08        mov     qword ptr [r15+8],rdi

nt!CcLazyWriteScan+0x5ac:
fffff803`21d70070 44894dcb        mov     dword ptr [rbp-35h],r9d
fffff803`21d70074 c645c801        mov     byte ptr [rbp-38h],1
fffff803`21d70078 e903fdffff      jmp     nt!CcLazyWriteScan+0x2bc (fffff803`21d6fd80)

nt!CcLazyWriteScan+0x5b9:
fffff803`21d7007d 48b82003000080f7ffff mov rax,0FFFFF78000000320h
fffff803`21d70087 4c8d0572ab1e00  lea     r8,[nt!CcVolumeCacheMapList (fffff803`21f5ac00)]
fffff803`21d7008e 488b00          mov     rax,qword ptr [rax]
fffff803`21d70091 488b0d68ab1e00  mov     rcx,qword ptr [nt!CcVolumeCacheMapList (fffff803`21f5ac00)]

nt!CcLazyWriteScan+0x5d4:
fffff803`21d70098 493bc8          cmp     rcx,r8
fffff803`21d7009b 0f84f6fbffff    je      nt!CcLazyWriteScan+0x1d3 (fffff803`21d6fc97)

nt!CcLazyWriteScan+0x5dd:
fffff803`21d700a1 8b9190000000    mov     edx,dword ptr [rcx+90h]
fffff803`21d700a7 f6c201          test    dl,1
fffff803`21d700aa 7505            jne     nt!CcLazyWriteScan+0x5ed (fffff803`21d700b1)

nt!CcLazyWriteScan+0x5e8:
fffff803`21d700ac 488b09          mov     rcx,qword ptr [rcx]
fffff803`21d700af ebe7            jmp     nt!CcLazyWriteScan+0x5d4 (fffff803`21d70098)

nt!CcLazyWriteScan+0x5ed:
fffff803`21d700b1 83e2fe          and     edx,0FFFFFFFEh
fffff803`21d700b4 48898188000000  mov     qword ptr [rcx+88h],rax
fffff803`21d700bb 899190000000    mov     dword ptr [rcx+90h],edx
fffff803`21d700c1 ebe9            jmp     nt!CcLazyWriteScan+0x5e8 (fffff803`21d700ac)

nt!CcLazyWriteScan+0x5ff:
fffff803`21d700c3 0fbae010        bt      eax,10h
fffff803`21d700c7 0f8397fbffff    jae     nt!CcLazyWriteScan+0x1a0 (fffff803`21d6fc64)

nt!CcLazyWriteScan+0x609:
fffff803`21d700cd e946f60c00      jmp     nt! ?? ::FNODOBFM::`string'+0x3779 (fffff803`21e3f718)

nt!CcLazyWriteScan+0x60e:
fffff803`21d700d2 488bcf          mov     rcx,rdi
fffff803`21d700d5 e89604fcff      call    nt!KxWaitForLockChainValid (fffff803`21d30570)
fffff803`21d700da 4533c9          xor     r9d,r9d

nt!CcLazyWriteScan+0x619:
fffff803`21d700dd f04883700801    lock xor qword ptr [rax+8],1
fffff803`21d700e3 4c890f          mov     qword ptr [rdi],r9
fffff803`21d700e6 e9ddfcffff      jmp     nt!CcLazyWriteScan+0x304 (fffff803`21d6fdc8)

nt!CcLazyWriteScan+0x627:
fffff803`21d700eb 8b830c010000    mov     eax,dword ptr [rbx+10Ch]
fffff803`21d700f1 a80f            test    al,0Fh
fffff803`21d700f3 0f852dffffff    jne     nt!CcLazyWriteScan+0x562 (fffff803`21d70026)

nt!CcLazyWriteScan+0x635:
fffff803`21d700f9 c645c701        mov     byte ptr [rbp-39h],1
fffff803`21d700fd e96effffff      jmp     nt!CcLazyWriteScan+0x5ac (fffff803`21d70070)

nt!CcLazyWriteScan+0x63e:
fffff803`21d70102 e8d960faff      call    nt!KxWaitForLockOwnerShip (fffff803`21d161e0)
fffff803`21d70107 e943feffff      jmp     nt!CcLazyWriteScan+0x48b (fffff803`21d6ff4f)

nt!CcLazyWriteScan+0x648:
fffff803`21d7010c 488b0dcdaa1e00  mov     rcx,qword ptr [nt!CcLazyWriterCursor (fffff803`21f5abe0)]
fffff803`21d70113 488b05ceaa1e00  mov     rax,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)]
fffff803`21d7011a 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`21d7011e 0f8555f60c00    jne     nt! ?? ::FNODOBFM::`string'+0x37da (fffff803`21e3f779)

nt!CcLazyWriteScan+0x660:
fffff803`21d70124 483938          cmp     qword ptr [rax],rdi
fffff803`21d70127 0f854cf60c00    jne     nt! ?? ::FNODOBFM::`string'+0x37da (fffff803`21e3f779)

nt!CcLazyWriteScan+0x669:
fffff803`21d7012d 488908          mov     qword ptr [rax],rcx
fffff803`21d70130 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d70134 498b07          mov     rax,qword ptr [r15]
fffff803`21d70137 488905a2aa1e00  mov     qword ptr [nt!CcLazyWriterCursor (fffff803`21f5abe0)],rax
fffff803`21d7013e 4c893da3aa1e00  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`21f5abe8)],r15
fffff803`21d70145 4c397808        cmp     qword ptr [rax+8],r15
fffff803`21d70149 0f8523f60c00    jne     nt! ?? ::FNODOBFM::`string'+0x37d3 (fffff803`21e3f772)

nt!CcLazyWriteScan+0x68b:
fffff803`21d7014f 48897808        mov     qword ptr [rax+8],rdi
fffff803`21d70153 8855c7          mov     byte ptr [rbp-39h],dl
fffff803`21d70156 49893f          mov     qword ptr [r15],rdi
fffff803`21d70159 e926fbffff      jmp     nt!CcLazyWriteScan+0x1c0 (fffff803`21d6fc84)

nt!CcLazyWriteScan+0x69a:
fffff803`21d7015e 44383d1cac1e00  cmp     byte ptr [nt!LazyWriter+0x81 (fffff803`21f5ad81)],r15b
fffff803`21d70165 0f85f7f9ffff    jne     nt!CcLazyWriteScan+0x9e (fffff803`21d6fb62)

nt!CcLazyWriteScan+0x6a7:
fffff803`21d7016b 488d05ceac1e00  lea     rax,[nt!CcDeferredWrites (fffff803`21f5ae40)]
fffff803`21d70172 483905c7ac1e00  cmp     qword ptr [nt!CcDeferredWrites (fffff803`21f5ae40)],rax
fffff803`21d70179 0f8542f50c00    jne     nt! ?? ::FNODOBFM::`string'+0x3722 (fffff803`21e3f6c1)

nt!CcLazyWriteScan+0x6bb:
fffff803`21d7017f 418ad6          mov     dl,r14b
fffff803`21d70182 b905000000      mov     ecx,5
fffff803`21d70187 44883df2ab1e00  mov     byte ptr [nt!LazyWriter+0x80 (fffff803`21f5ad80)],r15b
fffff803`21d7018e e89de2fbff      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21d70193 e97ffbffff      jmp     nt!CcLazyWriteScan+0x253 (fffff803`21d6fd17)

nt!CcLazyWriteScan+0x6d4:
fffff803`21d70198 488bcf          mov     rcx,rdi
fffff803`21d7019b e8d003fcff      call    nt!KxWaitForLockChainValid (fffff803`21d30570)
fffff803`21d701a0 4533c9          xor     r9d,r9d

nt!CcLazyWriteScan+0x6df:
fffff803`21d701a3 f04883700801    lock xor qword ptr [rax+8],1
fffff803`21d701a9 4c890f          mov     qword ptr [rdi],r9
fffff803`21d701ac e956fdffff      jmp     nt!CcLazyWriteScan+0x443 (fffff803`21d6ff07)

nt!CcLazyWriteScan+0x6ed:
fffff803`21d701b1 488bcb          mov     rcx,rbx
fffff803`21d701b4 e8b703fcff      call    nt!KxWaitForLockChainValid (fffff803`21d30570)

nt!CcLazyWriteScan+0x6f5:
fffff803`21d701b9 f04883700801    lock xor qword ptr [rax+8],1
fffff803`21d701bf 4c893b          mov     qword ptr [rbx],r15
fffff803`21d701c2 e924fbffff      jmp     nt!CcLazyWriteScan+0x227 (fffff803`21d6fceb)

nt!CcLazyWriteScan+0x703:
fffff803`21d701c7 3bc2            cmp     eax,edx
fffff803`21d701c9 0f8799000000    ja      nt!CcLazyWriteScan+0x7a4 (fffff803`21d70268)

nt!CcLazyWriteScan+0x70b:
fffff803`21d701cf 294150          sub     dword ptr [rcx+50h],eax

nt!CcLazyWriteScan+0x70e:
fffff803`21d701d2 ff05e8381800    inc     dword ptr [nt!CcDbgSkippedReductions (fffff803`21ef3ac0)]
fffff803`21d701d8 e98bfbffff      jmp     nt!CcLazyWriteScan+0x2a4 (fffff803`21d6fd68)

nt!CcLazyWriteScan+0x719:
fffff803`21d701dd 488b0d9c2e2500  mov     rcx,qword ptr [nt!MmAvailablePages (fffff803`21fc3080)]
fffff803`21d701e4 8b0572a91e00    mov     eax,dword ptr [nt!CcPagesYetToWrite (fffff803`21f5ab5c)]
fffff803`21d701ea 448b05133b1800  mov     r8d,dword ptr [nt!CcNumberOfMappedVacbs (fffff803`21ef3d04)]
fffff803`21d701f1 488b15c8aa1e00  mov     rdx,qword ptr [nt!CcGlobalDirtyPageThresholds (fffff803`21f5acc0)]
fffff803`21d701f8 8945fb          mov     dword ptr [rbp-5],eax
fffff803`21d701fb 488b055ea91e00  mov     rax,qword ptr [nt!CcGlobalDirtyPageStatistics (fffff803`21f5ab60)]
fffff803`21d70202 488945ff        mov     qword ptr [rbp-1],rax
fffff803`21d70206 48894d07        mov     qword ptr [rbp+7],rcx
fffff803`21d7020a 488d45ef        lea     rax,[rbp-11h]
fffff803`21d7020e 4889550f        mov     qword ptr [rbp+0Fh],rdx
fffff803`21d70212 4c894517        mov     qword ptr [rbp+17h],r8
fffff803`21d70216 488d4ddf        lea     rcx,[rbp-21h]
fffff803`21d7021a 41b905160000    mov     r9d,1605h
fffff803`21d70220 ba01000000      mov     edx,1
fffff803`21d70225 41b800000280    mov     r8d,80020000h
fffff803`21d7022b 488945df        mov     qword ptr [rbp-21h],rax
fffff803`21d7022f 48897def        mov     qword ptr [rbp-11h],rdi
fffff803`21d70233 44896df7        mov     dword ptr [rbp-9],r13d
fffff803`21d70237 48c745e730000000 mov     qword ptr [rbp-19h],30h
fffff803`21d7023f c744242002014000 mov     dword ptr [rsp+20h],400102h
fffff803`21d70247 e8f4d80300      call    nt!EtwTraceKernelEvent (fffff803`21dadb40)
fffff803`21d7024c e9baf9ffff      jmp     nt!CcLazyWriteScan+0x147 (fffff803`21d6fc0b)

nt!CcLazyWriteScan+0x78d:
fffff803`21d70251 418bcd          mov     ecx,r13d
fffff803`21d70254 e807a60500      call    nt!CcPerfLogLoggedStreamsStats (fffff803`21dca860)
fffff803`21d70259 e9a5faffff      jmp     nt!CcLazyWriteScan+0x23f (fffff803`21d6fd03)

nt!CcLazyWriteScan+0x79a:
fffff803`21d7025e e87d5ffaff      call    nt!KxWaitForLockOwnerShip (fffff803`21d161e0)
fffff803`21d70263 e9e3f8ffff      jmp     nt!CcLazyWriteScan+0x87 (fffff803`21d6fb4b)

nt!CcLazyWriteScan+0x7a4:
fffff803`21d70268 44894950        mov     dword ptr [rcx+50h],r9d
fffff803`21d7026c e961ffffff      jmp     nt!CcLazyWriteScan+0x70e (fffff803`21d701d2)

nt!CcLazyWriteScan+0x7ad:
fffff803`21d70271 488b08          mov     rcx,qword ptr [rax]
fffff803`21d70274 4c394008        cmp     qword ptr [rax+8],r8
fffff803`21d70278 756c            jne     nt!CcLazyWriteScan+0x822 (fffff803`21d702e6)

nt!CcLazyWriteScan+0x7b6:
fffff803`21d7027a 48394108        cmp     qword ptr [rcx+8],rax
fffff803`21d7027e 7566            jne     nt!CcLazyWriteScan+0x822 (fffff803`21d702e6)

nt!CcLazyWriteScan+0x7bc:
fffff803`21d70280 48890d29aa1e00  mov     qword ptr [nt!CcPostTickWorkQueue (fffff803`21f5acb0)],rcx
fffff803`21d70287 4c894108        mov     qword ptr [rcx+8],r8
fffff803`21d7028b 488b4dd7        mov     rcx,qword ptr [rbp-29h]
fffff803`21d7028f 488d55cf        lea     rdx,[rbp-31h]
fffff803`21d70293 48894808        mov     qword ptr [rax+8],rcx
fffff803`21d70297 488910          mov     qword ptr [rax],rdx
fffff803`21d7029a 488d55cf        lea     rdx,[rbp-31h]
fffff803`21d7029e 483911          cmp     qword ptr [rcx],rdx
fffff803`21d702a1 753c            jne     nt!CcLazyWriteScan+0x81b (fffff803`21d702df)

nt!CcLazyWriteScan+0x7df:
fffff803`21d702a3 488901          mov     qword ptr [rcx],rax
fffff803`21d702a6 488945d7        mov     qword ptr [rbp-29h],rax
fffff803`21d702aa e9caf8ffff      jmp     nt!CcLazyWriteScan+0xb5 (fffff803`21d6fb79)

nt!CcLazyWriteScan+0x7eb:
fffff803`21d702af 488b01          mov     rax,qword ptr [rcx]
fffff803`21d702b2 488d55cf        lea     rdx,[rbp-31h]
fffff803`21d702b6 48395108        cmp     qword ptr [rcx+8],rdx
fffff803`21d702ba 7531            jne     nt!CcLazyWriteScan+0x829 (fffff803`21d702ed)

nt!CcLazyWriteScan+0x7f8:
fffff803`21d702bc 48394808        cmp     qword ptr [rax+8],rcx
fffff803`21d702c0 752b            jne     nt!CcLazyWriteScan+0x829 (fffff803`21d702ed)

nt!CcLazyWriteScan+0x7fe:
fffff803`21d702c2 488d55cf        lea     rdx,[rbp-31h]
fffff803`21d702c6 488945cf        mov     qword ptr [rbp-31h],rax
fffff803`21d702ca 48895008        mov     qword ptr [rax+8],rdx
fffff803`21d702ce 488d15cba91e00  lea     rdx,[nt!CcRegularWorkQueue (fffff803`21f5aca0)]
fffff803`21d702d5 e8429af8ff      call    nt!CcPostWorkQueue (fffff803`21cf9d1c)
fffff803`21d702da e9b8f9ffff      jmp     nt!CcLazyWriteScan+0x1d3 (fffff803`21d6fc97)

nt!CcLazyWriteScan+0x81b:
fffff803`21d702df b903000000      mov     ecx,3
fffff803`21d702e4 cd29            int     29h

nt!CcLazyWriteScan+0x822:
fffff803`21d702e6 b903000000      mov     ecx,3
fffff803`21d702eb cd29            int     29h

nt!CcLazyWriteScan+0x829:
fffff803`21d702ed b903000000      mov     ecx,3
fffff803`21d702f2 cd29            int     29h
fffff803`21d702f4 e94f030000      jmp     nt!CcShouldLazyWriteCacheMap (fffff803`21d70648)

nt!CcShouldLazyWriteCacheMap:
fffff803`21d70648 4883ec28        sub     rsp,28h
fffff803`21d7064c 8b8198000000    mov     eax,dword ptr [rcx+98h]
fffff803`21d70652 4d8bd0          mov     r10,r8
fffff803`21d70655 4c8bc9          mov     r9,rcx
fffff803`21d70658 4c8bc2          mov     r8,rdx
fffff803`21d7065b a920084000      test    eax,400820h
fffff803`21d70660 0f8584000000    jne     nt!CcShouldLazyWriteCacheMap+0xa2 (fffff803`21d706ea)

nt!CcShouldLazyWriteCacheMap+0x1e:
fffff803`21d70666 0fbae010        bt      eax,10h
fffff803`21d7066a 0f82a4000000    jb      nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt!CcShouldLazyWriteCacheMap+0x28:
fffff803`21d70670 83b90402000000  cmp     dword ptr [rcx+204h],0
fffff803`21d70677 7571            jne     nt!CcShouldLazyWriteCacheMap+0xa2 (fffff803`21d706ea)

nt!CcShouldLazyWriteCacheMap+0x31:
fffff803`21d70679 8b5104          mov     edx,dword ptr [rcx+4]
fffff803`21d7067c 85d2            test    edx,edx
fffff803`21d7067e 7471            je      nt!CcShouldLazyWriteCacheMap+0xa9 (fffff803`21d706f1)

nt!CcShouldLazyWriteCacheMap+0x38:
fffff803`21d70680 8b4970          mov     ecx,dword ptr [rcx+70h]
fffff803`21d70683 85c9            test    ecx,ecx
fffff803`21d70685 7463            je      nt!CcShouldLazyWriteCacheMap+0xa2 (fffff803`21d706ea)

nt!CcShouldLazyWriteCacheMap+0x3f:
fffff803`21d70687 4d85c0          test    r8,r8
fffff803`21d7068a 745e            je      nt!CcShouldLazyWriteCacheMap+0xa2 (fffff803`21d706ea)

nt!CcShouldLazyWriteCacheMap+0x44:
fffff803`21d7068c 41ff810c010000  inc     dword ptr [r9+10Ch]
fffff803`21d70693 458b810c010000  mov     r8d,dword ptr [r9+10Ch]
fffff803`21d7069a 41bb00000001    mov     r11d,1000000h
fffff803`21d706a0 4185c3          test    r11d,eax
fffff803`21d706a3 745b            je      nt!CcShouldLazyWriteCacheMap+0xb8 (fffff803`21d70700)

nt!CcShouldLazyWriteCacheMap+0x5d:
fffff803`21d706a5 48b92003000080f7ffff mov rcx,0FFFFF78000000320h
fffff803`21d706af 488b09          mov     rcx,qword ptr [rcx]
fffff803`21d706b2 4d8b91f0000000  mov     r10,qword ptr [r9+0F0h]
fffff803`21d706b9 41837a5000      cmp     dword ptr [r10+50h],0
fffff803`21d706be 7554            jne     nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt!CcShouldLazyWriteCacheMap+0x78:
fffff803`21d706c0 448b054d992500  mov     r8d,dword ptr [nt!KeMaximumIncrement (fffff803`21fca014)]
fffff803`21d706c7 b800688909      mov     eax,9896800h
fffff803`21d706cc 4899            cqo
fffff803`21d706ce 49f7f8          idiv    rax,r8
fffff803`21d706d1 49034270        add     rax,qword ptr [r10+70h]
fffff803`21d706d5 483bc8          cmp     rcx,rax
fffff803`21d706d8 7f3a            jg      nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt!CcShouldLazyWriteCacheMap+0x92:
fffff803`21d706da 833dffa51e0000  cmp     dword ptr [nt!CcCapturedSystemSize (fffff803`21f5ace0)],0
fffff803`21d706e1 7431            je      nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt!CcShouldLazyWriteCacheMap+0x9b:
fffff803`21d706e3 4183797040      cmp     dword ptr [r9+70h],40h

nt!CcShouldLazyWriteCacheMap+0xa0:
fffff803`21d706e8 732a            jae     nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt!CcShouldLazyWriteCacheMap+0xa2:
fffff803`21d706ea 32c0            xor     al,al

nt!CcShouldLazyWriteCacheMap+0xa4:
fffff803`21d706ec 4883c428        add     rsp,28h
fffff803`21d706f0 c3              ret

nt!CcShouldLazyWriteCacheMap+0xa9:
fffff803`21d706f1 83797000        cmp     dword ptr [rcx+70h],0
fffff803`21d706f5 741d            je      nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt!CcShouldLazyWriteCacheMap+0xaf:
fffff803`21d706f7 4883790800      cmp     qword ptr [rcx+8],0
fffff803`21d706fc 7582            jne     nt!CcShouldLazyWriteCacheMap+0x38 (fffff803`21d70680)

nt!CcShouldLazyWriteCacheMap+0xb6:
fffff803`21d706fe eb14            jmp     nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt!CcShouldLazyWriteCacheMap+0xb8:
fffff803`21d70700 0fbae009        bt      eax,9
fffff803`21d70704 0f82b7f10c00    jb      nt! ?? ::FNODOBFM::`string'+0x391e (fffff803`21e3f8c1)

nt!CcShouldLazyWriteCacheMap+0xc2:
fffff803`21d7070a 418b4250        mov     eax,dword ptr [r10+50h]
fffff803`21d7070e 0fbae00f        bt      eax,0Fh
fffff803`21d70712 7204            jb      nt!CcShouldLazyWriteCacheMap+0xd0 (fffff803`21d70718)

nt!CcShouldLazyWriteCacheMap+0xcc:
fffff803`21d70714 b001            mov     al,1
fffff803`21d70716 ebd4            jmp     nt!CcShouldLazyWriteCacheMap+0xa4 (fffff803`21d706ec)

nt!CcShouldLazyWriteCacheMap+0xd0:
fffff803`21d70718 85d2            test    edx,edx
fffff803`21d7071a 74f8            je      nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt!CcShouldLazyWriteCacheMap+0xd4:
fffff803`21d7071c 41b901000000    mov     r9d,1
fffff803`21d70722 4533c0          xor     r8d,r8d
fffff803`21d70725 418bd3          mov     edx,r11d
fffff803`21d70728 498bca          mov     rcx,r10
fffff803`21d7072b e848d5feff      call    nt!CcCanIWriteStream (fffff803`21d5dc78)
fffff803`21d70730 84c0            test    al,al
fffff803`21d70732 75b6            jne     nt!CcShouldLazyWriteCacheMap+0xa2 (fffff803`21d706ea)

nt!CcShouldLazyWriteCacheMap+0xec:
fffff803`21d70734 ebde            jmp     nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt! ?? ::FNODOBFM::`string'+0x3714:
fffff803`21e3f6b3 498bd0          mov     rdx,r8
fffff803`21e3f6b6 e835e0faff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`21ded6f0)
fffff803`21e3f6bb 90              nop
fffff803`21e3f6bc e98a04f3ff      jmp     nt!CcLazyWriteScan+0x87 (fffff803`21d6fb4b)

nt! ?? ::FNODOBFM::`string'+0x3722:
fffff803`21e3f6c1 e87646f3ff      call    nt!CcRescheduleLazyWriteScan (fffff803`21d73d3c)
fffff803`21e3f6c6 418ad6          mov     dl,r14b
fffff803`21e3f6c9 b905000000      mov     ecx,5
fffff803`21e3f6ce e85dedeeff      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)

nt! ?? ::FNODOBFM::`string'+0x3734:
fffff803`21e3f6d3 e8fc56f9ff      call    nt!CcPostDeferredWrites (fffff803`21dd4dd4)
fffff803`21e3f6d8 90              nop
fffff803`21e3f6d9 e93906f3ff      jmp     nt!CcLazyWriteScan+0x253 (fffff803`21d6fd17)

nt! ?? ::FNODOBFM::`string'+0x373f:
fffff803`21e3f6de 488b555f        mov     rdx,qword ptr [rbp+5Fh]
fffff803`21e3f6e2 488bcf          mov     rcx,rdi
fffff803`21e3f6e5 e8e6defaff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`21ded5d0)
fffff803`21e3f6ea 90              nop
fffff803`21e3f6eb e9d806f3ff      jmp     nt!CcLazyWriteScan+0x304 (fffff803`21d6fdc8)

nt! ?? ::FNODOBFM::`string'+0x3751:
fffff803`21e3f6f0 498bd0          mov     rdx,r8
fffff803`21e3f6f3 e8f8dffaff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`21ded6f0)
fffff803`21e3f6f8 90              nop
fffff803`21e3f6f9 e97807f3ff      jmp     nt!CcLazyWriteScan+0x3b2 (fffff803`21d6fe76)

nt! ?? ::FNODOBFM::`string'+0x375f:
fffff803`21e3f6fe 488bc7          mov     rax,rdi
fffff803`21e3f701 488d1578b51100  lea     rdx,[nt!CcFastTeardownWorkQueue (fffff803`21f5ac80)]
fffff803`21e3f708 4883c801        or      rax,1
fffff803`21e3f70c 488983f0010000  mov     qword ptr [rbx+1F0h],rax
fffff803`21e3f713 e98507f3ff      jmp     nt!CcLazyWriteScan+0x3d9 (fffff803`21d6fe9d)

nt! ?? ::FNODOBFM::`string'+0x3779:
fffff803`21e3f718 488bcb          mov     rcx,rbx
fffff803`21e3f71b e8d052f9ff      call    nt!CcIncrementWriteBehindPriority (fffff803`21dd49f0)
fffff803`21e3f720 90              nop
fffff803`21e3f721 e94905f3ff      jmp     nt!CcLazyWriteScan+0x1ab (fffff803`21d6fc6f)

nt! ?? ::FNODOBFM::`string'+0x3787:
fffff803`21e3f726 488b555f        mov     rdx,qword ptr [rbp+5Fh]
fffff803`21e3f72a 488bcf          mov     rcx,rdi
fffff803`21e3f72d e89edefaff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`21ded5d0)
fffff803`21e3f732 4533c9          xor     r9d,r9d
fffff803`21e3f735 e9cd07f3ff      jmp     nt!CcLazyWriteScan+0x443 (fffff803`21d6ff07)

nt! ?? ::FNODOBFM::`string'+0x379b:
fffff803`21e3f73a 498bd0          mov     rdx,r8
fffff803`21e3f73d e8aedffaff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`21ded6f0)
fffff803`21e3f742 90              nop
fffff803`21e3f743 e90708f3ff      jmp     nt!CcLazyWriteScan+0x48b (fffff803`21d6ff4f)

nt! ?? ::FNODOBFM::`string'+0x37a9:
fffff803`21e3f748 b903000000      mov     ecx,3
fffff803`21e3f74d cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x37b0:
fffff803`21e3f74f b903000000      mov     ecx,3
fffff803`21e3f754 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x37b7:
fffff803`21e3f756 b905000000      mov     ecx,5
fffff803`21e3f75b e86021eeff      call    nt!KeAcquireQueuedSpinLock (fffff803`21d218c0)
fffff803`21e3f760 83a398000000df  and     dword ptr [rbx+98h],0FFFFFFDFh
fffff803`21e3f767 ff4b70          dec     dword ptr [rbx+70h]
fffff803`21e3f76a 448af0          mov     r14b,al
fffff803`21e3f76d e91705f3ff      jmp     nt!CcLazyWriteScan+0x1c5 (fffff803`21d6fc89)

nt! ?? ::FNODOBFM::`string'+0x37d3:
fffff803`21e3f772 b903000000      mov     ecx,3
fffff803`21e3f777 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x37da:
fffff803`21e3f779 b903000000      mov     ecx,3
fffff803`21e3f77e cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x37e1:
fffff803`21e3f780 488b555f        mov     rdx,qword ptr [rbp+5Fh]
fffff803`21e3f784 488bcb          mov     rcx,rbx
fffff803`21e3f787 e844defaff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`21ded5d0)
fffff803`21e3f78c 90              nop
fffff803`21e3f78d e95905f3ff      jmp     nt!CcLazyWriteScan+0x227 (fffff803`21d6fceb)

nt! ?? ::FNODOBFM::`string'+0x391e:
fffff803`21e3f8c1 41f6c00f        test    r8b,0Fh
fffff803`21e3f8c5 0f84490ef3ff    je      nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt! ?? ::FNODOBFM::`string'+0x3928:
fffff803`21e3f8cb 833d0eb4110000  cmp     dword ptr [nt!CcCapturedSystemSize (fffff803`21f5ace0)],0
fffff803`21e3f8d2 0f843c0ef3ff    je      nt!CcShouldLazyWriteCacheMap+0xcc (fffff803`21d70714)

nt! ?? ::FNODOBFM::`string'+0x3935:
fffff803`21e3f8d8 83f940          cmp     ecx,40h
fffff803`21e3f8db e9080ef3ff      jmp     nt!CcShouldLazyWriteCacheMap+0xa0 (fffff803`21d706e8)
