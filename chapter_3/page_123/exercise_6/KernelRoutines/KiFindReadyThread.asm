nt!KiFindReadyThread:
fffff803`21cc0c5c 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21cc0c61 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`21cc0c66 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`21cc0c6b 57              push    rdi
fffff803`21cc0c6c 0fb7a958060000  movzx   ebp,word ptr [rcx+658h]
fffff803`21cc0c73 4c8bca          mov     r9,rdx
fffff803`21cc0c76 ba40000000      mov     edx,40h
fffff803`21cc0c7b 418bf0          mov     esi,r8d
fffff803`21cc0c7e 488bf9          mov     rdi,rcx
fffff803`21cc0c81 448d5ac1        lea     r11d,[rdx-3Fh]

nt!KiFindReadyThread+0x29:
fffff803`21cc0c85 0fbdde          bsr     ebx,esi
fffff803`21cc0c88 418bc3          mov     eax,r11d
fffff803`21cc0c8b 8bcb            mov     ecx,ebx
fffff803`21cc0c8d 448bc3          mov     r8d,ebx
fffff803`21cc0c90 895c2420        mov     dword ptr [rsp+20h],ebx
fffff803`21cc0c94 d3e0            shl     eax,cl
fffff803`21cc0c96 4981c010050000  add     r8,510h
fffff803`21cc0c9d 49c1e004        shl     r8,4
fffff803`21cc0ca1 33f0            xor     esi,eax
fffff803`21cc0ca3 4d03c1          add     r8,r9
fffff803`21cc0ca6 498b08          mov     rcx,qword ptr [r8]

nt!KiFindReadyThread+0x4d:
fffff803`21cc0ca9 4c8d9128ffffff  lea     r10,[rcx-0D8h]
fffff803`21cc0cb0 66413baa40020000 cmp     bp,word ptr [r10+240h]
fffff803`21cc0cb8 755f            jne     nt!KiFindReadyThread+0xbd (fffff803`21cc0d19)

nt!KiFindReadyThread+0x5e:
fffff803`21cc0cba 488b8760060000  mov     rax,qword ptr [rdi+660h]
fffff803`21cc0cc1 49858238020000  test    qword ptr [r10+238h],rax
fffff803`21cc0cc8 744f            je      nt!KiFindReadyThread+0xbd (fffff803`21cc0d19)

nt!KiFindReadyThread+0x6e:
fffff803`21cc0cca 4c8b01          mov     r8,qword ptr [rcx]
fffff803`21cc0ccd 488b5108        mov     rdx,qword ptr [rcx+8]
fffff803`21cc0cd1 49394808        cmp     qword ptr [r8+8],rcx
fffff803`21cc0cd5 7568            jne     nt!KiFindReadyThread+0xe3 (fffff803`21cc0d3f)

nt!KiFindReadyThread+0x7b:
fffff803`21cc0cd7 48390a          cmp     qword ptr [rdx],rcx
fffff803`21cc0cda 7563            jne     nt!KiFindReadyThread+0xe3 (fffff803`21cc0d3f)

nt!KiFindReadyThread+0x80:
fffff803`21cc0cdc 4c8902          mov     qword ptr [rdx],r8
fffff803`21cc0cdf 49895008        mov     qword ptr [r8+8],rdx
fffff803`21cc0ce3 493bd0          cmp     rdx,r8
fffff803`21cc0ce6 750c            jne     nt!KiFindReadyThread+0x98 (fffff803`21cc0cf4)

nt!KiFindReadyThread+0x8c:
fffff803`21cc0ce8 8bcb            mov     ecx,ebx
fffff803`21cc0cea 41d3e3          shl     r11d,cl
fffff803`21cc0ced 45319998500000  xor     dword ptr [r9+5098h],r11d

nt!KiFindReadyThread+0x98:
fffff803`21cc0cf4 412999a0500000  sub     dword ptr [r9+50A0h],ebx
fffff803`21cc0cfb 8b4f24          mov     ecx,dword ptr [rdi+24h]
fffff803`21cc0cfe 498bc2          mov     rax,r10
fffff803`21cc0d01 41898a18020000  mov     dword ptr [r10+218h],ecx

nt!KiFindReadyThread+0xac:
fffff803`21cc0d08 488b5c2410      mov     rbx,qword ptr [rsp+10h]
fffff803`21cc0d0d 488b6c2418      mov     rbp,qword ptr [rsp+18h]
fffff803`21cc0d12 488b742428      mov     rsi,qword ptr [rsp+28h]
fffff803`21cc0d17 5f              pop     rdi
fffff803`21cc0d18 c3              ret

nt!KiFindReadyThread+0xbd:
fffff803`21cc0d19 488b09          mov     rcx,qword ptr [rcx]
fffff803`21cc0d1c ffca            dec     edx
fffff803`21cc0d1e 493bc8          cmp     rcx,r8
fffff803`21cc0d21 7512            jne     nt!KiFindReadyThread+0xd9 (fffff803`21cc0d35)

nt!KiFindReadyThread+0xc7:
fffff803`21cc0d23 85f6            test    esi,esi
fffff803`21cc0d25 7504            jne     nt!KiFindReadyThread+0xcf (fffff803`21cc0d2b)

nt!KiFindReadyThread+0xcb:
fffff803`21cc0d27 33c0            xor     eax,eax
fffff803`21cc0d29 ebdd            jmp     nt!KiFindReadyThread+0xac (fffff803`21cc0d08)

nt!KiFindReadyThread+0xcf:
fffff803`21cc0d2b 85d2            test    edx,edx
fffff803`21cc0d2d 0f8552ffffff    jne     nt!KiFindReadyThread+0x29 (fffff803`21cc0c85)

nt!KiFindReadyThread+0xd7:
fffff803`21cc0d33 ebf2            jmp     nt!KiFindReadyThread+0xcb (fffff803`21cc0d27)

nt!KiFindReadyThread+0xd9:
fffff803`21cc0d35 85d2            test    edx,edx
fffff803`21cc0d37 0f856cffffff    jne     nt!KiFindReadyThread+0x4d (fffff803`21cc0ca9)

nt!KiFindReadyThread+0xe1:
fffff803`21cc0d3d ebe4            jmp     nt!KiFindReadyThread+0xc7 (fffff803`21cc0d23)

nt!KiFindReadyThread+0xe3:
fffff803`21cc0d3f b903000000      mov     ecx,3
fffff803`21cc0d44 cd29            int     29h
fffff803`21cc0d46 90              nop
fffff803`21cc0d47 90              nop
fffff803`21cc0d48 90              nop
fffff803`21cc0d49 90              nop
fffff803`21cc0d4a 90              nop
fffff803`21cc0d4b 90              nop
fffff803`21cc0d4c 90              nop
fffff803`21cc0d4d 90              nop
fffff803`21cc0d4e 90              nop
fffff803`21cc0d4f 90              nop
fffff803`21cc0d50 483bca          cmp     rcx,rdx
fffff803`21cc0d53 0f83c1000000    jae     nt!MiMarkKernelStack+0xca (fffff803`21cc0e1a)

nt!MiMarkKernelStack+0x9:
fffff803`21cc0d59 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21cc0d5e 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`21cc0d63 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`21cc0d68 57              push    rdi
fffff803`21cc0d69 4156            push    r14
fffff803`21cc0d6b 4157            push    r15
fffff803`21cc0d6d 4883ec20        sub     rsp,20h
fffff803`21cc0d71 4d8bf8          mov     r15,r8
fffff803`21cc0d74 4c8bf2          mov     r14,rdx
fffff803`21cc0d77 488bf1          mov     rsi,rcx

nt!MiMarkKernelStack+0x2a:
fffff803`21cc0d7a 488b1e          mov     rbx,qword ptr [rsi]
fffff803`21cc0d7d 48b9ffffffff0f000000 mov rcx,0FFFFFFFFFh
fffff803`21cc0d87 488bc3          mov     rax,rbx
fffff803`21cc0d8a 48c1e80c        shr     rax,0Ch
fffff803`21cc0d8e 4823c1          and     rax,rcx
fffff803`21cc0d91 488d3c40        lea     rdi,[rax+rax*2]
fffff803`21cc0d95 48b80000000080050000 mov rax,58000000000h
fffff803`21cc0d9f 48c1e704        shl     rdi,4
fffff803`21cc0da3 482bf8          sub     rdi,rax
fffff803`21cc0da6 33ed            xor     ebp,ebp

nt!MiMarkKernelStack+0x58:
fffff803`21cc0da8 f00fba6f1000    lock bts dword ptr [rdi+10h],0
fffff803`21cc0dae 0f8238cb1900    jb      nt! ?? ::FNODOBFM::`string'+0x32e64 (fffff803`21e5d8ec)

nt!MiMarkKernelStack+0x64:
fffff803`21cc0db4 483b1e          cmp     rbx,qword ptr [rsi]
fffff803`21cc0db7 7569            jne     nt!MiMarkKernelStack+0xd2 (fffff803`21cc0e22)

nt!MiMarkKernelStack+0x69:
fffff803`21cc0db9 488b4728        mov     rax,qword ptr [rdi+28h]
fffff803`21cc0dbd 48814f20e0030000 or      qword ptr [rdi+20h],3E0h
fffff803`21cc0dc5 48b9ffffffffffff7fff mov rcx,0FF7FFFFFFFFFFFFFh
fffff803`21cc0dcf 4823c1          and     rax,rcx
fffff803`21cc0dd2 48b90000000000000001 mov rcx,100000000000000h
fffff803`21cc0ddc 4c893f          mov     qword ptr [rdi],r15
fffff803`21cc0ddf 480bc1          or      rax,rcx
fffff803`21cc0de2 48894728        mov     qword ptr [rdi+28h],rax
fffff803`21cc0de6 8a471b          mov     al,byte ptr [rdi+1Bh]
fffff803`21cc0de9 24fd            and     al,0FDh
fffff803`21cc0deb 0c05            or      al,5
fffff803`21cc0ded 88471b          mov     byte ptr [rdi+1Bh],al
fffff803`21cc0df0 f0836710fe      lock and dword ptr [rdi+10h],0FFFFFFFEh
fffff803`21cc0df5 4883c608        add     rsi,8

nt!MiMarkKernelStack+0xa9:
fffff803`21cc0df9 493bf6          cmp     rsi,r14
fffff803`21cc0dfc 0f8278ffffff    jb      nt!MiMarkKernelStack+0x2a (fffff803`21cc0d7a)

nt!MiMarkKernelStack+0xb2:
fffff803`21cc0e02 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21cc0e07 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`21cc0e0c 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`21cc0e11 4883c420        add     rsp,20h
fffff803`21cc0e15 415f            pop     r15
fffff803`21cc0e17 415e            pop     r14
fffff803`21cc0e19 5f              pop     rdi

nt!MiMarkKernelStack+0xca:
fffff803`21cc0e1a c3              ret

nt!MiMarkKernelStack+0xcb:
fffff803`21cc0e1b f390            pause
fffff803`21cc0e1d e9edca1900      jmp     nt! ?? ::FNODOBFM::`string'+0x32e87 (fffff803`21e5d90f)

nt!MiMarkKernelStack+0xd2:
fffff803`21cc0e22 f0836710fe      lock and dword ptr [rdi+10h],0FFFFFFFEh
fffff803`21cc0e27 ebd0            jmp     nt!MiMarkKernelStack+0xa9 (fffff803`21cc0df9)

nt! ?? ::FNODOBFM::`string'+0x32e64:
fffff803`21e5d8ec ffc5            inc     ebp
fffff803`21e5d8ee 852d58cb1600    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],ebp
fffff803`21e5d8f4 0f852135e6ff    jne     nt!MiMarkKernelStack+0xcb (fffff803`21cc0e1b)

nt! ?? ::FNODOBFM::`string'+0x32e72:
fffff803`21e5d8fa 8b0570c71600    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e5d900 a840            test    al,40h
fffff803`21e5d902 0f841335e6ff    je      nt!MiMarkKernelStack+0xcb (fffff803`21cc0e1b)

nt! ?? ::FNODOBFM::`string'+0x32e80:
fffff803`21e5d908 8bcd            mov     ecx,ebp
fffff803`21e5d90a e8b5daf7ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x32e87:
fffff803`21e5d90f 8b4710          mov     eax,dword ptr [rdi+10h]
fffff803`21e5d912 a801            test    al,1
fffff803`21e5d914 75d6            jne     nt! ?? ::FNODOBFM::`string'+0x32e64 (fffff803`21e5d8ec)

nt! ?? ::FNODOBFM::`string'+0x32e8e:
fffff803`21e5d916 e98d34e6ff      jmp     nt!MiMarkKernelStack+0x58 (fffff803`21cc0da8)
