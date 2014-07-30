nt!RtlpFreeAllAtom:
fffff803`d98be780 4c8bdc          mov     r11,rsp
fffff803`d98be783 49894b08        mov     qword ptr [r11+8],rcx
fffff803`d98be787 53              push    rbx
fffff803`d98be788 56              push    rsi
fffff803`d98be789 57              push    rdi
fffff803`d98be78a 4883ec40        sub     rsp,40h
fffff803`d98be78e 498d4308        lea     rax,[r11+8]
fffff803`d98be792 488bf2          mov     rsi,rdx
fffff803`d98be795 488d512a        lea     rdx,[rcx+2Ah]
fffff803`d98be799 498943d8        mov     qword ptr [r11-28h],rax
fffff803`d98be79d 498d4320        lea     rax,[r11+20h]
fffff803`d98be7a1 4d8d4b18        lea     r9,[r11+18h]
fffff803`d98be7a5 498943d0        mov     qword ptr [r11-30h],rax
fffff803`d98be7a9 498363c800      and     qword ptr [r11-38h],0
fffff803`d98be7ae 4533c0          xor     r8d,r8d
fffff803`d98be7b1 488bce          mov     rcx,rsi
fffff803`d98be7b4 e8c7d54000      call    nt!RtlpHashStringToAtom (fffff803`d9ccbd80)
fffff803`d98be7b9 85c0            test    eax,eax
fffff803`d98be7bb 7836            js      nt!RtlpFreeAllAtom+0x73 (fffff803`d98be7f3)

nt!RtlpFreeAllAtom+0x3d:
fffff803`d98be7bd 488b7c2460      mov     rdi,qword ptr [rsp+60h]
fffff803`d98be7c2 4885ff          test    rdi,rdi
fffff803`d98be7c5 742c            je      nt!RtlpFreeAllAtom+0x73 (fffff803`d98be7f3)

nt!RtlpFreeAllAtom+0x47:
fffff803`d98be7c7 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff803`d98be7cc 4885c9          test    rcx,rcx
fffff803`d98be7cf 7406            je      nt!RtlpFreeAllAtom+0x57 (fffff803`d98be7d7)

nt!RtlpFreeAllAtom+0x51:
fffff803`d98be7d1 488b07          mov     rax,qword ptr [rdi]
fffff803`d98be7d4 488901          mov     qword ptr [rcx],rax

nt!RtlpFreeAllAtom+0x57:
fffff803`d98be7d7 488d5f10        lea     rbx,[rdi+10h]

nt!RtlpFreeAllAtom+0x5b:
fffff803`d98be7db 48391b          cmp     qword ptr [rbx],rbx
fffff803`d98be7de 751b            jne     nt!RtlpFreeAllAtom+0x7b (fffff803`d98be7fb)

nt!RtlpFreeAllAtom+0x60:
fffff803`d98be7e0 488bd7          mov     rdx,rdi
fffff803`d98be7e3 488bce          mov     rcx,rsi
fffff803`d98be7e6 e88d3d3c00      call    nt!RtlpFreeHandleForAtom (fffff803`d9c82578)
fffff803`d98be7eb 488bcf          mov     rcx,rdi
fffff803`d98be7ee e8313d3c00      call    nt!RtlpFreeAtom (fffff803`d9c82524)

nt!RtlpFreeAllAtom+0x73:
fffff803`d98be7f3 4883c440        add     rsp,40h
fffff803`d98be7f7 5f              pop     rdi
fffff803`d98be7f8 5e              pop     rsi
fffff803`d98be7f9 5b              pop     rbx
fffff803`d98be7fa c3              ret

nt!RtlpFreeAllAtom+0x7b:
fffff803`d98be7fb 488b0b          mov     rcx,qword ptr [rbx]
fffff803`d98be7fe 488b01          mov     rax,qword ptr [rcx]
fffff803`d98be801 48395908        cmp     qword ptr [rcx+8],rbx
fffff803`d98be805 7514            jne     nt!RtlpFreeAllAtom+0x9b (fffff803`d98be81b)

nt!RtlpFreeAllAtom+0x87:
fffff803`d98be807 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d98be80b 750e            jne     nt!RtlpFreeAllAtom+0x9b (fffff803`d98be81b)

nt!RtlpFreeAllAtom+0x8d:
fffff803`d98be80d 488903          mov     qword ptr [rbx],rax
fffff803`d98be810 48895808        mov     qword ptr [rax+8],rbx
fffff803`d98be814 e80b3d3c00      call    nt!RtlpFreeAtom (fffff803`d9c82524)
fffff803`d98be819 ebc0            jmp     nt!RtlpFreeAllAtom+0x5b (fffff803`d98be7db)

nt!RtlpFreeAllAtom+0x9b:
fffff803`d98be81b b903000000      mov     ecx,3
fffff803`d98be820 cd29            int     29h
fffff803`d98be822 90              nop
fffff803`d98be823 90              nop
fffff803`d98be824 488b81d0020000  mov     rax,qword ptr [rcx+2D0h]
fffff803`d98be82b c3              ret
