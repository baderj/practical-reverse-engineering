nt!KeRemoveQueueDpc:
fffff803`21c90a60 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21c90a65 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`21c90a6a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`21c90a6f 9c              pushfq
fffff803`21c90a70 57              push    rdi
fffff803`21c90a71 4156            push    r14
fffff803`21c90a73 4883ec20        sub     rsp,20h
fffff803`21c90a77 488be9          mov     rbp,rcx
fffff803`21c90a7a 4532f6          xor     r14b,r14b
fffff803`21c90a7d fa              cli
fffff803`21c90a7e 8b742430        mov     esi,dword ptr [rsp+30h]
fffff803`21c90a82 488b7938        mov     rdi,qword ptr [rcx+38h]
fffff803`21c90a86 c1ee09          shr     esi,9
fffff803`21c90a89 4080e601        and     sil,1
fffff803`21c90a8d 4885ff          test    rdi,rdi
fffff803`21c90a90 0f8556a31b00    jne     nt! ?? ::FNODOBFM::`string'+0x12bac (fffff803`21e4adec)

nt!KeRemoveQueueDpc+0x37:
fffff803`21c90a96 4084f6          test    sil,sil
fffff803`21c90a99 7401            je      nt!KeRemoveQueueDpc+0x3d (fffff803`21c90a9c)

nt!KeRemoveQueueDpc+0x3c:
fffff803`21c90a9b fb              sti

nt!KeRemoveQueueDpc+0x3d:
fffff803`21c90a9c 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21c90aa1 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`21c90aa6 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`21c90aab 418ac6          mov     al,r14b
fffff803`21c90aae 4883c420        add     rsp,20h
fffff803`21c90ab2 415e            pop     r14
fffff803`21c90ab4 5f              pop     rdi
fffff803`21c90ab5 59              pop     rcx
fffff803`21c90ab6 c3              ret

nt!KeRemoveQueueDpc+0x58:
fffff803`21c90ab7 f048832300      lock and qword ptr [rbx],0
fffff803`21c90abc ebd8            jmp     nt!KeRemoveQueueDpc+0x37 (fffff803`21c90a96)

nt!KeFlushQueuedDpcs+0x80:
fffff803`21c9d1f0 488b01          mov     rax,qword ptr [rcx]
fffff803`21c9d1f3 4c397050        cmp     qword ptr [rax+50h],r14
fffff803`21c9d1f7 7419            je      nt!KeFlushQueuedDpcs+0xa2 (fffff803`21c9d212)

nt!KeFlushQueuedDpcs+0x89:
fffff803`21c9d1f9 0fb75058        movzx   edx,word ptr [rax+58h]
fffff803`21c9d1fd 4c8b00          mov     r8,qword ptr [rax]
fffff803`21c9d200 663955d0        cmp     word ptr [rbp-30h],dx
fffff803`21c9d204 0f866adc1a00    jbe     nt! ?? ::FNODOBFM::`string'+0x12c32 (fffff803`21e4ae74)

nt!KeFlushQueuedDpcs+0x9a:
fffff803`21c9d20a 0fb7c2          movzx   eax,dx
fffff803`21c9d20d 4c0944c5d8      or      qword ptr [rbp+rax*8-28h],r8

nt!KeFlushQueuedDpcs+0xa2:
fffff803`21c9d212 4883c108        add     rcx,8
fffff803`21c9d216 492bff          sub     rdi,r15
fffff803`21c9d219 75d5            jne     nt!KeFlushQueuedDpcs+0x80 (fffff803`21c9d1f0)

nt!KeFlushQueuedDpcs+0xab:
fffff803`21c9d21b 400fb6c6        movzx   eax,sil
fffff803`21c9d21f 440f22c0        mov     cr8,rax
fffff803`21c9d223 440fb74dd0      movzx   r9d,word ptr [rbp-30h]
fffff803`21c9d228 418bce          mov     ecx,r14d
fffff803`21c9d22b 4585c9          test    r9d,r9d
fffff803`21c9d22e 741f            je      nt!KeFlushQueuedDpcs+0xdf (fffff803`21c9d24f)

nt!KeFlushQueuedDpcs+0xc0:
fffff803`21c9d230 498bd6          mov     rdx,r14
fffff803`21c9d233 418bc9          mov     ecx,r9d
fffff803`21c9d236 418bf9          mov     edi,r9d

nt!KeFlushQueuedDpcs+0xc9:
fffff803`21c9d239 488b4415d8      mov     rax,qword ptr [rbp+rdx-28h]
fffff803`21c9d23e 4883c208        add     rdx,8
fffff803`21c9d242 48f7d0          not     rax
fffff803`21c9d245 4889441420      mov     qword ptr [rsp+rdx+20h],rax
fffff803`21c9d24a 492bff          sub     rdi,r15
fffff803`21c9d24d 75ea            jne     nt!KeFlushQueuedDpcs+0xc9 (fffff803`21c9d239)

nt!KeFlushQueuedDpcs+0xdf:
fffff803`21c9d24f 440fb745d2      movzx   r8d,word ptr [rbp-2Eh]
fffff803`21c9d254 4863c1          movsxd  rax,ecx
fffff803`21c9d257 413bc8          cmp     ecx,r8d
fffff803`21c9d25a 7317            jae     nt!KeFlushQueuedDpcs+0x103 (fffff803`21c9d273)

nt!KeFlushQueuedDpcs+0xec:
fffff803`21c9d25c 488d7c2428      lea     rdi,[rsp+28h]
fffff803`21c9d261 488d3cc7        lea     rdi,[rdi+rax*8]
fffff803`21c9d265 418bc0          mov     eax,r8d
fffff803`21c9d268 2bc1            sub     eax,ecx
fffff803`21c9d26a 8bc8            mov     ecx,eax
fffff803`21c9d26c 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`21c9d270 f348ab          rep stos qword ptr [rdi]

nt!KeFlushQueuedDpcs+0x103:
fffff803`21c9d273 0fb70526d43200  movzx   eax,word ptr [nt!KeActiveProcessors (fffff803`21fca6a0)]
fffff803`21c9d27a 4489742424      mov     dword ptr [rsp+24h],r14d
fffff803`21c9d27f 66895c2422      mov     word ptr [rsp+22h],bx
fffff803`21c9d284 663945d2        cmp     word ptr [rbp-2Eh],ax
fffff803`21c9d288 7204            jb      nt!KeFlushQueuedDpcs+0x11e (fffff803`21c9d28e)

nt!KeFlushQueuedDpcs+0x11a:
fffff803`21c9d28a 440fb7c0        movzx   r8d,ax

nt!KeFlushQueuedDpcs+0x11e:
fffff803`21c9d28e 664489442420    mov     word ptr [rsp+20h],r8w
fffff803`21c9d294 410fb7d6        movzx   edx,r14w
fffff803`21c9d298 4c8d15614dfdff  lea     r10,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21c9d29f 66453bf0        cmp     r14w,r8w
fffff803`21c9d2a3 7325            jae     nt!KeFlushQueuedDpcs+0x15a (fffff803`21c9d2ca)

nt!KeFlushQueuedDpcs+0x135:
fffff803`21c9d2a5 0fb7ca          movzx   ecx,dx
fffff803`21c9d2a8 664103d7        add     dx,r15w
fffff803`21c9d2ac 488b44cc28      mov     rax,qword ptr [rsp+rcx*8+28h]
fffff803`21c9d2b1 492384caa8863500 and     rax,qword ptr [r10+rcx*8+3586A8h]
fffff803`21c9d2b9 488944cc28      mov     qword ptr [rsp+rcx*8+28h],rax
fffff803`21c9d2be 663b542420      cmp     dx,word ptr [rsp+20h]
fffff803`21c9d2c3 72e0            jb      nt!KeFlushQueuedDpcs+0x135 (fffff803`21c9d2a5)

nt!KeFlushQueuedDpcs+0x155:
fffff803`21c9d2c5 0fb75c2422      movzx   ebx,word ptr [rsp+22h]

nt!KeFlushQueuedDpcs+0x15a:
fffff803`21c9d2ca 4489742424      mov     dword ptr [rsp+24h],r14d
fffff803`21c9d2cf 663bd3          cmp     dx,bx
fffff803`21c9d2d2 7313            jae     nt!KeFlushQueuedDpcs+0x177 (fffff803`21c9d2e7)

nt!KeFlushQueuedDpcs+0x164:
fffff803`21c9d2d4 0fb7c2          movzx   eax,dx
fffff803`21c9d2d7 664103d7        add     dx,r15w
fffff803`21c9d2db 4c8974c428      mov     qword ptr [rsp+rax*8+28h],r14
fffff803`21c9d2e0 663b542422      cmp     dx,word ptr [rsp+22h]
fffff803`21c9d2e5 72ed            jb      nt!KeFlushQueuedDpcs+0x164 (fffff803`21c9d2d4)

nt!KeFlushQueuedDpcs+0x177:
fffff803`21c9d2e7 4c8b45d8        mov     r8,qword ptr [rbp-28h]
fffff803`21c9d2eb 410fb7fe        movzx   edi,r14w
fffff803`21c9d2ef 4183cbff        or      r11d,0FFFFFFFFh

nt!KeFlushQueuedDpcs+0x183:
fffff803`21c9d2f3 4d85c0          test    r8,r8
fffff803`21c9d2f6 0f848d000000    je      nt!KeFlushQueuedDpcs+0x219 (fffff803`21c9d389)

nt!KeFlushQueuedDpcs+0x18c:
fffff803`21c9d2fc 490fbcd0        bsf     rdx,r8
fffff803`21c9d300 498bc7          mov     rax,r15
fffff803`21c9d303 0fb6ca          movzx   ecx,dl
fffff803`21c9d306 48d3e0          shl     rax,cl
fffff803`21c9d309 48f7d0          not     rax
fffff803`21c9d30c 4c23c0          and     r8,rax
fffff803`21c9d30f 6685ff          test    di,di
fffff803`21c9d312 7508            jne     nt!KeFlushQueuedDpcs+0x1ac (fffff803`21c9d31c)

nt!KeFlushQueuedDpcs+0x1a4:
fffff803`21c9d314 84d2            test    dl,dl
fffff803`21c9d316 0f84c0000000    je      nt!KeFlushQueuedDpcs+0x26c (fffff803`21c9d3dc)

nt!KeFlushQueuedDpcs+0x1ac:
fffff803`21c9d31c 663b3d41cd3200  cmp     di,word ptr [nt!KiMaximumGroups (fffff803`21fca064)]
fffff803`21c9d323 0f83c8000000    jae     nt!KeFlushQueuedDpcs+0x281 (fffff803`21c9d3f1)

nt!KeFlushQueuedDpcs+0x1b9:
fffff803`21c9d329 80fa40          cmp     dl,40h
fffff803`21c9d32c 0f83bf000000    jae     nt!KeFlushQueuedDpcs+0x281 (fffff803`21c9d3f1)

nt!KeFlushQueuedDpcs+0x1c2:
fffff803`21c9d332 0fb7c7          movzx   eax,di
fffff803`21c9d335 c1e006          shl     eax,6
fffff803`21c9d338 03c1            add     eax,ecx
fffff803`21c9d33a 418b848290b73500 mov     eax,dword ptr [r10+rax*4+35B790h]
fffff803`21c9d342 85c0            test    eax,eax
fffff803`21c9d344 410f44c3        cmove   eax,r11d

nt!KeFlushQueuedDpcs+0x1d8:
fffff803`21c9d348 8bc8            mov     ecx,eax
fffff803`21c9d34a 498b84ca808c3500 mov     rax,qword ptr [r10+rcx*8+358C80h]
fffff803`21c9d352 8b80dc2d0000    mov     eax,dword ptr [rax+2DDCh]
fffff803`21c9d358 85c0            test    eax,eax
fffff803`21c9d35a 7497            je      nt!KeFlushQueuedDpcs+0x183 (fffff803`21c9d2f3)

nt!KeFlushQueuedDpcs+0x1ec:
fffff803`21c9d35c 418b8c8a80ad3500 mov     ecx,dword ptr [r10+rcx*4+35AD80h]
fffff803`21c9d364 0fb7442420      movzx   eax,word ptr [rsp+20h]
fffff803`21c9d369 8bd1            mov     edx,ecx
fffff803`21c9d36b 83e13f          and     ecx,3Fh
fffff803`21c9d36e c1ea06          shr     edx,6
fffff803`21c9d371 3bc2            cmp     eax,edx
fffff803`21c9d373 0f8680000000    jbe     nt!KeFlushQueuedDpcs+0x289 (fffff803`21c9d3f9)

nt!KeFlushQueuedDpcs+0x209:
fffff803`21c9d379 498bc7          mov     rax,r15
fffff803`21c9d37c 48d3e0          shl     rax,cl
fffff803`21c9d37f 480944d428      or      qword ptr [rsp+rdx*8+28h],rax
fffff803`21c9d384 e96affffff      jmp     nt!KeFlushQueuedDpcs+0x183 (fffff803`21c9d2f3)

nt!KeFlushQueuedDpcs+0x219:
fffff803`21c9d389 664103ff        add     di,r15w
fffff803`21c9d38d 0fb7c7          movzx   eax,di
fffff803`21c9d390 413bc1          cmp     eax,r9d
fffff803`21c9d393 724f            jb      nt!KeFlushQueuedDpcs+0x274 (fffff803`21c9d3e4)

nt!KeFlushQueuedDpcs+0x225:
fffff803`21c9d395 488d15f4970000  lea     rdx,[nt!KiFlushQueuedDpcsWorker (fffff803`21ca6b90)]
fffff803`21c9d39c 488d4c2420      lea     rcx,[rsp+20h]
fffff803`21c9d3a1 458bcc          mov     r9d,r12d
fffff803`21c9d3a4 4533c0          xor     r8d,r8d
fffff803`21c9d3a7 e8bc940000      call    nt!KeGenericProcessorCallback (fffff803`21ca6868)
fffff803`21c9d3ac 488b8d80000000  mov     rcx,qword ptr [rbp+80h]
fffff803`21c9d3b3 4833cc          xor     rcx,rsp
fffff803`21c9d3b6 e805610200      call    nt!_security_check_cookie (fffff803`21cc34c0)
fffff803`21c9d3bb 4c8d9c2490010000 lea     r11,[rsp+190h]
fffff803`21c9d3c3 498b5b20        mov     rbx,qword ptr [r11+20h]
fffff803`21c9d3c7 498b7328        mov     rsi,qword ptr [r11+28h]
fffff803`21c9d3cb 498b7b30        mov     rdi,qword ptr [r11+30h]
fffff803`21c9d3cf 4d8b6338        mov     r12,qword ptr [r11+38h]
fffff803`21c9d3d3 498be3          mov     rsp,r11
fffff803`21c9d3d6 415f            pop     r15
fffff803`21c9d3d8 415e            pop     r14
fffff803`21c9d3da 5d              pop     rbp
fffff803`21c9d3db c3              ret

nt!KeFlushQueuedDpcs+0x26c:
fffff803`21c9d3dc 418bc6          mov     eax,r14d
fffff803`21c9d3df e964ffffff      jmp     nt!KeFlushQueuedDpcs+0x1d8 (fffff803`21c9d348)

nt!KeFlushQueuedDpcs+0x274:
fffff803`21c9d3e4 0fb7c7          movzx   eax,di
fffff803`21c9d3e7 4c8b44c5d8      mov     r8,qword ptr [rbp+rax*8-28h]
fffff803`21c9d3ec e902ffffff      jmp     nt!KeFlushQueuedDpcs+0x183 (fffff803`21c9d2f3)

nt!KeFlushQueuedDpcs+0x281:
fffff803`21c9d3f1 418bc3          mov     eax,r11d
fffff803`21c9d3f4 e94fffffff      jmp     nt!KeFlushQueuedDpcs+0x1d8 (fffff803`21c9d348)

nt!KeFlushQueuedDpcs+0x289:
fffff803`21c9d3f9 418d0417        lea     eax,[r15+rdx]
fffff803`21c9d3fd 6689442420      mov     word ptr [rsp+20h],ax
fffff803`21c9d402 e972ffffff      jmp     nt!KeFlushQueuedDpcs+0x209 (fffff803`21c9d379)

nt! ?? ::FNODOBFM::`string'+0x12bac:
fffff803`21e4adec f7058ef2170000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21e4adf6 488d5f10        lea     rbx,[rdi+10h]
fffff803`21e4adfa 740a            je      nt! ?? ::FNODOBFM::`string'+0x12bc6 (fffff803`21e4ae06)

nt! ?? ::FNODOBFM::`string'+0x12bbc:
fffff803`21e4adfc 488bcb          mov     rcx,rbx
fffff803`21e4adff e8bc16faff      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21e4ae04 eb10            jmp     nt! ?? ::FNODOBFM::`string'+0x12bd6 (fffff803`21e4ae16)

nt! ?? ::FNODOBFM::`string'+0x12bc6:
fffff803`21e4ae06 f0480fba2b00    lock bts qword ptr [rbx],0
fffff803`21e4ae0c 7308            jae     nt! ?? ::FNODOBFM::`string'+0x12bd6 (fffff803`21e4ae16)

nt! ?? ::FNODOBFM::`string'+0x12bce:
fffff803`21e4ae0e 488bcb          mov     rcx,rbx
fffff803`21e4ae11 e8aa24e6ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)

nt! ?? ::FNODOBFM::`string'+0x12bd6:
fffff803`21e4ae16 488b4538        mov     rax,qword ptr [rbp+38h]
fffff803`21e4ae1a 483bf8          cmp     rdi,rax
fffff803`21e4ae1d 7528            jne     nt! ?? ::FNODOBFM::`string'+0x12c07 (fffff803`21e4ae47)

nt! ?? ::FNODOBFM::`string'+0x12bdf:
fffff803`21e4ae1f ff4f18          dec     dword ptr [rdi+18h]
fffff803`21e4ae22 488d4d08        lea     rcx,[rbp+8]
fffff803`21e4ae26 488b11          mov     rdx,qword ptr [rcx]
fffff803`21e4ae29 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`21e4ae2d 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`21e4ae31 7537            jne     nt! ?? ::FNODOBFM::`string'+0x12c2a (fffff803`21e4ae6a)

nt! ?? ::FNODOBFM::`string'+0x12bf3:
fffff803`21e4ae33 483908          cmp     qword ptr [rax],rcx
fffff803`21e4ae36 7532            jne     nt! ?? ::FNODOBFM::`string'+0x12c2a (fffff803`21e4ae6a)

nt! ?? ::FNODOBFM::`string'+0x12bf8:
fffff803`21e4ae38 488910          mov     qword ptr [rax],rdx
fffff803`21e4ae3b 48894208        mov     qword ptr [rdx+8],rax
fffff803`21e4ae3f 4883653800      and     qword ptr [rbp+38h],0
fffff803`21e4ae44 41b601          mov     r14b,1

nt! ?? ::FNODOBFM::`string'+0x12c07:
fffff803`21e4ae47 f70533f2170000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21e4ae51 0f84605ce4ff    je      nt!KeRemoveQueueDpc+0x58 (fffff803`21c90ab7)

nt! ?? ::FNODOBFM::`string'+0x12c17:
fffff803`21e4ae57 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`21e4ae5c 488bcb          mov     rcx,rbx
fffff803`21e4ae5f e83816faff      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21e4ae64 90              nop
fffff803`21e4ae65 e92c5ce4ff      jmp     nt!KeRemoveQueueDpc+0x37 (fffff803`21c90a96)

nt! ?? ::FNODOBFM::`string'+0x12c2a:
fffff803`21e4ae6a b903000000      mov     ecx,3
fffff803`21e4ae6f cd29            int     29h
fffff803`21e4ae71 90              nop
fffff803`21e4ae72 90              nop
fffff803`21e4ae73 90              nop

nt! ?? ::FNODOBFM::`string'+0x12c32:
fffff803`21e4ae74 418d0417        lea     eax,[r15+rdx]
fffff803`21e4ae78 668945d0        mov     word ptr [rbp-30h],ax
fffff803`21e4ae7c e98923e5ff      jmp     nt!KeFlushQueuedDpcs+0x9a (fffff803`21c9d20a)
