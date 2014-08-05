nt! ?? ::FNODOBFM::`string'+0x1535e:
fffff803`21c7c054 498bce          mov     rcx,r14
fffff803`21c7c057 e864041700      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21c7c05c 4c8b442438      mov     r8,qword ptr [rsp+38h]
fffff803`21c7c061 baedffffff      mov     edx,0FFFFFFEDh
fffff803`21c7c066 e9918b0700      jmp     nt!KiExecuteAllDpcs+0x9c (fffff803`21cf4bfc)

nt! ?? ::FNODOBFM::`string'+0x15375:
fffff803`21c7c06b 498bce          mov     rcx,r14
fffff803`21c7c06e e84d120300      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21c7c073 4c8b442438      mov     r8,qword ptr [rsp+38h]
fffff803`21c7c078 baedffffff      mov     edx,0FFFFFFEDh
fffff803`21c7c07d e97a8b0700      jmp     nt!KiExecuteAllDpcs+0x9c (fffff803`21cf4bfc)

nt! ?? ::FNODOBFM::`string'+0x1538c:
fffff803`21c7c082 488b5538        mov     rdx,qword ptr [rbp+38h]
fffff803`21c7c086 498bce          mov     rcx,r14
fffff803`21c7c089 e80e041700      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21c7c08e 4c8b542458      mov     r10,qword ptr [rsp+58h]
fffff803`21c7c093 4c8b5c2450      mov     r11,qword ptr [rsp+50h]
fffff803`21c7c098 4c8b4c2460      mov     r9,qword ptr [rsp+60h]
fffff803`21c7c09d 4c8b442438      mov     r8,qword ptr [rsp+38h]
fffff803`21c7c0a2 e9de8b0700      jmp     nt!KiExecuteAllDpcs+0x125 (fffff803`21cf4c85)

nt! ?? ::FNODOBFM::`string'+0x153b1:
fffff803`21c7c0a7 488b4618        mov     rax,qword ptr [rsi+18h]
fffff803`21c7c0ab 488b15dee63400  mov     rdx,qword ptr [nt!KiWaitAlways (fffff803`21fca790)]
fffff803`21c7c0b2 41b9650f0000    mov     r9d,0F65h
fffff803`21c7c0b8 4833d6          xor     rdx,rsi
fffff803`21c7c0bb 48894590        mov     qword ptr [rbp-70h],rax
fffff803`21c7c0bf 488b0562e43400  mov     rax,qword ptr [nt!KiWaitNever (fffff803`21fca528)]
fffff803`21c7c0c6 480fca          bswap   rdx
fffff803`21c7c0c9 8bc8            mov     ecx,eax
fffff803`21c7c0cb 41b800000420    mov     r8d,20040000h
fffff803`21c7c0d1 48335618        xor     rdx,qword ptr [rsi+18h]
fffff803`21c7c0d5 48c745a810000000 mov     qword ptr [rbp-58h],10h
fffff803`21c7c0dd c7442420020a4000 mov     dword ptr [rsp+20h],400A02h
fffff803`21c7c0e5 48d3ca          ror     rdx,cl
fffff803`21c7c0e8 488d4da0        lea     rcx,[rbp-60h]
fffff803`21c7c0ec 4833d0          xor     rdx,rax
fffff803`21c7c0ef 48b87772ddf3c7c6357e mov rax,7E35C6C7F3DD7277h
fffff803`21c7c0f9 480fafd0        imul    rdx,rax
fffff803`21c7c0fd 488d4590        lea     rax,[rbp-70h]
fffff803`21c7c101 48895598        mov     qword ptr [rbp-68h],rdx
fffff803`21c7c105 ba01000000      mov     edx,1
fffff803`21c7c10a 488945a0        mov     qword ptr [rbp-60h],rax
fffff803`21c7c10e e82d1a1300      call    nt!EtwTraceKernelEvent (fffff803`21dadb40)
fffff803`21c7c113 4c8b542458      mov     r10,qword ptr [rsp+58h]
fffff803`21c7c118 4c8b5c2450      mov     r11,qword ptr [rsp+50h]
fffff803`21c7c11d 4c8b4c2460      mov     r9,qword ptr [rsp+60h]
fffff803`21c7c122 4c8b442438      mov     r8,qword ptr [rsp+38h]
fffff803`21c7c127 e96a8b0700      jmp     nt!KiExecuteAllDpcs+0x136 (fffff803`21cf4c96)

nt! ?? ::FNODOBFM::`string'+0x15436:
fffff803`21c7c12c f7054edf340000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21c7c136 0f84d98d0700    je      nt!KiExecuteAllDpcs+0x3b5 (fffff803`21cf4f15)

nt! ?? ::FNODOBFM::`string'+0x15446:
fffff803`21c7c13c 488b5538        mov     rdx,qword ptr [rbp+38h]
fffff803`21c7c140 498bce          mov     rcx,r14
fffff803`21c7c143 e854031700      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21c7c148 90              nop
fffff803`21c7c149 e9d58b0700      jmp     nt!KiExecuteAllDpcs+0x1c3 (fffff803`21cf4d23)

nt! ?? ::FNODOBFM::`string'+0x15458:
fffff803`21c7c14e 8b82e4010000    mov     eax,dword ptr [rdx+1E4h]
fffff803`21c7c154 4c8b442448      mov     r8,qword ptr [rsp+48h]
fffff803`21c7c159 4c8bc9          mov     r9,rcx
fffff803`21c7c15c ba04000000      mov     edx,4
fffff803`21c7c161 b9c7000000      mov     ecx,0C7h
fffff803`21c7c166 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21c7c16b e8d0020500      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21c7c170 cc              int     3
fffff803`21c7c171 90              nop
fffff803`21c7c172 90              nop
fffff803`21c7c173 90              nop
fffff803`21c7c174 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21c7c179 4889742410      mov     qword ptr [rsp+10h],rsi
fffff803`21c7c17e 48897c2418      mov     qword ptr [rsp+18h],rdi
fffff803`21c7c183 9c              pushfq
fffff803`21c7c184 4156            push    r14
fffff803`21c7c186 4157            push    r15
fffff803`21c7c188 4883ec20        sub     rsp,20h
fffff803`21c7c18c 498bd8          mov     rbx,r8
fffff803`21c7c18f 4c8bf2          mov     r14,rdx
fffff803`21c7c192 4c8bf9          mov     r15,rcx
fffff803`21c7c195 33ff            xor     edi,edi
fffff803`21c7c197 fa              cli
fffff803`21c7c198 8b742430        mov     esi,dword ptr [rsp+30h]
fffff803`21c7c19c c1ee09          shr     esi,9
fffff803`21c7c19f 4080e601        and     sil,1

nt!ExInterlockedPushEntryList+0x30:
fffff803`21c7c1a3 f0480fba2b00    lock bts qword ptr [rbx],0
fffff803`21c7c1a9 0f82b9521f00    jb      nt! ?? ::FNODOBFM::`string'+0x4ce18 (fffff803`21e71468)

nt!ExInterlockedPushEntryList+0x3c:
fffff803`21c7c1af 498b07          mov     rax,qword ptr [r15]
fffff803`21c7c1b2 498906          mov     qword ptr [r14],rax
fffff803`21c7c1b5 4d8937          mov     qword ptr [r15],r14
fffff803`21c7c1b8 f048832300      lock and qword ptr [rbx],0
fffff803`21c7c1bd 4084f6          test    sil,sil
fffff803`21c7c1c0 7401            je      nt!ExInterlockedPushEntryList+0x50 (fffff803`21c7c1c3)

nt!ExInterlockedPushEntryList+0x4f:
fffff803`21c7c1c2 fb              sti

nt!ExInterlockedPushEntryList+0x50:
fffff803`21c7c1c3 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21c7c1c8 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff803`21c7c1cd 488b7c2450      mov     rdi,qword ptr [rsp+50h]
fffff803`21c7c1d2 4883c420        add     rsp,20h
fffff803`21c7c1d6 415f            pop     r15
fffff803`21c7c1d8 415e            pop     r14
fffff803`21c7c1da 59              pop     rcx
fffff803`21c7c1db c3              ret

nt!ExInterlockedPushEntryList+0x69:
fffff803`21c7c1dc f390            pause
fffff803`21c7c1de e9ae521f00      jmp     nt! ?? ::FNODOBFM::`string'+0x4ce41 (fffff803`21e71491)

nt!KiExecuteAllDpcs:
fffff803`21cf4b60 4c8bdc          mov     r11,rsp
fffff803`21cf4b63 55              push    rbp
fffff803`21cf4b64 53              push    rbx
fffff803`21cf4b65 4155            push    r13
fffff803`21cf4b67 4157            push    r15
fffff803`21cf4b69 498d6bc8        lea     rbp,[r11-38h]
fffff803`21cf4b6d 4881ec18010000  sub     rsp,118h
fffff803`21cf4b74 488b051dcf1f00  mov     rax,qword ptr [nt!_security_cookie (fffff803`21ef1a98)]
fffff803`21cf4b7b 4833c4          xor     rax,rsp
fffff803`21cf4b7e 488945e0        mov     qword ptr [rbp-20h],rax
fffff803`21cf4b82 458be9          mov     r13d,r9d
fffff803`21cf4b85 4c89442438      mov     qword ptr [rsp+38h],r8
fffff803`21cf4b8a 4889542478      mov     qword ptr [rsp+78h],rdx
fffff803`21cf4b8f 498d9d6c010000  lea     rbx,[r13+16Ch]
fffff803`21cf4b96 4c8bf9          mov     r15,rcx
fffff803`21cf4b99 4c896d80        mov     qword ptr [rbp-80h],r13
fffff803`21cf4b9d 48c1e305        shl     rbx,5
fffff803`21cf4ba1 4803d9          add     rbx,rcx
fffff803`21cf4ba4 8b4318          mov     eax,dword ptr [rbx+18h]
fffff803`21cf4ba7 85c0            test    eax,eax
fffff803`21cf4ba9 0f8494010000    je      nt!KiExecuteAllDpcs+0x1e3 (fffff803`21cf4d43)

nt!KiExecuteAllDpcs+0x4f:
fffff803`21cf4baf 8b05cf542d00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)]
fffff803`21cf4bb5 498973d8        mov     qword ptr [r11-28h],rsi
fffff803`21cf4bb9 49897bd0        mov     qword ptr [r11-30h],rdi
fffff803`21cf4bbd 4d8963c8        mov     qword ptr [r11-38h],r12
fffff803`21cf4bc1 4d8973c0        mov     qword ptr [r11-40h],r14
fffff803`21cf4bc5 84c0            test    al,al
fffff803`21cf4bc7 0f8804030000    js      nt!KiExecuteAllDpcs+0x371 (fffff803`21cf4ed1)

nt!KiExecuteAllDpcs+0x6d:
fffff803`21cf4bcd 4533e4          xor     r12d,r12d

nt!KiExecuteAllDpcs+0x70:
fffff803`21cf4bd0 4c89642470      mov     qword ptr [rsp+70h],r12
fffff803`21cf4bd5 4c8d7310        lea     r14,[rbx+10h]

nt!KiExecuteAllDpcs+0x79:
fffff803`21cf4bd9 488d3d20d4f7ff  lea     rdi,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21cf4be0 baedffffff      mov     edx,0FFFFFFEDh
fffff803`21cf4be5 a900002100      test    eax,210000h
fffff803`21cf4bea 0f856474f8ff    jne     nt! ?? ::FNODOBFM::`string'+0x1535e (fffff803`21c7c054)

nt!KiExecuteAllDpcs+0x90:
fffff803`21cf4bf0 f0490fba2e00    lock bts qword ptr [r14],0
fffff803`21cf4bf6 0f826f74f8ff    jb      nt! ?? ::FNODOBFM::`string'+0x15375 (fffff803`21c7c06b)

nt!KiExecuteAllDpcs+0x9c:
fffff803`21cf4bfc 8b4318          mov     eax,dword ptr [rbx+18h]
fffff803`21cf4bff 488b0b          mov     rcx,qword ptr [rbx]
fffff803`21cf4c02 83f801          cmp     eax,1
fffff803`21cf4c05 7f15            jg      nt!KiExecuteAllDpcs+0xbc (fffff803`21cf4c1c)

nt!KiExecuteAllDpcs+0xa7:
fffff803`21cf4c07 66f04321946fdc2d0000 lock and word ptr [r15+r13*2+2DDCh],dx
fffff803`21cf4c11 8b4318          mov     eax,dword ptr [rbx+18h]
fffff803`21cf4c14 85c0            test    eax,eax
fffff803`21cf4c16 0f841075f8ff    je      nt! ?? ::FNODOBFM::`string'+0x15436 (fffff803`21c7c12c)

nt!KiExecuteAllDpcs+0xbc:
fffff803`21cf4c1c 488b11          mov     rdx,qword ptr [rcx]
fffff803`21cf4c1f 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`21cf4c23 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`21cf4c27 0f85c5020000    jne     nt!KiExecuteAllDpcs+0x392 (fffff803`21cf4ef2)

nt!KiExecuteAllDpcs+0xcd:
fffff803`21cf4c2d 483908          cmp     qword ptr [rax],rcx
fffff803`21cf4c30 0f85bc020000    jne     nt!KiExecuteAllDpcs+0x392 (fffff803`21cf4ef2)

nt!KiExecuteAllDpcs+0xd6:
fffff803`21cf4c36 488910          mov     qword ptr [rax],rdx
fffff803`21cf4c39 48894208        mov     qword ptr [rdx+8],rax
fffff803`21cf4c3d 488b4110        mov     rax,qword ptr [rcx+10h]
fffff803`21cf4c41 488d71f8        lea     rsi,[rcx-8]
fffff803`21cf4c45 4889442448      mov     qword ptr [rsp+48h],rax
fffff803`21cf4c4a 4c8b5620        mov     r10,qword ptr [rsi+20h]
fffff803`21cf4c4e 4c8b5e28        mov     r11,qword ptr [rsi+28h]
fffff803`21cf4c52 4c8b4e30        mov     r9,qword ptr [rsi+30h]
fffff803`21cf4c56 48c7463800000000 mov     qword ptr [rsi+38h],0
fffff803`21cf4c5e ff4b18          dec     dword ptr [rbx+18h]
fffff803`21cf4c61 f70519542d0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21cf4c6b 4c89542458      mov     qword ptr [rsp+58h],r10
fffff803`21cf4c70 4c895c2450      mov     qword ptr [rsp+50h],r11
fffff803`21cf4c75 4c894c2460      mov     qword ptr [rsp+60h],r9
fffff803`21cf4c7a 0f850274f8ff    jne     nt! ?? ::FNODOBFM::`string'+0x1538c (fffff803`21c7c082)

nt!KiExecuteAllDpcs+0x120:
fffff803`21cf4c80 f049832600      lock and qword ptr [r14],0

nt!KiExecuteAllDpcs+0x125:
fffff803`21cf4c85 fb              sti
fffff803`21cf4c86 f705f4532d0000000400 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],40000h
fffff803`21cf4c90 0f851174f8ff    jne     nt! ?? ::FNODOBFM::`string'+0x153b1 (fffff803`21c7c0a7)

nt!KiExecuteAllDpcs+0x136:
fffff803`21cf4c96 4d85e4          test    r12,r12
fffff803`21cf4c99 0f8572010000    jne     nt!KiExecuteAllDpcs+0x2b1 (fffff803`21cf4e11)

nt!KiExecuteAllDpcs+0x13f:
fffff803`21cf4c9f 418b00          mov     eax,dword ptr [r8]
fffff803`21cf4ca2 498bd2          mov     rdx,r10
fffff803`21cf4ca5 488bce          mov     rcx,rsi
fffff803`21cf4ca8 8bf8            mov     edi,eax
fffff803`21cf4caa 83e70f          and     edi,0Fh
fffff803`21cf4cad ffc0            inc     eax
fffff803`21cf4caf 418900          mov     dword ptr [r8],eax
fffff803`21cf4cb2 488b442448      mov     rax,qword ptr [rsp+48h]
fffff803`21cf4cb7 48ffc7          inc     rdi
fffff803`21cf4cba 48c1e704        shl     rdi,4
fffff803`21cf4cbe 4903f8          add     rdi,r8
fffff803`21cf4cc1 4d8bc3          mov     r8,r11
fffff803`21cf4cc4 488907          mov     qword ptr [rdi],rax
fffff803`21cf4cc7 a12003000080f7ffff mov   eax,dword ptr [FFFFF78000000320h]
fffff803`21cf4cd0 894708          mov     dword ptr [rdi+8],eax
fffff803`21cf4cd3 488b442478      mov     rax,qword ptr [rsp+78h]
fffff803`21cf4cd8 8b80e4010000    mov     eax,dword ptr [rax+1E4h]
fffff803`21cf4cde 41c7872053000000000000 mov dword ptr [r15+5320h],0
fffff803`21cf4ce9 89442430        mov     dword ptr [rsp+30h],eax
fffff803`21cf4ced ff542448        call    qword ptr [rsp+48h]
fffff803`21cf4cf1 a12003000080f7ffff mov   eax,dword ptr [FFFFF78000000320h]
fffff803`21cf4cfa 488b542478      mov     rdx,qword ptr [rsp+78h]
fffff803`21cf4cff 8b4c2430        mov     ecx,dword ptr [rsp+30h]
fffff803`21cf4d03 89470c          mov     dword ptr [rdi+0Ch],eax
fffff803`21cf4d06 3b8ae4010000    cmp     ecx,dword ptr [rdx+1E4h]
fffff803`21cf4d0c 0f853c74f8ff    jne     nt! ?? ::FNODOBFM::`string'+0x15458 (fffff803`21c7c14e)

nt!KiExecuteAllDpcs+0x1b2:
fffff803`21cf4d12 4d85e4          test    r12,r12
fffff803`21cf4d15 7546            jne     nt!KiExecuteAllDpcs+0x1fd (fffff803`21cf4d5d)

nt!KiExecuteAllDpcs+0x1b7:
fffff803`21cf4d17 fa              cli
fffff803`21cf4d18 8b4318          mov     eax,dword ptr [rbx+18h]
fffff803`21cf4d1b 85c0            test    eax,eax
fffff803`21cf4d1d 0f859e010000    jne     nt!KiExecuteAllDpcs+0x361 (fffff803`21cf4ec1)

nt!KiExecuteAllDpcs+0x1c3:
fffff803`21cf4d23 4c8ba42400010000 mov     r12,qword ptr [rsp+100h]
fffff803`21cf4d2b 488bbc2408010000 mov     rdi,qword ptr [rsp+108h]
fffff803`21cf4d33 488bb42410010000 mov     rsi,qword ptr [rsp+110h]
fffff803`21cf4d3b 4c8bb424f8000000 mov     r14,qword ptr [rsp+0F8h]

nt!KiExecuteAllDpcs+0x1e3:
fffff803`21cf4d43 488b4de0        mov     rcx,qword ptr [rbp-20h]
fffff803`21cf4d47 4833cc          xor     rcx,rsp
fffff803`21cf4d4a e871e7fcff      call    nt!_security_check_cookie (fffff803`21cc34c0)
fffff803`21cf4d4f 4881c418010000  add     rsp,118h
fffff803`21cf4d56 415f            pop     r15
fffff803`21cf4d58 415d            pop     r13
fffff803`21cf4d5a 5b              pop     rbx
fffff803`21cf4d5b 5d              pop     rbp
fffff803`21cf4d5c c3              ret

nt!KiExecuteAllDpcs+0x1fd:
fffff803`21cf4d5d 8b3d9d532d00    mov     edi,dword ptr [nt!EtwpActiveSystemLoggers (fffff803`21fca100)]
fffff803`21cf4d63 410fb70424      movzx   eax,word ptr [r12]
fffff803`21cf4d68 418b742404      mov     esi,dword ptr [r12+4]
fffff803`21cf4d6d 0fbccf          bsf     ecx,edi
fffff803`21cf4d70 6689442430      mov     word ptr [rsp+30h],ax
fffff803`21cf4d75 488d442448      lea     rax,[rsp+48h]
fffff803`21cf4d7a 488945d0        mov     qword ptr [rbp-30h],rax
fffff803`21cf4d7e 48c745d808000000 mov     qword ptr [rbp-28h],8
fffff803`21cf4d86 894c2468        mov     dword ptr [rsp+68h],ecx
fffff803`21cf4d8a 748b            je      nt!KiExecuteAllDpcs+0x1b7 (fffff803`21cf4d17)

nt!KiExecuteAllDpcs+0x22c:
fffff803`21cf4d8c 440fb7642430    movzx   r12d,word ptr [rsp+30h]
fffff803`21cf4d92 4c8d2d67d2f7ff  lea     r13,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21cf4d99 4c8d35400e2100  lea     r14,[nt!EtwpGroupMasks (fffff803`21f05be0)]

nt!KiExecuteAllDpcs+0x240:
fffff803`21cf4da0 8d47ff          lea     eax,[rdi-1]
fffff803`21cf4da3 8bd1            mov     edx,ecx
fffff803`21cf4da5 23f8            and     edi,eax
fffff803`21cf4da7 8bc1            mov     eax,ecx
fffff803`21cf4da9 48c1e005        shl     rax,5
fffff803`21cf4dad 4903c6          add     rax,r14
fffff803`21cf4db0 7444            je      nt!KiExecuteAllDpcs+0x296 (fffff803`21cf4df6)

nt!KiExecuteAllDpcs+0x252:
fffff803`21cf4db2 8b4004          mov     eax,dword ptr [rax+4]
fffff803`21cf4db5 84c0            test    al,al
fffff803`21cf4db7 793d            jns     nt!KiExecuteAllDpcs+0x296 (fffff803`21cf4df6)

nt!KiExecuteAllDpcs+0x259:
fffff803`21cf4db9 410fb7848d223d2900 movzx eax,word ptr [r13+rcx*4+293D22h]
fffff803`21cf4dc2 410fb79495203d2900 movzx edx,word ptr [r13+rdx*4+293D20h]
fffff803`21cf4dcb 488d4db0        lea     rcx,[rbp-50h]
fffff803`21cf4dcf 488d0cc1        lea     rcx,[rcx+rax*8]
fffff803`21cf4dd3 450fb7cc        movzx   r9d,r12w
fffff803`21cf4dd7 41b802000000    mov     r8d,2
fffff803`21cf4ddd 48894dc0        mov     qword ptr [rbp-40h],rcx
fffff803`21cf4de1 488d4dc0        lea     rcx,[rbp-40h]
fffff803`21cf4de5 48c745c808000000 mov     qword ptr [rbp-38h],8
fffff803`21cf4ded 89742420        mov     dword ptr [rsp+20h],esi
fffff803`21cf4df1 e80a850b00      call    nt!EtwpLogKernelEvent (fffff803`21dad300)

nt!KiExecuteAllDpcs+0x296:
fffff803`21cf4df6 0fbccf          bsf     ecx,edi
fffff803`21cf4df9 75a5            jne     nt!KiExecuteAllDpcs+0x240 (fffff803`21cf4da0)

nt!KiExecuteAllDpcs+0x29b:
fffff803`21cf4dfb 4c8b6d80        mov     r13,qword ptr [rbp-80h]
fffff803`21cf4dff 4c8b642470      mov     r12,qword ptr [rsp+70h]
fffff803`21cf4e04 894c2468        mov     dword ptr [rsp+68h],ecx
fffff803`21cf4e08 4c8d7310        lea     r14,[rbx+10h]
fffff803`21cf4e0c e906ffffff      jmp     nt!KiExecuteAllDpcs+0x1b7 (fffff803`21cf4d17)

nt!KiExecuteAllDpcs+0x2b1:
fffff803`21cf4e11 8b15e9522d00    mov     edx,dword ptr [nt!EtwpActiveSystemLoggers (fffff803`21fca100)]
fffff803`21cf4e17 4533c0          xor     r8d,r8d
fffff803`21cf4e1a 0fbcca          bsf     ecx,edx
fffff803`21cf4e1d 4489442430      mov     dword ptr [rsp+30h],r8d
fffff803`21cf4e22 743e            je      nt!KiExecuteAllDpcs+0x302 (fffff803`21cf4e62)

nt!KiExecuteAllDpcs+0x2c4:
fffff803`21cf4e24 4c8d35b50d2100  lea     r14,[nt!EtwpGroupMasks (fffff803`21f05be0)]

nt!KiExecuteAllDpcs+0x2cb:
fffff803`21cf4e2b 8d42ff          lea     eax,[rdx-1]
fffff803`21cf4e2e 23d0            and     edx,eax
fffff803`21cf4e30 8bc1            mov     eax,ecx
fffff803`21cf4e32 48c1e005        shl     rax,5
fffff803`21cf4e36 4903c6          add     rax,r14
fffff803`21cf4e39 7419            je      nt!KiExecuteAllDpcs+0x2f4 (fffff803`21cf4e54)

nt!KiExecuteAllDpcs+0x2db:
fffff803`21cf4e3b 8b4004          mov     eax,dword ptr [rax+4]
fffff803`21cf4e3e 84c0            test    al,al
fffff803`21cf4e40 7912            jns     nt!KiExecuteAllDpcs+0x2f4 (fffff803`21cf4e54)

nt!KiExecuteAllDpcs+0x2e2:
fffff803`21cf4e42 0fb68c8f223d2900 movzx   ecx,byte ptr [rdi+rcx*4+293D22h]
fffff803`21cf4e4a b801000000      mov     eax,1
fffff803`21cf4e4f d3e0            shl     eax,cl
fffff803`21cf4e51 440bc0          or      r8d,eax

nt!KiExecuteAllDpcs+0x2f4:
fffff803`21cf4e54 0fbcca          bsf     ecx,edx
fffff803`21cf4e57 75d2            jne     nt!KiExecuteAllDpcs+0x2cb (fffff803`21cf4e2b)

nt!KiExecuteAllDpcs+0x2f9:
fffff803`21cf4e59 4489442430      mov     dword ptr [rsp+30h],r8d
fffff803`21cf4e5e 4c8d7310        lea     r14,[rbx+10h]

nt!KiExecuteAllDpcs+0x302:
fffff803`21cf4e62 33ff            xor     edi,edi
fffff803`21cf4e64 4c8d2d95d1f7ff  lea     r13,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]
fffff803`21cf4e6b 4533e4          xor     r12d,r12d

nt!KiExecuteAllDpcs+0x30e:
fffff803`21cf4e6e 410fa3f8        bt      r8d,edi
fffff803`21cf4e72 7342            jae     nt!KiExecuteAllDpcs+0x356 (fffff803`21cf4eb6)

nt!KiExecuteAllDpcs+0x314:
fffff803`21cf4e74 43ff942c608f2700 call    qword ptr [r12+r13+278F60h]
fffff803`21cf4e7c 448b442430      mov     r8d,dword ptr [rsp+30h]
fffff803`21cf4e81 4a894425b0      mov     qword ptr [rbp+r12-50h],rax

nt!KiExecuteAllDpcs+0x326:
fffff803`21cf4e86 ffc7            inc     edi
fffff803`21cf4e88 4983c408        add     r12,8
fffff803`21cf4e8c 83ff02          cmp     edi,2
fffff803`21cf4e8f 72dd            jb      nt!KiExecuteAllDpcs+0x30e (fffff803`21cf4e6e)

nt!KiExecuteAllDpcs+0x331:
fffff803`21cf4e91 4c8b6d80        mov     r13,qword ptr [rbp-80h]
fffff803`21cf4e95 4c8b642470      mov     r12,qword ptr [rsp+70h]
fffff803`21cf4e9a 4c8b542458      mov     r10,qword ptr [rsp+58h]
fffff803`21cf4e9f 4c8b5c2450      mov     r11,qword ptr [rsp+50h]
fffff803`21cf4ea4 4c8b4c2460      mov     r9,qword ptr [rsp+60h]
fffff803`21cf4ea9 4c8b442438      mov     r8,qword ptr [rsp+38h]
fffff803`21cf4eae 897d88          mov     dword ptr [rbp-78h],edi
fffff803`21cf4eb1 e9e9fdffff      jmp     nt!KiExecuteAllDpcs+0x13f (fffff803`21cf4c9f)

nt!KiExecuteAllDpcs+0x356:
fffff803`21cf4eb6 4ac74425b000000000 mov   qword ptr [rbp+r12-50h],0
fffff803`21cf4ebf ebc5            jmp     nt!KiExecuteAllDpcs+0x326 (fffff803`21cf4e86)

nt!KiExecuteAllDpcs+0x361:
fffff803`21cf4ec1 8b05bd512d00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)]
fffff803`21cf4ec7 4c8b442438      mov     r8,qword ptr [rsp+38h]
fffff803`21cf4ecc e908fdffff      jmp     nt!KiExecuteAllDpcs+0x79 (fffff803`21cf4bd9)

nt!KiExecuteAllDpcs+0x371:
fffff803`21cf4ed1 4585c9          test    r9d,r9d
fffff803`21cf4ed4 7523            jne     nt!KiExecuteAllDpcs+0x399 (fffff803`21cf4ef9)

nt!KiExecuteAllDpcs+0x376:
fffff803`21cf4ed6 b9440f0000      mov     ecx,0F44h
fffff803`21cf4edb c7442444020a4000 mov     dword ptr [rsp+44h],400A02h
fffff803`21cf4ee3 4c8d642440      lea     r12,[rsp+40h]
fffff803`21cf4ee8 66894c2440      mov     word ptr [rsp+40h],cx
fffff803`21cf4eed e9defcffff      jmp     nt!KiExecuteAllDpcs+0x70 (fffff803`21cf4bd0)

nt!KiExecuteAllDpcs+0x392:
fffff803`21cf4ef2 b903000000      mov     ecx,3
fffff803`21cf4ef7 cd29            int     29h

nt!KiExecuteAllDpcs+0x399:
fffff803`21cf4ef9 b9420f0000      mov     ecx,0F42h
fffff803`21cf4efe c744244402184000 mov     dword ptr [rsp+44h],401802h
fffff803`21cf4f06 4c8d642440      lea     r12,[rsp+40h]
fffff803`21cf4f0b 66894c2440      mov     word ptr [rsp+40h],cx
fffff803`21cf4f10 e9bbfcffff      jmp     nt!KiExecuteAllDpcs+0x70 (fffff803`21cf4bd0)

nt!KiExecuteAllDpcs+0x3b5:
fffff803`21cf4f15 f049832600      lock and qword ptr [r14],0
fffff803`21cf4f1a e904feffff      jmp     nt!KiExecuteAllDpcs+0x1c3 (fffff803`21cf4d23)

nt! ?? ::FNODOBFM::`string'+0x4ce18:
fffff803`21e71468 4084f6          test    sil,sil
fffff803`21e7146b 7401            je      nt! ?? ::FNODOBFM::`string'+0x4ce1e (fffff803`21e7146e)

nt! ?? ::FNODOBFM::`string'+0x4ce1d:
fffff803`21e7146d fb              sti

nt! ?? ::FNODOBFM::`string'+0x4ce1e:
fffff803`21e7146e ffc7            inc     edi
fffff803`21e71470 853dd68f1500    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],edi
fffff803`21e71476 0f8560ade0ff    jne     nt!ExInterlockedPushEntryList+0x69 (fffff803`21c7c1dc)

nt! ?? ::FNODOBFM::`string'+0x4ce2c:
fffff803`21e7147c 8b05ee8b1500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e71482 a840            test    al,40h
fffff803`21e71484 0f8452ade0ff    je      nt!ExInterlockedPushEntryList+0x69 (fffff803`21c7c1dc)

nt! ?? ::FNODOBFM::`string'+0x4ce3a:
fffff803`21e7148a 8bcf            mov     ecx,edi
fffff803`21e7148c e8339ff6ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x4ce41:
fffff803`21e71491 488b03          mov     rax,qword ptr [rbx]
fffff803`21e71494 4885c0          test    rax,rax
fffff803`21e71497 75d5            jne     nt! ?? ::FNODOBFM::`string'+0x4ce1e (fffff803`21e7146e)

nt! ?? ::FNODOBFM::`string'+0x4ce49:
fffff803`21e71499 fa              cli
fffff803`21e7149a e904ade0ff      jmp     nt!ExInterlockedPushEntryList+0x30 (fffff803`21c7c1a3)
