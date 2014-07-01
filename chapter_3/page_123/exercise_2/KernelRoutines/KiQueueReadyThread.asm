0: kd> uf KiQueueReadyThread
nt!KiQueueReadyThread:
fffff803`d9909b00 48895c2418      mov     qword ptr [rsp+18h],rbx
fffff803`d9909b05 55              push    rbp
fffff803`d9909b06 57              push    rdi
fffff803`d9909b07 4156            push    r14
fffff803`d9909b09 4883ec30        sub     rsp,30h
fffff803`d9909b0d 4c8b4248        mov     r8,qword ptr [rdx+48h]
fffff803`d9909b11 0fb6aa35020000  movzx   ebp,byte ptr [rdx+235h]
fffff803`d9909b18 4533f6          xor     r14d,r14d
fffff803`d9909b1b 488bda          mov     rbx,rdx
fffff803`d9909b1e 488bf9          mov     rdi,rcx
fffff803`d9909b21 4c3b4220        cmp     r8,qword ptr [rdx+20h]
fffff803`d9909b25 0f83e7000000    jae     nt!KiQueueReadyThread+0x111 (fffff803`d9909c12)

nt!KiQueueReadyThread+0x2b:
fffff803`d9909b2b f7437800080000  test    dword ptr [rbx+78h],800h
fffff803`d9909b32 4889742450      mov     qword ptr [rsp+50h],rsi
fffff803`d9909b37 0f855a010000    jne     nt!KiQueueReadyThread+0x195 (fffff803`d9909c97)

nt!KiQueueReadyThread+0x3d:
fffff803`d9909b3d 4488b335020000  mov     byte ptr [rbx+235h],r14b
fffff803`d9909b44 488b4b68        mov     rcx,qword ptr [rbx+68h]
fffff803`d9909b48 be01000000      mov     esi,1
fffff803`d9909b4d 4885c9          test    rcx,rcx
fffff803`d9909b50 0f85af010000    jne     nt!KiQueueReadyThread+0x203 (fffff803`d9909d05)

nt!KiQueueReadyThread+0x56:
fffff803`d9909b56 488b4368        mov     rax,qword ptr [rbx+68h]
fffff803`d9909b5a 480fbe93c3000000 movsx   rdx,byte ptr [rbx+0C3h]
fffff803`d9909b62 4885c0          test    rax,rax
fffff803`d9909b65 0f857e020000    jne     nt!KiQueueReadyThread+0x2e7 (fffff803`d9909de9)

nt!KiQueueReadyThread+0x6b:
fffff803`d9909b6b 48395f10        cmp     qword ptr [rdi+10h],rbx
fffff803`d9909b6f 0f84cf020000    je      nt!KiQueueReadyThread+0x33e (fffff803`d9909e44)

nt!KiQueueReadyThread+0x75:
fffff803`d9909b75 32c0            xor     al,al

nt!KiQueueReadyThread+0x77:
fffff803`d9909b77 4088b384010000  mov     byte ptr [rbx+184h],sil
fffff803`d9909b7e 4d85f6          test    r14,r14
fffff803`d9909b81 0f85f8010000    jne     nt!KiQueueReadyThread+0x27d (fffff803`d9909d7f)

nt!KiQueueReadyThread+0x87:
fffff803`d9909b87 a12003000080f7ffff mov   eax,dword ptr [FFFFF78000000320h]
fffff803`d9909b90 488d8a10050000  lea     rcx,[rdx+510h]
fffff803`d9909b97 4881c3d8000000  add     rbx,0D8h
fffff803`d9909b9e 48c1e104        shl     rcx,4
fffff803`d9909ba2 8983dc000000    mov     dword ptr [rbx+0DCh],eax
fffff803`d9909ba8 4803cf          add     rcx,rdi
fffff803`d9909bab 4084ed          test    bpl,bpl
fffff803`d9909bae 7444            je      nt!KiQueueReadyThread+0xf4 (fffff803`d9909bf4)

nt!KiQueueReadyThread+0xb0:
fffff803`d9909bb0 488b01          mov     rax,qword ptr [rcx]
fffff803`d9909bb3 48894b08        mov     qword ptr [rbx+8],rcx
fffff803`d9909bb7 488903          mov     qword ptr [rbx],rax
fffff803`d9909bba 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d9909bbe 0f85d1731500    jne     nt! ?? ::FNODOBFM::`string'+0x15dee (fffff803`d9a60f95)

nt!KiQueueReadyThread+0xc4:
fffff803`d9909bc4 48895808        mov     qword ptr [rax+8],rbx
fffff803`d9909bc8 488919          mov     qword ptr [rcx],rbx

nt!KiQueueReadyThread+0xcb:
fffff803`d9909bcb 8bca            mov     ecx,edx
fffff803`d9909bcd d3e6            shl     esi,cl
fffff803`d9909bcf 09b798500000    or      dword ptr [rdi+5098h],esi
fffff803`d9909bd5 0197a0500000    add     dword ptr [rdi+50A0h],edx

nt!KiQueueReadyThread+0xdb:
fffff803`d9909bdb f04883673000    lock and qword ptr [rdi+30h],0

nt!KiQueueReadyThread+0xe1:
fffff803`d9909be1 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`d9909be6 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff803`d9909beb 4883c430        add     rsp,30h
fffff803`d9909bef 415e            pop     r14
fffff803`d9909bf1 5f              pop     rdi
fffff803`d9909bf2 5d              pop     rbp
fffff803`d9909bf3 c3              ret

nt!KiQueueReadyThread+0xf4:
fffff803`d9909bf4 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`d9909bf8 48890b          mov     qword ptr [rbx],rcx
fffff803`d9909bfb 48894308        mov     qword ptr [rbx+8],rax
fffff803`d9909bff 483908          cmp     qword ptr [rax],rcx
fffff803`d9909c02 0f8594731500    jne     nt! ?? ::FNODOBFM::`string'+0x15df5 (fffff803`d9a60f9c)

nt!KiQueueReadyThread+0x108:
fffff803`d9909c08 488918          mov     qword ptr [rax],rbx
fffff803`d9909c0b 48895908        mov     qword ptr [rcx+8],rbx
fffff803`d9909c0f ebba            jmp     nt!KiQueueReadyThread+0xcb (fffff803`d9909bcb)

nt!KiQueueReadyThread+0x111:
fffff803`d9909c12 f0480fba6a4000  lock bts qword ptr [rdx+40h],0
fffff803`d9909c19 0f8219020000    jb      nt!KiQueueReadyThread+0x333 (fffff803`d9909e38)

nt!KiQueueReadyThread+0x11e:
fffff803`d9909c1f 440fb68ac3000000 movzx   r9d,byte ptr [rdx+0C3h]
fffff803`d9909c27 4180f910        cmp     r9b,10h
fffff803`d9909c2b 7d36            jge     nt!KiQueueReadyThread+0x162 (fffff803`d9909c63)

nt!KiQueueReadyThread+0x12c:
fffff803`d9909c2d 0fb69234020000  movzx   edx,byte ptr [rdx+234h]
fffff803`d9909c34 83c9ff          or      ecx,0FFFFFFFFh
fffff803`d9909c37 4488b334020000  mov     byte ptr [rbx+234h],r14b
fffff803`d9909c3e 0fb6c2          movzx   eax,dl
fffff803`d9909c41 80e20f          and     dl,0Fh
fffff803`d9909c44 c0e804          shr     al,4
fffff803`d9909c47 2ac8            sub     cl,al
fffff803`d9909c49 2aca            sub     cl,dl
fffff803`d9909c4b 4402c9          add     r9b,cl
fffff803`d9909c4e 0fb68b33020000  movzx   ecx,byte ptr [rbx+233h]
fffff803`d9909c55 443ac9          cmp     r9b,cl
fffff803`d9909c58 410fb6c1        movzx   eax,r9b
fffff803`d9909c5c 0f4cc1          cmovl   eax,ecx
fffff803`d9909c5f 440fb6c8        movzx   r9d,al

nt!KiQueueReadyThread+0x162:
fffff803`d9909c63 0fb68b8b020000  movzx   ecx,byte ptr [rbx+28Bh]
fffff803`d9909c6a 8b4378          mov     eax,dword ptr [rbx+78h]
fffff803`d9909c6d 44888bc3000000  mov     byte ptr [rbx+0C3h],r9b
fffff803`d9909c74 0faf0d2d462d00  imul    ecx,dword ptr [nt!KiCyclesPerClockQuantum (fffff803`d9bde2a8)]
fffff803`d9909c7b 4903c8          add     rcx,r8
fffff803`d9909c7e a810            test    al,10h
fffff803`d9909c80 0f8573010000    jne     nt!KiQueueReadyThread+0x2f6 (fffff803`d9909df9)

nt!KiQueueReadyThread+0x185:
fffff803`d9909c86 48894b20        mov     qword ptr [rbx+20h],rcx
fffff803`d9909c8a 4032ed          xor     bpl,bpl
fffff803`d9909c8d 4c897340        mov     qword ptr [rbx+40h],r14
fffff803`d9909c91 e995feffff      jmp     nt!KiQueueReadyThread+0x2b (fffff803`d9909b2b)

nt!KiQueueReadyThread+0x195:
fffff803`d9909c97 4c397710        cmp     qword ptr [rdi+10h],r14
fffff803`d9909c9b 0f858e010000    jne     nt!KiQueueReadyThread+0x32b (fffff803`d9909e2f)

nt!KiQueueReadyThread+0x19f:
fffff803`d9909ca1 4032f6          xor     sil,sil

nt!KiQueueReadyThread+0x1a2:
fffff803`d9909ca4 8b4724          mov     eax,dword ptr [rdi+24h]
fffff803`d9909ca7 89831c020000    mov     dword ptr [rbx+21Ch],eax
fffff803`d9909cad c6838401000007  mov     byte ptr [rbx+184h],7
fffff803`d9909cb4 f04c217730      lock and qword ptr [rdi+30h],r14
fffff803`d9909cb9 f00fba73780b    lock btr dword ptr [rbx+78h],0Bh
fffff803`d9909cbf 488bd3          mov     rdx,rbx
fffff803`d9909cc2 488bcf          mov     rcx,rdi
fffff803`d9909cc5 4088ab35020000  mov     byte ptr [rbx+235h],bpl
fffff803`d9909ccc e87f610000      call    nt!KiDeferredReadyThread (fffff803`d990fe50)
fffff803`d9909cd1 4084f6          test    sil,sil
fffff803`d9909cd4 0f8507ffffff    jne     nt!KiQueueReadyThread+0xe1 (fffff803`d9909be1)

nt!KiQueueReadyThread+0x1d8:
fffff803`d9909cda 488b4718        mov     rax,qword ptr [rdi+18h]
fffff803`d9909cde 48394708        cmp     qword ptr [rdi+8],rax
fffff803`d9909ce2 0f84f9feffff    je      nt!KiQueueReadyThread+0xe1 (fffff803`d9909be1)

nt!KiQueueReadyThread+0x1e6:
fffff803`d9909ce8 4c397710        cmp     qword ptr [rdi+10h],r14
fffff803`d9909cec 0f84effeffff    je      nt!KiQueueReadyThread+0xe1 (fffff803`d9909be1)

nt!KiQueueReadyThread+0x1f0:
fffff803`d9909cf2 44387720        cmp     byte ptr [rdi+20h],r14b
fffff803`d9909cf6 0f84a7721500    je      nt! ?? ::FNODOBFM::`string'+0x15dfc (fffff803`d9a60fa3)

nt!KiQueueReadyThread+0x1fa:
fffff803`d9909cfc c6470601        mov     byte ptr [rdi+6],1
fffff803`d9909d00 e9dcfeffff      jmp     nt!KiQueueReadyThread+0xe1 (fffff803`d9909be1)

nt!KiQueueReadyThread+0x203:
fffff803`d9909d05 8b971c530000    mov     edx,dword ptr [rdi+531Ch]
fffff803`d9909d0b 48894c2458      mov     qword ptr [rsp+58h],rcx
fffff803`d9909d10 4803d1          add     rdx,rcx
fffff803`d9909d13 0f843dfeffff    je      nt!KiQueueReadyThread+0x56 (fffff803`d9909b56)

nt!KiQueueReadyThread+0x217:
fffff803`d9909d19 f6425802        test    byte ptr [rdx+58h],2
fffff803`d9909d1d 0f84ed000000    je      nt!KiQueueReadyThread+0x30c (fffff803`d9909e10)

nt!KiQueueReadyThread+0x221:
fffff803`d9909d23 488b4210        mov     rax,qword ptr [rdx+10h]
fffff803`d9909d27 483902          cmp     qword ptr [rdx],rax
fffff803`d9909d2a 0f87f2000000    ja      nt!KiQueueReadyThread+0x31e (fffff803`d9909e22)

nt!KiQueueReadyThread+0x22e:
fffff803`d9909d30 8b4378          mov     eax,dword ptr [rbx+78h]
fffff803`d9909d33 0fbae008        bt      eax,8
fffff803`d9909d37 0f8219feffff    jb      nt!KiQueueReadyThread+0x56 (fffff803`d9909b56)

nt!KiQueueReadyThread+0x23b:
fffff803`d9909d3d 80bbc300000010  cmp     byte ptr [rbx+0C3h],10h
fffff803`d9909d44 0f8d0cfeffff    jge     nt!KiQueueReadyThread+0x56 (fffff803`d9909b56)

nt!KiQueueReadyThread+0x248:
fffff803`d9909d4a 4439b3e4010000  cmp     dword ptr [rbx+1E4h],r14d
fffff803`d9909d51 750d            jne     nt!KiQueueReadyThread+0x25e (fffff803`d9909d60)

nt!KiQueueReadyThread+0x251:
fffff803`d9909d53 4038b386010000  cmp     byte ptr [rbx+186h],sil
fffff803`d9909d5a 0f85f6fdffff    jne     nt!KiQueueReadyThread+0x56 (fffff803`d9909b56)

nt!KiQueueReadyThread+0x25e:
fffff803`d9909d60 0fbae009        bt      eax,9
fffff803`d9909d64 0f82ecfdffff    jb      nt!KiQueueReadyThread+0x56 (fffff803`d9909b56)

nt!KiQueueReadyThread+0x268:
fffff803`d9909d6a 0fbae00a        bt      eax,0Ah
fffff803`d9909d6e 0f82e2fdffff    jb      nt!KiQueueReadyThread+0x56 (fffff803`d9909b56)

nt!KiQueueReadyThread+0x272:
fffff803`d9909d74 f00fba6b780a    lock bts dword ptr [rbx+78h],0Ah
fffff803`d9909d7a e9d7fdffff      jmp     nt!KiQueueReadyThread+0x56 (fffff803`d9909b56)

nt!KiQueueReadyThread+0x27d:
fffff803`d9909d7f 8b4b78          mov     ecx,dword ptr [rbx+78h]
fffff803`d9909d82 0fbae109        bt      ecx,9
fffff803`d9909d86 0f82fbfdffff    jb      nt!KiQueueReadyThread+0x87 (fffff803`d9909b87)

nt!KiQueueReadyThread+0x28a:
fffff803`d9909d8c 0fbae10a        bt      ecx,0Ah
fffff803`d9909d90 0f82f1fdffff    jb      nt!KiQueueReadyThread+0x87 (fffff803`d9909b87)

nt!KiQueueReadyThread+0x294:
fffff803`d9909d96 80bbc300000010  cmp     byte ptr [rbx+0C3h],10h
fffff803`d9909d9d 0f8de4fdffff    jge     nt!KiQueueReadyThread+0x87 (fffff803`d9909b87)

nt!KiQueueReadyThread+0x2a1:
fffff803`d9909da3 0fbae108        bt      ecx,8
fffff803`d9909da7 0f82dafdffff    jb      nt!KiQueueReadyThread+0x87 (fffff803`d9909b87)

nt!KiQueueReadyThread+0x2ab:
fffff803`d9909dad 84c0            test    al,al
fffff803`d9909daf 0f85b4711500    jne     nt! ?? ::FNODOBFM::`string'+0x15dc2 (fffff803`d9a60f69)

nt!KiQueueReadyThread+0x2b3:
fffff803`d9909db5 410fb64658      movzx   eax,byte ptr [r14+58h]
fffff803`d9909dba a804            test    al,4
fffff803`d9909dbc 0f85c6711500    jne     nt! ?? ::FNODOBFM::`string'+0x15de1 (fffff803`d9a60f88)

nt!KiQueueReadyThread+0x2c0:
fffff803`d9909dc2 418b465c        mov     eax,dword ptr [r14+5Ch]
fffff803`d9909dc6 85c0            test    eax,eax
fffff803`d9909dc8 0f84b9fdffff    je      nt!KiQueueReadyThread+0x87 (fffff803`d9909b87)

nt!KiQueueReadyThread+0x2cc:
fffff803`d9909dce 4533c9          xor     r9d,r9d
fffff803`d9909dd1 4c8bc3          mov     r8,rbx
fffff803`d9909dd4 498bd6          mov     rdx,r14
fffff803`d9909dd7 488bcf          mov     rcx,rdi
fffff803`d9909dda 40886c2420      mov     byte ptr [rsp+20h],bpl
fffff803`d9909ddf e8f86e0a00      call    nt!KiAddThreadToScbQueue (fffff803`d99b0cdc)
fffff803`d9909de4 e9f2fdffff      jmp     nt!KiQueueReadyThread+0xdb (fffff803`d9909bdb)

nt!KiQueueReadyThread+0x2e7:
fffff803`d9909de9 448bb71c530000  mov     r14d,dword ptr [rdi+531Ch]
fffff803`d9909df0 4c03f0          add     r14,rax
fffff803`d9909df3 e973fdffff      jmp     nt!KiQueueReadyThread+0x6b (fffff803`d9909b6b)

nt!KiQueueReadyThread+0x2f6:
fffff803`d9909df9 f00fba737804    lock btr dword ptr [rbx+78h],4
fffff803`d9909dff 48894b20        mov     qword ptr [rbx+20h],rcx
fffff803`d9909e03 4c897340        mov     qword ptr [rbx+40h],r14
fffff803`d9909e07 4032ed          xor     bpl,bpl
fffff803`d9909e0a e91cfdffff      jmp     nt!KiQueueReadyThread+0x2b (fffff803`d9909b2b)

nt!KiQueueReadyThread+0x30c:
fffff803`d9909e10 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`d9909e14 483902          cmp     qword ptr [rdx],rax
fffff803`d9909e17 0f8239fdffff    jb      nt!KiQueueReadyThread+0x56 (fffff803`d9909b56)

nt!KiQueueReadyThread+0x319:
fffff803`d9909e1d e9f9701500      jmp     nt! ?? ::FNODOBFM::`string'+0x15d74 (fffff803`d9a60f1b)

nt!KiQueueReadyThread+0x31e:
fffff803`d9909e22 4c8bc7          mov     r8,rdi
fffff803`d9909e25 e89a750a00      call    nt!KiRecomputeGroupSchedulingRank (fffff803`d99b13c4)
fffff803`d9909e2a e901ffffff      jmp     nt!KiQueueReadyThread+0x22e (fffff803`d9909d30)

nt!KiQueueReadyThread+0x32b:
fffff803`d9909e2f 40b601          mov     sil,1
fffff803`d9909e32 e96dfeffff      jmp     nt!KiQueueReadyThread+0x1a2 (fffff803`d9909ca4)

nt!KiQueueReadyThread+0x333:
fffff803`d9909e38 f00fba6a780b    lock bts dword ptr [rdx+78h],0Bh
fffff803`d9909e3e e9e8fcffff      jmp     nt!KiQueueReadyThread+0x2b (fffff803`d9909b2b)

nt!KiQueueReadyThread+0x33e:
fffff803`d9909e44 400fb6c6        movzx   eax,sil
fffff803`d9909e48 e92afdffff      jmp     nt!KiQueueReadyThread+0x77 (fffff803`d9909b77)

nt! ?? ::FNODOBFM::`string'+0x15d74:
fffff803`d9a60f1b e81c4cfaff      call    nt!KiComputeGroupSchedulingRank (fffff803`d9a05b3c)
fffff803`d9a60f20 4438b719530000  cmp     byte ptr [rdi+5319h],r14b
fffff803`d9a60f27 0f85038eeaff    jne     nt!KiQueueReadyThread+0x22e (fffff803`d9909d30)

nt! ?? ::FNODOBFM::`string'+0x15d86:
fffff803`d9a60f2d 8b4724          mov     eax,dword ptr [rdi+24h]
fffff803`d9a60f30 4c8d05c950e2ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9a60f37 418b948080ad3500 mov     edx,dword ptr [r8+rax*4+35AD80h]
fffff803`d9a60f3f 8bc2            mov     eax,edx
fffff803`d9a60f41 8bca            mov     ecx,edx
fffff803`d9a60f43 48c1e806        shr     rax,6
fffff803`d9a60f47 83e13f          and     ecx,3Fh
fffff803`d9a60f4a 488d14c5485f2700 lea     rdx,[rax*8+275F48h]
fffff803`d9a60f52 488bc6          mov     rax,rsi
fffff803`d9a60f55 48d3e0          shl     rax,cl
fffff803`d9a60f58 f04a090402      lock or qword ptr [rdx+r8],rax
fffff803`d9a60f5d 4088b719530000  mov     byte ptr [rdi+5319h],sil
fffff803`d9a60f64 e9c78deaff      jmp     nt!KiQueueReadyThread+0x22e (fffff803`d9909d30)

nt! ?? ::FNODOBFM::`string'+0x15dc2:
fffff803`d9a60f69 83bbe401000000  cmp     dword ptr [rbx+1E4h],0
fffff803`d9a60f70 0f85118ceaff    jne     nt!KiQueueReadyThread+0x87 (fffff803`d9909b87)

nt! ?? ::FNODOBFM::`string'+0x15dcf:
fffff803`d9a60f76 4038b386010000  cmp     byte ptr [rbx+186h],sil
fffff803`d9a60f7d 0f84048ceaff    je      nt!KiQueueReadyThread+0x87 (fffff803`d9909b87)

nt! ?? ::FNODOBFM::`string'+0x15ddc:
fffff803`d9a60f83 e92d8eeaff      jmp     nt!KiQueueReadyThread+0x2b3 (fffff803`d9909db5)

nt! ?? ::FNODOBFM::`string'+0x15de1:
fffff803`d9a60f88 a802            test    al,2
fffff803`d9a60f8a 0f853e8eeaff    jne     nt!KiQueueReadyThread+0x2cc (fffff803`d9909dce)

nt! ?? ::FNODOBFM::`string'+0x15de9:
fffff803`d9a60f90 e92d8eeaff      jmp     nt!KiQueueReadyThread+0x2c0 (fffff803`d9909dc2)

nt! ?? ::FNODOBFM::`string'+0x15dee:
fffff803`d9a60f95 b903000000      mov     ecx,3
fffff803`d9a60f9a cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x15df5:
fffff803`d9a60f9c b903000000      mov     ecx,3
fffff803`d9a60fa1 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x15dfc:
fffff803`d9a60fa3 b102            mov     cl,2
fffff803`d9a60fa5 ff1525341700    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`d9bd43d0)]
fffff803`d9a60fab 90              nop
fffff803`d9a60fac e9308ceaff      jmp     nt!KiQueueReadyThread+0xe1 (fffff803`d9909be1)
