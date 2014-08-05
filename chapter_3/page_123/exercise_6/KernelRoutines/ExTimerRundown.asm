nt!ExTimerRundown:
fffff803`21d574a0 488bc4          mov     rax,rsp
fffff803`21d574a3 48895808        mov     qword ptr [rax+8],rbx
fffff803`21d574a7 48896810        mov     qword ptr [rax+10h],rbp
fffff803`21d574ab 48897018        mov     qword ptr [rax+18h],rsi
fffff803`21d574af 48897820        mov     qword ptr [rax+20h],rdi
fffff803`21d574b3 4154            push    r12
fffff803`21d574b5 4156            push    r14
fffff803`21d574b7 4157            push    r15
fffff803`21d574b9 4883ec20        sub     rsp,20h
fffff803`21d574bd 65488b2c2588010000 mov   rbp,qword ptr gs:[188h]
fffff803`21d574c6 488d9d80030000  lea     rbx,[rbp+380h]
fffff803`21d574cd 440f20c6        mov     rsi,cr8
fffff803`21d574d1 b802000000      mov     eax,2
fffff803`21d574d6 440f22c0        mov     cr8,rax
fffff803`21d574da f705a02b270000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d574e4 0f853ab51100    jne     nt! ?? ::FNODOBFM::`string'+0x4e52e (fffff803`21e72a24)

nt!ExTimerRundown+0x4a:
fffff803`21d574ea f0480fba2b00    lock bts qword ptr [rbx],0
fffff803`21d574f0 0f823cb51100    jb      nt! ?? ::FNODOBFM::`string'+0x4e53c (fffff803`21e72a32)

nt!ExTimerRundown+0x56:
fffff803`21d574f6 4c8db588030000  lea     r14,[rbp+388h]

nt!ExTimerRundown+0x5d:
fffff803`21d574fd 498b06          mov     rax,qword ptr [r14]
fffff803`21d57500 493bc6          cmp     rax,r14
fffff803`21d57503 753c            jne     nt!ExTimerRundown+0xa1 (fffff803`21d57541)

nt!ExTimerRundown+0x65:
fffff803`21d57505 f705752b270000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d5750f 0f857db51100    jne     nt! ?? ::FNODOBFM::`string'+0x4e59c (fffff803`21e72a92)

nt!ExTimerRundown+0x75:
fffff803`21d57515 f048832300      lock and qword ptr [rbx],0

nt!ExTimerRundown+0x7a:
fffff803`21d5751a 400fb6c6        movzx   eax,sil
fffff803`21d5751e 440f22c0        mov     cr8,rax
fffff803`21d57522 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d57527 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`21d5752c 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`21d57531 488b7c2458      mov     rdi,qword ptr [rsp+58h]
fffff803`21d57536 4883c420        add     rsp,20h
fffff803`21d5753a 415f            pop     r15
fffff803`21d5753c 415e            pop     r14
fffff803`21d5753e 415c            pop     r12
fffff803`21d57540 c3              ret

nt!ExTimerRundown+0xa1:
fffff803`21d57541 488db820ffffff  lea     rdi,[rax-0E0h]
fffff803`21d57548 ba44666c74      mov     edx,746C6644h
fffff803`21d5754d 488bcf          mov     rcx,rdi
fffff803`21d57550 e893f0feff      call    nt!ObfReferenceObjectWithTag (fffff803`21d465e8)
fffff803`21d57555 f705252b270000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d5755f 0f85dbb41100    jne     nt! ?? ::FNODOBFM::`string'+0x4e54a (fffff803`21e72a40)

nt!ExTimerRundown+0xc5:
fffff803`21d57565 f048832300      lock and qword ptr [rbx],0

nt!ExTimerRundown+0xca:
fffff803`21d5756a 400fb6c6        movzx   eax,sil
fffff803`21d5756e 440f22c0        mov     cr8,rax
fffff803`21d57572 41bf01000000    mov     r15d,1
fffff803`21d57578 488d7740        lea     rsi,[rdi+40h]
fffff803`21d5757c 450f20c4        mov     r12,cr8
fffff803`21d57580 418d4701        lea     eax,[r15+1]
fffff803`21d57584 440f22c0        mov     cr8,rax
fffff803`21d57588 f705f22a270000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d57592 0f85bbb41100    jne     nt! ?? ::FNODOBFM::`string'+0x4e55d (fffff803`21e72a53)

nt!ExTimerRundown+0xf8:
fffff803`21d57598 f0480fba2e00    lock bts qword ptr [rsi],0
fffff803`21d5759e 0f82bdb41100    jb      nt! ?? ::FNODOBFM::`string'+0x4e56b (fffff803`21e72a61)

nt!ExTimerRundown+0x104:
fffff803`21d575a4 f705d62a270000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d575ae 0f85bbb41100    jne     nt! ?? ::FNODOBFM::`string'+0x4e579 (fffff803`21e72a6f)

nt!ExTimerRundown+0x114:
fffff803`21d575b4 f0480fba2b00    lock bts qword ptr [rbx],0
fffff803`21d575ba 0f82bdb41100    jb      nt! ?? ::FNODOBFM::`string'+0x4e587 (fffff803`21e72a7d)

nt!ExTimerRundown+0x120:
fffff803`21d575c0 4484bff4000000  test    byte ptr [rdi+0F4h],r15b
fffff803`21d575c7 7467            je      nt!ExTimerRundown+0x190 (fffff803`21d57630)

nt!ExTimerRundown+0x129:
fffff803`21d575c9 483b6f50        cmp     rbp,qword ptr [rdi+50h]
fffff803`21d575cd 7561            jne     nt!ExTimerRundown+0x190 (fffff803`21d57630)

nt!ExTimerRundown+0x12f:
fffff803`21d575cf 488d87e0000000  lea     rax,[rdi+0E0h]
fffff803`21d575d6 c687f500000000  mov     byte ptr [rdi+0F5h],0
fffff803`21d575dd 488b10          mov     rdx,qword ptr [rax]
fffff803`21d575e0 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21d575e4 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21d575e8 0f859db41100    jne     nt! ?? ::FNODOBFM::`string'+0x4e595 (fffff803`21e72a8b)

nt!ExTimerRundown+0x14e:
fffff803`21d575ee 483901          cmp     qword ptr [rcx],rax
fffff803`21d575f1 0f8594b41100    jne     nt! ?? ::FNODOBFM::`string'+0x4e595 (fffff803`21e72a8b)

nt!ExTimerRundown+0x157:
fffff803`21d575f7 488911          mov     qword ptr [rcx],rdx
fffff803`21d575fa 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21d575fe 80a7f4000000fe  and     byte ptr [rdi+0F4h],0FEh
fffff803`21d57605 488bcf          mov     rcx,rdi
fffff803`21d57608 e883edf9ff      call    nt!KeCancelTimer (fffff803`21cf6390)
fffff803`21d5760d 488d8fa0000000  lea     rcx,[rdi+0A0h]
fffff803`21d57614 e84794f3ff      call    nt!KeRemoveQueueDpc (fffff803`21c90a60)
fffff803`21d57619 488d4f48        lea     rcx,[rdi+48h]
fffff803`21d5761d e86e71f5ff      call    nt!KeRemoveQueueApc (fffff803`21cae790)
fffff803`21d57622 84c0            test    al,al
fffff803`21d57624 b802000000      mov     eax,2
fffff803`21d57629 440f45f8        cmovne  r15d,eax
fffff803`21d5762d 41ffc7          inc     r15d

nt!ExTimerRundown+0x190:
fffff803`21d57630 f7054a2a270000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d5763a 755b            jne     nt!ExTimerRundown+0x1f7 (fffff803`21d57697)

nt!ExTimerRundown+0x19c:
fffff803`21d5763c f048832300      lock and qword ptr [rbx],0

nt!ExTimerRundown+0x1a1:
fffff803`21d57641 f705392a270000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d5764b 7559            jne     nt!ExTimerRundown+0x206 (fffff803`21d576a6)

nt!ExTimerRundown+0x1ad:
fffff803`21d5764d f048832600      lock and qword ptr [rsi],0

nt!ExTimerRundown+0x1b2:
fffff803`21d57652 410fb6c4        movzx   eax,r12b
fffff803`21d57656 440f22c0        mov     cr8,rax
fffff803`21d5765a 418bd7          mov     edx,r15d
fffff803`21d5765d 488bcf          mov     rcx,rdi
fffff803`21d57660 e88ffcfbff      call    nt!ObDereferenceObjectExWithTag (fffff803`21d172f4)
fffff803`21d57665 440f20c6        mov     rsi,cr8
fffff803`21d57669 b802000000      mov     eax,2
fffff803`21d5766e 440f22c0        mov     cr8,rax
fffff803`21d57672 f705082a270000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d5767c 7537            jne     nt!ExTimerRundown+0x215 (fffff803`21d576b5)

nt!ExTimerRundown+0x1de:
fffff803`21d5767e f0480fba2b00    lock bts qword ptr [rbx],0
fffff803`21d57684 0f8373feffff    jae     nt!ExTimerRundown+0x5d (fffff803`21d574fd)

nt!ExTimerRundown+0x1ea:
fffff803`21d5768a 488bcb          mov     rcx,rbx
fffff803`21d5768d e82e5cf5ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21d57692 e966feffff      jmp     nt!ExTimerRundown+0x5d (fffff803`21d574fd)

nt!ExTimerRundown+0x1f7:
fffff803`21d57697 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`21d5769c 488bcb          mov     rcx,rbx
fffff803`21d5769f e8f84d0900      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21d576a4 eb9b            jmp     nt!ExTimerRundown+0x1a1 (fffff803`21d57641)

nt!ExTimerRundown+0x206:
fffff803`21d576a6 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`21d576ab 488bce          mov     rcx,rsi
fffff803`21d576ae e8e94d0900      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21d576b3 eb9d            jmp     nt!ExTimerRundown+0x1b2 (fffff803`21d57652)

nt!ExTimerRundown+0x215:
fffff803`21d576b5 488bcb          mov     rcx,rbx
fffff803`21d576b8 e8034e0900      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21d576bd e93bfeffff      jmp     nt!ExTimerRundown+0x5d (fffff803`21d574fd)

nt! ?? ::FNODOBFM::`string'+0x4e52e:
fffff803`21e72a24 488bcb          mov     rcx,rbx
fffff803`21e72a27 e8949af7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e72a2c 90              nop
fffff803`21e72a2d e9c44aeeff      jmp     nt!ExTimerRundown+0x56 (fffff803`21d574f6)

nt! ?? ::FNODOBFM::`string'+0x4e53c:
fffff803`21e72a32 488bcb          mov     rcx,rbx
fffff803`21e72a35 e886a8e3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21e72a3a 90              nop
fffff803`21e72a3b e9b64aeeff      jmp     nt!ExTimerRundown+0x56 (fffff803`21d574f6)

nt! ?? ::FNODOBFM::`string'+0x4e54a:
fffff803`21e72a40 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`21e72a45 488bcb          mov     rcx,rbx
fffff803`21e72a48 e84f9af7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e72a4d 90              nop
fffff803`21e72a4e e9174beeff      jmp     nt!ExTimerRundown+0xca (fffff803`21d5756a)

nt! ?? ::FNODOBFM::`string'+0x4e55d:
fffff803`21e72a53 488bce          mov     rcx,rsi
fffff803`21e72a56 e8659af7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e72a5b 90              nop
fffff803`21e72a5c e9434beeff      jmp     nt!ExTimerRundown+0x104 (fffff803`21d575a4)

nt! ?? ::FNODOBFM::`string'+0x4e56b:
fffff803`21e72a61 488bce          mov     rcx,rsi
fffff803`21e72a64 e857a8e3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21e72a69 90              nop
fffff803`21e72a6a e9354beeff      jmp     nt!ExTimerRundown+0x104 (fffff803`21d575a4)

nt! ?? ::FNODOBFM::`string'+0x4e579:
fffff803`21e72a6f 488bcb          mov     rcx,rbx
fffff803`21e72a72 e8499af7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e72a77 90              nop
fffff803`21e72a78 e9434beeff      jmp     nt!ExTimerRundown+0x120 (fffff803`21d575c0)

nt! ?? ::FNODOBFM::`string'+0x4e587:
fffff803`21e72a7d 488bcb          mov     rcx,rbx
fffff803`21e72a80 e83ba8e3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21e72a85 90              nop
fffff803`21e72a86 e9354beeff      jmp     nt!ExTimerRundown+0x120 (fffff803`21d575c0)

nt! ?? ::FNODOBFM::`string'+0x4e595:
fffff803`21e72a8b b903000000      mov     ecx,3
fffff803`21e72a90 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4e59c:
fffff803`21e72a92 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`21e72a97 488bcb          mov     rcx,rbx
fffff803`21e72a9a e8fd99f7ff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e72a9f 90              nop
fffff803`21e72aa0 e9754aeeff      jmp     nt!ExTimerRundown+0x7a (fffff803`21d5751a)
