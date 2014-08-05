0: kd> uf PspInsertThread
nt!PspInsertThread:
fffff803`d9cf82e0 4c894c2420      mov     qword ptr [rsp+20h],r9
fffff803`d9cf82e5 53              push    rbx
fffff803`d9cf82e6 56              push    rsi
fffff803`d9cf82e7 57              push    rdi
fffff803`d9cf82e8 4154            push    r12
fffff803`d9cf82ea 4155            push    r13
fffff803`d9cf82ec 4156            push    r14
fffff803`d9cf82ee 4157            push    r15
fffff803`d9cf82f0 4881eca0010000  sub     rsp,1A0h
fffff803`d9cf82f7 488b059ad7e0ff  mov     rax,qword ptr [nt!_security_cookie (fffff803`d9b05a98)]
fffff803`d9cf82fe 4833c4          xor     rax,rsp
fffff803`d9cf8301 4889842498010000 mov     qword ptr [rsp+198h],rax
fffff803`d9cf8309 498bc0          mov     rax,r8
fffff803`d9cf830c 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`d9cf8311 4c8bf2          mov     r14,rdx
fffff803`d9cf8314 48894c2468      mov     qword ptr [rsp+68h],rcx
fffff803`d9cf8319 48894c2478      mov     qword ptr [rsp+78h],rcx
fffff803`d9cf831e 48899424a0000000 mov     qword ptr [rsp+0A0h],rdx
fffff803`d9cf8326 4889842480000000 mov     qword ptr [rsp+80h],rax
fffff803`d9cf832e 4c8bac2410020000 mov     r13,qword ptr [rsp+210h]
fffff803`d9cf8336 4c89ac2488000000 mov     qword ptr [rsp+88h],r13
fffff803`d9cf833e 488b842418020000 mov     rax,qword ptr [rsp+218h]
fffff803`d9cf8346 4889442448      mov     qword ptr [rsp+48h],rax
fffff803`d9cf834b 488b842420020000 mov     rax,qword ptr [rsp+220h]
fffff803`d9cf8353 48898424c8000000 mov     qword ptr [rsp+0C8h],rax
fffff803`d9cf835b 4c8ba42428020000 mov     r12,qword ptr [rsp+228h]
fffff803`d9cf8363 4c89a424b0000000 mov     qword ptr [rsp+0B0h],r12
fffff803`d9cf836b 33d2            xor     edx,edx
fffff803`d9cf836d 4889542470      mov     qword ptr [rsp+70h],rdx
fffff803`d9cf8372 8bda            mov     ebx,edx
fffff803`d9cf8374 89542450        mov     dword ptr [rsp+50h],edx
fffff803`d9cf8378 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9cf8381 488b80b8000000  mov     rax,qword ptr [rax+0B8h]
fffff803`d9cf8388 4889442460      mov     qword ptr [rsp+60h],rax
fffff803`d9cf838d 48898424c0000000 mov     qword ptr [rsp+0C0h],rax
fffff803`d9cf8395 488b81f0000000  mov     rax,qword ptr [rcx+0F0h]
fffff803`d9cf839c 48898424a8000000 mov     qword ptr [rsp+0A8h],rax
fffff803`d9cf83a4 48898424d8000000 mov     qword ptr [rsp+0D8h],rax
fffff803`d9cf83ac 448bfa          mov     r15d,edx
fffff803`d9cf83af 8bf2            mov     esi,edx
fffff803`d9cf83b1 4d85ed          test    r13,r13
fffff803`d9cf83b4 0f842f090000    je      nt!PspInsertThread+0xa09 (fffff803`d9cf8ce9)

nt!PspInsertThread+0xda:
fffff803`d9cf83ba 498b4d18        mov     rcx,qword ptr [r13+18h]
fffff803`d9cf83be 48898c2490000000 mov     qword ptr [rsp+90h],rcx
fffff803`d9cf83c6 48898c24b8000000 mov     qword ptr [rsp+0B8h],rcx
fffff803`d9cf83ce 418b4504        mov     eax,dword ptr [r13+4]
fffff803`d9cf83d2 0fbae00e        bt      eax,0Eh
fffff803`d9cf83d6 0f82f5080000    jb      nt!PspInsertThread+0x9f1 (fffff803`d9cf8cd1)

nt!PspInsertThread+0xfc:
fffff803`d9cf83dc 0fbae00c        bt      eax,0Ch
fffff803`d9cf83e0 0f82f7080000    jb      nt!PspInsertThread+0x9fd (fffff803`d9cf8cdd)

nt!PspInsertThread+0x106:
fffff803`d9cf83e6 410fb65d09      movzx   ebx,byte ptr [r13+9]
fffff803`d9cf83eb 83e302          and     ebx,2
fffff803`d9cf83ee 03db            add     ebx,ebx
fffff803`d9cf83f0 895c2450        mov     dword ptr [rsp+50h],ebx

nt!PspInsertThread+0x114:
fffff803`d9cf83f4 418b01          mov     eax,dword ptr [r9]
fffff803`d9cf83f7 a820            test    al,20h
fffff803`d9cf83f9 0f84fe060000    je      nt!PspInsertThread+0x81d (fffff803`d9cf8afd)

nt!PspInsertThread+0x11f:
fffff803`d9cf83ff 498bbea0030000  mov     rdi,qword ptr [r14+3A0h]
fffff803`d9cf8406 4885ff          test    rdi,rdi
fffff803`d9cf8409 7414            je      nt!PspInsertThread+0x13f (fffff803`d9cf841f)

nt!PspInsertThread+0x12b:
fffff803`d9cf840b 488d4f38        lea     rcx,[rdi+38h]
fffff803`d9cf840f b201            mov     dl,1
fffff803`d9cf8411 e88a0dc2ff      call    nt!ExAcquireResourceSharedLite (fffff803`d99191a0)
fffff803`d9cf8416 4885f6          test    rsi,rsi
fffff803`d9cf8419 0f8525090000    jne     nt!PspInsertThread+0xa64 (fffff803`d9cf8d44)

nt!PspInsertThread+0x13f:
fffff803`d9cf841f f6c302          test    bl,2
fffff803`d9cf8422 0f85ac070000    jne     nt!PspInsertThread+0x8f4 (fffff803`d9cf8bd4)

nt!PspInsertThread+0x148:
fffff803`d9cf8428 418b86fc020000  mov     eax,dword ptr [r14+2FCh]
fffff803`d9cf842f 0fbae01a        bt      eax,1Ah
fffff803`d9cf8433 0f839b070000    jae     nt!PspInsertThread+0x8f4 (fffff803`d9cf8bd4)

nt!PspInsertThread+0x159:
fffff803`d9cf8439 a808            test    al,8
fffff803`d9cf843b 0f8593070000    jne     nt!PspInsertThread+0x8f4 (fffff803`d9cf8bd4)

nt!PspInsertThread+0x161:
fffff803`d9cf8441 0fbae01e        bt      eax,1Eh
fffff803`d9cf8445 0f8265070000    jb      nt!PspInsertThread+0x8d0 (fffff803`d9cf8bb0)

nt!PspInsertThread+0x16b:
fffff803`d9cf844b f6c304          test    bl,4
fffff803`d9cf844e 0f85aa080000    jne     nt!PspInsertThread+0xa1e (fffff803`d9cf8cfe)

nt!PspInsertThread+0x174:
fffff803`d9cf8454 33c0            xor     eax,eax

nt!PspInsertThread+0x176:
fffff803`d9cf8456 440fb6c8        movzx   r9d,al
fffff803`d9cf845a 4d8bc7          mov     r8,r15
fffff803`d9cf845d 488bd6          mov     rdx,rsi
fffff803`d9cf8460 4c8b7c2468      mov     r15,qword ptr [rsp+68h]
fffff803`d9cf8465 498bcf          mov     rcx,r15
fffff803`d9cf8468 e86b0fc7ff      call    nt!KeStartThread (fffff803`d99693d8)
fffff803`d9cf846d 4885ff          test    rdi,rdi
fffff803`d9cf8470 7409            je      nt!PspInsertThread+0x19b (fffff803`d9cf847b)

nt!PspInsertThread+0x192:
fffff803`d9cf8472 488d4f38        lea     rcx,[rdi+38h]
fffff803`d9cf8476 e89554c2ff      call    nt!ExReleaseResourceLite (fffff803`d991d910)

nt!PspInsertThread+0x19b:
fffff803`d9cf847b 41f786fc02000000000040 test dword ptr [r14+2FCh],40000000h
fffff803`d9cf8486 0f85f7631900    jne     nt! ?? ::NNGAKEGL::`string'+0x4931d (fffff803`d9e8e883)

nt!PspInsertThread+0x1ac:
fffff803`d9cf848c 418b86fc020000  mov     eax,dword ptr [r14+2FCh]
fffff803`d9cf8493 c1e81b          shr     eax,1Bh
fffff803`d9cf8496 83e007          and     eax,7
fffff803`d9cf8499 418b8f2c040000  mov     ecx,dword ptr [r15+42Ch]
fffff803`d9cf84a0 81e1fff1ffff    and     ecx,0FFFFF1FFh
fffff803`d9cf84a6 c1e009          shl     eax,9
fffff803`d9cf84a9 0bc8            or      ecx,eax
fffff803`d9cf84ab 41898f2c040000  mov     dword ptr [r15+42Ch],ecx
fffff803`d9cf84b2 418b86f8020000  mov     eax,dword ptr [r14+2F8h]
fffff803`d9cf84b9 c1e80c          shr     eax,0Ch
fffff803`d9cf84bc 83e007          and     eax,7
fffff803`d9cf84bf 81e1ff8fffff    and     ecx,0FFFF8FFFh
fffff803`d9cf84c5 c1e00c          shl     eax,0Ch
fffff803`d9cf84c8 0bc8            or      ecx,eax
fffff803`d9cf84ca 41898f2c040000  mov     dword ptr [r15+42Ch],ecx
fffff803`d9cf84d1 41ff8680040000  inc     dword ptr [r14+480h]
fffff803`d9cf84d8 418b8680040000  mov     eax,dword ptr [r14+480h]
fffff803`d9cf84df 413b8628060000  cmp     eax,dword ptr [r14+628h]
fffff803`d9cf84e6 760e            jbe     nt!PspInsertThread+0x216 (fffff803`d9cf84f6)

nt!PspInsertThread+0x208:
fffff803`d9cf84e8 418b8680040000  mov     eax,dword ptr [r14+480h]
fffff803`d9cf84ef 41898628060000  mov     dword ptr [r14+628h],eax

nt!PspInsertThread+0x216:
fffff803`d9cf84f6 418b8680040000  mov     eax,dword ptr [r14+480h]
fffff803`d9cf84fd 83f801          cmp     eax,1
fffff803`d9cf8500 0f850f060000    jne     nt!PspInsertThread+0x835 (fffff803`d9cf8b15)

nt!PspInsertThread+0x226:
fffff803`d9cf8506 0bd8            or      ebx,eax
fffff803`d9cf8508 895c2450        mov     dword ptr [rsp+50h],ebx

nt!PspInsertThread+0x22c:
fffff803`d9cf850c 498db630060000  lea     rsi,[r14+630h]
fffff803`d9cf8513 f0480fba2e00    lock bts qword ptr [rsi],0
fffff803`d9cf8519 0f8283631900    jb      nt! ?? ::NNGAKEGL::`string'+0x4933c (fffff803`d9e8e8a2)

nt!PspInsertThread+0x23f:
fffff803`d9cf851f 498d8f00040000  lea     rcx,[r15+400h]
fffff803`d9cf8526 498d8670040000  lea     rax,[r14+470h]
fffff803`d9cf852d 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`d9cf8531 488901          mov     qword ptr [rcx],rax
fffff803`d9cf8534 48895108        mov     qword ptr [rcx+8],rdx
fffff803`d9cf8538 483902          cmp     qword ptr [rdx],rax
fffff803`d9cf853b 0f856f631900    jne     nt! ?? ::NNGAKEGL::`string'+0x4934a (fffff803`d9e8e8b0)

nt!PspInsertThread+0x261:
fffff803`d9cf8541 48890a          mov     qword ptr [rdx],rcx
fffff803`d9cf8544 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9cf8548 4883cfff        or      rdi,0FFFFFFFFFFFFFFFFh
fffff803`d9cf854c 488bc7          mov     rax,rdi
fffff803`d9cf854f f0480fc106      lock xadd qword ptr [rsi],rax
fffff803`d9cf8554 a802            test    al,2
fffff803`d9cf8556 0f855b631900    jne     nt! ?? ::NNGAKEGL::`string'+0x49351 (fffff803`d9e8e8b7)

nt!PspInsertThread+0x27c:
fffff803`d9cf855c 4983bec002000000 cmp     qword ptr [r14+2C0h],0
fffff803`d9cf8564 0f8563631900    jne     nt! ?? ::NNGAKEGL::`string'+0x49367 (fffff803`d9e8e8cd)

nt!PspInsertThread+0x28a:
fffff803`d9cf856a 498d8ec8020000  lea     rcx,[r14+2C8h]
fffff803`d9cf8571 488bc7          mov     rax,rdi
fffff803`d9cf8574 f0480fc101      lock xadd qword ptr [rcx],rax
fffff803`d9cf8579 a802            test    al,2
fffff803`d9cf857b 0f85a7070000    jne     nt!PspInsertThread+0xa48 (fffff803`d9cf8d28)

nt!PspInsertThread+0x2a1:
fffff803`d9cf8581 ba02000000      mov     edx,2
fffff803`d9cf8586 498bcf          mov     rcx,r15
fffff803`d9cf8589 e8b27dc5ff      call    nt!ObReferenceObjectExWithTag (fffff803`d9950340)
fffff803`d9cf858e 41c787c004000001000000 mov dword ptr [r15+4C0h],1
fffff803`d9cf8599 488b9424f8010000 mov     rdx,qword ptr [rsp+1F8h]
fffff803`d9cf85a1 8b02            mov     eax,dword ptr [rdx]
fffff803`d9cf85a3 a801            test    al,1
fffff803`d9cf85a5 0f848e000000    je      nt!PspInsertThread+0x359 (fffff803`d9cf8639)

nt!PspInsertThread+0x2cb:
fffff803`d9cf85ab 498bcf          mov     rcx,r15
fffff803`d9cf85ae e8b118c7ff      call    nt!KeSuspendThread (fffff803`d9969e64)
fffff803`d9cf85b3 eb6d            jmp     nt!PspInsertThread+0x342 (fffff803`d9cf8622)

nt!PspInsertThread+0x342:
fffff803`d9cf8622 418b872c040000  mov     eax,dword ptr [r15+42Ch]
fffff803`d9cf8629 a801            test    al,1
fffff803`d9cf862b 0f85a7621900    jne     nt! ?? ::NNGAKEGL::`string'+0x49372 (fffff803`d9e8e8d8)

nt!PspInsertThread+0x351:
fffff803`d9cf8631 488b9424f8010000 mov     rdx,qword ptr [rsp+1F8h]

nt!PspInsertThread+0x359:
fffff803`d9cf8639 4533ff          xor     r15d,r15d
fffff803`d9cf863c 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`d9cf8641 4438b984010000  cmp     byte ptr [rcx+184h],r15b
fffff803`d9cf8648 0f84e1040000    je      nt!PspInsertThread+0x84f (fffff803`d9cf8b2f)

nt!PspInsertThread+0x36e:
fffff803`d9cf864e 8b02            mov     eax,dword ptr [rdx]
fffff803`d9cf8650 a810            test    al,10h
fffff803`d9cf8652 0f85d7040000    jne     nt!PspInsertThread+0x84f (fffff803`d9cf8b2f)

nt!PspInsertThread+0x378:
fffff803`d9cf8658 488b05f159eeff  mov     rax,qword ptr [nt!PsThreadType (fffff803`d9bde050)]
fffff803`d9cf865f 4883c04c        add     rax,4Ch
fffff803`d9cf8663 4c8d89a0000000  lea     r9,[rcx+0A0h]
fffff803`d9cf866a 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9cf866f 8bb42400020000  mov     esi,dword ptr [rsp+200h]
fffff803`d9cf8676 89742420        mov     dword ptr [rsp+20h],esi
fffff803`d9cf867a 4c8bc1          mov     r8,rcx
fffff803`d9cf867d 488b542460      mov     rdx,qword ptr [rsp+60h]
fffff803`d9cf8682 33c9            xor     ecx,ecx
fffff803`d9cf8684 e8d79fffff      call    nt!SeCreateAccessStateEx (fffff803`d9cf2660)
fffff803`d9cf8689 89442460        mov     dword ptr [rsp+60h],eax
fffff803`d9cf868d 85c0            test    eax,eax
fffff803`d9cf868f 0f885b621900    js      nt! ?? ::NNGAKEGL::`string'+0x4938d (fffff803`d9e8e8f0)

nt!PspInsertThread+0x3b5:
fffff803`d9cf8695 33c0            xor     eax,eax
fffff803`d9cf8697 4889442430      mov     qword ptr [rsp+30h],rax
fffff803`d9cf869c 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9cf86a1 44897c2420      mov     dword ptr [rsp+20h],r15d
fffff803`d9cf86a6 4533c9          xor     r9d,r9d
fffff803`d9cf86a9 448bc6          mov     r8d,esi
fffff803`d9cf86ac 488b542448      mov     rdx,qword ptr [rsp+48h]
fffff803`d9cf86b1 4c8b7c2468      mov     r15,qword ptr [rsp+68h]
fffff803`d9cf86b6 498bcf          mov     rcx,r15
fffff803`d9cf86b9 e8f274ffff      call    nt!ObInsertObjectEx (fffff803`d9cefbb0)
fffff803`d9cf86be 8bf0            mov     esi,eax
fffff803`d9cf86c0 89442460        mov     dword ptr [rsp+60h],eax
fffff803`d9cf86c4 85c0            test    eax,eax
fffff803`d9cf86c6 0f88e1050000    js      nt!PspInsertThread+0x9cd (fffff803`d9cf8cad)

nt!PspInsertThread+0x3ec:
fffff803`d9cf86cc 498bcf          mov     rcx,r15
fffff803`d9cf86cf e80cc5c2ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9cf86d4 488b842490000000 mov     rax,qword ptr [rsp+90h]
fffff803`d9cf86dc 4885c0          test    rax,rax
fffff803`d9cf86df 0f855a040000    jne     nt!PspInsertThread+0x85f (fffff803`d9cf8b3f)

nt!PspInsertThread+0x405:
fffff803`d9cf86e5 85f6            test    esi,esi
fffff803`d9cf86e7 0f88c0050000    js      nt!PspInsertThread+0x9cd (fffff803`d9cf8cad)

nt!PspInsertThread+0x40d:
fffff803`d9cf86ed 4d85e4          test    r12,r12
fffff803`d9cf86f0 0f84b7050000    je      nt!PspInsertThread+0x9cd (fffff803`d9cf8cad)

nt!PspInsertThread+0x416:
fffff803`d9cf86f6 498b8798030000  mov     rax,qword ptr [r15+398h]
fffff803`d9cf86fd 49890424        mov     qword ptr [r12],rax
fffff803`d9cf8701 498b87a0030000  mov     rax,qword ptr [r15+3A0h]
fffff803`d9cf8708 4989442408      mov     qword ptr [r12+8],rax
fffff803`d9cf870d 488b442448      mov     rax,qword ptr [rsp+48h]
fffff803`d9cf8712 4c8b642458      mov     r12,qword ptr [rsp+58h]
fffff803`d9cf8717 eb43            jmp     nt!PspInsertThread+0x47c (fffff803`d9cf875c)

nt!PspInsertThread+0x47c:
fffff803`d9cf875c 85f6            test    esi,esi
fffff803`d9cf875e 0f8882611900    js      nt! ?? ::NNGAKEGL::`string'+0x49380 (fffff803`d9e8e8e6)

nt!PspInsertThread+0x484:
fffff803`d9cf8764 f041838f2c04000002 lock or dword ptr [r15+42Ch],2
fffff803`d9cf876d 498d8f18040000  lea     rcx,[r15+418h]
fffff803`d9cf8774 f0480fc139      lock xadd qword ptr [rcx],rdi
fffff803`d9cf8779 40f6c702        test    dil,2
fffff803`d9cf877d 0f85aa611900    jne     nt! ?? ::NNGAKEGL::`string'+0x493d5 (fffff803`d9e8e92d)

nt!PspInsertThread+0x4a3:
fffff803`d9cf8783 f6c301          test    bl,1
fffff803`d9cf8786 0f849b030000    je      nt!PspInsertThread+0x847 (fffff803`d9cf8b27)

nt!PspInsertThread+0x4ac:
fffff803`d9cf878c 8b05ee58eeff    mov     eax,dword ptr [nt!PerfGlobalGroupMask (fffff803`d9bde080)]
fffff803`d9cf8792 a801            test    al,1
fffff803`d9cf8794 740d            je      nt!PspInsertThread+0x4c3 (fffff803`d9cf87a3)

nt!PspInsertThread+0x4b6:
fffff803`d9cf8796 ba01030000      mov     edx,301h
fffff803`d9cf879b 498bce          mov     rcx,r14
fffff803`d9cf879e e809a80600      call    nt!EtwTraceProcess (fffff803`d9d62fac)

nt!PspInsertThread+0x4c3:
fffff803`d9cf87a3 8b05db62e2ff    mov     eax,dword ptr [nt!PspNotifyEnableMask (fffff803`d9b1ea84)]
fffff803`d9cf87a9 a804            test    al,4
fffff803`d9cf87ab 0f84b5050000    je      nt!PspInsertThread+0xa86 (fffff803`d9cf8d66)

nt!PspInsertThread+0x4d1:
fffff803`d9cf87b1 b101            mov     cl,1

nt!PspInsertThread+0x4d3:
fffff803`d9cf87b3 884c2440        mov     byte ptr [rsp+40h],cl
fffff803`d9cf87b7 8b05c762e2ff    mov     eax,dword ptr [nt!PspNotifyEnableMask (fffff803`d9b1ea84)]
fffff803`d9cf87bd a802            test    al,2
fffff803`d9cf87bf 0f84a8050000    je      nt!PspInsertThread+0xa8d (fffff803`d9cf8d6d)

nt!PspInsertThread+0x4e5:
fffff803`d9cf87c5 33d2            xor     edx,edx
fffff803`d9cf87c7 448be2          mov     r12d,edx
fffff803`d9cf87ca 4889942498000000 mov     qword ptr [rsp+98h],rdx
fffff803`d9cf87d2 88542441        mov     byte ptr [rsp+41h],dl
fffff803`d9cf87d6 84c9            test    cl,cl
fffff803`d9cf87d8 0f84b3050000    je      nt!PspInsertThread+0xab1 (fffff803`d9cf8d91)

nt!PspInsertThread+0x4fe:
fffff803`d9cf87de 48c78424e000000048000000 mov qword ptr [rsp+0E0h],48h
fffff803`d9cf87ea 899424e8000000  mov     dword ptr [rsp+0E8h],edx
fffff803`d9cf87f1 498b86d0030000  mov     rax,qword ptr [r14+3D0h]
fffff803`d9cf87f8 48898424f0000000 mov     qword ptr [rsp+0F0h],rax
fffff803`d9cf8800 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9cf8809 488b8198030000  mov     rax,qword ptr [rcx+398h]
fffff803`d9cf8810 48898424f8000000 mov     qword ptr [rsp+0F8h],rax
fffff803`d9cf8818 488b81a0030000  mov     rax,qword ptr [rcx+3A0h]
fffff803`d9cf881f 4889842400010000 mov     qword ptr [rsp+100h],rax
fffff803`d9cf8827 89942420010000  mov     dword ptr [rsp+120h],edx
fffff803`d9cf882e 4d85ed          test    r13,r13
fffff803`d9cf8831 0f847c611900    je      nt! ?? ::NNGAKEGL::`string'+0x49467 (fffff803`d9e8e9b3)

nt!PspInsertThread+0x557:
fffff803`d9cf8837 4d8ba5a8000000  mov     r12,qword ptr [r13+0A8h]
fffff803`d9cf883e 4d85e4          test    r12,r12
fffff803`d9cf8841 0f846c611900    je      nt! ?? ::NNGAKEGL::`string'+0x49467 (fffff803`d9e8e9b3)

nt!PspInsertThread+0x567:
fffff803`d9cf8847 4c89a42498000000 mov     qword ptr [rsp+98h],r12

nt!PspInsertThread+0x56f:
fffff803`d9cf884f 4c89a42408010000 mov     qword ptr [rsp+108h],r12
fffff803`d9cf8857 4d85ed          test    r13,r13
fffff803`d9cf885a 0f841a050000    je      nt!PspInsertThread+0xa9a (fffff803`d9cf8d7a)

nt!PspInsertThread+0x580:
fffff803`d9cf8860 418b4504        mov     eax,dword ptr [r13+4]
fffff803`d9cf8864 a820            test    al,20h
fffff803`d9cf8866 0f840e050000    je      nt!PspInsertThread+0xa9a (fffff803`d9cf8d7a)

nt!PspInsertThread+0x58c:
fffff803`d9cf886c 498d85e0000000  lea     rax,[r13+0E0h]
fffff803`d9cf8873 838c24e800000001 or      dword ptr [rsp+0E8h],1

nt!PspInsertThread+0x59b:
fffff803`d9cf887b 4889842410010000 mov     qword ptr [rsp+110h],rax
fffff803`d9cf8883 4d85ed          test    r13,r13
fffff803`d9cf8886 0f84f8040000    je      nt!PspInsertThread+0xaa4 (fffff803`d9cf8d84)

nt!PspInsertThread+0x5ac:
fffff803`d9cf888c 498b85c8000000  mov     rax,qword ptr [r13+0C8h]
fffff803`d9cf8893 4885c0          test    rax,rax
fffff803`d9cf8896 0f84e8040000    je      nt!PspInsertThread+0xaa4 (fffff803`d9cf8d84)

nt!PspInsertThread+0x5bc:
fffff803`d9cf889c 4883c070        add     rax,70h
fffff803`d9cf88a0 4889842418010000 mov     qword ptr [rsp+118h],rax

nt!PspInsertThread+0x5c8:
fffff803`d9cf88a8 4c8dbc24e0000000 lea     r15,[rsp+0E0h]

nt!PspInsertThread+0x5d0:
fffff803`d9cf88b0 8bda            mov     ebx,edx
fffff803`d9cf88b2 440fb66c2440    movzx   r13d,byte ptr [rsp+40h]

nt!PspInsertThread+0x5d8:
fffff803`d9cf88b8 488d0d415de2ff  lea     rcx,[nt!PspCreateProcessNotifyRoutine (fffff803`d9b1e600)]
fffff803`d9cf88bf 8bc3            mov     eax,ebx
fffff803`d9cf88c1 488d34c1        lea     rsi,[rcx+rax*8]
fffff803`d9cf88c5 488bce          mov     rcx,rsi
fffff803`d9cf88c8 e8c3bec3ff      call    nt!ExReferenceCallBackBlock (fffff803`d9934790)
fffff803`d9cf88cd 488bf8          mov     rdi,rax
fffff803`d9cf88d0 4885c0          test    rax,rax
fffff803`d9cf88d3 7509            jne     nt!PspInsertThread+0x5fe (fffff803`d9cf88de)

nt!PspInsertThread+0x5f5:
fffff803`d9cf88d5 ffc3            inc     ebx
fffff803`d9cf88d7 83fb40          cmp     ebx,40h
fffff803`d9cf88da 72dc            jb      nt!PspInsertThread+0x5d8 (fffff803`d9cf88b8)

nt!PspInsertThread+0x5fc:
fffff803`d9cf88dc eb5c            jmp     nt!PspInsertThread+0x65a (fffff803`d9cf893a)

nt!PspInsertThread+0x5fe:
fffff803`d9cf88de 488bc8          mov     rcx,rax
fffff803`d9cf88e1 e84a3ac7ff      call    nt!ExGetCallBackBlockContext (fffff803`d996c330)
fffff803`d9cf88e6 4885c0          test    rax,rax
fffff803`d9cf88e9 7534            jne     nt!PspInsertThread+0x63f (fffff803`d9cf891f)

nt!PspInsertThread+0x60b:
fffff803`d9cf88eb e84c3ac7ff      call    nt!ExGetCallBackBlockRoutine (fffff803`d996c33c)
fffff803`d9cf88f0 41b001          mov     r8b,1
fffff803`d9cf88f3 498b96e0020000  mov     rdx,qword ptr [r14+2E0h]
fffff803`d9cf88fa 498b8ed0030000  mov     rcx,qword ptr [r14+3D0h]
fffff803`d9cf8901 ffd0            call    rax

nt!PspInsertThread+0x623:
fffff803`d9cf8903 488bd7          mov     rdx,rdi
fffff803`d9cf8906 488bce          mov     rcx,rsi
fffff803`d9cf8909 e85289c4ff      call    nt!ExDereferenceCallBackBlock (fffff803`d9941260)
fffff803`d9cf890e 4d85ff          test    r15,r15
fffff803`d9cf8911 74c2            je      nt!PspInsertThread+0x5f5 (fffff803`d9cf88d5)

nt!PspInsertThread+0x633:
fffff803`d9cf8913 41837f4000      cmp     dword ptr [r15+40h],0
fffff803`d9cf8918 7dbb            jge     nt!PspInsertThread+0x5f5 (fffff803`d9cf88d5)

nt!PspInsertThread+0x63a:
fffff803`d9cf891a e9b8601900      jmp     nt! ?? ::NNGAKEGL::`string'+0x4948b (fffff803`d9e8e9d7)

nt!PspInsertThread+0x63f:
fffff803`d9cf891f 4584ed          test    r13b,r13b
fffff803`d9cf8922 74df            je      nt!PspInsertThread+0x623 (fffff803`d9cf8903)

nt!PspInsertThread+0x644:
fffff803`d9cf8924 e8133ac7ff      call    nt!ExGetCallBackBlockRoutine (fffff803`d996c33c)
fffff803`d9cf8929 4d8bc7          mov     r8,r15
fffff803`d9cf892c 498b96e0020000  mov     rdx,qword ptr [r14+2E0h]
fffff803`d9cf8933 498bce          mov     rcx,r14
fffff803`d9cf8936 ffd0            call    rax
fffff803`d9cf8938 ebc9            jmp     nt!PspInsertThread+0x623 (fffff803`d9cf8903)

nt!PspInsertThread+0x65a:
fffff803`d9cf893a 807c244100      cmp     byte ptr [rsp+41h],0
fffff803`d9cf893f 0f85ab601900    jne     nt! ?? ::NNGAKEGL::`string'+0x494a4 (fffff803`d9e8e9f0)

nt!PspInsertThread+0x665:
fffff803`d9cf8945 8b742460        mov     esi,dword ptr [rsp+60h]
fffff803`d9cf8949 4c8b7c2468      mov     r15,qword ptr [rsp+68h]

nt!PspInsertThread+0x66e:
fffff803`d9cf894e 4c8b742470      mov     r14,qword ptr [rsp+70h]

nt!PspInsertThread+0x673:
fffff803`d9cf8953 8b052757eeff    mov     eax,dword ptr [nt!PerfGlobalGroupMask (fffff803`d9bde080)]
fffff803`d9cf8959 a802            test    al,2
fffff803`d9cf895b 0f855b030000    jne     nt!PspInsertThread+0x9dc (fffff803`d9cf8cbc)

nt!PspInsertThread+0x681:
fffff803`d9cf8961 8b051d61e2ff    mov     eax,dword ptr [nt!PspNotifyEnableMask (fffff803`d9b1ea84)]
fffff803`d9cf8967 a808            test    al,8
fffff803`d9cf8969 742d            je      nt!PspInsertThread+0x6b8 (fffff803`d9cf8998)

nt!PspInsertThread+0x68b:
fffff803`d9cf896b 488d1dae5ee2ff  lea     rbx,[nt!PspCreateThreadNotifyRoutine (fffff803`d9b1e820)]
fffff803`d9cf8972 bf40000000      mov     edi,40h

nt!PspInsertThread+0x697:
fffff803`d9cf8977 488bcb          mov     rcx,rbx
fffff803`d9cf897a e811bec3ff      call    nt!ExReferenceCallBackBlock (fffff803`d9934790)
fffff803`d9cf897f 488bf0          mov     rsi,rax
fffff803`d9cf8982 4885c0          test    rax,rax
fffff803`d9cf8985 0f8540010000    jne     nt!PspInsertThread+0x7eb (fffff803`d9cf8acb)

nt!PspInsertThread+0x6ab:
fffff803`d9cf898b 4883c308        add     rbx,8
fffff803`d9cf898f 48ffcf          dec     rdi
fffff803`d9cf8992 75e3            jne     nt!PspInsertThread+0x697 (fffff803`d9cf8977)

nt!PspInsertThread+0x6b4:
fffff803`d9cf8994 8b742460        mov     esi,dword ptr [rsp+60h]

nt!PspInsertThread+0x6b8:
fffff803`d9cf8998 85f6            test    esi,esi
fffff803`d9cf899a 0f88f3000000    js      nt!PspInsertThread+0x7b3 (fffff803`d9cf8a93)

nt!PspInsertThread+0x6c0:
fffff803`d9cf89a0 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff803`d9cf89a5 4585f6          test    r14d,r14d
fffff803`d9cf89a8 0f88eb030000    js      nt!PspInsertThread+0xab9 (fffff803`d9cf8d99)

nt!PspInsertThread+0x6ce:
fffff803`d9cf89ae 488b0d9b56eeff  mov     rcx,qword ptr [nt!PsThreadType (fffff803`d9bde050)]
fffff803`d9cf89b5 488d9f88010000  lea     rbx,[rdi+188h]
fffff803`d9cf89bc 48895c2430      mov     qword ptr [rsp+30h],rbx
fffff803`d9cf89c1 0fb68784010000  movzx   eax,byte ptr [rdi+184h]
fffff803`d9cf89c8 88442428        mov     byte ptr [rsp+28h],al
fffff803`d9cf89cc 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`d9cf89d1 4533c9          xor     r9d,r9d
fffff803`d9cf89d4 4c8bc7          mov     r8,rdi
fffff803`d9cf89d7 8b9780010000    mov     edx,dword ptr [rdi+180h]
fffff803`d9cf89dd 498bcf          mov     rcx,r15
fffff803`d9cf89e0 e84b53fdff      call    nt!ObOpenObjectByPointer (fffff803`d9ccdd30)
fffff803`d9cf89e5 8bf0            mov     esi,eax
fffff803`d9cf89e7 85c0            test    eax,eax
fffff803`d9cf89e9 7821            js      nt!PspInsertThread+0x72c (fffff803`d9cf8a0c)

nt!PspInsertThread+0x70b:
fffff803`d9cf89eb 440fb68784010000 movzx   r8d,byte ptr [rdi+184h]
fffff803`d9cf89f3 488b0b          mov     rcx,qword ptr [rbx]
fffff803`d9cf89f6 488b4748        mov     rax,qword ptr [rdi+48h]
fffff803`d9cf89fa 4c8b08          mov     r9,qword ptr [rax]
fffff803`d9cf89fd 4d85c9          test    r9,r9
fffff803`d9cf8a00 740a            je      nt!PspInsertThread+0x72c (fffff803`d9cf8a0c)

nt!PspInsertThread+0x722:
fffff803`d9cf8a02 41833900        cmp     dword ptr [r9],0
fffff803`d9cf8a06 0f87f25f1900    ja      nt! ?? ::NNGAKEGL::`string'+0x494b2 (fffff803`d9e8e9fe)

nt!PspInsertThread+0x72c:
fffff803`d9cf8a0c 488bcf          mov     rcx,rdi
fffff803`d9cf8a0f e83c48fcff      call    nt!SeDeleteAccessState (fffff803`d9cbd250)
fffff803`d9cf8a14 85f6            test    esi,esi
fffff803`d9cf8a16 0f88ff5f1900    js      nt! ?? ::NNGAKEGL::`string'+0x494cf (fffff803`d9e8ea1b)

nt!PspInsertThread+0x73c:
fffff803`d9cf8a1c 488b8f88010000  mov     rcx,qword ptr [rdi+188h]
fffff803`d9cf8a23 488b8424c8000000 mov     rax,qword ptr [rsp+0C8h]
fffff803`d9cf8a2b 488908          mov     qword ptr [rax],rcx
fffff803`d9cf8a2e eb5b            jmp     nt!PspInsertThread+0x7ab (fffff803`d9cf8a8b)

nt!PspInsertThread+0x7ab:
fffff803`d9cf8a8b 85f6            test    esi,esi
fffff803`d9cf8a8d 0f88885f1900    js      nt! ?? ::NNGAKEGL::`string'+0x494cf (fffff803`d9e8ea1b)

nt!PspInsertThread+0x7b3:
fffff803`d9cf8a93 41f6470340      test    byte ptr [r15+3],40h
fffff803`d9cf8a98 0f85c45f1900    jne     nt! ?? ::NNGAKEGL::`string'+0x4951a (fffff803`d9e8ea62)

nt!PspInsertThread+0x7be:
fffff803`d9cf8a9e 498bcf          mov     rcx,r15
fffff803`d9cf8aa1 e8960dc7ff      call    nt!KeReadyThread (fffff803`d996983c)
fffff803`d9cf8aa6 8bc6            mov     eax,esi

nt!PspInsertThread+0x7c8:
fffff803`d9cf8aa8 488b8c2498010000 mov     rcx,qword ptr [rsp+198h]
fffff803`d9cf8ab0 4833cc          xor     rcx,rsp
fffff803`d9cf8ab3 e808eabdff      call    nt!_security_check_cookie (fffff803`d98d74c0)
fffff803`d9cf8ab8 4881c4a0010000  add     rsp,1A0h
fffff803`d9cf8abf 415f            pop     r15
fffff803`d9cf8ac1 415e            pop     r14
fffff803`d9cf8ac3 415d            pop     r13
fffff803`d9cf8ac5 415c            pop     r12
fffff803`d9cf8ac7 5f              pop     rdi
fffff803`d9cf8ac8 5e              pop     rsi
fffff803`d9cf8ac9 5b              pop     rbx
fffff803`d9cf8aca c3              ret

nt!PspInsertThread+0x7eb:
fffff803`d9cf8acb 488bc8          mov     rcx,rax
fffff803`d9cf8ace e86938c7ff      call    nt!ExGetCallBackBlockRoutine (fffff803`d996c33c)
fffff803`d9cf8ad3 498b8f20020000  mov     rcx,qword ptr [r15+220h]
fffff803`d9cf8ada 41b001          mov     r8b,1
fffff803`d9cf8add 498b97a0030000  mov     rdx,qword ptr [r15+3A0h]
fffff803`d9cf8ae4 488b89e0020000  mov     rcx,qword ptr [rcx+2E0h]
fffff803`d9cf8aeb ffd0            call    rax
fffff803`d9cf8aed 488bd6          mov     rdx,rsi
fffff803`d9cf8af0 488bcb          mov     rcx,rbx
fffff803`d9cf8af3 e86887c4ff      call    nt!ExDereferenceCallBackBlock (fffff803`d9941260)
fffff803`d9cf8af8 e98efeffff      jmp     nt!PspInsertThread+0x6ab (fffff803`d9cf898b)

nt!PspInsertThread+0x81d:
fffff803`d9cf8afd 498d8ec8020000  lea     rcx,[r14+2C8h]
fffff803`d9cf8b04 f0480fba2900    lock bts qword ptr [rcx],0
fffff803`d9cf8b0a 0f83eff8ffff    jae     nt!PspInsertThread+0x11f (fffff803`d9cf83ff)

nt!PspInsertThread+0x830:
fffff803`d9cf8b10 e925020000      jmp     nt!PspInsertThread+0xa5a (fffff803`d9cf8d3a)

nt!PspInsertThread+0x835:
fffff803`d9cf8b15 418b8680040000  mov     eax,dword ptr [r14+480h]
fffff803`d9cf8b1c 83f802          cmp     eax,2
fffff803`d9cf8b1f 0f85e7f9ffff    jne     nt!PspInsertThread+0x22c (fffff803`d9cf850c)

nt!PspInsertThread+0x845:
fffff803`d9cf8b25 eb73            jmp     nt!PspInsertThread+0x8ba (fffff803`d9cf8b9a)

nt!PspInsertThread+0x847:
fffff803`d9cf8b27 4533f6          xor     r14d,r14d
fffff803`d9cf8b2a e924feffff      jmp     nt!PspInsertThread+0x673 (fffff803`d9cf8953)

nt!PspInsertThread+0x84f:
fffff803`d9cf8b2f 4c89742460      mov     qword ptr [rsp+60h],r14
fffff803`d9cf8b34 41bf01000000    mov     r15d,1
fffff803`d9cf8b3a e919fbffff      jmp     nt!PspInsertThread+0x378 (fffff803`d9cf8658)

nt!PspInsertThread+0x85f:
fffff803`d9cf8b3f 488b8c24a8000000 mov     rcx,qword ptr [rsp+0A8h]
fffff803`d9cf8b47 488908          mov     qword ptr [rax],rcx
fffff803`d9cf8b4a e996fbffff      jmp     nt!PspInsertThread+0x405 (fffff803`d9cf86e5)

nt!PspInsertThread+0x8ba:
fffff803`d9cf8b9a 41f786f802000000800000 test dword ptr [r14+2F8h],8000h
fffff803`d9cf8ba5 0f8561f9ffff    jne     nt!PspInsertThread+0x22c (fffff803`d9cf850c)

nt!PspInsertThread+0x8cb:
fffff803`d9cf8bab e9a7010000      jmp     nt!PspInsertThread+0xa77 (fffff803`d9cf8d57)

nt!PspInsertThread+0x8d0:
fffff803`d9cf8bb0 488b442468      mov     rax,qword ptr [rsp+68h]
fffff803`d9cf8bb5 8b4074          mov     eax,dword ptr [rax+74h]
fffff803`d9cf8bb8 0fbae00c        bt      eax,0Ch
fffff803`d9cf8bbc 0f8289f8ffff    jb      nt!PspInsertThread+0x16b (fffff803`d9cf844b)

nt!PspInsertThread+0x8e2:
fffff803`d9cf8bc2 488b8424f8010000 mov     rax,qword ptr [rsp+1F8h]
fffff803`d9cf8bca 8b00            mov     eax,dword ptr [rax]
fffff803`d9cf8bcc a802            test    al,2
fffff803`d9cf8bce 0f8577f8ffff    jne     nt!PspInsertThread+0x16b (fffff803`d9cf844b)

nt!PspInsertThread+0x8f4:
fffff803`d9cf8bd4 4885ff          test    rdi,rdi
fffff803`d9cf8bd7 7409            je      nt!PspInsertThread+0x902 (fffff803`d9cf8be2)

nt!PspInsertThread+0x8f9:
fffff803`d9cf8bd9 488d4f38        lea     rcx,[rdi+38h]
fffff803`d9cf8bdd e82e4dc2ff      call    nt!ExReleaseResourceLite (fffff803`d991d910)

nt!PspInsertThread+0x902:
fffff803`d9cf8be2 498d8ec8020000  lea     rcx,[r14+2C8h]
fffff803`d9cf8be9 4883cfff        or      rdi,0FFFFFFFFFFFFFFFFh
fffff803`d9cf8bed 488bc7          mov     rax,rdi
fffff803`d9cf8bf0 f0480fc101      lock xadd qword ptr [rcx],rax
fffff803`d9cf8bf5 a802            test    al,2
fffff803`d9cf8bf7 0f8519010000    jne     nt!PspInsertThread+0xa36 (fffff803`d9cf8d16)

nt!PspInsertThread+0x91d:
fffff803`d9cf8bfd 488b5c2468      mov     rbx,qword ptr [rsp+68h]
fffff803`d9cf8c02 488d8b18040000  lea     rcx,[rbx+418h]
fffff803`d9cf8c09 f0480fc139      lock xadd qword ptr [rcx],rdi
fffff803`d9cf8c0e 40f6c702        test    dil,2
fffff803`d9cf8c12 0f85975e1900    jne     nt! ?? ::NNGAKEGL::`string'+0x49567 (fffff803`d9e8eaaf)

nt!PspInsertThread+0x938:
fffff803`d9cf8c18 ba04000000      mov     edx,4
fffff803`d9cf8c1d 488b4b38        mov     rcx,qword ptr [rbx+38h]
fffff803`d9cf8c21 e80a26c4ff      call    nt!MmDeleteKernelStack (fffff803`d993b230)
fffff803`d9cf8c26 48c7432800000000 mov     qword ptr [rbx+28h],0
fffff803`d9cf8c2e 488b9c2408020000 mov     rbx,qword ptr [rsp+208h]
fffff803`d9cf8c36 4885db          test    rbx,rbx
fffff803`d9cf8c39 7456            je      nt!PspInsertThread+0x9b1 (fffff803`d9cf8c91)

nt!PspInsertThread+0x95b:
fffff803`d9cf8c3b 488b8424a8000000 mov     rax,qword ptr [rsp+0A8h]
fffff803`d9cf8c43 4885c0          test    rax,rax
fffff803`d9cf8c46 740b            je      nt!PspInsertThread+0x973 (fffff803`d9cf8c53)

nt!PspInsertThread+0x968:
fffff803`d9cf8c48 488bd0          mov     rdx,rax
fffff803`d9cf8c4b 498bce          mov     rcx,r14
fffff803`d9cf8c4e e8a9f70200      call    nt!MmDeleteTeb (fffff803`d9d283fc)

nt!PspInsertThread+0x973:
fffff803`d9cf8c53 803b00          cmp     byte ptr [rbx],0
fffff803`d9cf8c56 7439            je      nt!PspInsertThread+0x9b1 (fffff803`d9cf8c91)

nt!PspInsertThread+0x978:
fffff803`d9cf8c58 488d942438010000 lea     rdx,[rsp+138h]
fffff803`d9cf8c60 498bce          mov     rcx,r14
fffff803`d9cf8c63 e8c87dc3ff      call    nt!KeStackAttachProcess (fffff803`d9930a30)
fffff803`d9cf8c68 4c8b6c2458      mov     r13,qword ptr [rsp+58h]
fffff803`d9cf8c6d f60302          test    byte ptr [rbx],2
fffff803`d9cf8c70 7409            je      nt!PspInsertThread+0x99b (fffff803`d9cf8c7b)

nt!PspInsertThread+0x992:
fffff803`d9cf8c72 498b4d20        mov     rcx,qword ptr [r13+20h]
fffff803`d9cf8c76 e8957a0300      call    nt!RtlFreeUserStack (fffff803`d9d30710)

nt!PspInsertThread+0x99b:
fffff803`d9cf8c7b f60304          test    byte ptr [rbx],4
fffff803`d9cf8c7e 0f8584000000    jne     nt!PspInsertThread+0xa28 (fffff803`d9cf8d08)

nt!PspInsertThread+0x9a4:
fffff803`d9cf8c84 488d8c2438010000 lea     rcx,[rsp+138h]
fffff803`d9cf8c8c e8ff77c3ff      call    nt!KeUnstackDetachProcess (fffff803`d9930490)

nt!PspInsertThread+0x9b1:
fffff803`d9cf8c91 418b86fc020000  mov     eax,dword ptr [r14+2FCh]
fffff803`d9cf8c98 a908000040      test    eax,40000008h
fffff803`d9cf8c9d 0f84215e1900    je      nt! ?? ::NNGAKEGL::`string'+0x4957c (fffff803`d9e8eac4)

nt!PspInsertThread+0x9c3:
fffff803`d9cf8ca3 b80a0100c0      mov     eax,0C000010Ah
fffff803`d9cf8ca8 e9fbfdffff      jmp     nt!PspInsertThread+0x7c8 (fffff803`d9cf8aa8)

nt!PspInsertThread+0x9cd:
fffff803`d9cf8cad 488b442448      mov     rax,qword ptr [rsp+48h]
fffff803`d9cf8cb2 4c8b642458      mov     r12,qword ptr [rsp+58h]
fffff803`d9cf8cb7 e9a0faffff      jmp     nt!PspInsertThread+0x47c (fffff803`d9cf875c)

nt!PspInsertThread+0x9dc:
fffff803`d9cf8cbc 41b001          mov     r8b,1
fffff803`d9cf8cbf 488b542458      mov     rdx,qword ptr [rsp+58h]
fffff803`d9cf8cc4 498bcf          mov     rcx,r15
fffff803`d9cf8cc7 e8501a0700      call    nt!EtwTraceThread (fffff803`d9d6a71c)
fffff803`d9cf8ccc e990fcffff      jmp     nt!PspInsertThread+0x681 (fffff803`d9cf8961)

nt!PspInsertThread+0x9f1:
fffff803`d9cf8cd1 4d8dbdf4000000  lea     r15,[r13+0F4h]
fffff803`d9cf8cd8 e9fff6ffff      jmp     nt!PspInsertThread+0xfc (fffff803`d9cf83dc)

nt!PspInsertThread+0x9fd:
fffff803`d9cf8cdd 498db538010000  lea     rsi,[r13+138h]
fffff803`d9cf8ce4 e9fdf6ffff      jmp     nt!PspInsertThread+0x106 (fffff803`d9cf83e6)

nt!PspInsertThread+0xa09:
fffff803`d9cf8ce9 4889942490000000 mov     qword ptr [rsp+90h],rdx
fffff803`d9cf8cf1 48899424b8000000 mov     qword ptr [rsp+0B8h],rdx
fffff803`d9cf8cf9 e9f6f6ffff      jmp     nt!PspInsertThread+0x114 (fffff803`d9cf83f4)

nt!PspInsertThread+0xa1e:
fffff803`d9cf8cfe b801000000      mov     eax,1
fffff803`d9cf8d03 e94ef7ffff      jmp     nt!PspInsertThread+0x176 (fffff803`d9cf8456)

nt!PspInsertThread+0xa28:
fffff803`d9cf8d08 498b4d38        mov     rcx,qword ptr [r13+38h]
fffff803`d9cf8d0c e8ff790300      call    nt!RtlFreeUserStack (fffff803`d9d30710)
fffff803`d9cf8d11 e96effffff      jmp     nt!PspInsertThread+0x9a4 (fffff803`d9cf8c84)

nt!PspInsertThread+0xa36:
fffff803`d9cf8d16 a804            test    al,4
fffff803`d9cf8d18 0f85dffeffff    jne     nt!PspInsertThread+0x91d (fffff803`d9cf8bfd)

nt!PspInsertThread+0xa3e:
fffff803`d9cf8d1e e8f102c7ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9cf8d23 e9d5feffff      jmp     nt!PspInsertThread+0x91d (fffff803`d9cf8bfd)

nt!PspInsertThread+0xa48:
fffff803`d9cf8d28 a804            test    al,4
fffff803`d9cf8d2a 0f8551f8ffff    jne     nt!PspInsertThread+0x2a1 (fffff803`d9cf8581)

nt!PspInsertThread+0xa50:
fffff803`d9cf8d30 e8df02c7ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9cf8d35 e947f8ffff      jmp     nt!PspInsertThread+0x2a1 (fffff803`d9cf8581)

nt!PspInsertThread+0xa5a:
fffff803`d9cf8d3a e8c1c6c6ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9cf8d3f e9bbf6ffff      jmp     nt!PspInsertThread+0x11f (fffff803`d9cf83ff)

nt!PspInsertThread+0xa64:
fffff803`d9cf8d44 8b8738030000    mov     eax,dword ptr [rdi+338h]
fffff803`d9cf8d4a a810            test    al,10h
fffff803`d9cf8d4c 0f84cdf6ffff    je      nt!PspInsertThread+0x13f (fffff803`d9cf841f)

nt!PspInsertThread+0xa72:
fffff803`d9cf8d52 e9fd5a1900      jmp     nt! ?? ::NNGAKEGL::`string'+0x492ea (fffff803`d9e8e854)

nt!PspInsertThread+0xa77:
fffff803`d9cf8d57 f0410fbaaef80200000f lock bts dword ptr [r14+2F8h],0Fh
fffff803`d9cf8d61 e9a6f7ffff      jmp     nt!PspInsertThread+0x22c (fffff803`d9cf850c)

nt!PspInsertThread+0xa86:
fffff803`d9cf8d66 32c9            xor     cl,cl
fffff803`d9cf8d68 e946faffff      jmp     nt!PspInsertThread+0x4d3 (fffff803`d9cf87b3)

nt!PspInsertThread+0xa8d:
fffff803`d9cf8d6d 84c9            test    cl,cl
fffff803`d9cf8d6f 0f84d9fbffff    je      nt!PspInsertThread+0x66e (fffff803`d9cf894e)

nt!PspInsertThread+0xa95:
fffff803`d9cf8d75 e94bfaffff      jmp     nt!PspInsertThread+0x4e5 (fffff803`d9cf87c5)

nt!PspInsertThread+0xa9a:
fffff803`d9cf8d7a 498d442458      lea     rax,[r12+58h]
fffff803`d9cf8d7f e9f7faffff      jmp     nt!PspInsertThread+0x59b (fffff803`d9cf887b)

nt!PspInsertThread+0xaa4:
fffff803`d9cf8d84 4889942418010000 mov     qword ptr [rsp+118h],rdx
fffff803`d9cf8d8c e917fbffff      jmp     nt!PspInsertThread+0x5c8 (fffff803`d9cf88a8)

nt!PspInsertThread+0xab1:
fffff803`d9cf8d91 4c8bfa          mov     r15,rdx
fffff803`d9cf8d94 e917fbffff      jmp     nt!PspInsertThread+0x5d0 (fffff803`d9cf88b0)

nt!PspInsertThread+0xab9:
fffff803`d9cf8d99 418bf6          mov     esi,r14d
fffff803`d9cf8d9c e96bfcffff      jmp     nt!PspInsertThread+0x72c (fffff803`d9cf8a0c)

nt! ?? ::NNGAKEGL::`string'+0x492ea:
fffff803`d9e8e854 0fb74608        movzx   eax,word ptr [rsi+8]
fffff803`d9e8e858 488b94c768020000 mov     rdx,qword ptr [rdi+rax*8+268h]
fffff803`d9e8e860 4885d2          test    rdx,rdx
fffff803`d9e8e863 7412            je      nt! ?? ::NNGAKEGL::`string'+0x49311 (fffff803`d9e8e877)

nt! ?? ::NNGAKEGL::`string'+0x492ff:
fffff803`d9e8e865 488b0e          mov     rcx,qword ptr [rsi]
fffff803`d9e8e868 488bc1          mov     rax,rcx
fffff803`d9e8e86b 4823c2          and     rax,rdx
fffff803`d9e8e86e 483bc1          cmp     rax,rcx
fffff803`d9e8e871 0f84a89be6ff    je      nt!PspInsertThread+0x13f (fffff803`d9cf841f)

nt! ?? ::NNGAKEGL::`string'+0x49311:
fffff803`d9e8e877 83cb02          or      ebx,2
fffff803`d9e8e87a 895c2450        mov     dword ptr [rsp+50h],ebx
fffff803`d9e8e87e e99c9be6ff      jmp     nt!PspInsertThread+0x13f (fffff803`d9cf841f)

nt! ?? ::NNGAKEGL::`string'+0x4931d:
fffff803`d9e8e883 488b8424f8010000 mov     rax,qword ptr [rsp+1F8h]
fffff803`d9e8e88b 8b00            mov     eax,dword ptr [rax]
fffff803`d9e8e88d a802            test    al,2
fffff803`d9e8e88f 0f84f79be6ff    je      nt!PspInsertThread+0x1ac (fffff803`d9cf848c)

nt! ?? ::NNGAKEGL::`string'+0x4932f:
fffff803`d9e8e895 41838f3004000010 or      dword ptr [r15+430h],10h
fffff803`d9e8e89d e9ea9be6ff      jmp     nt!PspInsertThread+0x1ac (fffff803`d9cf848c)

nt! ?? ::NNGAKEGL::`string'+0x4933c:
fffff803`d9e8e8a2 488bce          mov     rcx,rsi
fffff803`d9e8e8a5 e8566badff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9e8e8aa 90              nop
fffff803`d9e8e8ab e96f9ce6ff      jmp     nt!PspInsertThread+0x23f (fffff803`d9cf851f)

nt! ?? ::NNGAKEGL::`string'+0x4934a:
fffff803`d9e8e8b0 b903000000      mov     ecx,3
fffff803`d9e8e8b5 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x49351:
fffff803`d9e8e8b7 a804            test    al,4
fffff803`d9e8e8b9 0f859d9ce6ff    jne     nt!PspInsertThread+0x27c (fffff803`d9cf855c)

nt! ?? ::NNGAKEGL::`string'+0x49359:
fffff803`d9e8e8bf 488bce          mov     rcx,rsi
fffff803`d9e8e8c2 e84da7adff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9e8e8c7 90              nop
fffff803`d9e8e8c8 e98f9ce6ff      jmp     nt!PspInsertThread+0x27c (fffff803`d9cf855c)

nt! ?? ::NNGAKEGL::`string'+0x49367:
fffff803`d9e8e8cd f0410fba2f19    lock bts dword ptr [r15],19h
fffff803`d9e8e8d3 e9929ce6ff      jmp     nt!PspInsertThread+0x28a (fffff803`d9cf856a)

nt! ?? ::NNGAKEGL::`string'+0x49372:
fffff803`d9e8e8d8 498bcf          mov     rcx,r15
fffff803`d9e8e8db e818c9adff      call    nt!KeForceResumeThread (fffff803`d996b1f8)
fffff803`d9e8e8e0 90              nop
fffff803`d9e8e8e1 e94b9de6ff      jmp     nt!PspInsertThread+0x351 (fffff803`d9cf8631)

nt! ?? ::NNGAKEGL::`string'+0x49380:
fffff803`d9e8e8e6 488bc8          mov     rcx,rax
fffff803`d9e8e8e9 e862e9e2ff      call    nt!SeDeleteAccessState (fffff803`d9cbd250)
fffff803`d9e8e8ee eb16            jmp     nt! ?? ::NNGAKEGL::`string'+0x493a3 (fffff803`d9e8e906)

nt! ?? ::NNGAKEGL::`string'+0x4938d:
fffff803`d9e8e8f0 4c8b7c2468      mov     r15,qword ptr [rsp+68h]
fffff803`d9e8e8f5 498bcf          mov     rcx,r15
fffff803`d9e8e8f8 e8e362a9ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9e8e8fd 8b742460        mov     esi,dword ptr [rsp+60h]
fffff803`d9e8e901 4c8b642458      mov     r12,qword ptr [rsp+58h]

nt! ?? ::NNGAKEGL::`string'+0x493a3:
fffff803`d9e8e906 85f6            test    esi,esi
fffff803`d9e8e908 0f89569ee6ff    jns     nt!PspInsertThread+0x484 (fffff803`d9cf8764)

nt! ?? ::NNGAKEGL::`string'+0x493ab:
fffff803`d9e8e90e 498d8f18040000  lea     rcx,[r15+418h]
fffff803`d9e8e915 f0480fc139      lock xadd qword ptr [rcx],rdi
fffff803`d9e8e91a 40f6c702        test    dil,2
fffff803`d9e8e91e 7422            je      nt! ?? ::NNGAKEGL::`string'+0x493ea (fffff803`d9e8e942)

nt! ?? ::NNGAKEGL::`string'+0x493c1:
fffff803`d9e8e920 40f6c704        test    dil,4
fffff803`d9e8e924 751c            jne     nt! ?? ::NNGAKEGL::`string'+0x493ea (fffff803`d9e8e942)

nt! ?? ::NNGAKEGL::`string'+0x493cb:
fffff803`d9e8e926 e8e9a6adff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9e8e92b eb15            jmp     nt! ?? ::NNGAKEGL::`string'+0x493ea (fffff803`d9e8e942)

nt! ?? ::NNGAKEGL::`string'+0x493d5:
fffff803`d9e8e92d 40f6c704        test    dil,4
fffff803`d9e8e931 0f854c9ee6ff    jne     nt!PspInsertThread+0x4a3 (fffff803`d9cf8783)

nt! ?? ::NNGAKEGL::`string'+0x493df:
fffff803`d9e8e937 e8d8a6adff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9e8e93c 90              nop
fffff803`d9e8e93d e9419ee6ff      jmp     nt!PspInsertThread+0x4a3 (fffff803`d9cf8783)

nt! ?? ::NNGAKEGL::`string'+0x493ea:
fffff803`d9e8e942 488b8424f8010000 mov     rax,qword ptr [rsp+1F8h]
fffff803`d9e8e94a 8b00            mov     eax,dword ptr [rax]
fffff803`d9e8e94c a801            test    al,1
fffff803`d9e8e94e 7408            je      nt! ?? ::NNGAKEGL::`string'+0x49404 (fffff803`d9e8e958)

nt! ?? ::NNGAKEGL::`string'+0x493fc:
fffff803`d9e8e950 498bcf          mov     rcx,r15
fffff803`d9e8e953 e8a0c8adff      call    nt!KeForceResumeThread (fffff803`d996b1f8)

nt! ?? ::NNGAKEGL::`string'+0x49404:
fffff803`d9e8e958 488bbc2408020000 mov     rdi,qword ptr [rsp+208h]
fffff803`d9e8e960 4885ff          test    rdi,rdi
fffff803`d9e8e963 0f841a9ee6ff    je      nt!PspInsertThread+0x4a3 (fffff803`d9cf8783)

nt! ?? ::NNGAKEGL::`string'+0x49415:
fffff803`d9e8e969 803f00          cmp     byte ptr [rdi],0
fffff803`d9e8e96c 0f84119ee6ff    je      nt!PspInsertThread+0x4a3 (fffff803`d9cf8783)

nt! ?? ::NNGAKEGL::`string'+0x4941e:
fffff803`d9e8e972 488d942468010000 lea     rdx,[rsp+168h]
fffff803`d9e8e97a 498bce          mov     rcx,r14
fffff803`d9e8e97d e8ae20aaff      call    nt!KeStackAttachProcess (fffff803`d9930a30)
fffff803`d9e8e982 f60702          test    byte ptr [rdi],2
fffff803`d9e8e985 740a            je      nt! ?? ::NNGAKEGL::`string'+0x49441 (fffff803`d9e8e991)

nt! ?? ::NNGAKEGL::`string'+0x49437:
fffff803`d9e8e987 498b4c2420      mov     rcx,qword ptr [r12+20h]
fffff803`d9e8e98c e87f1deaff      call    nt!RtlFreeUserStack (fffff803`d9d30710)

nt! ?? ::NNGAKEGL::`string'+0x49441:
fffff803`d9e8e991 f60704          test    byte ptr [rdi],4
fffff803`d9e8e994 740a            je      nt! ?? ::NNGAKEGL::`string'+0x49454 (fffff803`d9e8e9a0)

nt! ?? ::NNGAKEGL::`string'+0x4944a:
fffff803`d9e8e996 498b4c2438      mov     rcx,qword ptr [r12+38h]
fffff803`d9e8e99b e8701deaff      call    nt!RtlFreeUserStack (fffff803`d9d30710)

nt! ?? ::NNGAKEGL::`string'+0x49454:
fffff803`d9e8e9a0 488d8c2468010000 lea     rcx,[rsp+168h]
fffff803`d9e8e9a8 e8e31aaaff      call    nt!KeUnstackDetachProcess (fffff803`d9930490)
fffff803`d9e8e9ad 90              nop
fffff803`d9e8e9ae e9d09de6ff      jmp     nt!PspInsertThread+0x4a3 (fffff803`d9cf8783)

nt! ?? ::NNGAKEGL::`string'+0x49467:
fffff803`d9e8e9b3 c644244101      mov     byte ptr [rsp+41h],1
fffff803`d9e8e9b8 488d942498000000 lea     rdx,[rsp+98h]
fffff803`d9e8e9c0 498bce          mov     rcx,r14
fffff803`d9e8e9c3 e838a2e8ff      call    nt!PsReferenceProcessFilePointer (fffff803`d9d18c00)
fffff803`d9e8e9c8 4c8ba42498000000 mov     r12,qword ptr [rsp+98h]
fffff803`d9e8e9d0 33d2            xor     edx,edx
fffff803`d9e8e9d2 e9789ee6ff      jmp     nt!PspInsertThread+0x56f (fffff803`d9cf884f)

nt! ?? ::NNGAKEGL::`string'+0x4948b:
fffff803`d9e8e9d7 418b4740        mov     eax,dword ptr [r15+40h]
fffff803`d9e8e9db 4889442470      mov     qword ptr [rsp+70h],rax
fffff803`d9e8e9e0 8bd0            mov     edx,eax
fffff803`d9e8e9e2 498bce          mov     rcx,r14
fffff803`d9e8e9e5 e8de42deff      call    nt!PsTerminateProcess (fffff803`d9c72cc8)
fffff803`d9e8e9ea 90              nop
fffff803`d9e8e9eb e94a9fe6ff      jmp     nt!PspInsertThread+0x65a (fffff803`d9cf893a)

nt! ?? ::NNGAKEGL::`string'+0x494a4:
fffff803`d9e8e9f0 498bcc          mov     rcx,r12
fffff803`d9e8e9f3 e8e861a9ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9e8e9f8 90              nop
fffff803`d9e8e9f9 e9479fe6ff      jmp     nt!PspInsertThread+0x665 (fffff803`d9cf8945)

nt! ?? ::NNGAKEGL::`string'+0x494b2:
fffff803`d9e8e9fe 488d5720        lea     rdx,[rdi+20h]
fffff803`d9e8ea02 4488442428      mov     byte ptr [rsp+28h],r8b
fffff803`d9e8ea07 c644242001      mov     byte ptr [rsp+20h],1
fffff803`d9e8ea0c 448b4714        mov     r8d,dword ptr [rdi+14h]
fffff803`d9e8ea10 e8e3c7daff      call    nt!SePrivilegeObjectAuditAlarm (fffff803`d9c3b1f8)
fffff803`d9e8ea15 90              nop
fffff803`d9e8ea16 e9f19fe6ff      jmp     nt!PspInsertThread+0x72c (fffff803`d9cf8a0c)

nt! ?? ::NNGAKEGL::`string'+0x494cf:
fffff803`d9e8ea1b 41f7477400100000 test    dword ptr [r15+74h],1000h
fffff803`d9e8ea23 7513            jne     nt! ?? ::NNGAKEGL::`string'+0x494f0 (fffff803`d9e8ea38)

nt! ?? ::NNGAKEGL::`string'+0x494dd:
fffff803`d9e8ea25 4533c0          xor     r8d,r8d
fffff803`d9e8ea28 8bd6            mov     edx,esi
fffff803`d9e8ea2a 498bcf          mov     rcx,r15
fffff803`d9e8ea2d e8762ce7ff      call    nt!PspTerminateThreadByPointer (fffff803`d9d016a8)
fffff803`d9e8ea32 90              nop
fffff803`d9e8ea33 e95ba0e6ff      jmp     nt!PspInsertThread+0x7b3 (fffff803`d9cf8a93)

nt! ?? ::NNGAKEGL::`string'+0x494f0:
fffff803`d9e8ea38 f0410fbaaf2c04000000 lock bts dword ptr [r15+42Ch],0
fffff803`d9e8ea42 488b8424f8010000 mov     rax,qword ptr [rsp+1F8h]
fffff803`d9e8ea4a 8b00            mov     eax,dword ptr [rax]
fffff803`d9e8ea4c a801            test    al,1
fffff803`d9e8ea4e 0f843fa0e6ff    je      nt!PspInsertThread+0x7b3 (fffff803`d9cf8a93)

nt! ?? ::NNGAKEGL::`string'+0x4950c:
fffff803`d9e8ea54 498bcf          mov     rcx,r15
fffff803`d9e8ea57 e89cc7adff      call    nt!KeForceResumeThread (fffff803`d996b1f8)
fffff803`d9e8ea5c 90              nop
fffff803`d9e8ea5d e931a0e6ff      jmp     nt!PspInsertThread+0x7b3 (fffff803`d9cf8a93)

nt! ?? ::NNGAKEGL::`string'+0x4951a:
fffff803`d9e8ea62 85f6            test    esi,esi
fffff803`d9e8ea64 0f8934a0e6ff    jns     nt!PspInsertThread+0x7be (fffff803`d9cf8a9e)

nt! ?? ::NNGAKEGL::`string'+0x49522:
fffff803`d9e8ea6a 498b8ff0010000  mov     rcx,qword ptr [r15+1F0h]
fffff803`d9e8ea71 33d2            xor     edx,edx
fffff803`d9e8ea73 488b09          mov     rcx,qword ptr [rcx]
fffff803`d9e8ea76 e829ddf5ff      call    nt!KeSetUmsThreadKernelLock (fffff803`d9dec7a4)
fffff803`d9e8ea7b 498b8ff0010000  mov     rcx,qword ptr [r15+1F0h]
fffff803`d9e8ea82 4533c0          xor     r8d,r8d
fffff803`d9e8ea85 418d5002        lea     edx,[r8+2]
fffff803`d9e8ea89 488b09          mov     rcx,qword ptr [rcx]
fffff803`d9e8ea8c e81fd7f5ff      call    nt!KeUpdateUmsThreadState (fffff803`d9dec1b0)
fffff803`d9e8ea91 498b8ff0010000  mov     rcx,qword ptr [r15+1F0h]
fffff803`d9e8ea98 488b4910        mov     rcx,qword ptr [rcx+10h]
fffff803`d9e8ea9c e83f61a9ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9e8eaa1 498bcf          mov     rcx,r15
fffff803`d9e8eaa4 e867ddf5ff      call    nt!KeUnInitializeUmsThread (fffff803`d9dec810)
fffff803`d9e8eaa9 90              nop
fffff803`d9e8eaaa e9ef9fe6ff      jmp     nt!PspInsertThread+0x7be (fffff803`d9cf8a9e)

nt! ?? ::NNGAKEGL::`string'+0x49567:
fffff803`d9e8eaaf 40f6c704        test    dil,4
fffff803`d9e8eab3 0f855fa1e6ff    jne     nt!PspInsertThread+0x938 (fffff803`d9cf8c18)

nt! ?? ::NNGAKEGL::`string'+0x49571:
fffff803`d9e8eab9 e856a5adff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9e8eabe 90              nop
fffff803`d9e8eabf e954a1e6ff      jmp     nt!PspInsertThread+0x938 (fffff803`d9cf8c18)

nt! ?? ::NNGAKEGL::`string'+0x4957c:
fffff803`d9e8eac4 b8010000c0      mov     eax,0C0000001h
fffff803`d9e8eac9 e9da9fe6ff      jmp     nt!PspInsertThread+0x7c8 (fffff803`d9cf8aa8)
