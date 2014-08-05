nt!CcScheduleLazyWriteScan:
fffff803`21ca9280 4883ec38        sub     rsp,38h
fffff803`21ca9284 448a0527a82400  mov     r8b,byte ptr [nt!CcCoalescingState (fffff803`21ef3ab2)]
fffff803`21ca928b 448ac9          mov     r9b,cl
fffff803`21ca928e 4584c0          test    r8b,r8b
fffff803`21ca9291 7549            jne     nt!CcScheduleLazyWriteScan+0x5c (fffff803`21ca92dc)

nt!CcScheduleLazyWriteScan+0x13:
fffff803`21ca9293 84d2            test    dl,dl
fffff803`21ca9295 7530            jne     nt!CcScheduleLazyWriteScan+0x47 (fffff803`21ca92c7)

nt!CcScheduleLazyWriteScan+0x17:
fffff803`21ca9297 418ac0          mov     al,r8b
fffff803`21ca929a f6d8            neg     al
fffff803`21ca929c 1bc9            sbb     ecx,ecx
fffff803`21ca929e 83e10c          and     ecx,0Ch
fffff803`21ca92a1 83c104          add     ecx,4

nt!CcScheduleLazyWriteScan+0x24:
fffff803`21ca92a4 4584c9          test    r9b,r9b
fffff803`21ca92a7 7525            jne     nt!CcScheduleLazyWriteScan+0x4e (fffff803`21ca92ce)

nt!CcScheduleLazyWriteScan+0x29:
fffff803`21ca92a9 44380dd01a2b00  cmp     byte ptr [nt!LazyWriter+0x80 (fffff803`21f5ad80)],r9b
fffff803`21ca92b0 0f848a671900    je      nt! ?? ::FNODOBFM::`string'+0x3b22 (fffff803`21e3fa40)

nt!CcScheduleLazyWriteScan+0x36:
fffff803`21ca92b6 4584c0          test    r8b,r8b
fffff803`21ca92b9 7507            jne     nt!CcScheduleLazyWriteScan+0x42 (fffff803`21ca92c2)

nt!CcScheduleLazyWriteScan+0x3b:
fffff803`21ca92bb c605be1a2b0001  mov     byte ptr [nt!LazyWriter+0x80 (fffff803`21f5ad80)],1

nt!CcScheduleLazyWriteScan+0x42:
fffff803`21ca92c2 4883c438        add     rsp,38h
fffff803`21ca92c6 c3              ret

nt!CcScheduleLazyWriteScan+0x47:
fffff803`21ca92c7 b908000000      mov     ecx,8
fffff803`21ca92cc ebd6            jmp     nt!CcScheduleLazyWriteScan+0x24 (fffff803`21ca92a4)

nt!CcScheduleLazyWriteScan+0x4e:
fffff803`21ca92ce e8cda90c00      call    nt!CcNotifyWriteBehind (fffff803`21d73ca0)

nt!CcScheduleLazyWriteScan+0x53:
fffff803`21ca92d3 448a05d8a72400  mov     r8b,byte ptr [nt!CcCoalescingState (fffff803`21ef3ab2)]
fffff803`21ca92da ebda            jmp     nt!CcScheduleLazyWriteScan+0x36 (fffff803`21ca92b6)

nt!CcScheduleLazyWriteScan+0x5c:
fffff803`21ca92dc 4584c9          test    r9b,r9b
fffff803`21ca92df 74e1            je      nt!CcScheduleLazyWriteScan+0x42 (fffff803`21ca92c2)

nt!CcScheduleLazyWriteScan+0x61:
fffff803`21ca92e1 ebb0            jmp     nt!CcScheduleLazyWriteScan+0x13 (fffff803`21ca9293)

nt!ExpDeleteTimer:
fffff803`21d69b0c 488bc4          mov     rax,rsp
fffff803`21d69b0f 48895808        mov     qword ptr [rax+8],rbx
fffff803`21d69b13 48896810        mov     qword ptr [rax+10h],rbp
fffff803`21d69b17 48897018        mov     qword ptr [rax+18h],rsi
fffff803`21d69b1b 48897820        mov     qword ptr [rax+20h],rdi
fffff803`21d69b1f 4154            push    r12
fffff803`21d69b21 4156            push    r14
fffff803`21d69b23 4157            push    r15
fffff803`21d69b25 4883ec20        sub     rsp,20h
fffff803`21d69b29 4c8db100010000  lea     r14,[rcx+100h]
fffff803`21d69b30 4533ff          xor     r15d,r15d
fffff803`21d69b33 488bf1          mov     rsi,rcx
fffff803`21d69b36 41bc02000000    mov     r12d,2
fffff803`21d69b3c 4d393e          cmp     qword ptr [r14],r15
fffff803`21d69b3f 0f85c9000000    jne     nt!ExpDeleteTimer+0x102 (fffff803`21d69c0e)

nt!ExpDeleteTimer+0x39:
fffff803`21d69b45 488b9e10010000  mov     rbx,qword ptr [rsi+110h]
fffff803`21d69b4c 4885db          test    rbx,rbx
fffff803`21d69b4f 7549            jne     nt!ExpDeleteTimer+0x8e (fffff803`21d69b9a)

nt!ExpDeleteTimer+0x45:
fffff803`21d69b51 440f20c3        mov     rbx,cr8
fffff803`21d69b55 450f22c4        mov     cr8,r12
fffff803`21d69b59 b201            mov     dl,1
fffff803`21d69b5b 488bce          mov     rcx,rsi
fffff803`21d69b5e e8fdbbf8ff      call    nt!KiCancelTimer (fffff803`21cf5760)
fffff803`21d69b63 440fb6db        movzx   r11d,bl
fffff803`21d69b67 450f22c3        mov     cr8,r11
fffff803`21d69b6b 4484a6f4000000  test    byte ptr [rsi+0F4h],r12b
fffff803`21d69b72 751f            jne     nt!ExpDeleteTimer+0x87 (fffff803`21d69b93)

nt!ExpDeleteTimer+0x68:
fffff803`21d69b74 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d69b79 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`21d69b7e 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`21d69b83 488b7c2458      mov     rdi,qword ptr [rsp+58h]
fffff803`21d69b88 4883c420        add     rsp,20h
fffff803`21d69b8c 415f            pop     r15
fffff803`21d69b8e 415e            pop     r14
fffff803`21d69b90 415c            pop     r12
fffff803`21d69b92 c3              ret

nt!ExpDeleteTimer+0x87:
fffff803`21d69b93 e8d835f3ff      call    nt!KeFlushQueuedDpcs (fffff803`21c9d170)
fffff803`21d69b98 ebda            jmp     nt!ExpDeleteTimer+0x68 (fffff803`21d69b74)

nt!ExpDeleteTimer+0x8e:
fffff803`21d69b9a 488dbe18010000  lea     rdi,[rsi+118h]
fffff803`21d69ba1 4881c388040000  add     rbx,488h
fffff803`21d69ba8 440f20c5        mov     rbp,cr8
fffff803`21d69bac 450f22c4        mov     cr8,r12
fffff803`21d69bb0 f705ca04260000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21d69bba 0f85a8a90100    jne     nt! ?? ::FNODOBFM::`string'+0x4e408 (fffff803`21d84568)

nt!ExpDeleteTimer+0xb4:
fffff803`21d69bc0 f0480fba2b00    lock bts qword ptr [rbx],0
fffff803`21d69bc6 0f82aaa90100    jb      nt! ?? ::FNODOBFM::`string'+0x4e416 (fffff803`21d84576)

nt!ExpDeleteTimer+0xc0:
fffff803`21d69bcc 488b0f          mov     rcx,qword ptr [rdi]
fffff803`21d69bcf 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`21d69bd3 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`21d69bd7 0f85baa90100    jne     nt! ?? ::FNODOBFM::`string'+0x4e437 (fffff803`21d84597)

nt!ExpDeleteTimer+0xd1:
fffff803`21d69bdd 483938          cmp     qword ptr [rax],rdi
fffff803`21d69be0 0f85b1a90100    jne     nt! ?? ::FNODOBFM::`string'+0x4e437 (fffff803`21d84597)

nt!ExpDeleteTimer+0xda:
fffff803`21d69be6 488908          mov     qword ptr [rax],rcx
fffff803`21d69be9 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d69bed f7058d04260000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21d69bf7 0f8587a90100    jne     nt! ?? ::FNODOBFM::`string'+0x4e424 (fffff803`21d84584)

nt!ExpDeleteTimer+0xf1:
fffff803`21d69bfd f04c213b        lock and qword ptr [rbx],r15

nt!ExpDeleteTimer+0xf5:
fffff803`21d69c01 400fb6c5        movzx   eax,bpl
fffff803`21d69c05 440f22c0        mov     cr8,rax
fffff803`21d69c09 e943ffffff      jmp     nt!ExpDeleteTimer+0x45 (fffff803`21d69b51)

nt!ExpDeleteTimer+0x102:
fffff803`21d69c0e 488ba9f8000000  mov     rbp,qword ptr [rcx+0F8h]
fffff803`21d69c15 65488b3c2588010000 mov   rdi,qword ptr gs:[188h]
fffff803`21d69c1e 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh
fffff803`21d69c22 66019fe4010000  add     word ptr [rdi+1E4h],bx
fffff803`21d69c29 f0480fba2d4d96190000 lock bts qword ptr [nt!ExpWakeTimerLock (fffff803`21f03280)],0
fffff803`21d69c33 7266            jb      nt!ExpDeleteTimer+0x18f (fffff803`21d69c9b)

nt!ExpDeleteTimer+0x129:
fffff803`21d69c35 498b16          mov     rdx,qword ptr [r14]
fffff803`21d69c38 498b4608        mov     rax,qword ptr [r14+8]
fffff803`21d69c3c 4c397208        cmp     qword ptr [rdx+8],r14
fffff803`21d69c40 7567            jne     nt!ExpDeleteTimer+0x19d (fffff803`21d69ca9)

nt!ExpDeleteTimer+0x136:
fffff803`21d69c42 4c3930          cmp     qword ptr [rax],r14
fffff803`21d69c45 7562            jne     nt!ExpDeleteTimer+0x19d (fffff803`21d69ca9)

nt!ExpDeleteTimer+0x13b:
fffff803`21d69c47 488910          mov     qword ptr [rax],rdx
fffff803`21d69c4a 48894208        mov     qword ptr [rdx+8],rax
fffff803`21d69c4e f0480fc11d29961900 lock xadd qword ptr [nt!ExpWakeTimerLock (fffff803`21f03280)],rbx
fffff803`21d69c57 4184dc          test    r12b,bl
fffff803`21d69c5a 0f85d4a80100    jne     nt! ?? ::FNODOBFM::`string'+0x4e3d4 (fffff803`21d84534)

nt!ExpDeleteTimer+0x154:
fffff803`21d69c60 0fbf87e4010000  movsx   eax,word ptr [rdi+1E4h]
fffff803`21d69c67 ffc0            inc     eax
fffff803`21d69c69 668987e4010000  mov     word ptr [rdi+1E4h],ax
fffff803`21d69c70 6685c0          test    ax,ax
fffff803`21d69c73 7510            jne     nt!ExpDeleteTimer+0x179 (fffff803`21d69c85)

nt!ExpDeleteTimer+0x169:
fffff803`21d69c75 488d8798000000  lea     rax,[rdi+98h]
fffff803`21d69c7c 483900          cmp     qword ptr [rax],rax
fffff803`21d69c7f 0f85caa80100    jne     nt! ?? ::FNODOBFM::`string'+0x4e3ef (fffff803`21d8454f)

nt!ExpDeleteTimer+0x179:
fffff803`21d69c85 4885ed          test    rbp,rbp
fffff803`21d69c88 0f84b7feffff    je      nt!ExpDeleteTimer+0x39 (fffff803`21d69b45)

nt!ExpDeleteTimer+0x182:
fffff803`21d69c8e 488bcd          mov     rcx,rbp
fffff803`21d69c91 e84e41f4ff      call    nt!PoDestroyReasonContext (fffff803`21cadde4)
fffff803`21d69c96 e9aafeffff      jmp     nt!ExpDeleteTimer+0x39 (fffff803`21d69b45)

nt!ExpDeleteTimer+0x18f:
fffff803`21d69c9b 488d0dde951900  lea     rcx,[nt!ExpWakeTimerLock (fffff803`21f03280)]
fffff803`21d69ca2 e85977feff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`21d69ca7 eb8c            jmp     nt!ExpDeleteTimer+0x129 (fffff803`21d69c35)

nt!ExpDeleteTimer+0x19d:
fffff803`21d69ca9 b903000000      mov     ecx,3
fffff803`21d69cae cd29            int     29h
fffff803`21d69cb0 e987a00000      jmp     nt!CcRescheduleLazyWriteScan (fffff803`21d73d3c)

nt!CcRescheduleLazyWriteScan:
fffff803`21d73d3c 4883ec38        sub     rsp,38h
fffff803`21d73d40 803d6bfd170000  cmp     byte ptr [nt!CcCoalescingState (fffff803`21ef3ab2)],0
fffff803`21d73d47 7531            jne     nt!CcRescheduleLazyWriteScan+0x3e (fffff803`21d73d7a)

nt!CcRescheduleLazyWriteScan+0xd:
fffff803`21d73d49 803d30701e0000  cmp     byte ptr [nt!LazyWriter+0x80 (fffff803`21f5ad80)],0
fffff803`21d73d50 742d            je      nt!CcRescheduleLazyWriteScan+0x43 (fffff803`21d73d7f)

nt!CcRescheduleLazyWriteScan+0x16:
fffff803`21d73d52 488b15472a1700  mov     rdx,qword ptr [nt!CcIdleDelay (fffff803`21ee67a0)]
fffff803`21d73d59 488d05a06f1e00  lea     rax,[nt!LazyWriter (fffff803`21f5ad00)]
fffff803`21d73d60 488d0dd96f1e00  lea     rcx,[nt!LazyWriter+0x40 (fffff803`21f5ad40)]
fffff803`21d73d67 41b9e8030000    mov     r9d,3E8h
fffff803`21d73d6d 4533c0          xor     r8d,r8d
fffff803`21d73d70 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21d73d75 e8e6bbfaff      call    nt!KeSetCoalescableTimer (fffff803`21d1f960)

nt!CcRescheduleLazyWriteScan+0x3e:
fffff803`21d73d7a 4883c438        add     rsp,38h
fffff803`21d73d7e c3              ret

nt!CcRescheduleLazyWriteScan+0x43:
fffff803`21d73d7f 33d2            xor     edx,edx
fffff803`21d73d81 33c9            xor     ecx,ecx
fffff803`21d73d83 4883c438        add     rsp,38h
fffff803`21d73d87 e9f454f3ff      jmp     nt!CcScheduleLazyWriteScan (fffff803`21ca9280)

nt! ?? ::FNODOBFM::`string'+0x4e3d4:
fffff803`21d84534 f6c304          test    bl,4
fffff803`21d84537 0f852357feff    jne     nt!ExpDeleteTimer+0x154 (fffff803`21d69c60)

nt! ?? ::FNODOBFM::`string'+0x4e3dd:
fffff803`21d8453d 488d0d3ced1700  lea     rcx,[nt!ExpWakeTimerLock (fffff803`21f03280)]
fffff803`21d84544 e8cb0afdff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)
fffff803`21d84549 90              nop
fffff803`21d8454a e91157feff      jmp     nt!ExpDeleteTimer+0x154 (fffff803`21d69c60)

nt! ?? ::FNODOBFM::`string'+0x4e3ef:
fffff803`21d8454f 664439bfe6010000 cmp     word ptr [rdi+1E6h],r15w
fffff803`21d84557 0f852857feff    jne     nt!ExpDeleteTimer+0x179 (fffff803`21d69c85)

nt! ?? ::FNODOBFM::`string'+0x4e3fd:
fffff803`21d8455d e89e52feff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`21d84562 90              nop
fffff803`21d84563 e91d57feff      jmp     nt!ExpDeleteTimer+0x179 (fffff803`21d69c85)

nt! ?? ::FNODOBFM::`string'+0x4e408:
fffff803`21d84568 488bcb          mov     rcx,rbx
fffff803`21d8456b e8507f0600      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21d84570 90              nop
fffff803`21d84571 e95656feff      jmp     nt!ExpDeleteTimer+0xc0 (fffff803`21d69bcc)

nt! ?? ::FNODOBFM::`string'+0x4e416:
fffff803`21d84576 488bcb          mov     rcx,rbx
fffff803`21d84579 e8428df2ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21d8457e 90              nop
fffff803`21d8457f e94856feff      jmp     nt!ExpDeleteTimer+0xc0 (fffff803`21d69bcc)

nt! ?? ::FNODOBFM::`string'+0x4e424:
fffff803`21d84584 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`21d84589 488bcb          mov     rcx,rbx
fffff803`21d8458c e80b7f0600      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21d84591 90              nop
fffff803`21d84592 e96a56feff      jmp     nt!ExpDeleteTimer+0xf5 (fffff803`21d69c01)

nt! ?? ::FNODOBFM::`string'+0x4e437:
fffff803`21d84597 b903000000      mov     ecx,3
fffff803`21d8459c cd29            int     29h
fffff803`21d8459e 90              nop
fffff803`21d8459f 90              nop
fffff803`21d845a0 4c8bdc          mov     r11,rsp
fffff803`21d845a3 53              push    rbx
fffff803`21d845a4 4883ec60        sub     rsp,60h
fffff803`21d845a8 498d4320        lea     rax,[r11+20h]
fffff803`21d845ac 488bda          mov     rbx,rdx
fffff803`21d845af 33d2            xor     edx,edx
fffff803`21d845b1 498953e0        mov     qword ptr [r11-20h],rdx
fffff803`21d845b5 498953d8        mov     qword ptr [r11-28h],rdx
fffff803`21d845b9 498943d0        mov     qword ptr [r11-30h],rax
fffff803`21d845bd 498d4310        lea     rax,[r11+10h]
fffff803`21d845c1 4d8d4be8        lea     r9,[r11-18h]
fffff803`21d845c5 4533c0          xor     r8d,r8d
fffff803`21d845c8 498943c8        mov     qword ptr [r11-38h],rax
fffff803`21d845cc 498d43f0        lea     rax,[r11-10h]
fffff803`21d845d0 498953c0        mov     qword ptr [r11-40h],rdx
fffff803`21d845d4 498943b8        mov     qword ptr [r11-48h],rax
fffff803`21d845d8 e82356f2ff      call    nt!PpmSnapPerformanceAccumulation (fffff803`21ca9c00)
fffff803`21d845dd 8b0d955b2400    mov     ecx,dword ptr [nt!PpmPerformanceCounterShift (fffff803`21fca178)]
fffff803`21d845e3 488b842488000000 mov     rax,qword ptr [rsp+88h]
fffff803`21d845eb 4c8b5c2478      mov     r11,qword ptr [rsp+78h]
fffff803`21d845f0 48d3e8          shr     rax,cl
fffff803`21d845f3 49d3eb          shr     r11,cl
fffff803`21d845f6 48894310        mov     qword ptr [rbx+10h],rax
fffff803`21d845fa 488b442450      mov     rax,qword ptr [rsp+50h]
fffff803`21d845ff 4c895b08        mov     qword ptr [rbx+8],r11
fffff803`21d84603 48d3e8          shr     rax,cl
fffff803`21d84606 8903            mov     dword ptr [rbx],eax
fffff803`21d84608 488b442458      mov     rax,qword ptr [rsp+58h]
fffff803`21d8460d 48d3e8          shr     rax,cl
fffff803`21d84610 894304          mov     dword ptr [rbx+4],eax
fffff803`21d84613 33c0            xor     eax,eax
fffff803`21d84615 4883c460        add     rsp,60h
fffff803`21d84619 5b              pop     rbx
fffff803`21d8461a c3              ret

nt! ?? ::FNODOBFM::`string'+0x3b22:
fffff803`21e3fa40 488b15616d0a00  mov     rdx,qword ptr [nt!CcFirstDelay (fffff803`21ee67a8)]
fffff803`21e3fa47 488d05b2b21100  lea     rax,[nt!LazyWriter (fffff803`21f5ad00)]
fffff803`21e3fa4e 488d0debb21100  lea     rcx,[nt!LazyWriter+0x40 (fffff803`21f5ad40)]
fffff803`21e3fa55 4533c9          xor     r9d,r9d
fffff803`21e3fa58 4533c0          xor     r8d,r8d
fffff803`21e3fa5b 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21e3fa60 e8fb66ebff      call    nt!KiSetTimerEx (fffff803`21cf6160)
fffff803`21e3fa65 90              nop
fffff803`21e3fa66 e96898e6ff      jmp     nt!CcScheduleLazyWriteScan+0x53 (fffff803`21ca92d3)
