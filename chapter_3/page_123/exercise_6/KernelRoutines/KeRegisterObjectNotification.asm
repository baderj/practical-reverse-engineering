nt!KeRegisterObjectNotification:
fffff803`21d29fb4 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff803`21d29fb9 48896c2418      mov     qword ptr [rsp+18h],rbp
fffff803`21d29fbe 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`21d29fc3 57              push    rdi
fffff803`21d29fc4 4154            push    r12
fffff803`21d29fc6 4155            push    r13
fffff803`21d29fc8 4156            push    r14
fffff803`21d29fca 4157            push    r15
fffff803`21d29fcc 4883ec20        sub     rsp,20h
fffff803`21d29fd0 498bd8          mov     rbx,r8
fffff803`21d29fd3 488bf2          mov     rsi,rdx
fffff803`21d29fd6 488bf9          mov     rdi,rcx
fffff803`21d29fd9 66c743100202    mov     word ptr [rbx+10h],202h
fffff803`21d29fdf 48895318        mov     qword ptr [rbx+18h],rdx
fffff803`21d29fe3 48894b20        mov     qword ptr [rbx+20h],rcx
fffff803`21d29fe7 41b802000000    mov     r8d,2
fffff803`21d29fed 450f20c5        mov     r13,cr8
fffff803`21d29ff1 450f22c0        mov     cr8,r8
fffff803`21d29ff5 33ed            xor     ebp,ebp
fffff803`21d29ff7 f00fba2907      lock bts dword ptr [rcx],7
fffff803`21d29ffc 0f82dc010000    jb      nt!KeRegisterObjectNotification+0x22a (fffff803`21d2a1de)

nt!KeRegisterObjectNotification+0x4e:
fffff803`21d2a002 8b5704          mov     edx,dword ptr [rdi+4]
fffff803`21d2a005 85d2            test    edx,edx
fffff803`21d2a007 7f4e            jg      nt!KeRegisterObjectNotification+0xa3 (fffff803`21d2a057)

nt!KeRegisterObjectNotification+0x55:
fffff803`21d2a009 488d4708        lea     rax,[rdi+8]
fffff803`21d2a00d 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21d2a011 488903          mov     qword ptr [rbx],rax
fffff803`21d2a014 48894b08        mov     qword ptr [rbx+8],rcx
fffff803`21d2a018 483901          cmp     qword ptr [rcx],rax
fffff803`21d2a01b 0f8539fe1100    jne     nt! ?? ::FNODOBFM::`string'+0x11074 (fffff803`21e49e5a)

nt!KeRegisterObjectNotification+0x6d:
fffff803`21d2a021 488919          mov     qword ptr [rcx],rbx
fffff803`21d2a024 48895808        mov     qword ptr [rax+8],rbx
fffff803`21d2a028 b87fffffff      mov     eax,0FFFFFF7Fh
fffff803`21d2a02d f02107          lock and dword ptr [rdi],eax
fffff803`21d2a030 410fb6c5        movzx   eax,r13b
fffff803`21d2a034 440f22c0        mov     cr8,rax
fffff803`21d2a038 32c0            xor     al,al

nt!KeRegisterObjectNotification+0x86:
fffff803`21d2a03a 488b5c2458      mov     rbx,qword ptr [rsp+58h]
fffff803`21d2a03f 488b6c2460      mov     rbp,qword ptr [rsp+60h]
fffff803`21d2a044 488b742468      mov     rsi,qword ptr [rsp+68h]
fffff803`21d2a049 4883c420        add     rsp,20h
fffff803`21d2a04d 415f            pop     r15
fffff803`21d2a04f 415e            pop     r14
fffff803`21d2a051 415d            pop     r13
fffff803`21d2a053 415c            pop     r12
fffff803`21d2a055 5f              pop     rdi
fffff803`21d2a056 c3              ret

nt!KeRegisterObjectNotification+0xa3:
fffff803`21d2a057 8a0f            mov     cl,byte ptr [rdi]
fffff803`21d2a059 8ac1            mov     al,cl
fffff803`21d2a05b 2407            and     al,7
fffff803`21d2a05d 3c01            cmp     al,1
fffff803`21d2a05f 0f850b010000    jne     nt!KeRegisterObjectNotification+0x1bc (fffff803`21d2a170)

nt!KeRegisterObjectNotification+0xb1:
fffff803`21d2a065 83670400        and     dword ptr [rdi+4],0

nt!KeRegisterObjectNotification+0xb5:
fffff803`21d2a069 bd03000000      mov     ebp,3
fffff803`21d2a06e 4c8d6608        lea     r12,[rsi+8]
fffff803`21d2a072 40886b11        mov     byte ptr [rbx+11h],bpl
fffff803`21d2a076 48832300        and     qword ptr [rbx],0
fffff803`21d2a07a 450f22c0        mov     cr8,r8
fffff803`21d2a07e 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`21d2a087 f705f3ff290000000001 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],1000000h
fffff803`21d2a091 4c8b7808        mov     r15,qword ptr [rax+8]
fffff803`21d2a095 4889442450      mov     qword ptr [rsp+50h],rax
fffff803`21d2a09a 0f8522fc1100    jne     nt! ?? ::FNODOBFM::`string'+0x10ed8 (fffff803`21e49cc2)

nt!KeRegisterObjectNotification+0xec:
fffff803`21d2a0a0 4533f6          xor     r14d,r14d

nt!KeRegisterObjectNotification+0xef:
fffff803`21d2a0a3 f00fba2e07      lock bts dword ptr [rsi],7
fffff803`21d2a0a8 0f8213010000    jb      nt!KeRegisterObjectNotification+0x20d (fffff803`21d2a1c1)

nt!KeRegisterObjectNotification+0xfa:
fffff803`21d2a0ae 4d39642408      cmp     qword ptr [r12+8],r12
fffff803`21d2a0b3 0f84c8000000    je      nt!KeRegisterObjectNotification+0x1cd (fffff803`21d2a181)

nt!KeRegisterObjectNotification+0x105:
fffff803`21d2a0b9 8b4628          mov     eax,dword ptr [rsi+28h]
fffff803`21d2a0bc 3b462c          cmp     eax,dword ptr [rsi+2Ch]
fffff803`21d2a0bf 0f83bc000000    jae     nt!KeRegisterObjectNotification+0x1cd (fffff803`21d2a181)

nt!KeRegisterObjectNotification+0x111:
fffff803`21d2a0c5 498b87e8000000  mov     rax,qword ptr [r15+0E8h]
fffff803`21d2a0cc 483bc6          cmp     rax,rsi
fffff803`21d2a0cf 750e            jne     nt!KeRegisterObjectNotification+0x12b (fffff803`21d2a0df)

nt!KeRegisterObjectNotification+0x11d:
fffff803`21d2a0d1 4180bf830200000f cmp     byte ptr [r15+283h],0Fh
fffff803`21d2a0d9 0f84a2000000    je      nt!KeRegisterObjectNotification+0x1cd (fffff803`21d2a181)

nt!KeRegisterObjectNotification+0x12b:
fffff803`21d2a0df 4c8b7610        mov     r14,qword ptr [rsi+10h]
fffff803`21d2a0e3 4c8b7c2450      mov     r15,qword ptr [rsp+50h]

nt!KeRegisterObjectNotification+0x134:
fffff803`21d2a0e8 498bd6          mov     rdx,r14
fffff803`21d2a0eb 4d8b7608        mov     r14,qword ptr [r14+8]
fffff803`21d2a0ef 4c8b02          mov     r8,qword ptr [rdx]
fffff803`21d2a0f2 49395008        cmp     qword ptr [r8+8],rdx
fffff803`21d2a0f6 0f850a010000    jne     nt!KeRegisterObjectNotification+0x252 (fffff803`21d2a206)

nt!KeRegisterObjectNotification+0x148:
fffff803`21d2a0fc 493916          cmp     qword ptr [r14],rdx
fffff803`21d2a0ff 0f8501010000    jne     nt!KeRegisterObjectNotification+0x252 (fffff803`21d2a206)

nt!KeRegisterObjectNotification+0x151:
fffff803`21d2a105 4d8906          mov     qword ptr [r14],r8
fffff803`21d2a108 4d897008        mov     qword ptr [r8+8],r14
fffff803`21d2a10c 4533c9          xor     r9d,r9d
fffff803`21d2a10f 4c8bc3          mov     r8,rbx
fffff803`21d2a112 498bcf          mov     rcx,r15
fffff803`21d2a115 e88661feff      call    nt!KiTryUnwaitThread (fffff803`21d102a0)
fffff803`21d2a11a 84c0            test    al,al
fffff803`21d2a11c 0f84cdfb1100    je      nt! ?? ::FNODOBFM::`string'+0x10f05 (fffff803`21e49cef)

nt!KeRegisterObjectNotification+0x16e:
fffff803`21d2a122 41be01000000    mov     r14d,1

nt!KeRegisterObjectNotification+0x174:
fffff803`21d2a128 b87fffffff      mov     eax,0FFFFFF7Fh
fffff803`21d2a12d f02106          lock and dword ptr [rsi],eax
fffff803`21d2a130 f02107          lock and dword ptr [rdi],eax
fffff803`21d2a133 65488b1c2520000000 mov   rbx,qword ptr gs:[20h]
fffff803`21d2a13c 4883bb882c000000 cmp     qword ptr [rbx+2C88h],0
fffff803`21d2a144 7411            je      nt!KeRegisterObjectNotification+0x1a3 (fffff803`21d2a157)

nt!KeRegisterObjectNotification+0x192:
fffff803`21d2a146 4533c9          xor     r9d,r9d
fffff803`21d2a149 4533c0          xor     r8d,r8d
fffff803`21d2a14c 418bd6          mov     edx,r14d
fffff803`21d2a14f 488bcb          mov     rcx,rbx
fffff803`21d2a152 e841490100      call    nt!KiProcessThreadWaitList (fffff803`21d3ea98)

nt!KeRegisterObjectNotification+0x1a3:
fffff803`21d2a157 4180fd02        cmp     r13b,2
fffff803`21d2a15b 0f829cfb1100    jb      nt! ?? ::FNODOBFM::`string'+0x10f13 (fffff803`21e49cfd)

nt!KeRegisterObjectNotification+0x1ad:
fffff803`21d2a161 48837b1000      cmp     qword ptr [rbx+10h],0
fffff803`21d2a166 7540            jne     nt!KeRegisterObjectNotification+0x1f4 (fffff803`21d2a1a8)

nt!KeRegisterObjectNotification+0x1b4:
fffff803`21d2a168 418ac6          mov     al,r14b
fffff803`21d2a16b e9cafeffff      jmp     nt!KeRegisterObjectNotification+0x86 (fffff803`21d2a03a)

nt!KeRegisterObjectNotification+0x1bc:
fffff803`21d2a170 80e17f          and     cl,7Fh
fffff803`21d2a173 80f905          cmp     cl,5
fffff803`21d2a176 0f85edfeffff    jne     nt!KeRegisterObjectNotification+0xb5 (fffff803`21d2a069)

nt!KeRegisterObjectNotification+0x1c8:
fffff803`21d2a17c e936fb1100      jmp     nt! ?? ::FNODOBFM::`string'+0x10ecd (fffff803`21e49cb7)

nt!KeRegisterObjectNotification+0x1cd:
fffff803`21d2a181 488d4618        lea     rax,[rsi+18h]
fffff803`21d2a185 41be01000000    mov     r14d,1
fffff803`21d2a18b 44017604        add     dword ptr [rsi+4],r14d
fffff803`21d2a18f 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21d2a193 488903          mov     qword ptr [rbx],rax
fffff803`21d2a196 48894b08        mov     qword ptr [rbx+8],rcx
fffff803`21d2a19a 483901          cmp     qword ptr [rcx],rax
fffff803`21d2a19d 756c            jne     nt!KeRegisterObjectNotification+0x257 (fffff803`21d2a20b)

nt!KeRegisterObjectNotification+0x1eb:
fffff803`21d2a19f 488919          mov     qword ptr [rcx],rbx
fffff803`21d2a1a2 48895808        mov     qword ptr [rax+8],rbx
fffff803`21d2a1a6 eb80            jmp     nt!KeRegisterObjectNotification+0x174 (fffff803`21d2a128)

nt!KeRegisterObjectNotification+0x1f4:
fffff803`21d2a1a8 8a83da2d0000    mov     al,byte ptr [rbx+2DDAh]
fffff803`21d2a1ae 84c0            test    al,al
fffff803`21d2a1b0 75b6            jne     nt!KeRegisterObjectNotification+0x1b4 (fffff803`21d2a168)

nt!KeRegisterObjectNotification+0x1fe:
fffff803`21d2a1b2 384320          cmp     byte ptr [rbx+20h],al
fffff803`21d2a1b5 7567            jne     nt!KeRegisterObjectNotification+0x26a (fffff803`21d2a21e)

nt!KeRegisterObjectNotification+0x203:
fffff803`21d2a1b7 b102            mov     cl,2
fffff803`21d2a1b9 ff1511622900    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`21fc03d0)]
fffff803`21d2a1bf eba7            jmp     nt!KeRegisterObjectNotification+0x1b4 (fffff803`21d2a168)

nt!KeRegisterObjectNotification+0x20d:
fffff803`21d2a1c1 41ffc6          inc     r14d
fffff803`21d2a1c4 44853581022a00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r14d
fffff803`21d2a1cb 0f8402fb1100    je      nt! ?? ::FNODOBFM::`string'+0x10ee9 (fffff803`21e49cd3)

nt!KeRegisterObjectNotification+0x21d:
fffff803`21d2a1d1 f390            pause

nt!KeRegisterObjectNotification+0x21f:
fffff803`21d2a1d3 8b06            mov     eax,dword ptr [rsi]
fffff803`21d2a1d5 84c0            test    al,al
fffff803`21d2a1d7 78e8            js      nt!KeRegisterObjectNotification+0x20d (fffff803`21d2a1c1)

nt!KeRegisterObjectNotification+0x225:
fffff803`21d2a1d9 e9c5feffff      jmp     nt!KeRegisterObjectNotification+0xef (fffff803`21d2a0a3)

nt!KeRegisterObjectNotification+0x22a:
fffff803`21d2a1de ffc5            inc     ebp
fffff803`21d2a1e0 852d66022a00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],ebp
fffff803`21d2a1e6 0f84b0fa1100    je      nt! ?? ::FNODOBFM::`string'+0x10eb2 (fffff803`21e49c9c)

nt!KeRegisterObjectNotification+0x238:
fffff803`21d2a1ec f390            pause

nt!KeRegisterObjectNotification+0x23a:
fffff803`21d2a1ee 8b07            mov     eax,dword ptr [rdi]
fffff803`21d2a1f0 84c0            test    al,al
fffff803`21d2a1f2 78ea            js      nt!KeRegisterObjectNotification+0x22a (fffff803`21d2a1de)

nt!KeRegisterObjectNotification+0x240:
fffff803`21d2a1f4 f00fba2f07      lock bts dword ptr [rdi],7
fffff803`21d2a1f9 72e3            jb      nt!KeRegisterObjectNotification+0x22a (fffff803`21d2a1de)

nt!KeRegisterObjectNotification+0x247:
fffff803`21d2a1fb 41b802000000    mov     r8d,2
fffff803`21d2a201 e9fcfdffff      jmp     nt!KeRegisterObjectNotification+0x4e (fffff803`21d2a002)

nt!KeRegisterObjectNotification+0x252:
fffff803`21d2a206 488bcd          mov     rcx,rbp
fffff803`21d2a209 cd29            int     29h

nt!KeRegisterObjectNotification+0x257:
fffff803`21d2a20b 488bcd          mov     rcx,rbp
fffff803`21d2a20e cd29            int     29h

nt!KeRegisterObjectNotification+0x25c:
fffff803`21d2a210 f390            pause
fffff803`21d2a212 e90afc1100      jmp     nt! ?? ::FNODOBFM::`string'+0x1103b (fffff803`21e49e21)

nt!KeRegisterObjectNotification+0x263:
fffff803`21d2a217 33c0            xor     eax,eax
fffff803`21d2a219 e95dfb1100      jmp     nt! ?? ::FNODOBFM::`string'+0x10f95 (fffff803`21e49d7b)

nt!KeRegisterObjectNotification+0x26a:
fffff803`21d2a21e 44887306        mov     byte ptr [rbx+6],r14b
fffff803`21d2a222 e941ffffff      jmp     nt!KeRegisterObjectNotification+0x1b4 (fffff803`21d2a168)

nt!KeDeregisterObjectNotification+0x39:
fffff803`21d78b49 8a4711          mov     al,byte ptr [rdi+11h]
fffff803`21d78b4c 413ac7          cmp     al,r15b
fffff803`21d78b4f 7520            jne     nt!KeDeregisterObjectNotification+0x61 (fffff803`21d78b71)

nt!KeDeregisterObjectNotification+0x41:
fffff803`21d78b51 488b0f          mov     rcx,qword ptr [rdi]
fffff803`21d78b54 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`21d78b58 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`21d78b5c 753e            jne     nt!KeDeregisterObjectNotification+0x8c (fffff803`21d78b9c)

nt!KeDeregisterObjectNotification+0x4e:
fffff803`21d78b5e 483938          cmp     qword ptr [rax],rdi
fffff803`21d78b61 7539            jne     nt!KeDeregisterObjectNotification+0x8c (fffff803`21d78b9c)

nt!KeDeregisterObjectNotification+0x53:
fffff803`21d78b63 488908          mov     qword ptr [rax],rcx
fffff803`21d78b66 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d78b6a 40b501          mov     bpl,1
fffff803`21d78b6d c6471103        mov     byte ptr [rdi+11h],3

nt!KeDeregisterObjectNotification+0x61:
fffff803`21d78b71 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`21d78b78 410fb6ce        movzx   ecx,r14b
fffff803`21d78b7c 440f22c1        mov     cr8,rcx
fffff803`21d78b80 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d78b85 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`21d78b8a 408ac5          mov     al,bpl
fffff803`21d78b8d 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`21d78b92 4883c420        add     rsp,20h
fffff803`21d78b96 415f            pop     r15
fffff803`21d78b98 415e            pop     r14
fffff803`21d78b9a 5f              pop     rdi
fffff803`21d78b9b c3              ret

nt!KeDeregisterObjectNotification+0x8c:
fffff803`21d78b9c b903000000      mov     ecx,3
fffff803`21d78ba1 cd29            int     29h

nt!KeDeregisterObjectNotification+0x93:
fffff803`21d78ba3 f390            pause
fffff803`21d78ba5 e9dd120d00      jmp     nt! ?? ::FNODOBFM::`string'+0x1109f (fffff803`21e49e87)

nt! ?? ::FNODOBFM::`string'+0x10eb2:
fffff803`21e49c9c 8b05ce031800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e49ca2 a840            test    al,40h
fffff803`21e49ca4 0f844205eeff    je      nt!KeRegisterObjectNotification+0x238 (fffff803`21d2a1ec)

nt! ?? ::FNODOBFM::`string'+0x10ec0:
fffff803`21e49caa 8bcd            mov     ecx,ebp
fffff803`21e49cac e81317f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e49cb1 90              nop
fffff803`21e49cb2 e93705eeff      jmp     nt!KeRegisterObjectNotification+0x23a (fffff803`21d2a1ee)

nt! ?? ::FNODOBFM::`string'+0x10ecd:
fffff803`21e49cb7 8d42ff          lea     eax,[rdx-1]
fffff803`21e49cba 894704          mov     dword ptr [rdi+4],eax
fffff803`21e49cbd e9a703eeff      jmp     nt!KeRegisterObjectNotification+0xb5 (fffff803`21d2a069)

nt! ?? ::FNODOBFM::`string'+0x10ed8:
fffff803`21e49cc2 488bd3          mov     rdx,rbx
fffff803`21e49cc5 498bcf          mov     rcx,r15
fffff803`21e49cc8 e8b38cfeff      call    nt!EtwTraceEnqueueWork (fffff803`21e32980)
fffff803`21e49ccd 90              nop
fffff803`21e49cce e9cd03eeff      jmp     nt!KeRegisterObjectNotification+0xec (fffff803`21d2a0a0)

nt! ?? ::FNODOBFM::`string'+0x10ee9:
fffff803`21e49cd3 8b0597031800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e49cd9 a840            test    al,40h
fffff803`21e49cdb 0f84f004eeff    je      nt!KeRegisterObjectNotification+0x21d (fffff803`21d2a1d1)

nt! ?? ::FNODOBFM::`string'+0x10ef7:
fffff803`21e49ce1 418bce          mov     ecx,r14d
fffff803`21e49ce4 e8db16f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e49ce9 90              nop
fffff803`21e49cea e9e404eeff      jmp     nt!KeRegisterObjectNotification+0x21f (fffff803`21d2a1d3)

nt! ?? ::FNODOBFM::`string'+0x10f05:
fffff803`21e49cef 4d3bf4          cmp     r14,r12
fffff803`21e49cf2 0f85f003eeff    jne     nt!KeRegisterObjectNotification+0x134 (fffff803`21d2a0e8)

nt! ?? ::FNODOBFM::`string'+0x10f0e:
fffff803`21e49cf8 e98404eeff      jmp     nt!KeRegisterObjectNotification+0x1cd (fffff803`21d2a181)

nt! ?? ::FNODOBFM::`string'+0x10f13:
fffff803`21e49cfd 48837b1000      cmp     qword ptr [rbx+10h],0
fffff803`21e49d02 488b7b08        mov     rdi,qword ptr [rbx+8]
fffff803`21e49d06 0f8423010000    je      nt! ?? ::FNODOBFM::`string'+0x11049 (fffff803`21e49e2f)

nt! ?? ::FNODOBFM::`string'+0x10f22:
fffff803`21e49d0c 33f6            xor     esi,esi

nt! ?? ::FNODOBFM::`string'+0x10f24:
fffff803`21e49d0e f0480fba6b3000  lock bts qword ptr [rbx+30h],0
fffff803`21e49d15 0f82e2000000    jb      nt! ?? ::FNODOBFM::`string'+0x11017 (fffff803`21e49dfd)

nt! ?? ::FNODOBFM::`string'+0x10f31:
fffff803`21e49d1b 488b7310        mov     rsi,qword ptr [rbx+10h]
fffff803`21e49d1f 4883631000      and     qword ptr [rbx+10h],0
fffff803`21e49d24 fa              cli
fffff803`21e49d25 44887320        mov     byte ptr [rbx+20h],r14b
fffff803`21e49d29 0f31            rdtsc
fffff803`21e49d2b 48c1e220        shl     rdx,20h
fffff803`21e49d2f 480bc2          or      rax,rdx
fffff803`21e49d32 488b5748        mov     rdx,qword ptr [rdi+48h]
fffff803`21e49d36 8b4f50          mov     ecx,dword ptr [rdi+50h]
fffff803`21e49d39 4c8bc0          mov     r8,rax
fffff803`21e49d3c 488be8          mov     rbp,rax
fffff803`21e49d3f b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21e49d44 4c2b8340530000  sub     r8,qword ptr [rbx+5340h]
fffff803`21e49d4b 4903c8          add     rcx,r8
fffff803`21e49d4e 4903d0          add     rdx,r8
fffff803`21e49d51 483bc8          cmp     rcx,rax
fffff803`21e49d54 48895748        mov     qword ptr [rdi+48h],rdx
fffff803`21e49d58 480f47c8        cmova   rcx,rax
fffff803`21e49d5c f647020e        test    byte ptr [rdi+2],0Eh
fffff803`21e49d60 894f50          mov     dword ptr [rdi+50h],ecx
fffff803`21e49d63 745a            je      nt! ?? ::FNODOBFM::`string'+0x10fd9 (fffff803`21e49dbf)

nt! ?? ::FNODOBFM::`string'+0x10f7f:
fffff803`21e49d65 488b4f68        mov     rcx,qword ptr [rdi+68h]
fffff803`21e49d69 4885c9          test    rcx,rcx
fffff803`21e49d6c 0f84a504eeff    je      nt!KeRegisterObjectNotification+0x263 (fffff803`21d2a217)

nt! ?? ::FNODOBFM::`string'+0x10f8c:
fffff803`21e49d72 8b831c530000    mov     eax,dword ptr [rbx+531Ch]
fffff803`21e49d78 4803c1          add     rax,rcx

nt! ?? ::FNODOBFM::`string'+0x10f95:
fffff803`21e49d7b 4885c0          test    rax,rax
fffff803`21e49d7e 7403            je      nt! ?? ::FNODOBFM::`string'+0x10f9d (fffff803`21e49d83)

nt! ?? ::FNODOBFM::`string'+0x10f9a:
fffff803`21e49d80 4c0100          add     qword ptr [rax],r8

nt! ?? ::FNODOBFM::`string'+0x10f9d:
fffff803`21e49d83 f6470208        test    byte ptr [rdi+2],8
fffff803`21e49d87 7424            je      nt! ?? ::FNODOBFM::`string'+0x10fc7 (fffff803`21e49dad)

nt! ?? ::FNODOBFM::`string'+0x10fa3:
fffff803`21e49d89 488b8338530000  mov     rax,qword ptr [rbx+5338h]
fffff803`21e49d90 488b8f38020000  mov     rcx,qword ptr [rdi+238h]
fffff803`21e49d97 488b5050        mov     rdx,qword ptr [rax+50h]
fffff803`21e49d9b 488bc2          mov     rax,rdx
fffff803`21e49d9e 4823c1          and     rax,rcx
fffff803`21e49da1 483bc2          cmp     rax,rdx
fffff803`21e49da4 7407            je      nt! ?? ::FNODOBFM::`string'+0x10fc7 (fffff803`21e49dad)

nt! ?? ::FNODOBFM::`string'+0x10fc0:
fffff803`21e49da6 4c018350530000  add     qword ptr [rbx+5350h],r8

nt! ?? ::FNODOBFM::`string'+0x10fc7:
fffff803`21e49dad 4883bf6801000000 cmp     qword ptr [rdi+168h],0
fffff803`21e49db5 7408            je      nt! ?? ::FNODOBFM::`string'+0x10fd9 (fffff803`21e49dbf)

nt! ?? ::FNODOBFM::`string'+0x10fd1:
fffff803`21e49db7 488bcf          mov     rcx,rdi
fffff803`21e49dba e8816efaff      call    nt!KiEndCounterAccumulation (fffff803`21df0c40)

nt! ?? ::FNODOBFM::`string'+0x10fd9:
fffff803`21e49dbf 4889ab40530000  mov     qword ptr [rbx+5340h],rbp
fffff803`21e49dc6 fb              sti
fffff803`21e49dc7 48897308        mov     qword ptr [rbx+8],rsi
fffff803`21e49dcb c6868401000002  mov     byte ptr [rsi+184h],2
fffff803`21e49dd2 488bd7          mov     rdx,rdi
fffff803`21e49dd5 488bcb          mov     rcx,rbx
fffff803`21e49dd8 c6878302000020  mov     byte ptr [rdi+283h],20h
fffff803`21e49ddf 4488af86010000  mov     byte ptr [rdi+186h],r13b
fffff803`21e49de6 e815bdeaff      call    nt!KiQueueReadyThread (fffff803`21cf5b00)
fffff803`21e49deb 458ac5          mov     r8b,r13b
fffff803`21e49dee 488bd6          mov     rdx,rsi
fffff803`21e49df1 488bcf          mov     rcx,rdi
fffff803`21e49df4 e837c2e7ff      call    nt!KiSwapContext (fffff803`21cc6030)
fffff803`21e49df9 84c0            test    al,al
fffff803`21e49dfb eb39            jmp     nt! ?? ::FNODOBFM::`string'+0x11050 (fffff803`21e49e36)

nt! ?? ::FNODOBFM::`string'+0x11017:
fffff803`21e49dfd 4103f6          add     esi,r14d
fffff803`21e49e00 853546061800    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21e49e06 0f850404eeff    jne     nt!KeRegisterObjectNotification+0x25c (fffff803`21d2a210)

nt! ?? ::FNODOBFM::`string'+0x11026:
fffff803`21e49e0c 8b055e021800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e49e12 a840            test    al,40h
fffff803`21e49e14 0f84f603eeff    je      nt!KeRegisterObjectNotification+0x25c (fffff803`21d2a210)

nt! ?? ::FNODOBFM::`string'+0x11034:
fffff803`21e49e1a 8bce            mov     ecx,esi
fffff803`21e49e1c e8a315f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x1103b:
fffff803`21e49e21 488b4330        mov     rax,qword ptr [rbx+30h]
fffff803`21e49e25 4885c0          test    rax,rax
fffff803`21e49e28 75d3            jne     nt! ?? ::FNODOBFM::`string'+0x11017 (fffff803`21e49dfd)

nt! ?? ::FNODOBFM::`string'+0x11044:
fffff803`21e49e2a e9dffeffff      jmp     nt! ?? ::FNODOBFM::`string'+0x10f24 (fffff803`21e49d0e)

nt! ?? ::FNODOBFM::`string'+0x11049:
fffff803`21e49e2f f7477400010000  test    dword ptr [rdi+74h],100h

nt! ?? ::FNODOBFM::`string'+0x11050:
fffff803`21e49e36 7415            je      nt! ?? ::FNODOBFM::`string'+0x11067 (fffff803`21e49e4d)

nt! ?? ::FNODOBFM::`string'+0x11052:
fffff803`21e49e38 450f22c6        mov     cr8,r14
fffff803`21e49e3c 0fba777408      btr     dword ptr [rdi+74h],8
fffff803`21e49e41 4533c0          xor     r8d,r8d
fffff803`21e49e44 33d2            xor     edx,edx
fffff803`21e49e46 33c9            xor     ecx,ecx
fffff803`21e49e48 e8c377efff      call    nt!KiDeliverApc (fffff803`21d41610)

nt! ?? ::FNODOBFM::`string'+0x11067:
fffff803`21e49e4d 410fb6c5        movzx   eax,r13b
fffff803`21e49e51 440f22c0        mov     cr8,rax
fffff803`21e49e55 e90e03eeff      jmp     nt!KeRegisterObjectNotification+0x1b4 (fffff803`21d2a168)

nt! ?? ::FNODOBFM::`string'+0x11074:
fffff803`21e49e5a b903000000      mov     ecx,3
fffff803`21e49e5f cd29            int     29h
fffff803`21e49e61 90              nop
fffff803`21e49e62 90              nop
fffff803`21e49e63 90              nop

nt! ?? ::FNODOBFM::`string'+0x1107c:
fffff803`21e49e64 ffc6            inc     esi
fffff803`21e49e66 8535e0051800    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21e49e6c 0f8531edf2ff    jne     nt!KeDeregisterObjectNotification+0x93 (fffff803`21d78ba3)

nt! ?? ::FNODOBFM::`string'+0x1108a:
fffff803`21e49e72 8b05f8011800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e49e78 a840            test    al,40h
fffff803`21e49e7a 0f8423edf2ff    je      nt!KeDeregisterObjectNotification+0x93 (fffff803`21d78ba3)

nt! ?? ::FNODOBFM::`string'+0x11098:
fffff803`21e49e80 8bce            mov     ecx,esi
fffff803`21e49e82 e83d15f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x1109f:
fffff803`21e49e87 8b03            mov     eax,dword ptr [rbx]
fffff803`21e49e89 84c0            test    al,al
fffff803`21e49e8b 78d7            js      nt! ?? ::FNODOBFM::`string'+0x1107c (fffff803`21e49e64)

nt! ?? ::FNODOBFM::`string'+0x110a5:
fffff803`21e49e8d f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21e49e92 72d0            jb      nt! ?? ::FNODOBFM::`string'+0x1107c (fffff803`21e49e64)

nt! ?? ::FNODOBFM::`string'+0x110ac:
fffff803`21e49e94 e9b0ecf2ff      jmp     nt!KeDeregisterObjectNotification+0x39 (fffff803`21d78b49)
