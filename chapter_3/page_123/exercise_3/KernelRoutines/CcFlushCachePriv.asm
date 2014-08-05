0: kd> uf CcFlushCachePriv
nt!CcFlushCachePriv:
fffff803`d99804e0 4c894c2420      mov     qword ptr [rsp+20h],r9
fffff803`d99804e5 4489442418      mov     dword ptr [rsp+18h],r8d
fffff803`d99804ea 48894c2408      mov     qword ptr [rsp+8],rcx
fffff803`d99804ef 55              push    rbp
fffff803`d99804f0 56              push    rsi
fffff803`d99804f1 57              push    rdi
fffff803`d99804f2 4154            push    r12
fffff803`d99804f4 4156            push    r14
fffff803`d99804f6 4157            push    r15
fffff803`d99804f8 488d6c24d9      lea     rbp,[rsp-27h]
fffff803`d99804fd 4881ecc8000000  sub     rsp,0C8h
fffff803`d9980504 4533d2          xor     r10d,r10d
fffff803`d9980507 498bc1          mov     rax,r9
fffff803`d998050a 488bf9          mov     rdi,rcx
fffff803`d998050d 458bc8          mov     r9d,r8d
fffff803`d9980510 4c8be2          mov     r12,rdx
fffff803`d9980513 488d0d1ee61e00  lea     rcx,[nt!CcNoDelay (fffff803`d9b6eb38)]
fffff803`d998051a 448955b7        mov     dword ptr [rbp-49h],r10d
fffff803`d998051e 448955bb        mov     dword ptr [rbp-45h],r10d
fffff803`d9980522 448955af        mov     dword ptr [rbp-51h],r10d
fffff803`d9980526 458bf2          mov     r14d,r10d
fffff803`d9980529 448955a7        mov     dword ptr [rbp-59h],r10d
fffff803`d998052d 448955ab        mov     dword ptr [rbp-55h],r10d
fffff803`d9980531 418bf2          mov     esi,r10d
fffff803`d9980534 448955a3        mov     dword ptr [rbp-5Dh],r10d
fffff803`d9980538 458bfa          mov     r15d,r10d
fffff803`d998053b 4c8955e7        mov     qword ptr [rbp-19h],r10
fffff803`d998053f 4c8955d7        mov     qword ptr [rbp-29h],r10
fffff803`d9980543 4885c0          test    rax,rax
fffff803`d9980546 7409            je      nt!CcFlushCachePriv+0x71 (fffff803`d9980551)

nt!CcFlushCachePriv+0x68:
fffff803`d9980548 4885d2          test    rdx,rdx
fffff803`d998054b 0f8535070000    jne     nt!CcFlushCachePriv+0x7a5 (fffff803`d9980c86)

nt!CcFlushCachePriv+0x71:
fffff803`d9980551 488b457f        mov     rax,qword ptr [rbp+7Fh]
fffff803`d9980555 48899c2408010000 mov     qword ptr [rsp+108h],rbx
fffff803`d998055d 4c89ac24c0000000 mov     qword ptr [rsp+0C0h],r13
fffff803`d9980565 4885c0          test    rax,rax
fffff803`d9980568 0f84af0a0000    je      nt!CcFlushCachePriv+0xb3b (fffff803`d998101d)

nt!CcFlushCachePriv+0x8e:
fffff803`d998056e 498bda          mov     rbx,r10
fffff803`d9980571 448910          mov     dword ptr [rax],r10d
fffff803`d9980574 48895df7        mov     qword ptr [rbp-9],rbx
fffff803`d9980578 483bd1          cmp     rdx,rcx
fffff803`d998057b 0f843b050000    je      nt!CcFlushCachePriv+0x5dc (fffff803`d9980abc)

nt!CcFlushCachePriv+0xa1:
fffff803`d9980581 be01000000      mov     esi,1
fffff803`d9980586 8975a3          mov     dword ptr [rbp-5Dh],esi

nt!CcFlushCachePriv+0xa9:
fffff803`d9980589 4c895008        mov     qword ptr [rax+8],r10
fffff803`d998058d 450f20c5        mov     r13,cr8
fffff803`d9980591 b802000000      mov     eax,2
fffff803`d9980596 440f22c0        mov     cr8,rax
fffff803`d998059a 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`d99805a3 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`d99805a7 4883c150        add     rcx,50h
fffff803`d99805ab f705cfda250000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d99805b5 0f85b73a0d00    jne     nt! ?? ::FNODOBFM::`string'+0x4454 (fffff803`d9a54072)

nt!CcFlushCachePriv+0xdb:
fffff803`d99805bb 488bd1          mov     rdx,rcx
fffff803`d99805be 498710          xchg    rdx,qword ptr [r8]
fffff803`d99805c1 4885d2          test    rdx,rdx
fffff803`d99805c4 0f85cb060000    jne     nt!CcFlushCachePriv+0x7b3 (fffff803`d9980c95)

nt!CcFlushCachePriv+0xea:
fffff803`d99805ca 488b7f08        mov     rdi,qword ptr [rdi+8]
fffff803`d99805ce 4885ff          test    rdi,rdi
fffff803`d99805d1 742b            je      nt!CcFlushCachePriv+0x11e (fffff803`d99805fe)

nt!CcFlushCachePriv+0xf3:
fffff803`d99805d3 4585f6          test    r14d,r14d
fffff803`d99805d6 0f859d040000    jne     nt!CcFlushCachePriv+0x599 (fffff803`d9980a79)

nt!CcFlushCachePriv+0xfc:
fffff803`d99805dc ff8704020000    inc     dword ptr [rdi+204h]

nt!CcFlushCachePriv+0x102:
fffff803`d99805e2 8b8798000000    mov     eax,dword ptr [rdi+98h]
fffff803`d99805e8 0fbae012        bt      eax,12h
fffff803`d99805ec 7306            jae     nt!CcFlushCachePriv+0x114 (fffff803`d99805f4)

nt!CcFlushCachePriv+0x10e:
fffff803`d99805ee 83ce04          or      esi,4
fffff803`d99805f1 8975a3          mov     dword ptr [rbp-5Dh],esi

nt!CcFlushCachePriv+0x114:
fffff803`d99805f4 0fbae00d        bt      eax,0Dh
fffff803`d99805f8 0f828e3a0d00    jb      nt! ?? ::FNODOBFM::`string'+0x446e (fffff803`d9a5408c)

nt!CcFlushCachePriv+0x11e:
fffff803`d99805fe 4d85e4          test    r12,r12
fffff803`d9980601 0f855a060000    jne     nt!CcFlushCachePriv+0x781 (fffff803`d9980c61)

nt!CcFlushCachePriv+0x127:
fffff803`d9980607 4885ff          test    rdi,rdi
fffff803`d998060a 740f            je      nt!CcFlushCachePriv+0x13b (fffff803`d998061b)

nt!CcFlushCachePriv+0x12c:
fffff803`d998060c ff4704          inc     dword ptr [rdi+4]
fffff803`d998060f 488b4760        mov     rax,qword ptr [rdi+60h]
fffff803`d9980613 4883e0f0        and     rax,0FFFFFFFFFFFFFFF0h
fffff803`d9980617 4c8b7818        mov     r15,qword ptr [rax+18h]

nt!CcFlushCachePriv+0x13b:
fffff803`d998061b 65488b342528000000 mov   rsi,qword ptr gs:[28h]
fffff803`d9980624 4883c650        add     rsi,50h
fffff803`d9980628 f70552da250000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d9980632 0f85893a0d00    jne     nt! ?? ::FNODOBFM::`string'+0x44b2 (fffff803`d9a540c1)

nt!CcFlushCachePriv+0x158:
fffff803`d9980638 0f0d0e          prefetchw [rsi]
fffff803`d998063b 488b06          mov     rax,qword ptr [rsi]
fffff803`d998063e 4885c0          test    rax,rax
fffff803`d9980641 0f85ad060000    jne     nt!CcFlushCachePriv+0x812 (fffff803`d9980cf4)

nt!CcFlushCachePriv+0x167:
fffff803`d9980647 488b4e08        mov     rcx,qword ptr [rsi+8]
fffff803`d998064b 488bc6          mov     rax,rsi
fffff803`d998064e f04c0fb111      lock cmpxchg qword ptr [rcx],r10
fffff803`d9980653 0f8590060000    jne     nt!CcFlushCachePriv+0x807 (fffff803`d9980ce9)

nt!CcFlushCachePriv+0x179:
fffff803`d9980659 410fb6c5        movzx   eax,r13b
fffff803`d998065d 440f22c0        mov     cr8,rax
fffff803`d9980661 f70525da250000000200 test dword ptr [nt!PerfGlobalGroupMask+0x10 (fffff803`d9bde090)],20000h
fffff803`d998066b 8b75ab          mov     esi,dword ptr [rbp-55h]
fffff803`d998066e 0f85c5070000    jne     nt!CcFlushCachePriv+0x957 (fffff803`d9980e39)

nt!CcFlushCachePriv+0x194:
fffff803`d9980674 448b6d6f        mov     r13d,dword ptr [rbp+6Fh]

nt!CcFlushCachePriv+0x198:
fffff803`d9980678 4585f6          test    r14d,r14d
fffff803`d998067b 7517            jne     nt!CcFlushCachePriv+0x1b4 (fffff803`d9980694)

nt!CcFlushCachePriv+0x19d:
fffff803`d998067d 4885ff          test    rdi,rdi
fffff803`d9980680 0f84f0040000    je      nt!CcFlushCachePriv+0x696 (fffff803`d9980b76)

nt!CcFlushCachePriv+0x1a6:
fffff803`d9980686 8b8798000000    mov     eax,dword ptr [rdi+98h]
fffff803`d998068c a820            test    al,20h
fffff803`d998068e 0f8564070000    jne     nt!CcFlushCachePriv+0x916 (fffff803`d9980df8)

nt!CcFlushCachePriv+0x1b4:
fffff803`d9980694 4885ff          test    rdi,rdi
fffff803`d9980697 0f84d0040000    je      nt!CcFlushCachePriv+0x68d (fffff803`d9980b6d)

nt!CcFlushCachePriv+0x1bd:
fffff803`d998069d 41f6470420      test    byte ptr [r15+4],20h
fffff803`d99806a2 0f85c5040000    jne     nt!CcFlushCachePriv+0x68d (fffff803`d9980b6d)

nt!CcFlushCachePriv+0x1c8:
fffff803`d99806a8 f7879800000000000200 test dword ptr [rdi+98h],20000h
fffff803`d99806b2 0f85b5040000    jne     nt!CcFlushCachePriv+0x68d (fffff803`d9980b6d)

nt!CcFlushCachePriv+0x1d8:
fffff803`d99806b8 85f6            test    esi,esi
fffff803`d99806ba 0f85b6040000    jne     nt!CcFlushCachePriv+0x696 (fffff803`d9980b76)

nt!CcFlushCachePriv+0x1e0:
fffff803`d99806c0 4885ff          test    rdi,rdi
fffff803`d99806c3 0f84a6010000    je      nt!CcFlushCachePriv+0x38f (fffff803`d998086f)

nt!CcFlushCachePriv+0x1e9:
fffff803`d99806c9 f7879800000000000004 test dword ptr [rdi+98h],4000000h
fffff803`d99806d3 0f859d040000    jne     nt!CcFlushCachePriv+0x696 (fffff803`d9980b76)

nt!CcFlushCachePriv+0x1f9:
fffff803`d99806d9 4c8b7d7f        mov     r15,qword ptr [rbp+7Fh]

nt!CcFlushCachePriv+0x1fd:
fffff803`d99806dd 8bc3            mov     eax,ebx

nt!CcFlushCachePriv+0x1ff:
fffff803`d99806df 4885ff          test    rdi,rdi
fffff803`d99806e2 0f847f010000    je      nt!CcFlushCachePriv+0x387 (fffff803`d9980867)

nt!CcFlushCachePriv+0x208:
fffff803`d99806e8 f7879800000000000004 test dword ptr [rdi+98h],4000000h
fffff803`d99806f2 0f85d3000000    jne     nt!CcFlushCachePriv+0x2eb (fffff803`d99807cb)

nt!CcFlushCachePriv+0x218:
fffff803`d99806f8 4d85e4          test    r12,r12
fffff803`d99806fb 0f8577050000    jne     nt!CcFlushCachePriv+0x798 (fffff803`d9980c78)

nt!CcFlushCachePriv+0x221:
fffff803`d9980701 8b556f          mov     edx,dword ptr [rbp+6Fh]
fffff803`d9980704 b901000000      mov     ecx,1
fffff803`d9980709 85d2            test    edx,edx
fffff803`d998070b 8bc1            mov     eax,ecx
fffff803`d998070d 0f45c2          cmovne  eax,edx
fffff803`d9980710 89459f          mov     dword ptr [rbp-61h],eax
fffff803`d9980713 48b82003000080f7ffff mov rax,0FFFFF78000000320h
fffff803`d998071d 4585f6          test    r14d,r14d
fffff803`d9980720 0f857b030000    jne     nt!CcFlushCachePriv+0x5c1 (fffff803`d9980aa1)

nt!CcFlushCachePriv+0x246:
fffff803`d9980726 48895df7        mov     qword ptr [rbp-9],rbx

nt!CcFlushCachePriv+0x24a:
fffff803`d998072a 488d150fe71e00  lea     rdx,[nt!CcDeferredWrites (fffff803`d9b6ee40)]

nt!CcFlushCachePriv+0x251:
fffff803`d9980731 83bfc000000000  cmp     dword ptr [rdi+0C0h],0
fffff803`d9980738 448b6da7        mov     r13d,dword ptr [rbp-59h]
fffff803`d998073c 7509            jne     nt!CcFlushCachePriv+0x267 (fffff803`d9980747)

nt!CcFlushCachePriv+0x25e:
fffff803`d998073e 4585f6          test    r14d,r14d
fffff803`d9980741 0f8591030000    jne     nt!CcFlushCachePriv+0x5f8 (fffff803`d9980ad8)

nt!CcFlushCachePriv+0x267:
fffff803`d9980747 48837f0800      cmp     qword ptr [rdi+8],0
fffff803`d998074c 0f849f080000    je      nt!CcFlushCachePriv+0xb0f (fffff803`d9980ff1)

nt!CcFlushCachePriv+0x272:
fffff803`d9980752 837daf00        cmp     dword ptr [rbp-51h],0
fffff803`d9980756 7569            jne     nt!CcFlushCachePriv+0x2e1 (fffff803`d99807c1)

nt!CcFlushCachePriv+0x278:
fffff803`d9980758 4585f6          test    r14d,r14d
fffff803`d998075b 0f85a4030000    jne     nt!CcFlushCachePriv+0x625 (fffff803`d9980b05)

nt!CcFlushCachePriv+0x281:
fffff803`d9980761 33f6            xor     esi,esi
fffff803`d9980763 8bc6            mov     eax,esi

nt!CcFlushCachePriv+0x285:
fffff803`d9980765 4585f6          test    r14d,r14d
fffff803`d9980768 0f8578030000    jne     nt!CcFlushCachePriv+0x606 (fffff803`d9980ae6)

nt!CcFlushCachePriv+0x28e:
fffff803`d998076e 448b459f        mov     r8d,dword ptr [rbp-61h]

nt!CcFlushCachePriv+0x292:
fffff803`d9980772 4585f6          test    r14d,r14d
fffff803`d9980775 0f857c030000    jne     nt!CcFlushCachePriv+0x617 (fffff803`d9980af7)

nt!CcFlushCachePriv+0x29b:
fffff803`d998077b 4d85e4          test    r12,r12
fffff803`d998077e 0f85eb040000    jne     nt!CcFlushCachePriv+0x78f (fffff803`d9980c6f)

nt!CcFlushCachePriv+0x2a4:
fffff803`d9980784 488bd6          mov     rdx,rsi

nt!CcFlushCachePriv+0x2a7:
fffff803`d9980787 4c8b4d77        mov     r9,qword ptr [rbp+77h]
fffff803`d998078b 88442438        mov     byte ptr [rsp+38h],al
fffff803`d998078f 488d45ff        lea     rax,[rbp-1]
fffff803`d9980793 4889442430      mov     qword ptr [rsp+30h],rax
fffff803`d9980798 488d459f        lea     rax,[rbp-61h]
fffff803`d998079c 488bcf          mov     rcx,rdi
fffff803`d998079f 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d99807a4 488d45bf        lea     rax,[rbp-41h]
fffff803`d99807a8 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d99807ad e82eefffff      call    nt!CcAcquireByteRangeForWrite (fffff803`d997f6e0)
fffff803`d99807b2 84c0            test    al,al
fffff803`d99807b4 0f85d6000000    jne     nt!CcFlushCachePriv+0x3b0 (fffff803`d9980890)

nt!CcFlushCachePriv+0x2da:
fffff803`d99807ba 488d157fe61e00  lea     rdx,[nt!CcDeferredWrites (fffff803`d9b6ee40)]

nt!CcFlushCachePriv+0x2e1:
fffff803`d99807c1 837dbb00        cmp     dword ptr [rbp-45h],0
fffff803`d99807c5 0f858b030000    jne     nt!CcFlushCachePriv+0x676 (fffff803`d9980b56)

nt!CcFlushCachePriv+0x2eb:
fffff803`d99807cb 440f20c6        mov     rsi,cr8
fffff803`d99807cf b802000000      mov     eax,2
fffff803`d99807d4 440f22c0        mov     cr8,rax
fffff803`d99807d8 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`d99807e1 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`d99807e5 4883c150        add     rcx,50h
fffff803`d99807e9 f70591d8250000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d99807f3 0f85093b0d00    jne     nt! ?? ::FNODOBFM::`string'+0x470f (fffff803`d9a54302)

nt!CcFlushCachePriv+0x319:
fffff803`d99807f9 488bd1          mov     rdx,rcx
fffff803`d99807fc 498710          xchg    rdx,qword ptr [r8]
fffff803`d99807ff 4885d2          test    rdx,rdx
fffff803`d9980802 0f85ca040000    jne     nt!CcFlushCachePriv+0x7f0 (fffff803`d9980cd2)

nt!CcFlushCachePriv+0x328:
fffff803`d9980808 ff4f04          dec     dword ptr [rdi+4]
fffff803`d998080b 0f8409050000    je      nt!CcFlushCachePriv+0x838 (fffff803`d9980d1a)

nt!CcFlushCachePriv+0x331:
fffff803`d9980811 4585f6          test    r14d,r14d
fffff803`d9980814 7506            jne     nt!CcFlushCachePriv+0x33c (fffff803`d998081c)

nt!CcFlushCachePriv+0x336:
fffff803`d9980816 ff8f04020000    dec     dword ptr [rdi+204h]

nt!CcFlushCachePriv+0x33c:
fffff803`d998081c 65488b1c2528000000 mov   rbx,qword ptr gs:[28h]
fffff803`d9980825 4883c350        add     rbx,50h
fffff803`d9980829 f70551d8250000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d9980833 0f85b83b0d00    jne     nt! ?? ::FNODOBFM::`string'+0x4816 (fffff803`d9a543f1)

nt!CcFlushCachePriv+0x359:
fffff803`d9980839 0f0d0b          prefetchw [rbx]
fffff803`d998083c 488b03          mov     rax,qword ptr [rbx]
fffff803`d998083f 4885c0          test    rax,rax
fffff803`d9980842 0f85c2040000    jne     nt!CcFlushCachePriv+0x828 (fffff803`d9980d0a)

nt!CcFlushCachePriv+0x368:
fffff803`d9980848 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`d998084c 488bc3          mov     rax,rbx
fffff803`d998084f 33d2            xor     edx,edx
fffff803`d9980851 f0480fb111      lock cmpxchg qword ptr [rcx],rdx
fffff803`d9980856 0f85a6040000    jne     nt!CcFlushCachePriv+0x820 (fffff803`d9980d02)

nt!CcFlushCachePriv+0x37c:
fffff803`d998085c 400fb6c6        movzx   eax,sil
fffff803`d9980860 440f22c0        mov     cr8,rax
fffff803`d9980864 8b45b7          mov     eax,dword ptr [rbp-49h]

nt!CcFlushCachePriv+0x387:
fffff803`d9980867 85c0            test    eax,eax
fffff803`d9980869 0f88943b0d00    js      nt! ?? ::FNODOBFM::`string'+0x4828 (fffff803`d9a54403)

nt!CcFlushCachePriv+0x38f:
fffff803`d998086f 488b9c2408010000 mov     rbx,qword ptr [rsp+108h]
fffff803`d9980877 4c8bac24c0000000 mov     r13,qword ptr [rsp+0C0h]
fffff803`d998087f 4881c4c8000000  add     rsp,0C8h
fffff803`d9980886 415f            pop     r15
fffff803`d9980888 415e            pop     r14
fffff803`d998088a 415c            pop     r12
fffff803`d998088c 5f              pop     rdi
fffff803`d998088d 5e              pop     rsi
fffff803`d998088e 5d              pop     rbp
fffff803`d998088f c3              ret

nt!CcFlushCachePriv+0x3b0:
fffff803`d9980890 8b5da7          mov     ebx,dword ptr [rbp-59h]
fffff803`d9980893 448bee          mov     r13d,esi
fffff803`d9980896 8b759f          mov     esi,dword ptr [rbp-61h]
fffff803`d9980899 448bfe          mov     r15d,esi
fffff803`d998089c 488975cf        mov     qword ptr [rbp-31h],rsi

nt!CcFlushCachePriv+0x3c0:
fffff803`d99808a0 8bc6            mov     eax,esi
fffff803`d99808a2 498bd7          mov     rdx,r15
fffff803`d99808a5 4c8d4db3        lea     r9,[rbp-4Dh]
fffff803`d99808a9 482bd0          sub     rdx,rax
fffff803`d99808ac 4c8d45e7        lea     r8,[rbp-19h]
fffff803`d99808b0 488bcf          mov     rcx,rdi
fffff803`d99808b3 480355bf        add     rdx,qword ptr [rbp-41h]
fffff803`d99808b7 e8a4130000      call    nt!CcGetVirtualAddressIfMapped (fffff803`d9981c60)
fffff803`d99808bc 4885c0          test    rax,rax
fffff803`d99808bf 0f848c030000    je      nt!CcFlushCachePriv+0x771 (fffff803`d9980c51)

nt!CcFlushCachePriv+0x3e5:
fffff803`d99808c5 8b4db3          mov     ecx,dword ptr [rbp-4Dh]
fffff803`d99808c8 3bce            cmp     ecx,esi
fffff803`d99808ca 0f47ce          cmova   ecx,esi
fffff803`d99808cd 894db3          mov     dword ptr [rbp-4Dh],ecx
fffff803`d99808d0 8bd1            mov     edx,ecx
fffff803`d99808d2 488bc8          mov     rcx,rax
fffff803`d99808d5 e8a62c0000      call    nt!MmSetAddressRangeModified (fffff803`d9983580)
fffff803`d99808da 84c0            test    al,al
fffff803`d99808dc 7438            je      nt!CcFlushCachePriv+0x436 (fffff803`d9980916)

nt!CcFlushCachePriv+0x3fe:
fffff803`d99808de 488b4dbf        mov     rcx,qword ptr [rbp-41h]
fffff803`d99808e2 4903cf          add     rcx,r15
fffff803`d99808e5 483b4f28        cmp     rcx,qword ptr [rdi+28h]
fffff803`d99808e9 7d30            jge     nt!CcFlushCachePriv+0x43b (fffff803`d998091b)

nt!CcFlushCachePriv+0x40b:
fffff803`d99808eb 8b870c010000    mov     eax,dword ptr [rdi+10Ch]
fffff803`d99808f1 a80f            test    al,0Fh
fffff803`d99808f3 7426            je      nt!CcFlushCachePriv+0x43b (fffff803`d998091b)

nt!CcFlushCachePriv+0x415:
fffff803`d99808f5 4585f6          test    r14d,r14d
fffff803`d99808f8 7421            je      nt!CcFlushCachePriv+0x43b (fffff803`d998091b)

nt!CcFlushCachePriv+0x41a:
fffff803`d99808fa 85db            test    ebx,ebx
fffff803`d99808fc 751d            jne     nt!CcFlushCachePriv+0x43b (fffff803`d998091b)

nt!CcFlushCachePriv+0x41e:
fffff803`d99808fe 8b8798000000    mov     eax,dword ptr [rdi+98h]
fffff803`d9980904 0fbae009        bt      eax,9
fffff803`d9980908 7211            jb      nt!CcFlushCachePriv+0x43b (fffff803`d998091b)

nt!CcFlushCachePriv+0x42a:
fffff803`d998090a 381da2711800    cmp     byte ptr [nt!CcCoalescingState (fffff803`d9b07ab2)],bl
fffff803`d9980910 7509            jne     nt!CcFlushCachePriv+0x43b (fffff803`d998091b)

nt!CcFlushCachePriv+0x432:
fffff803`d9980912 b001            mov     al,1
fffff803`d9980914 eb07            jmp     nt!CcFlushCachePriv+0x43d (fffff803`d998091d)

nt!CcFlushCachePriv+0x436:
fffff803`d9980916 4585ed          test    r13d,r13d
fffff803`d9980919 75c3            jne     nt!CcFlushCachePriv+0x3fe (fffff803`d99808de)

nt!CcFlushCachePriv+0x43b:
fffff803`d998091b 33c0            xor     eax,eax

nt!CcFlushCachePriv+0x43d:
fffff803`d998091d 440fb6e8        movzx   r13d,al
fffff803`d9980921 488b45e7        mov     rax,qword ptr [rbp-19h]
fffff803`d9980925 83c9ff          or      ecx,0FFFFFFFFh
fffff803`d9980928 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`d998092c f00fc14810      lock xadd dword ptr [rax+10h],ecx
fffff803`d9980931 ffc9            dec     ecx
fffff803`d9980933 6685c9          test    cx,cx
fffff803`d9980936 7510            jne     nt!CcFlushCachePriv+0x468 (fffff803`d9980948)

nt!CcFlushCachePriv+0x458:
fffff803`d9980938 488b8ab8000000  mov     rcx,qword ptr [rdx+0B8h]
fffff803`d998093f 4885c9          test    rcx,rcx
fffff803`d9980942 0f8598370d00    jne     nt! ?? ::FNODOBFM::`string'+0x44d1 (fffff803`d9a540e0)

nt!CcFlushCachePriv+0x468:
fffff803`d9980948 2b75b3          sub     esi,dword ptr [rbp-4Dh]
fffff803`d998094b 0f854fffffff    jne     nt!CcFlushCachePriv+0x3c0 (fffff803`d99808a0)

nt!CcFlushCachePriv+0x471:
fffff803`d9980951 6544012c2528550000 add   dword ptr gs:[5528h],r13d
fffff803`d998095a 488b5df7        mov     rbx,qword ptr [rbp-9]
fffff803`d998095e 4c8b7d7f        mov     r15,qword ptr [rbp+7Fh]
fffff803`d9980962 4585ed          test    r13d,r13d
fffff803`d9980965 0f855d040000    jne     nt!CcFlushCachePriv+0x8e6 (fffff803`d9980dc8)

nt!CcFlushCachePriv+0x48b:
fffff803`d998096b f7051bd7250000000200 test dword ptr [nt!PerfGlobalGroupMask+0x10 (fffff803`d9bde090)],20000h
fffff803`d9980975 0f8505050000    jne     nt!CcFlushCachePriv+0x99e (fffff803`d9980e80)

nt!CcFlushCachePriv+0x49b:
fffff803`d998097b 8b45a3          mov     eax,dword ptr [rbp-5Dh]
fffff803`d998097e 4c8b45cf        mov     r8,qword ptr [rbp-31h]
fffff803`d9980982 488b4d5f        mov     rcx,qword ptr [rbp+5Fh]
fffff803`d9980986 488d55bf        lea     rdx,[rbp-41h]
fffff803`d998098a 4d8bcf          mov     r9,r15
fffff803`d998098d 89442420        mov     dword ptr [rsp+20h],eax
fffff803`d9980991 e862240000      call    nt!MmFlushSection (fffff803`d9982df8)
fffff803`d9980996 418b37          mov     esi,dword ptr [r15]
fffff803`d9980999 85f6            test    esi,esi
fffff803`d998099b 0f8897050000    js      nt!CcFlushCachePriv+0xa56 (fffff803`d9980f38)

nt!CcFlushCachePriv+0x4c1:
fffff803`d99809a1 f7879800000000040000 test dword ptr [rdi+98h],400h
fffff803`d99809ab 0f840c020000    je      nt!CcFlushCachePriv+0x6dd (fffff803`d9980bbd)

nt!CcFlushCachePriv+0x4d1:
fffff803`d99809b1 4585f6          test    r14d,r14d
fffff803`d99809b4 741b            je      nt!CcFlushCachePriv+0x4f1 (fffff803`d99809d1)

nt!CcFlushCachePriv+0x4d6:
fffff803`d99809b6 65ff04252c550000 inc     dword ptr gs:[552Ch]
fffff803`d99809be 8b459f          mov     eax,dword ptr [rbp-61h]
fffff803`d99809c1 05ff0f0000      add     eax,0FFFh
fffff803`d99809c6 c1e80c          shr     eax,0Ch
fffff803`d99809c9 6501042530550000 add     dword ptr gs:[5530h],eax

nt!CcFlushCachePriv+0x4f1:
fffff803`d99809d1 4c8b6dcf        mov     r13,qword ptr [rbp-31h]
fffff803`d99809d5 33c0            xor     eax,eax

nt!CcFlushCachePriv+0x4f7:
fffff803`d99809d7 8b759f          mov     esi,dword ptr [rbp-61h]
fffff803`d99809da 4c8b4dff        mov     r9,qword ptr [rbp-1]
fffff803`d99809de 488d55bf        lea     rdx,[rbp-41h]
fffff803`d99809e2 448bc6          mov     r8d,esi
fffff803`d99809e5 488bcf          mov     rcx,rdi
fffff803`d99809e8 88442420        mov     byte ptr [rsp+20h],al
fffff803`d99809ec e84b110000      call    nt!CcReleaseByteRangeFromWrite (fffff803`d9981b3c)
fffff803`d99809f1 8b45bb          mov     eax,dword ptr [rbp-45h]
fffff803`d99809f4 488d1545e41e00  lea     rdx,[nt!CcDeferredWrites (fffff803`d9b6ee40)]
fffff803`d99809fb 03c6            add     eax,esi
fffff803`d99809fd 8945bb          mov     dword ptr [rbp-45h],eax
fffff803`d9980a00 3d00000400      cmp     eax,40000h
fffff803`d9980a05 0f839b020000    jae     nt!CcFlushCachePriv+0x7c4 (fffff803`d9980ca6)

nt!CcFlushCachePriv+0x52b:
fffff803`d9980a0b 4585f6          test    r14d,r14d
fffff803`d9980a0e 7425            je      nt!CcFlushCachePriv+0x555 (fffff803`d9980a35)

nt!CcFlushCachePriv+0x530:
fffff803`d9980a10 837da700        cmp     dword ptr [rbp-59h],0
fffff803`d9980a14 751f            jne     nt!CcFlushCachePriv+0x555 (fffff803`d9980a35)

nt!CcFlushCachePriv+0x536:
fffff803`d9980a16 48391523e41e00  cmp     qword ptr [nt!CcDeferredWrites (fffff803`d9b6ee40)],rdx
fffff803`d9980a1d 7516            jne     nt!CcFlushCachePriv+0x555 (fffff803`d9980a35)

nt!CcFlushCachePriv+0x53f:
fffff803`d9980a1f 48b82003000080f7ffff mov rax,0FFFFF78000000320h
fffff803`d9980a29 488b00          mov     rax,qword ptr [rax]
fffff803`d9980a2c 483bc3          cmp     rax,rbx
fffff803`d9980a2f 0f8fa7020000    jg      nt!CcFlushCachePriv+0x7fa (fffff803`d9980cdc)

nt!CcFlushCachePriv+0x555:
fffff803`d9980a35 b901000000      mov     ecx,1
fffff803`d9980a3a 4d85e4          test    r12,r12
fffff803`d9980a3d 0f84eefcffff    je      nt!CcFlushCachePriv+0x251 (fffff803`d9980731)

nt!CcFlushCachePriv+0x563:
fffff803`d9980a43 488b45bf        mov     rax,qword ptr [rbp-41h]
fffff803`d9980a47 8b556f          mov     edx,dword ptr [rbp+6Fh]
fffff803`d9980a4a 4903c5          add     rax,r13
fffff803`d9980a4d 8bca            mov     ecx,edx
fffff803`d9980a4f 49030c24        add     rcx,qword ptr [r12]
fffff803`d9980a53 488945bf        mov     qword ptr [rbp-41h],rax
fffff803`d9980a57 483bc8          cmp     rcx,rax
fffff803`d9980a5a 0f8e5afdffff    jle     nt!CcFlushCachePriv+0x2da (fffff803`d99807ba)

nt!CcFlushCachePriv+0x580:
fffff803`d9980a60 418b0c24        mov     ecx,dword ptr [r12]
fffff803`d9980a64 488945ef        mov     qword ptr [rbp-11h],rax
fffff803`d9980a68 2bc8            sub     ecx,eax
fffff803`d9980a6a 03ca            add     ecx,edx
fffff803`d9980a6c 894d9f          mov     dword ptr [rbp-61h],ecx
fffff803`d9980a6f b901000000      mov     ecx,1
fffff803`d9980a74 e9b1fcffff      jmp     nt!CcFlushCachePriv+0x24a (fffff803`d998072a)

nt!CcFlushCachePriv+0x599:
fffff803`d9980a79 f7879800000000000100 test dword ptr [rdi+98h],10000h
fffff803`d9980a83 0f8459fbffff    je      nt!CcFlushCachePriv+0x102 (fffff803`d99805e2)

nt!CcFlushCachePriv+0x5a9:
fffff803`d9980a89 c745a701000000  mov     dword ptr [rbp-59h],1
fffff803`d9980a90 399f04020000    cmp     dword ptr [rdi+204h],ebx
fffff803`d9980a96 0f8446fbffff    je      nt!CcFlushCachePriv+0x102 (fffff803`d99805e2)

nt!CcFlushCachePriv+0x5bc:
fffff803`d9980a9c e9df350d00      jmp     nt! ?? ::FNODOBFM::`string'+0x4462 (fffff803`d9a54080)

nt!CcFlushCachePriv+0x5c1:
fffff803`d9980aa1 488b18          mov     rbx,qword ptr [rax]
fffff803`d9980aa4 b8cdcccccc      mov     eax,0CCCCCCCDh
fffff803`d9980aa9 f725c9e01e00    mul     eax,dword ptr [nt!CcIdleDelayTick (fffff803`d9b6eb78)]
fffff803`d9980aaf c1ea03          shr     edx,3
fffff803`d9980ab2 8bc2            mov     eax,edx
fffff803`d9980ab4 4803d8          add     rbx,rax
fffff803`d9980ab7 e96afcffff      jmp     nt!CcFlushCachePriv+0x246 (fffff803`d9980726)

nt!CcFlushCachePriv+0x5dc:
fffff803`d9980abc 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9980ac0 c70016000080    mov     dword ptr [rax],80000016h
fffff803`d9980ac6 41be01000000    mov     r14d,1
fffff803`d9980acc 48894dd7        mov     qword ptr [rbp-29h],rcx
fffff803`d9980ad0 4d8be2          mov     r12,r10
fffff803`d9980ad3 e9b1faffff      jmp     nt!CcFlushCachePriv+0xa9 (fffff803`d9980589)

nt!CcFlushCachePriv+0x5f8:
fffff803`d9980ad8 4585ed          test    r13d,r13d
fffff803`d9980adb 0f84e0fcffff    je      nt!CcFlushCachePriv+0x2e1 (fffff803`d99807c1)

nt!CcFlushCachePriv+0x601:
fffff803`d9980ae1 e961fcffff      jmp     nt!CcFlushCachePriv+0x267 (fffff803`d9980747)

nt!CcFlushCachePriv+0x606:
fffff803`d9980ae6 4585ed          test    r13d,r13d
fffff803`d9980ae9 0f857ffcffff    jne     nt!CcFlushCachePriv+0x28e (fffff803`d998076e)

nt!CcFlushCachePriv+0x60f:
fffff803`d9980aef 448bc6          mov     r8d,esi
fffff803`d9980af2 e97bfcffff      jmp     nt!CcFlushCachePriv+0x292 (fffff803`d9980772)

nt!CcFlushCachePriv+0x617:
fffff803`d9980af7 4585ed          test    r13d,r13d
fffff803`d9980afa 0f8484fcffff    je      nt!CcFlushCachePriv+0x2a4 (fffff803`d9980784)

nt!CcFlushCachePriv+0x620:
fffff803`d9980b00 e976fcffff      jmp     nt!CcFlushCachePriv+0x29b (fffff803`d998077b)

nt!CcFlushCachePriv+0x625:
fffff803`d9980b05 4032f6          xor     sil,sil
fffff803`d9980b08 f0480fba2d36e01e0000 lock bts qword ptr [nt!CcLowPriorityWorkerThreadLock (fffff803`d9b6eb48)],0
fffff803`d9980b12 0f82ed020000    jb      nt!CcFlushCachePriv+0x923 (fffff803`d9980e05)

nt!CcFlushCachePriv+0x638:
fffff803`d9980b18 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9980b21 400fb6f6        movzx   esi,sil
fffff803`d9980b25 48390514e01e00  cmp     qword ptr [nt!CcLowPriWorkerThread (fffff803`d9b6eb40)],rax
fffff803`d9980b2c 0f44f1          cmove   esi,ecx
fffff803`d9980b2f 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`d9980b33 f0480fc1050ce01e00 lock xadd qword ptr [nt!CcLowPriorityWorkerThreadLock (fffff803`d9b6eb48)],rax
fffff803`d9980b3c a802            test    al,2
fffff803`d9980b3e 0f85d7020000    jne     nt!CcFlushCachePriv+0x939 (fffff803`d9980e1b)

nt!CcFlushCachePriv+0x664:
fffff803`d9980b44 4084f6          test    sil,sil
fffff803`d9980b47 0f8414fcffff    je      nt!CcFlushCachePriv+0x281 (fffff803`d9980761)

nt!CcFlushCachePriv+0x66d:
fffff803`d9980b4d 8bc1            mov     eax,ecx
fffff803`d9980b4f 33f6            xor     esi,esi
fffff803`d9980b51 e90ffcffff      jmp     nt!CcFlushCachePriv+0x285 (fffff803`d9980765)

nt!CcFlushCachePriv+0x676:
fffff803`d9980b56 483915e3e21e00  cmp     qword ptr [nt!CcDeferredWrites (fffff803`d9b6ee40)],rdx
fffff803`d9980b5d 0f8468fcffff    je      nt!CcFlushCachePriv+0x2eb (fffff803`d99807cb)

nt!CcFlushCachePriv+0x683:
fffff803`d9980b63 e86c820600      call    nt!CcPostDeferredWrites (fffff803`d99e8dd4)
fffff803`d9980b68 e95efcffff      jmp     nt!CcFlushCachePriv+0x2eb (fffff803`d99807cb)

nt!CcFlushCachePriv+0x68d:
fffff803`d9980b6d 4585f6          test    r14d,r14d
fffff803`d9980b70 0f8542fbffff    jne     nt!CcFlushCachePriv+0x1d8 (fffff803`d99806b8)

nt!CcFlushCachePriv+0x696:
fffff803`d9980b76 f70510d5250000000200 test dword ptr [nt!PerfGlobalGroupMask+0x10 (fffff803`d9bde090)],20000h
fffff803`d9980b80 8b75a3          mov     esi,dword ptr [rbp-5Dh]
fffff803`d9980b83 0f8594030000    jne     nt!CcFlushCachePriv+0xa3b (fffff803`d9980f1d)

nt!CcFlushCachePriv+0x6a9:
fffff803`d9980b89 4885ff          test    rdi,rdi
fffff803`d9980b8c 0f8526010000    jne     nt!CcFlushCachePriv+0x7d6 (fffff803`d9980cb8)

nt!CcFlushCachePriv+0x6b2:
fffff803`d9980b92 4c8b7d7f        mov     r15,qword ptr [rbp+7Fh]
fffff803`d9980b96 488b4d5f        mov     rcx,qword ptr [rbp+5Fh]
fffff803`d9980b9a 458bc5          mov     r8d,r13d
fffff803`d9980b9d 498bd4          mov     rdx,r12
fffff803`d9980ba0 4d8bcf          mov     r9,r15
fffff803`d9980ba3 89742420        mov     dword ptr [rsp+20h],esi
fffff803`d9980ba7 e84c220000      call    nt!MmFlushSection (fffff803`d9982df8)
fffff803`d9980bac 458b1f          mov     r11d,dword ptr [r15]
fffff803`d9980baf 4585db          test    r11d,r11d
fffff803`d9980bb2 0f8925fbffff    jns     nt!CcFlushCachePriv+0x1fd (fffff803`d99806dd)

nt!CcFlushCachePriv+0x6d8:
fffff803`d9980bb8 e918350d00      jmp     nt! ?? ::FNODOBFM::`string'+0x44c6 (fffff803`d9a540d5)

nt!CcFlushCachePriv+0x6dd:
fffff803`d9980bbd 450f20c5        mov     r13,cr8
fffff803`d9980bc1 b802000000      mov     eax,2
fffff803`d9980bc6 440f22c0        mov     cr8,rax
fffff803`d9980bca 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`d9980bd3 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`d9980bd7 4883c150        add     rcx,50h
fffff803`d9980bdb f7059fd4250000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d9980be5 0f8505350d00    jne     nt! ?? ::FNODOBFM::`string'+0x44e1 (fffff803`d9a540f0)

nt!CcFlushCachePriv+0x70b:
fffff803`d9980beb 488bd1          mov     rdx,rcx
fffff803`d9980bee 498710          xchg    rdx,qword ptr [r8]
fffff803`d9980bf1 4885d2          test    rdx,rdx
fffff803`d9980bf4 0f85c6020000    jne     nt!CcFlushCachePriv+0x9de (fffff803`d9980ec0)

nt!CcFlushCachePriv+0x71a:
fffff803`d9980bfa 818f9800000000040000 or  dword ptr [rdi+98h],400h
fffff803`d9980c04 65488b342528000000 mov   rsi,qword ptr gs:[28h]
fffff803`d9980c0d 4883c650        add     rsi,50h
fffff803`d9980c11 f70569d4250000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d9980c1b 0f85dd340d00    jne     nt! ?? ::FNODOBFM::`string'+0x44ef (fffff803`d9a540fe)

nt!CcFlushCachePriv+0x741:
fffff803`d9980c21 0f0d0e          prefetchw [rsi]
fffff803`d9980c24 488b06          mov     rax,qword ptr [rsi]
fffff803`d9980c27 4885c0          test    rax,rax
fffff803`d9980c2a 0f8578020000    jne     nt!CcFlushCachePriv+0x9c6 (fffff803`d9980ea8)

nt!CcFlushCachePriv+0x750:
fffff803`d9980c30 488b4e08        mov     rcx,qword ptr [rsi+8]
fffff803`d9980c34 488bc6          mov     rax,rsi
fffff803`d9980c37 33d2            xor     edx,edx
fffff803`d9980c39 f0480fb111      lock cmpxchg qword ptr [rcx],rdx
fffff803`d9980c3e 0f855c020000    jne     nt!CcFlushCachePriv+0x9be (fffff803`d9980ea0)

nt!CcFlushCachePriv+0x764:
fffff803`d9980c44 410fb6c5        movzx   eax,r13b
fffff803`d9980c48 440f22c0        mov     cr8,rax
fffff803`d9980c4c e960fdffff      jmp     nt!CcFlushCachePriv+0x4d1 (fffff803`d99809b1)

nt!CcFlushCachePriv+0x771:
fffff803`d9980c51 8b45b3          mov     eax,dword ptr [rbp-4Dh]
fffff803`d9980c54 3bc6            cmp     eax,esi
fffff803`d9980c56 0f47c6          cmova   eax,esi
fffff803`d9980c59 8945b3          mov     dword ptr [rbp-4Dh],eax
fffff803`d9980c5c e9e7fcffff      jmp     nt!CcFlushCachePriv+0x468 (fffff803`d9980948)

nt!CcFlushCachePriv+0x781:
fffff803`d9980c61 4585c9          test    r9d,r9d
fffff803`d9980c64 0f859df9ffff    jne     nt!CcFlushCachePriv+0x127 (fffff803`d9980607)

nt!CcFlushCachePriv+0x78a:
fffff803`d9980c6a e92e340d00      jmp     nt! ?? ::FNODOBFM::`string'+0x4486 (fffff803`d9a5409d)

nt!CcFlushCachePriv+0x78f:
fffff803`d9980c6f 488d55ef        lea     rdx,[rbp-11h]
fffff803`d9980c73 e90ffbffff      jmp     nt!CcFlushCachePriv+0x2a7 (fffff803`d9980787)

nt!CcFlushCachePriv+0x798:
fffff803`d9980c78 498b0424        mov     rax,qword ptr [r12]
fffff803`d9980c7c 488945ef        mov     qword ptr [rbp-11h],rax
fffff803`d9980c80 e97cfaffff      jmp     nt!CcFlushCachePriv+0x221 (fffff803`d9980701)

nt!CcFlushCachePriv+0x7a5:
fffff803`d9980c86 483bd1          cmp     rdx,rcx
fffff803`d9980c89 0f84c2f8ffff    je      nt!CcFlushCachePriv+0x71 (fffff803`d9980551)

nt!CcFlushCachePriv+0x7ae:
fffff803`d9980c8f e9c0330d00      jmp     nt! ?? ::FNODOBFM::`string'+0x4436 (fffff803`d9a54054)

nt!CcFlushCachePriv+0x7b3:
fffff803`d9980c95 e84695faff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)

nt!CcFlushCachePriv+0x7b8:
fffff803`d9980c9a 448b4d6f        mov     r9d,dword ptr [rbp+6Fh]
fffff803`d9980c9e 4533d2          xor     r10d,r10d
fffff803`d9980ca1 e924f9ffff      jmp     nt!CcFlushCachePriv+0xea (fffff803`d99805ca)

nt!CcFlushCachePriv+0x7c4:
fffff803`d9980ca6 48391593e11e00  cmp     qword ptr [nt!CcDeferredWrites (fffff803`d9b6ee40)],rdx
fffff803`d9980cad 0f8458fdffff    je      nt!CcFlushCachePriv+0x52b (fffff803`d9980a0b)

nt!CcFlushCachePriv+0x7d1:
fffff803`d9980cb3 e9f6350d00      jmp     nt! ?? ::FNODOBFM::`string'+0x46bb (fffff803`d9a542ae)

nt!CcFlushCachePriv+0x7d6:
fffff803`d9980cb8 4533c9          xor     r9d,r9d
fffff803`d9980cbb 458bc5          mov     r8d,r13d
fffff803`d9980cbe 498bd4          mov     rdx,r12
fffff803`d9980cc1 488bcf          mov     rcx,rdi
fffff803`d9980cc4 885c2420        mov     byte ptr [rsp+20h],bl
fffff803`d9980cc8 e83319fcff      call    nt!CcUnmapVacbArray (fffff803`d9942600)
fffff803`d9980ccd e9c0feffff      jmp     nt!CcFlushCachePriv+0x6b2 (fffff803`d9980b92)

nt!CcFlushCachePriv+0x7f0:
fffff803`d9980cd2 e80995faff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d9980cd7 e92cfbffff      jmp     nt!CcFlushCachePriv+0x328 (fffff803`d9980808)

nt!CcFlushCachePriv+0x7fa:
fffff803`d9980cdc 49c747085e8a0000 mov     qword ptr [r15+8],8A5Eh
fffff803`d9980ce4 e9d8faffff      jmp     nt!CcFlushCachePriv+0x2e1 (fffff803`d99807c1)

nt!CcFlushCachePriv+0x807:
fffff803`d9980ce9 488bce          mov     rcx,rsi
fffff803`d9980cec e87f38fcff      call    nt!KxWaitForLockChainValid (fffff803`d9944570)
fffff803`d9980cf1 4533d2          xor     r10d,r10d

nt!CcFlushCachePriv+0x812:
fffff803`d9980cf4 f04883700801    lock xor qword ptr [rax+8],1
fffff803`d9980cfa 4c8916          mov     qword ptr [rsi],r10
fffff803`d9980cfd e957f9ffff      jmp     nt!CcFlushCachePriv+0x179 (fffff803`d9980659)

nt!CcFlushCachePriv+0x820:
fffff803`d9980d02 488bcb          mov     rcx,rbx
fffff803`d9980d05 e86638fcff      call    nt!KxWaitForLockChainValid (fffff803`d9944570)

nt!CcFlushCachePriv+0x828:
fffff803`d9980d0a f04883700801    lock xor qword ptr [rax+8],1
fffff803`d9980d10 33c0            xor     eax,eax
fffff803`d9980d12 488903          mov     qword ptr [rbx],rax
fffff803`d9980d15 e942fbffff      jmp     nt!CcFlushCachePriv+0x37c (fffff803`d998085c)

nt!CcFlushCachePriv+0x838:
fffff803`d9980d1a c60560e01e0001  mov     byte ptr [nt!LazyWriter+0x81 (fffff803`d9b6ed81)],1
fffff803`d9980d21 8b8798000000    mov     eax,dword ptr [rdi+98h]
fffff803`d9980d27 0fbae010        bt      eax,10h
fffff803`d9980d2b 0f82df350d00    jb      nt! ?? ::FNODOBFM::`string'+0x471d (fffff803`d9a54310)

nt!CcFlushCachePriv+0x84f:
fffff803`d9980d31 837f7000        cmp     dword ptr [rdi+70h],0
fffff803`d9980d35 0f85d6faffff    jne     nt!CcFlushCachePriv+0x331 (fffff803`d9980811)

nt!CcFlushCachePriv+0x859:
fffff803`d9980d3b a820            test    al,20h
fffff803`d9980d3d 0f85cefaffff    jne     nt!CcFlushCachePriv+0x331 (fffff803`d9980811)

nt!CcFlushCachePriv+0x861:
fffff803`d9980d43 4532c0          xor     r8b,r8b
fffff803`d9980d46 4883bf1001000000 cmp     qword ptr [rdi+110h],0
fffff803`d9980d4e 0f8513030000    jne     nt!CcFlushCachePriv+0xb85 (fffff803`d9981067)

nt!CcFlushCachePriv+0x872:
fffff803`d9980d54 0fbae019        bt      eax,19h
fffff803`d9980d58 0f826c010000    jb      nt!CcFlushCachePriv+0x9e8 (fffff803`d9980eca)

nt!CcFlushCachePriv+0x87c:
fffff803`d9980d5e 0fbae018        bt      eax,18h
fffff803`d9980d62 0f8262010000    jb      nt!CcFlushCachePriv+0x9e8 (fffff803`d9980eca)

nt!CcFlushCachePriv+0x886:
fffff803`d9980d68 488d8788000000  lea     rax,[rdi+88h]
fffff803`d9980d6f 488b10          mov     rdx,qword ptr [rax]
fffff803`d9980d72 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9980d76 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9980d7a 0f8563360d00    jne     nt! ?? ::FNODOBFM::`string'+0x4808 (fffff803`d9a543e3)

nt!CcFlushCachePriv+0x89e:
fffff803`d9980d80 483901          cmp     qword ptr [rcx],rax
fffff803`d9980d83 0f855a360d00    jne     nt! ?? ::FNODOBFM::`string'+0x4808 (fffff803`d9a543e3)

nt!CcFlushCachePriv+0x8a7:
fffff803`d9980d89 488911          mov     qword ptr [rcx],rdx
fffff803`d9980d8c 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9980d90 488b0d51de1e00  mov     rcx,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)]
fffff803`d9980d97 488d1542de1e00  lea     rdx,[nt!CcLazyWriterCursor (fffff803`d9b6ebe0)]
fffff803`d9980d9e 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9980da2 488910          mov     qword ptr [rax],rdx
fffff803`d9980da5 483911          cmp     qword ptr [rcx],rdx
fffff803`d9980da8 0f852e360d00    jne     nt! ?? ::FNODOBFM::`string'+0x4801 (fffff803`d9a543dc)

nt!CcFlushCachePriv+0x8cc:
fffff803`d9980dae 488901          mov     qword ptr [rcx],rax
fffff803`d9980db1 33d2            xor     edx,edx
fffff803`d9980db3 410fb6c8        movzx   ecx,r8b
fffff803`d9980db7 4889052ade1e00  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)],rax
fffff803`d9980dbe e8bdc4f3ff      call    nt!CcScheduleLazyWriteScan (fffff803`d98bd280)
fffff803`d9980dc3 e949faffff      jmp     nt!CcFlushCachePriv+0x331 (fffff803`d9980811)

nt!CcFlushCachePriv+0x8e6:
fffff803`d9980dc8 b905000000      mov     ecx,5
fffff803`d9980dcd e8ee4afbff      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d9980dd2 4c8b6dcf        mov     r13,qword ptr [rbp-31h]
fffff803`d9980dd6 498bcd          mov     rcx,r13
fffff803`d9980dd9 0fb6d0          movzx   edx,al
fffff803`d9980ddc 48c1e90c        shr     rcx,0Ch
fffff803`d9980de0 48010d216f1800  add     qword ptr [nt!CcPagesSkippedDueToHotSpot (fffff803`d9b07d08)],rcx
fffff803`d9980de7 b905000000      mov     ecx,5
fffff803`d9980dec e83f16fcff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9980df1 b001            mov     al,1
fffff803`d9980df3 e9dffbffff      jmp     nt!CcFlushCachePriv+0x4f7 (fffff803`d99809d7)

nt!CcFlushCachePriv+0x916:
fffff803`d9980df8 488bcf          mov     rcx,rdi
fffff803`d9980dfb e854aef2ff      call    nt!CcBoostLowPriorityWorkerThread (fffff803`d98abc54)
fffff803`d9980e00 e98ff8ffff      jmp     nt!CcFlushCachePriv+0x1b4 (fffff803`d9980694)

nt!CcFlushCachePriv+0x923:
fffff803`d9980e05 488d0d3cdd1e00  lea     rcx,[nt!CcLowPriorityWorkerThreadLock (fffff803`d9b6eb48)]
fffff803`d9980e0c e8ef45feff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9980e11 b901000000      mov     ecx,1
fffff803`d9980e16 e9fdfcffff      jmp     nt!CcFlushCachePriv+0x638 (fffff803`d9980b18)

nt!CcFlushCachePriv+0x939:
fffff803`d9980e1b a804            test    al,4
fffff803`d9980e1d 0f8521fdffff    jne     nt!CcFlushCachePriv+0x664 (fffff803`d9980b44)

nt!CcFlushCachePriv+0x941:
fffff803`d9980e23 488d0d1edd1e00  lea     rcx,[nt!CcLowPriorityWorkerThreadLock (fffff803`d9b6eb48)]
fffff803`d9980e2a e8e581feff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9980e2f b901000000      mov     ecx,1
fffff803`d9980e34 e90bfdffff      jmp     nt!CcFlushCachePriv+0x664 (fffff803`d9980b44)

nt!CcFlushCachePriv+0x957:
fffff803`d9980e39 83fe01          cmp     esi,1
fffff803`d9980e3c 0f8404020000    je      nt!CcFlushCachePriv+0xb64 (fffff803`d9981046)

nt!CcFlushCachePriv+0x960:
fffff803`d9980e42 418bd2          mov     edx,r10d

nt!CcFlushCachePriv+0x963:
fffff803`d9980e45 837da701        cmp     dword ptr [rbp-59h],1
fffff803`d9980e49 0f84c4010000    je      nt!CcFlushCachePriv+0xb31 (fffff803`d9981013)

nt!CcFlushCachePriv+0x96d:
fffff803`d9980e4f 418bca          mov     ecx,r10d

nt!CcFlushCachePriv+0x970:
fffff803`d9980e52 448b6d6f        mov     r13d,dword ptr [rbp+6Fh]
fffff803`d9980e56 88542430        mov     byte ptr [rsp+30h],dl
fffff803`d9980e5a 884c2428        mov     byte ptr [rsp+28h],cl
fffff803`d9980e5e 488b4dd7        mov     rcx,qword ptr [rbp-29h]
fffff803`d9980e62 4183fe01        cmp     r14d,1
fffff803`d9980e66 4d8bc4          mov     r8,r12
fffff803`d9980e69 0f94c0          sete    al
fffff803`d9980e6c 458bcd          mov     r9d,r13d
fffff803`d9980e6f 488bd7          mov     rdx,rdi
fffff803`d9980e72 88442420        mov     byte ptr [rsp+20h],al
fffff803`d9980e76 e859d80500      call    nt!CcPerfLogFlushCache (fffff803`d99de6d4)
fffff803`d9980e7b e9f8f7ffff      jmp     nt!CcFlushCachePriv+0x198 (fffff803`d9980678)

nt!CcFlushCachePriv+0x99e:
fffff803`d9980e80 8b45a3          mov     eax,dword ptr [rbp-5Dh]
fffff803`d9980e83 448b4d9f        mov     r9d,dword ptr [rbp-61h]
fffff803`d9980e87 488b4dd7        mov     rcx,qword ptr [rbp-29h]
fffff803`d9980e8b 4c8d45bf        lea     r8,[rbp-41h]
fffff803`d9980e8f 488bd7          mov     rdx,rdi
fffff803`d9980e92 89442420        mov     dword ptr [rsp+20h],eax
fffff803`d9980e96 e885da0500      call    nt!CcPerfLogFlushSection (fffff803`d99de920)
fffff803`d9980e9b e9dbfaffff      jmp     nt!CcFlushCachePriv+0x49b (fffff803`d998097b)

nt!CcFlushCachePriv+0x9be:
fffff803`d9980ea0 488bce          mov     rcx,rsi
fffff803`d9980ea3 e8c836fcff      call    nt!KxWaitForLockChainValid (fffff803`d9944570)

nt!CcFlushCachePriv+0x9c6:
fffff803`d9980ea8 f04883700801    lock xor qword ptr [rax+8],1
fffff803`d9980eae 33c0            xor     eax,eax
fffff803`d9980eb0 488906          mov     qword ptr [rsi],rax
fffff803`d9980eb3 410fb6c5        movzx   eax,r13b
fffff803`d9980eb7 440f22c0        mov     cr8,rax
fffff803`d9980ebb e9f1faffff      jmp     nt!CcFlushCachePriv+0x4d1 (fffff803`d99809b1)

nt!CcFlushCachePriv+0x9de:
fffff803`d9980ec0 e81b93faff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d9980ec5 e930fdffff      jmp     nt!CcFlushCachePriv+0x71a (fffff803`d9980bfa)

nt!CcFlushCachePriv+0x9e8:
fffff803`d9980eca 488b5778        mov     rdx,qword ptr [rdi+78h]
fffff803`d9980ece 488d4778        lea     rax,[rdi+78h]
fffff803`d9980ed2 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9980ed6 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9980eda 0f850a350d00    jne     nt! ?? ::FNODOBFM::`string'+0x480f (fffff803`d9a543ea)

nt!CcFlushCachePriv+0x9fe:
fffff803`d9980ee0 483901          cmp     qword ptr [rcx],rax
fffff803`d9980ee3 0f8501350d00    jne     nt! ?? ::FNODOBFM::`string'+0x480f (fffff803`d9a543ea)

nt!CcFlushCachePriv+0xa07:
fffff803`d9980ee9 488911          mov     qword ptr [rcx],rdx
fffff803`d9980eec 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9980ef0 488b0db1dc1e00  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)]
fffff803`d9980ef7 488d15a2dc1e00  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`d9b6eba0)]
fffff803`d9980efe 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9980f02 488910          mov     qword ptr [rax],rdx
fffff803`d9980f05 483911          cmp     qword ptr [rcx],rdx
fffff803`d9980f08 0f85c7340d00    jne     nt! ?? ::FNODOBFM::`string'+0x47fa (fffff803`d9a543d5)

nt!CcFlushCachePriv+0xa2c:
fffff803`d9980f0e 488901          mov     qword ptr [rcx],rax
fffff803`d9980f11 48890590dc1e00  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)],rax
fffff803`d9980f18 e94bfeffff      jmp     nt!CcFlushCachePriv+0x886 (fffff803`d9980d68)

nt!CcFlushCachePriv+0xa3b:
fffff803`d9980f1d 488b4dd7        mov     rcx,qword ptr [rbp-29h]
fffff803`d9980f21 458bcd          mov     r9d,r13d
fffff803`d9980f24 4d8bc4          mov     r8,r12
fffff803`d9980f27 488bd7          mov     rdx,rdi
fffff803`d9980f2a 89742420        mov     dword ptr [rsp+20h],esi
fffff803`d9980f2e e8edd90500      call    nt!CcPerfLogFlushSection (fffff803`d99de920)
fffff803`d9980f33 e951fcffff      jmp     nt!CcFlushCachePriv+0x6a9 (fffff803`d9980b89)

nt!CcFlushCachePriv+0xa56:
fffff803`d9980f38 837f0401        cmp     dword ptr [rdi+4],1
fffff803`d9980f3c 488b45bf        mov     rax,qword ptr [rbp-41h]
fffff803`d9980f40 488945df        mov     qword ptr [rbp-21h],rax
fffff803`d9980f44 8b459f          mov     eax,dword ptr [rbp-61h]
fffff803`d9980f47 8945ab          mov     dword ptr [rbp-55h],eax
fffff803`d9980f4a 0f8293330d00    jb      nt! ?? ::FNODOBFM::`string'+0x46f0 (fffff803`d9a542e3)

nt!CcFlushCachePriv+0xa6e:
fffff803`d9980f50 488d4f60        lea     rcx,[rdi+60h]
fffff803`d9980f54 e837eef9ff      call    nt!ObFastReferenceObject (fffff803`d991fd90)
fffff803`d9980f59 4c8be8          mov     r13,rax
fffff803`d9980f5c 4885c0          test    rax,rax
fffff803`d9980f5f 7536            jne     nt!CcFlushCachePriv+0xab5 (fffff803`d9980f97)

nt!CcFlushCachePriv+0xa7f:
fffff803`d9980f61 b911000000      mov     ecx,11h
fffff803`d9980f66 f0480fb10d09df1e00 lock cmpxchg qword ptr [nt!CcChangeSharedCacheMapFileLock (fffff803`d9b6ee78)],rcx
fffff803`d9980f6f 0f859b310d00    jne     nt! ?? ::FNODOBFM::`string'+0x4501 (fffff803`d9a54110)

nt!CcFlushCachePriv+0xa93:
fffff803`d9980f75 488d4f60        lea     rcx,[rdi+60h]
fffff803`d9980f79 e8aa2dfcff      call    nt!ObFastReferenceObjectLocked (fffff803`d9943d28)
fffff803`d9980f7e 33c9            xor     ecx,ecx
fffff803`d9980f80 4c8be8          mov     r13,rax
fffff803`d9980f83 b811000000      mov     eax,11h
fffff803`d9980f88 f0480fb10de7de1e00 lock cmpxchg qword ptr [nt!CcChangeSharedCacheMapFileLock (fffff803`d9b6ee78)],rcx
fffff803`d9980f91 0f858b310d00    jne     nt! ?? ::FNODOBFM::`string'+0x4513 (fffff803`d9a54122)

nt!CcFlushCachePriv+0xab5:
fffff803`d9980f97 498b4508        mov     rax,qword ptr [r13+8]
fffff803`d9980f9b 4c8d4f60        lea     r9,[rdi+60h]
fffff803`d9980f9f 8b4034          mov     eax,dword ptr [rax+34h]
fffff803`d9980fa2 83e010          and     eax,10h
fffff803`d9980fa5 8945c7          mov     dword ptr [rbp-39h],eax
fffff803`d9980fa8 410f0d09        prefetchw [r9]
fffff803`d9980fac 498b01          mov     rax,qword ptr [r9]
fffff803`d9980faf 488bc8          mov     rcx,rax
fffff803`d9980fb2 4933cd          xor     rcx,r13
fffff803`d9980fb5 4883f90f        cmp     rcx,0Fh
fffff803`d9980fb9 7349            jae     nt!CcFlushCachePriv+0xb22 (fffff803`d9981004)

nt!CcFlushCachePriv+0xad9:
fffff803`d9980fbb 488d5001        lea     rdx,[rax+1]
fffff803`d9980fbf f0490fb111      lock cmpxchg qword ptr [r9],rdx
fffff803`d9980fc4 0f856a310d00    jne     nt! ?? ::FNODOBFM::`string'+0x4525 (fffff803`d9a54134)

nt!CcFlushCachePriv+0xae8:
fffff803`d9980fca 8b55c7          mov     edx,dword ptr [rbp-39h]
fffff803`d9980fcd 448bc6          mov     r8d,esi
fffff803`d9980fd0 b901000000      mov     ecx,1
fffff803`d9980fd5 e8c2570000      call    nt!MmIsWriteErrorFatal (fffff803`d998679c)
fffff803`d9980fda 85c0            test    eax,eax
fffff803`d9980fdc 0f856b310d00    jne     nt! ?? ::FNODOBFM::`string'+0x453e (fffff803`d9a5414d)

nt!CcFlushCachePriv+0xb00:
fffff803`d9980fe2 4c8b6dcf        mov     r13,qword ptr [rbp-31h]
fffff803`d9980fe6 894daf          mov     dword ptr [rbp-51h],ecx
fffff803`d9980fe9 0fb6c1          movzx   eax,cl
fffff803`d9980fec e9e6f9ffff      jmp     nt!CcFlushCachePriv+0x4f7 (fffff803`d99809d7)

nt!CcFlushCachePriv+0xb0f:
fffff803`d9980ff1 8b8798000000    mov     eax,dword ptr [rdi+98h]
fffff803`d9980ff7 a804            test    al,4
fffff803`d9980ff9 0f8553f7ffff    jne     nt!CcFlushCachePriv+0x272 (fffff803`d9980752)

nt!CcFlushCachePriv+0xb1d:
fffff803`d9980fff e9bdf7ffff      jmp     nt!CcFlushCachePriv+0x2e1 (fffff803`d99807c1)

nt!CcFlushCachePriv+0xb22:
fffff803`d9981004 ba44666c74      mov     edx,746C6644h
fffff803`d9981009 498bcd          mov     rcx,r13
fffff803`d998100c e85f75fbff      call    nt!ObDereferenceObjectDeferDeleteWithTag (fffff803`d9938570)
fffff803`d9981011 ebb7            jmp     nt!CcFlushCachePriv+0xae8 (fffff803`d9980fca)

nt!CcFlushCachePriv+0xb31:
fffff803`d9981013 b901000000      mov     ecx,1
fffff803`d9981018 e935feffff      jmp     nt!CcFlushCachePriv+0x970 (fffff803`d9980e52)

nt!CcFlushCachePriv+0xb3b:
fffff803`d998101d 488d4507        lea     rax,[rbp+7]
fffff803`d9981021 4889457f        mov     qword ptr [rbp+7Fh],rax
fffff803`d9981025 e944f5ffff      jmp     nt!CcFlushCachePriv+0x8e (fffff803`d998056e)

nt!CcFlushCachePriv+0xb48:
fffff803`d998102a 85c9            test    ecx,ecx
fffff803`d998102c 0f849ff9ffff    je      nt!CcFlushCachePriv+0x4f1 (fffff803`d99809d1)

nt!CcFlushCachePriv+0xb50:
fffff803`d9981032 4c8b6dcf        mov     r13,qword ptr [rbp-31h]
fffff803`d9981036 b001            mov     al,1
fffff803`d9981038 e99af9ffff      jmp     nt!CcFlushCachePriv+0x4f7 (fffff803`d99809d7)

nt!CcFlushCachePriv+0xb5b:
fffff803`d998103d 4983f401        xor     r12,1
fffff803`d9981041 e9b8f5ffff      jmp     nt!CcFlushCachePriv+0x11e (fffff803`d99805fe)

nt!CcFlushCachePriv+0xb64:
fffff803`d9981046 ba01000000      mov     edx,1
fffff803`d998104b e9f5fdffff      jmp     nt!CcFlushCachePriv+0x963 (fffff803`d9980e45)

nt!CcFlushCachePriv+0xb6e:
fffff803`d9981050 894daf          mov     dword ptr [rbp-51h],ecx
fffff803`d9981053 e93c320d00      jmp     nt! ?? ::FNODOBFM::`string'+0x46a1 (fffff803`d9a54294)

nt!CcFlushCachePriv+0xb76:
fffff803`d9981058 b201            mov     dl,1
fffff803`d998105a 0fb6ca          movzx   ecx,dl
fffff803`d998105d e81ec2f3ff      call    nt!CcScheduleLazyWriteScan (fffff803`d98bd280)
fffff803`d9981062 e9aaf7ffff      jmp     nt!CcFlushCachePriv+0x331 (fffff803`d9980811)

nt!CcFlushCachePriv+0xb85:
fffff803`d9981067 41b001          mov     r8b,1
fffff803`d998106a e9e5fcffff      jmp     nt!CcFlushCachePriv+0x872 (fffff803`d9980d54)

nt! ?? ::FNODOBFM::`string'+0x4436:
fffff803`d9a54054 4533c9          xor     r9d,r9d
fffff803`d9a54057 ba2b150000      mov     edx,152Bh
fffff803`d9a5405c 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a54063 418d4934        lea     ecx,[r9+34h]
fffff803`d9a54067 4c89542420      mov     qword ptr [rsp+20h],r10
fffff803`d9a5406c e8cfc3e8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a54071 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4454:
fffff803`d9a54072 498bd0          mov     rdx,r8
fffff803`d9a54075 e876d6faff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9a5407a 90              nop
fffff803`d9a5407b e91accf2ff      jmp     nt!CcFlushCachePriv+0x7b8 (fffff803`d9980c9a)

nt! ?? ::FNODOBFM::`string'+0x4462:
fffff803`d9a54080 c745ab01000000  mov     dword ptr [rbp-55h],1
fffff803`d9a54087 e956c5f2ff      jmp     nt!CcFlushCachePriv+0x102 (fffff803`d99805e2)

nt! ?? ::FNODOBFM::`string'+0x446e:
fffff803`d9a5408c 41f6c401        test    r12b,1
fffff803`d9a54090 0f85a7cff2ff    jne     nt!CcFlushCachePriv+0xb5b (fffff803`d998103d)

nt! ?? ::FNODOBFM::`string'+0x4478:
fffff803`d9a54096 4585f6          test    r14d,r14d
fffff803`d9a54099 740c            je      nt! ?? ::FNODOBFM::`string'+0x4498 (fffff803`d9a540a7)

nt! ?? ::FNODOBFM::`string'+0x4481:
fffff803`d9a5409b eb10            jmp     nt! ?? ::FNODOBFM::`string'+0x449e (fffff803`d9a540ad)

nt! ?? ::FNODOBFM::`string'+0x4486:
fffff803`d9a5409d 4885ff          test    rdi,rdi
fffff803`d9a540a0 740b            je      nt! ?? ::FNODOBFM::`string'+0x449e (fffff803`d9a540ad)

nt! ?? ::FNODOBFM::`string'+0x448f:
fffff803`d9a540a2 4585f6          test    r14d,r14d
fffff803`d9a540a5 7506            jne     nt! ?? ::FNODOBFM::`string'+0x449e (fffff803`d9a540ad)

nt! ?? ::FNODOBFM::`string'+0x4498:
fffff803`d9a540a7 ff8f04020000    dec     dword ptr [rdi+204h]

nt! ?? ::FNODOBFM::`string'+0x449e:
fffff803`d9a540ad 410fb6d5        movzx   edx,r13b
fffff803`d9a540b1 b905000000      mov     ecx,5
fffff803`d9a540b6 e875e3eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a540bb 90              nop
fffff803`d9a540bc e9aec7f2ff      jmp     nt!CcFlushCachePriv+0x38f (fffff803`d998086f)

nt! ?? ::FNODOBFM::`string'+0x44b2:
fffff803`d9a540c1 488b5557        mov     rdx,qword ptr [rbp+57h]
fffff803`d9a540c5 488bce          mov     rcx,rsi
fffff803`d9a540c8 e803d5faff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a540cd 4533d2          xor     r10d,r10d
fffff803`d9a540d0 e984c5f2ff      jmp     nt!CcFlushCachePriv+0x179 (fffff803`d9980659)

nt! ?? ::FNODOBFM::`string'+0x44c6:
fffff803`d9a540d5 418bc3          mov     eax,r11d
fffff803`d9a540d8 8945b7          mov     dword ptr [rbp-49h],eax
fffff803`d9a540db e9ffc5f2ff      jmp     nt!CcFlushCachePriv+0x1ff (fffff803`d99806df)

nt! ?? ::FNODOBFM::`string'+0x44d1:
fffff803`d9a540e0 4533c0          xor     r8d,r8d
fffff803`d9a540e3 33d2            xor     edx,edx
fffff803`d9a540e5 e8968decff      call    nt!KeSetEvent (fffff803`d991ce80)
fffff803`d9a540ea 90              nop
fffff803`d9a540eb e958c8f2ff      jmp     nt!CcFlushCachePriv+0x468 (fffff803`d9980948)

nt! ?? ::FNODOBFM::`string'+0x44e1:
fffff803`d9a540f0 498bd0          mov     rdx,r8
fffff803`d9a540f3 e8f8d5faff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9a540f8 90              nop
fffff803`d9a540f9 e9fccaf2ff      jmp     nt!CcFlushCachePriv+0x71a (fffff803`d9980bfa)

nt! ?? ::FNODOBFM::`string'+0x44ef:
fffff803`d9a540fe 488b5557        mov     rdx,qword ptr [rbp+57h]
fffff803`d9a54102 488bce          mov     rcx,rsi
fffff803`d9a54105 e8c6d4faff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a5410a 90              nop
fffff803`d9a5410b e934cbf2ff      jmp     nt!CcFlushCachePriv+0x764 (fffff803`d9980c44)

nt! ?? ::FNODOBFM::`string'+0x4501:
fffff803`d9a54110 488d0d61ad1100  lea     rcx,[nt!CcChangeSharedCacheMapFileLock (fffff803`d9b6ee78)]
fffff803`d9a54117 e824d7edff      call    nt!ExfAcquirePushLockShared (fffff803`d9931840)
fffff803`d9a5411c 90              nop
fffff803`d9a5411d e953cef2ff      jmp     nt!CcFlushCachePriv+0xa93 (fffff803`d9980f75)

nt! ?? ::FNODOBFM::`string'+0x4513:
fffff803`d9a54122 488d0d4fad1100  lea     rcx,[nt!CcChangeSharedCacheMapFileLock (fffff803`d9b6ee78)]
fffff803`d9a54129 e8c2d6ecff      call    nt!ExfReleasePushLockShared (fffff803`d99217f0)
fffff803`d9a5412e 90              nop
fffff803`d9a5412f e963cef2ff      jmp     nt!CcFlushCachePriv+0xab5 (fffff803`d9980f97)

nt! ?? ::FNODOBFM::`string'+0x4525:
fffff803`d9a54134 4c8bc8          mov     r9,rax
fffff803`d9a54137 4d33cd          xor     r9,r13
fffff803`d9a5413a 4983f90f        cmp     r9,0Fh
fffff803`d9a5413e 4c8d4f60        lea     r9,[rdi+60h]
fffff803`d9a54142 0f8273cef2ff    jb      nt!CcFlushCachePriv+0xad9 (fffff803`d9980fbb)

nt! ?? ::FNODOBFM::`string'+0x4539:
fffff803`d9a54148 e9b7cef2ff      jmp     nt!CcFlushCachePriv+0xb22 (fffff803`d9981004)

nt! ?? ::FNODOBFM::`string'+0x453e:
fffff803`d9a5414d f705399f180000000200 test dword ptr [nt!PerfGlobalGroupMask+0x10 (fffff803`d9bde090)],20000h
fffff803`d9a54157 741d            je      nt! ?? ::FNODOBFM::`string'+0x456b (fffff803`d9a54176)

nt! ?? ::FNODOBFM::`string'+0x454e:
fffff803`d9a54159 8b45a3          mov     eax,dword ptr [rbp-5Dh]
fffff803`d9a5415c 488b4dd7        mov     rcx,qword ptr [rbp-29h]
fffff803`d9a54160 4c8d45df        lea     r8,[rbp-21h]
fffff803`d9a54164 41b900100000    mov     r9d,1000h
fffff803`d9a5416a 488bd7          mov     rdx,rdi
fffff803`d9a5416d 89442420        mov     dword ptr [rsp+20h],eax
fffff803`d9a54171 e8aaa7f8ff      call    nt!CcPerfLogFlushSection (fffff803`d99de920)

nt! ?? ::FNODOBFM::`string'+0x456b:
fffff803`d9a54176 8b45a3          mov     eax,dword ptr [rbp-5Dh]
fffff803`d9a54179 488b4d5f        mov     rcx,qword ptr [rbp+5Fh]
fffff803`d9a5417d 488d55df        lea     rdx,[rbp-21h]
fffff803`d9a54181 4d8bcf          mov     r9,r15
fffff803`d9a54184 41b800100000    mov     r8d,1000h
fffff803`d9a5418a 89442420        mov     dword ptr [rsp+20h],eax
fffff803`d9a5418e e865ecf2ff      call    nt!MmFlushSection (fffff803`d9982df8)
fffff803`d9a54193 418b07          mov     eax,dword ptr [r15]
fffff803`d9a54196 8945c7          mov     dword ptr [rbp-39h],eax
fffff803`d9a54199 85c0            test    eax,eax
fffff803`d9a5419b 7829            js      nt! ?? ::FNODOBFM::`string'+0x45bf (fffff803`d9a541c6)

nt! ?? ::FNODOBFM::`string'+0x4596:
fffff803`d9a5419d b905000000      mov     ecx,5
fffff803`d9a541a2 e81917eeff      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d9a541a7 818f9800000000040000 or  dword ptr [rdi+98h],400h
fffff803`d9a541b1 b905000000      mov     ecx,5
fffff803`d9a541b6 0fb6d0          movzx   edx,al
fffff803`d9a541b9 e872e2eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a541be 8b4daf          mov     ecx,dword ptr [rbp-51h]
fffff803`d9a541c1 e9ce000000      jmp     nt! ?? ::FNODOBFM::`string'+0x46a1 (fffff803`d9a54294)

nt! ?? ::FNODOBFM::`string'+0x45bf:
fffff803`d9a541c6 837f0401        cmp     dword ptr [rdi+4],1
fffff803`d9a541ca 0f82f4000000    jb      nt! ?? ::FNODOBFM::`string'+0x46d1 (fffff803`d9a542c4)

nt! ?? ::FNODOBFM::`string'+0x45c9:
fffff803`d9a541d0 488d4f60        lea     rcx,[rdi+60h]
fffff803`d9a541d4 e8b7bbecff      call    nt!ObFastReferenceObject (fffff803`d991fd90)
fffff803`d9a541d9 488bf0          mov     rsi,rax
fffff803`d9a541dc 4885c0          test    rax,rax
fffff803`d9a541df 7546            jne     nt! ?? ::FNODOBFM::`string'+0x462c (fffff803`d9a54227)

nt! ?? ::FNODOBFM::`string'+0x45de:
fffff803`d9a541e1 b911000000      mov     ecx,11h
fffff803`d9a541e6 f0480fb10d89ac1100 lock cmpxchg qword ptr [nt!CcChangeSharedCacheMapFileLock (fffff803`d9b6ee78)],rcx
fffff803`d9a541ef 740c            je      nt! ?? ::FNODOBFM::`string'+0x45fe (fffff803`d9a541fd)

nt! ?? ::FNODOBFM::`string'+0x45f2:
fffff803`d9a541f1 488d0d80ac1100  lea     rcx,[nt!CcChangeSharedCacheMapFileLock (fffff803`d9b6ee78)]
fffff803`d9a541f8 e843d6edff      call    nt!ExfAcquirePushLockShared (fffff803`d9931840)

nt! ?? ::FNODOBFM::`string'+0x45fe:
fffff803`d9a541fd 488d4f60        lea     rcx,[rdi+60h]
fffff803`d9a54201 e822fbeeff      call    nt!ObFastReferenceObjectLocked (fffff803`d9943d28)
fffff803`d9a54206 33c9            xor     ecx,ecx
fffff803`d9a54208 488bf0          mov     rsi,rax
fffff803`d9a5420b b811000000      mov     eax,11h
fffff803`d9a54210 f0480fb10d5fac1100 lock cmpxchg qword ptr [nt!CcChangeSharedCacheMapFileLock (fffff803`d9b6ee78)],rcx
fffff803`d9a54219 740c            je      nt! ?? ::FNODOBFM::`string'+0x462c (fffff803`d9a54227)

nt! ?? ::FNODOBFM::`string'+0x4620:
fffff803`d9a5421b 488d0d56ac1100  lea     rcx,[nt!CcChangeSharedCacheMapFileLock (fffff803`d9b6ee78)]
fffff803`d9a54222 e8c9d5ecff      call    nt!ExfReleasePushLockShared (fffff803`d99217f0)

nt! ?? ::FNODOBFM::`string'+0x462c:
fffff803`d9a54227 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`d9a5422b 4c8d4f60        lea     r9,[rdi+60h]
fffff803`d9a5422f 448b6834        mov     r13d,dword ptr [rax+34h]
fffff803`d9a54233 4183e510        and     r13d,10h
fffff803`d9a54237 410f0d09        prefetchw [r9]
fffff803`d9a5423b 498b01          mov     rax,qword ptr [r9]
fffff803`d9a5423e 488bc8          mov     rcx,rax
fffff803`d9a54241 4833ce          xor     rcx,rsi
fffff803`d9a54244 4883f90f        cmp     rcx,0Fh
fffff803`d9a54248 731b            jae     nt! ?? ::FNODOBFM::`string'+0x4672 (fffff803`d9a54265)

nt! ?? ::FNODOBFM::`string'+0x4653:
fffff803`d9a5424a 488d5001        lea     rdx,[rax+1]
fffff803`d9a5424e f0490fb111      lock cmpxchg qword ptr [r9],rdx
fffff803`d9a54253 741d            je      nt! ?? ::FNODOBFM::`string'+0x467f (fffff803`d9a54272)

nt! ?? ::FNODOBFM::`string'+0x4662:
fffff803`d9a54255 4c8bc8          mov     r9,rax
fffff803`d9a54258 4c33ce          xor     r9,rsi
fffff803`d9a5425b 4983f90f        cmp     r9,0Fh
fffff803`d9a5425f 4c8d4f60        lea     r9,[rdi+60h]
fffff803`d9a54263 72e5            jb      nt! ?? ::FNODOBFM::`string'+0x4653 (fffff803`d9a5424a)

nt! ?? ::FNODOBFM::`string'+0x4672:
fffff803`d9a54265 ba44666c74      mov     edx,746C6644h
fffff803`d9a5426a 488bce          mov     rcx,rsi
fffff803`d9a5426d e8fe42eeff      call    nt!ObDereferenceObjectDeferDeleteWithTag (fffff803`d9938570)

nt! ?? ::FNODOBFM::`string'+0x467f:
fffff803`d9a54272 448b45c7        mov     r8d,dword ptr [rbp-39h]
fffff803`d9a54276 418bd5          mov     edx,r13d
fffff803`d9a54279 b901000000      mov     ecx,1
fffff803`d9a5427e e81925f3ff      call    nt!MmIsWriteErrorFatal (fffff803`d998679c)
fffff803`d9a54283 85c0            test    eax,eax
fffff803`d9a54285 0f84c5cdf2ff    je      nt!CcFlushCachePriv+0xb6e (fffff803`d9981050)

nt! ?? ::FNODOBFM::`string'+0x4698:
fffff803`d9a5428b 418b07          mov     eax,dword ptr [r15]
fffff803`d9a5428e 8b4daf          mov     ecx,dword ptr [rbp-51h]
fffff803`d9a54291 8945b7          mov     dword ptr [rbp-49h],eax

nt! ?? ::FNODOBFM::`string'+0x46a1:
fffff803`d9a54294 488145df00100000 add     qword ptr [rbp-21h],1000h
fffff803`d9a5429c 8145ab00f0ffff  add     dword ptr [rbp-55h],0FFFFF000h
fffff803`d9a542a3 0f85a4feffff    jne     nt! ?? ::FNODOBFM::`string'+0x453e (fffff803`d9a5414d)

nt! ?? ::FNODOBFM::`string'+0x46b6:
fffff803`d9a542a9 e97ccdf2ff      jmp     nt!CcFlushCachePriv+0xb48 (fffff803`d998102a)

nt! ?? ::FNODOBFM::`string'+0x46bb:
fffff803`d9a542ae e8214bf9ff      call    nt!CcPostDeferredWrites (fffff803`d99e8dd4)
fffff803`d9a542b3 33c0            xor     eax,eax
fffff803`d9a542b5 488d1584ab1100  lea     rdx,[nt!CcDeferredWrites (fffff803`d9b6ee40)]
fffff803`d9a542bc 8945bb          mov     dword ptr [rbp-45h],eax
fffff803`d9a542bf e947c7f2ff      jmp     nt!CcFlushCachePriv+0x52b (fffff803`d9980a0b)

nt! ?? ::FNODOBFM::`string'+0x46d1:
fffff803`d9a542c4 33c0            xor     eax,eax
fffff803`d9a542c6 4533c9          xor     r9d,r9d
fffff803`d9a542c9 ba3e120000      mov     edx,123Eh
fffff803`d9a542ce 8d4834          lea     ecx,[rax+34h]
fffff803`d9a542d1 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a542d8 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a542dd e85ec1e8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a542e2 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x46f0:
fffff803`d9a542e3 33c0            xor     eax,eax
fffff803`d9a542e5 4533c9          xor     r9d,r9d
fffff803`d9a542e8 ba3e120000      mov     edx,123Eh
fffff803`d9a542ed 8d4834          lea     ecx,[rax+34h]
fffff803`d9a542f0 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a542f7 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9a542fc e83fc1e8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a54301 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x470f:
fffff803`d9a54302 498bd0          mov     rdx,r8
fffff803`d9a54305 e8e6d3faff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9a5430a 90              nop
fffff803`d9a5430b e9f8c4f2ff      jmp     nt!CcFlushCachePriv+0x328 (fffff803`d9980808)

nt! ?? ::FNODOBFM::`string'+0x471d:
fffff803`d9a54310 837f7000        cmp     dword ptr [rdi+70h],0
fffff803`d9a54314 0f853ecdf2ff    jne     nt!CcFlushCachePriv+0xb76 (fffff803`d9981058)

nt! ?? ::FNODOBFM::`string'+0x4727:
fffff803`d9a5431a 0fbae019        bt      eax,19h
fffff803`d9a5431e 7206            jb      nt! ?? ::FNODOBFM::`string'+0x473b (fffff803`d9a54326)

nt! ?? ::FNODOBFM::`string'+0x4731:
fffff803`d9a54320 0fbae018        bt      eax,18h
fffff803`d9a54324 7351            jae     nt! ?? ::FNODOBFM::`string'+0x4790 (fffff803`d9a54377)

nt! ?? ::FNODOBFM::`string'+0x473b:
fffff803`d9a54326 488b5778        mov     rdx,qword ptr [rdi+78h]
fffff803`d9a5432a 488d4778        lea     rax,[rdi+78h]
fffff803`d9a5432e 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9a54332 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9a54336 0f8592000000    jne     nt! ?? ::FNODOBFM::`string'+0x47f3 (fffff803`d9a543ce)

nt! ?? ::FNODOBFM::`string'+0x4751:
fffff803`d9a5433c 483901          cmp     qword ptr [rcx],rax
fffff803`d9a5433f 0f8589000000    jne     nt! ?? ::FNODOBFM::`string'+0x47f3 (fffff803`d9a543ce)

nt! ?? ::FNODOBFM::`string'+0x475a:
fffff803`d9a54345 488911          mov     qword ptr [rcx],rdx
fffff803`d9a54348 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9a5434c 488b0d55a81100  mov     rcx,qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)]
fffff803`d9a54353 488d1546a81100  lea     rdx,[nt!CcDirtySharedCacheMapWithLogHandleList (fffff803`d9b6eba0)]
fffff803`d9a5435a 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9a5435e 488910          mov     qword ptr [rax],rdx
fffff803`d9a54361 483911          cmp     qword ptr [rcx],rdx
fffff803`d9a54364 7407            je      nt! ?? ::FNODOBFM::`string'+0x4786 (fffff803`d9a5436d)

nt! ?? ::FNODOBFM::`string'+0x477f:
fffff803`d9a54366 b903000000      mov     ecx,3
fffff803`d9a5436b cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4786:
fffff803`d9a5436d 488901          mov     qword ptr [rcx],rax
fffff803`d9a54370 48890531a81100  mov     qword ptr [nt!CcDirtySharedCacheMapWithLogHandleList+0x8 (fffff803`d9b6eba8)],rax

nt! ?? ::FNODOBFM::`string'+0x4790:
fffff803`d9a54377 488d8788000000  lea     rax,[rdi+88h]
fffff803`d9a5437e 488b10          mov     rdx,qword ptr [rax]
fffff803`d9a54381 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d9a54385 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9a54389 753c            jne     nt! ?? ::FNODOBFM::`string'+0x47ec (fffff803`d9a543c7)

nt! ?? ::FNODOBFM::`string'+0x47a8:
fffff803`d9a5438b 483901          cmp     qword ptr [rcx],rax
fffff803`d9a5438e 7537            jne     nt! ?? ::FNODOBFM::`string'+0x47ec (fffff803`d9a543c7)

nt! ?? ::FNODOBFM::`string'+0x47b1:
fffff803`d9a54390 488911          mov     qword ptr [rcx],rdx
fffff803`d9a54393 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d9a54397 488b0d4aa81100  mov     rcx,qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)]
fffff803`d9a5439e 488d153ba81100  lea     rdx,[nt!CcLazyWriterCursor (fffff803`d9b6ebe0)]
fffff803`d9a543a5 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9a543a9 488910          mov     qword ptr [rax],rdx
fffff803`d9a543ac 483911          cmp     qword ptr [rcx],rdx
fffff803`d9a543af 7407            je      nt! ?? ::FNODOBFM::`string'+0x47dd (fffff803`d9a543b8)

nt! ?? ::FNODOBFM::`string'+0x47d6:
fffff803`d9a543b1 b903000000      mov     ecx,3
fffff803`d9a543b6 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x47dd:
fffff803`d9a543b8 488901          mov     qword ptr [rcx],rax
fffff803`d9a543bb 48890526a81100  mov     qword ptr [nt!CcLazyWriterCursor+0x8 (fffff803`d9b6ebe8)],rax
fffff803`d9a543c2 e991ccf2ff      jmp     nt!CcFlushCachePriv+0xb76 (fffff803`d9981058)

nt! ?? ::FNODOBFM::`string'+0x47ec:
fffff803`d9a543c7 b903000000      mov     ecx,3
fffff803`d9a543cc cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x47f3:
fffff803`d9a543ce b903000000      mov     ecx,3
fffff803`d9a543d3 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x47fa:
fffff803`d9a543d5 b903000000      mov     ecx,3
fffff803`d9a543da cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4801:
fffff803`d9a543dc b903000000      mov     ecx,3
fffff803`d9a543e1 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4808:
fffff803`d9a543e3 b903000000      mov     ecx,3
fffff803`d9a543e8 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x480f:
fffff803`d9a543ea b903000000      mov     ecx,3
fffff803`d9a543ef cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4816:
fffff803`d9a543f1 488b5557        mov     rdx,qword ptr [rbp+57h]
fffff803`d9a543f5 488bcb          mov     rcx,rbx
fffff803`d9a543f8 e8d3d1faff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a543fd 90              nop
fffff803`d9a543fe e959c4f2ff      jmp     nt!CcFlushCachePriv+0x37c (fffff803`d998085c)

nt! ?? ::FNODOBFM::`string'+0x4828:
fffff803`d9a54403 418907          mov     dword ptr [r15],eax
fffff803`d9a54406 e964c4f2ff      jmp     nt!CcFlushCachePriv+0x38f (fffff803`d998086f)
