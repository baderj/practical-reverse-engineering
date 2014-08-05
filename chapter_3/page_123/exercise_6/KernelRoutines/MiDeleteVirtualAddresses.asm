nt!MiDeleteVirtualAddresses:
fffff803`21cf6e00 4489442418      mov     dword ptr [rsp+18h],r8d
fffff803`21cf6e05 53              push    rbx
fffff803`21cf6e06 56              push    rsi
fffff803`21cf6e07 57              push    rdi
fffff803`21cf6e08 4154            push    r12
fffff803`21cf6e0a 4155            push    r13
fffff803`21cf6e0c 4881ec60010000  sub     rsp,160h
fffff803`21cf6e13 c784249400000014000000 mov dword ptr [rsp+94h],14h
fffff803`21cf6e1e 33f6            xor     esi,esi
fffff803`21cf6e20 488bd9          mov     rbx,rcx
fffff803`21cf6e23 89b42490000000  mov     dword ptr [rsp+90h],esi
fffff803`21cf6e2a 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21cf6e33 48c1eb09        shr     rbx,9
fffff803`21cf6e37 4c8ba0b8000000  mov     r12,qword ptr [rax+0B8h]
fffff803`21cf6e3e 48b80000000080090000 mov rax,98000000000h
fffff803`21cf6e48 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`21cf6e52 4823d9          and     rbx,rcx
fffff803`21cf6e55 488bfa          mov     rdi,rdx
fffff803`21cf6e58 458be8          mov     r13d,r8d
fffff803`21cf6e5b 48c1ef09        shr     rdi,9
fffff803`21cf6e5f 482bd8          sub     rbx,rax
fffff803`21cf6e62 4c89642438      mov     qword ptr [rsp+38h],r12
fffff803`21cf6e67 4823f9          and     rdi,rcx
fffff803`21cf6e6a 482bf8          sub     rdi,rax
fffff803`21cf6e6d 41f684246f05000001 test  byte ptr [r12+56Fh],1
fffff803`21cf6e76 498b842480030000 mov     rax,qword ptr [r12+380h]
fffff803`21cf6e7e 4889842480000000 mov     qword ptr [rsp+80h],rax
fffff803`21cf6e86 48897c2468      mov     qword ptr [rsp+68h],rdi
fffff803`21cf6e8b 0f8528080000    jne     nt!MiDeleteVirtualAddresses+0x8bc (fffff803`21cf76b9)

nt!MiDeleteVirtualAddresses+0x91:
fffff803`21cf6e91 8bc6            mov     eax,esi

nt!MiDeleteVirtualAddresses+0x93:
fffff803`21cf6e93 89842498010000  mov     dword ptr [rsp+198h],eax
fffff803`21cf6e9a 41f6c002        test    r8b,2
fffff803`21cf6e9e 741b            je      nt!MiDeleteVirtualAddresses+0xbb (fffff803`21cf6ebb)

nt!MiDeleteVirtualAddresses+0xa0:
fffff803`21cf6ea0 85c0            test    eax,eax
fffff803`21cf6ea2 7517            jne     nt!MiDeleteVirtualAddresses+0xbb (fffff803`21cf6ebb)

nt!MiDeleteVirtualAddresses+0xa4:
fffff803`21cf6ea4 393576ad2100    cmp     dword ptr [nt!MmAccessLogging (fffff803`21f11c20)],esi
fffff803`21cf6eaa 740f            je      nt!MiDeleteVirtualAddresses+0xbb (fffff803`21cf6ebb)

nt!MiDeleteVirtualAddresses+0xac:
fffff803`21cf6eac 498b842450050000 mov     rax,qword ptr [r12+550h]
fffff803`21cf6eb4 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`21cf6eb9 eb05            jmp     nt!MiDeleteVirtualAddresses+0xc0 (fffff803`21cf6ec0)

nt!MiDeleteVirtualAddresses+0xbb:
fffff803`21cf6ebb 4889742458      mov     qword ptr [rsp+58h],rsi

nt!MiDeleteVirtualAddresses+0xc0:
fffff803`21cf6ec0 4889742440      mov     qword ptr [rsp+40h],rsi
fffff803`21cf6ec5 483bdf          cmp     rbx,rdi
fffff803`21cf6ec8 0f8729020000    ja      nt!MiDeleteVirtualAddresses+0x2fb (fffff803`21cf70f7)

nt!MiDeleteVirtualAddresses+0xce:
fffff803`21cf6ece 4889ac2458010000 mov     qword ptr [rsp+158h],rbp
fffff803`21cf6ed6 4c89b42450010000 mov     qword ptr [rsp+150h],r14
fffff803`21cf6ede 4c89bc2448010000 mov     qword ptr [rsp+148h],r15

nt!MiDeleteVirtualAddresses+0xe6:
fffff803`21cf6ee6 4c8d8c24a8010000 lea     r9,[rsp+1A8h]
fffff803`21cf6eee 4c8d842490000000 lea     r8,[rsp+90h]
fffff803`21cf6ef6 488bd7          mov     rdx,rdi
fffff803`21cf6ef9 488bcb          mov     rcx,rbx
fffff803`21cf6efc 49be000000c004090000 mov r14,904C0000000h
fffff803`21cf6f06 e8d5430300      call    nt!MiGetNextPageTable (fffff803`21d2b2e0)
fffff803`21cf6f0b 488bf0          mov     rsi,rax
fffff803`21cf6f0e 4885c0          test    rax,rax
fffff803`21cf6f11 0f84c8010000    je      nt!MiDeleteVirtualAddresses+0x2e3 (fffff803`21cf70df)

nt!MiDeleteVirtualAddresses+0x117:
fffff803`21cf6f17 488be8          mov     rbp,rax
fffff803`21cf6f1a 4533c9          xor     r9d,r9d
fffff803`21cf6f1d 49baffffffff0f000000 mov r10,0FFFFFFFFFh
fffff803`21cf6f27 48c1e519        shl     rbp,19h
fffff803`21cf6f2b 418bd1          mov     edx,r9d
fffff803`21cf6f2e 450fb7f9        movzx   r15d,r9w
fffff803`21cf6f32 48c1fd10        sar     rbp,10h
fffff803`21cf6f36 4c894c2460      mov     qword ptr [rsp+60h],r9
fffff803`21cf6f3b 4889542470      mov     qword ptr [rsp+70h],rdx
fffff803`21cf6f40 488bc5          mov     rax,rbp
fffff803`21cf6f43 48c1e812        shr     rax,12h
fffff803`21cf6f47 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`21cf6f4c 492bc6          sub     rax,r14
fffff803`21cf6f4f 4c8bf6          mov     r14,rsi
fffff803`21cf6f52 488b08          mov     rcx,qword ptr [rax]
fffff803`21cf6f55 4981ceff0f0000  or      r14,0FFFh
fffff803`21cf6f5c 48c1e90c        shr     rcx,0Ch
fffff803`21cf6f60 4983ee07        sub     r14,7
fffff803`21cf6f64 4923ca          and     rcx,r10
fffff803`21cf6f67 4c8d0449        lea     r8,[rcx+rcx*2]
fffff803`21cf6f6b 48b90000000080050000 mov rcx,58000000000h
fffff803`21cf6f75 49c1e004        shl     r8,4
fffff803`21cf6f79 4c2bc1          sub     r8,rcx
fffff803`21cf6f7c 4c89442450      mov     qword ptr [rsp+50h],r8
fffff803`21cf6f81 418b4020        mov     eax,dword ptr [r8+20h]
fffff803`21cf6f85 48c1e80f        shr     rax,0Fh
fffff803`21cf6f89 25ff030000      and     eax,3FFh
fffff803`21cf6f8e 4c3bf7          cmp     r14,rdi
fffff803`21cf6f91 4c0f47f7        cmova   r14,rdi
fffff803`21cf6f95 4889442430      mov     qword ptr [rsp+30h],rax
fffff803`21cf6f9a 4c89742448      mov     qword ptr [rsp+48h],r14
fffff803`21cf6f9f 493bf6          cmp     rsi,r14
fffff803`21cf6fa2 0f87e4050000    ja      nt!MiDeleteVirtualAddresses+0x790 (fffff803`21cf758c)

nt!MiDeleteVirtualAddresses+0x1a8:
fffff803`21cf6fa8 0f1f0400        nop     dword ptr [rax+rax]

nt!MiDeleteVirtualAddresses+0x1b0:
fffff803`21cf6fac 488b1e          mov     rbx,qword ptr [rsi]
fffff803`21cf6faf 4885db          test    rbx,rbx
fffff803`21cf6fb2 0f854e010000    jne     nt!MiDeleteVirtualAddresses+0x30a (fffff803`21cf7106)

nt!MiDeleteVirtualAddresses+0x1bc:
fffff803`21cf6fb8 4883c608        add     rsi,8
fffff803`21cf6fbc 4881c500100000  add     rbp,1000h
fffff803`21cf6fc3 48b90000000080050000 mov rcx,58000000000h
fffff803`21cf6fcd 49baffffffff0f000000 mov r10,0FFFFFFFFFh
fffff803`21cf6fd7 493bf6          cmp     rsi,r14
fffff803`21cf6fda 76d0            jbe     nt!MiDeleteVirtualAddresses+0x1b0 (fffff803`21cf6fac)

nt!MiDeleteVirtualAddresses+0x1e0:
fffff803`21cf6fdc 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff803`21cf6fe1 664585ff        test    r15w,r15w
fffff803`21cf6fe5 7464            je      nt!MiDeleteVirtualAddresses+0x24f (fffff803`21cf704b)

nt!MiDeleteVirtualAddresses+0x1eb:
fffff803`21cf6fe7 418b4020        mov     eax,dword ptr [r8+20h]
fffff803`21cf6feb 410fb7cf        movzx   ecx,r15w
fffff803`21cf6fef 48c1e80f        shr     rax,0Fh
fffff803`21cf6ff3 8bd9            mov     ebx,ecx
fffff803`21cf6ff5 25ff030000      and     eax,3FFh
fffff803`21cf6ffa 483bc1          cmp     rax,rcx
fffff803`21cf6ffd 0f825eaa0a00    jb      nt! ?? ::FNODOBFM::`string'+0x36d3b (fffff803`21da1a61)

nt!MiDeleteVirtualAddresses+0x207:
fffff803`21cf7003 440f20c7        mov     rdi,cr8
fffff803`21cf7007 b802000000      mov     eax,2
fffff803`21cf700c 440f22c0        mov     cr8,rax
fffff803`21cf7010 f0410fba681000  lock bts dword ptr [r8+10h],0
fffff803`21cf7017 418bf1          mov     esi,r9d
fffff803`21cf701a 0f82a4060000    jb      nt!MiDeleteVirtualAddresses+0x8c6 (fffff803`21cf76c4)

nt!MiDeleteVirtualAddresses+0x224:
fffff803`21cf7020 498b4820        mov     rcx,qword ptr [r8+20h]
fffff803`21cf7024 48c1e30f        shl     rbx,0Fh
fffff803`21cf7028 488bc1          mov     rax,rcx
fffff803`21cf702b 482bc3          sub     rax,rbx
fffff803`21cf702e 4833c1          xor     rax,rcx
fffff803`21cf7031 250080ff01      and     eax,1FF8000h
fffff803`21cf7036 4833c1          xor     rax,rcx
fffff803`21cf7039 49894020        mov     qword ptr [r8+20h],rax
fffff803`21cf703d f041836010fe    lock and dword ptr [r8+10h],0FFFFFFFEh
fffff803`21cf7043 400fb6c7        movzx   eax,dil
fffff803`21cf7047 440f22c0        mov     cr8,rax

nt!MiDeleteVirtualAddresses+0x24f:
fffff803`21cf704b 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff803`21cf7050 4885db          test    rbx,rbx
fffff803`21cf7053 0f842e050000    je      nt!MiDeleteVirtualAddresses+0x78b (fffff803`21cf7587)

nt!MiDeleteVirtualAddresses+0x25d:
fffff803`21cf7059 8b8c2490000000  mov     ecx,dword ptr [rsp+90h]
fffff803`21cf7060 85c9            test    ecx,ecx
fffff803`21cf7062 0f8435060000    je      nt!MiDeleteVirtualAddresses+0x8a1 (fffff803`21cf769d)

nt!MiDeleteVirtualAddresses+0x26c:
fffff803`21cf7068 3b8c2494000000  cmp     ecx,dword ptr [rsp+94h]
fffff803`21cf706f 0f8319060000    jae     nt!MiDeleteVirtualAddresses+0x892 (fffff803`21cf768e)

nt!MiDeleteVirtualAddresses+0x279:
fffff803`21cf7075 4533c9          xor     r9d,r9d
fffff803`21cf7078 488d942498000000 lea     rdx,[rsp+98h]
fffff803`21cf7080 458d4101        lea     r8d,[r9+1]
fffff803`21cf7084 e8370d0000      call    nt!KeFlushMultipleRangeTb (fffff803`21cf7dc0)

nt!MiDeleteVirtualAddresses+0x28d:
fffff803`21cf7089 33f6            xor     esi,esi
fffff803`21cf708b 89b42490000000  mov     dword ptr [rsp+90h],esi

nt!MiDeleteVirtualAddresses+0x296:
fffff803`21cf7092 4c8b4c2440      mov     r9,qword ptr [rsp+40h]
fffff803`21cf7097 488b542470      mov     rdx,qword ptr [rsp+70h]
fffff803`21cf709c 4d8bc4          mov     r8,r12
fffff803`21cf709f 488bcb          mov     rcx,rbx
fffff803`21cf70a2 e849e70100      call    nt!MiDeletePteRun (fffff803`21d157f0)
fffff803`21cf70a7 488b7c2468      mov     rdi,qword ptr [rsp+68h]
fffff803`21cf70ac 4c8b442450      mov     r8,qword ptr [rsp+50h]

nt!MiDeleteVirtualAddresses+0x2b5:
fffff803`21cf70b1 488b4c2440      mov     rcx,qword ptr [rsp+40h]
fffff803`21cf70b6 4885c9          test    rcx,rcx
fffff803`21cf70b9 0f85e5050000    jne     nt!MiDeleteVirtualAddresses+0x8a8 (fffff803`21cf76a4)

nt!MiDeleteVirtualAddresses+0x2c3:
fffff803`21cf70bf 418b4020        mov     eax,dword ptr [r8+20h]
fffff803`21cf70c3 498d5e08        lea     rbx,[r14+8]
fffff803`21cf70c7 48c1e80f        shr     rax,0Fh
fffff803`21cf70cb a9ff030000      test    eax,3FFh
fffff803`21cf70d0 0f84dc040000    je      nt!MiDeleteVirtualAddresses+0x7b6 (fffff803`21cf75b2)

nt!MiDeleteVirtualAddresses+0x2da:
fffff803`21cf70d6 483bdf          cmp     rbx,rdi
fffff803`21cf70d9 0f8607feffff    jbe     nt!MiDeleteVirtualAddresses+0xe6 (fffff803`21cf6ee6)

nt!MiDeleteVirtualAddresses+0x2e3:
fffff803`21cf70df 4c8bb42450010000 mov     r14,qword ptr [rsp+150h]
fffff803`21cf70e7 488bac2458010000 mov     rbp,qword ptr [rsp+158h]
fffff803`21cf70ef 4c8bbc2448010000 mov     r15,qword ptr [rsp+148h]

nt!MiDeleteVirtualAddresses+0x2fb:
fffff803`21cf70f7 4881c460010000  add     rsp,160h
fffff803`21cf70fe 415d            pop     r13
fffff803`21cf7100 415c            pop     r12
fffff803`21cf7102 5f              pop     rdi
fffff803`21cf7103 5e              pop     rsi
fffff803`21cf7104 5b              pop     rbx
fffff803`21cf7105 c3              ret

nt!MiDeleteVirtualAddresses+0x30a:
fffff803`21cf7106 6641ffc7        inc     r15w
fffff803`21cf710a 664489bc2490010000 mov   word ptr [rsp+190h],r15w
fffff803`21cf7113 66443bf8        cmp     r15w,ax
fffff803`21cf7117 0f8725a90a00    ja      nt! ?? ::FNODOBFM::`string'+0x36d1c (fffff803`21da1a42)

nt!MiDeleteVirtualAddresses+0x321:
fffff803`21cf711d f6c301          test    bl,1
fffff803`21cf7120 0f8584000000    jne     nt!MiDeleteVirtualAddresses+0x3ae (fffff803`21cf71aa)

nt!MiDeleteVirtualAddresses+0x32a:
fffff803`21cf7126 488bfb          mov     rdi,rbx
fffff803`21cf7129 48c1ef0a        shr     rdi,0Ah
fffff803`21cf712d 83e701          and     edi,1
fffff803`21cf7130 0f851d040000    jne     nt!MiDeleteVirtualAddresses+0x757 (fffff803`21cf7553)

nt!MiDeleteVirtualAddresses+0x33a:
fffff803`21cf7136 480fbae30b      bt      rbx,0Bh
fffff803`21cf713b 724d            jb      nt!MiDeleteVirtualAddresses+0x38e (fffff803`21cf718a)

nt!MiDeleteVirtualAddresses+0x341:
fffff803`21cf713d 48f7c3e0030000  test    rbx,3E0h
fffff803`21cf7144 0f84dda80a00    je      nt! ?? ::FNODOBFM::`string'+0x36d01 (fffff803`21da1a27)

nt!MiDeleteVirtualAddresses+0x34e:
fffff803`21cf714a 4c8bf3          mov     r14,rbx
fffff803`21cf714d 49c1ee0e        shr     r14,0Eh
fffff803`21cf7151 41f6c601        test    r14b,1
fffff803`21cf7155 0f8523050000    jne     nt!MiDeleteVirtualAddresses+0x882 (fffff803`21cf767e)

nt!MiDeleteVirtualAddresses+0x35f:
fffff803`21cf715b 488bc3          mov     rax,rbx
fffff803`21cf715e 48c1e80d        shr     rax,0Dh
fffff803`21cf7162 a801            test    al,1
fffff803`21cf7164 0f8514050000    jne     nt!MiDeleteVirtualAddresses+0x882 (fffff803`21cf767e)

nt!MiDeleteVirtualAddresses+0x36e:
fffff803`21cf716a 4885ff          test    rdi,rdi
fffff803`21cf716d 0f852ea80a00    jne     nt! ?? ::FNODOBFM::`string'+0x36c7b (fffff803`21da19a1)

nt!MiDeleteVirtualAddresses+0x377:
fffff803`21cf7173 41f6c601        test    r14b,1
fffff803`21cf7177 0f8524a80a00    jne     nt! ?? ::FNODOBFM::`string'+0x36c7b (fffff803`21da19a1)

nt!MiDeleteVirtualAddresses+0x381:
fffff803`21cf717d 4c8b742448      mov     r14,qword ptr [rsp+48h]
fffff803`21cf7182 488b442430      mov     rax,qword ptr [rsp+30h]
fffff803`21cf7187 4c890e          mov     qword ptr [rsi],r9

nt!MiDeleteVirtualAddresses+0x38e:
fffff803`21cf718a 48833e00        cmp     qword ptr [rsi],0
fffff803`21cf718e 0f8424feffff    je      nt!MiDeleteVirtualAddresses+0x1bc (fffff803`21cf6fb8)

nt!MiDeleteVirtualAddresses+0x398:
fffff803`21cf7194 48837c246000    cmp     qword ptr [rsp+60h],0
fffff803`21cf719a 0f847e030000    je      nt!MiDeleteVirtualAddresses+0x722 (fffff803`21cf751e)

nt!MiDeleteVirtualAddresses+0x3a4:
fffff803`21cf71a0 4889742470      mov     qword ptr [rsp+70h],rsi
fffff803`21cf71a5 e90efeffff      jmp     nt!MiDeleteVirtualAddresses+0x1bc (fffff803`21cf6fb8)

nt!MiDeleteVirtualAddresses+0x3ae:
fffff803`21cf71aa 488bc3          mov     rax,rbx
fffff803`21cf71ad 48c1e80c        shr     rax,0Ch
fffff803`21cf71b1 4923c2          and     rax,r10
fffff803`21cf71b4 488d3c40        lea     rdi,[rax+rax*2]
fffff803`21cf71b8 48c1e704        shl     rdi,4
fffff803`21cf71bc 482bf9          sub     rdi,rcx
fffff803`21cf71bf 48837c245800    cmp     qword ptr [rsp+58h],0
fffff803`21cf71c5 448b3f          mov     r15d,dword ptr [rdi]
fffff803`21cf71c8 0f8582020000    jne     nt!MiDeleteVirtualAddresses+0x654 (fffff803`21cf7450)

nt!MiDeleteVirtualAddresses+0x3d2:
fffff803`21cf71ce 48837f0801      cmp     qword ptr [rdi+8],1
fffff803`21cf71d3 7514            jne     nt!MiDeleteVirtualAddresses+0x3ed (fffff803`21cf71e9)

nt!MiDeleteVirtualAddresses+0x3d9:
fffff803`21cf71d5 41f6c501        test    r13b,1
fffff803`21cf71d9 0f852f040000    jne     nt!MiDeleteVirtualAddresses+0x812 (fffff803`21cf760e)

nt!MiDeleteVirtualAddresses+0x3e3:
fffff803`21cf71df 41f6c504        test    r13b,4
fffff803`21cf71e3 0f85df030000    jne     nt!MiDeleteVirtualAddresses+0x7cc (fffff803`21cf75c8)

nt!MiDeleteVirtualAddresses+0x3ed:
fffff803`21cf71e9 83bc249801000000 cmp     dword ptr [rsp+198h],0
fffff803`21cf71f1 0f85cc010000    jne     nt!MiDeleteVirtualAddresses+0x5c7 (fffff803`21cf73c3)

nt!MiDeleteVirtualAddresses+0x3fb:
fffff803`21cf71f7 4d8db424e8040000 lea     r14,[r12+4E8h]
fffff803`21cf71ff 458bc7          mov     r8d,r15d
fffff803`21cf7202 488bcd          mov     rcx,rbp
fffff803`21cf7205 498b7e68        mov     rdi,qword ptr [r14+68h]
fffff803`21cf7209 498bd6          mov     rdx,r14
fffff803`21cf720c 48897c2478      mov     qword ptr [rsp+78h],rdi
fffff803`21cf7211 e85a110000      call    nt!MiLocateWsle (fffff803`21cf8370)
fffff803`21cf7216 8b5724          mov     edx,dword ptr [rdi+24h]
fffff803`21cf7219 488b8fb0000000  mov     rcx,qword ptr [rdi+0B0h]
fffff803`21cf7220 448be8          mov     r13d,eax
fffff803`21cf7223 448be0          mov     r12d,eax
fffff803`21cf7226 490fafd5        imul    rdx,r13
fffff803`21cf722a 488b0c0a        mov     rcx,qword ptr [rdx+rcx]
fffff803`21cf722e f6c108          test    cl,8
fffff803`21cf7231 7459            je      nt!MiDeleteVirtualAddresses+0x490 (fffff803`21cf728c)

nt!MiDeleteVirtualAddresses+0x437:
fffff803`21cf7233 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`21cf723d 488bc5          mov     rax,rbp
fffff803`21cf7240 48c1e809        shr     rax,9
fffff803`21cf7244 4823c1          and     rax,rcx
fffff803`21cf7247 48b90000000080f6ffff mov rcx,0FFFFF68000000000h
fffff803`21cf7251 488b0408        mov     rax,qword ptr [rax+rcx]
fffff803`21cf7255 48b9ffffffff0f000000 mov rcx,0FFFFFFFFFh
fffff803`21cf725f 48c1e80c        shr     rax,0Ch
fffff803`21cf7263 4823c1          and     rax,rcx
fffff803`21cf7266 488d0c40        lea     rcx,[rax+rax*2]
fffff803`21cf726a 48b82800000080faffff mov rax,0FFFFFA8000000028h
fffff803`21cf7274 4803c9          add     rcx,rcx
fffff803`21cf7277 488b04c8        mov     rax,qword ptr [rax+rcx*8]
fffff803`21cf727b 48c1e839        shr     rax,39h
fffff803`21cf727f a801            test    al,1
fffff803`21cf7281 7509            jne     nt!MiDeleteVirtualAddresses+0x490 (fffff803`21cf728c)

nt!MiDeleteVirtualAddresses+0x487:
fffff803`21cf7283 b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21cf7288 4101464c        add     dword ptr [r14+4Ch],eax

nt!MiDeleteVirtualAddresses+0x490:
fffff803`21cf728c 4d8b7e68        mov     r15,qword ptr [r14+68h]
fffff803`21cf7290 453b6f10        cmp     r13d,dword ptr [r15+10h]
fffff803`21cf7294 0f8772a70a00    ja      nt! ?? ::FNODOBFM::`string'+0x36ce6 (fffff803`21da1a0c)

nt!MiDeleteVirtualAddresses+0x49e:
fffff803`21cf729a 418b4724        mov     eax,dword ptr [r15+24h]
fffff803`21cf729e 498bbfb0000000  mov     rdi,qword ptr [r15+0B0h]
fffff803`21cf72a5 490fafc4        imul    rax,r12
fffff803`21cf72a9 488b3c38        mov     rdi,qword ptr [rax+rdi]
fffff803`21cf72ad 40f6c701        test    dil,1
fffff803`21cf72b1 0f843aa70a00    je      nt! ?? ::FNODOBFM::`string'+0x36ccb (fffff803`21da19f1)

nt!MiDeleteVirtualAddresses+0x4bb:
fffff803`21cf72b7 488d05c2c72c00  lea     rax,[nt!MmSystemPtesWs (fffff803`21fc3a80)]
fffff803`21cf72be 4c8bd7          mov     r10,rdi
fffff803`21cf72c1 4981e200f0ffff  and     r10,0FFFFFFFFFFFFF000h
fffff803`21cf72c8 4c3bf0          cmp     r14,rax
fffff803`21cf72cb 0f845da50a00    je      nt! ?? ::FNODOBFM::`string'+0x36b00 (fffff803`21da182e)

nt!MiDeleteVirtualAddresses+0x4d5:
fffff803`21cf72d1 40f6c708        test    dil,8
fffff803`21cf72d5 0f8410020000    je      nt!MiDeleteVirtualAddresses+0x6ef (fffff803`21cf74eb)

nt!MiDeleteVirtualAddresses+0x4df:
fffff803`21cf72db f7059f2d2d0000000008 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],8000000h
fffff803`21cf72e5 0f85b8a50a00    jne     nt! ?? ::FNODOBFM::`string'+0x36b7d (fffff803`21da18a3)

nt!MiDeleteVirtualAddresses+0x4ef:
fffff803`21cf72eb 418b4f24        mov     ecx,dword ptr [r15+24h]
fffff803`21cf72ef 498b87b0000000  mov     rax,qword ptr [r15+0B0h]
fffff803`21cf72f6 4883e7fe        and     rdi,0FFFFFFFFFFFFFFFEh
fffff803`21cf72fa 490fafcc        imul    rcx,r12
fffff803`21cf72fe 48893c01        mov     qword ptr [rcx+rax],rdi
fffff803`21cf7302 498b7e68        mov     rdi,qword ptr [r14+68h]
fffff803`21cf7306 448b4f04        mov     r9d,dword ptr [rdi+4]
fffff803`21cf730a 453be9          cmp     r13d,r9d
fffff803`21cf730d 722c            jb      nt!MiDeleteVirtualAddresses+0x53f (fffff803`21cf733b)

nt!MiDeleteVirtualAddresses+0x513:
fffff803`21cf730f 8b4f24          mov     ecx,dword ptr [rdi+24h]
fffff803`21cf7312 4c8b87b0000000  mov     r8,qword ptr [rdi+0B0h]
fffff803`21cf7319 8bd1            mov     edx,ecx
fffff803`21cf731b 490fafd4        imul    rdx,r12
fffff803`21cf731f 4903d0          add     rdx,r8
fffff803`21cf7322 488b02          mov     rax,qword ptr [rdx]
fffff803`21cf7325 83f910          cmp     ecx,10h
fffff803`21cf7328 0f848ea50a00    je      nt! ?? ::FNODOBFM::`string'+0x36b96 (fffff803`21da18bc)

nt!MiDeleteVirtualAddresses+0x532:
fffff803`21cf732e 48c1e809        shr     rax,9
fffff803`21cf7332 83e007          and     eax,7
fffff803`21cf7335 0f85f2010000    jne     nt!MiDeleteVirtualAddresses+0x731 (fffff803`21cf752d)

nt!MiDeleteVirtualAddresses+0x53f:
fffff803`21cf733b 448b07          mov     r8d,dword ptr [rdi]
fffff803`21cf733e b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21cf7343 443bc0          cmp     r8d,eax
fffff803`21cf7346 7437            je      nt!MiDeleteVirtualAddresses+0x583 (fffff803`21cf737f)

nt!MiDeleteVirtualAddresses+0x54c:
fffff803`21cf7348 443b4704        cmp     r8d,dword ptr [rdi+4]
fffff803`21cf734c 0f8281a60a00    jb      nt! ?? ::FNODOBFM::`string'+0x36cad (fffff803`21da19d3)

nt!MiDeleteVirtualAddresses+0x556:
fffff803`21cf7352 443b4710        cmp     r8d,dword ptr [rdi+10h]
fffff803`21cf7356 0f8777a60a00    ja      nt! ?? ::FNODOBFM::`string'+0x36cad (fffff803`21da19d3)

nt!MiDeleteVirtualAddresses+0x560:
fffff803`21cf735c 8b5724          mov     edx,dword ptr [rdi+24h]
fffff803`21cf735f 4a8d046d00000000 lea     rax,[r13*2]
fffff803`21cf7367 b9feffffff      mov     ecx,0FFFFFFFEh
fffff803`21cf736c 490fafd0        imul    rdx,r8
fffff803`21cf7370 480397b0000000  add     rdx,qword ptr [rdi+0B0h]
fffff803`21cf7377 3302            xor     eax,dword ptr [rdx]
fffff803`21cf7379 4823c1          and     rax,rcx
fffff803`21cf737c 483102          xor     qword ptr [rdx],rax

nt!MiDeleteVirtualAddresses+0x583:
fffff803`21cf737f 8b4f24          mov     ecx,dword ptr [rdi+24h]
fffff803`21cf7382 b8feffffff      mov     eax,0FFFFFFFEh
fffff803`21cf7387 498bd0          mov     rdx,r8
fffff803`21cf738a 48c1e220        shl     rdx,20h
fffff803`21cf738e 480bd0          or      rdx,rax
fffff803`21cf7391 488b87b0000000  mov     rax,qword ptr [rdi+0B0h]
fffff803`21cf7398 490fafcc        imul    rcx,r12
fffff803`21cf739c 48891401        mov     qword ptr [rcx+rax],rdx
fffff803`21cf73a0 b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21cf73a5 44892f          mov     dword ptr [rdi],r13d
fffff803`21cf73a8 41014648        add     dword ptr [r14+48h],eax
fffff803`21cf73ac 488b442478      mov     rax,qword ptr [rsp+78h]
fffff803`21cf73b1 443b6804        cmp     r13d,dword ptr [rax+4]
fffff803`21cf73b5 0f8259a50a00    jb      nt! ?? ::FNODOBFM::`string'+0x36bee (fffff803`21da1914)

nt!MiDeleteVirtualAddresses+0x5bf:
fffff803`21cf73bb 448bac24a0010000 mov     r13d,dword ptr [rsp+1A0h]

nt!MiDeleteVirtualAddresses+0x5c7:
fffff803`21cf73c3 488b06          mov     rax,qword ptr [rsi]
fffff803`21cf73c6 4883e3fe        and     rbx,0FFFFFFFFFFFFFFFEh
fffff803`21cf73ca 480fbaeb0a      bts     rbx,0Ah
fffff803`21cf73cf a820            test    al,20h
fffff803`21cf73d1 0f8437010000    je      nt!MiDeleteVirtualAddresses+0x712 (fffff803`21cf750e)

nt!MiDeleteVirtualAddresses+0x5db:
fffff803`21cf73d7 48891e          mov     qword ptr [rsi],rbx
fffff803`21cf73da 8b8c2490000000  mov     ecx,dword ptr [rsp+90h]
fffff803`21cf73e1 85c9            test    ecx,ecx
fffff803`21cf73e3 0f84bf000000    je      nt!MiDeleteVirtualAddresses+0x6ac (fffff803`21cf74a8)

nt!MiDeleteVirtualAddresses+0x5ed:
fffff803`21cf73e9 8d41ff          lea     eax,[rcx-1]
fffff803`21cf73ec 4c8d842498000000 lea     r8,[rsp+98h]
fffff803`21cf73f4 418b14c0        mov     edx,dword ptr [r8+rax*8]
fffff803`21cf73f8 4d8b0cc0        mov     r9,qword ptr [r8+rax*8]
fffff803`21cf73fc 4d8d04c0        lea     r8,[r8+rax*8]
fffff803`21cf7400 81e2ff0f0000    and     edx,0FFFh
fffff803`21cf7406 498bc1          mov     rax,r9
fffff803`21cf7409 8d4a01          lea     ecx,[rdx+1]
fffff803`21cf740c 482500f0ffff    and     rax,0FFFFFFFFFFFFF000h
fffff803`21cf7412 c1e10c          shl     ecx,0Ch
fffff803`21cf7415 4803c8          add     rcx,rax
fffff803`21cf7418 483bcd          cmp     rcx,rbp
fffff803`21cf741b 0f8587000000    jne     nt!MiDeleteVirtualAddresses+0x6ac (fffff803`21cf74a8)

nt!MiDeleteVirtualAddresses+0x625:
fffff803`21cf7421 81faff0f0000    cmp     edx,0FFFh
fffff803`21cf7427 747f            je      nt!MiDeleteVirtualAddresses+0x6ac (fffff803`21cf74a8)

nt!MiDeleteVirtualAddresses+0x62d:
fffff803`21cf7429 498d4101        lea     rax,[r9+1]
fffff803`21cf742d 498900          mov     qword ptr [r8],rax

nt!MiDeleteVirtualAddresses+0x634:
fffff803`21cf7430 4c8b642438      mov     r12,qword ptr [rsp+38h]
fffff803`21cf7435 488b442430      mov     rax,qword ptr [rsp+30h]
fffff803`21cf743a 440fb7bc2490010000 movzx r15d,word ptr [rsp+190h]
fffff803`21cf7443 4c8b742448      mov     r14,qword ptr [rsp+48h]

nt!MiDeleteVirtualAddresses+0x64c:
fffff803`21cf7448 4533c9          xor     r9d,r9d
fffff803`21cf744b e93afdffff      jmp     nt!MiDeleteVirtualAddresses+0x38e (fffff803`21cf718a)

nt!MiDeleteVirtualAddresses+0x654:
fffff803`21cf7450 498d9424e8040000 lea     rdx,[r12+4E8h]
fffff803`21cf7458 458bc7          mov     r8d,r15d
fffff803`21cf745b 488bcd          mov     rcx,rbp
fffff803`21cf745e e80d0f0000      call    nt!MiLocateWsle (fffff803`21cf8370)
fffff803`21cf7463 f60620          test    byte ptr [rsi],20h
fffff803`21cf7466 448bf8          mov     r15d,eax
fffff803`21cf7469 7435            je      nt!MiDeleteVirtualAddresses+0x6a4 (fffff803`21cf74a0)

nt!MiDeleteVirtualAddresses+0x66f:
fffff803`21cf746b 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff803`21cf7470 8b5124          mov     edx,dword ptr [rcx+24h]
fffff803`21cf7473 488b81b0000000  mov     rax,qword ptr [rcx+0B0h]
fffff803`21cf747a 490fafd7        imul    rdx,r15
fffff803`21cf747e 8b1402          mov     edx,dword ptr [rdx+rax]
fffff803`21cf7481 81e2000e0000    and     edx,0E00h
fffff803`21cf7487 4881fa000e0000  cmp     rdx,0E00h
fffff803`21cf748e 7410            je      nt!MiDeleteVirtualAddresses+0x6a4 (fffff803`21cf74a0)

nt!MiDeleteVirtualAddresses+0x694:
fffff803`21cf7490 498d8c24e8040000 lea     rcx,[r12+4E8h]
fffff803`21cf7498 488bd6          mov     rdx,rsi
fffff803`21cf749b e8d0720b00      call    nt!MiLogPageAccess (fffff803`21dae770)

nt!MiDeleteVirtualAddresses+0x6a4:
fffff803`21cf74a0 4533c9          xor     r9d,r9d
fffff803`21cf74a3 e926fdffff      jmp     nt!MiDeleteVirtualAddresses+0x3d2 (fffff803`21cf71ce)

nt!MiDeleteVirtualAddresses+0x6ac:
fffff803`21cf74a8 8b8c2490000000  mov     ecx,dword ptr [rsp+90h]
fffff803`21cf74af 4c8b742448      mov     r14,qword ptr [rsp+48h]
fffff803`21cf74b4 440fb7bc2490010000 movzx r15d,word ptr [rsp+190h]
fffff803`21cf74bd 488b442430      mov     rax,qword ptr [rsp+30h]
fffff803`21cf74c2 4c8b642438      mov     r12,qword ptr [rsp+38h]
fffff803`21cf74c7 3b8c2494000000  cmp     ecx,dword ptr [rsp+94h]
fffff803`21cf74ce 0f8374ffffff    jae     nt!MiDeleteVirtualAddresses+0x64c (fffff803`21cf7448)

nt!MiDeleteVirtualAddresses+0x6d8:
fffff803`21cf74d4 4889accc98000000 mov     qword ptr [rsp+rcx*8+98h],rbp
fffff803`21cf74dc ff842490000000  inc     dword ptr [rsp+90h]
fffff803`21cf74e3 4533c9          xor     r9d,r9d
fffff803`21cf74e6 e99ffcffff      jmp     nt!MiDeleteVirtualAddresses+0x38e (fffff803`21cf718a)

nt!MiDeleteVirtualAddresses+0x6ef:
fffff803`21cf74eb 40f6c704        test    dil,4
fffff803`21cf74ef 0f84e6fdffff    je      nt!MiDeleteVirtualAddresses+0x4df (fffff803`21cf72db)

nt!MiDeleteVirtualAddresses+0x6f9:
fffff803`21cf74f5 41b901000000    mov     r9d,1
fffff803`21cf74fb 4d8bc6          mov     r8,r14
fffff803`21cf74fe 418bd5          mov     edx,r13d
fffff803`21cf7501 498bca          mov     rcx,r10
fffff803`21cf7504 e847150100      call    nt!MiUpdateWsleHash (fffff803`21d08a50)
fffff803`21cf7509 e9cdfdffff      jmp     nt!MiDeleteVirtualAddresses+0x4df (fffff803`21cf72db)

nt!MiDeleteVirtualAddresses+0x712:
fffff803`21cf750e f0480fb11e      lock cmpxchg qword ptr [rsi],rbx
fffff803`21cf7513 0f8417ffffff    je      nt!MiDeleteVirtualAddresses+0x634 (fffff803`21cf7430)

nt!MiDeleteVirtualAddresses+0x71d:
fffff803`21cf7519 e9b9feffff      jmp     nt!MiDeleteVirtualAddresses+0x5db (fffff803`21cf73d7)

nt!MiDeleteVirtualAddresses+0x722:
fffff803`21cf751e 4889742460      mov     qword ptr [rsp+60h],rsi
fffff803`21cf7523 4889742470      mov     qword ptr [rsp+70h],rsi
fffff803`21cf7528 e98bfaffff      jmp     nt!MiDeleteVirtualAddresses+0x1bc (fffff803`21cf6fb8)

nt!MiDeleteVirtualAddresses+0x731:
fffff803`21cf752d 8d50ff          lea     edx,[rax-1]
fffff803`21cf7530 b9ffffffff      mov     ecx,0FFFFFFFFh
fffff803`21cf7535 41014c9628      add     dword ptr [r14+rdx*4+28h],ecx
fffff803`21cf753a 83f807          cmp     eax,7
fffff803`21cf753d 0f85f8fdffff    jne     nt!MiDeleteVirtualAddresses+0x53f (fffff803`21cf733b)

nt!MiDeleteVirtualAddresses+0x747:
fffff803`21cf7543 83caff          or      edx,0FFFFFFFFh
fffff803`21cf7546 498bce          mov     rcx,r14
fffff803`21cf7549 e8ee2c0200      call    nt!MiVolunteerForTrimFirst (fffff803`21d1a23c)
fffff803`21cf754e e9e8fdffff      jmp     nt!MiDeleteVirtualAddresses+0x53f (fffff803`21cf733b)

nt!MiDeleteVirtualAddresses+0x757:
fffff803`21cf7553 488bc3          mov     rax,rbx
fffff803`21cf7556 488bfb          mov     rdi,rbx
fffff803`21cf7559 b9ffffffff      mov     ecx,0FFFFFFFFh
fffff803`21cf755e 48c1e820        shr     rax,20h
fffff803`21cf7562 48c1ff10        sar     rdi,10h
fffff803`21cf7566 483bc1          cmp     rax,rcx
fffff803`21cf7569 7528            jne     nt!MiDeleteVirtualAddresses+0x797 (fffff803`21cf7593)

nt!MiDeleteVirtualAddresses+0x76f:
fffff803`21cf756b 4883bc248000000000 cmp   qword ptr [rsp+80h],0
fffff803`21cf7574 0f85f6a30a00    jne     nt! ?? ::FNODOBFM::`string'+0x36c4a (fffff803`21da1970)

nt!MiDeleteVirtualAddresses+0x77e:
fffff803`21cf757a 488b442430      mov     rax,qword ptr [rsp+30h]
fffff803`21cf757f 4c890e          mov     qword ptr [rsi],r9
fffff803`21cf7582 e903fcffff      jmp     nt!MiDeleteVirtualAddresses+0x38e (fffff803`21cf718a)

nt!MiDeleteVirtualAddresses+0x78b:
fffff803`21cf7587 488b7c2468      mov     rdi,qword ptr [rsp+68h]

nt!MiDeleteVirtualAddresses+0x790:
fffff803`21cf758c 33f6            xor     esi,esi
fffff803`21cf758e e91efbffff      jmp     nt!MiDeleteVirtualAddresses+0x2b5 (fffff803`21cf70b1)

nt!MiDeleteVirtualAddresses+0x797:
fffff803`21cf7593 480fbae309      bt      rbx,9
fffff803`21cf7598 73d1            jae     nt!MiDeleteVirtualAddresses+0x76f (fffff803`21cf756b)

nt!MiDeleteVirtualAddresses+0x79e:
fffff803`21cf759a 488bcf          mov     rcx,rdi
fffff803`21cf759d e84a180900      call    nt!MiDecrementCombinedPte (fffff803`21d88dec)

nt!MiDeleteVirtualAddresses+0x7a6:
fffff803`21cf75a2 488b442430      mov     rax,qword ptr [rsp+30h]
fffff803`21cf75a7 4533c9          xor     r9d,r9d
fffff803`21cf75aa 4c890e          mov     qword ptr [rsi],r9
fffff803`21cf75ad e9d8fbffff      jmp     nt!MiDeleteVirtualAddresses+0x38e (fffff803`21cf718a)

nt!MiDeleteVirtualAddresses+0x7b6:
fffff803`21cf75b2 488d53f8        lea     rdx,[rbx-8]
fffff803`21cf75b6 41b8ffffffff    mov     r8d,0FFFFFFFFh
fffff803`21cf75bc 33c9            xor     ecx,ecx
fffff803`21cf75be e8ed2e0500      call    nt!MiDeletePageTableHierarchy (fffff803`21d4a4b0)
fffff803`21cf75c3 e90efbffff      jmp     nt!MiDeleteVirtualAddresses+0x2da (fffff803`21cf70d6)

nt!MiDeleteVirtualAddresses+0x7cc:
fffff803`21cf75c8 48837c244000    cmp     qword ptr [rsp+40h],0
fffff803`21cf75ce 0f8515fcffff    jne     nt!MiDeleteVirtualAddresses+0x3ed (fffff803`21cf71e9)

nt!MiDeleteVirtualAddresses+0x7d8:
fffff803`21cf75d4 f6c342          test    bl,42h
fffff803`21cf75d7 0f850cfcffff    jne     nt!MiDeleteVirtualAddresses+0x3ed (fffff803`21cf71e9)

nt!MiDeleteVirtualAddresses+0x7e1:
fffff803`21cf75dd 488bcf          mov     rcx,rdi
fffff803`21cf75e0 e863b30a00      call    nt!MiBoostUnmapPfn (fffff803`21da2948)
fffff803`21cf75e5 85c0            test    eax,eax
fffff803`21cf75e7 0f84fcfbffff    je      nt!MiDeleteVirtualAddresses+0x3ed (fffff803`21cf71e9)

nt!MiDeleteVirtualAddresses+0x7f1:
fffff803`21cf75ed 0fb6471b        movzx   eax,byte ptr [rdi+1Bh]
fffff803`21cf75f1 a808            test    al,8
fffff803`21cf75f3 0f85f9000000    jne     nt!MiDeleteVirtualAddresses+0x8f4 (fffff803`21cf76f2)

nt!MiDeleteVirtualAddresses+0x7fd:
fffff803`21cf75f9 0fb6c8          movzx   ecx,al
fffff803`21cf75fc 83e107          and     ecx,7
fffff803`21cf75ff e800650600      call    nt!MiCreateDecayPfn (fffff803`21d5db04)
fffff803`21cf7604 4889442440      mov     qword ptr [rsp+40h],rax
fffff803`21cf7609 e9dbfbffff      jmp     nt!MiDeleteVirtualAddresses+0x3ed (fffff803`21cf71e9)

nt!MiDeleteVirtualAddresses+0x812:
fffff803`21cf760e 0fb6571b        movzx   edx,byte ptr [rdi+1Bh]
fffff803`21cf7612 0fb6ca          movzx   ecx,dl
fffff803`21cf7615 c0e903          shr     cl,3
fffff803`21cf7618 80e101          and     cl,1
fffff803`21cf761b 750f            jne     nt!MiDeleteVirtualAddresses+0x830 (fffff803`21cf762c)

nt!MiDeleteVirtualAddresses+0x821:
fffff803`21cf761d 0fb6c2          movzx   eax,dl
fffff803`21cf7620 83e007          and     eax,7
fffff803`21cf7623 83f802          cmp     eax,2
fffff803`21cf7626 0f86b3fbffff    jbe     nt!MiDeleteVirtualAddresses+0x3e3 (fffff803`21cf71df)

nt!MiDeleteVirtualAddresses+0x830:
fffff803`21cf762c 80f901          cmp     cl,1
fffff803`21cf762f 740f            je      nt!MiDeleteVirtualAddresses+0x844 (fffff803`21cf7640)

nt!MiDeleteVirtualAddresses+0x835:
fffff803`21cf7631 0fb6c2          movzx   eax,dl
fffff803`21cf7634 83e007          and     eax,7
fffff803`21cf7637 83f805          cmp     eax,5
fffff803`21cf763a 0f879ffbffff    ja      nt!MiDeleteVirtualAddresses+0x3e3 (fffff803`21cf71df)

nt!MiDeleteVirtualAddresses+0x844:
fffff803`21cf7640 450f20c4        mov     r12,cr8
fffff803`21cf7644 b802000000      mov     eax,2
fffff803`21cf7649 440f22c0        mov     cr8,rax
fffff803`21cf764d f00fba6f1000    lock bts dword ptr [rdi+10h],0
fffff803`21cf7653 458bf1          mov     r14d,r9d
fffff803`21cf7656 0f8298a10a00    jb      nt! ?? ::FNODOBFM::`string'+0x36ac6 (fffff803`21da17f4)

nt!MiDeleteVirtualAddresses+0x860:
fffff803`21cf765c 0fb6471b        movzx   eax,byte ptr [rdi+1Bh]
fffff803`21cf7660 24fa            and     al,0FAh
fffff803`21cf7662 0c02            or      al,2
fffff803`21cf7664 88471b          mov     byte ptr [rdi+1Bh],al
fffff803`21cf7667 f0836710fe      lock and dword ptr [rdi+10h],0FFFFFFFEh
fffff803`21cf766c 410fb6c4        movzx   eax,r12b
fffff803`21cf7670 440f22c0        mov     cr8,rax
fffff803`21cf7674 4c8b642438      mov     r12,qword ptr [rsp+38h]
fffff803`21cf7679 e961fbffff      jmp     nt!MiDeleteVirtualAddresses+0x3e3 (fffff803`21cf71df)

nt!MiDeleteVirtualAddresses+0x882:
fffff803`21cf767e 488bcb          mov     rcx,rbx
fffff803`21cf7681 e84a040700      call    nt!MiReleaseConfirmedPageFileInfo (fffff803`21d67ad0)
fffff803`21cf7686 4533c9          xor     r9d,r9d
fffff803`21cf7689 e9dcfaffff      jmp     nt!MiDeleteVirtualAddresses+0x36e (fffff803`21cf716a)

nt!MiDeleteVirtualAddresses+0x892:
fffff803`21cf768e 33d2            xor     edx,edx
fffff803`21cf7690 8d4a01          lea     ecx,[rdx+1]
fffff803`21cf7693 e8ec640300      call    nt!KeFlushTb (fffff803`21d2db84)
fffff803`21cf7698 e9ecf9ffff      jmp     nt!MiDeleteVirtualAddresses+0x28d (fffff803`21cf7089)

nt!MiDeleteVirtualAddresses+0x8a1:
fffff803`21cf769d 33f6            xor     esi,esi
fffff803`21cf769f e9eef9ffff      jmp     nt!MiDeleteVirtualAddresses+0x296 (fffff803`21cf7092)

nt!MiDeleteVirtualAddresses+0x8a8:
fffff803`21cf76a4 e873b20600      call    nt!MiDecayPfnFullyInitialized (fffff803`21d6291c)
fffff803`21cf76a9 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff803`21cf76ae 4889742440      mov     qword ptr [rsp+40h],rsi
fffff803`21cf76b3 e907faffff      jmp     nt!MiDeleteVirtualAddresses+0x2c3 (fffff803`21cf70bf)

nt!MiDeleteVirtualAddresses+0x8bc:
fffff803`21cf76b9 b801000000      mov     eax,1
fffff803`21cf76be e9d0f7ffff      jmp     nt!MiDeleteVirtualAddresses+0x93 (fffff803`21cf6e93)

nt!MiDeleteVirtualAddresses+0x8c6:
fffff803`21cf76c4 ffc6            inc     esi
fffff803`21cf76c6 8535802d2d00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21cf76cc 0f84e2a20a00    je      nt! ?? ::FNODOBFM::`string'+0x36c8e (fffff803`21da19b4)

nt!MiDeleteVirtualAddresses+0x8d4:
fffff803`21cf76d2 f390            pause

nt!MiDeleteVirtualAddresses+0x8d6:
fffff803`21cf76d4 418b4010        mov     eax,dword ptr [r8+10h]
fffff803`21cf76d8 a801            test    al,1
fffff803`21cf76da 75e8            jne     nt!MiDeleteVirtualAddresses+0x8c6 (fffff803`21cf76c4)

nt!MiDeleteVirtualAddresses+0x8de:
fffff803`21cf76dc f0410fba681000  lock bts dword ptr [r8+10h],0
fffff803`21cf76e3 0f8337f9ffff    jae     nt!MiDeleteVirtualAddresses+0x224 (fffff803`21cf7020)

nt!MiDeleteVirtualAddresses+0x8eb:
fffff803`21cf76e9 ebd9            jmp     nt!MiDeleteVirtualAddresses+0x8c6 (fffff803`21cf76c4)

nt!MiDeleteVirtualAddresses+0x8ed:
fffff803`21cf76eb f390            pause
fffff803`21cf76ed e928a10a00      jmp     nt! ?? ::FNODOBFM::`string'+0x36aec (fffff803`21da181a)

nt!MiDeleteVirtualAddresses+0x8f4:
fffff803`21cf76f2 b905000000      mov     ecx,5
fffff803`21cf76f7 e808640600      call    nt!MiCreateDecayPfn (fffff803`21d5db04)
fffff803`21cf76fc 4889442440      mov     qword ptr [rsp+40h],rax
fffff803`21cf7701 e9e3faffff      jmp     nt!MiDeleteVirtualAddresses+0x3ed (fffff803`21cf71e9)

nt!MiDeleteVirtualAddresses+0x908:
fffff803`21cf7706 44894cd770      mov     dword ptr [rdi+rdx*8+70h],r9d
fffff803`21cf770b e9f1a10a00      jmp     nt! ?? ::FNODOBFM::`string'+0x36bdb (fffff803`21da1901)

nt!MiDeleteVirtualAddresses+0x912:
fffff803`21cf7710 448954d774      mov     dword ptr [rdi+rdx*8+74h],r10d

nt!MiDeleteVirtualAddresses+0x917:
fffff803`21cf7715 44017c9750      add     dword ptr [rdi+rdx*4+50h],r15d
fffff803`21cf771a e90ffcffff      jmp     nt!MiDeleteVirtualAddresses+0x532 (fffff803`21cf732e)

nt! ?? ::FNODOBFM::`string'+0x36ac6:
fffff803`21da17f4 41ffc6          inc     r14d
fffff803`21da17f7 4485354e8c2200  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r14d
fffff803`21da17fe 0f85e75ef5ff    jne     nt!MiDeleteVirtualAddresses+0x8ed (fffff803`21cf76eb)

nt! ?? ::FNODOBFM::`string'+0x36ad6:
fffff803`21da1804 8b0566882200    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21da180a a840            test    al,40h
fffff803`21da180c 0f84d95ef5ff    je      nt!MiDeleteVirtualAddresses+0x8ed (fffff803`21cf76eb)

nt! ?? ::FNODOBFM::`string'+0x36ae4:
fffff803`21da1812 418bce          mov     ecx,r14d
fffff803`21da1815 e8aa9b0300      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x36aec:
fffff803`21da181a 8b4710          mov     eax,dword ptr [rdi+10h]
fffff803`21da181d a801            test    al,1
fffff803`21da181f 75d3            jne     nt! ?? ::FNODOBFM::`string'+0x36ac6 (fffff803`21da17f4)

nt! ?? ::FNODOBFM::`string'+0x36af3:
fffff803`21da1821 f00fba6f1000    lock bts dword ptr [rdi+10h],0
fffff803`21da1827 72cb            jb      nt! ?? ::FNODOBFM::`string'+0x36ac6 (fffff803`21da17f4)

nt! ?? ::FNODOBFM::`string'+0x36afb:
fffff803`21da1829 e92e5ef5ff      jmp     nt!MiDeleteVirtualAddresses+0x860 (fffff803`21cf765c)

nt! ?? ::FNODOBFM::`string'+0x36b00:
fffff803`21da182e 48b80000000080f8ffff mov rax,0FFFFF88000000000h
fffff803`21da1838 4c3bd0          cmp     r10,rax
fffff803`21da183b 7256            jb      nt! ?? ::FNODOBFM::`string'+0x36b6d (fffff803`21da1893)

nt! ?? ::FNODOBFM::`string'+0x36b13:
fffff803`21da183d 498bc2          mov     rax,r10
fffff803`21da1840 48b900000040fbf6ffff mov rcx,0FFFFF6FB40000000h
fffff803`21da184a 48c1e812        shr     rax,12h
fffff803`21da184e 25f8ffff3f      and     eax,3FFFFFF8h
fffff803`21da1853 488b0c01        mov     rcx,qword ptr [rcx+rax]
fffff803`21da1857 48b8ffffffff0f000000 mov rax,0FFFFFFFFFh
fffff803`21da1861 48c1e90c        shr     rcx,0Ch
fffff803`21da1865 4823c8          and     rcx,rax
fffff803`21da1868 488d0449        lea     rax,[rcx+rcx*2]
fffff803`21da186c 48b91e00000080faffff mov rcx,0FFFFFA800000001Eh
fffff803`21da1876 4803c0          add     rax,rax
fffff803`21da1879 0fb604c1        movzx   eax,byte ptr [rcx+rax*8]
fffff803`21da187d 24f0            and     al,0F0h
fffff803`21da187f 3cc0            cmp     al,0C0h
fffff803`21da1881 7510            jne     nt! ?? ::FNODOBFM::`string'+0x36b6d (fffff803`21da1893)

nt! ?? ::FNODOBFM::`string'+0x36b5d:
fffff803`21da1883 b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21da1888 01052ad51900    add     dword ptr [nt!MmSystemDriverPage (fffff803`21f3edb8)],eax
fffff803`21da188e e93e5af5ff      jmp     nt!MiDeleteVirtualAddresses+0x4d5 (fffff803`21cf72d1)

nt! ?? ::FNODOBFM::`string'+0x36b6d:
fffff803`21da1893 b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21da1898 010516d51900    add     dword ptr [nt!MmSystemCodePage (fffff803`21f3edb4)],eax
fffff803`21da189e e92e5af5ff      jmp     nt!MiDeleteVirtualAddresses+0x4d5 (fffff803`21cf72d1)

nt! ?? ::FNODOBFM::`string'+0x36b7d:
fffff803`21da18a3 410fb69684000000 movzx   edx,byte ptr [r14+84h]
fffff803`21da18ab 488bcf          mov     rcx,rdi
fffff803`21da18ae 83e207          and     edx,7
fffff803`21da18b1 e86a6e0500      call    nt!MiLogRemoveWsleEvent (fffff803`21df8720)
fffff803`21da18b6 90              nop
fffff803`21da18b7 e92f5af5ff      jmp     nt!MiDeleteVirtualAddresses+0x4ef (fffff803`21cf72eb)

nt! ?? ::FNODOBFM::`string'+0x36b96:
fffff803`21da18bc 488bca          mov     rcx,rdx
fffff803`21da18bf 492bc8          sub     rcx,r8
fffff803`21da18c2 48c1f904        sar     rcx,4
fffff803`21da18c6 413bc9          cmp     ecx,r9d
fffff803`21da18c9 0f825f5af5ff    jb      nt!MiDeleteVirtualAddresses+0x532 (fffff803`21cf732e)

nt! ?? ::FNODOBFM::`string'+0x36ba9:
fffff803`21da18cf 448b4a08        mov     r9d,dword ptr [rdx+8]
fffff803`21da18d3 448b520c        mov     r10d,dword ptr [rdx+0Ch]
fffff803`21da18d7 488bd0          mov     rdx,rax
fffff803`21da18da 48c1ea09        shr     rdx,9
fffff803`21da18de 458bd9          mov     r11d,r9d
fffff803`21da18e1 41bfffffffff    mov     r15d,0FFFFFFFFh
fffff803`21da18e7 4d03db          add     r11,r11
fffff803`21da18ea 83e207          and     edx,7
fffff803`21da18ed 453bd7          cmp     r10d,r15d
fffff803`21da18f0 0f84105ef5ff    je      nt!MiDeleteVirtualAddresses+0x908 (fffff803`21cf7706)

nt! ?? ::FNODOBFM::`string'+0x36bd0:
fffff803`21da18f6 418bca          mov     ecx,r10d
fffff803`21da18f9 4803c9          add     rcx,rcx
fffff803`21da18fc 45894cc808      mov     dword ptr [r8+rcx*8+8],r9d

nt! ?? ::FNODOBFM::`string'+0x36bdb:
fffff803`21da1901 453bcf          cmp     r9d,r15d
fffff803`21da1904 0f84065ef5ff    je      nt!MiDeleteVirtualAddresses+0x912 (fffff803`21cf7710)

nt! ?? ::FNODOBFM::`string'+0x36be4:
fffff803`21da190a 478954d80c      mov     dword ptr [r8+r11*8+0Ch],r10d
fffff803`21da190f e9015ef5ff      jmp     nt!MiDeleteVirtualAddresses+0x917 (fffff803`21cf7715)

nt! ?? ::FNODOBFM::`string'+0x36bee:
fffff803`21da1914 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`21da191e 488bc5          mov     rax,rbp
fffff803`21da1921 458bc5          mov     r8d,r13d
fffff803`21da1924 48c1e809        shr     rax,9
fffff803`21da1928 488bd5          mov     rdx,rbp
fffff803`21da192b 4823c1          and     rax,rcx
fffff803`21da192e 48b90000000080f6ffff mov rcx,0FFFFF68000000000h
fffff803`21da1938 488b0408        mov     rax,qword ptr [rax+rcx]
fffff803`21da193c 48b9ffffffff0f000000 mov rcx,0FFFFFFFFFh
fffff803`21da1946 48c1e80c        shr     rax,0Ch
fffff803`21da194a 4823c1          and     rax,rcx
fffff803`21da194d 48b90000000080050000 mov rcx,58000000000h
fffff803`21da1957 4c8d0c40        lea     r9,[rax+rax*2]
fffff803`21da195b 49c1e104        shl     r9,4
fffff803`21da195f 4c2bc9          sub     r9,rcx
fffff803`21da1962 498bce          mov     rcx,r14
fffff803`21da1965 e83270ffff      call    nt!MiRemoveLockedPageFromWorkingSet (fffff803`21d9899c)
fffff803`21da196a 90              nop
fffff803`21da196b e94b5af5ff      jmp     nt!MiDeleteVirtualAddresses+0x5bf (fffff803`21cf73bb)

nt! ?? ::FNODOBFM::`string'+0x36c4a:
fffff803`21da1970 483bc1          cmp     rax,rcx
fffff803`21da1973 0f84015cf5ff    je      nt!MiDeleteVirtualAddresses+0x77e (fffff803`21cf757a)

nt! ?? ::FNODOBFM::`string'+0x36c53:
fffff803`21da1979 488bd7          mov     rdx,rdi
fffff803`21da197c 498bcc          mov     rcx,r12
fffff803`21da197f e850590600      call    nt!MiLocateCloneAddress (fffff803`21e072d4)
fffff803`21da1984 4885c0          test    rax,rax
fffff803`21da1987 0f84155cf5ff    je      nt!MiDeleteVirtualAddresses+0x7a6 (fffff803`21cf75a2)

nt! ?? ::FNODOBFM::`string'+0x36c67:
fffff803`21da198d 4d8bc4          mov     r8,r12
fffff803`21da1990 488bd7          mov     rdx,rdi
fffff803`21da1993 488bc8          mov     rcx,rax
fffff803`21da1996 e885590600      call    nt!MiDecrementCloneBlockReference (fffff803`21e07320)
fffff803`21da199b 90              nop
fffff803`21da199c e9015cf5ff      jmp     nt!MiDeleteVirtualAddresses+0x7a6 (fffff803`21cf75a2)

nt! ?? ::FNODOBFM::`string'+0x36c7b:
fffff803`21da19a1 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`21da19a5 f0490fc1842488030000 lock xadd qword ptr [r12+388h],rax
fffff803`21da19af e9c957f5ff      jmp     nt!MiDeleteVirtualAddresses+0x381 (fffff803`21cf717d)

nt! ?? ::FNODOBFM::`string'+0x36c8e:
fffff803`21da19b4 8b05b6862200    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21da19ba a840            test    al,40h
fffff803`21da19bc 0f84105df5ff    je      nt!MiDeleteVirtualAddresses+0x8d4 (fffff803`21cf76d2)

nt! ?? ::FNODOBFM::`string'+0x36c9c:
fffff803`21da19c2 8bce            mov     ecx,esi
fffff803`21da19c4 e8fb990300      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21da19c9 4c8b442450      mov     r8,qword ptr [rsp+50h]
fffff803`21da19ce e9015df5ff      jmp     nt!MiDeleteVirtualAddresses+0x8d6 (fffff803`21cf76d4)

nt! ?? ::FNODOBFM::`string'+0x36cad:
fffff803`21da19d3 8b4710          mov     eax,dword ptr [rdi+10h]
fffff803`21da19d6 4d8bc8          mov     r9,r8
fffff803`21da19d9 ba04500000      mov     edx,5004h
fffff803`21da19de 4c8bc7          mov     r8,rdi
fffff803`21da19e1 b91a000000      mov     ecx,1Ah
fffff803`21da19e6 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21da19eb e850aaf2ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21da19f0 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x36ccb:
fffff803`21da19f1 4d8bcd          mov     r9,r13
fffff803`21da19f4 4d8bc7          mov     r8,r15
fffff803`21da19f7 ba10500000      mov     edx,5010h
fffff803`21da19fc b91a000000      mov     ecx,1Ah
fffff803`21da1a01 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff803`21da1a06 e835aaf2ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21da1a0b cc              int     3

nt! ?? ::FNODOBFM::`string'+0x36ce6:
fffff803`21da1a0c 33f6            xor     esi,esi
fffff803`21da1a0e 4d8bcd          mov     r9,r13
fffff803`21da1a11 4d8bc7          mov     r8,r15
fffff803`21da1a14 8d4e1a          lea     ecx,[rsi+1Ah]
fffff803`21da1a17 ba85170400      mov     edx,41785h
fffff803`21da1a1c 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`21da1a21 e81aaaf2ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21da1a26 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x36d01:
fffff803`21da1a27 4c894c2420      mov     qword ptr [rsp+20h],r9
fffff803`21da1a2c 4c8bc6          mov     r8,rsi
fffff803`21da1a2f ba92170400      mov     edx,41792h
fffff803`21da1a34 4c8bcb          mov     r9,rbx
fffff803`21da1a37 b91a000000      mov     ecx,1Ah
fffff803`21da1a3c e8ffa9f2ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21da1a41 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x36d1c:
fffff803`21da1a42 0fb7c0          movzx   eax,ax
fffff803`21da1a45 450fb7cf        movzx   r9d,r15w
fffff803`21da1a49 4c8bc6          mov     r8,rsi
fffff803`21da1a4c ba93170400      mov     edx,41793h
fffff803`21da1a51 b91a000000      mov     ecx,1Ah
fffff803`21da1a56 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21da1a5b e8e0a9f2ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21da1a60 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x36d3b:
fffff803`21da1a61 4533c9          xor     r9d,r9d
fffff803`21da1a64 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`21da1a69 ba90170400      mov     edx,41790h
fffff803`21da1a6e 418d491a        lea     ecx,[r9+1Ah]
fffff803`21da1a72 e8c9a9f2ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21da1a77 cc              int     3
fffff803`21da1a78 4885d2          test    rdx,rdx
fffff803`21da1a7b 7457            je      nt!PopPepTriggerComponentActivatingActivity+0x5c (fffff803`21da1ad4)

nt!PopPepTriggerComponentActivatingActivity+0x5:
fffff803`21da1a7d 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21da1a82 57              push    rdi
fffff803`21da1a83 4883ec20        sub     rsp,20h
fffff803`21da1a87 49b80800000080f7ffff mov r8,0FFFFF78000000008h
fffff803`21da1a91 488bda          mov     rbx,rdx
fffff803`21da1a94 488bf9          mov     rdi,rcx
fffff803`21da1a97 4d8b00          mov     r8,qword ptr [r8]
fffff803`21da1a9a 488b4278        mov     rax,qword ptr [rdx+78h]
fffff803`21da1a9e 4c2b8280000000  sub     r8,qword ptr [rdx+80h]
fffff803`21da1aa5 493bc0          cmp     rax,r8
fffff803`21da1aa8 4c0f42c0        cmovb   r8,rax
fffff803`21da1aac 83a29000000000  and     dword ptr [rdx+90h],0
fffff803`21da1ab3 4c894270        mov     qword ptr [rdx+70h],r8
fffff803`21da1ab7 e87c070000      call    nt!PopPepTryPowerUpComponent (fffff803`21da2238)
fffff803`21da1abc 41b001          mov     r8b,1
fffff803`21da1abf 488bd3          mov     rdx,rbx
fffff803`21da1ac2 488bcf          mov     rcx,rdi
fffff803`21da1ac5 e81e5affff      call    nt!PopPepUpdateIdleState (fffff803`21d974e8)
fffff803`21da1aca 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`21da1acf 4883c420        add     rsp,20h
fffff803`21da1ad3 5f              pop     rdi

nt!PopPepTriggerComponentActivatingActivity+0x5c:
fffff803`21da1ad4 c3              ret
