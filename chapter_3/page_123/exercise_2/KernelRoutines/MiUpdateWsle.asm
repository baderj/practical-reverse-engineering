0: kd> uf MiUpdateWsle
nt!MiUpdateWsle:
fffff803`d9919b80 fff3            push    rbx
fffff803`d9919b82 55              push    rbp
fffff803`d9919b83 56              push    rsi
fffff803`d9919b84 57              push    rdi
fffff803`d9919b85 4154            push    r12
fffff803`d9919b87 4156            push    r14
fffff803`d9919b89 4157            push    r15
fffff803`d9919b8b 4883ec40        sub     rsp,40h
fffff803`d9919b8f 4d8b7068        mov     r14,qword ptr [r8+68h]
fffff803`d9919b93 488d05e6de2b00  lea     rax,[nt!MmSystemPtesWs (fffff803`d9bd7a80)]
fffff803`d9919b9a 498bf1          mov     rsi,r9
fffff803`d9919b9d 498be8          mov     rbp,r8
fffff803`d9919ba0 4c8be2          mov     r12,rdx
fffff803`d9919ba3 448bf9          mov     r15d,ecx
fffff803`d9919ba6 49b9ffffffff0f000000 mov r9,0FFFFFFFFFh
fffff803`d9919bb0 4c3bc0          cmp     r8,rax
fffff803`d9919bb3 0f8443080000    je      nt!MiUpdateWsle+0x881 (fffff803`d991a3fc)

nt!MiUpdateWsle+0x39:
fffff803`d9919bb9 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9919bc2 488bda          mov     rbx,rdx
fffff803`d9919bc5 ba02000000      mov     edx,2
fffff803`d9919bca 8bb82c040000    mov     edi,dword ptr [rax+42Ch]
fffff803`d9919bd0 488b8020020000  mov     rax,qword ptr [rax+220h]
fffff803`d9919bd7 4881e301f0ffff  and     rbx,0FFFFFFFFFFFFF001h
fffff803`d9919bde c1ef0c          shr     edi,0Ch
fffff803`d9919be1 4883cb01        or      rbx,1
fffff803`d9919be5 83e707          and     edi,7
fffff803`d9919be8 f780fc02000000001000 test dword ptr [rax+2FCh],100000h
fffff803`d9919bf2 0f85f5070000    jne     nt!MiUpdateWsle+0x872 (fffff803`d991a3ed)

nt!MiUpdateWsle+0x78:
fffff803`d9919bf8 0fb6461b        movzx   eax,byte ptr [rsi+1Bh]
fffff803`d9919bfc a808            test    al,8
fffff803`d9919bfe 0f8544090000    jne     nt!MiUpdateWsle+0x9c9 (fffff803`d991a548)

nt!MiUpdateWsle+0x84:
fffff803`d9919c04 0fb6c0          movzx   eax,al
fffff803`d9919c07 83e007          and     eax,7

nt!MiUpdateWsle+0x8a:
fffff803`d9919c0a 4533db          xor     r11d,r11d
fffff803`d9919c0d 4c89ac2480000000 mov     qword ptr [rsp+80h],r13
fffff803`d9919c15 3bc7            cmp     eax,edi
fffff803`d9919c17 0f8279070000    jb      nt!MiUpdateWsle+0x81c (fffff803`d991a396)

nt!MiUpdateWsle+0x9d:
fffff803`d9919c1d 83ff05          cmp     edi,5
fffff803`d9919c20 0f82e6030000    jb      nt!MiUpdateWsle+0x48c (fffff803`d991a00c)

nt!MiUpdateWsle+0xa6:
fffff803`d9919c26 488b4628        mov     rax,qword ptr [rsi+28h]
fffff803`d9919c2a 48c1e839        shr     rax,39h
fffff803`d9919c2e a801            test    al,1
fffff803`d9919c30 0f84b1020000    je      nt!MiUpdateWsle+0x367 (fffff803`d9919ee7)

nt!MiUpdateWsle+0xb6:
fffff803`d9919c36 48833e00        cmp     qword ptr [rsi],0
fffff803`d9919c3a 0f8416030000    je      nt!MiUpdateWsle+0x3d6 (fffff803`d9919f56)

nt!MiUpdateWsle+0xc0:
fffff803`d9919c40 418b4e24        mov     ecx,dword ptr [r14+24h]
fffff803`d9919c44 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff803`d9919c4b 480b9c24a0000000 or      rbx,qword ptr [rsp+0A0h]
fffff803`d9919c53 490fafcf        imul    rcx,r15
fffff803`d9919c57 48891c01        mov     qword ptr [rcx+rax],rbx
fffff803`d9919c5b 418b4624        mov     eax,dword ptr [r14+24h]
fffff803`d9919c5f 498b96b0000000  mov     rdx,qword ptr [r14+0B0h]
fffff803`d9919c66 8bc8            mov     ecx,eax
fffff803`d9919c68 4d8bef          mov     r13,r15
fffff803`d9919c6b 490fafcf        imul    rcx,r15
fffff803`d9919c6f 4803ca          add     rcx,rdx
fffff803`d9919c72 83f810          cmp     eax,10h
fffff803`d9919c75 0f8419d21400    je      nt! ?? ::FNODOBFM::`string'+0x1dcd2 (fffff803`d9a66e94)

nt!MiUpdateWsle+0xfb:
fffff803`d9919c7b 8b3e            mov     edi,dword ptr [rsi]
fffff803`d9919c7d 413bff          cmp     edi,r15d
fffff803`d9919c80 0f84a3020000    je      nt!MiUpdateWsle+0x3a9 (fffff803`d9919f29)

nt!MiUpdateWsle+0x106:
fffff803`d9919c86 413b7e10        cmp     edi,dword ptr [r14+10h]
fffff803`d9919c8a 0f87b3020000    ja      nt!MiUpdateWsle+0x3c3 (fffff803`d9919f43)

nt!MiUpdateWsle+0x110:
fffff803`d9919c90 413b7e04        cmp     edi,dword ptr [r14+4]
fffff803`d9919c94 0f82a9020000    jb      nt!MiUpdateWsle+0x3c3 (fffff803`d9919f43)

nt!MiUpdateWsle+0x11a:
fffff803`d9919c9a 418b4e24        mov     ecx,dword ptr [r14+24h]
fffff803`d9919c9e 498b96b0000000  mov     rdx,qword ptr [r14+0B0h]
fffff803`d9919ca5 8bc7            mov     eax,edi
fffff803`d9919ca7 448be7          mov     r12d,edi
fffff803`d9919caa 480fafc1        imul    rax,rcx
fffff803`d9919cae 4c8b0410        mov     r8,qword ptr [rax+rdx]
fffff803`d9919cb2 41f6c001        test    r8b,1
fffff803`d9919cb6 0f8474040000    je      nt!MiUpdateWsle+0x5b0 (fffff803`d991a130)

nt!MiUpdateWsle+0x13c:
fffff803`d9919cbc 488b7568        mov     rsi,qword ptr [rbp+68h]
fffff803`d9919cc0 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`d9919cca 48bb2800000080faffff mov rbx,0FFFFFA8000000028h
fffff803`d9919cd4 448b6e24        mov     r13d,dword ptr [rsi+24h]
fffff803`d9919cd8 49ba0000000080090000 mov r10,98000000000h
fffff803`d9919ce2 4d0fafec        imul    r13,r12
fffff803`d9919ce6 4c03aeb0000000  add     r13,qword ptr [rsi+0B0h]
fffff803`d9919ced 498b5500        mov     rdx,qword ptr [r13]
fffff803`d9919cf1 f6c204          test    dl,4
fffff803`d9919cf4 0f8497020000    je      nt!MiUpdateWsle+0x411 (fffff803`d9919f91)

nt!MiUpdateWsle+0x17a:
fffff803`d9919cfa 448b6624        mov     r12d,dword ptr [rsi+24h]
fffff803`d9919cfe 4d0fafe7        imul    r12,r15
fffff803`d9919d02 4c03a6b0000000  add     r12,qword ptr [rsi+0B0h]
fffff803`d9919d09 498b1424        mov     rdx,qword ptr [r12]
fffff803`d9919d0d f6c201          test    dl,1
fffff803`d9919d10 745c            je      nt!MiUpdateWsle+0x1ee (fffff803`d9919d6e)

nt!MiUpdateWsle+0x192:
fffff803`d9919d12 f6c204          test    dl,4
fffff803`d9919d15 7557            jne     nt!MiUpdateWsle+0x1ee (fffff803`d9919d6e)

nt!MiUpdateWsle+0x197:
fffff803`d9919d17 4c8bc2          mov     r8,rdx
fffff803`d9919d1a 49c1e809        shr     r8,9
fffff803`d9919d1e 4c23c1          and     r8,rcx
fffff803`d9919d21 4d2bc2          sub     r8,r10
fffff803`d9919d24 498b00          mov     rax,qword ptr [r8]
fffff803`d9919d27 a801            test    al,1
fffff803`d9919d29 0f84dcd11400    je      nt! ?? ::FNODOBFM::`string'+0x1dd49 (fffff803`d9a66f0b)

nt!MiUpdateWsle+0x1af:
fffff803`d9919d2f 48c1e80c        shr     rax,0Ch
fffff803`d9919d33 49b9ffffffff0f000000 mov r9,0FFFFFFFFFh
fffff803`d9919d3d 4923c1          and     rax,r9
fffff803`d9919d40 488d0c40        lea     rcx,[rax+rax*2]
fffff803`d9919d44 4803c9          add     rcx,rcx
fffff803`d9919d47 488b04cb        mov     rax,qword ptr [rbx+rcx*8]
fffff803`d9919d4b 48c1e839        shr     rax,39h
fffff803`d9919d4f a801            test    al,1
fffff803`d9919d51 7425            je      nt!MiUpdateWsle+0x1f8 (fffff803`d9919d78)

nt!MiUpdateWsle+0x1d3:
fffff803`d9919d53 f6c208          test    dl,8
fffff803`d9919d56 0f85cfd11400    jne     nt! ?? ::FNODOBFM::`string'+0x1dd69 (fffff803`d9a66f2b)

nt!MiUpdateWsle+0x1dc:
fffff803`d9919d5c 498b0c24        mov     rcx,qword ptr [r12]
fffff803`d9919d60 4533c9          xor     r9d,r9d
fffff803`d9919d63 4c8bc5          mov     r8,rbp
fffff803`d9919d66 418bd7          mov     edx,r15d
fffff803`d9919d69 e8e22c0000      call    nt!MiUpdateWsleHash (fffff803`d991ca50)

nt!MiUpdateWsle+0x1ee:
fffff803`d9919d6e 49b9ffffffff0f000000 mov r9,0FFFFFFFFFh

nt!MiUpdateWsle+0x1f8:
fffff803`d9919d78 498b0424        mov     rax,qword ptr [r12]
fffff803`d9919d7c 498b5d00        mov     rbx,qword ptr [r13]
fffff803`d9919d80 a801            test    al,1
fffff803`d9919d82 0f84b0d11400    je      nt! ?? ::FNODOBFM::`string'+0x1dd76 (fffff803`d9a66f38)

nt!MiUpdateWsle+0x208:
fffff803`d9919d88 837e2410        cmp     dword ptr [rsi+24h],10h
fffff803`d9919d8c 0f84eed11400    je      nt! ?? ::FNODOBFM::`string'+0x1ddbe (fffff803`d9a66f80)

nt!MiUpdateWsle+0x212:
fffff803`d9919d92 488b4d68        mov     rcx,qword ptr [rbp+68h]
fffff803`d9919d96 48ba0000000080090000 mov rdx,98000000000h
fffff803`d9919da0 4c8bd0          mov     r10,rax
fffff803`d9919da3 49c1ea09        shr     r10,9
fffff803`d9919da7 49bbf8ffffff7f000000 mov r11,7FFFFFFFF8h
fffff803`d9919db1 4d23d3          and     r10,r11
fffff803`d9919db4 4c2bd2          sub     r10,rdx
fffff803`d9919db7 8b5124          mov     edx,dword ptr [rcx+24h]
fffff803`d9919dba 488b89b0000000  mov     rcx,qword ptr [rcx+0B0h]
fffff803`d9919dc1 480fafd7        imul    rdx,rdi
fffff803`d9919dc5 4889040a        mov     qword ptr [rdx+rcx],rax
fffff803`d9919dc9 48ba0000000080faffff mov rdx,0FFFFFA8000000000h
fffff803`d9919dd3 a808            test    al,8
fffff803`d9919dd5 0f8522d21400    jne     nt! ?? ::FNODOBFM::`string'+0x1de3b (fffff803`d9a66ffd)

nt!MiUpdateWsle+0x25b:
fffff803`d9919ddb 488b4d68        mov     rcx,qword ptr [rbp+68h]
fffff803`d9919ddf a804            test    al,4
fffff803`d9919de1 741c            je      nt!MiUpdateWsle+0x27f (fffff803`d9919dff)

nt!MiUpdateWsle+0x263:
fffff803`d9919de3 4c8b4138        mov     r8,qword ptr [rcx+38h]
fffff803`d9919de7 4d85c0          test    r8,r8
fffff803`d9919dea 0f853d040000    jne     nt!MiUpdateWsle+0x6ad (fffff803`d991a22d)

nt!MiUpdateWsle+0x270:
fffff803`d9919df0 482b4130        sub     rax,qword ptr [rcx+30h]
fffff803`d9919df4 488b4940        mov     rcx,qword ptr [rcx+40h]
fffff803`d9919df8 48c1e80c        shr     rax,0Ch
fffff803`d9919dfc 893c81          mov     dword ptr [rcx+rax*4],edi

nt!MiUpdateWsle+0x27f:
fffff803`d9919dff 498b02          mov     rax,qword ptr [r10]
fffff803`d9919e02 8bd7            mov     edx,edi
fffff803`d9919e04 49b9000000000000f07f mov r9,7FF0000000000000h
fffff803`d9919e0e 0fbaea1f        bts     edx,1Fh
fffff803`d9919e12 448bc2          mov     r8d,edx
fffff803`d9919e15 4181e000000080  and     r8d,80000000h

nt!MiUpdateWsle+0x29c:
fffff803`d9919e1c 488bc8          mov     rcx,rax
fffff803`d9919e1f 4585c0          test    r8d,r8d
fffff803`d9919e22 0f8437d21400    je      nt! ?? ::FNODOBFM::`string'+0x1dea1 (fffff803`d9a6705f)

nt!MiUpdateWsle+0x2a8:
fffff803`d9919e28 8bca            mov     ecx,edx
fffff803`d9919e2a 48c1e134        shl     rcx,34h
fffff803`d9919e2e 4833c8          xor     rcx,rax
fffff803`d9919e31 4923c9          and     rcx,r9
fffff803`d9919e34 4833c8          xor     rcx,rax

nt!MiUpdateWsle+0x2b7:
fffff803`d9919e37 f0490fb10a      lock cmpxchg qword ptr [r10],rcx
fffff803`d9919e3c 75de            jne     nt!MiUpdateWsle+0x29c (fffff803`d9919e1c)

nt!MiUpdateWsle+0x2be:
fffff803`d9919e3e 488b4568        mov     rax,qword ptr [rbp+68h]
fffff803`d9919e42 48b90000000080090000 mov rcx,98000000000h
fffff803`d9919e4c 488bd3          mov     rdx,rbx
fffff803`d9919e4f 48c1ea09        shr     rdx,9
fffff803`d9919e53 4923d3          and     rdx,r11
fffff803`d9919e56 482bd1          sub     rdx,rcx
fffff803`d9919e59 8b4824          mov     ecx,dword ptr [rax+24h]
fffff803`d9919e5c 488b80b0000000  mov     rax,qword ptr [rax+0B0h]
fffff803`d9919e63 490fafcf        imul    rcx,r15
fffff803`d9919e67 48891c01        mov     qword ptr [rcx+rax],rbx
fffff803`d9919e6b f6c308          test    bl,8
fffff803`d9919e6e 0f8562010000    jne     nt!MiUpdateWsle+0x456 (fffff803`d9919fd6)

nt!MiUpdateWsle+0x2f4:
fffff803`d9919e74 488b4568        mov     rax,qword ptr [rbp+68h]
fffff803`d9919e78 f6c304          test    bl,4
fffff803`d9919e7b 741d            je      nt!MiUpdateWsle+0x31a (fffff803`d9919e9a)

nt!MiUpdateWsle+0x2fd:
fffff803`d9919e7d 4c8b4038        mov     r8,qword ptr [rax+38h]
fffff803`d9919e81 4d85c0          test    r8,r8
fffff803`d9919e84 0f8516040000    jne     nt!MiUpdateWsle+0x720 (fffff803`d991a2a0)

nt!MiUpdateWsle+0x30a:
fffff803`d9919e8a 482b5830        sub     rbx,qword ptr [rax+30h]
fffff803`d9919e8e 488b4040        mov     rax,qword ptr [rax+40h]
fffff803`d9919e92 48c1eb0c        shr     rbx,0Ch
fffff803`d9919e96 44893c98        mov     dword ptr [rax+rbx*4],r15d

nt!MiUpdateWsle+0x31a:
fffff803`d9919e9a 488b02          mov     rax,qword ptr [rdx]
fffff803`d9919e9d 410fbaef1f      bts     r15d,1Fh
fffff803`d9919ea2 458bc7          mov     r8d,r15d
fffff803`d9919ea5 4181e000000080  and     r8d,80000000h

nt!MiUpdateWsle+0x32c:
fffff803`d9919eac 488bc8          mov     rcx,rax
fffff803`d9919eaf 4585c0          test    r8d,r8d
fffff803`d9919eb2 0f8407d21400    je      nt! ?? ::FNODOBFM::`string'+0x1df05 (fffff803`d9a670bf)

nt!MiUpdateWsle+0x338:
fffff803`d9919eb8 418bcf          mov     ecx,r15d
fffff803`d9919ebb 48c1e134        shl     rcx,34h
fffff803`d9919ebf 4833c8          xor     rcx,rax
fffff803`d9919ec2 4923c9          and     rcx,r9
fffff803`d9919ec5 4833c8          xor     rcx,rax

nt!MiUpdateWsle+0x348:
fffff803`d9919ec8 f0480fb10a      lock cmpxchg qword ptr [rdx],rcx
fffff803`d9919ecd 75dd            jne     nt!MiUpdateWsle+0x32c (fffff803`d9919eac)

nt!MiUpdateWsle+0x34f:
fffff803`d9919ecf 837e2410        cmp     dword ptr [rsi+24h],10h
fffff803`d9919ed3 0f8403d21400    je      nt! ?? ::FNODOBFM::`string'+0x1df26 (fffff803`d9a670dc)

nt!MiUpdateWsle+0x359:
fffff803`d9919ed9 413b7e08        cmp     edi,dword ptr [r14+8]
fffff803`d9919edd 0f87a8040000    ja      nt!MiUpdateWsle+0x811 (fffff803`d991a38b)

nt!MiUpdateWsle+0x363:
fffff803`d9919ee3 8bc7            mov     eax,edi
fffff803`d9919ee5 eb45            jmp     nt!MiUpdateWsle+0x3ac (fffff803`d9919f2c)

nt!MiUpdateWsle+0x367:
fffff803`d9919ee7 480b9c24a0000000 or      rbx,qword ptr [rsp+0A0h]
fffff803`d9919eef 4c893e          mov     qword ptr [rsi],r15
fffff803`d9919ef2 ff454c          inc     dword ptr [rbp+4Ch]
fffff803`d9919ef5 418b4e24        mov     ecx,dword ptr [r14+24h]
fffff803`d9919ef9 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff803`d9919f00 4883cb08        or      rbx,8
fffff803`d9919f04 490fafcf        imul    rcx,r15
fffff803`d9919f08 48891c01        mov     qword ptr [rcx+rax],rbx
fffff803`d9919f0c 418b4624        mov     eax,dword ptr [r14+24h]
fffff803`d9919f10 8bc8            mov     ecx,eax
fffff803`d9919f12 490fafcf        imul    rcx,r15

nt!MiUpdateWsle+0x396:
fffff803`d9919f16 4d8b86b0000000  mov     r8,qword ptr [r14+0B0h]
fffff803`d9919f1d 4903c8          add     rcx,r8
fffff803`d9919f20 83f810          cmp     eax,10h
fffff803`d9919f23 0f8414cf1400    je      nt! ?? ::FNODOBFM::`string'+0x1dc7b (fffff803`d9a66e3d)

nt!MiUpdateWsle+0x3a9:
fffff803`d9919f29 418bc7          mov     eax,r15d

nt!MiUpdateWsle+0x3ac:
fffff803`d9919f2c 4c8bac2480000000 mov     r13,qword ptr [rsp+80h]
fffff803`d9919f34 4883c440        add     rsp,40h
fffff803`d9919f38 415f            pop     r15
fffff803`d9919f3a 415e            pop     r14
fffff803`d9919f3c 415c            pop     r12
fffff803`d9919f3e 5f              pop     rdi
fffff803`d9919f3f 5e              pop     rsi
fffff803`d9919f40 5d              pop     rbp
fffff803`d9919f41 5b              pop     rbx
fffff803`d9919f42 c3              ret

nt!MiUpdateWsle+0x3c3:
fffff803`d9919f43 4533c9          xor     r9d,r9d
fffff803`d9919f46 4c8bc5          mov     r8,rbp
fffff803`d9919f49 418bd7          mov     edx,r15d
fffff803`d9919f4c 498bcc          mov     rcx,r12
fffff803`d9919f4f e8fc2a0000      call    nt!MiUpdateWsleHash (fffff803`d991ca50)
fffff803`d9919f54 ebd3            jmp     nt!MiUpdateWsle+0x3a9 (fffff803`d9919f29)

nt!MiUpdateWsle+0x3d6:
fffff803`d9919f56 498bd7          mov     rdx,r15
fffff803`d9919f59 33c0            xor     eax,eax
fffff803`d9919f5b f0480fb116      lock cmpxchg qword ptr [rsi],rdx
fffff803`d9919f60 0f85dafcffff    jne     nt!MiUpdateWsle+0xc0 (fffff803`d9919c40)

nt!MiUpdateWsle+0x3e6:
fffff803`d9919f66 418b4e24        mov     ecx,dword ptr [r14+24h]
fffff803`d9919f6a 480b9c24a0000000 or      rbx,qword ptr [rsp+0A0h]
fffff803`d9919f72 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff803`d9919f79 480fafca        imul    rcx,rdx
fffff803`d9919f7d 4883cb08        or      rbx,8
fffff803`d9919f81 48891c01        mov     qword ptr [rcx+rax],rbx
fffff803`d9919f85 418b4624        mov     eax,dword ptr [r14+24h]
fffff803`d9919f89 8bc8            mov     ecx,eax
fffff803`d9919f8b 480fafca        imul    rcx,rdx
fffff803`d9919f8f eb85            jmp     nt!MiUpdateWsle+0x396 (fffff803`d9919f16)

nt!MiUpdateWsle+0x411:
fffff803`d9919f91 4c8bc2          mov     r8,rdx
fffff803`d9919f94 49c1e809        shr     r8,9
fffff803`d9919f98 4c23c1          and     r8,rcx
fffff803`d9919f9b 4d2bc2          sub     r8,r10
fffff803`d9919f9e 498b00          mov     rax,qword ptr [r8]
fffff803`d9919fa1 a801            test    al,1
fffff803`d9919fa3 0f8442cf1400    je      nt! ?? ::FNODOBFM::`string'+0x1dd29 (fffff803`d9a66eeb)

nt!MiUpdateWsle+0x429:
fffff803`d9919fa9 48c1e80c        shr     rax,0Ch
fffff803`d9919fad 4923c1          and     rax,r9
fffff803`d9919fb0 488d0c40        lea     rcx,[rax+rax*2]
fffff803`d9919fb4 4803c9          add     rcx,rcx
fffff803`d9919fb7 488b04cb        mov     rax,qword ptr [rbx+rcx*8]
fffff803`d9919fbb 48c1e839        shr     rax,39h
fffff803`d9919fbf a801            test    al,1
fffff803`d9919fc1 0f8592030000    jne     nt!MiUpdateWsle+0x7db (fffff803`d991a359)

nt!MiUpdateWsle+0x447:
fffff803`d9919fc7 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`d9919fd1 e924fdffff      jmp     nt!MiUpdateWsle+0x17a (fffff803`d9919cfa)

nt!MiUpdateWsle+0x456:
fffff803`d9919fd6 488b02          mov     rax,qword ptr [rdx]
fffff803`d9919fd9 a801            test    al,1
fffff803`d9919fdb 0f8499d01400    je      nt! ?? ::FNODOBFM::`string'+0x1dec0 (fffff803`d9a6707a)

nt!MiUpdateWsle+0x461:
fffff803`d9919fe1 48c1e80c        shr     rax,0Ch
fffff803`d9919fe5 48b9ffffffff0f000000 mov rcx,0FFFFFFFFFh
fffff803`d9919fef 4823c1          and     rax,rcx
fffff803`d9919ff2 488d0c40        lea     rcx,[rax+rax*2]
fffff803`d9919ff6 48b80000000080faffff mov rax,0FFFFFA8000000000h
fffff803`d991a000 4803c9          add     rcx,rcx
fffff803`d991a003 44893cc8        mov     dword ptr [rax+rcx*8],r15d
fffff803`d991a007 e98efeffff      jmp     nt!MiUpdateWsle+0x31a (fffff803`d9919e9a)

nt!MiUpdateWsle+0x48c:
fffff803`d991a00c ff4540          inc     dword ptr [rbp+40h]
fffff803`d991a00f 8b4540          mov     eax,dword ptr [rbp+40h]
fffff803`d991a012 4881cb000e0000  or      rbx,0E00h
fffff803`d991a019 483b05607f2300  cmp     rax,qword ptr [nt!MiWsData+0x40 (fffff803`d9b51f80)]
fffff803`d991a020 0f8200fcffff    jb      nt!MiUpdateWsle+0xa6 (fffff803`d9919c26)

nt!MiUpdateWsle+0x4a6:
fffff803`d991a026 488d7d18        lea     rdi,[rbp+18h]
fffff803`d991a02a 48393d2f892300  cmp     qword ptr [nt!MmWorkingSetExpansionHead (fffff803`d9b52960)],rdi
fffff803`d991a031 0f84effbffff    je      nt!MiUpdateWsle+0xa6 (fffff803`d9919c26)

nt!MiUpdateWsle+0x4b7:
fffff803`d991a037 48833f00        cmp     qword ptr [rdi],0
fffff803`d991a03b 0f84e5fbffff    je      nt!MiUpdateWsle+0xa6 (fffff803`d9919c26)

nt!MiUpdateWsle+0x4c1:
fffff803`d991a041 450f20c5        mov     r13,cr8
fffff803`d991a045 440f22c2        mov     cr8,rdx
fffff803`d991a049 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`d991a052 4c8b4118        mov     r8,qword ptr [rcx+18h]
fffff803`d991a056 4883c110        add     rcx,10h
fffff803`d991a05a f70520402c0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d991a064 0f85a2cd1400    jne     nt! ?? ::FNODOBFM::`string'+0x1dc4a (fffff803`d9a66e0c)

nt!MiUpdateWsle+0x4ea:
fffff803`d991a06a 488bd1          mov     rdx,rcx
fffff803`d991a06d 498710          xchg    rdx,qword ptr [r8]
fffff803`d991a070 4885d2          test    rdx,rdx
fffff803`d991a073 0f85fd030000    jne     nt!MiUpdateWsle+0x8f8 (fffff803`d991a476)

nt!MiUpdateWsle+0x4f9:
fffff803`d991a079 803df57e230000  cmp     byte ptr [nt!MiWsData+0x35 (fffff803`d9b51f75)],0
fffff803`d991a080 0f85d7030000    jne     nt!MiUpdateWsle+0x8e1 (fffff803`d991a45d)

nt!MiUpdateWsle+0x506:
fffff803`d991a086 48833f00        cmp     qword ptr [rdi],0
fffff803`d991a08a 0f84cd030000    je      nt!MiUpdateWsle+0x8e1 (fffff803`d991a45d)

nt!MiUpdateWsle+0x510:
fffff803`d991a090 488b0f          mov     rcx,qword ptr [rdi]
fffff803`d991a093 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`d991a097 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`d991a09b 0f8580cd1400    jne     nt! ?? ::FNODOBFM::`string'+0x1dc5f (fffff803`d9a66e21)

nt!MiUpdateWsle+0x521:
fffff803`d991a0a1 483938          cmp     qword ptr [rax],rdi
fffff803`d991a0a4 0f8577cd1400    jne     nt! ?? ::FNODOBFM::`string'+0x1dc5f (fffff803`d9a66e21)

nt!MiUpdateWsle+0x52a:
fffff803`d991a0aa 488908          mov     qword ptr [rax],rcx
fffff803`d991a0ad 48894108        mov     qword ptr [rcx+8],rax
fffff803`d991a0b1 488b05a8882300  mov     rax,qword ptr [nt!MmWorkingSetExpansionHead (fffff803`d9b52960)]
fffff803`d991a0b8 488d0da1882300  lea     rcx,[nt!MmWorkingSetExpansionHead (fffff803`d9b52960)]
fffff803`d991a0bf 488907          mov     qword ptr [rdi],rax
fffff803`d991a0c2 48894f08        mov     qword ptr [rdi+8],rcx
fffff803`d991a0c6 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d991a0ca 0f854acd1400    jne     nt! ?? ::FNODOBFM::`string'+0x1dc58 (fffff803`d9a66e1a)

nt!MiUpdateWsle+0x550:
fffff803`d991a0d0 48897808        mov     qword ptr [rax+8],rdi
fffff803`d991a0d4 48893d85882300  mov     qword ptr [nt!MmWorkingSetExpansionHead (fffff803`d9b52960)],rdi

nt!MiUpdateWsle+0x55b:
fffff803`d991a0db 65488b3c2528000000 mov   rdi,qword ptr gs:[28h]
fffff803`d991a0e4 4883c710        add     rdi,10h
fffff803`d991a0e8 f705923f2c0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d991a0f2 0f8530cd1400    jne     nt! ?? ::FNODOBFM::`string'+0x1dc66 (fffff803`d9a66e28)

nt!MiUpdateWsle+0x578:
fffff803`d991a0f8 0f0d0f          prefetchw [rdi]
fffff803`d991a0fb 488b07          mov     rax,qword ptr [rdi]
fffff803`d991a0fe 4885c0          test    rax,rax
fffff803`d991a101 0f8587030000    jne     nt!MiUpdateWsle+0x910 (fffff803`d991a48e)

nt!MiUpdateWsle+0x587:
fffff803`d991a107 488b4f08        mov     rcx,qword ptr [rdi+8]
fffff803`d991a10b 488bc7          mov     rax,rdi
fffff803`d991a10e f04c0fb119      lock cmpxchg qword ptr [rcx],r11
fffff803`d991a113 0f856a030000    jne     nt!MiUpdateWsle+0x905 (fffff803`d991a483)

nt!MiUpdateWsle+0x599:
fffff803`d991a119 410fb6c5        movzx   eax,r13b
fffff803`d991a11d 440f22c0        mov     cr8,rax
fffff803`d991a121 49b9ffffffff0f000000 mov r9,0FFFFFFFFFh
fffff803`d991a12b e9f6faffff      jmp     nt!MiUpdateWsle+0xa6 (fffff803`d9919c26)

nt!MiUpdateWsle+0x5b0:
fffff803`d991a130 4d8bd0          mov     r10,r8
fffff803`d991a133 49c1e820        shr     r8,20h
fffff803`d991a137 49d1ea          shr     r10,1
fffff803`d991a13a 410fbaf21f      btr     r10d,1Fh
fffff803`d991a13f 41393e          cmp     dword ptr [r14],edi
fffff803`d991a142 0f849c020000    je      nt!MiUpdateWsle+0x86a (fffff803`d991a3e4)

nt!MiUpdateWsle+0x5c8:
fffff803`d991a148 458bda          mov     r11d,r10d
fffff803`d991a14b 458bca          mov     r9d,r10d
fffff803`d991a14e 4c0fafd9        imul    r11,rcx
fffff803`d991a152 4c03da          add     r11,rdx
fffff803`d991a155 498b03          mov     rax,qword ptr [r11]
fffff803`d991a158 488bc8          mov     rcx,rax
fffff803`d991a15b 48c1e920        shr     rcx,20h
fffff803`d991a15f 483bcf          cmp     rcx,rdi
fffff803`d991a162 0f8526d01400    jne     nt! ?? ::FNODOBFM::`string'+0x1dfd8 (fffff803`d9a6718e)

nt!MiUpdateWsle+0x5e8:
fffff803`d991a168 498bd7          mov     rdx,r15
fffff803`d991a16b 8bc8            mov     ecx,eax
fffff803`d991a16d 48c1e220        shl     rdx,20h
fffff803`d991a171 480bd1          or      rdx,rcx
fffff803`d991a174 498913          mov     qword ptr [r11],rdx
fffff803`d991a177 4533db          xor     r11d,r11d

nt!MiUpdateWsle+0x5fa:
fffff803`d991a17a 418b4624        mov     eax,dword ptr [r14+24h]
fffff803`d991a17e 498b96b0000000  mov     rdx,qword ptr [r14+0B0h]
fffff803`d991a185 8bc8            mov     ecx,eax
fffff803`d991a187 490fafcd        imul    rcx,r13
fffff803`d991a18b 4803ca          add     rcx,rdx
fffff803`d991a18e 83f810          cmp     eax,10h
fffff803`d991a191 0f840fd01400    je      nt! ?? ::FNODOBFM::`string'+0x1dff0 (fffff803`d9a671a6)

nt!MiUpdateWsle+0x617:
fffff803`d991a197 418b4e24        mov     ecx,dword ptr [r14+24h]
fffff803`d991a19b 418bd2          mov     edx,r10d
fffff803`d991a19e 498bc0          mov     rax,r8
fffff803`d991a1a1 0fbaf21f        btr     edx,1Fh
fffff803`d991a1a5 48c1e01f        shl     rax,1Fh
fffff803`d991a1a9 4d8bc8          mov     r9,r8
fffff803`d991a1ac 490fafcd        imul    rcx,r13
fffff803`d991a1b0 480bd0          or      rdx,rax
fffff803`d991a1b3 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff803`d991a1ba 4803d2          add     rdx,rdx
fffff803`d991a1bd 48891401        mov     qword ptr [rcx+rax],rdx
fffff803`d991a1c1 4183f8ff        cmp     r8d,0FFFFFFFFh
fffff803`d991a1c5 7424            je      nt!MiUpdateWsle+0x66b (fffff803`d991a1eb)

nt!MiUpdateWsle+0x647:
fffff803`d991a1c7 418b5624        mov     edx,dword ptr [r14+24h]
fffff803`d991a1cb 4a8d047d00000000 lea     rax,[r15*2]
fffff803`d991a1d3 b9feffffff      mov     ecx,0FFFFFFFEh
fffff803`d991a1d8 490fafd1        imul    rdx,r9
fffff803`d991a1dc 490396b0000000  add     rdx,qword ptr [r14+0B0h]
fffff803`d991a1e3 3302            xor     eax,dword ptr [rdx]
fffff803`d991a1e5 4823c1          and     rax,rcx
fffff803`d991a1e8 483102          xor     qword ptr [rdx],rax

nt!MiUpdateWsle+0x66b:
fffff803`d991a1eb 418b4e24        mov     ecx,dword ptr [r14+24h]
fffff803`d991a1ef 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff803`d991a1f6 490fafcc        imul    rcx,r12
fffff803`d991a1fa 48891c01        mov     qword ptr [rcx+rax],rbx
fffff803`d991a1fe 418b4624        mov     eax,dword ptr [r14+24h]
fffff803`d991a202 498b96b0000000  mov     rdx,qword ptr [r14+0B0h]
fffff803`d991a209 8bc8            mov     ecx,eax
fffff803`d991a20b 490fafcc        imul    rcx,r12
fffff803`d991a20f 4803ca          add     rcx,rdx
fffff803`d991a212 83f810          cmp     eax,10h
fffff803`d991a215 0f84e5cf1400    je      nt! ?? ::FNODOBFM::`string'+0x1e04a (fffff803`d9a67200)

nt!MiUpdateWsle+0x69b:
fffff803`d991a21b 488b4d68        mov     rcx,qword ptr [rbp+68h]
fffff803`d991a21f f6c304          test    bl,4
fffff803`d991a222 0f84b1fcffff    je      nt!MiUpdateWsle+0x359 (fffff803`d9919ed9)

nt!MiUpdateWsle+0x6a8:
fffff803`d991a228 e92ad01400      jmp     nt! ?? ::FNODOBFM::`string'+0x1e0a1 (fffff803`d9a67257)

nt!MiUpdateWsle+0x6ad:
fffff803`d991a22d 41f6c001        test    r8b,1
fffff803`d991a231 0f85b9fbffff    jne     nt!MiUpdateWsle+0x270 (fffff803`d9919df0)

nt!MiUpdateWsle+0x6b7:
fffff803`d991a237 488bc8          mov     rcx,rax
fffff803`d991a23a 4881e101f0ffff  and     rcx,0FFFFFFFFFFFFF001h
fffff803`d991a241 4883c901        or      rcx,1
fffff803`d991a245 48898c2490000000 mov     qword ptr [rsp+90h],rcx
fffff803`d991a24d 48c1e90c        shr     rcx,0Ch
fffff803`d991a251 440fb6d9        movzx   r11d,cl
fffff803`d991a255 418bcb          mov     ecx,r11d
fffff803`d991a258 44899c2488000000 mov     dword ptr [rsp+88h],r11d
fffff803`d991a260 418bd3          mov     edx,r11d
fffff803`d991a263 4d63cb          movsxd  r9,r11d
fffff803`d991a266 4c8b9c2490000000 mov     r11,qword ptr [rsp+90h]
fffff803`d991a26e 4803c9          add     rcx,rcx
fffff803`d991a271 4d391cc8        cmp     qword ptr [r8+rcx*8],r11
fffff803`d991a275 448bda          mov     r11d,edx
fffff803`d991a278 0f85a0000000    jne     nt!MiUpdateWsle+0x7a0 (fffff803`d991a31e)

nt!MiUpdateWsle+0x6fe:
fffff803`d991a27e 83faff          cmp     edx,0FFFFFFFFh
fffff803`d991a281 0f84bacd1400    je      nt! ?? ::FNODOBFM::`string'+0x1de83 (fffff803`d9a67041)

nt!MiUpdateWsle+0x707:
fffff803`d991a287 8bc2            mov     eax,edx
fffff803`d991a289 49bbf8ffffff7f000000 mov r11,7FFFFFFFF8h
fffff803`d991a293 4803c0          add     rax,rax
fffff803`d991a296 41897cc008      mov     dword ptr [r8+rax*8+8],edi
fffff803`d991a29b e95ffbffff      jmp     nt!MiUpdateWsle+0x27f (fffff803`d9919dff)

nt!MiUpdateWsle+0x720:
fffff803`d991a2a0 41f6c001        test    r8b,1
fffff803`d991a2a4 0f85e0fbffff    jne     nt!MiUpdateWsle+0x30a (fffff803`d9919e8a)

nt!MiUpdateWsle+0x72a:
fffff803`d991a2aa 4c8bd3          mov     r10,rbx
fffff803`d991a2ad 4981e201f0ffff  and     r10,0FFFFFFFFFFFFF001h
fffff803`d991a2b4 4983ca01        or      r10,1
fffff803`d991a2b8 498bc2          mov     rax,r10
fffff803`d991a2bb 48c1e80c        shr     rax,0Ch
fffff803`d991a2bf 440fb6d8        movzx   r11d,al
fffff803`d991a2c3 418bc3          mov     eax,r11d
fffff803`d991a2c6 418bcb          mov     ecx,r11d
fffff803`d991a2c9 4d63cb          movsxd  r9,r11d
fffff803`d991a2cc 4803c0          add     rax,rax
fffff803`d991a2cf 4d3914c0        cmp     qword ptr [r8+rax*8],r10
fffff803`d991a2d3 7426            je      nt!MiUpdateWsle+0x77b (fffff803`d991a2fb)

nt!MiUpdateWsle+0x755:
fffff803`d991a2d5 ffc1            inc     ecx
fffff803`d991a2d7 49ffc1          inc     r9
fffff803`d991a2da 81f900010000    cmp     ecx,100h
fffff803`d991a2e0 0f836d010000    jae     nt!MiUpdateWsle+0x8d7 (fffff803`d991a453)

nt!MiUpdateWsle+0x766:
fffff803`d991a2e6 413bcb          cmp     ecx,r11d
fffff803`d991a2e9 0f84b2cd1400    je      nt! ?? ::FNODOBFM::`string'+0x1dee7 (fffff803`d9a670a1)

nt!MiUpdateWsle+0x76f:
fffff803`d991a2ef 498bc1          mov     rax,r9
fffff803`d991a2f2 4803c0          add     rax,rax
fffff803`d991a2f5 4d3914c0        cmp     qword ptr [r8+rax*8],r10
fffff803`d991a2f9 75da            jne     nt!MiUpdateWsle+0x755 (fffff803`d991a2d5)

nt!MiUpdateWsle+0x77b:
fffff803`d991a2fb 83f9ff          cmp     ecx,0FFFFFFFFh
fffff803`d991a2fe 0f849dcd1400    je      nt! ?? ::FNODOBFM::`string'+0x1dee7 (fffff803`d9a670a1)

nt!MiUpdateWsle+0x784:
fffff803`d991a304 8bc1            mov     eax,ecx
fffff803`d991a306 49b9000000000000f07f mov r9,7FF0000000000000h
fffff803`d991a310 4803c0          add     rax,rax
fffff803`d991a313 45897cc008      mov     dword ptr [r8+rax*8+8],r15d
fffff803`d991a318 e97dfbffff      jmp     nt!MiUpdateWsle+0x31a (fffff803`d9919e9a)

nt!MiUpdateWsle+0x7a0:
fffff803`d991a31e ffc2            inc     edx
fffff803`d991a320 49ffc1          inc     r9
fffff803`d991a323 81fa00010000    cmp     edx,100h
fffff803`d991a329 0f83ab000000    jae     nt!MiUpdateWsle+0x860 (fffff803`d991a3da)

nt!MiUpdateWsle+0x7b1:
fffff803`d991a32f 413bd3          cmp     edx,r11d
fffff803`d991a332 0f8409cd1400    je      nt! ?? ::FNODOBFM::`string'+0x1de83 (fffff803`d9a67041)

nt!MiUpdateWsle+0x7ba:
fffff803`d991a338 4c8b9c2490000000 mov     r11,qword ptr [rsp+90h]
fffff803`d991a340 498bc9          mov     rcx,r9
fffff803`d991a343 4803c9          add     rcx,rcx
fffff803`d991a346 4d391cc8        cmp     qword ptr [r8+rcx*8],r11
fffff803`d991a34a 448b9c2488000000 mov     r11d,dword ptr [rsp+88h]
fffff803`d991a352 75ca            jne     nt!MiUpdateWsle+0x7a0 (fffff803`d991a31e)

nt!MiUpdateWsle+0x7d6:
fffff803`d991a354 e925ffffff      jmp     nt!MiUpdateWsle+0x6fe (fffff803`d991a27e)

nt!MiUpdateWsle+0x7db:
fffff803`d991a359 f6c208          test    dl,8
fffff803`d991a35c 7572            jne     nt!MiUpdateWsle+0x856 (fffff803`d991a3d0)

nt!MiUpdateWsle+0x7e4:
fffff803`d991a35e 498b4d00        mov     rcx,qword ptr [r13]
fffff803`d991a362 4533c9          xor     r9d,r9d
fffff803`d991a365 4c8bc5          mov     r8,rbp
fffff803`d991a368 8bd7            mov     edx,edi
fffff803`d991a36a e8e1260000      call    nt!MiUpdateWsleHash (fffff803`d991ca50)
fffff803`d991a36f 4533db          xor     r11d,r11d
fffff803`d991a372 49ba0000000080090000 mov r10,98000000000h
fffff803`d991a37c 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`d991a386 e96ff9ffff      jmp     nt!MiUpdateWsle+0x17a (fffff803`d9919cfa)

nt!MiUpdateWsle+0x811:
fffff803`d991a38b 41897e08        mov     dword ptr [r14+8],edi
fffff803`d991a38f 8bc7            mov     eax,edi
fffff803`d991a391 e996fbffff      jmp     nt!MiUpdateWsle+0x3ac (fffff803`d9919f2c)

nt!MiUpdateWsle+0x81c:
fffff803`d991a396 450f20c5        mov     r13,cr8
fffff803`d991a39a 4c89ac2490000000 mov     qword ptr [rsp+90h],r13
fffff803`d991a3a2 440f22c2        mov     cr8,rdx
fffff803`d991a3a6 f00fba6e1000    lock bts dword ptr [rsi+10h],0
fffff803`d991a3ac 0f82a1010000    jb      nt!MiUpdateWsle+0x9d3 (fffff803`d991a553)

nt!MiUpdateWsle+0x838:
fffff803`d991a3b2 400fb6c7        movzx   eax,dil
fffff803`d991a3b6 32461b          xor     al,byte ptr [rsi+1Bh]
fffff803`d991a3b9 2407            and     al,7
fffff803`d991a3bb 30461b          xor     byte ptr [rsi+1Bh],al
fffff803`d991a3be f0836610fe      lock and dword ptr [rsi+10h],0FFFFFFFEh
fffff803`d991a3c3 410fb6c5        movzx   eax,r13b
fffff803`d991a3c7 440f22c0        mov     cr8,rax
fffff803`d991a3cb e94df8ffff      jmp     nt!MiUpdateWsle+0x9d (fffff803`d9919c1d)

nt!MiUpdateWsle+0x856:
fffff803`d991a3d0 4883e2f7        and     rdx,0FFFFFFFFFFFFFFF7h
fffff803`d991a3d4 49895500        mov     qword ptr [r13],rdx
fffff803`d991a3d8 eb84            jmp     nt!MiUpdateWsle+0x7e4 (fffff803`d991a35e)

nt!MiUpdateWsle+0x860:
fffff803`d991a3da 33d2            xor     edx,edx
fffff803`d991a3dc 4533c9          xor     r9d,r9d
fffff803`d991a3df e94bffffff      jmp     nt!MiUpdateWsle+0x7b1 (fffff803`d991a32f)

nt!MiUpdateWsle+0x86a:
fffff803`d991a3e4 45893e          mov     dword ptr [r14],r15d
fffff803`d991a3e7 e98efdffff      jmp     nt!MiUpdateWsle+0x5fa (fffff803`d991a17a)

nt!MiUpdateWsle+0x872:
fffff803`d991a3ed 3bfa            cmp     edi,edx
fffff803`d991a3ef 0f8203f8ffff    jb      nt!MiUpdateWsle+0x78 (fffff803`d9919bf8)

nt!MiUpdateWsle+0x87a:
fffff803`d991a3f5 8bfa            mov     edi,edx
fffff803`d991a3f7 e9fcf7ffff      jmp     nt!MiUpdateWsle+0x78 (fffff803`d9919bf8)

nt!MiUpdateWsle+0x881:
fffff803`d991a3fc 48b80000000080f8ffff mov rax,0FFFFF88000000000h
fffff803`d991a406 483bd0          cmp     rdx,rax
fffff803`d991a409 723c            jb      nt!MiUpdateWsle+0x8cc (fffff803`d991a447)

nt!MiUpdateWsle+0x890:
fffff803`d991a40b 488bc2          mov     rax,rdx
fffff803`d991a40e 48b900000040fbf6ffff mov rcx,0FFFFF6FB40000000h
fffff803`d991a418 48c1e812        shr     rax,12h
fffff803`d991a41c 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`d991a421 488b0c01        mov     rcx,qword ptr [rcx+rax]
fffff803`d991a425 48c1e90c        shr     rcx,0Ch
fffff803`d991a429 4923c9          and     rcx,r9
fffff803`d991a42c 488d0449        lea     rax,[rcx+rcx*2]
fffff803`d991a430 48b91e00000080faffff mov rcx,0FFFFFA800000001Eh
fffff803`d991a43a 4803c0          add     rax,rax
fffff803`d991a43d 0fb604c1        movzx   eax,byte ptr [rcx+rax*8]
fffff803`d991a441 24f0            and     al,0F0h
fffff803`d991a443 3cc0            cmp     al,0C0h
fffff803`d991a445 7423            je      nt!MiUpdateWsle+0x8ed (fffff803`d991a46a)

nt!MiUpdateWsle+0x8cc:
fffff803`d991a447 ff0567892300    inc     dword ptr [nt!MmSystemCodePage (fffff803`d9b52db4)]
fffff803`d991a44d e967f7ffff      jmp     nt!MiUpdateWsle+0x39 (fffff803`d9919bb9)

nt!MiUpdateWsle+0x8d7:
fffff803`d991a453 33c9            xor     ecx,ecx
fffff803`d991a455 4533c9          xor     r9d,r9d
fffff803`d991a458 e989feffff      jmp     nt!MiUpdateWsle+0x766 (fffff803`d991a2e6)

nt!MiUpdateWsle+0x8e1:
fffff803`d991a45d c605127b230001  mov     byte ptr [nt!MiWsData+0x36 (fffff803`d9b51f76)],1
fffff803`d991a464 e972fcffff      jmp     nt!MiUpdateWsle+0x55b (fffff803`d991a0db)

nt!MiUpdateWsle+0x8ed:
fffff803`d991a46a ff0548892300    inc     dword ptr [nt!MmSystemDriverPage (fffff803`d9b52db8)]
fffff803`d991a470 e944f7ffff      jmp     nt!MiUpdateWsle+0x39 (fffff803`d9919bb9)

nt!MiUpdateWsle+0x8f8:
fffff803`d991a476 e865fd0000      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)

nt!MiUpdateWsle+0x8fd:
fffff803`d991a47b 4533db          xor     r11d,r11d
fffff803`d991a47e e9f6fbffff      jmp     nt!MiUpdateWsle+0x4f9 (fffff803`d991a079)

nt!MiUpdateWsle+0x905:
fffff803`d991a483 488bcf          mov     rcx,rdi
fffff803`d991a486 e8e5a00200      call    nt!KxWaitForLockChainValid (fffff803`d9944570)
fffff803`d991a48b 4533db          xor     r11d,r11d

nt!MiUpdateWsle+0x910:
fffff803`d991a48e f04883700801    lock xor qword ptr [rax+8],1
fffff803`d991a494 4c891f          mov     qword ptr [rdi],r11
fffff803`d991a497 e97dfcffff      jmp     nt!MiUpdateWsle+0x599 (fffff803`d991a119)

nt!MiUpdateWsle+0x91e:
fffff803`d991a49c 428954c670      mov     dword ptr [rsi+r8*8+70h],edx

nt!MiUpdateWsle+0x923:
fffff803`d991a4a1 428954c674      mov     dword ptr [rsi+r8*8+74h],edx
fffff803`d991a4a6 42ff448650      inc     dword ptr [rsi+r8*4+50h]

nt!MiUpdateWsle+0x92d:
fffff803`d991a4ab 837e2410        cmp     dword ptr [rsi+24h],10h
fffff803`d991a4af 0f8524faffff    jne     nt!MiUpdateWsle+0x359 (fffff803`d9919ed9)

nt!MiUpdateWsle+0x937:
fffff803`d991a4b5 e977cc1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1df7b (fffff803`d9a67131)

nt!MiUpdateWsle+0x93c:
fffff803`d991a4ba 41f6c704        test    r15b,4
fffff803`d991a4be 0f8404faffff    je      nt!MiUpdateWsle+0x348 (fffff803`d9919ec8)

nt!MiUpdateWsle+0x946:
fffff803`d991a4c4 4883e1df        and     rcx,0FFFFFFFFFFFFFFDFh
fffff803`d991a4c8 e9fbf9ffff      jmp     nt!MiUpdateWsle+0x348 (fffff803`d9919ec8)

nt!MiUpdateWsle+0x94f:
fffff803`d991a4cd 44894cd674      mov     dword ptr [rsi+rdx*8+74h],r9d

nt!MiUpdateWsle+0x954:
fffff803`d991a4d2 ff4c9650        dec     dword ptr [rsi+rdx*4+50h]
fffff803`d991a4d6 49b9ffffffff0f000000 mov r9,0FFFFFFFFFh

nt!MiUpdateWsle+0x962:
fffff803`d991a4e0 837e2410        cmp     dword ptr [rsi+24h],10h
fffff803`d991a4e4 0f85a8f8ffff    jne     nt!MiUpdateWsle+0x212 (fffff803`d9919d92)

nt!MiUpdateWsle+0x96c:
fffff803`d991a4ea 4c8b96b0000000  mov     r10,qword ptr [rsi+0B0h]
fffff803`d991a4f1 498bcc          mov     rcx,r12
fffff803`d991a4f4 492bca          sub     rcx,r10
fffff803`d991a4f7 48c1f904        sar     rcx,4
fffff803`d991a4fb 3b4e04          cmp     ecx,dword ptr [rsi+4]
fffff803`d991a4fe 0f828ef8ffff    jb      nt!MiUpdateWsle+0x212 (fffff803`d9919d92)

nt!MiUpdateWsle+0x986:
fffff803`d991a504 458b442408      mov     r8d,dword ptr [r12+8]
fffff803`d991a509 418b1424        mov     edx,dword ptr [r12]
fffff803`d991a50d 458b4c240c      mov     r9d,dword ptr [r12+0Ch]
fffff803`d991a512 48c1ea09        shr     rdx,9
fffff803`d991a516 458bd8          mov     r11d,r8d
fffff803`d991a519 83e207          and     edx,7
fffff803`d991a51c 4d03db          add     r11,r11
fffff803`d991a51f 4183f9ff        cmp     r9d,0FFFFFFFFh
fffff803`d991a523 745b            je      nt!MiUpdateWsle+0xa00 (fffff803`d991a580)

nt!MiUpdateWsle+0x9a7:
fffff803`d991a525 418bc9          mov     ecx,r9d
fffff803`d991a528 4803c9          add     rcx,rcx
fffff803`d991a52b 458944ca08      mov     dword ptr [r10+rcx*8+8],r8d
fffff803`d991a530 e9a6ca1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1de19 (fffff803`d9a66fdb)

nt!MiUpdateWsle+0x9b7:
fffff803`d991a535 f6c204          test    dl,4
fffff803`d991a538 0f84f9f8ffff    je      nt!MiUpdateWsle+0x2b7 (fffff803`d9919e37)

nt!MiUpdateWsle+0x9c0:
fffff803`d991a53e 4883e1df        and     rcx,0FFFFFFFFFFFFFFDFh
fffff803`d991a542 e9f0f8ffff      jmp     nt!MiUpdateWsle+0x2b7 (fffff803`d9919e37)

nt!MiUpdateWsle+0x9c9:
fffff803`d991a548 b805000000      mov     eax,5
fffff803`d991a54d e9b8f6ffff      jmp     nt!MiUpdateWsle+0x8a (fffff803`d9919c0a)

nt!MiUpdateWsle+0x9d3:
fffff803`d991a553 458beb          mov     r13d,r11d
fffff803`d991a556 e95dc81400      jmp     nt! ?? ::FNODOBFM::`string'+0x1dbf6 (fffff803`d9a66db8)

nt!MiUpdateWsle+0x9db:
fffff803`d991a55b f390            pause
fffff803`d991a55d e97cc81400      jmp     nt! ?? ::FNODOBFM::`string'+0x1dc1c (fffff803`d9a66dde)

nt!MiUpdateWsle+0x9e2:
fffff803`d991a562 438954c670      mov     dword ptr [r14+r8*8+70h],edx
fffff803`d991a567 e919c91400      jmp     nt! ?? ::FNODOBFM::`string'+0x1dcc3 (fffff803`d9a66e85)

nt!MiUpdateWsle+0x9ec:
fffff803`d991a56c 458944d670      mov     dword ptr [r14+rdx*8+70h],r8d
fffff803`d991a571 e966c91400      jmp     nt! ?? ::FNODOBFM::`string'+0x1dd1a (fffff803`d9a66edc)

nt!MiUpdateWsle+0x9f6:
fffff803`d991a576 448944d670      mov     dword ptr [rsi+rdx*8+70h],r8d
fffff803`d991a57b e947ca1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1de05 (fffff803`d9a66fc7)

nt!MiUpdateWsle+0xa00:
fffff803`d991a580 448944d670      mov     dword ptr [rsi+rdx*8+70h],r8d
fffff803`d991a585 e951ca1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1de19 (fffff803`d9a66fdb)

nt!MiUpdateWsle+0xa0a:
fffff803`d991a58a 44894cd674      mov     dword ptr [rsi+rdx*8+74h],r9d
fffff803`d991a58f e956ca1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1de28 (fffff803`d9a66fea)

nt!MiUpdateWsle+0xa14:
fffff803`d991a594 428954c670      mov     dword ptr [rsi+r8*8+70h],edx
fffff803`d991a599 e9e1cb1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1dfc9 (fffff803`d9a6717f)

nt!MiUpdateWsle+0xa1e:
fffff803`d991a59e 47895cce70      mov     dword ptr [r14+r9*8+70h],r11d
fffff803`d991a5a3 e93dcc1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1e02f (fffff803`d9a671e5)

nt!MiUpdateWsle+0xa28:
fffff803`d991a5a8 438974ce74      mov     dword ptr [r14+r9*8+74h],esi
fffff803`d991a5ad e941cc1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1e03d (fffff803`d9a671f3)

nt!MiUpdateWsle+0xa32:
fffff803`d991a5b2 458944d670      mov     dword ptr [r14+rdx*8+70h],r8d
fffff803`d991a5b7 e98ccc1400      jmp     nt! ?? ::FNODOBFM::`string'+0x1e092 (fffff803`d9a67248)

nt! ?? ::FNODOBFM::`string'+0x1dbf6:
fffff803`d9a66db8 41ffc5          inc     r13d
fffff803`d9a66dbb 44852d8a761700  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],r13d
fffff803`d9a66dc2 0f859337ebff    jne     nt!MiUpdateWsle+0x9db (fffff803`d991a55b)

nt! ?? ::FNODOBFM::`string'+0x1dc06:
fffff803`d9a66dc8 8b05a2721700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a66dce a840            test    al,40h
fffff803`d9a66dd0 0f848537ebff    je      nt!MiUpdateWsle+0x9db (fffff803`d991a55b)

nt! ?? ::FNODOBFM::`string'+0x1dc14:
fffff803`d9a66dd6 418bcd          mov     ecx,r13d
fffff803`d9a66dd9 e8e685f8ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)

nt! ?? ::FNODOBFM::`string'+0x1dc1c:
fffff803`d9a66dde 8b4610          mov     eax,dword ptr [rsi+10h]
fffff803`d9a66de1 a801            test    al,1
fffff803`d9a66de3 75d3            jne     nt! ?? ::FNODOBFM::`string'+0x1dbf6 (fffff803`d9a66db8)

nt! ?? ::FNODOBFM::`string'+0x1dc23:
fffff803`d9a66de5 f00fba6e1000    lock bts dword ptr [rsi+10h],0
fffff803`d9a66deb 72cb            jb      nt! ?? ::FNODOBFM::`string'+0x1dbf6 (fffff803`d9a66db8)

nt! ?? ::FNODOBFM::`string'+0x1dc2b:
fffff803`d9a66ded 4c8bac2490000000 mov     r13,qword ptr [rsp+90h]
fffff803`d9a66df5 ba02000000      mov     edx,2
fffff803`d9a66dfa 4533db          xor     r11d,r11d
fffff803`d9a66dfd 49b9ffffffff0f000000 mov r9,0FFFFFFFFFh
fffff803`d9a66e07 e9a635ebff      jmp     nt!MiUpdateWsle+0x838 (fffff803`d991a3b2)

nt! ?? ::FNODOBFM::`string'+0x1dc4a:
fffff803`d9a66e0c 498bd0          mov     rdx,r8
fffff803`d9a66e0f e8dca8f9ff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9a66e14 90              nop
fffff803`d9a66e15 e96136ebff      jmp     nt!MiUpdateWsle+0x8fd (fffff803`d991a47b)

nt! ?? ::FNODOBFM::`string'+0x1dc58:
fffff803`d9a66e1a b903000000      mov     ecx,3
fffff803`d9a66e1f cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x1dc5f:
fffff803`d9a66e21 b903000000      mov     ecx,3
fffff803`d9a66e26 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x1dc66:
fffff803`d9a66e28 488b542478      mov     rdx,qword ptr [rsp+78h]
fffff803`d9a66e2d 488bcf          mov     rcx,rdi
fffff803`d9a66e30 e89ba7f9ff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a66e35 4533db          xor     r11d,r11d
fffff803`d9a66e38 e9dc32ebff      jmp     nt!MiUpdateWsle+0x599 (fffff803`d991a119)

nt! ?? ::FNODOBFM::`string'+0x1dc7b:
fffff803`d9a66e3d 488bd1          mov     rdx,rcx
fffff803`d9a66e40 492bd0          sub     rdx,r8
fffff803`d9a66e43 48c1fa04        sar     rdx,4
fffff803`d9a66e47 413b5604        cmp     edx,dword ptr [r14+4]
fffff803`d9a66e4b 0f82d830ebff    jb      nt!MiUpdateWsle+0x3a9 (fffff803`d9919f29)

nt! ?? ::FNODOBFM::`string'+0x1dc8f:
fffff803`d9a66e51 8b01            mov     eax,dword ptr [rcx]
fffff803`d9a66e53 48c1e809        shr     rax,9
fffff803`d9a66e57 83e007          and     eax,7
fffff803`d9a66e5a 448bc0          mov     r8d,eax
fffff803`d9a66e5d 418b44c674      mov     eax,dword ptr [r14+rax*8+74h]
fffff803`d9a66e62 c74108ffffffff  mov     dword ptr [rcx+8],0FFFFFFFFh
fffff803`d9a66e69 89410c          mov     dword ptr [rcx+0Ch],eax
fffff803`d9a66e6c 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d9a66e6f 0f84ed36ebff    je      nt!MiUpdateWsle+0x9e2 (fffff803`d991a562)

nt! ?? ::FNODOBFM::`string'+0x1dcb3:
fffff803`d9a66e75 8bc8            mov     ecx,eax
fffff803`d9a66e77 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff803`d9a66e7e 4803c9          add     rcx,rcx
fffff803`d9a66e81 8954c808        mov     dword ptr [rax+rcx*8+8],edx

nt! ?? ::FNODOBFM::`string'+0x1dcc3:
fffff803`d9a66e85 438954c674      mov     dword ptr [r14+r8*8+74h],edx
fffff803`d9a66e8a 43ff448650      inc     dword ptr [r14+r8*4+50h]
fffff803`d9a66e8f e99530ebff      jmp     nt!MiUpdateWsle+0x3a9 (fffff803`d9919f29)

nt! ?? ::FNODOBFM::`string'+0x1dcd2:
fffff803`d9a66e94 4c8bc1          mov     r8,rcx
fffff803`d9a66e97 4c2bc2          sub     r8,rdx
fffff803`d9a66e9a 49c1f804        sar     r8,4
fffff803`d9a66e9e 453b4604        cmp     r8d,dword ptr [r14+4]
fffff803`d9a66ea2 0f82d32debff    jb      nt!MiUpdateWsle+0xfb (fffff803`d9919c7b)

nt! ?? ::FNODOBFM::`string'+0x1dce6:
fffff803`d9a66ea8 8b01            mov     eax,dword ptr [rcx]
fffff803`d9a66eaa 48c1e809        shr     rax,9
fffff803`d9a66eae 83e007          and     eax,7
fffff803`d9a66eb1 8bd0            mov     edx,eax
fffff803`d9a66eb3 418b44c674      mov     eax,dword ptr [r14+rax*8+74h]
fffff803`d9a66eb8 c74108ffffffff  mov     dword ptr [rcx+8],0FFFFFFFFh
fffff803`d9a66ebf 89410c          mov     dword ptr [rcx+0Ch],eax
fffff803`d9a66ec2 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d9a66ec5 0f84a136ebff    je      nt!MiUpdateWsle+0x9ec (fffff803`d991a56c)

nt! ?? ::FNODOBFM::`string'+0x1dd09:
fffff803`d9a66ecb 8bc8            mov     ecx,eax
fffff803`d9a66ecd 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff803`d9a66ed4 4803c9          add     rcx,rcx
fffff803`d9a66ed7 448944c808      mov     dword ptr [rax+rcx*8+8],r8d

nt! ?? ::FNODOBFM::`string'+0x1dd1a:
fffff803`d9a66edc 458944d674      mov     dword ptr [r14+rdx*8+74h],r8d
fffff803`d9a66ee1 41ff449650      inc     dword ptr [r14+rdx*4+50h]
fffff803`d9a66ee6 e9902debff      jmp     nt!MiUpdateWsle+0xfb (fffff803`d9919c7b)

nt! ?? ::FNODOBFM::`string'+0x1dd29:
fffff803`d9a66eeb 49c1e019        shl     r8,19h
fffff803`d9a66eef 4c8bc8          mov     r9,rax
fffff803`d9a66ef2 ba40190600      mov     edx,61940h
fffff803`d9a66ef7 b91a000000      mov     ecx,1Ah
fffff803`d9a66efc 49c1f810        sar     r8,10h
fffff803`d9a66f00 4c895c2420      mov     qword ptr [rsp+20h],r11
fffff803`d9a66f05 e83695e7ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a66f0a cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1dd49:
fffff803`d9a66f0b 49c1e019        shl     r8,19h
fffff803`d9a66f0f 4c8bc8          mov     r9,rax
fffff803`d9a66f12 ba40190600      mov     edx,61940h
fffff803`d9a66f17 b91a000000      mov     ecx,1Ah
fffff803`d9a66f1c 49c1f810        sar     r8,10h
fffff803`d9a66f20 4c895c2420      mov     qword ptr [rsp+20h],r11
fffff803`d9a66f25 e81695e7ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a66f2a cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1dd69:
fffff803`d9a66f2b 4883e2f7        and     rdx,0FFFFFFFFFFFFFFF7h
fffff803`d9a66f2f 49891424        mov     qword ptr [r12],rdx
fffff803`d9a66f33 e9242eebff      jmp     nt!MiUpdateWsle+0x1dc (fffff803`d9919d5c)

nt! ?? ::FNODOBFM::`string'+0x1dd76:
fffff803`d9a66f38 418bd7          mov     edx,r15d
fffff803`d9a66f3b 488bcd          mov     rcx,rbp
fffff803`d9a66f3e e86ddaf3ff      call    nt!MiRemoveWsleFromFreeList (fffff803`d99a49b0)
fffff803`d9a66f43 498bd5          mov     rdx,r13
fffff803`d9a66f46 488bce          mov     rcx,rsi
fffff803`d9a66f49 e8c293f2ff      call    nt!MiRemoveEntryWsle (fffff803`d9990310)
fffff803`d9a66f4e 448bcf          mov     r9d,edi
fffff803`d9a66f51 458bc7          mov     r8d,r15d
fffff803`d9a66f54 488bd3          mov     rdx,rbx
fffff803`d9a66f57 488bcd          mov     rcx,rbp
fffff803`d9a66f5a e85d52f4ff      call    nt!MiExchangeWsle (fffff803`d99ac1bc)
fffff803`d9a66f5f 4533c0          xor     r8d,r8d
fffff803`d9a66f62 498bd4          mov     rdx,r12
fffff803`d9a66f65 488bce          mov     rcx,rsi
fffff803`d9a66f68 e86393f2ff      call    nt!MiInsertWsle (fffff803`d99902d0)
fffff803`d9a66f6d 4533c0          xor     r8d,r8d
fffff803`d9a66f70 488bd5          mov     rdx,rbp
fffff803`d9a66f73 8bcf            mov     ecx,edi
fffff803`d9a66f75 e8c6eceeff      call    nt!MiReleaseWsle (fffff803`d9955c40)
fffff803`d9a66f7a 90              nop
fffff803`d9a66f7b e9592febff      jmp     nt!MiUpdateWsle+0x359 (fffff803`d9919ed9)

nt! ?? ::FNODOBFM::`string'+0x1ddbe:
fffff803`d9a66f80 4c8b96b0000000  mov     r10,qword ptr [rsi+0B0h]
fffff803`d9a66f87 498bcd          mov     rcx,r13
fffff803`d9a66f8a 492bca          sub     rcx,r10
fffff803`d9a66f8d 48c1f904        sar     rcx,4
fffff803`d9a66f91 3b4e04          cmp     ecx,dword ptr [rsi+4]
fffff803`d9a66f94 0f824635ebff    jb      nt!MiUpdateWsle+0x962 (fffff803`d991a4e0)

nt! ?? ::FNODOBFM::`string'+0x1ddd8:
fffff803`d9a66f9a 458b4508        mov     r8d,dword ptr [r13+8]
fffff803`d9a66f9e 458b4d0c        mov     r9d,dword ptr [r13+0Ch]
fffff803`d9a66fa2 488bd3          mov     rdx,rbx
fffff803`d9a66fa5 48c1ea09        shr     rdx,9
fffff803`d9a66fa9 458bd8          mov     r11d,r8d
fffff803`d9a66fac 4d03db          add     r11,r11
fffff803`d9a66faf 83e207          and     edx,7
fffff803`d9a66fb2 4183f9ff        cmp     r9d,0FFFFFFFFh
fffff803`d9a66fb6 0f84ba35ebff    je      nt!MiUpdateWsle+0x9f6 (fffff803`d991a576)

nt! ?? ::FNODOBFM::`string'+0x1ddfa:
fffff803`d9a66fbc 418bc9          mov     ecx,r9d
fffff803`d9a66fbf 4803c9          add     rcx,rcx
fffff803`d9a66fc2 458944ca08      mov     dword ptr [r10+rcx*8+8],r8d

nt! ?? ::FNODOBFM::`string'+0x1de05:
fffff803`d9a66fc7 4183f8ff        cmp     r8d,0FFFFFFFFh
fffff803`d9a66fcb 0f84fc34ebff    je      nt!MiUpdateWsle+0x94f (fffff803`d991a4cd)

nt! ?? ::FNODOBFM::`string'+0x1de0f:
fffff803`d9a66fd1 47894cda0c      mov     dword ptr [r10+r11*8+0Ch],r9d
fffff803`d9a66fd6 e9f734ebff      jmp     nt!MiUpdateWsle+0x954 (fffff803`d991a4d2)

nt! ?? ::FNODOBFM::`string'+0x1de19:
fffff803`d9a66fdb 4183f8ff        cmp     r8d,0FFFFFFFFh
fffff803`d9a66fdf 0f84a535ebff    je      nt!MiUpdateWsle+0xa0a (fffff803`d991a58a)

nt! ?? ::FNODOBFM::`string'+0x1de23:
fffff803`d9a66fe5 47894cda0c      mov     dword ptr [r10+r11*8+0Ch],r9d

nt! ?? ::FNODOBFM::`string'+0x1de28:
fffff803`d9a66fea ff4c9650        dec     dword ptr [rsi+rdx*4+50h]
fffff803`d9a66fee 49b9ffffffff0f000000 mov r9,0FFFFFFFFFh
fffff803`d9a66ff8 e9952debff      jmp     nt!MiUpdateWsle+0x212 (fffff803`d9919d92)

nt! ?? ::FNODOBFM::`string'+0x1de3b:
fffff803`d9a66ffd 498b02          mov     rax,qword ptr [r10]
fffff803`d9a67000 a801            test    al,1
fffff803`d9a67002 7527            jne     nt! ?? ::FNODOBFM::`string'+0x1de6d (fffff803`d9a6702b)

nt! ?? ::FNODOBFM::`string'+0x1de46:
fffff803`d9a67004 49c1e219        shl     r10,19h
fffff803`d9a67008 4c8bc8          mov     r9,rax
fffff803`d9a6700b ba40190600      mov     edx,61940h
fffff803`d9a67010 49c1fa10        sar     r10,10h
fffff803`d9a67014 b91a000000      mov     ecx,1Ah
fffff803`d9a67019 48c744242000000000 mov   qword ptr [rsp+20h],0
fffff803`d9a67022 4d8bc2          mov     r8,r10
fffff803`d9a67025 e81694e7ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a6702a cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1de6d:
fffff803`d9a6702b 48c1e80c        shr     rax,0Ch
fffff803`d9a6702f 4923c1          and     rax,r9
fffff803`d9a67032 488d0c40        lea     rcx,[rax+rax*2]
fffff803`d9a67036 4803c9          add     rcx,rcx
fffff803`d9a67039 893cca          mov     dword ptr [rdx+rcx*8],edi
fffff803`d9a6703c e9be2debff      jmp     nt!MiUpdateWsle+0x27f (fffff803`d9919dff)

nt! ?? ::FNODOBFM::`string'+0x1de83:
fffff803`d9a67041 4d8bc7          mov     r8,r15
fffff803`d9a67044 4c8bc8          mov     r9,rax
fffff803`d9a67047 ba82120400      mov     edx,41282h
fffff803`d9a6704c 4c8bc5          mov     r8,rbp
fffff803`d9a6704f b91a000000      mov     ecx,1Ah
fffff803`d9a67054 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`d9a67059 e8e293e7ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a6705e cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1dea1:
fffff803`d9a6705f f6c201          test    dl,1
fffff803`d9a67062 7404            je      nt! ?? ::FNODOBFM::`string'+0x1deae (fffff803`d9a67068)

nt! ?? ::FNODOBFM::`string'+0x1deaa:
fffff803`d9a67064 4883c920        or      rcx,20h

nt! ?? ::FNODOBFM::`string'+0x1deae:
fffff803`d9a67068 f6c202          test    dl,2
fffff803`d9a6706b 0f84c434ebff    je      nt!MiUpdateWsle+0x9b7 (fffff803`d991a535)

nt! ?? ::FNODOBFM::`string'+0x1deb7:
fffff803`d9a67071 4883c942        or      rcx,42h
fffff803`d9a67075 e9bb34ebff      jmp     nt!MiUpdateWsle+0x9b7 (fffff803`d991a535)

nt! ?? ::FNODOBFM::`string'+0x1dec0:
fffff803`d9a6707a 48c1e219        shl     rdx,19h
fffff803`d9a6707e 4c8bc8          mov     r9,rax
fffff803`d9a67081 b91a000000      mov     ecx,1Ah
fffff803`d9a67086 48c1fa10        sar     rdx,10h
fffff803`d9a6708a 48c744242000000000 mov   qword ptr [rsp+20h],0
fffff803`d9a67093 4c8bc2          mov     r8,rdx
fffff803`d9a67096 ba40190600      mov     edx,61940h
fffff803`d9a6709b e8a093e7ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a670a0 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1dee7:
fffff803`d9a670a1 488bc7          mov     rax,rdi
fffff803`d9a670a4 4c8bcb          mov     r9,rbx
fffff803`d9a670a7 4c8bc5          mov     r8,rbp
fffff803`d9a670aa ba82120400      mov     edx,41282h
fffff803`d9a670af b91a000000      mov     ecx,1Ah
fffff803`d9a670b4 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a670b9 e88293e7ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a670be cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1df05:
fffff803`d9a670bf 41f6c701        test    r15b,1
fffff803`d9a670c3 7404            je      nt! ?? ::FNODOBFM::`string'+0x1df13 (fffff803`d9a670c9)

nt! ?? ::FNODOBFM::`string'+0x1df0f:
fffff803`d9a670c5 4883c920        or      rcx,20h

nt! ?? ::FNODOBFM::`string'+0x1df13:
fffff803`d9a670c9 41f6c702        test    r15b,2
fffff803`d9a670cd 0f84e733ebff    je      nt!MiUpdateWsle+0x93c (fffff803`d991a4ba)

nt! ?? ::FNODOBFM::`string'+0x1df1d:
fffff803`d9a670d3 4883c942        or      rcx,42h
fffff803`d9a670d7 e9de33ebff      jmp     nt!MiUpdateWsle+0x93c (fffff803`d991a4ba)

nt! ?? ::FNODOBFM::`string'+0x1df26:
fffff803`d9a670dc 498bd4          mov     rdx,r12
fffff803`d9a670df 482b96b0000000  sub     rdx,qword ptr [rsi+0B0h]
fffff803`d9a670e6 48c1fa04        sar     rdx,4
fffff803`d9a670ea 3b5604          cmp     edx,dword ptr [rsi+4]
fffff803`d9a670ed 0f82b833ebff    jb      nt!MiUpdateWsle+0x92d (fffff803`d991a4ab)

nt! ?? ::FNODOBFM::`string'+0x1df3d:
fffff803`d9a670f3 418b0424        mov     eax,dword ptr [r12]
fffff803`d9a670f7 48c1e809        shr     rax,9
fffff803`d9a670fb 83e007          and     eax,7
fffff803`d9a670fe 448bc0          mov     r8d,eax
fffff803`d9a67101 8b44c674        mov     eax,dword ptr [rsi+rax*8+74h]
fffff803`d9a67105 41c7442408ffffffff mov   dword ptr [r12+8],0FFFFFFFFh
fffff803`d9a6710e 418944240c      mov     dword ptr [r12+0Ch],eax
fffff803`d9a67113 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d9a67116 0f848033ebff    je      nt!MiUpdateWsle+0x91e (fffff803`d991a49c)

nt! ?? ::FNODOBFM::`string'+0x1df66:
fffff803`d9a6711c 8bc8            mov     ecx,eax
fffff803`d9a6711e 488b86b0000000  mov     rax,qword ptr [rsi+0B0h]
fffff803`d9a67125 4803c9          add     rcx,rcx
fffff803`d9a67128 8954c808        mov     dword ptr [rax+rcx*8+8],edx
fffff803`d9a6712c e97033ebff      jmp     nt!MiUpdateWsle+0x923 (fffff803`d991a4a1)

nt! ?? ::FNODOBFM::`string'+0x1df7b:
fffff803`d9a67131 498bd5          mov     rdx,r13
fffff803`d9a67134 482b96b0000000  sub     rdx,qword ptr [rsi+0B0h]
fffff803`d9a6713b 48c1fa04        sar     rdx,4
fffff803`d9a6713f 3b5604          cmp     edx,dword ptr [rsi+4]
fffff803`d9a67142 0f82912debff    jb      nt!MiUpdateWsle+0x359 (fffff803`d9919ed9)

nt! ?? ::FNODOBFM::`string'+0x1df92:
fffff803`d9a67148 418b4500        mov     eax,dword ptr [r13]
fffff803`d9a6714c 48c1e809        shr     rax,9
fffff803`d9a67150 83e007          and     eax,7
fffff803`d9a67153 448bc0          mov     r8d,eax
fffff803`d9a67156 8b44c674        mov     eax,dword ptr [rsi+rax*8+74h]
fffff803`d9a6715a 41c74508ffffffff mov     dword ptr [r13+8],0FFFFFFFFh
fffff803`d9a67162 4189450c        mov     dword ptr [r13+0Ch],eax
fffff803`d9a67166 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d9a67169 0f842534ebff    je      nt!MiUpdateWsle+0xa14 (fffff803`d991a594)

nt! ?? ::FNODOBFM::`string'+0x1dfb9:
fffff803`d9a6716f 8bc8            mov     ecx,eax
fffff803`d9a67171 488b86b0000000  mov     rax,qword ptr [rsi+0B0h]
fffff803`d9a67178 4803c9          add     rcx,rcx
fffff803`d9a6717b 8954c808        mov     dword ptr [rax+rcx*8+8],edx

nt! ?? ::FNODOBFM::`string'+0x1dfc9:
fffff803`d9a6717f 428954c674      mov     dword ptr [rsi+r8*8+74h],edx
fffff803`d9a67184 42ff448650      inc     dword ptr [rsi+r8*4+50h]
fffff803`d9a67189 e94b2debff      jmp     nt!MiUpdateWsle+0x359 (fffff803`d9919ed9)

nt! ?? ::FNODOBFM::`string'+0x1dfd8:
fffff803`d9a6718e 4d8bc6          mov     r8,r14
fffff803`d9a67191 ba05500000      mov     edx,5005h
fffff803`d9a67196 b91a000000      mov     ecx,1Ah
fffff803`d9a6719b 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff803`d9a671a0 e89b92e7ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a671a5 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1dff0:
fffff803`d9a671a6 488bc1          mov     rax,rcx
fffff803`d9a671a9 482bc2          sub     rax,rdx
fffff803`d9a671ac 48c1f804        sar     rax,4
fffff803`d9a671b0 413b4604        cmp     eax,dword ptr [r14+4]
fffff803`d9a671b4 0f82dd2febff    jb      nt!MiUpdateWsle+0x617 (fffff803`d991a197)

nt! ?? ::FNODOBFM::`string'+0x1e004:
fffff803`d9a671ba 448b09          mov     r9d,dword ptr [rcx]
fffff803`d9a671bd 8b710c          mov     esi,dword ptr [rcx+0Ch]
fffff803`d9a671c0 448b5908        mov     r11d,dword ptr [rcx+8]
fffff803`d9a671c4 49c1e909        shr     r9,9
fffff803`d9a671c8 418bcb          mov     ecx,r11d
fffff803`d9a671cb 4183e107        and     r9d,7
fffff803`d9a671cf 4803c9          add     rcx,rcx
fffff803`d9a671d2 83feff          cmp     esi,0FFFFFFFFh
fffff803`d9a671d5 0f84c333ebff    je      nt!MiUpdateWsle+0xa1e (fffff803`d991a59e)

nt! ?? ::FNODOBFM::`string'+0x1e025:
fffff803`d9a671db 8bc6            mov     eax,esi
fffff803`d9a671dd 4803c0          add     rax,rax
fffff803`d9a671e0 44895cc208      mov     dword ptr [rdx+rax*8+8],r11d

nt! ?? ::FNODOBFM::`string'+0x1e02f:
fffff803`d9a671e5 4183fbff        cmp     r11d,0FFFFFFFFh
fffff803`d9a671e9 0f84b933ebff    je      nt!MiUpdateWsle+0xa28 (fffff803`d991a5a8)

nt! ?? ::FNODOBFM::`string'+0x1e039:
fffff803`d9a671ef 8974ca0c        mov     dword ptr [rdx+rcx*8+0Ch],esi

nt! ?? ::FNODOBFM::`string'+0x1e03d:
fffff803`d9a671f3 43ff4c8e50      dec     dword ptr [r14+r9*4+50h]
fffff803`d9a671f8 4533db          xor     r11d,r11d
fffff803`d9a671fb e9972febff      jmp     nt!MiUpdateWsle+0x617 (fffff803`d991a197)

nt! ?? ::FNODOBFM::`string'+0x1e04a:
fffff803`d9a67200 4c8bc1          mov     r8,rcx
fffff803`d9a67203 4c2bc2          sub     r8,rdx
fffff803`d9a67206 49c1f804        sar     r8,4
fffff803`d9a6720a 453b4604        cmp     r8d,dword ptr [r14+4]
fffff803`d9a6720e 0f820730ebff    jb      nt!MiUpdateWsle+0x69b (fffff803`d991a21b)

nt! ?? ::FNODOBFM::`string'+0x1e05e:
fffff803`d9a67214 8b01            mov     eax,dword ptr [rcx]
fffff803`d9a67216 48c1e809        shr     rax,9
fffff803`d9a6721a 83e007          and     eax,7
fffff803`d9a6721d 8bd0            mov     edx,eax
fffff803`d9a6721f 418b44c674      mov     eax,dword ptr [r14+rax*8+74h]
fffff803`d9a67224 c74108ffffffff  mov     dword ptr [rcx+8],0FFFFFFFFh
fffff803`d9a6722b 89410c          mov     dword ptr [rcx+0Ch],eax
fffff803`d9a6722e 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d9a67231 0f847b33ebff    je      nt!MiUpdateWsle+0xa32 (fffff803`d991a5b2)

nt! ?? ::FNODOBFM::`string'+0x1e081:
fffff803`d9a67237 8bc8            mov     ecx,eax
fffff803`d9a67239 498b86b0000000  mov     rax,qword ptr [r14+0B0h]
fffff803`d9a67240 4803c9          add     rcx,rcx
fffff803`d9a67243 448944c808      mov     dword ptr [rax+rcx*8+8],r8d

nt! ?? ::FNODOBFM::`string'+0x1e092:
fffff803`d9a67248 458944d674      mov     dword ptr [r14+rdx*8+74h],r8d
fffff803`d9a6724d 41ff449650      inc     dword ptr [r14+rdx*4+50h]
fffff803`d9a67252 e9c42febff      jmp     nt!MiUpdateWsle+0x69b (fffff803`d991a21b)

nt! ?? ::FNODOBFM::`string'+0x1e0a1:
fffff803`d9a67257 4c8b4138        mov     r8,qword ptr [rcx+38h]
fffff803`d9a6725b 4d85c0          test    r8,r8
fffff803`d9a6725e 0f8484000000    je      nt! ?? ::FNODOBFM::`string'+0x1e146 (fffff803`d9a672e8)

nt! ?? ::FNODOBFM::`string'+0x1e0ae:
fffff803`d9a67264 41f6c001        test    r8b,1
fffff803`d9a67268 757e            jne     nt! ?? ::FNODOBFM::`string'+0x1e146 (fffff803`d9a672e8)

nt! ?? ::FNODOBFM::`string'+0x1e0b8:
fffff803`d9a6726a 488bd3          mov     rdx,rbx
fffff803`d9a6726d 4881e201f0ffff  and     rdx,0FFFFFFFFFFFFF001h
fffff803`d9a67274 4883ca01        or      rdx,1
fffff803`d9a67278 488bc2          mov     rax,rdx
fffff803`d9a6727b 48c1e80c        shr     rax,0Ch
fffff803`d9a6727f 440fb6d0        movzx   r10d,al
fffff803`d9a67283 418bc2          mov     eax,r10d
fffff803`d9a67286 418bca          mov     ecx,r10d
fffff803`d9a67289 4d63ca          movsxd  r9,r10d
fffff803`d9a6728c 4803c0          add     rax,rax
fffff803`d9a6728f 493914c0        cmp     qword ptr [r8+rax*8],rdx
fffff803`d9a67293 7424            je      nt! ?? ::FNODOBFM::`string'+0x1e113 (fffff803`d9a672b9)

nt! ?? ::FNODOBFM::`string'+0x1e0e7:
fffff803`d9a67295 ffc1            inc     ecx
fffff803`d9a67297 49ffc1          inc     r9
fffff803`d9a6729a 81f900010000    cmp     ecx,100h
fffff803`d9a672a0 7206            jb      nt! ?? ::FNODOBFM::`string'+0x1e0fe (fffff803`d9a672a8)

nt! ?? ::FNODOBFM::`string'+0x1e0f8:
fffff803`d9a672a2 418bcb          mov     ecx,r11d
fffff803`d9a672a5 4d8bcb          mov     r9,r11

nt! ?? ::FNODOBFM::`string'+0x1e0fe:
fffff803`d9a672a8 413bca          cmp     ecx,r10d
fffff803`d9a672ab 7420            je      nt! ?? ::FNODOBFM::`string'+0x1e12b (fffff803`d9a672cd)

nt! ?? ::FNODOBFM::`string'+0x1e107:
fffff803`d9a672ad 498bc1          mov     rax,r9
fffff803`d9a672b0 4803c0          add     rax,rax
fffff803`d9a672b3 493914c0        cmp     qword ptr [r8+rax*8],rdx
fffff803`d9a672b7 75dc            jne     nt! ?? ::FNODOBFM::`string'+0x1e0e7 (fffff803`d9a67295)

nt! ?? ::FNODOBFM::`string'+0x1e113:
fffff803`d9a672b9 83f9ff          cmp     ecx,0FFFFFFFFh
fffff803`d9a672bc 740f            je      nt! ?? ::FNODOBFM::`string'+0x1e12b (fffff803`d9a672cd)

nt! ?? ::FNODOBFM::`string'+0x1e11c:
fffff803`d9a672be 8bc1            mov     eax,ecx
fffff803`d9a672c0 4803c0          add     rax,rax
fffff803`d9a672c3 41897cc008      mov     dword ptr [r8+rax*8+8],edi
fffff803`d9a672c8 e90c2cebff      jmp     nt!MiUpdateWsle+0x359 (fffff803`d9919ed9)

nt! ?? ::FNODOBFM::`string'+0x1e12b:
fffff803`d9a672cd 4c8bcb          mov     r9,rbx
fffff803`d9a672d0 4c8bc5          mov     r8,rbp
fffff803`d9a672d3 ba82120400      mov     edx,41282h
fffff803`d9a672d8 b91a000000      mov     ecx,1Ah
fffff803`d9a672dd 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`d9a672e2 e85991e7ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a672e7 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1e146:
fffff803`d9a672e8 482b5930        sub     rbx,qword ptr [rcx+30h]
fffff803`d9a672ec 488b4940        mov     rcx,qword ptr [rcx+40h]
fffff803`d9a672f0 48c1eb0c        shr     rbx,0Ch
fffff803`d9a672f4 893c99          mov     dword ptr [rcx+rbx*4],edi
fffff803`d9a672f7 e9dd2bebff      jmp     nt!MiUpdateWsle+0x359 (fffff803`d9919ed9)
