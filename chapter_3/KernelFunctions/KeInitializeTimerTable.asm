0: kd> uf KeInitializeTimerTable
nt!KeInitializeTimerTable:
fffff800`12160c20 488bc4          mov     rax,rsp
fffff800`12160c23 48895808        mov     qword ptr [rax+8],rbx
fffff800`12160c27 48896810        mov     qword ptr [rax+10h],rbp
fffff800`12160c2b 48897018        mov     qword ptr [rax+18h],rsi
fffff800`12160c2f 48897820        mov     qword ptr [rax+20h],rdi
fffff800`12160c33 4156            push    r14
fffff800`12160c35 4883ec20        sub     rsp,20h
fffff800`12160c39 33ed            xor     ebp,ebp
fffff800`12160c3b 488bd9          mov     rbx,rcx
fffff800`12160c3e 396924          cmp     dword ptr [rcx+24h],ebp
fffff800`12160c41 0f84a2000000    je      nt!KeInitializeTimerTable+0xc9 (fffff800`12160ce9)

nt!KeInitializeTimerTable+0x27:
fffff800`12160c47 8b15a3f4e6ff    mov     edx,dword ptr [nt!KiSerializeTimerExpiration (fffff800`11fd00f0)]

nt!KeInitializeTimerTable+0x2d:
fffff800`12160c4d 0fb78b58060000  movzx   ecx,word ptr [rbx+658h]
fffff800`12160c54 4c8d352514e7ff  lea     r14,[nt!KiPendingTimerBitmaps (fffff800`11fd2080)]
fffff800`12160c5b 8bc1            mov     eax,ecx
fffff800`12160c5d 4803c0          add     rax,rax
fffff800`12160c60 49396cc608      cmp     qword ptr [r14+rax*8+8],rbp
fffff800`12160c65 0f84a2000000    je      nt!KeInitializeTimerTable+0xed (fffff800`12160d0d)

nt!KeInitializeTimerTable+0x4b:
fffff800`12160c6b a12003000080f7ffff mov   eax,dword ptr [FFFFF78000000320h]
fffff800`12160c74 488d8ba8500000  lea     rcx,[rbx+50A8h]
fffff800`12160c7b 488d154a14c5ff  lea     rdx,[nt!KiTimerExpirationDpc (fffff800`11db20cc)]
fffff800`12160c82 4533c0          xor     r8d,r8d
fffff800`12160c85 8983e42d0000    mov     dword ptr [rbx+2DE4h],eax
fffff800`12160c8b e89016beff      call    nt!KeInitializeDpc (fffff800`11d42320)
fffff800`12160c90 0fb74324        movzx   eax,word ptr [rbx+24h]
fffff800`12160c94 41bb80020000    mov     r11d,280h
fffff800`12160c9a 664103c3        add     ax,r11w
fffff800`12160c9e b900010000      mov     ecx,100h
fffff800`12160ca3 668983aa500000  mov     word ptr [rbx+50AAh],ax
fffff800`12160caa 488d8308300000  lea     rax,[rbx+3008h]

nt!KeInitializeTimerTable+0x91:
fffff800`12160cb1 488968f8        mov     qword ptr [rax-8],rbp
fffff800`12160cb5 48894008        mov     qword ptr [rax+8],rax
fffff800`12160cb9 488900          mov     qword ptr [rax],rax
fffff800`12160cbc 834814ff        or      dword ptr [rax+14h],0FFFFFFFFh
fffff800`12160cc0 896810          mov     dword ptr [rax+10h],ebp
fffff800`12160cc3 4883c020        add     rax,20h
fffff800`12160cc7 48ffc9          dec     rcx
fffff800`12160cca 75e5            jne     nt!KeInitializeTimerTable+0x91 (fffff800`12160cb1)

nt!KeInitializeTimerTable+0xac:
fffff800`12160ccc 33c0            xor     eax,eax

nt!KeInitializeTimerTable+0xae:
fffff800`12160cce 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff800`12160cd3 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff800`12160cd8 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff800`12160cdd 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff800`12160ce2 4883c420        add     rsp,20h
fffff800`12160ce6 415e            pop     r14
fffff800`12160ce8 c3              ret

nt!KeInitializeTimerTable+0xc9:
fffff800`12160ce9 8b1501f4e6ff    mov     edx,dword ptr [nt!KiSerializeTimerExpiration (fffff800`11fd00f0)]
fffff800`12160cef 85d2            test    edx,edx
fffff800`12160cf1 0f8469911000    je      nt! ?? ::NNGAKEGL::`string'+0x2d0c0 (fffff800`12269e60)

nt!KeInitializeTimerTable+0xd7:
fffff800`12160cf7 83fa01          cmp     edx,1
fffff800`12160cfa 0f844dffffff    je      nt!KeInitializeTimerTable+0x2d (fffff800`12160c4d)

nt!KeInitializeTimerTable+0xe0:
fffff800`12160d00 8bd5            mov     edx,ebp

nt!KeInitializeTimerTable+0xe2:
fffff800`12160d02 8915e8f3e6ff    mov     dword ptr [nt!KiSerializeTimerExpiration (fffff800`11fd00f0)],edx
fffff800`12160d08 e940ffffff      jmp     nt!KeInitializeTimerTable+0x2d (fffff800`12160c4d)

nt!KeInitializeTimerTable+0xed:
fffff800`12160d0d be00400000      mov     esi,4000h
fffff800`12160d12 6685c9          test    cx,cx
fffff800`12160d15 0f855d911000    jne     nt! ?? ::NNGAKEGL::`string'+0x2d0d8 (fffff800`12269e78)

nt!KeInitializeTimerTable+0xfb:
fffff800`12160d1b 488d3d5eb0e6ff  lea     rdi,[nt!KiPendingTimersMask0 (fffff800`11fcbd80)]
fffff800`12160d22 85d2            test    edx,edx
fffff800`12160d24 7405            je      nt!KeInitializeTimerTable+0x10b (fffff800`12160d2b)

nt!KeInitializeTimerTable+0x106:
fffff800`12160d26 be20000000      mov     esi,20h

nt!KeInitializeTimerTable+0x10b:
fffff800`12160d2b 0fb78b58060000  movzx   ecx,word ptr [rbx+658h]
fffff800`12160d32 4c8bc6          mov     r8,rsi
fffff800`12160d35 488bd7          mov     rdx,rdi
fffff800`12160d38 48c1e104        shl     rcx,4
fffff800`12160d3c 49c1e003        shl     r8,3
fffff800`12160d40 4903ce          add     rcx,r14
fffff800`12160d43 e8a484b4ff      call    nt!RtlInitializeBitMapEx (fffff800`11ca91ec)
fffff800`12160d48 e91effffff      jmp     nt!KeInitializeTimerTable+0x4b (fffff800`12160c6b)

nt!KeInitializeTimerTable+0x12d:
fffff800`12160d4d 488bfd          mov     rdi,rbp
fffff800`12160d50 ebd9            jmp     nt!KeInitializeTimerTable+0x10b (fffff800`12160d2b)

nt! ?? ::NNGAKEGL::`string'+0x2d0c0:
fffff800`12269e60 ff150a32c8ff    call    qword ptr [nt!HalPrivateDispatchTable+0x2d0 (fffff800`11eed070)]
fffff800`12269e66 84c0            test    al,al
fffff800`12269e68 0f84d96defff    je      nt!KeInitializeTimerTable+0x27 (fffff800`12160c47)

nt! ?? ::NNGAKEGL::`string'+0x2d0ce:
fffff800`12269e6e ba01000000      mov     edx,1
fffff800`12269e73 e98a6eefff      jmp     nt!KeInitializeTimerTable+0xe2 (fffff800`12160d02)

nt! ?? ::NNGAKEGL::`string'+0x2d0d8:
fffff800`12269e78 85d2            test    edx,edx
fffff800`12269e7a 0f85cd6eefff    jne     nt!KeInitializeTimerTable+0x12d (fffff800`12160d4d)

nt! ?? ::NNGAKEGL::`string'+0x2d0e0:
fffff800`12269e80 41b84b655462    mov     r8d,6254654Bh
fffff800`12269e86 488bd6          mov     rdx,rsi
fffff800`12269e89 b904020000      mov     ecx,204h
fffff800`12269e8e e87de1c7ff      call    nt!ExAllocatePoolWithTag (fffff800`11ee8010)
fffff800`12269e93 488bf8          mov     rdi,rax
fffff800`12269e96 4885c0          test    rax,rax
fffff800`12269e99 750a            jne     nt! ?? ::NNGAKEGL::`string'+0x2d105 (fffff800`12269ea5)

nt! ?? ::NNGAKEGL::`string'+0x2d0fb:
fffff800`12269e9b b89a0000c0      mov     eax,0C000009Ah
fffff800`12269ea0 e9296eefff      jmp     nt!KeInitializeTimerTable+0xae (fffff800`12160cce)

nt! ?? ::NNGAKEGL::`string'+0x2d105:
fffff800`12269ea5 4c8bc6          mov     r8,rsi
fffff800`12269ea8 33d2            xor     edx,edx
fffff800`12269eaa 488bc8          mov     rcx,rax
fffff800`12269ead e80edca8ff      call    nt!memset (fffff800`11cf7ac0)
fffff800`12269eb2 90              nop
fffff800`12269eb3 e9736eefff      jmp     nt!KeInitializeTimerTable+0x10b (fffff800`12160d2b)
