nt!KeDeregisterBugCheckCallback:
fffff803`21dee3b8 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21dee3bd 4889742410      mov     qword ptr [rsp+10h],rsi
fffff803`21dee3c2 57              push    rdi
fffff803`21dee3c3 4883ec20        sub     rsp,20h
fffff803`21dee3c7 488bd9          mov     rbx,rcx
fffff803`21dee3ca 440f20c6        mov     rsi,cr8
fffff803`21dee3ce b80f000000      mov     eax,0Fh
fffff803`21dee3d3 440f22c0        mov     cr8,rax
fffff803`21dee3d7 f705a3bc1d0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21dee3e1 740e            je      nt!KeDeregisterBugCheckCallback+0x39 (fffff803`21dee3f1)

nt!KeDeregisterBugCheckCallback+0x2b:
fffff803`21dee3e3 488d0d6e791500  lea     rcx,[nt!KeBugCheckCallbackLock (fffff803`21f45d58)]
fffff803`21dee3ea e8d1e0ffff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21dee3ef eb18            jmp     nt!KeDeregisterBugCheckCallback+0x51 (fffff803`21dee409)

nt!KeDeregisterBugCheckCallback+0x39:
fffff803`21dee3f1 f0480fba2d5d79150000 lock bts qword ptr [nt!KeBugCheckCallbackLock (fffff803`21f45d58)],0
fffff803`21dee3fb 730c            jae     nt!KeDeregisterBugCheckCallback+0x51 (fffff803`21dee409)

nt!KeDeregisterBugCheckCallback+0x45:
fffff803`21dee3fd 488d0d54791500  lea     rcx,[nt!KeBugCheckCallbackLock (fffff803`21f45d58)]
fffff803`21dee404 e8b7eeebff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)

nt!KeDeregisterBugCheckCallback+0x51:
fffff803`21dee409 4032ff          xor     dil,dil
fffff803`21dee40c 807b3801        cmp     byte ptr [rbx+38h],1
fffff803`21dee410 7520            jne     nt!KeDeregisterBugCheckCallback+0x7a (fffff803`21dee432)

nt!KeDeregisterBugCheckCallback+0x5a:
fffff803`21dee412 488b0b          mov     rcx,qword ptr [rbx]
fffff803`21dee415 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`21dee419 40887b38        mov     byte ptr [rbx+38h],dil
fffff803`21dee41d 48395908        cmp     qword ptr [rcx+8],rbx
fffff803`21dee421 752e            jne     nt!KeDeregisterBugCheckCallback+0x99 (fffff803`21dee451)

nt!KeDeregisterBugCheckCallback+0x6b:
fffff803`21dee423 483918          cmp     qword ptr [rax],rbx
fffff803`21dee426 7529            jne     nt!KeDeregisterBugCheckCallback+0x99 (fffff803`21dee451)

nt!KeDeregisterBugCheckCallback+0x70:
fffff803`21dee428 488908          mov     qword ptr [rax],rcx
fffff803`21dee42b 40b701          mov     dil,1
fffff803`21dee42e 48894108        mov     qword ptr [rcx+8],rax

nt!KeDeregisterBugCheckCallback+0x7a:
fffff803`21dee432 f70548bc1d0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21dee43c 741a            je      nt!KeDeregisterBugCheckCallback+0xa0 (fffff803`21dee458)

nt!KeDeregisterBugCheckCallback+0x86:
fffff803`21dee43e 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`21dee443 488d0d0e791500  lea     rcx,[nt!KeBugCheckCallbackLock (fffff803`21f45d58)]
fffff803`21dee44a e84de0ffff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21dee44f eb10            jmp     nt!KeDeregisterBugCheckCallback+0xa9 (fffff803`21dee461)

nt!KeDeregisterBugCheckCallback+0x99:
fffff803`21dee451 b903000000      mov     ecx,3
fffff803`21dee456 cd29            int     29h

nt!KeDeregisterBugCheckCallback+0xa0:
fffff803`21dee458 f0488325f778150000 lock and qword ptr [nt!KeBugCheckCallbackLock (fffff803`21f45d58)],0

nt!KeDeregisterBugCheckCallback+0xa9:
fffff803`21dee461 400fb6ce        movzx   ecx,sil
fffff803`21dee465 440f22c1        mov     cr8,rcx
fffff803`21dee469 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21dee46e 488b742438      mov     rsi,qword ptr [rsp+38h]
fffff803`21dee473 408ac7          mov     al,dil
fffff803`21dee476 4883c420        add     rsp,20h
fffff803`21dee47a 5f              pop     rdi
fffff803`21dee47b c3              ret
