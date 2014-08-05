0: kd> uf KiAddThreadToScbQueue
nt!KiAddThreadToScbQueue:
fffff803`d99b0cdc 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d99b0ce1 4889742410      mov     qword ptr [rsp+10h],rsi
fffff803`d99b0ce6 57              push    rdi
fffff803`d99b0ce7 4883ec20        sub     rsp,20h
fffff803`d99b0ceb 450fbe90c3000000 movsx   r10d,byte ptr [r8+0C3h]
fffff803`d99b0cf3 33f6            xor     esi,esi
fffff803`d99b0cf5 488bda          mov     rbx,rdx
fffff803`d99b0cf8 488bf9          mov     rdi,rcx
fffff803`d99b0cfb 4584c9          test    r9b,r9b
fffff803`d99b0cfe 7510            jne     nt!KiAddThreadToScbQueue+0x34 (fffff803`d99b0d10)

nt!KiAddThreadToScbQueue+0x24:
fffff803`d99b0d00 a12003000080f7ffff mov   eax,dword ptr [FFFFF78000000320h]
fffff803`d99b0d09 418980b4010000  mov     dword ptr [r8+1B4h],eax

nt!KiAddThreadToScbQueue+0x34:
fffff803`d99b0d10 4038742450      cmp     byte ptr [rsp+50h],sil
fffff803`d99b0d15 0f8590000000    jne     nt!KiAddThreadToScbQueue+0xcf (fffff803`d99b0dab)

nt!KiAddThreadToScbQueue+0x3f:
fffff803`d99b0d1b 498d88d8000000  lea     rcx,[r8+0D8h]
fffff803`d99b0d22 418bd2          mov     edx,r10d
fffff803`d99b0d25 4883c206        add     rdx,6
fffff803`d99b0d29 48c1e204        shl     rdx,4
fffff803`d99b0d2d 4803d3          add     rdx,rbx
fffff803`d99b0d30 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`d99b0d34 488911          mov     qword ptr [rcx],rdx
fffff803`d99b0d37 48894108        mov     qword ptr [rcx+8],rax
fffff803`d99b0d3b 483910          cmp     qword ptr [rax],rdx
fffff803`d99b0d3e 0f859c110b00    jne     nt! ?? ::FNODOBFM::`string'+0x17bf8 (fffff803`d9a61ee0)

nt!KiAddThreadToScbQueue+0x68:
fffff803`d99b0d44 488908          mov     qword ptr [rax],rcx
fffff803`d99b0d47 48894a08        mov     qword ptr [rdx+8],rcx

nt!KiAddThreadToScbQueue+0x6f:
fffff803`d99b0d4b 410fba68740f    bts     dword ptr [r8+74h],0Fh
fffff803`d99b0d51 448a4b58        mov     r9b,byte ptr [rbx+58h]
fffff803`d99b0d55 b801000000      mov     eax,1
fffff803`d99b0d5a 418bca          mov     ecx,r10d
fffff803`d99b0d5d 66d3e0          shl     ax,cl
fffff803`d99b0d60 6609435a        or      word ptr [rbx+5Ah],ax
fffff803`d99b0d64 440fb75b5a      movzx   r11d,word ptr [rbx+5Ah]
fffff803`d99b0d69 41f6c104        test    r9b,4
fffff803`d99b0d6d 752c            jne     nt!KiAddThreadToScbQueue+0xbf (fffff803`d99b0d9b)

nt!KiAddThreadToScbQueue+0x93:
fffff803`d99b0d6f 41f6c101        test    r9b,1
fffff803`d99b0d73 7567            jne     nt!KiAddThreadToScbQueue+0x100 (fffff803`d99b0ddc)

nt!KiAddThreadToScbQueue+0x99:
fffff803`d99b0d75 4180c901        or      r9b,1
fffff803`d99b0d79 4c8d97f0500000  lea     r10,[rdi+50F0h]
fffff803`d99b0d80 448ac6          mov     r8b,sil
fffff803`d99b0d83 44884b58        mov     byte ptr [rbx+58h],r9b
fffff803`d99b0d87 498b12          mov     rdx,qword ptr [r10]
fffff803`d99b0d8a 4885d2          test    rdx,rdx
fffff803`d99b0d8d 757b            jne     nt!KiAddThreadToScbQueue+0x12e (fffff803`d99b0e0a)

nt!KiAddThreadToScbQueue+0xb3:
fffff803`d99b0d8f 4c8d4b40        lea     r9,[rbx+40h]
fffff803`d99b0d93 498bca          mov     rcx,r10
fffff803`d99b0d96 e81dfeffff      call    nt!RtlRbInsertNodeEx (fffff803`d99b0bb8)

nt!KiAddThreadToScbQueue+0xbf:
fffff803`d99b0d9b 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d99b0da0 488b742438      mov     rsi,qword ptr [rsp+38h]
fffff803`d99b0da5 4883c420        add     rsp,20h
fffff803`d99b0da9 5f              pop     rdi
fffff803`d99b0daa c3              ret

nt!KiAddThreadToScbQueue+0xcf:
fffff803`d99b0dab 498d90d8000000  lea     rdx,[r8+0D8h]
fffff803`d99b0db2 418bca          mov     ecx,r10d
fffff803`d99b0db5 4883c106        add     rcx,6
fffff803`d99b0db9 48c1e104        shl     rcx,4
fffff803`d99b0dbd 4803cb          add     rcx,rbx
fffff803`d99b0dc0 488b01          mov     rax,qword ptr [rcx]
fffff803`d99b0dc3 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d99b0dc7 488902          mov     qword ptr [rdx],rax
fffff803`d99b0dca 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d99b0dce 7533            jne     nt!KiAddThreadToScbQueue+0x127 (fffff803`d99b0e03)

nt!KiAddThreadToScbQueue+0xf4:
fffff803`d99b0dd0 48895008        mov     qword ptr [rax+8],rdx
fffff803`d99b0dd4 488911          mov     qword ptr [rcx],rdx
fffff803`d99b0dd7 e96fffffff      jmp     nt!KiAddThreadToScbQueue+0x6f (fffff803`d99b0d4b)

nt!KiAddThreadToScbQueue+0x100:
fffff803`d99b0ddc 4c8d5340        lea     r10,[rbx+40h]
fffff803`d99b0de0 498bc2          mov     rax,r10
fffff803`d99b0de3 498b12          mov     rdx,qword ptr [r10]
fffff803`d99b0de6 4885d2          test    rdx,rdx
fffff803`d99b0de9 7532            jne     nt!KiAddThreadToScbQueue+0x141 (fffff803`d99b0e1d)

nt!KiAddThreadToScbQueue+0x10f:
fffff803`d99b0deb 498b5210        mov     rdx,qword ptr [r10+10h]

nt!KiAddThreadToScbQueue+0x113:
fffff803`d99b0def 4883e2fc        and     rdx,0FFFFFFFFFFFFFFFCh
fffff803`d99b0df3 0f853d110b00    jne     nt! ?? ::FNODOBFM::`string'+0x17c4e (fffff803`d9a61f36)

nt!KiAddThreadToScbQueue+0x11d:
fffff803`d99b0df9 4885d2          test    rdx,rdx
fffff803`d99b0dfc 749d            je      nt!KiAddThreadToScbQueue+0xbf (fffff803`d99b0d9b)

nt!KiAddThreadToScbQueue+0x122:
fffff803`d99b0dfe e949110b00      jmp     nt! ?? ::FNODOBFM::`string'+0x17c64 (fffff803`d9a61f4c)

nt!KiAddThreadToScbQueue+0x127:
fffff803`d99b0e03 b903000000      mov     ecx,3
fffff803`d99b0e08 cd29            int     29h

nt!KiAddThreadToScbQueue+0x12e:
fffff803`d99b0e0a 448b4b5c        mov     r9d,dword ptr [rbx+5Ch]
fffff803`d99b0e0e e9d4100b00      jmp     nt! ?? ::FNODOBFM::`string'+0x17bff (fffff803`d9a61ee7)

nt!KiAddThreadToScbQueue+0x137:
fffff803`d99b0e13 b801000000      mov     eax,1
fffff803`d99b0e18 e9ec100b00      jmp     nt! ?? ::FNODOBFM::`string'+0x17c21 (fffff803`d9a61f09)

nt!KiAddThreadToScbQueue+0x141:
fffff803`d99b0e1d 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`d99b0e21 e906110b00      jmp     nt! ?? ::FNODOBFM::`string'+0x17c44 (fffff803`d9a61f2c)

nt! ?? ::FNODOBFM::`string'+0x17bf8:
fffff803`d9a61ee0 b903000000      mov     ecx,3
fffff803`d9a61ee5 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x17bff:
fffff803`d9a61ee7 418bc1          mov     eax,r9d
fffff803`d9a61eea 2b421c          sub     eax,dword ptr [rdx+1Ch]
fffff803`d9a61eed 751a            jne     nt! ?? ::FNODOBFM::`string'+0x17c21 (fffff803`d9a61f09)

nt! ?? ::FNODOBFM::`string'+0x17c07:
fffff803`d9a61eef 664585db        test    r11w,r11w
fffff803`d9a61ef3 0f841aeff4ff    je      nt!KiAddThreadToScbQueue+0x137 (fffff803`d99b0e13)

nt! ?? ::FNODOBFM::`string'+0x17c11:
fffff803`d9a61ef9 410fb7c3        movzx   eax,r11w
fffff803`d9a61efd 0fbdc8          bsr     ecx,eax
fffff803`d9a61f00 0fb7421a        movzx   eax,word ptr [rdx+1Ah]
fffff803`d9a61f04 0fbdc0          bsr     eax,eax
fffff803`d9a61f07 2bc1            sub     eax,ecx

nt! ?? ::FNODOBFM::`string'+0x17c21:
fffff803`d9a61f09 85c0            test    eax,eax
fffff803`d9a61f0b 410f99c0        setns   r8b
fffff803`d9a61f0f 410fb6c0        movzx   eax,r8b
fffff803`d9a61f13 488b0cc2        mov     rcx,qword ptr [rdx+rax*8]
fffff803`d9a61f17 4885c9          test    rcx,rcx
fffff803`d9a61f1a 0f846feef4ff    je      nt!KiAddThreadToScbQueue+0xb3 (fffff803`d99b0d8f)

nt! ?? ::FNODOBFM::`string'+0x17c38:
fffff803`d9a61f20 488bd1          mov     rdx,rcx
fffff803`d9a61f23 ebc2            jmp     nt! ?? ::FNODOBFM::`string'+0x17bff (fffff803`d9a61ee7)

nt! ?? ::FNODOBFM::`string'+0x17c3d:
fffff803`d9a61f25 488bd0          mov     rdx,rax
fffff803`d9a61f28 488b4008        mov     rax,qword ptr [rax+8]

nt! ?? ::FNODOBFM::`string'+0x17c44:
fffff803`d9a61f2c 4885c0          test    rax,rax
fffff803`d9a61f2f 75f4            jne     nt! ?? ::FNODOBFM::`string'+0x17c3d (fffff803`d9a61f25)

nt! ?? ::FNODOBFM::`string'+0x17c49:
fffff803`d9a61f31 e9c3eef4ff      jmp     nt!KiAddThreadToScbQueue+0x11d (fffff803`d99b0df9)

nt! ?? ::FNODOBFM::`string'+0x17c4e:
fffff803`d9a61f36 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9a61f3a 0f84b9eef4ff    je      nt!KiAddThreadToScbQueue+0x11d (fffff803`d99b0df9)

nt! ?? ::FNODOBFM::`string'+0x17c58:
fffff803`d9a61f40 488bc2          mov     rax,rdx
fffff803`d9a61f43 488b5210        mov     rdx,qword ptr [rdx+10h]
fffff803`d9a61f47 e9a3eef4ff      jmp     nt!KiAddThreadToScbQueue+0x113 (fffff803`d99b0def)

nt! ?? ::FNODOBFM::`string'+0x17c64:
fffff803`d9a61f4c 448b435c        mov     r8d,dword ptr [rbx+5Ch]
fffff803`d9a61f50 442b421c        sub     r8d,dword ptr [rdx+1Ch]
fffff803`d9a61f54 7520            jne     nt! ?? ::FNODOBFM::`string'+0x17c8e (fffff803`d9a61f76)

nt! ?? ::FNODOBFM::`string'+0x17c6e:
fffff803`d9a61f56 664585db        test    r11w,r11w
fffff803`d9a61f5a 7414            je      nt! ?? ::FNODOBFM::`string'+0x17c88 (fffff803`d9a61f70)

nt! ?? ::FNODOBFM::`string'+0x17c74:
fffff803`d9a61f5c 410fb7c3        movzx   eax,r11w
fffff803`d9a61f60 0fbdc8          bsr     ecx,eax
fffff803`d9a61f63 0fb7421a        movzx   eax,word ptr [rdx+1Ah]
fffff803`d9a61f67 440fbdc0        bsr     r8d,eax
fffff803`d9a61f6b 442bc1          sub     r8d,ecx
fffff803`d9a61f6e eb06            jmp     nt! ?? ::FNODOBFM::`string'+0x17c8e (fffff803`d9a61f76)

nt! ?? ::FNODOBFM::`string'+0x17c88:
fffff803`d9a61f70 41b801000000    mov     r8d,1

nt! ?? ::FNODOBFM::`string'+0x17c8e:
fffff803`d9a61f76 4585c0          test    r8d,r8d
fffff803`d9a61f79 0f891ceef4ff    jns     nt!KiAddThreadToScbQueue+0xbf (fffff803`d99b0d9b)

nt! ?? ::FNODOBFM::`string'+0x17c97:
fffff803`d9a61f7f 4180e1fe        and     r9b,0FEh
fffff803`d9a61f83 488d8ff0500000  lea     rcx,[rdi+50F0h]
fffff803`d9a61f8a 498bd2          mov     rdx,r10
fffff803`d9a61f8d 44884b58        mov     byte ptr [rbx+58h],r9b
fffff803`d9a61f91 e876ecf4ff      call    nt!RtlRbRemoveNode (fffff803`d99b0c0c)
fffff803`d9a61f96 488bd3          mov     rdx,rbx
fffff803`d9a61f99 488bcf          mov     rcx,rdi
fffff803`d9a61f9c e8e35df4ff      call    nt!KiInsertSchedulingGroupQueue (fffff803`d99a7d84)
fffff803`d9a61fa1 90              nop
fffff803`d9a61fa2 e9f4edf4ff      jmp     nt!KiAddThreadToScbQueue+0xbf (fffff803`d99b0d9b)
