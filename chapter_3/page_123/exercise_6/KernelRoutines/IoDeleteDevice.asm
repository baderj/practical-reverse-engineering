nt!IoDeleteDevice:
fffff803`21c9c380 488bc4          mov     rax,rsp
fffff803`21c9c383 48895808        mov     qword ptr [rax+8],rbx
fffff803`21c9c387 48896810        mov     qword ptr [rax+10h],rbp
fffff803`21c9c38b 48897018        mov     qword ptr [rax+18h],rsi
fffff803`21c9c38f 48897820        mov     qword ptr [rax+20h],rdi
fffff803`21c9c393 4156            push    r14
fffff803`21c9c395 4883ec20        sub     rsp,20h
fffff803`21c9c399 33ed            xor     ebp,ebp
fffff803`21c9c39b 488bd9          mov     rbx,rcx
fffff803`21c9c39e 48392dabd32600  cmp     qword ptr [nt!ViVerifierDriverAddedThunkListHead (fffff803`21f09750)],rbp
fffff803`21c9c3a5 0f8591000000    jne     nt!IoDeleteDevice+0xbc (fffff803`21c9c43c)

nt!IoDeleteDevice+0x2b:
fffff803`21c9c3ab 488bcb          mov     rcx,rbx
fffff803`21c9c3ae e879363c00      call    nt!IoDeleteAllDependencyRelations (fffff803`2205fa2c)
fffff803`21c9c3b3 f7433000080000  test    dword ptr [rbx+30h],800h
fffff803`21c9c3ba 0f85d8901a00    jne     nt! ?? ::FNODOBFM::`string'+0xa984 (fffff803`21e45498)

nt!IoDeleteDevice+0x40:
fffff803`21c9c3c0 488b7b28        mov     rdi,qword ptr [rbx+28h]
fffff803`21c9c3c4 41be02000000    mov     r14d,2
fffff803`21c9c3ca 4885ff          test    rdi,rdi
fffff803`21c9c3cd 0f85d3901a00    jne     nt! ?? ::FNODOBFM::`string'+0xa992 (fffff803`21e454a6)

nt!IoDeleteDevice+0x53:
fffff803`21c9c3d3 8b4330          mov     eax,dword ptr [rbx+30h]
fffff803`21c9c3d6 a840            test    al,40h
fffff803`21c9c3d8 7558            jne     nt!IoDeleteDevice+0xb2 (fffff803`21c9c432)

nt!IoDeleteDevice+0x5a:
fffff803`21c9c3da 488bcb          mov     rcx,rbx
fffff803`21c9c3dd e8a2020000      call    nt!PoRunDownDeviceObject (fffff803`21c9c684)
fffff803`21c9c3e2 bf0a000000      mov     edi,0Ah
fffff803`21c9c3e7 8bcf            mov     ecx,edi
fffff803`21c9c3e9 e8d2540800      call    nt!KeAcquireQueuedSpinLock (fffff803`21d218c0)
fffff803`21c9c3ee 488b8b38010000  mov     rcx,qword ptr [rbx+138h]
fffff803`21c9c3f5 44097120        or      dword ptr [rcx+20h],r14d
fffff803`21c9c3f9 396b04          cmp     dword ptr [rbx+4],ebp
fffff803`21c9c3fc 7528            jne     nt!IoDeleteDevice+0xa6 (fffff803`21c9c426)

nt!IoDeleteDevice+0x7e:
fffff803`21c9c3fe 448ac0          mov     r8b,al
fffff803`21c9c401 33d2            xor     edx,edx
fffff803`21c9c403 488bcb          mov     rcx,rbx
fffff803`21c9c406 e8d5dfffff      call    nt!IopCompleteUnloadOrDelete (fffff803`21c9a3e0)

nt!IoDeleteDevice+0x8b:
fffff803`21c9c40b 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21c9c410 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`21c9c415 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`21c9c41a 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff803`21c9c41f 4883c420        add     rsp,20h
fffff803`21c9c423 415e            pop     r14
fffff803`21c9c425 c3              ret

nt!IoDeleteDevice+0xa6:
fffff803`21c9c426 8ad0            mov     dl,al
fffff803`21c9c428 488bcf          mov     rcx,rdi
fffff803`21c9c42b e800200900      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21c9c430 ebd9            jmp     nt!IoDeleteDevice+0x8b (fffff803`21c9c40b)

nt!IoDeleteDevice+0xb2:
fffff803`21c9c432 488bcb          mov     rcx,rbx
fffff803`21c9c435 e822c03900      call    nt!ObMakeTemporaryObject (fffff803`2203845c)
fffff803`21c9c43a eb9e            jmp     nt!IoDeleteDevice+0x5a (fffff803`21c9c3da)

nt!IoDeleteDevice+0xbc:
fffff803`21c9c43c e8bf626100      call    nt!IovDeleteDevice (fffff803`222b2700)
fffff803`21c9c441 e965ffffff      jmp     nt!IoDeleteDevice+0x2b (fffff803`21c9c3ab)

nt!IopBuildDeviceIoControlRequest+0xec:
fffff803`21d5792c 488b8424a0000000 mov     rax,qword ptr [rsp+0A0h]
fffff803`21d57934 48894348        mov     qword ptr [rbx+48h],rax
fffff803`21d57938 488b842498000000 mov     rax,qword ptr [rsp+98h]
fffff803`21d57940 48894350        mov     qword ptr [rbx+50h],rax
fffff803`21d57944 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21d5794d 48898398000000  mov     qword ptr [rbx+98h],rax
fffff803`21d57954 488db0d0030000  lea     rsi,[rax+3D0h]
fffff803`21d5795b 4c8d7320        lea     r14,[rbx+20h]
fffff803`21d5795f 488db898040000  lea     rdi,[rax+498h]
fffff803`21d57966 450f20c7        mov     r15,cr8
fffff803`21d5796a 41bc02000000    mov     r12d,2
fffff803`21d57970 450f22c4        mov     cr8,r12
fffff803`21d57974 f7050627270000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d5797e 0f8544dc0e00    jne     nt! ?? ::FNODOBFM::`string'+0xaab4 (fffff803`21e455c8)

nt!IopBuildDeviceIoControlRequest+0x144:
fffff803`21d57984 f0480fba2f00    lock bts qword ptr [rdi],0
fffff803`21d5798a 0f8246dc0e00    jb      nt! ?? ::FNODOBFM::`string'+0xaac2 (fffff803`21e455d6)

nt!IopBuildDeviceIoControlRequest+0x150:
fffff803`21d57990 488b06          mov     rax,qword ptr [rsi]
fffff803`21d57993 498906          mov     qword ptr [r14],rax
fffff803`21d57996 49897608        mov     qword ptr [r14+8],rsi
fffff803`21d5799a 48397008        cmp     qword ptr [rax+8],rsi
fffff803`21d5799e 0f8540dc0e00    jne     nt! ?? ::FNODOBFM::`string'+0xaad0 (fffff803`21e455e4)

nt!IopBuildDeviceIoControlRequest+0x164:
fffff803`21d579a4 4c897008        mov     qword ptr [rax+8],r14
fffff803`21d579a8 4c8936          mov     qword ptr [rsi],r14
fffff803`21d579ab f705cf26270000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d579b5 0f8530dc0e00    jne     nt! ?? ::FNODOBFM::`string'+0xaad7 (fffff803`21e455eb)

nt!IopBuildDeviceIoControlRequest+0x17b:
fffff803`21d579bb f048832700      lock and qword ptr [rdi],0

nt!IopBuildDeviceIoControlRequest+0x180:
fffff803`21d579c0 410fb6c7        movzx   eax,r15b
fffff803`21d579c4 440f22c0        mov     cr8,rax
fffff803`21d579c8 4c8b8398000000  mov     r8,qword ptr [rbx+98h]
fffff803`21d579cf 418b902c040000  mov     edx,dword ptr [r8+42Ch]
fffff803`21d579d6 c1ea09          shr     edx,9
fffff803`21d579d9 83e207          and     edx,7
fffff803`21d579dc 498b8020020000  mov     rax,qword ptr [r8+220h]
fffff803`21d579e3 f780fc02000000001000 test dword ptr [rax+2FCh],100000h
fffff803`21d579ed 7549            jne     nt!IopBuildDeviceIoControlRequest+0x1f8 (fffff803`21d57a38)

nt!IopBuildDeviceIoControlRequest+0x1af:
fffff803`21d579ef 413bd4          cmp     edx,r12d
fffff803`21d579f2 7c4a            jl      nt!IopBuildDeviceIoControlRequest+0x1fe (fffff803`21d57a3e)

nt!IopBuildDeviceIoControlRequest+0x1b4:
fffff803`21d579f4 c1e211          shl     edx,11h
fffff803`21d579f7 81c200000200    add     edx,20000h
fffff803`21d579fd 8b4310          mov     eax,dword ptr [rbx+10h]
fffff803`21d57a00 25fffff1ff      and     eax,0FFF1FFFFh
fffff803`21d57a05 0bd0            or      edx,eax
fffff803`21d57a07 895310          mov     dword ptr [rbx+10h],edx
fffff803`21d57a0a 488bc3          mov     rax,rbx

nt!IopBuildDeviceIoControlRequest+0x1cd:
fffff803`21d57a0d 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff803`21d57a12 488b742478      mov     rsi,qword ptr [rsp+78h]
fffff803`21d57a17 4883c430        add     rsp,30h
fffff803`21d57a1b 415f            pop     r15
fffff803`21d57a1d 415e            pop     r14
fffff803`21d57a1f 415d            pop     r13
fffff803`21d57a21 415c            pop     r12
fffff803`21d57a23 5f              pop     rdi
fffff803`21d57a24 c3              ret

nt!IopBuildDeviceIoControlRequest+0x1f8:
fffff803`21d57a38 85d2            test    edx,edx
fffff803`21d57a3a 78b3            js      nt!IopBuildDeviceIoControlRequest+0x1af (fffff803`21d579ef)

nt!IopBuildDeviceIoControlRequest+0x1fc:
fffff803`21d57a3c 33d2            xor     edx,edx

nt!IopBuildDeviceIoControlRequest+0x1fe:
fffff803`21d57a3e 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21d57a47 4c3bc0          cmp     r8,rax
fffff803`21d57a4a 75a8            jne     nt!IopBuildDeviceIoControlRequest+0x1b4 (fffff803`21d579f4)

nt!IopBuildDeviceIoControlRequest+0x20c:
fffff803`21d57a4c 4183b86c04000000 cmp     dword ptr [r8+46Ch],0
fffff803`21d57a54 0f8540010000    jne     nt!IopBuildDeviceIoControlRequest+0x35a (fffff803`21d57b9a)

nt!IopBuildDeviceIoControlRequest+0x21a:
fffff803`21d57a5a 4180b83704000000 cmp     byte ptr [r8+437h],0
fffff803`21d57a62 7490            je      nt!IopBuildDeviceIoControlRequest+0x1b4 (fffff803`21d579f4)

nt!IopBuildDeviceIoControlRequest+0x224:
fffff803`21d57a64 e995db0e00      jmp     nt! ?? ::FNODOBFM::`string'+0xaaea (fffff803`21e455fe)

nt!IopBuildDeviceIoControlRequest+0x28a:
fffff803`21d57aca 48894318        mov     qword ptr [rbx+18h],rax
fffff803`21d57ace 4885c0          test    rax,rax
fffff803`21d57ad1 0f84c3da0e00    je      nt! ?? ::FNODOBFM::`string'+0xaa86 (fffff803`21e4559a)

nt!IopBuildDeviceIoControlRequest+0x297:
fffff803`21d57ad7 4d8bc6          mov     r8,r14
fffff803`21d57ada 498bd4          mov     rdx,r12
fffff803`21d57add 488bc8          mov     rcx,rax
fffff803`21d57ae0 e81bf7f6ff      call    nt!memcpy (fffff803`21cc7200)
fffff803`21d57ae5 c7431030000000  mov     dword ptr [rbx+10h],30h
fffff803`21d57aec 488b8c2480000000 mov     rcx,qword ptr [rsp+80h]
fffff803`21d57af4 4885c9          test    rcx,rcx
fffff803`21d57af7 0f842ffeffff    je      nt!IopBuildDeviceIoControlRequest+0xec (fffff803`21d5792c)

nt!IopBuildDeviceIoControlRequest+0x2bd:
fffff803`21d57afd 48c744242000000000 mov   qword ptr [rsp+20h],0
fffff803`21d57b06 4533c9          xor     r9d,r9d
fffff803`21d57b09 4533c0          xor     r8d,r8d
fffff803`21d57b0c 8bd6            mov     edx,esi
fffff803`21d57b0e e87d51fcff      call    nt!IoAllocateMdl (fffff803`21d1cc90)
fffff803`21d57b13 48894308        mov     qword ptr [rbx+8],rax
fffff803`21d57b17 4885c0          test    rax,rax
fffff803`21d57b1a 0f846ada0e00    je      nt! ?? ::FNODOBFM::`string'+0xaa76 (fffff803`21e4558a)

nt!IopBuildDeviceIoControlRequest+0x2e0:
fffff803`21d57b20 4183ff01        cmp     r15d,1
fffff803`21d57b24 7407            je      nt!IopBuildDeviceIoControlRequest+0x2ed (fffff803`21d57b2d)

nt!IopBuildDeviceIoControlRequest+0x2e6:
fffff803`21d57b26 ba01000000      mov     edx,1
fffff803`21d57b2b eb02            jmp     nt!IopBuildDeviceIoControlRequest+0x2ef (fffff803`21d57b2f)

nt!IopBuildDeviceIoControlRequest+0x2ed:
fffff803`21d57b2d 33d2            xor     edx,edx

nt!IopBuildDeviceIoControlRequest+0x2ef:
fffff803`21d57b2f 440fb64fb8      movzx   r9d,byte ptr [rdi-48h]
fffff803`21d57b34 4d8bc5          mov     r8,r13
fffff803`21d57b37 488bc8          mov     rcx,rax
fffff803`21d57b3a e88168f6ff      call    nt!IopBuildAsynchronousFsdRequest+0x1e0 (fffff803`21cbe3c0)
fffff803`21d57b3f e9e8fdffff      jmp     nt!IopBuildDeviceIoControlRequest+0xec (fffff803`21d5792c)

nt!IopBuildDeviceIoControlRequest+0x35a:
fffff803`21d57b9a ff05404e1f00    inc     dword ptr [nt!IoThreadBoostedCount (fffff803`21f4c9e0)]
fffff803`21d57ba0 418bd4          mov     edx,r12d
fffff803`21d57ba3 4180b83704000000 cmp     byte ptr [r8+437h],0
fffff803`21d57bab 0f8443feffff    je      nt!IopBuildDeviceIoControlRequest+0x1b4 (fffff803`21d579f4)

nt!IopBuildDeviceIoControlRequest+0x371:
fffff803`21d57bb1 ff05314e1f00    inc     dword ptr [nt!IoBoostedInPriorityRegionCount (fffff803`21f4c9e8)]
fffff803`21d57bb7 e938feffff      jmp     nt!IopBuildDeviceIoControlRequest+0x1b4 (fffff803`21d579f4)

nt! ?? ::FNODOBFM::`string'+0xa984:
fffff803`21e45498 488bcb          mov     rcx,rbx
fffff803`21e4549b e8a0b21900      call    nt!IoUnregisterShutdownNotification (fffff803`21fe0740)
fffff803`21e454a0 90              nop
fffff803`21e454a1 e91a6fe5ff      jmp     nt!IoDeleteDevice+0x40 (fffff803`21c9c3c0)

nt! ?? ::FNODOBFM::`string'+0xa992:
fffff803`21e454a6 440f20c6        mov     rsi,cr8
fffff803`21e454aa 450f22c6        mov     cr8,r14
fffff803`21e454ae f705cc4b180000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21e454b8 740e            je      nt! ?? ::FNODOBFM::`string'+0xa9b4 (fffff803`21e454c8)

nt! ?? ::FNODOBFM::`string'+0xa9a6:
fffff803`21e454ba 488d0d7fde1700  lea     rcx,[nt!IopTimerLock (fffff803`21fc3340)]
fffff803`21e454c1 e8fa6ffaff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e454c6 eb18            jmp     nt! ?? ::FNODOBFM::`string'+0xa9cc (fffff803`21e454e0)

nt! ?? ::FNODOBFM::`string'+0xa9b4:
fffff803`21e454c8 f0480fba2d6ede170000 lock bts qword ptr [nt!IopTimerLock (fffff803`21fc3340)],0
fffff803`21e454d2 730c            jae     nt! ?? ::FNODOBFM::`string'+0xa9cc (fffff803`21e454e0)

nt! ?? ::FNODOBFM::`string'+0xa9c0:
fffff803`21e454d4 488d0d65de1700  lea     rcx,[nt!IopTimerLock (fffff803`21fc3340)]
fffff803`21e454db e8e07de6ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)

nt! ?? ::FNODOBFM::`string'+0xa9cc:
fffff803`21e454e0 488d4708        lea     rax,[rdi+8]
fffff803`21e454e4 488b10          mov     rdx,qword ptr [rax]
fffff803`21e454e7 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21e454eb 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21e454ef 7557            jne     nt! ?? ::FNODOBFM::`string'+0xaa34 (fffff803`21e45548)

nt! ?? ::FNODOBFM::`string'+0xa9dd:
fffff803`21e454f1 483901          cmp     qword ptr [rcx],rax
fffff803`21e454f4 7552            jne     nt! ?? ::FNODOBFM::`string'+0xaa34 (fffff803`21e45548)

nt! ?? ::FNODOBFM::`string'+0xa9e2:
fffff803`21e454f6 488911          mov     qword ptr [rcx],rdx
fffff803`21e454f9 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21e454fd 66396f02        cmp     word ptr [rdi+2],bp
fffff803`21e45501 7406            je      nt! ?? ::FNODOBFM::`string'+0xa9f5 (fffff803`21e45509)

nt! ?? ::FNODOBFM::`string'+0xa9ef:
fffff803`21e45503 ff0d17721000    dec     dword ptr [nt!IopTimerCount (fffff803`21f4c720)]

nt! ?? ::FNODOBFM::`string'+0xa9f5:
fffff803`21e45509 f705714b180000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21e45513 7413            je      nt! ?? ::FNODOBFM::`string'+0xaa14 (fffff803`21e45528)

nt! ?? ::FNODOBFM::`string'+0xaa01:
fffff803`21e45515 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`21e4551a 488d0d1fde1700  lea     rcx,[nt!IopTimerLock (fffff803`21fc3340)]
fffff803`21e45521 e8766ffaff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e45526 eb08            jmp     nt! ?? ::FNODOBFM::`string'+0xaa1c (fffff803`21e45530)

nt! ?? ::FNODOBFM::`string'+0xaa14:
fffff803`21e45528 f048212d10de1700 lock and qword ptr [nt!IopTimerLock (fffff803`21fc3340)],rbp

nt! ?? ::FNODOBFM::`string'+0xaa1c:
fffff803`21e45530 400fb6c6        movzx   eax,sil
fffff803`21e45534 440f22c0        mov     cr8,rax
fffff803`21e45538 33d2            xor     edx,edx
fffff803`21e4553a 488bcf          mov     rcx,rdi
fffff803`21e4553d e81edc0900      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`21e45542 90              nop
fffff803`21e45543 e98b6ee5ff      jmp     nt!IoDeleteDevice+0x53 (fffff803`21c9c3d3)

nt! ?? ::FNODOBFM::`string'+0xaa34:
fffff803`21e45548 b903000000      mov     ecx,3
fffff803`21e4554d cd29            int     29h
fffff803`21e4554f 90              nop
fffff803`21e45550 418bc1          mov     eax,r9d
fffff803`21e45553 4d8bc8          mov     r9,r8
fffff803`21e45556 498bd3          mov     rdx,r11
fffff803`21e45559 4c8bc3          mov     r8,rbx
fffff803`21e4555c b92e010000      mov     ecx,12Eh
fffff803`21e45561 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21e45566 e8d56ee8ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e4556b cc              int     3
fffff803`21e4556c 440fb60d8c980f00 movzx   r9d,byte ptr [nt!MmVerifierData (fffff803`21f3ee00)]
fffff803`21e45574 4183e110        and     r9d,10h
fffff803`21e45578 4183c940        or      r9d,40h
fffff803`21e4557c 41d1e9          shr     r9d,1
fffff803`21e4557f e8ecbbe7ff      call    nt!ExAllocatePoolWithTagPriority (fffff803`21cc1170)
fffff803`21e45584 90              nop
fffff803`21e45585 e94025f1ff      jmp     nt!IopBuildDeviceIoControlRequest+0x28a (fffff803`21d57aca)

nt! ?? ::FNODOBFM::`string'+0xaa76:
fffff803`21e4558a 4d85e4          test    r12,r12
fffff803`21e4558d 740b            je      nt! ?? ::FNODOBFM::`string'+0xaa86 (fffff803`21e4559a)

nt! ?? ::FNODOBFM::`string'+0xaa7b:
fffff803`21e4558f 33d2            xor     edx,edx
fffff803`21e45591 488b4b18        mov     rcx,qword ptr [rbx+18h]
fffff803`21e45595 e8c6db0900      call    nt!ExFreePoolWithTag (fffff803`21ee3160)

nt! ?? ::FNODOBFM::`string'+0xaa86:
fffff803`21e4559a 488bcb          mov     rcx,rbx
fffff803`21e4559d ff15954f1800    call    qword ptr [nt!pIoFreeIrp (fffff803`21fca538)]
fffff803`21e455a3 33c0            xor     eax,eax
fffff803`21e455a5 e96324f1ff      jmp     nt!IopBuildDeviceIoControlRequest+0x1cd (fffff803`21d57a0d)

nt! ?? ::FNODOBFM::`string'+0xaab4:
fffff803`21e455c8 488bcf          mov     rcx,rdi
fffff803`21e455cb e8f06efaff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e455d0 90              nop
fffff803`21e455d1 e9ba23f1ff      jmp     nt!IopBuildDeviceIoControlRequest+0x150 (fffff803`21d57990)

nt! ?? ::FNODOBFM::`string'+0xaac2:
fffff803`21e455d6 488bcf          mov     rcx,rdi
fffff803`21e455d9 e8e27ce6ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21e455de 90              nop
fffff803`21e455df e9ac23f1ff      jmp     nt!IopBuildDeviceIoControlRequest+0x150 (fffff803`21d57990)

nt! ?? ::FNODOBFM::`string'+0xaad0:
fffff803`21e455e4 b903000000      mov     ecx,3
fffff803`21e455e9 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xaad7:
fffff803`21e455eb 488b542458      mov     rdx,qword ptr [rsp+58h]
fffff803`21e455f0 488bcf          mov     rcx,rdi
fffff803`21e455f3 e8a46efaff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e455f8 90              nop
fffff803`21e455f9 e9c223f1ff      jmp     nt!IopBuildDeviceIoControlRequest+0x180 (fffff803`21d579c0)

nt! ?? ::FNODOBFM::`string'+0xaaea:
fffff803`21e455fe ff05e0731000    inc     dword ptr [nt!IoPriorityRegionBoostedCount (fffff803`21f4c9e4)]
fffff803`21e45604 418bd4          mov     edx,r12d
fffff803`21e45607 e9e823f1ff      jmp     nt!IopBuildDeviceIoControlRequest+0x1b4 (fffff803`21d579f4)
