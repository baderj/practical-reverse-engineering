0: kd> uf KeInsertQueueDpc
nt!KeInsertQueueDpc:
fffff803`d992fc60 4889542410      mov     qword ptr [rsp+10h],rdx
fffff803`d992fc65 55              push    rbp
fffff803`d992fc66 56              push    rsi
fffff803`d992fc67 4154            push    r12
fffff803`d992fc69 4155            push    r13
fffff803`d992fc6b 4157            push    r15
fffff803`d992fc6d 4883ec50        sub     rsp,50h
fffff803`d992fc71 440fb74902      movzx   r9d,word ptr [rcx+2]
fffff803`d992fc76 4d8be8          mov     r13,r8
fffff803`d992fc79 4533c0          xor     r8d,r8d
fffff803`d992fc7c 4532ff          xor     r15b,r15b
fffff803`d992fc7f f705fbe32a0000000400 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],40000h
fffff803`d992fc89 488bf1          mov     rsi,rcx
fffff803`d992fc8c 4489442430      mov     dword ptr [rsp+30h],r8d
fffff803`d992fc91 458bd8          mov     r11d,r8d
fffff803`d992fc94 4489842498000000 mov     dword ptr [rsp+98h],r8d
fffff803`d992fc9c 0f85e4020000    jne     nt!KeInsertQueueDpc+0x323 (fffff803`d992ff86)

nt!KeInsertQueueDpc+0x42:
fffff803`d992fca2 4532e4          xor     r12b,r12b

nt!KeInsertQueueDpc+0x45:
fffff803`d992fca5 48899c2490000000 mov     qword ptr [rsp+90h],rbx
fffff803`d992fcad 440f20c0        mov     rax,cr8
fffff803`d992fcb1 4889442438      mov     qword ptr [rsp+38h],rax
fffff803`d992fcb6 b80f000000      mov     eax,0Fh
fffff803`d992fcbb 440f22c0        mov     cr8,rax
fffff803`d992fcbf 65488b2c2520000000 mov   rbp,qword ptr gs:[20h]
fffff803`d992fcc8 b880020000      mov     eax,280h
fffff803`d992fccd 66443bc8        cmp     r9w,ax
fffff803`d992fcd1 0f82d5010000    jb      nt!KeInsertQueueDpc+0x24b (fffff803`d992feac)

nt!KeInsertQueueDpc+0x77:
fffff803`d992fcd7 450fb7d1        movzx   r10d,r9w
fffff803`d992fcdb 442bd0          sub     r10d,eax
fffff803`d992fcde 488d059bef2a00  lea     rax,[nt!KiProcessorBlock (fffff803`d9bdec80)]
fffff803`d992fce5 4a8b1cd0        mov     rbx,qword ptr [rax+r10*8]
fffff803`d992fce9 4489942480000000 mov     dword ptr [rsp+80h],r10d
fffff803`d992fcf1 4885db          test    rbx,rbx
fffff803`d992fcf4 0f8496f11200    je      nt! ?? ::FNODOBFM::`string'+0x12c40 (fffff803`d9a5ee90)

nt!KeInsertQueueDpc+0x9a:
fffff803`d992fcfa 803918          cmp     byte ptr [rcx],18h
fffff803`d992fcfd 48897c2448      mov     qword ptr [rsp+48h],rdi
fffff803`d992fd02 4c89742440      mov     qword ptr [rsp+40h],r14
fffff803`d992fd07 0f8417020000    je      nt!KeInsertQueueDpc+0x2c2 (fffff803`d992ff24)

nt!KeInsertQueueDpc+0xad:
fffff803`d992fd0d 488dbb802d0000  lea     rdi,[rbx+2D80h]

nt!KeInsertQueueDpc+0xb4:
fffff803`d992fd14 f70566e32a0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d992fd1e 0f858ef11200    jne     nt! ?? ::FNODOBFM::`string'+0x12c62 (fffff803`d9a5eeb2)

nt!KeInsertQueueDpc+0xc4:
fffff803`d992fd24 f0480fba6f1000  lock bts qword ptr [rdi+10h],0
fffff803`d992fd2b 0f820c020000    jb      nt!KeInsertQueueDpc+0x2db (fffff803`d992ff3d)

nt!KeInsertQueueDpc+0xd1:
fffff803`d992fd31 33c0            xor     eax,eax
fffff803`d992fd33 f0480fb17e38    lock cmpxchg qword ptr [rsi+38h],rdi
fffff803`d992fd39 7543            jne     nt!KeInsertQueueDpc+0x11e (fffff803`d992fd7e)

nt!KeInsertQueueDpc+0xdb:
fffff803`d992fd3b ff4718          inc     dword ptr [rdi+18h]
fffff803`d992fd3e ff471c          inc     dword ptr [rdi+1Ch]
fffff803`d992fd41 48895628        mov     qword ptr [rsi+28h],rdx
fffff803`d992fd45 4c896e30        mov     qword ptr [rsi+30h],r13
fffff803`d992fd49 4584e4          test    r12b,r12b
fffff803`d992fd4c 0f856ff11200    jne     nt! ?? ::FNODOBFM::`string'+0x12c71 (fffff803`d9a5eec1)

nt!KeInsertQueueDpc+0xf2:
fffff803`d992fd52 807e0102        cmp     byte ptr [rsi+1],2
fffff803`d992fd56 41b701          mov     r15b,1
fffff803`d992fd59 488d4608        lea     rax,[rsi+8]
fffff803`d992fd5d 0f845e010000    je      nt!KeInsertQueueDpc+0x25f (fffff803`d992fec1)

nt!KeInsertQueueDpc+0x103:
fffff803`d992fd63 488b4f08        mov     rcx,qword ptr [rdi+8]
fffff803`d992fd67 488938          mov     qword ptr [rax],rdi
fffff803`d992fd6a 48894808        mov     qword ptr [rax+8],rcx
fffff803`d992fd6e 483939          cmp     qword ptr [rcx],rdi
fffff803`d992fd71 0f856bf11200    jne     nt! ?? ::FNODOBFM::`string'+0x12c92 (fffff803`d9a5eee2)

nt!KeInsertQueueDpc+0x117:
fffff803`d992fd77 488901          mov     qword ptr [rcx],rax
fffff803`d992fd7a 48894708        mov     qword ptr [rdi+8],rax

nt!KeInsertQueueDpc+0x11e:
fffff803`d992fd7e f705fce22a0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d992fd88 0f855bf11200    jne     nt! ?? ::FNODOBFM::`string'+0x12c99 (fffff803`d9a5eee9)

nt!KeInsertQueueDpc+0x12e:
fffff803`d992fd8e f04883671000    lock and qword ptr [rdi+10h],0

nt!KeInsertQueueDpc+0x134:
fffff803`d992fd94 4584ff          test    r15b,r15b
fffff803`d992fd97 0f8492000000    je      nt!KeInsertQueueDpc+0x1cf (fffff803`d992fe2f)

nt!KeInsertQueueDpc+0x13d:
fffff803`d992fd9d 4584e4          test    r12b,r12b
fffff803`d992fda0 0f856bf11200    jne     nt! ?? ::FNODOBFM::`string'+0x12cc1 (fffff803`d9a5ef11)

nt!KeInsertQueueDpc+0x146:
fffff803`d992fda6 488d83a02d0000  lea     rax,[rbx+2DA0h]
fffff803`d992fdad 483bf8          cmp     rdi,rax
fffff803`d992fdb0 0f8438010000    je      nt!KeInsertQueueDpc+0x28c (fffff803`d992feee)

nt!KeInsertQueueDpc+0x156:
fffff803`d992fdb6 8b4718          mov     eax,dword ptr [rdi+18h]
fffff803`d992fdb9 3b83c82d0000    cmp     eax,dword ptr [rbx+2DC8h]
fffff803`d992fdbf 7d13            jge     nt!KeInsertQueueDpc+0x174 (fffff803`d992fdd4)

nt!KeInsertQueueDpc+0x161:
fffff803`d992fdc1 483beb          cmp     rbp,rbx
fffff803`d992fdc4 0f8591000000    jne     nt!KeInsertQueueDpc+0x1fb (fffff803`d992fe5b)

nt!KeInsertQueueDpc+0x16a:
fffff803`d992fdca 807e0100        cmp     byte ptr [rsi+1],0
fffff803`d992fdce 0f848d010000    je      nt!KeInsertQueueDpc+0x2ff (fffff803`d992ff61)

nt!KeInsertQueueDpc+0x174:
fffff803`d992fdd4 ba02000000      mov     edx,2

nt!KeInsertQueueDpc+0x179:
fffff803`d992fdd9 41b82f000000    mov     r8d,2Fh
fffff803`d992fddf 483bdd          cmp     rbx,rbp
fffff803`d992fde2 750a            jne     nt!KeInsertQueueDpc+0x18e (fffff803`d992fdee)

nt!KeInsertQueueDpc+0x184:
fffff803`d992fde4 41b829000000    mov     r8d,29h
fffff803`d992fdea 6683ca20        or      dx,20h

nt!KeInsertQueueDpc+0x18e:
fffff803`d992fdee 0f0d8bdc2d0000  prefetchw [rbx+2DDCh]
fffff803`d992fdf5 0fb783dc2d0000  movzx   eax,word ptr [rbx+2DDCh]

nt!KeInsertQueueDpc+0x19c:
fffff803`d992fdfc 0fb7c8          movzx   ecx,ax
fffff803`d992fdff 660bca          or      cx,dx
fffff803`d992fe02 66f00fb18bdc2d0000 lock cmpxchg word ptr [rbx+2DDCh],cx
fffff803`d992fe0b 75ef            jne     nt!KeInsertQueueDpc+0x19c (fffff803`d992fdfc)

nt!KeInsertQueueDpc+0x1ad:
fffff803`d992fe0d 664485c0        test    ax,r8w
fffff803`d992fe11 751c            jne     nt!KeInsertQueueDpc+0x1cf (fffff803`d992fe2f)

nt!KeInsertQueueDpc+0x1b3:
fffff803`d992fe13 483bdd          cmp     rbx,rbp
fffff803`d992fe16 7566            jne     nt!KeInsertQueueDpc+0x21e (fffff803`d992fe7e)

nt!KeInsertQueueDpc+0x1b8:
fffff803`d992fe18 4885ed          test    rbp,rbp
fffff803`d992fe1b 0f844cf11200    je      nt! ?? ::FNODOBFM::`string'+0x12d1d (fffff803`d9a5ef6d)

nt!KeInsertQueueDpc+0x1c1:
fffff803`d992fe21 807d2000        cmp     byte ptr [rbp+20h],0
fffff803`d992fe25 0f84b6000000    je      nt!KeInsertQueueDpc+0x27f (fffff803`d992fee1)

nt!KeInsertQueueDpc+0x1cb:
fffff803`d992fe2b c6450601        mov     byte ptr [rbp+6],1

nt!KeInsertQueueDpc+0x1cf:
fffff803`d992fe2f 0fb64c2438      movzx   ecx,byte ptr [rsp+38h]
fffff803`d992fe34 440f22c1        mov     cr8,rcx
fffff803`d992fe38 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff803`d992fe3d 4c8b742440      mov     r14,qword ptr [rsp+40h]
fffff803`d992fe42 488b9c2490000000 mov     rbx,qword ptr [rsp+90h]
fffff803`d992fe4a 410fb6c7        movzx   eax,r15b
fffff803`d992fe4e 4883c450        add     rsp,50h
fffff803`d992fe52 415f            pop     r15
fffff803`d992fe54 415d            pop     r13
fffff803`d992fe56 415c            pop     r12
fffff803`d992fe58 5e              pop     rsi
fffff803`d992fe59 5d              pop     rbp
fffff803`d992fe5a c3              ret

nt!KeInsertQueueDpc+0x1fb:
fffff803`d992fe5b 0fb64601        movzx   eax,byte ptr [rsi+1]
fffff803`d992fe5f 3c03            cmp     al,3
fffff803`d992fe61 0f846dffffff    je      nt!KeInsertQueueDpc+0x174 (fffff803`d992fdd4)

nt!KeInsertQueueDpc+0x207:
fffff803`d992fe67 3c02            cmp     al,2
fffff803`d992fe69 0f8465ffffff    je      nt!KeInsertQueueDpc+0x174 (fffff803`d992fdd4)

nt!KeInsertQueueDpc+0x20f:
fffff803`d992fe6f b810000000      mov     eax,10h
fffff803`d992fe74 66f00983dc2d0000 lock or word ptr [rbx+2DDCh],ax
fffff803`d992fe7c ebb1            jmp     nt!KeInsertQueueDpc+0x1cf (fffff803`d992fe2f)

nt!KeInsertQueueDpc+0x21e:
fffff803`d992fe7e 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`d992fe82 483b4318        cmp     rax,qword ptr [rbx+18h]
fffff803`d992fe86 7506            jne     nt!KeInsertQueueDpc+0x22e (fffff803`d992fe8e)

nt!KeInsertQueueDpc+0x228:
fffff803`d992fe88 807b0700        cmp     byte ptr [rbx+7],0
fffff803`d992fe8c 74a1            je      nt!KeInsertQueueDpc+0x1cf (fffff803`d992fe2f)

nt!KeInsertQueueDpc+0x22e:
fffff803`d992fe8e b202            mov     dl,2
fffff803`d992fe90 418bca          mov     ecx,r10d
fffff803`d992fe93 ff151f452a00    call    qword ptr [nt!_imp_HalSendSoftwareInterrupt (fffff803`d9bd43b8)]
fffff803`d992fe99 654c8b1c2520000000 mov   r11,qword ptr gs:[20h]
fffff803`d992fea2 41ff8394580000  inc     dword ptr [r11+5894h]
fffff803`d992fea9 eb84            jmp     nt!KeInsertQueueDpc+0x1cf (fffff803`d992fe2f)

nt!KeInsertQueueDpc+0x24b:
fffff803`d992feac 448b5524        mov     r10d,dword ptr [rbp+24h]
fffff803`d992feb0 488bdd          mov     rbx,rbp
fffff803`d992feb3 4489942480000000 mov     dword ptr [rsp+80h],r10d
fffff803`d992febb e93afeffff      jmp     nt!KeInsertQueueDpc+0x9a (fffff803`d992fcfa)

nt!KeInsertQueueDpc+0x25f:
fffff803`d992fec1 488b0f          mov     rcx,qword ptr [rdi]
fffff803`d992fec4 48897808        mov     qword ptr [rax+8],rdi
fffff803`d992fec8 488908          mov     qword ptr [rax],rcx
fffff803`d992fecb 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`d992fecf 0f8506f01200    jne     nt! ?? ::FNODOBFM::`string'+0x12c8b (fffff803`d9a5eedb)

nt!KeInsertQueueDpc+0x273:
fffff803`d992fed5 48894108        mov     qword ptr [rcx+8],rax
fffff803`d992fed9 488907          mov     qword ptr [rdi],rax
fffff803`d992fedc e99dfeffff      jmp     nt!KeInsertQueueDpc+0x11e (fffff803`d992fd7e)

nt!KeInsertQueueDpc+0x27f:
fffff803`d992fee1 b102            mov     cl,2
fffff803`d992fee3 ff15e7442a00    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`d9bd43d0)]
fffff803`d992fee9 e941ffffff      jmp     nt!KeInsertQueueDpc+0x1cf (fffff803`d992fe2f)

nt!KeInsertQueueDpc+0x28c:
fffff803`d992feee ba02000000      mov     edx,2
fffff803`d992fef3 0f0d8bde2d0000  prefetchw [rbx+2DDEh]
fffff803`d992fefa 0fb783de2d0000  movzx   eax,word ptr [rbx+2DDEh]

nt!KeInsertQueueDpc+0x29f:
fffff803`d992ff01 0fb7c8          movzx   ecx,ax
fffff803`d992ff04 660bca          or      cx,dx
fffff803`d992ff07 66f00fb18bde2d0000 lock cmpxchg word ptr [rbx+2DDEh],cx
fffff803`d992ff10 75ef            jne     nt!KeInsertQueueDpc+0x29f (fffff803`d992ff01)

nt!KeInsertQueueDpc+0x2b0:
fffff803`d992ff12 a82f            test    al,2Fh
fffff803`d992ff14 0f8515ffffff    jne     nt!KeInsertQueueDpc+0x1cf (fffff803`d992fe2f)

nt!KeInsertQueueDpc+0x2b8:
fffff803`d992ff1a ba04000000      mov     edx,4
fffff803`d992ff1f e9b5feffff      jmp     nt!KeInsertQueueDpc+0x179 (fffff803`d992fdd9)

nt!KeInsertQueueDpc+0x2c2:
fffff803`d992ff24 443883d82d0000  cmp     byte ptr [rbx+2DD8h],r8b
fffff803`d992ff2b 0f84dcfdffff    je      nt!KeInsertQueueDpc+0xad (fffff803`d992fd0d)

nt!KeInsertQueueDpc+0x2cf:
fffff803`d992ff31 488dbba02d0000  lea     rdi,[rbx+2DA0h]
fffff803`d992ff38 e9d7fdffff      jmp     nt!KeInsertQueueDpc+0xb4 (fffff803`d992fd14)

nt!KeInsertQueueDpc+0x2db:
fffff803`d992ff3d 488d4f10        lea     rcx,[rdi+10h]
fffff803`d992ff41 e87a13f9ff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)

nt!KeInsertQueueDpc+0x2e4:
fffff803`d992ff46 448b942480000000 mov     r10d,dword ptr [rsp+80h]
fffff803`d992ff4e 488b942488000000 mov     rdx,qword ptr [rsp+88h]
fffff803`d992ff56 4533c0          xor     r8d,r8d
fffff803`d992ff59 458bd8          mov     r11d,r8d
fffff803`d992ff5c e9d0fdffff      jmp     nt!KeInsertQueueDpc+0xd1 (fffff803`d992fd31)

nt!KeInsertQueueDpc+0x2ff:
fffff803`d992ff61 8b83d02d0000    mov     eax,dword ptr [rbx+2DD0h]
fffff803`d992ff67 3983cc2d0000    cmp     dword ptr [rbx+2DCCh],eax
fffff803`d992ff6d 0f8261feffff    jb      nt!KeInsertQueueDpc+0x174 (fffff803`d992fdd4)

nt!KeInsertQueueDpc+0x311:
fffff803`d992ff73 b810000000      mov     eax,10h
fffff803`d992ff78 66f00983dc2d0000 lock or word ptr [rbx+2DDCh],ax
fffff803`d992ff80 e9aafeffff      jmp     nt!KeInsertQueueDpc+0x1cf (fffff803`d992fe2f)

nt!KeInsertQueueDpc+0x323:
fffff803`d992ff86 41b401          mov     r12b,1
fffff803`d992ff89 e917fdffff      jmp     nt!KeInsertQueueDpc+0x45 (fffff803`d992fca5)

nt! ?? ::FNODOBFM::`string'+0x12c40:
fffff803`d9a5ee90 8b0576f11700    mov     eax,dword ptr [nt!KeNumberProcessors (fffff803`d9bde00c)]
fffff803`d9a5ee96 4c8bc1          mov     r8,rcx
fffff803`d9a5ee99 450fb7c9        movzx   r9d,r9w
fffff803`d9a5ee9d ba03000000      mov     edx,3
fffff803`d9a5eea2 b9c7000000      mov     ecx,0C7h
fffff803`d9a5eea7 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a5eeac e88f15e8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a5eeb1 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x12c62:
fffff803`d9a5eeb2 488d4f10        lea     rcx,[rdi+10h]
fffff803`d9a5eeb6 e80516faff      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d9a5eebb 90              nop
fffff803`d9a5eebc e98510edff      jmp     nt!KeInsertQueueDpc+0x2e4 (fffff803`d992ff46)

nt! ?? ::FNODOBFM::`string'+0x12c71:
fffff803`d9a5eec1 448b5f18        mov     r11d,dword ptr [rdi+18h]
fffff803`d9a5eec5 448b471c        mov     r8d,dword ptr [rdi+1Ch]
fffff803`d9a5eec9 4489442430      mov     dword ptr [rsp+30h],r8d
fffff803`d9a5eece 44899c2498000000 mov     dword ptr [rsp+98h],r11d
fffff803`d9a5eed6 e9770eedff      jmp     nt!KeInsertQueueDpc+0xf2 (fffff803`d992fd52)

nt! ?? ::FNODOBFM::`string'+0x12c8b:
fffff803`d9a5eedb b903000000      mov     ecx,3
fffff803`d9a5eee0 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x12c92:
fffff803`d9a5eee2 b903000000      mov     ecx,3
fffff803`d9a5eee7 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x12c99:
fffff803`d9a5eee9 488b542478      mov     rdx,qword ptr [rsp+78h]
fffff803`d9a5eeee 488d4f10        lea     rcx,[rdi+10h]
fffff803`d9a5eef2 e8a515faff      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d9a5eef7 448b442430      mov     r8d,dword ptr [rsp+30h]
fffff803`d9a5eefc 448b9c2498000000 mov     r11d,dword ptr [rsp+98h]
fffff803`d9a5ef04 448b942480000000 mov     r10d,dword ptr [rsp+80h]
fffff803`d9a5ef0c e9830eedff      jmp     nt!KeInsertQueueDpc+0x134 (fffff803`d992fd94)

nt! ?? ::FNODOBFM::`string'+0x12cc1:
fffff803`d9a5ef11 488b0510f61700  mov     rax,qword ptr [nt!KiWaitNever (fffff803`d9bde528)]
fffff803`d9a5ef18 4c8b1571f81700  mov     r10,qword ptr [nt!KiWaitAlways (fffff803`d9bde790)]
fffff803`d9a5ef1f 488b5618        mov     rdx,qword ptr [rsi+18h]
fffff803`d9a5ef23 4c33d6          xor     r10,rsi
fffff803`d9a5ef26 8bc8            mov     ecx,eax
fffff803`d9a5ef28 458bc8          mov     r9d,r8d
fffff803`d9a5ef2b 490fca          bswap   r10
fffff803`d9a5ef2e 458bc3          mov     r8d,r11d
fffff803`d9a5ef31 4c33d2          xor     r10,rdx
fffff803`d9a5ef34 49d3ca          ror     r10,cl
fffff803`d9a5ef37 48b97772ddf3c7c6357e mov rcx,7E35C6C7F3DD7277h
fffff803`d9a5ef41 4c33d0          xor     r10,rax
fffff803`d9a5ef44 0fb64601        movzx   eax,byte ptr [rsi+1]
fffff803`d9a5ef48 88442428        mov     byte ptr [rsp+28h],al
fffff803`d9a5ef4c 8b842480000000  mov     eax,dword ptr [rsp+80h]
fffff803`d9a5ef53 490fafca        imul    rcx,r10
fffff803`d9a5ef57 89442420        mov     dword ptr [rsp+20h],eax
fffff803`d9a5ef5b e8307bfeff      call    nt!EtwTraceDpcEnqueueEvent (fffff803`d9a46a90)
fffff803`d9a5ef60 448b942480000000 mov     r10d,dword ptr [rsp+80h]
fffff803`d9a5ef68 e9390eedff      jmp     nt!KeInsertQueueDpc+0x146 (fffff803`d992fda6)

nt! ?? ::FNODOBFM::`string'+0x12d1d:
fffff803`d9a5ef6d 65488b2c2520000000 mov   rbp,qword ptr gs:[20h]
fffff803`d9a5ef76 e9a60eedff      jmp     nt!KeInsertQueueDpc+0x1c1 (fffff803`d992fe21)
