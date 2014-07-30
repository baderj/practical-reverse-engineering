nt!PnpDeviceCompletionQueueGetCompletedRequest:
fffff803`d989f080 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d989f085 57              push    rdi
fffff803`d989f086 4883ec30        sub     rsp,30h
fffff803`d989f08a 488364242000    and     qword ptr [rsp+20h],0
fffff803`d989f090 488d0d31f52b00  lea     rcx,[nt!PnpDeviceCompletionQueue+0x28 (fffff803`d9b5e5c8)]
fffff803`d989f097 4533c9          xor     r9d,r9d
fffff803`d989f09a 4533c0          xor     r8d,r8d
fffff803`d989f09d 33d2            xor     edx,edx
fffff803`d989f09f e80c340800      call    nt!KeWaitForSingleObject (fffff803`d99224b0)
fffff803`d989f0a4 440f20c7        mov     rdi,cr8
fffff803`d989f0a8 b802000000      mov     eax,2
fffff803`d989f0ad 440f22c0        mov     cr8,rax
fffff803`d989f0b1 f705c9ef330000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d989f0bb 7563            jne     nt!PnpDeviceCompletionQueueGetCompletedRequest+0xa0 (fffff803`d989f120)

nt!PnpDeviceCompletionQueueGetCompletedRequest+0x3d:
fffff803`d989f0bd f0480fba2d21f52b0000 lock bts qword ptr [nt!PnpDeviceCompletionQueue+0x48 (fffff803`d9b5e5e8)],0
fffff803`d989f0c7 7265            jb      nt!PnpDeviceCompletionQueueGetCompletedRequest+0xae (fffff803`d989f12e)

nt!PnpDeviceCompletionQueueGetCompletedRequest+0x49:
fffff803`d989f0c9 488b1de8f42b00  mov     rbx,qword ptr [nt!PnpDeviceCompletionQueue+0x18 (fffff803`d9b5e5b8)]
fffff803`d989f0d0 488d0de1f42b00  lea     rcx,[nt!PnpDeviceCompletionQueue+0x18 (fffff803`d9b5e5b8)]
fffff803`d989f0d7 488b03          mov     rax,qword ptr [rbx]
fffff803`d989f0da 48394b08        cmp     qword ptr [rbx+8],rcx
fffff803`d989f0de 755c            jne     nt!PnpDeviceCompletionQueueGetCompletedRequest+0xbc (fffff803`d989f13c)

nt!PnpDeviceCompletionQueueGetCompletedRequest+0x60:
fffff803`d989f0e0 48395808        cmp     qword ptr [rax+8],rbx
fffff803`d989f0e4 7556            jne     nt!PnpDeviceCompletionQueueGetCompletedRequest+0xbc (fffff803`d989f13c)

nt!PnpDeviceCompletionQueueGetCompletedRequest+0x66:
fffff803`d989f0e6 488905cbf42b00  mov     qword ptr [nt!PnpDeviceCompletionQueue+0x18 (fffff803`d9b5e5b8)],rax
fffff803`d989f0ed 48894808        mov     qword ptr [rax+8],rcx
fffff803`d989f0f1 f70589ef330000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d989f0fb 0f8517c91b00    jne     nt! ?? ::FNODOBFM::`string'+0xd5a4 (fffff803`d9a5ba18)

nt!PnpDeviceCompletionQueueGetCompletedRequest+0x81:
fffff803`d989f101 f0488325def42b0000 lock and qword ptr [nt!PnpDeviceCompletionQueue+0x48 (fffff803`d9b5e5e8)],0

nt!PnpDeviceCompletionQueueGetCompletedRequest+0x8a:
fffff803`d989f10a 400fb6cf        movzx   ecx,dil
fffff803`d989f10e 440f22c1        mov     cr8,rcx
fffff803`d989f112 488bc3          mov     rax,rbx
fffff803`d989f115 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d989f11a 4883c430        add     rsp,30h
fffff803`d989f11e 5f              pop     rdi
fffff803`d989f11f c3              ret

nt!PnpDeviceCompletionQueueGetCompletedRequest+0xa0:
fffff803`d989f120 488d0dc1f42b00  lea     rcx,[nt!PnpDeviceCompletionQueue+0x48 (fffff803`d9b5e5e8)]
fffff803`d989f127 e894131600      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d989f12c eb9b            jmp     nt!PnpDeviceCompletionQueueGetCompletedRequest+0x49 (fffff803`d989f0c9)

nt!PnpDeviceCompletionQueueGetCompletedRequest+0xae:
fffff803`d989f12e 488d0db3f42b00  lea     rcx,[nt!PnpDeviceCompletionQueue+0x48 (fffff803`d9b5e5e8)]
fffff803`d989f135 e886210200      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)
fffff803`d989f13a eb8d            jmp     nt!PnpDeviceCompletionQueueGetCompletedRequest+0x49 (fffff803`d989f0c9)

nt!PnpDeviceCompletionQueueGetCompletedRequest+0xbc:
fffff803`d989f13c b903000000      mov     ecx,3
fffff803`d989f141 cd29            int     29h
fffff803`d989f143 90              nop
fffff803`d989f144 90              nop
fffff803`d989f145 90              nop
fffff803`d989f146 90              nop
fffff803`d989f147 90              nop
fffff803`d989f148 90              nop
fffff803`d989f149 90              nop
fffff803`d989f14a 90              nop
fffff803`d989f14b 90              nop
fffff803`d989f14c 90              nop
fffff803`d989f14d 90              nop
fffff803`d989f14e 90              nop
fffff803`d989f14f 90              nop
fffff803`d989f150 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d989f155 57              push    rdi
fffff803`d989f156 4883ec20        sub     rsp,20h
fffff803`d989f15a 803d0f002c0000  cmp     byte ptr [nt!IopErrorLogDisabledThisBoot (fffff803`d9b5f170)],0
fffff803`d989f161 488d59d0        lea     rbx,[rcx-30h]
fffff803`d989f165 0f85892b1300    jne     nt! ?? ::FNODOBFM::`string'+0xb436 (fffff803`d99d1cf4)

nt!IoWriteErrorLogEntry+0x1b:
fffff803`d989f16b 48a11400000080f7ffff mov rax,qword ptr [FFFFF78000000014h]
fffff803`d989f175 48894328        mov     qword ptr [rbx+28h],rax
fffff803`d989f179 440f20c7        mov     rdi,cr8
fffff803`d989f17d b802000000      mov     eax,2
fffff803`d989f182 440f22c0        mov     cr8,rax
fffff803`d989f186 f705f4ee330000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d989f190 0f85982b1300    jne     nt! ?? ::FNODOBFM::`string'+0xb470 (fffff803`d99d1d2e)

nt!IoWriteErrorLogEntry+0x46:
fffff803`d989f196 f0480fba2de081330000 lock bts qword ptr [nt!IopErrorLogLock (fffff803`d9bd7380)],0
fffff803`d989f1a0 0f829a2b1300    jb      nt! ?? ::FNODOBFM::`string'+0xb482 (fffff803`d99d1d40)

nt!IoWriteErrorLogEntry+0x56:
fffff803`d989f1a6 488b055b142c00  mov     rax,qword ptr [nt!IopErrorLogListHead+0x8 (fffff803`d9b60608)]
fffff803`d989f1ad 4883c308        add     rbx,8
fffff803`d989f1b1 488d0d48142c00  lea     rcx,[nt!IopErrorLogListHead (fffff803`d9b60600)]
fffff803`d989f1b8 48894308        mov     qword ptr [rbx+8],rax
fffff803`d989f1bc 48890b          mov     qword ptr [rbx],rcx
fffff803`d989f1bf 483908          cmp     qword ptr [rax],rcx
fffff803`d989f1c2 0f858a2b1300    jne     nt! ?? ::FNODOBFM::`string'+0xb494 (fffff803`d99d1d52)

nt!IoWriteErrorLogEntry+0x78:
fffff803`d989f1c8 803da2ff2b0000  cmp     byte ptr [nt!IopErrorLogSessionPending (fffff803`d9b5f171)],0
fffff803`d989f1cf 488918          mov     qword ptr [rax],rbx
fffff803`d989f1d2 48891d2f142c00  mov     qword ptr [nt!IopErrorLogListHead+0x8 (fffff803`d9b60608)],rbx
fffff803`d989f1d9 7536            jne     nt!IoWriteErrorLogEntry+0xc1 (fffff803`d989f211)

nt!IoWriteErrorLogEntry+0x8b:
fffff803`d989f1db 488325b5ff2b0000 and     qword ptr [nt!IopErrorLogWorkItem+0x18 (fffff803`d9b5f198)],0
fffff803`d989f1e3 48832595ff2b0000 and     qword ptr [nt!IopErrorLogWorkItem (fffff803`d9b5f180)],0
fffff803`d989f1eb 488d05e6973a00  lea     rax,[nt!IopErrorLogThread (fffff803`d9c489d8)]
fffff803`d989f1f2 488d0d87ff2b00  lea     rcx,[nt!IopErrorLogWorkItem (fffff803`d9b5f180)]
fffff803`d989f1f9 ba01000000      mov     edx,1
fffff803`d989f1fe 4889058bff2b00  mov     qword ptr [nt!IopErrorLogWorkItem+0x10 (fffff803`d9b5f190)],rax
fffff803`d989f205 c60565ff2b0001  mov     byte ptr [nt!IopErrorLogSessionPending (fffff803`d9b5f171)],1
fffff803`d989f20c e8bfa40700      call    nt!ExQueueWorkItem (fffff803`d99196d0)

nt!IoWriteErrorLogEntry+0xc1:
fffff803`d989f211 f70569ee330000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d989f21b 0f85382b1300    jne     nt! ?? ::FNODOBFM::`string'+0xb49b (fffff803`d99d1d59)

nt!IoWriteErrorLogEntry+0xd1:
fffff803`d989f221 f04883255681330000 lock and qword ptr [nt!IopErrorLogLock (fffff803`d9bd7380)],0

nt!IoWriteErrorLogEntry+0xda:
fffff803`d989f22a 400fb6c7        movzx   eax,dil
fffff803`d989f22e 440f22c0        mov     cr8,rax

nt!IoWriteErrorLogEntry+0xe2:
fffff803`d989f232 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d989f237 4883c420        add     rsp,20h
fffff803`d989f23b 5f              pop     rdi
fffff803`d989f23c c3              ret

nt! ?? ::FNODOBFM::`string'+0xb436:
fffff803`d99d1cf4 488b4b18        mov     rcx,qword ptr [rbx+18h]
fffff803`d99d1cf8 4885c9          test    rcx,rcx
fffff803`d99d1cfb 7405            je      nt! ?? ::FNODOBFM::`string'+0xb444 (fffff803`d99d1d02)

nt! ?? ::FNODOBFM::`string'+0xb43f:
fffff803`d99d1cfd e8de2ef5ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)

nt! ?? ::FNODOBFM::`string'+0xb444:
fffff803`d99d1d02 488b4b20        mov     rcx,qword ptr [rbx+20h]
fffff803`d99d1d06 4885c9          test    rcx,rcx
fffff803`d99d1d09 7405            je      nt! ?? ::FNODOBFM::`string'+0xb452 (fffff803`d99d1d10)

nt! ?? ::FNODOBFM::`string'+0xb44d:
fffff803`d99d1d0b e8d02ef5ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)

nt! ?? ::FNODOBFM::`string'+0xb452:
fffff803`d99d1d10 0fb74302        movzx   eax,word ptr [rbx+2]
fffff803`d99d1d14 f7d8            neg     eax
fffff803`d99d1d16 f00fc1054aed1800 lock xadd dword ptr [nt!IopErrorLogAllocation (fffff803`d9b60a68)],eax
fffff803`d99d1d1e 33d2            xor     edx,edx
fffff803`d99d1d20 488bcb          mov     rcx,rbx
fffff803`d99d1d23 e838541200      call    nt!ExFreePoolWithTag (fffff803`d9af7160)
fffff803`d99d1d28 90              nop
fffff803`d99d1d29 e904d5ecff      jmp     nt!IoWriteErrorLogEntry+0xe2 (fffff803`d989f232)

nt! ?? ::FNODOBFM::`string'+0xb470:
fffff803`d99d1d2e 488d0d4b562000  lea     rcx,[nt!IopErrorLogLock (fffff803`d9bd7380)]
fffff803`d99d1d35 e886e70200      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d99d1d3a 90              nop
fffff803`d99d1d3b e966d4ecff      jmp     nt!IoWriteErrorLogEntry+0x56 (fffff803`d989f1a6)

nt! ?? ::FNODOBFM::`string'+0xb482:
fffff803`d99d1d40 488d0d39562000  lea     rcx,[nt!IopErrorLogLock (fffff803`d9bd7380)]
fffff803`d99d1d47 e874f5eeff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)
fffff803`d99d1d4c 90              nop
fffff803`d99d1d4d e954d4ecff      jmp     nt!IoWriteErrorLogEntry+0x56 (fffff803`d989f1a6)

nt! ?? ::FNODOBFM::`string'+0xb494:
fffff803`d99d1d52 b903000000      mov     ecx,3
fffff803`d99d1d57 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xb49b:
fffff803`d99d1d59 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`d99d1d5e 488d0d1b562000  lea     rcx,[nt!IopErrorLogLock (fffff803`d9bd7380)]
fffff803`d99d1d65 e832e70200      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d99d1d6a 90              nop
fffff803`d99d1d6b e9bad4ecff      jmp     nt!IoWriteErrorLogEntry+0xda (fffff803`d989f22a)

nt! ?? ::FNODOBFM::`string'+0xd5a4:
fffff803`d9a5ba18 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`d9a5ba1d 488d0dc42b1000  lea     rcx,[nt!PnpDeviceCompletionQueue+0x48 (fffff803`d9b5e5e8)]
fffff803`d9a5ba24 e8734afaff      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d9a5ba29 90              nop
fffff803`d9a5ba2a e9db36e4ff      jmp     nt!PnpDeviceCompletionQueueGetCompletedRequest+0x8a (fffff803`d989f10a)
