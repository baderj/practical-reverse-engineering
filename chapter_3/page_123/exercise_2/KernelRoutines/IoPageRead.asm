0: kd> uf IoPageRead
nt!IoPageRead:
fffff803`d995d270 488bc4          mov     rax,rsp
fffff803`d995d273 48895808        mov     qword ptr [rax+8],rbx
fffff803`d995d277 48896810        mov     qword ptr [rax+10h],rbp
fffff803`d995d27b 48897020        mov     qword ptr [rax+20h],rsi
fffff803`d995d27f 4c894018        mov     qword ptr [rax+18h],r8
fffff803`d995d283 57              push    rdi
fffff803`d995d284 4154            push    r12
fffff803`d995d286 4155            push    r13
fffff803`d995d288 4156            push    r14
fffff803`d995d28a 4157            push    r15
fffff803`d995d28c 4883ec20        sub     rsp,20h
fffff803`d995d290 4532ff          xor     r15b,r15b
fffff803`d995d293 4d8be1          mov     r12,r9
fffff803`d995d296 488bf2          mov     rsi,rdx
fffff803`d995d299 488bf9          mov     rdi,rcx
fffff803`d995d29c 41b601          mov     r14b,1
fffff803`d995d29f f6c103          test    cl,3
fffff803`d995d2a2 7410            je      nt!IoPageRead+0x44 (fffff803`d995d2b4)

nt!IoPageRead+0x34:
fffff803`d995d2a4 4184ce          test    r14b,cl
fffff803`d995d2a7 0f850c020000    jne     nt!IoPageRead+0x249 (fffff803`d995d4b9)

nt!IoPageRead+0x3d:
fffff803`d995d2ad 4532f6          xor     r14b,r14b

nt!IoPageRead+0x40:
fffff803`d995d2b0 4883e7fc        and     rdi,0FFFFFFFFFFFFFFFCh

nt!IoPageRead+0x44:
fffff803`d995d2b4 488bcf          mov     rcx,rdi
fffff803`d995d2b7 e884b1fcff      call    nt!IoGetRelatedDeviceObject (fffff803`d9928440)
fffff803`d995d2bc 4c8be8          mov     r13,rax
fffff803`d995d2bf 40f6c601        test    sil,1
fffff803`d995d2c3 0f85e2010000    jne     nt!IoPageRead+0x23b (fffff803`d995d4ab)

nt!IoPageRead+0x59:
fffff803`d995d2c9 bd43000000      mov     ebp,43h

nt!IoPageRead+0x5e:
fffff803`d995d2ce 4c8b442448      mov     r8,qword ptr [rsp+48h]
fffff803`d995d2d3 8a484c          mov     cl,byte ptr [rax+4Ch]
fffff803`d995d2d6 33d2            xor     edx,edx
fffff803`d995d2d8 ff15f20d2800    call    qword ptr [nt!pIoAllocateIrp (fffff803`d9bde0d0)]
fffff803`d995d2de 4533d2          xor     r10d,r10d
fffff803`d995d2e1 488bd8          mov     rbx,rax
fffff803`d995d2e4 4885c0          test    rax,rax
fffff803`d995d2e7 0f842f2a0400    je      nt! ?? ::FNODOBFM::`string'+0xa77e (fffff803`d999fd1c)

nt!IoPageRead+0x7d:
fffff803`d995d2ed 8b0579921c00    mov     eax,dword ptr [nt!MmNumberOfPagingFiles (fffff803`d9b2656c)]
fffff803`d995d2f3 488d0d66931c00  lea     rcx,[nt!MmPagingFile (fffff803`d9b26660)]
fffff803`d995d2fa 488d14c1        lea     rdx,[rcx+rax*8]

nt!IoPageRead+0x8e:
fffff803`d995d2fe 483bca          cmp     rcx,rdx
fffff803`d995d301 730f            jae     nt!IoPageRead+0xa2 (fffff803`d995d312)

nt!IoPageRead+0x93:
fffff803`d995d303 488b01          mov     rax,qword ptr [rcx]
fffff803`d995d306 48397840        cmp     qword ptr [rax+40h],rdi
fffff803`d995d30a 7412            je      nt!IoPageRead+0xae (fffff803`d995d31e)

nt!IoPageRead+0x9c:
fffff803`d995d30c 4883c108        add     rcx,8
fffff803`d995d310 ebec            jmp     nt!IoPageRead+0x8e (fffff803`d995d2fe)

nt!IoPageRead+0xa2:
fffff803`d995d312 f6460a40        test    byte ptr [rsi+0Ah],40h
fffff803`d995d316 740a            je      nt!IoPageRead+0xb2 (fffff803`d995d322)

nt!IoPageRead+0xa8:
fffff803`d995d318 40f6c540        test    bpl,40h
fffff803`d995d31c 7404            je      nt!IoPageRead+0xb2 (fffff803`d995d322)

nt!IoPageRead+0xae:
fffff803`d995d31e 804b4720        or      byte ptr [rbx+47h],20h

nt!IoPageRead+0xb2:
fffff803`d995d322 4c8b8bb8000000  mov     r9,qword ptr [rbx+0B8h]
fffff803`d995d329 896b10          mov     dword ptr [rbx+10h],ebp
fffff803`d995d32c 654c8b042588010000 mov   r8,qword ptr gs:[188h]
fffff803`d995d335 418b902c040000  mov     edx,dword ptr [r8+42Ch]
fffff803`d995d33c 498b8020020000  mov     rax,qword ptr [r8+220h]
fffff803`d995d343 c1ea09          shr     edx,9
fffff803`d995d346 83e207          and     edx,7
fffff803`d995d349 f780fc02000000001000 test dword ptr [rax+2FCh],100000h
fffff803`d995d353 0f85e5010000    jne     nt!IoPageRead+0x2ce (fffff803`d995d53e)

nt!IoPageRead+0xe9:
fffff803`d995d359 41bb02000000    mov     r11d,2
fffff803`d995d35f 413bd3          cmp     edx,r11d
fffff803`d995d362 0f8c59010000    jl      nt!IoPageRead+0x251 (fffff803`d995d4c1)

nt!IoPageRead+0xf8:
fffff803`d995d368 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff803`d995d36d 48897308        mov     qword ptr [rbx+8],rsi
fffff803`d995d371 44885340        mov     byte ptr [rbx+40h],r10b
fffff803`d995d375 4c896350        mov     qword ptr [rbx+50h],r12
fffff803`d995d379 48894b48        mov     qword ptr [rbx+48h],rcx
fffff803`d995d37d c1e211          shl     edx,11h
fffff803`d995d380 81e5fffff1ff    and     ebp,0FFF1FFFFh
fffff803`d995d386 81c200000200    add     edx,20000h
fffff803`d995d38c 4c8d7320        lea     r14,[rbx+20h]
fffff803`d995d390 0bd5            or      edx,ebp
fffff803`d995d392 895310          mov     dword ptr [rbx+10h],edx
fffff803`d995d395 8b462c          mov     eax,dword ptr [rsi+2Ch]
fffff803`d995d398 48034620        add     rax,qword ptr [rsi+20h]
fffff803`d995d39c 4889bbc0000000  mov     qword ptr [rbx+0C0h],rdi
fffff803`d995d3a3 48894370        mov     qword ptr [rbx+70h],rax
fffff803`d995d3a7 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d995d3b0 48898398000000  mov     qword ptr [rbx+98h],rax
fffff803`d995d3b7 498979e8        mov     qword ptr [r9-18h],rdi
fffff803`d995d3bb 41c641b803      mov     byte ptr [r9-48h],3
fffff803`d995d3c0 8b4628          mov     eax,dword ptr [rsi+28h]
fffff803`d995d3c3 418941c0        mov     dword ptr [r9-40h],eax
fffff803`d995d3c7 488b442460      mov     rax,qword ptr [rsp+60h]
fffff803`d995d3cc 488b00          mov     rax,qword ptr [rax]
fffff803`d995d3cf 498941d0        mov     qword ptr [r9-30h],rax
fffff803`d995d3d3 48895908        mov     qword ptr [rcx+8],rbx
fffff803`d995d3d7 488b8398000000  mov     rax,qword ptr [rbx+98h]
fffff803`d995d3de 4c8db8d0030000  lea     r15,[rax+3D0h]
fffff803`d995d3e5 488db898040000  lea     rdi,[rax+498h]
fffff803`d995d3ec 440f20c5        mov     rbp,cr8
fffff803`d995d3f0 450f22c3        mov     cr8,r11
fffff803`d995d3f4 f705860c280000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d995d3fe 0f8555010000    jne     nt!IoPageRead+0x2e9 (fffff803`d995d559)

nt!IoPageRead+0x194:
fffff803`d995d404 f0480fba2f00    lock bts qword ptr [rdi],0
fffff803`d995d40a 0f8239010000    jb      nt!IoPageRead+0x2d9 (fffff803`d995d549)

nt!IoPageRead+0x1a0:
fffff803`d995d410 498b07          mov     rax,qword ptr [r15]
fffff803`d995d413 4d897e08        mov     qword ptr [r14+8],r15
fffff803`d995d417 498906          mov     qword ptr [r14],rax
fffff803`d995d41a 4c397808        cmp     qword ptr [rax+8],r15
fffff803`d995d41e 0f855f290400    jne     nt! ?? ::FNODOBFM::`string'+0xa7e5 (fffff803`d999fd83)

nt!IoPageRead+0x1b4:
fffff803`d995d424 4c897008        mov     qword ptr [rax+8],r14
fffff803`d995d428 4d8937          mov     qword ptr [r15],r14
fffff803`d995d42b f7054f0c280000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d995d435 0f854f290400    jne     nt! ?? ::FNODOBFM::`string'+0xa7ec (fffff803`d999fd8a)

nt!IoPageRead+0x1cb:
fffff803`d995d43b f04c2117        lock and qword ptr [rdi],r10

nt!IoPageRead+0x1cf:
fffff803`d995d43f 400fb6c5        movzx   eax,bpl
fffff803`d995d443 440f22c0        mov     cr8,rax
fffff803`d995d447 65488b142588010000 mov   rdx,qword ptr gs:[188h]
fffff803`d995d450 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d995d459 8a8838040000    mov     cl,byte ptr [rax+438h]
fffff803`d995d45f 8a8239040000    mov     al,byte ptr [rdx+439h]
fffff803`d995d465 0ac1            or      al,cl
fffff803`d995d467 741a            je      nt!IoPageRead+0x213 (fffff803`d995d483)

nt!IoPageRead+0x1f9:
fffff803`d995d469 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d995d472 8b4628          mov     eax,dword ptr [rsi+28h]
fffff803`d995d475 05ff0f0000      add     eax,0FFFh
fffff803`d995d47a c1e80c          shr     eax,0Ch
fffff803`d995d47d 018168040000    add     dword ptr [rcx+468h],eax

nt!IoPageRead+0x213:
fffff803`d995d483 488bd3          mov     rdx,rbx
fffff803`d995d486 498bcd          mov     rcx,r13
fffff803`d995d489 e8122afcff      call    nt!IofCallDriver (fffff803`d991fea0)

nt!IoPageRead+0x21e:
fffff803`d995d48e 488b5c2450      mov     rbx,qword ptr [rsp+50h]
fffff803`d995d493 488b6c2458      mov     rbp,qword ptr [rsp+58h]
fffff803`d995d498 488b742468      mov     rsi,qword ptr [rsp+68h]
fffff803`d995d49d 4883c420        add     rsp,20h
fffff803`d995d4a1 415f            pop     r15
fffff803`d995d4a3 415e            pop     r14
fffff803`d995d4a5 415d            pop     r13
fffff803`d995d4a7 415c            pop     r12
fffff803`d995d4a9 5f              pop     rdi
fffff803`d995d4aa c3              ret

nt!IoPageRead+0x23b:
fffff803`d995d4ab bd03040000      mov     ebp,403h
fffff803`d995d4b0 4883e6fe        and     rsi,0FFFFFFFFFFFFFFFEh
fffff803`d995d4b4 e915feffff      jmp     nt!IoPageRead+0x5e (fffff803`d995d2ce)

nt!IoPageRead+0x249:
fffff803`d995d4b9 41b701          mov     r15b,1
fffff803`d995d4bc e9effdffff      jmp     nt!IoPageRead+0x40 (fffff803`d995d2b0)

nt!IoPageRead+0x251:
fffff803`d995d4c1 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d995d4ca 4c3bc0          cmp     r8,rax
fffff803`d995d4cd 7516            jne     nt!IoPageRead+0x275 (fffff803`d995d4e5)

nt!IoPageRead+0x25f:
fffff803`d995d4cf 4539906c040000  cmp     dword ptr [r8+46Ch],r10d
fffff803`d995d4d6 754c            jne     nt!IoPageRead+0x2b4 (fffff803`d995d524)

nt!IoPageRead+0x268:
fffff803`d995d4d8 45389037040000  cmp     byte ptr [r8+437h],r10b
fffff803`d995d4df 0f8590280400    jne     nt! ?? ::FNODOBFM::`string'+0xa7d7 (fffff803`d999fd75)

nt!IoPageRead+0x275:
fffff803`d995d4e5 413bd3          cmp     edx,r11d
fffff803`d995d4e8 0f8d7afeffff    jge     nt!IoPageRead+0xf8 (fffff803`d995d368)

nt!IoPageRead+0x27e:
fffff803`d995d4ee 4584f6          test    r14b,r14b
fffff803`d995d4f1 750b            jne     nt!IoPageRead+0x28e (fffff803`d995d4fe)

nt!IoPageRead+0x283:
fffff803`d995d4f3 ff055b2d2000    inc     dword ptr [nt!IoPagingReadLowPriorityCount (fffff803`d9b60254)]
fffff803`d995d4f9 e96afeffff      jmp     nt!IoPageRead+0xf8 (fffff803`d995d368)

nt!IoPageRead+0x28e:
fffff803`d995d4fe 4180ff01        cmp     r15b,1
fffff803`d995d502 74ef            je      nt!IoPageRead+0x283 (fffff803`d995d4f3)

nt!IoPageRead+0x294:
fffff803`d995d504 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d995d50d f6803504000010  test    byte ptr [rax+435h],10h
fffff803`d995d514 75dd            jne     nt!IoPageRead+0x283 (fffff803`d995d4f3)

nt!IoPageRead+0x2a6:
fffff803`d995d516 ff05342d2000    inc     dword ptr [nt!IoPagingReadLowPriorityBumpedCount (fffff803`d9b60250)]
fffff803`d995d51c 418bd3          mov     edx,r11d
fffff803`d995d51f e944feffff      jmp     nt!IoPageRead+0xf8 (fffff803`d995d368)

nt!IoPageRead+0x2b4:
fffff803`d995d524 ff05b6342000    inc     dword ptr [nt!IoThreadBoostedCount (fffff803`d9b609e0)]
fffff803`d995d52a 418bd3          mov     edx,r11d
fffff803`d995d52d 45389037040000  cmp     byte ptr [r8+437h],r10b
fffff803`d995d534 74af            je      nt!IoPageRead+0x275 (fffff803`d995d4e5)

nt!IoPageRead+0x2c6:
fffff803`d995d536 ff05ac342000    inc     dword ptr [nt!IoBoostedInPriorityRegionCount (fffff803`d9b609e8)]
fffff803`d995d53c eba7            jmp     nt!IoPageRead+0x275 (fffff803`d995d4e5)

nt!IoPageRead+0x2ce:
fffff803`d995d53e 85d2            test    edx,edx
fffff803`d995d540 410f49d2        cmovns  edx,r10d
fffff803`d995d544 e910feffff      jmp     nt!IoPageRead+0xe9 (fffff803`d995d359)

nt!IoPageRead+0x2d9:
fffff803`d995d549 488bcf          mov     rcx,rdi
fffff803`d995d54c e86f3df6ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)

nt!IoPageRead+0x2e1:
fffff803`d995d551 4533d2          xor     r10d,r10d
fffff803`d995d554 e9b7feffff      jmp     nt!IoPageRead+0x1a0 (fffff803`d995d410)

nt!IoPageRead+0x2e9:
fffff803`d995d559 488bcf          mov     rcx,rdi
fffff803`d995d55c e85f2f0a00      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d995d561 ebee            jmp     nt!IoPageRead+0x2e1 (fffff803`d995d551)

nt! ?? ::FNODOBFM::`string'+0xa77e:
fffff803`d999fd1c 488bcf          mov     rcx,rdi
fffff803`d999fd1f e8dccbffff      call    nt!MmIsFileObjectAPagingFile (fffff803`d999c900)
fffff803`d999fd24 85c0            test    eax,eax
fffff803`d999fd26 7438            je      nt! ?? ::FNODOBFM::`string'+0xa7c2 (fffff803`d999fd60)

nt! ?? ::FNODOBFM::`string'+0xa78a:
fffff803`d999fd28 f0ff053d0d1c00  lock inc dword ptr [nt!IoPageReadIrpAllocationFailure (fffff803`d9b60a6c)]
fffff803`d999fd2f 418a4d4c        mov     cl,byte ptr [r13+4Ch]
fffff803`d999fd33 33d2            xor     edx,edx
fffff803`d999fd35 e8d66a0500      call    nt!IopAllocateReserveIrp (fffff803`d99f6810)
fffff803`d999fd3a eb0b            jmp     nt! ?? ::FNODOBFM::`string'+0xa7a9 (fffff803`d999fd47)

nt! ?? ::FNODOBFM::`string'+0xa79e:
fffff803`d999fd3c 418a4d4c        mov     cl,byte ptr [r13+4Ch]
fffff803`d999fd40 b201            mov     dl,1
fffff803`d999fd42 e859680500      call    nt!IopAllocateBackpocketIrp (fffff803`d99f65a0)

nt! ?? ::FNODOBFM::`string'+0xa7a9:
fffff803`d999fd47 4533d2          xor     r10d,r10d
fffff803`d999fd4a 488bd8          mov     rbx,rax
fffff803`d999fd4d 4885c0          test    rax,rax
fffff803`d999fd50 0f8597d5fbff    jne     nt!IoPageRead+0x7d (fffff803`d995d2ed)

nt! ?? ::FNODOBFM::`string'+0xa7b8:
fffff803`d999fd56 b89a0000c0      mov     eax,0C000009Ah
fffff803`d999fd5b e92ed7fbff      jmp     nt!IoPageRead+0x21e (fffff803`d995d48e)

nt! ?? ::FNODOBFM::`string'+0xa7c2:
fffff803`d999fd60 f0ff05090d1c00  lock inc dword ptr [nt!IoPageReadNonPagefileIrpAllocationFailure (fffff803`d9b60a70)]
fffff803`d999fd67 f6460a40        test    byte ptr [rsi+0Ah],40h
fffff803`d999fd6b 74e9            je      nt! ?? ::FNODOBFM::`string'+0xa7b8 (fffff803`d999fd56)

nt! ?? ::FNODOBFM::`string'+0xa7cf:
fffff803`d999fd6d 40f6c540        test    bpl,40h
fffff803`d999fd71 74e3            je      nt! ?? ::FNODOBFM::`string'+0xa7b8 (fffff803`d999fd56)

nt! ?? ::FNODOBFM::`string'+0xa7d5:
fffff803`d999fd73 ebc7            jmp     nt! ?? ::FNODOBFM::`string'+0xa79e (fffff803`d999fd3c)

nt! ?? ::FNODOBFM::`string'+0xa7d7:
fffff803`d999fd75 ff05690c1c00    inc     dword ptr [nt!IoPriorityRegionBoostedCount (fffff803`d9b609e4)]
fffff803`d999fd7b 418bd3          mov     edx,r11d
fffff803`d999fd7e e962d7fbff      jmp     nt!IoPageRead+0x275 (fffff803`d995d4e5)

nt! ?? ::FNODOBFM::`string'+0xa7e5:
fffff803`d999fd83 b903000000      mov     ecx,3
fffff803`d999fd88 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xa7ec:
fffff803`d999fd8a 488b542448      mov     rdx,qword ptr [rsp+48h]
fffff803`d999fd8f 488bcf          mov     rcx,rdi
fffff803`d999fd92 e805070600      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d999fd97 90              nop
fffff803`d999fd98 e9a2d6fbff      jmp     nt!IoPageRead+0x1cf (fffff803`d995d43f)
