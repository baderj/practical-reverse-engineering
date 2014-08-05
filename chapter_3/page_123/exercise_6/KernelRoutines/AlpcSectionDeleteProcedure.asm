nt! ?? ::NNGAKEGL::`string'+0x328f2:
fffff803`21fedf40 488bcd          mov     rcx,rbp
fffff803`21fedf43 e8b834d6ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`21fedf48 90              nop
fffff803`21fedf49 e9fcb70e00      jmp     nt!AlpcSectionDeleteProcedure+0x6e (fffff803`220d974a)

nt!AlpcSectionDeleteProcedure:
fffff803`220d96dc 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`220d96e1 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`220d96e6 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`220d96eb 57              push    rdi
fffff803`220d96ec 4156            push    r14
fffff803`220d96ee 4157            push    r15
fffff803`220d96f0 4883ec20        sub     rsp,20h
fffff803`220d96f4 488bf1          mov     rsi,rcx
fffff803`220d96f7 488b4910        mov     rcx,qword ptr [rcx+10h]
fffff803`220d96fb 4533ff          xor     r15d,r15d
fffff803`220d96fe 4885c9          test    rcx,rcx
fffff803`220d9701 0f85d3000000    jne     nt!AlpcSectionDeleteProcedure+0xfe (fffff803`220d97da)

nt!AlpcSectionDeleteProcedure+0x2b:
fffff803`220d9707 4c8b7628        mov     r14,qword ptr [rsi+28h]
fffff803`220d970b 4d85f6          test    r14,r14
fffff803`220d970e 0f84ad000000    je      nt!AlpcSectionDeleteProcedure+0xe5 (fffff803`220d97c1)

nt!AlpcSectionDeleteProcedure+0x38:
fffff803`220d9714 488d7ee0        lea     rdi,[rsi-20h]
fffff803`220d9718 488d4f18        lea     rcx,[rdi+18h]
fffff803`220d971c f0480fba2900    lock bts qword ptr [rcx],0
fffff803`220d9722 0f820f010000    jb      nt!AlpcSectionDeleteProcedure+0x15b (fffff803`220d9837)

nt!AlpcSectionDeleteProcedure+0x4c:
fffff803`220d9728 804f1001        or      byte ptr [rdi+10h],1
fffff803`220d972c b800000100      mov     eax,10000h
fffff803`220d9731 f00fc14714      lock xadd dword ptr [rdi+14h],eax
fffff803`220d9736 498dae30010000  lea     rbp,[r14+130h]
fffff803`220d973d f0480fba6d0000  lock bts qword ptr [rbp],0
fffff803`220d9744 0f82f647f1ff    jb      nt! ?? ::NNGAKEGL::`string'+0x328f2 (fffff803`21fedf40)

nt!AlpcSectionDeleteProcedure+0x6e:
fffff803`220d974a 488b07          mov     rax,qword ptr [rdi]
fffff803`220d974d 483bc7          cmp     rax,rdi
fffff803`220d9750 0f8599000000    jne     nt!AlpcSectionDeleteProcedure+0x113 (fffff803`220d97ef)

nt!AlpcSectionDeleteProcedure+0x7a:
fffff803`220d9756 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh
fffff803`220d975a 488bc3          mov     rax,rbx
fffff803`220d975d f0480fc14500    lock xadd qword ptr [rbp],rax
fffff803`220d9763 a802            test    al,2
fffff803`220d9765 0f85ad000000    jne     nt!AlpcSectionDeleteProcedure+0x13c (fffff803`220d9818)

nt!AlpcSectionDeleteProcedure+0x8f:
fffff803`220d976b 4c897e28        mov     qword ptr [rsi+28h],r15
fffff803`220d976f 8a4f10          mov     cl,byte ptr [rdi+10h]
fffff803`220d9772 418bef          mov     ebp,r15d
fffff803`220d9775 f6c101          test    cl,1
fffff803`220d9778 7416            je      nt!AlpcSectionDeleteProcedure+0xb4 (fffff803`220d9790)

nt!AlpcSectionDeleteProcedure+0x9e:
fffff803`220d977a 0fbf4712        movsx   eax,word ptr [rdi+12h]
fffff803`220d977e bd00000100      mov     ebp,10000h
fffff803`220d9783 6644897f12      mov     word ptr [rdi+12h],r15w
fffff803`220d9788 2be8            sub     ebp,eax
fffff803`220d978a 80e1fe          and     cl,0FEh
fffff803`220d978d 884f10          mov     byte ptr [rdi+10h],cl

nt!AlpcSectionDeleteProcedure+0xb4:
fffff803`220d9790 488d4f18        lea     rcx,[rdi+18h]
fffff803`220d9794 f0480fc119      lock xadd qword ptr [rcx],rbx
fffff803`220d9799 f6c302          test    bl,2
fffff803`220d979c 740a            je      nt!AlpcSectionDeleteProcedure+0xcc (fffff803`220d97a8)

nt!AlpcSectionDeleteProcedure+0xc2:
fffff803`220d979e f6c304          test    bl,4
fffff803`220d97a1 7505            jne     nt!AlpcSectionDeleteProcedure+0xcc (fffff803`220d97a8)

nt!AlpcSectionDeleteProcedure+0xc7:
fffff803`220d97a3 e86cb8c7ff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)

nt!AlpcSectionDeleteProcedure+0xcc:
fffff803`220d97a8 85ed            test    ebp,ebp
fffff803`220d97aa 7e0d            jle     nt!AlpcSectionDeleteProcedure+0xdd (fffff803`220d97b9)

nt!AlpcSectionDeleteProcedure+0xd0:
fffff803`220d97ac f7dd            neg     ebp
fffff803`220d97ae 8bc5            mov     eax,ebp
fffff803`220d97b0 f00fc14714      lock xadd dword ptr [rdi+14h],eax
fffff803`220d97b5 03c5            add     eax,ebp
fffff803`220d97b7 7474            je      nt!AlpcSectionDeleteProcedure+0x151 (fffff803`220d982d)

nt!AlpcSectionDeleteProcedure+0xdd:
fffff803`220d97b9 498bce          mov     rcx,r14
fffff803`220d97bc e81f74c3ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)

nt!AlpcSectionDeleteProcedure+0xe5:
fffff803`220d97c1 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`220d97c6 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`220d97cb 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`220d97d0 4883c420        add     rsp,20h
fffff803`220d97d4 415f            pop     r15
fffff803`220d97d6 415e            pop     r14
fffff803`220d97d8 5f              pop     rdi
fffff803`220d97d9 c3              ret

nt!AlpcSectionDeleteProcedure+0xfe:
fffff803`220d97da 488b5618        mov     rdx,qword ptr [rsi+18h]
fffff803`220d97de 4c8bc6          mov     r8,rsi
fffff803`220d97e1 e8de950300      call    nt!AlpcDeleteBlobByHandle (fffff803`22112dc4)
fffff803`220d97e6 4c897e10        mov     qword ptr [rsi+10h],r15
fffff803`220d97ea e918ffffff      jmp     nt!AlpcSectionDeleteProcedure+0x2b (fffff803`220d9707)

nt!AlpcSectionDeleteProcedure+0x113:
fffff803`220d97ef 488b4f08        mov     rcx,qword ptr [rdi+8]
fffff803`220d97f3 48397808        cmp     qword ptr [rax+8],rdi
fffff803`220d97f7 7518            jne     nt!AlpcSectionDeleteProcedure+0x135 (fffff803`220d9811)

nt!AlpcSectionDeleteProcedure+0x11d:
fffff803`220d97f9 483939          cmp     qword ptr [rcx],rdi
fffff803`220d97fc 7513            jne     nt!AlpcSectionDeleteProcedure+0x135 (fffff803`220d9811)

nt!AlpcSectionDeleteProcedure+0x122:
fffff803`220d97fe 488901          mov     qword ptr [rcx],rax
fffff803`220d9801 48894808        mov     qword ptr [rax+8],rcx
fffff803`220d9805 48897f08        mov     qword ptr [rdi+8],rdi
fffff803`220d9809 48893f          mov     qword ptr [rdi],rdi
fffff803`220d980c e945ffffff      jmp     nt!AlpcSectionDeleteProcedure+0x7a (fffff803`220d9756)

nt!AlpcSectionDeleteProcedure+0x135:
fffff803`220d9811 b903000000      mov     ecx,3
fffff803`220d9816 cd29            int     29h

nt!AlpcSectionDeleteProcedure+0x13c:
fffff803`220d9818 a804            test    al,4
fffff803`220d981a 0f854bffffff    jne     nt!AlpcSectionDeleteProcedure+0x8f (fffff803`220d976b)

nt!AlpcSectionDeleteProcedure+0x144:
fffff803`220d9820 488bcd          mov     rcx,rbp
fffff803`220d9823 e8ecb7c7ff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)
fffff803`220d9828 e93effffff      jmp     nt!AlpcSectionDeleteProcedure+0x8f (fffff803`220d976b)

nt!AlpcSectionDeleteProcedure+0x151:
fffff803`220d982d 488bce          mov     rcx,rsi
fffff803`220d9830 e8e7e0ffff      call    nt!AlpcpDestroyBlob (fffff803`220d791c)
fffff803`220d9835 eb82            jmp     nt!AlpcSectionDeleteProcedure+0xdd (fffff803`220d97b9)

nt!AlpcSectionDeleteProcedure+0x15b:
fffff803`220d9837 e8c47bc7ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`220d983c e9e7feffff      jmp     nt!AlpcSectionDeleteProcedure+0x4c (fffff803`220d9728)
