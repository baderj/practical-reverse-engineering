0: kd> uf ExRegisterCallback
nt!ExRegisterCallback:
fffff803`d99d45a4 488bc4          mov     rax,rsp
fffff803`d99d45a7 48895808        mov     qword ptr [rax+8],rbx
fffff803`d99d45ab 48896810        mov     qword ptr [rax+10h],rbp
fffff803`d99d45af 48897018        mov     qword ptr [rax+18h],rsi
fffff803`d99d45b3 48897820        mov     qword ptr [rax+20h],rdi
fffff803`d99d45b7 4156            push    r14
fffff803`d99d45b9 4883ec20        sub     rsp,20h
fffff803`d99d45bd 488bea          mov     rbp,rdx
fffff803`d99d45c0 ba44666c74      mov     edx,746C6644h
fffff803`d99d45c5 498bf8          mov     rdi,r8
fffff803`d99d45c8 488bf1          mov     rsi,rcx
fffff803`d99d45cb e81860f8ff      call    nt!ObfReferenceObjectWithTag (fffff803`d995a5e8)
fffff803`d99d45d0 ba30000000      mov     edx,30h
fffff803`d99d45d5 b900020000      mov     ecx,200h
fffff803`d99d45da 41b843425265    mov     r8d,65524243h
fffff803`d99d45e0 e82b1a1200      call    nt!ExAllocatePoolWithTag (fffff803`d9af6010)
fffff803`d99d45e5 488bd8          mov     rbx,rax
fffff803`d99d45e8 4885c0          test    rax,rax
fffff803`d99d45eb 0f84cbf60a00    je      nt! ?? ::FNODOBFM::`string'+0x4b356 (fffff803`d9a83cbc)

nt!ExRegisterCallback+0x4d:
fffff803`d99d45f1 83602800        and     dword ptr [rax+28h],0
fffff803`d99d45f5 48896818        mov     qword ptr [rax+18h],rbp
fffff803`d99d45f9 48897820        mov     qword ptr [rax+20h],rdi
fffff803`d99d45fd 4032ed          xor     bpl,bpl
fffff803`d99d4600 488d7e08        lea     rdi,[rsi+8]
fffff803`d99d4604 48897010        mov     qword ptr [rax+10h],rsi
fffff803`d99d4608 c6402c00        mov     byte ptr [rax+2Ch],0
fffff803`d99d460c 450f20c6        mov     r14,cr8
fffff803`d99d4610 b802000000      mov     eax,2
fffff803`d99d4615 440f22c0        mov     cr8,rax
fffff803`d99d4619 f705619a200000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d99d4623 0f85a7f60a00    jne     nt! ?? ::FNODOBFM::`string'+0x4b36a (fffff803`d9a83cd0)

nt!ExRegisterCallback+0x85:
fffff803`d99d4629 f0480fba2f00    lock bts qword ptr [rdi],0
fffff803`d99d462f 0f82a9f60a00    jb      nt! ?? ::FNODOBFM::`string'+0x4b378 (fffff803`d9a83cde)

nt!ExRegisterCallback+0x91:
fffff803`d99d4635 807e2000        cmp     byte ptr [rsi+20h],0
fffff803`d99d4639 745e            je      nt!ExRegisterCallback+0xf5 (fffff803`d99d4699)

nt!ExRegisterCallback+0x97:
fffff803`d99d463b 488d4610        lea     rax,[rsi+10h]
fffff803`d99d463f 40b501          mov     bpl,1
fffff803`d99d4642 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d99d4646 488903          mov     qword ptr [rbx],rax
fffff803`d99d4649 48894b08        mov     qword ptr [rbx+8],rcx
fffff803`d99d464d 483901          cmp     qword ptr [rcx],rax
fffff803`d99d4650 7552            jne     nt!ExRegisterCallback+0x100 (fffff803`d99d46a4)

nt!ExRegisterCallback+0xae:
fffff803`d99d4652 488919          mov     qword ptr [rcx],rbx
fffff803`d99d4655 48895808        mov     qword ptr [rax+8],rbx

nt!ExRegisterCallback+0xb5:
fffff803`d99d4659 f705219a200000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d99d4663 7546            jne     nt!ExRegisterCallback+0x107 (fffff803`d99d46ab)

nt!ExRegisterCallback+0xc1:
fffff803`d99d4665 f048832700      lock and qword ptr [rdi],0

nt!ExRegisterCallback+0xc6:
fffff803`d99d466a 410fb6c6        movzx   eax,r14b
fffff803`d99d466e 440f22c0        mov     cr8,rax
fffff803`d99d4672 4084ed          test    bpl,bpl
fffff803`d99d4675 0f8471f60a00    je      nt! ?? ::FNODOBFM::`string'+0x4b386 (fffff803`d9a83cec)

nt!ExRegisterCallback+0xd7:
fffff803`d99d467b 488bc3          mov     rax,rbx

nt!ExRegisterCallback+0xda:
fffff803`d99d467e 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d99d4683 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff803`d99d4688 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff803`d99d468d 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff803`d99d4692 4883c420        add     rsp,20h
fffff803`d99d4696 415e            pop     r14
fffff803`d99d4698 c3              ret

nt!ExRegisterCallback+0xf5:
fffff803`d99d4699 488d4610        lea     rax,[rsi+10h]
fffff803`d99d469d 483900          cmp     qword ptr [rax],rax
fffff803`d99d46a0 7499            je      nt!ExRegisterCallback+0x97 (fffff803`d99d463b)

nt!ExRegisterCallback+0xfe:
fffff803`d99d46a2 ebb5            jmp     nt!ExRegisterCallback+0xb5 (fffff803`d99d4659)

nt!ExRegisterCallback+0x100:
fffff803`d99d46a4 b903000000      mov     ecx,3
fffff803`d99d46a9 cd29            int     29h

nt!ExRegisterCallback+0x107:
fffff803`d99d46ab 488b542428      mov     rdx,qword ptr [rsp+28h]
fffff803`d99d46b0 488bcf          mov     rcx,rdi
fffff803`d99d46b3 e8e4bd0200      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d99d46b8 ebb0            jmp     nt!ExRegisterCallback+0xc6 (fffff803`d99d466a)

nt! ?? ::FNODOBFM::`string'+0x4b356:
fffff803`d9a83cbc ba44666c74      mov     edx,746C6644h
fffff803`d9a83cc1 488bce          mov     rcx,rsi
fffff803`d9a83cc4 e897d1e8ff      call    nt!ObfDereferenceObjectWithTag (fffff803`d9910e60)
fffff803`d9a83cc9 33c0            xor     eax,eax
fffff803`d9a83ccb e9ae09f5ff      jmp     nt!ExRegisterCallback+0xda (fffff803`d99d467e)

nt! ?? ::FNODOBFM::`string'+0x4b36a:
fffff803`d9a83cd0 488bcf          mov     rcx,rdi
fffff803`d9a83cd3 e8e8c7f7ff      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d9a83cd8 90              nop
fffff803`d9a83cd9 e95709f5ff      jmp     nt!ExRegisterCallback+0x91 (fffff803`d99d4635)

nt! ?? ::FNODOBFM::`string'+0x4b378:
fffff803`d9a83cde 488bcf          mov     rcx,rdi
fffff803`d9a83ce1 e8dad5e3ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)
fffff803`d9a83ce6 90              nop
fffff803`d9a83ce7 e94909f5ff      jmp     nt!ExRegisterCallback+0x91 (fffff803`d99d4635)

nt! ?? ::FNODOBFM::`string'+0x4b386:
fffff803`d9a83cec 33d2            xor     edx,edx
fffff803`d9a83cee 488bcb          mov     rcx,rbx
fffff803`d9a83cf1 e86a340700      call    nt!ExFreePoolWithTag (fffff803`d9af7160)
fffff803`d9a83cf6 ba44666c74      mov     edx,746C6644h
fffff803`d9a83cfb 488bce          mov     rcx,rsi
fffff803`d9a83cfe e85dd1e8ff      call    nt!ObfDereferenceObjectWithTag (fffff803`d9910e60)
fffff803`d9a83d03 33db            xor     ebx,ebx
fffff803`d9a83d05 e97109f5ff      jmp     nt!ExRegisterCallback+0xd7 (fffff803`d99d467b)
