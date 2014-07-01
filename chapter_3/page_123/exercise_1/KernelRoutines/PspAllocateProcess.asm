0: kd> uf PspAllocateProcess
nt!PspAllocateProcess:
fffff800`120f3840 4c8bdc          mov     r11,rsp
fffff800`120f3843 49895b10        mov     qword ptr [r11+10h],rbx
fffff800`120f3847 49897320        mov     qword ptr [r11+20h],rsi
fffff800`120f384b 57              push    rdi
fffff800`120f384c 4154            push    r12
fffff800`120f384e 4155            push    r13
fffff800`120f3850 4156            push    r14
fffff800`120f3852 4157            push    r15
fffff800`120f3854 4881ec70030000  sub     rsp,370h
fffff800`120f385b 488b053642e0ff  mov     rax,qword ptr [nt!_security_cookie (fffff800`11ef7a98)]
fffff800`120f3862 4833c4          xor     rax,rsp
fffff800`120f3865 4889842468030000 mov     qword ptr [rsp+368h],rax
fffff800`120f386d 458af9          mov     r15b,r9b
fffff800`120f3870 448ad2          mov     r10b,dl
fffff800`120f3873 88542450        mov     byte ptr [rsp+50h],dl
fffff800`120f3877 48898c24a0000000 mov     qword ptr [rsp+0A0h],rcx
fffff800`120f387f 48898c2450010000 mov     qword ptr [rsp+150h],rcx
fffff800`120f3887 488bbc24c8030000 mov     rdi,qword ptr [rsp+3C8h]
fffff800`120f388f 4889bc24d8000000 mov     qword ptr [rsp+0D8h],rdi
fffff800`120f3897 488b8424d0030000 mov     rax,qword ptr [rsp+3D0h]
fffff800`120f389f 48898424b0000000 mov     qword ptr [rsp+0B0h],rax
fffff800`120f38a7 4c8ba424e0030000 mov     r12,qword ptr [rsp+3E0h]
fffff800`120f38af 4c89a42460010000 mov     qword ptr [rsp+160h],r12
fffff800`120f38b7 488b8424f0030000 mov     rax,qword ptr [rsp+3F0h]
fffff800`120f38bf 48898424f0000000 mov     qword ptr [rsp+0F0h],rax
fffff800`120f38c7 488b8424f8030000 mov     rax,qword ptr [rsp+3F8h]
fffff800`120f38cf 4889842470010000 mov     qword ptr [rsp+170h],rax
fffff800`120f38d7 4533f6          xor     r14d,r14d
fffff800`120f38da 418bde          mov     ebx,r14d
fffff800`120f38dd 895c2454        mov     dword ptr [rsp+54h],ebx
fffff800`120f38e1 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff800`120f38ea 4889842400010000 mov     qword ptr [rsp+100h],rax
fffff800`120f38f2 488b80b8000000  mov     rax,qword ptr [rax+0B8h]
fffff800`120f38f9 4889842490000000 mov     qword ptr [rsp+90h],rax
fffff800`120f3901 4c89742478      mov     qword ptr [rsp+78h],r14
fffff800`120f3906 4489742460      mov     dword ptr [rsp+60h],r14d
fffff800`120f390b 448974245c      mov     dword ptr [rsp+5Ch],r14d
fffff800`120f3910 418b7340        mov     esi,dword ptr [r11+40h]
fffff800`120f3914 0fbae608        bt      esi,8
fffff800`120f3918 418bd6          mov     edx,r14d
fffff800`120f391b 480f42d1        cmovb   rdx,rcx
fffff800`120f391f 4889942440010000 mov     qword ptr [rsp+140h],rdx
fffff800`120f3927 4d85e4          test    r12,r12
fffff800`120f392a 740f            je      nt!PspAllocateProcess+0xfb (fffff800`120f393b)

nt!PspAllocateProcess+0xec:
fffff800`120f392c 41f744240400200000 test  dword ptr [r12+4],2000h
fffff800`120f3935 0f859d0e0000    jne     nt!PspAllocateProcess+0xf98 (fffff800`120f47d8)

nt!PspAllocateProcess+0xfb:
fffff800`120f393b 4885c9          test    rcx,rcx
fffff800`120f393e 7411            je      nt!PspAllocateProcess+0x111 (fffff800`120f3951)

nt!PspAllocateProcess+0x100:
fffff800`120f3940 ba00002000      mov     edx,200000h
fffff800`120f3945 8591f8020000    test    dword ptr [rcx+2F8h],edx
fffff800`120f394b 0f8589d11800    jne     nt! ?? ::NNGAKEGL::`string'+0x49590 (fffff800`12280ada)

nt!PspAllocateProcess+0x111:
fffff800`120f3951 33c0            xor     eax,eax
fffff800`120f3953 4889842430020000 mov     qword ptr [rsp+230h],rax
fffff800`120f395b 4889842438020000 mov     qword ptr [rsp+238h],rax
fffff800`120f3963 4889842440020000 mov     qword ptr [rsp+240h],rax
fffff800`120f396b 4c89b42408010000 mov     qword ptr [rsp+108h],r14
fffff800`120f3973 bf60060000      mov     edi,660h
fffff800`120f3978 8b058acaedff    mov     eax,dword ptr [nt!PsDisableDiskCounters (fffff800`11fd0408)]
fffff800`120f397e 85c0            test    eax,eax
fffff800`120f3980 750e            jne     nt!PspAllocateProcess+0x150 (fffff800`120f3990)

nt!PspAllocateProcess+0x142:
fffff800`120f3982 bf88060000      mov     edi,688h
fffff800`120f3987 bb00020000      mov     ebx,200h
fffff800`120f398c 895c2454        mov     dword ptr [rsp+54h],ebx

nt!PspAllocateProcess+0x150:
fffff800`120f3990 488d442468      lea     rax,[rsp+68h]
fffff800`120f3995 4889442440      mov     qword ptr [rsp+40h],rax
fffff800`120f399a 897c2438        mov     dword ptr [rsp+38h],edi
fffff800`120f399e 4489742430      mov     dword ptr [rsp+30h],r14d
fffff800`120f39a3 897c2428        mov     dword ptr [rsp+28h],edi
fffff800`120f39a7 4c89742420      mov     qword ptr [rsp+20h],r14
fffff800`120f39ac 458aca          mov     r9b,r10b
fffff800`120f39af 488b1562c6edff  mov     rdx,qword ptr [nt!PsProcessType (fffff800`11fd0018)]
fffff800`120f39b6 418aca          mov     cl,r10b
fffff800`120f39b9 e84285fbff      call    nt!ObCreateObject (fffff800`120abf00)
fffff800`120f39be 85c0            test    eax,eax
fffff800`120f39c0 0f8839090000    js      nt!PspAllocateProcess+0xabf (fffff800`120f42ff)

nt!PspAllocateProcess+0x186:
fffff800`120f39c6 ba50734372      mov     edx,72437350h
fffff800`120f39cb 4c8b6c2468      mov     r13,qword ptr [rsp+68h]
fffff800`120f39d0 498bcd          mov     rcx,r13
fffff800`120f39d3 e8108cc5ff      call    nt!ObfReferenceObjectWithTag (fffff800`11d4c5e8)
fffff800`120f39d8 ba44666c74      mov     edx,746C6644h
fffff800`120f39dd 498bcd          mov     rcx,r13
fffff800`120f39e0 e87bf4c0ff      call    nt!ObfDereferenceObjectWithTag (fffff800`11d02e60)
fffff800`120f39e5 448bc7          mov     r8d,edi
fffff800`120f39e8 33d2            xor     edx,edx
fffff800`120f39ea 498bcd          mov     rcx,r13
fffff800`120f39ed e8ce40c0ff      call    nt!memset (fffff800`11cf7ac0)
fffff800`120f39f2 498dbdd0050000  lea     rdi,[r13+5D0h]
fffff800`120f39f9 33d2            xor     edx,edx
fffff800`120f39fb 448d4220        lea     r8d,[rdx+20h]
fffff800`120f39ff 488bcf          mov     rcx,rdi
fffff800`120f3a02 e8b940c0ff      call    nt!memset (fffff800`11cf7ac0)
fffff800`120f3a07 4c8937          mov     qword ptr [rdi],r14
fffff800`120f3a0a 498d85d8050000  lea     rax,[r13+5D8h]
fffff800`120f3a11 48894008        mov     qword ptr [rax+8],rax
fffff800`120f3a15 488900          mov     qword ptr [rax],rax
fffff800`120f3a18 4d89b5d8020000  mov     qword ptr [r13+2D8h],r14
fffff800`120f3a1f 4d89b5c8020000  mov     qword ptr [r13+2C8h],r14
fffff800`120f3a26 498d8570040000  lea     rax,[r13+470h]
fffff800`120f3a2d 48894008        mov     qword ptr [rax+8],rax
fffff800`120f3a31 488900          mov     qword ptr [rax],rax
fffff800`120f3a34 498d8548060000  lea     rax,[r13+648h]
fffff800`120f3a3b 48898424f8000000 mov     qword ptr [rsp+0F8h],rax
fffff800`120f3a43 448838          mov     byte ptr [rax],r15b
fffff800`120f3a46 8a8424c0030000  mov     al,byte ptr [rsp+3C0h]
fffff800`120f3a4d 41888549060000  mov     byte ptr [r13+649h],al
fffff800`120f3a54 b900020000      mov     ecx,200h
fffff800`120f3a59 85f1            test    ecx,esi
fffff800`120f3a5b 488b842490000000 mov     rax,qword ptr [rsp+90h]
fffff800`120f3a63 be01000000      mov     esi,1
fffff800`120f3a68 480f44c6        cmove   rax,rsi
fffff800`120f3a6c 498985e0030000  mov     qword ptr [r13+3E0h],rax
fffff800`120f3a73 85d9            test    ecx,ebx
fffff800`120f3a75 740e            je      nt!PspAllocateProcess+0x245 (fffff800`120f3a85)

nt!PspAllocateProcess+0x237:
fffff800`120f3a77 498d8560060000  lea     rax,[r13+660h]
fffff800`120f3a7e 49898550060000  mov     qword ptr [r13+650h],rax

nt!PspAllocateProcess+0x245:
fffff800`120f3a85 4d85e4          test    r12,r12
fffff800`120f3a88 740b            je      nt!PspAllocateProcess+0x255 (fffff800`120f3a95)

nt!PspAllocateProcess+0x24a:
fffff800`120f3a8a 41854c2404      test    dword ptr [r12+4],ecx
fffff800`120f3a8f 0f85e70b0000    jne     nt!PspAllocateProcess+0xe3c (fffff800`120f467c)

nt!PspAllocateProcess+0x255:
fffff800`120f3a95 488bbc24a0000000 mov     rdi,qword ptr [rsp+0A0h]
fffff800`120f3a9d 4885ff          test    rdi,rdi
fffff800`120f3aa0 0f84b00d0000    je      nt!PspAllocateProcess+0x1016 (fffff800`120f4856)

nt!PspAllocateProcess+0x266:
fffff800`120f3aa6 8b8788040000    mov     eax,dword ptr [rdi+488h]

nt!PspAllocateProcess+0x26c:
fffff800`120f3aac 498d8d88040000  lea     rcx,[r13+488h]
fffff800`120f3ab3 48898c2480010000 mov     qword ptr [rsp+180h],rcx
fffff800`120f3abb 8901            mov     dword ptr [rcx],eax
fffff800`120f3abd 41c7858c05000003010000 mov dword ptr [r13+58Ch],103h
fffff800`120f3ac8 4885ff          test    rdi,rdi
fffff800`120f3acb 0f848f0d0000    je      nt!PspAllocateProcess+0x1020 (fffff800`120f4860)

nt!PspAllocateProcess+0x291:
fffff800`120f3ad1 8b97fc020000    mov     edx,dword ptr [rdi+2FCh]
fffff800`120f3ad7 c1ea1b          shr     edx,1Bh
fffff800`120f3ada 83e207          and     edx,7
fffff800`120f3add 448b87f8020000  mov     r8d,dword ptr [rdi+2F8h]
fffff800`120f3ae4 41c1e80c        shr     r8d,0Ch
fffff800`120f3ae8 4183e007        and     r8d,7
fffff800`120f3aec 488b87e0020000  mov     rax,qword ptr [rdi+2E0h]
fffff800`120f3af3 498985d0030000  mov     qword ptr [r13+3D0h],rax

nt!PspAllocateProcess+0x2ba:
fffff800`120f3afa 498d85fc020000  lea     rax,[r13+2FCh]
fffff800`120f3b01 48898424e8000000 mov     qword ptr [rsp+0E8h],rax
fffff800`120f3b09 c1e21b          shl     edx,1Bh
fffff800`120f3b0c 8b08            mov     ecx,dword ptr [rax]
fffff800`120f3b0e 81e1ffffffc7    and     ecx,0C7FFFFFFh
fffff800`120f3b14 0bd1            or      edx,ecx
fffff800`120f3b16 8910            mov     dword ptr [rax],edx
fffff800`120f3b18 498d8df8020000  lea     rcx,[r13+2F8h]
fffff800`120f3b1f 48898c24b8000000 mov     qword ptr [rsp+0B8h],rcx
fffff800`120f3b27 8b01            mov     eax,dword ptr [rcx]
fffff800`120f3b29 25ff8fffff      and     eax,0FFFF8FFFh
fffff800`120f3b2e 41c1e00c        shl     r8d,0Ch
fffff800`120f3b32 410bc0          or      eax,r8d
fffff800`120f3b35 8901            mov     dword ptr [rcx],eax
fffff800`120f3b37 4c8bbc24d8000000 mov     r15,qword ptr [rsp+0D8h]
fffff800`120f3b3f 4c89bc2410010000 mov     qword ptr [rsp+110h],r15
fffff800`120f3b47 4d85ff          test    r15,r15
fffff800`120f3b4a 0f84220d0000    je      nt!PspAllocateProcess+0x1032 (fffff800`120f4872)

nt!PspAllocateProcess+0x310:
fffff800`120f3b50 498bcf          mov     rcx,r15
fffff800`120f3b53 e8e8c5c1ff      call    nt!ObfReferenceObject (fffff800`11d10140)

nt!PspAllocateProcess+0x318:
fffff800`120f3b58 4d89bda8030000  mov     qword ptr [r13+3A8h],r15
fffff800`120f3b5f 664489742458    mov     word ptr [rsp+58h],r14w
fffff800`120f3b65 4d85e4          test    r12,r12
fffff800`120f3b68 0f84120d0000    je      nt!PspAllocateProcess+0x1040 (fffff800`120f4880)

nt!PspAllocateProcess+0x32e:
fffff800`120f3b6e 4d8d442430      lea     r8,[r12+30h]
fffff800`120f3b73 8bd6            mov     edx,esi
fffff800`120f3b75 498bcf          mov     rcx,r15
fffff800`120f3b78 e8f3840100      call    nt!MmGetSectionInformation (fffff800`1210c070)
fffff800`120f3b7d 448bf8          mov     r15d,eax
fffff800`120f3b80 85c0            test    eax,eax
fffff800`120f3b82 0f8898d61800    js      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt!PspAllocateProcess+0x348:
fffff800`120f3b88 410fb64c2463    movzx   ecx,byte ptr [r12+63h]
fffff800`120f3b8e 8bc1            mov     eax,ecx
fffff800`120f3b90 c1e802          shr     eax,2
fffff800`120f3b93 23c6            and     eax,esi
fffff800`120f3b95 c1e007          shl     eax,7
fffff800`120f3b98 33c3            xor     eax,ebx
fffff800`120f3b9a 2580000000      and     eax,80h
fffff800`120f3b9f 33d8            xor     ebx,eax
fffff800`120f3ba1 d0e9            shr     cl,1
fffff800`120f3ba3 4022ce          and     cl,sil
fffff800`120f3ba6 418bc6          mov     eax,r14d
fffff800`120f3ba9 0f95c0          setne   al
fffff800`120f3bac c1e008          shl     eax,8
fffff800`120f3baf 33c3            xor     eax,ebx
fffff800`120f3bb1 2500010000      and     eax,100h
fffff800`120f3bb6 33d8            xor     ebx,eax
fffff800`120f3bb8 895c2454        mov     dword ptr [rsp+54h],ebx
fffff800`120f3bbc 410fb7542460    movzx   edx,word ptr [r12+60h]
fffff800`120f3bc2 668954245a      mov     word ptr [rsp+5Ah],dx
fffff800`120f3bc7 410fb744245c    movzx   eax,word ptr [r12+5Ch]
fffff800`120f3bcd 66418544240a    test    word ptr [r12+0Ah],ax
fffff800`120f3bd3 0f85bacf1800    jne     nt! ?? ::NNGAKEGL::`string'+0x4965d (fffff800`12280b93)

nt!PspAllocateProcess+0x399:
fffff800`120f3bd9 48b82c00000080f7ffff mov rax,0FFFFF7800000002Ch
fffff800`120f3be3 663b10          cmp     dx,word ptr [rax]
fffff800`120f3be6 0f82dc090000    jb      nt!PspAllocateProcess+0xd88 (fffff800`120f45c8)

nt!PspAllocateProcess+0x3ac:
fffff800`120f3bec 48b82e00000080f7ffff mov rax,0FFFFF7800000002Eh
fffff800`120f3bf6 663b10          cmp     dx,word ptr [rax]
fffff800`120f3bf9 0f87c9090000    ja      nt!PspAllocateProcess+0xd88 (fffff800`120f45c8)

nt!PspAllocateProcess+0x3bf:
fffff800`120f3bff 4c39b42410010000 cmp     qword ptr [rsp+110h],r14
fffff800`120f3c07 0f84cad01800    je      nt! ?? ::NNGAKEGL::`string'+0x497a9 (fffff800`12280cd7)

nt!PspAllocateProcess+0x3cd:
fffff800`120f3c0d 410fb744245e    movzx   eax,word ptr [r12+5Eh]
fffff800`120f3c13 6689442458      mov     word ptr [rsp+58h],ax
fffff800`120f3c18 4d8dbc24b8000000 lea     r15,[r12+0B8h]
fffff800`120f3c20 498d8c24e0000000 lea     rcx,[r12+0E0h]
fffff800`120f3c28 498bd7          mov     rdx,r15
fffff800`120f3c2b e870c30100      call    nt!RtlpOpenImageFileOptionsKey (fffff800`1210ffa0)
fffff800`120f3c30 85c0            test    eax,eax
fffff800`120f3c32 0f89f4060000    jns     nt!PspAllocateProcess+0xaec (fffff800`120f432c)

nt!PspAllocateProcess+0x3f8:
fffff800`120f3c38 3d340000c0      cmp     eax,0C0000034h
fffff800`120f3c3d 7506            jne     nt!PspAllocateProcess+0x405 (fffff800`120f3c45)

nt!PspAllocateProcess+0x3ff:
fffff800`120f3c3f 41804c240840    or      byte ptr [r12+8],40h

nt!PspAllocateProcess+0x405:
fffff800`120f3c45 4d8937          mov     qword ptr [r15],r14

nt!PspAllocateProcess+0x408:
fffff800`120f3c48 488d9424d8030000 lea     rdx,[rsp+3D8h]
fffff800`120f3c50 498bcc          mov     rcx,r12
fffff800`120f3c53 e838d70100      call    nt!PspDetectComplusILImage (fffff800`12111390)
fffff800`120f3c58 448bf8          mov     r15d,eax
fffff800`120f3c5b 85c0            test    eax,eax
fffff800`120f3c5d 0f88bdd51800    js      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt!PspAllocateProcess+0x423:
fffff800`120f3c63 0fb754245a      movzx   edx,word ptr [rsp+5Ah]

nt!PspAllocateProcess+0x428:
fffff800`120f3c68 b94c010000      mov     ecx,14Ch
fffff800`120f3c6d 8b8424d8030000  mov     eax,dword ptr [rsp+3D8h]

nt!PspAllocateProcess+0x434:
fffff800`120f3c74 a808            test    al,8
fffff800`120f3c76 0f85640a0000    jne     nt!PspAllocateProcess+0xea0 (fffff800`120f46e0)

nt!PspAllocateProcess+0x43c:
fffff800`120f3c7c 663bd1          cmp     dx,cx
fffff800`120f3c7f 0f845e090000    je      nt!PspAllocateProcess+0xda3 (fffff800`120f45e3)

nt!PspAllocateProcess+0x445:
fffff800`120f3c85 4c8d842480000000 lea     r8,[rsp+80h]
fffff800`120f3c8d ba1d000000      mov     edx,1Dh
fffff800`120f3c92 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff800`120f3c9a e89100fcff      call    nt!SeQueryInformationToken (fffff800`120b3d30)
fffff800`120f3c9f 448bf8          mov     r15d,eax
fffff800`120f3ca2 85c0            test    eax,eax
fffff800`120f3ca4 0f8876d51800    js      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt!PspAllocateProcess+0x46a:
fffff800`120f3caa b800100000      mov     eax,1000h
fffff800`120f3caf 6685442458      test    word ptr [rsp+58h],ax
fffff800`120f3cb4 0f856e0a0000    jne     nt!PspAllocateProcess+0xee8 (fffff800`120f4728)

nt!PspAllocateProcess+0x47a:
fffff800`120f3cba 4d85e4          test    r12,r12
fffff800`120f3cbd 7440            je      nt!PspAllocateProcess+0x4bf (fffff800`120f3cff)

nt!PspAllocateProcess+0x47f:
fffff800`120f3cbf 418bd6          mov     edx,r14d
fffff800`120f3cc2 41f744240400010000 test  dword ptr [r12+4],100h
fffff800`120f3ccb 0f85c0090000    jne     nt!PspAllocateProcess+0xe51 (fffff800`120f4691)

nt!PspAllocateProcess+0x491:
fffff800`120f3cd1 4439b424e8030000 cmp     dword ptr [rsp+3E8h],r14d
fffff800`120f3cd9 0f850e080000    jne     nt!PspAllocateProcess+0xcad (fffff800`120f44ed)

nt!PspAllocateProcess+0x49f:
fffff800`120f3cdf 8b8c24d8030000  mov     ecx,dword ptr [rsp+3D8h]
fffff800`120f3ce6 f6c130          test    cl,30h
fffff800`120f3ce9 0f85a5d01800    jne     nt! ?? ::NNGAKEGL::`string'+0x49866 (fffff800`12280d94)

nt!PspAllocateProcess+0x4af:
fffff800`120f3cef 84c9            test    cl,cl
fffff800`120f3cf1 0f88160b0000    js      nt!PspAllocateProcess+0xfcd (fffff800`120f480d)

nt!PspAllocateProcess+0x4b7:
fffff800`120f3cf7 85d2            test    edx,edx
fffff800`120f3cf9 0f85b6070000    jne     nt!PspAllocateProcess+0xc75 (fffff800`120f44b5)

nt!PspAllocateProcess+0x4bf:
fffff800`120f3cff 488b8424e8000000 mov     rax,qword ptr [rsp+0E8h]
fffff800`120f3d07 8b4c2460        mov     ecx,dword ptr [rsp+60h]
fffff800`120f3d0b 0908            or      dword ptr [rax],ecx
fffff800`120f3d0d 8b44245c        mov     eax,dword ptr [rsp+5Ch]
fffff800`120f3d11 488b8c24b8000000 mov     rcx,qword ptr [rsp+0B8h]
fffff800`120f3d19 0901            or      dword ptr [rcx],eax
fffff800`120f3d1b 4885ff          test    rdi,rdi
fffff800`120f3d1e 0f84820b0000    je      nt!PspAllocateProcess+0x1066 (fffff800`120f48a6)

nt!PspAllocateProcess+0x4e4:
fffff800`120f3d24 4c89b42430010000 mov     qword ptr [rsp+130h],r14
fffff800`120f3d2c 83e3fe          and     ebx,0FFFFFFFEh
fffff800`120f3d2f 418ace          mov     cl,r14b
fffff800`120f3d32 884c2451        mov     byte ptr [rsp+51h],cl
fffff800`120f3d36 4439b424e8030000 cmp     dword ptr [rsp+3E8h],r14d
fffff800`120f3d3e 0f85bd070000    jne     nt!PspAllocateProcess+0xcc1 (fffff800`120f4501)

nt!PspAllocateProcess+0x504:
fffff800`120f3d44 4c8bbc2490000000 mov     r15,qword ptr [rsp+90h]

nt!PspAllocateProcess+0x50c:
fffff800`120f3d4c 4439b424e8030000 cmp     dword ptr [rsp+3E8h],r14d
fffff800`120f3d54 0f8532080000    jne     nt!PspAllocateProcess+0xd4c (fffff800`120f458c)

nt!PspAllocateProcess+0x51a:
fffff800`120f3d5a 488bc7          mov     rax,rdi
fffff800`120f3d5d 84c9            test    cl,cl
fffff800`120f3d5f 490f45c7        cmovne  rax,r15
fffff800`120f3d63 4885c0          test    rax,rax
fffff800`120f3d66 0f8480d01800    je      nt! ?? ::NNGAKEGL::`string'+0x498be (fffff800`12280dec)

nt!PspAllocateProcess+0x52c:
fffff800`120f3d6c 488b8000040000  mov     rax,qword ptr [rax+400h]

nt!PspAllocateProcess+0x533:
fffff800`120f3d73 f001b000020000  lock add dword ptr [rax+200h],esi
fffff800`120f3d7a f001b004020000  lock add dword ptr [rax+204h],esi
fffff800`120f3d81 4c8b6c2468      mov     r13,qword ptr [rsp+68h]
fffff800`120f3d86 49898500040000  mov     qword ptr [r13+400h],rax

nt!PspAllocateProcess+0x54d:
fffff800`120f3d8d 4084b42434020000 test    byte ptr [rsp+234h],sil
fffff800`120f3d95 0f855dd01800    jne     nt! ?? ::NNGAKEGL::`string'+0x498ca (fffff800`12280df8)

nt!PspAllocateProcess+0x55b:
fffff800`120f3d9b 8b0def942000    mov     ecx,dword ptr [nt!PspMaximumWorkingSet (fffff800`122fd290)]
fffff800`120f3da1 418bd6          mov     edx,r14d

nt!PspAllocateProcess+0x564:
fffff800`120f3da4 4d8bc5          mov     r8,r13
fffff800`120f3da7 e8f4800000      call    nt!MmCreateProcessAddressSpace (fffff800`120fbea0)
fffff800`120f3dac 440fb6d8        movzx   r11d,al
fffff800`120f3db0 41c1e305        shl     r11d,5
fffff800`120f3db4 4433db          xor     r11d,ebx
fffff800`120f3db7 4183e320        and     r11d,20h
fffff800`120f3dbb 4133db          xor     ebx,r11d
fffff800`120f3dbe 895c2454        mov     dword ptr [rsp+54h],ebx
fffff800`120f3dc2 4084de          test    sil,bl
fffff800`120f3dc5 0f858c080000    jne     nt!PspAllocateProcess+0xe17 (fffff800`120f4657)

nt!PspAllocateProcess+0x58b:
fffff800`120f3dcb f6c320          test    bl,20h
fffff800`120f3dce 0f8432d01800    je      nt! ?? ::NNGAKEGL::`string'+0x498d8 (fffff800`12280e06)

nt!PspAllocateProcess+0x594:
fffff800`120f3dd4 488b8424e8000000 mov     rax,qword ptr [rsp+0E8h]
fffff800`120f3ddc f0810800000400  lock or dword ptr [rax],40000h
fffff800`120f3de3 488b842440010000 mov     rax,qword ptr [rsp+140h]
fffff800`120f3deb 4885c0          test    rax,rax
fffff800`120f3dee 0f8547090000    jne     nt!PspAllocateProcess+0xefb (fffff800`120f473b)

nt!PspAllocateProcess+0x5b4:
fffff800`120f3df4 488b442478      mov     rax,qword ptr [rsp+78h]
fffff800`120f3df9 4885c0          test    rax,rax
fffff800`120f3dfc 0f85010a0000    jne     nt!PspAllocateProcess+0xfc3 (fffff800`120f4803)

nt!PspAllocateProcess+0x5c2:
fffff800`120f3e02 4885ff          test    rdi,rdi
fffff800`120f3e05 0f84d00a0000    je      nt!PspAllocateProcess+0x109b (fffff800`120f48db)

nt!PspAllocateProcess+0x5cb:
fffff800`120f3e0b b900001000      mov     ecx,100000h
fffff800`120f3e10 858ff8020000    test    dword ptr [rdi+2F8h],ecx
fffff800`120f3e16 0f85f5cf1800    jne     nt! ?? ::NNGAKEGL::`string'+0x498e3 (fffff800`12280e11)

nt!PspAllocateProcess+0x5dc:
fffff800`120f3e1c e8d7e70000      call    nt!PspSelectNodeForProcess (fffff800`121025f8)
fffff800`120f3e21 4889442478      mov     qword ptr [rsp+78h],rax
fffff800`120f3e26 440fb77858      movzx   r15d,word ptr [rax+58h]
fffff800`120f3e2b 8a0535c2edff    mov     al,byte ptr [nt!KeForceGroupAwareness (fffff800`11fd0066)]
fffff800`120f3e31 84c0            test    al,al
fffff800`120f3e33 0f8508d01800    jne     nt! ?? ::NNGAKEGL::`string'+0x49913 (fffff800`12280e41)

nt!PspAllocateProcess+0x5f9:
fffff800`120f3e39 488d0dc041b8ff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]

nt!PspAllocateProcess+0x600:
fffff800`120f3e40 33c0            xor     eax,eax
fffff800`120f3e42 48898424c0000000 mov     qword ptr [rsp+0C0h],rax
fffff800`120f3e4a 48898424c8000000 mov     qword ptr [rsp+0C8h],rax
fffff800`120f3e52 664489bc24c8000000 mov   word ptr [rsp+0C8h],r15w
fffff800`120f3e5b 410fb7c7        movzx   eax,r15w
fffff800`120f3e5f 488b84c1a8863500 mov     rax,qword ptr [rcx+rax*8+3586A8h]
fffff800`120f3e67 48898424c0000000 mov     qword ptr [rsp+0C0h],rax
fffff800`120f3e6f 4c8b4c2478      mov     r9,qword ptr [rsp+78h]

nt!PspAllocateProcess+0x634:
fffff800`120f3e74 488b842480010000 mov     rax,qword ptr [rsp+180h]
fffff800`120f3e7c 8a08            mov     cl,byte ptr [rax]
fffff800`120f3e7e c0e902          shr     cl,2
fffff800`120f3e81 4022ce          and     cl,sil
fffff800`120f3e84 4c8b6c2468      mov     r13,qword ptr [rsp+68h]
fffff800`120f3e89 498b95f0030000  mov     rdx,qword ptr [r13+3F0h]
fffff800`120f3e90 4885d2          test    rdx,rdx
fffff800`120f3e93 0f842b090000    je      nt!PspAllocateProcess+0xf84 (fffff800`120f47c4)

nt!PspAllocateProcess+0x659:
fffff800`120f3e99 4c3b2d80c1edff  cmp     r13,qword ptr [nt!PsInitialSystemProcess (fffff800`11fd0020)]
fffff800`120f3ea0 0f841e090000    je      nt!PspAllocateProcess+0xf84 (fffff800`120f47c4)

nt!PspAllocateProcess+0x666:
fffff800`120f3ea6 488b4248        mov     rax,qword ptr [rdx+48h]
fffff800`120f3eaa 488b5020        mov     rdx,qword ptr [rax+20h]

nt!PspAllocateProcess+0x66e:
fffff800`120f3eae 884c2428        mov     byte ptr [rsp+28h],cl
fffff800`120f3eb2 4889542420      mov     qword ptr [rsp+20h],rdx
fffff800`120f3eb7 4c8d8424c0000000 lea     r8,[rsp+0C0h]
fffff800`120f3ebf ba08000000      mov     edx,8
fffff800`120f3ec4 498bcd          mov     rcx,r13
fffff800`120f3ec7 e844d10100      call    nt!KeInitializeProcess (fffff800`12111010)
fffff800`120f3ecc 4c8b9c24f0000000 mov     r11,qword ptr [rsp+0F0h]
fffff800`120f3ed4 4c895c2420      mov     qword ptr [rsp+20h],r11
fffff800`120f3ed9 448b8c24e8030000 mov     r9d,dword ptr [rsp+3E8h]
fffff800`120f3ee1 4c8b8424b0000000 mov     r8,qword ptr [rsp+0B0h]
fffff800`120f3ee9 498bd5          mov     rdx,r13
fffff800`120f3eec 488bcf          mov     rcx,rdi
fffff800`120f3eef e8b4d30100      call    nt!PspInitializeProcessSecurity (fffff800`121112a8)
fffff800`120f3ef4 448bf8          mov     r15d,eax
fffff800`120f3ef7 85c0            test    eax,eax
fffff800`120f3ef9 0f880dd31800    js      nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt!PspAllocateProcess+0x6bf:
fffff800`120f3eff 41c6854704000002 mov     byte ptr [r13+447h],2
fffff800`120f3f07 4885ff          test    rdi,rdi
fffff800`120f3f0a 0f84d4090000    je      nt!PspAllocateProcess+0x10a4 (fffff800`120f48e4)

nt!PspAllocateProcess+0x6d0:
fffff800`120f3f10 8a8747040000    mov     al,byte ptr [rdi+447h]
fffff800`120f3f16 3c05            cmp     al,5
fffff800`120f3f18 0f84ae080000    je      nt!PspAllocateProcess+0xf8c (fffff800`120f47cc)

nt!PspAllocateProcess+0x6de:
fffff800`120f3f1e 403ac6          cmp     al,sil
fffff800`120f3f21 0f84a5080000    je      nt!PspAllocateProcess+0xf8c (fffff800`120f47cc)

nt!PspAllocateProcess+0x6e7:
fffff800`120f3f27 4d85e4          test    r12,r12
fffff800`120f3f2a 0f84e7090000    je      nt!PspAllocateProcess+0x10d7 (fffff800`120f4917)

nt!PspAllocateProcess+0x6f0:
fffff800`120f3f30 4d8b8c2420010000 mov     r9,qword ptr [r12+120h]

nt!PspAllocateProcess+0x6f8:
fffff800`120f3f38 4d85e4          test    r12,r12
fffff800`120f3f3b 0f84de090000    je      nt!PspAllocateProcess+0x10df (fffff800`120f491f)

nt!PspAllocateProcess+0x701:
fffff800`120f3f41 458b84241c010000 mov     r8d,dword ptr [r12+11Ch]

nt!PspAllocateProcess+0x709:
fffff800`120f3f49 8a8424d8030000  mov     al,byte ptr [rsp+3D8h]
fffff800`120f3f50 2404            and     al,4
fffff800`120f3f52 f6d8            neg     al
fffff800`120f3f54 481bc9          sbb     rcx,rcx
fffff800`120f3f57 4823cf          and     rcx,rdi
fffff800`120f3f5a 498bd5          mov     rdx,r13
fffff800`120f3f5d e8163d0000      call    nt!ObInitProcess (fffff800`120f7c78)

nt!PspAllocateProcess+0x722:
fffff800`120f3f62 85c0            test    eax,eax
fffff800`120f3f64 448bf8          mov     r15d,eax
fffff800`120f3f67 0f889fd21800    js      nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt!PspAllocateProcess+0x72d:
fffff800`120f3f6d 408a7c2450      mov     dil,byte ptr [rsp+50h]
fffff800`120f3f72 f684243002000007 test    byte ptr [rsp+230h],7
fffff800`120f3f7a 0f850b050000    jne     nt!PspAllocateProcess+0xc4b (fffff800`120f448b)

nt!PspAllocateProcess+0x740:
fffff800`120f3f80 4d85e4          test    r12,r12
fffff800`120f3f83 740f            je      nt!PspAllocateProcess+0x754 (fffff800`120f3f94)

nt!PspAllocateProcess+0x745:
fffff800`120f3f85 41f744240400010000 test  dword ptr [r12+4],100h
fffff800`120f3f8e 0f8511070000    jne     nt!PspAllocateProcess+0xe65 (fffff800`120f46a5)

nt!PspAllocateProcess+0x754:
fffff800`120f3f94 33d2            xor     edx,edx
fffff800`120f3f96 498bcd          mov     rcx,r13
fffff800`120f3f99 e802d5c6ff      call    nt!MiSetMemoryPriorityProcess (fffff800`11d614a0)
fffff800`120f3f9e 33d2            xor     edx,edx
fffff800`120f3fa0 498bcd          mov     rcx,r13
fffff800`120f3fa3 e810c60100      call    nt!PspComputeQuantum (fffff800`121105b8)
fffff800`120f3fa8 88842498000000  mov     byte ptr [rsp+98h],al
fffff800`120f3faf 410fb68d47040000 movzx   ecx,byte ptr [r13+447h]
fffff800`120f3fb7 488d154240b8ff  lea     rdx,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`120f3fbe 8b8c8aa8294200  mov     ecx,dword ptr [rdx+rcx*4+4229A8h]
fffff800`120f3fc5 41888db4010000  mov     byte ptr [r13+1B4h],cl
fffff800`120f3fcc 418885b5010000  mov     byte ptr [r13+1B5h],al
fffff800`120f3fd3 458bfe          mov     r15d,r14d
fffff800`120f3fd6 4489742460      mov     dword ptr [rsp+60h],r14d
fffff800`120f3fdb 4c89b42488000000 mov     qword ptr [rsp+88h],r14
fffff800`120f3fe3 488d942488000000 lea     rdx,[rsp+88h]
fffff800`120f3feb 498bcc          mov     rcx,r12
fffff800`120f3fee e899040100      call    nt!PspReadIFEOMitigationOptions (fffff800`1210448c)
fffff800`120f3ff3 488b942488000000 mov     rdx,qword ptr [rsp+88h]
fffff800`120f3ffb 488b0da6c3edff  mov     rcx,qword ptr [nt!PspSystemMitigationOptions (fffff800`11fd03a8)]
fffff800`120f4002 e8f9c70100      call    nt!PspInheritMitigationOptions (fffff800`12110800)
fffff800`120f4007 4889842488000000 mov     qword ptr [rsp+88h],rax
fffff800`120f400f 4d85e4          test    r12,r12
fffff800`120f4012 740f            je      nt!PspAllocateProcess+0x7e3 (fffff800`120f4023)

nt!PspAllocateProcess+0x7d4:
fffff800`120f4014 41f744240400000100 test  dword ptr [r12+4],10000h
fffff800`120f401d 0f8560ce1800    jne     nt! ?? ::NNGAKEGL::`string'+0x49955 (fffff800`12280e83)

nt!PspAllocateProcess+0x7e3:
fffff800`120f4023 418bfe          mov     edi,r14d
fffff800`120f4026 4439b42480000000 cmp     dword ptr [rsp+80h],r14d
fffff800`120f402e b804000000      mov     eax,4
fffff800`120f4033 0f45f8          cmovne  edi,eax
fffff800`120f4036 b900ff0000      mov     ecx,0FF00h
fffff800`120f403b 85f9            test    ecx,edi
fffff800`120f403d 0f85b9060000    jne     nt!PspAllocateProcess+0xebc (fffff800`120f46fc)

nt!PspAllocateProcess+0x803:
fffff800`120f4043 4084f8          test    al,dil
fffff800`120f4046 0f85a1060000    jne     nt!PspAllocateProcess+0xead (fffff800`120f46ed)

nt!PspAllocateProcess+0x80c:
fffff800`120f404c 85f9            test    ecx,edi
fffff800`120f404e 0f85a8060000    jne     nt!PspAllocateProcess+0xebc (fffff800`120f46fc)

nt!PspAllocateProcess+0x814:
fffff800`120f4054 84db            test    bl,bl
fffff800`120f4056 0f8947040000    jns     nt!PspAllocateProcess+0xc63 (fffff800`120f44a3)

nt!PspAllocateProcess+0x81c:
fffff800`120f405c 8bc6            mov     eax,esi

nt!PspAllocateProcess+0x81e:
fffff800`120f405e 33c7            xor     eax,edi
fffff800`120f4060 23c6            and     eax,esi
fffff800`120f4062 33f8            xor     edi,eax
fffff800`120f4064 0fb6442458      movzx   eax,byte ptr [rsp+58h]
fffff800`120f4069 c1e805          shr     eax,5
fffff800`120f406c 23c6            and     eax,esi
fffff800`120f406e 448d0c00        lea     r9d,[rax+rax]
fffff800`120f4072 4433cf          xor     r9d,edi
fffff800`120f4075 4183e102        and     r9d,2
fffff800`120f4079 4433cf          xor     r9d,edi
fffff800`120f407c 4c8d842488000000 lea     r8,[rsp+88h]
fffff800`120f4084 488bbc24a0000000 mov     rdi,qword ptr [rsp+0A0h]
fffff800`120f408c 488bd7          mov     rdx,rdi
fffff800`120f408f 498bcd          mov     rcx,r13
fffff800`120f4092 e809cb0100      call    nt!PspApplyMitigationOptions (fffff800`12110ba0)
fffff800`120f4097 4d85e4          test    r12,r12
fffff800`120f409a 7410            je      nt!PspAllocateProcess+0x86c (fffff800`120f40ac)

nt!PspAllocateProcess+0x85c:
fffff800`120f409c 488b842488000000 mov     rax,qword ptr [rsp+88h]
fffff800`120f40a4 4989842460010000 mov     qword ptr [r12+160h],rax

nt!PspAllocateProcess+0x86c:
fffff800`120f40ac f68424d803000080 test    byte ptr [rsp+3D8h],80h
fffff800`120f40b4 0f856a070000    jne     nt!PspAllocateProcess+0xfe4 (fffff800`120f4824)

nt!PspAllocateProcess+0x87a:
fffff800`120f40ba 4c39b42410010000 cmp     qword ptr [rsp+110h],r14
fffff800`120f40c2 0f8429080000    je      nt!PspAllocateProcess+0x10b1 (fffff800`120f48f1)

nt!PspAllocateProcess+0x888:
fffff800`120f40c8 4c8d8c24d8030000 lea     r9,[rsp+3D8h]
fffff800`120f40d0 488bbc24d8000000 mov     rdi,qword ptr [rsp+0D8h]
fffff800`120f40d8 4c8bc7          mov     r8,rdi
fffff800`120f40db 33d2            xor     edx,edx
fffff800`120f40dd 498bcd          mov     rcx,r13
fffff800`120f40e0 e86bb00100      call    nt!MmInitializeProcessAddressSpace (fffff800`1210f150)
fffff800`120f40e5 448bf8          mov     r15d,eax
fffff800`120f40e8 85c0            test    eax,eax
fffff800`120f40ea 0f881cd11800    js      nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt!PspAllocateProcess+0x8b0:
fffff800`120f40f0 4d85e4          test    r12,r12
fffff800`120f40f3 7418            je      nt!PspAllocateProcess+0x8cd (fffff800`120f410d)

nt!PspAllocateProcess+0x8b5:
fffff800`120f40f5 488b4720        mov     rax,qword ptr [rdi+20h]
fffff800`120f40f9 488b4820        mov     rcx,qword ptr [rax+20h]
fffff800`120f40fd 498b85b0030000  mov     rax,qword ptr [r13+3B0h]
fffff800`120f4104 483bc8          cmp     rcx,rax
fffff800`120f4107 0f85be050000    jne     nt!PspAllocateProcess+0xe8b (fffff800`120f46cb)

nt!PspAllocateProcess+0x8cd:
fffff800`120f410d 44897c2460      mov     dword ptr [rsp+60h],r15d
fffff800`120f4112 83cb0a          or      ebx,0Ah
fffff800`120f4115 0fb68424d8030000 movzx   eax,byte ptr [rsp+3D8h]
fffff800`120f411d c1e804          shr     eax,4
fffff800`120f4120 23c6            and     eax,esi
fffff800`120f4122 c1e006          shl     eax,6
fffff800`120f4125 33c3            xor     eax,ebx
fffff800`120f4127 83e040          and     eax,40h
fffff800`120f412a 33d8            xor     ebx,eax
fffff800`120f412c 895c2454        mov     dword ptr [rsp+54h],ebx

nt!PspAllocateProcess+0x8f0:
fffff800`120f4130 f6c310          test    bl,10h
fffff800`120f4133 0f857d040000    jne     nt!PspAllocateProcess+0xd76 (fffff800`120f45b6)

nt!PspAllocateProcess+0x8f9:
fffff800`120f4139 4d39b518040000  cmp     qword ptr [r13+418h],r14
fffff800`120f4140 0f85a9040000    jne     nt!PspAllocateProcess+0xdaf (fffff800`120f45ef)

nt!PspAllocateProcess+0x906:
fffff800`120f4146 4883cfff        or      rdi,0FFFFFFFFFFFFFFFFh
fffff800`120f414a f6c302          test    bl,2
fffff800`120f414d 0f84ed000000    je      nt!PspAllocateProcess+0xa00 (fffff800`120f4240)

nt!PspAllocateProcess+0x913:
fffff800`120f4153 33c0            xor     eax,eax
fffff800`120f4155 4889842418010000 mov     qword ptr [rsp+118h],rax
fffff800`120f415d 4889bc2420010000 mov     qword ptr [rsp+120h],rdi
fffff800`120f4165 8bc3            mov     eax,ebx
fffff800`120f4167 c1e806          shr     eax,6
fffff800`120f416a 8a94241b010000  mov     dl,byte ptr [rsp+11Bh]
fffff800`120f4171 32c2            xor     al,dl
fffff800`120f4173 4022c6          and     al,sil
fffff800`120f4176 32d0            xor     dl,al
fffff800`120f4178 488b8424f8000000 mov     rax,qword ptr [rsp+0F8h]
fffff800`120f4180 0fb608          movzx   ecx,byte ptr [rax]
fffff800`120f4183 23ce            and     ecx,esi
fffff800`120f4185 02c9            add     cl,cl
fffff800`120f4187 32ca            xor     cl,dl
fffff800`120f4189 80e102          and     cl,2
fffff800`120f418c 32d1            xor     dl,cl
fffff800`120f418e 4d85e4          test    r12,r12
fffff800`120f4191 0f94c0          sete    al
fffff800`120f4194 8bf3            mov     esi,ebx
fffff800`120f4196 c1ee07          shr     esi,7
fffff800`120f4199 4080e601        and     sil,1
fffff800`120f419d 4002f6          add     sil,sil
fffff800`120f41a0 2401            and     al,1
fffff800`120f41a2 400af0          or      sil,al
fffff800`120f41a5 40c0e602        shl     sil,2
fffff800`120f41a9 80e2f3          and     dl,0F3h
fffff800`120f41ac 400af2          or      sil,dl
fffff800`120f41af 4439b42480000000 cmp     dword ptr [rsp+80h],r14d
fffff800`120f41b7 0f95c0          setne   al
fffff800`120f41ba 88442450        mov     byte ptr [rsp+50h],al
fffff800`120f41be 488d15fb60faff  lea     rdx,[nt!PspPackagedAppClaim (fffff800`1209a2c0)]
fffff800`120f41c5 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff800`120f41cd e87ee40000      call    nt!SeSecurityAttributePresent (fffff800`12102650)
fffff800`120f41d2 8a4c2450        mov     cl,byte ptr [rsp+50h]
fffff800`120f41d6 80e101          and     cl,1
fffff800`120f41d9 02c9            add     cl,cl
fffff800`120f41db 2401            and     al,1
fffff800`120f41dd 0ac8            or      cl,al
fffff800`120f41df c0e105          shl     cl,5
fffff800`120f41e2 4080e69f        and     sil,9Fh
fffff800`120f41e6 400ace          or      cl,sil
fffff800`120f41e9 884c2450        mov     byte ptr [rsp+50h],cl
fffff800`120f41ed 888c241b010000  mov     byte ptr [rsp+11Bh],cl
fffff800`120f41f4 498bcd          mov     rcx,r13
fffff800`120f41f7 4c39b42410010000 cmp     qword ptr [rsp+110h],r14
fffff800`120f41ff 0f84b1cd1800    je      nt! ?? ::NNGAKEGL::`string'+0x49a88 (fffff800`12280fb6)

nt!PspAllocateProcess+0x9c5:
fffff800`120f4205 498db5e8030000  lea     rsi,[r13+3E8h]
fffff800`120f420c 4c8d8c24c0000000 lea     r9,[rsp+0C0h]
fffff800`120f4214 4c8bc6          mov     r8,rsi
fffff800`120f4217 488d942418010000 lea     rdx,[rsp+118h]
fffff800`120f421f e8d4070100      call    nt!MmCreatePeb (fffff800`121049f8)
fffff800`120f4224 448bf8          mov     r15d,eax
fffff800`120f4227 85c0            test    eax,eax
fffff800`120f4229 0f88f8060000    js      nt!PspAllocateProcess+0x10e7 (fffff800`120f4927)

nt!PspAllocateProcess+0x9ef:
fffff800`120f422f 8d7702          lea     esi,[rdi+2]
fffff800`120f4232 4c39b424c0000000 cmp     qword ptr [rsp+0C0h],r14
fffff800`120f423a 0f853acd1800    jne     nt! ?? ::NNGAKEGL::`string'+0x49a4c (fffff800`12280f7a)

nt!PspAllocateProcess+0xa00:
fffff800`120f4240 8bc3            mov     eax,ebx
fffff800`120f4242 c1e803          shr     eax,3
fffff800`120f4245 23c6            and     eax,esi
fffff800`120f4247 8944245c        mov     dword ptr [rsp+5Ch],eax
fffff800`120f424b 0f84ae060000    je      nt!PspAllocateProcess+0x10bf (fffff800`120f48ff)

nt!PspAllocateProcess+0xa11:
fffff800`120f4251 4d85e4          test    r12,r12
fffff800`120f4254 0f84a5060000    je      nt!PspAllocateProcess+0x10bf (fffff800`120f48ff)

nt!PspAllocateProcess+0xa1a:
fffff800`120f425a 4d8bcc          mov     r9,r12
fffff800`120f425d 4c8d842448020000 lea     r8,[rsp+248h]
fffff800`120f4265 498bd5          mov     rdx,r13
fffff800`120f4268 488b8c24a0000000 mov     rcx,qword ptr [rsp+0A0h]
fffff800`120f4270 e8df490100      call    nt!PspSetupUserProcessAddressSpace (fffff800`12108c54)
fffff800`120f4275 448bf8          mov     r15d,eax

nt!PspAllocateProcess+0xa38:
fffff800`120f4278 4c8ba42400010000 mov     r12,qword ptr [rsp+100h]

nt!PspAllocateProcess+0xa40:
fffff800`120f4280 4585ff          test    r15d,r15d
fffff800`120f4283 0f8897cf1800    js      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt!PspAllocateProcess+0xa49:
fffff800`120f4289 664101bc24e4010000 add   word ptr [r12+1E4h],di
fffff800`120f4292 4981c5c8020000  add     r13,2C8h
fffff800`120f4299 f0490fba6d0000  lock bts qword ptr [r13],0
fffff800`120f42a0 0f82f8ce1800    jb      nt! ?? ::NNGAKEGL::`string'+0x49c92 (fffff800`1228119e)

nt!PspAllocateProcess+0xa66:
fffff800`120f42a6 488b0ddbbeedff  mov     rcx,qword ptr [nt!PspCidTable (fffff800`11fd0188)]
fffff800`120f42ad 488b5c2468      mov     rbx,qword ptr [rsp+68h]
fffff800`120f42b2 4489742428      mov     dword ptr [rsp+28h],r14d
fffff800`120f42b7 4489742420      mov     dword ptr [rsp+20h],r14d
fffff800`120f42bc 4533c9          xor     r9d,r9d
fffff800`120f42bf 4533c0          xor     r8d,r8d
fffff800`120f42c2 488bd3          mov     rdx,rbx
fffff800`120f42c5 e842320100      call    nt!ExCreateHandleEx (fffff800`1210750c)
fffff800`120f42ca 488983e0020000  mov     qword ptr [rbx+2E0h],rax
fffff800`120f42d1 4885c0          test    rax,rax
fffff800`120f42d4 0f84d2ce1800    je      nt! ?? ::NNGAKEGL::`string'+0x49ca0 (fffff800`122811ac)

nt!PspAllocateProcess+0xa9a:
fffff800`120f42da 48a11400000080f7ffff mov rax,qword ptr [FFFFF78000000014h]
fffff800`120f42e4 488b4c2468      mov     rcx,qword ptr [rsp+68h]
fffff800`120f42e9 488981d0020000  mov     qword ptr [rcx+2D0h],rax
fffff800`120f42f0 488b842470010000 mov     rax,qword ptr [rsp+170h]
fffff800`120f42f8 488908          mov     qword ptr [rax],rcx
fffff800`120f42fb 8b442460        mov     eax,dword ptr [rsp+60h]

nt!PspAllocateProcess+0xabf:
fffff800`120f42ff 488b8c2468030000 mov     rcx,qword ptr [rsp+368h]
fffff800`120f4307 4833cc          xor     rcx,rsp
fffff800`120f430a e8b151bdff      call    nt!_security_check_cookie (fffff800`11cc94c0)
fffff800`120f430f 4c8d9c2470030000 lea     r11,[rsp+370h]
fffff800`120f4317 498b5b38        mov     rbx,qword ptr [r11+38h]
fffff800`120f431b 498b7348        mov     rsi,qword ptr [r11+48h]
fffff800`120f431f 498be3          mov     rsp,r11
fffff800`120f4322 415f            pop     r15
fffff800`120f4324 415e            pop     r14
fffff800`120f4326 415d            pop     r13
fffff800`120f4328 415c            pop     r12
fffff800`120f432a 5f              pop     rdi
fffff800`120f432b c3              ret

nt!PspAllocateProcess+0xaec:
fffff800`120f432c 418a442408      mov     al,byte ptr [r12+8]
fffff800`120f4331 84c0            test    al,al
fffff800`120f4333 784a            js      nt!PspAllocateProcess+0xb3f (fffff800`120f437f)

nt!PspAllocateProcess+0xaf5:
fffff800`120f4335 488d842438010000 lea     rax,[rsp+138h]
fffff800`120f433d 4889442428      mov     qword ptr [rsp+28h],rax
fffff800`120f4342 c744242002000000 mov     dword ptr [rsp+20h],2
fffff800`120f434a 4c8d8c24a8000000 lea     r9,[rsp+0A8h]
fffff800`120f4352 448bc6          mov     r8d,esi
fffff800`120f4355 488d15348ffdff  lea     rdx,[nt! ?? ::NNGAKEGL::`string' (fffff800`120cd290)]
fffff800`120f435c 498b0f          mov     rcx,qword ptr [r15]
fffff800`120f435f e870ecf9ff      call    nt!RtlQueryImageFileKeyOption (fffff800`12092fd4)
fffff800`120f4364 85c0            test    eax,eax
fffff800`120f4366 0f895ac81800    jns     nt! ?? ::NNGAKEGL::`string'+0x49690 (fffff800`12280bc6)

nt!PspAllocateProcess+0xb2c:
fffff800`120f436c 3d05000080      cmp     eax,80000005h
fffff800`120f4371 0f8427c81800    je      nt! ?? ::NNGAKEGL::`string'+0x49668 (fffff800`12280b9e)

nt!PspAllocateProcess+0xb37:
fffff800`120f4377 85c0            test    eax,eax
fffff800`120f4379 0f8947c81800    jns     nt! ?? ::NNGAKEGL::`string'+0x49690 (fffff800`12280bc6)

nt!PspAllocateProcess+0xb3f:
fffff800`120f437f 4489742470      mov     dword ptr [rsp+70h],r14d
fffff800`120f4384 4c89742428      mov     qword ptr [rsp+28h],r14
fffff800`120f4389 b804000000      mov     eax,4
fffff800`120f438e 89442420        mov     dword ptr [rsp+20h],eax
fffff800`120f4392 4c8d4c2470      lea     r9,[rsp+70h]
fffff800`120f4397 448bc0          mov     r8d,eax
fffff800`120f439a 488d150f8ffdff  lea     rdx,[nt! ?? ::NNGAKEGL::`string' (fffff800`120cd2b0)]
fffff800`120f43a1 498b0f          mov     rcx,qword ptr [r15]
fffff800`120f43a4 e82becf9ff      call    nt!RtlQueryImageFileKeyOption (fffff800`12092fd4)
fffff800`120f43a9 85c0            test    eax,eax
fffff800`120f43ab 0f8934c81800    jns     nt! ?? ::NNGAKEGL::`string'+0x496af (fffff800`12280be5)

nt!PspAllocateProcess+0xb71:
fffff800`120f43b1 4c39b42440010000 cmp     qword ptr [rsp+140h],r14
fffff800`120f43b9 7510            jne     nt!PspAllocateProcess+0xb8b (fffff800`120f43cb)

nt!PspAllocateProcess+0xb7b:
fffff800`120f43bb 4c8d442478      lea     r8,[rsp+78h]
fffff800`120f43c0 498b17          mov     rdx,qword ptr [r15]
fffff800`120f43c3 498bcd          mov     rcx,r13
fffff800`120f43c6 e8c115faff      call    nt!PspReadIFEONodeOptions (fffff800`1209598c)

nt!PspAllocateProcess+0xb8b:
fffff800`120f43cb 4489b424d0000000 mov     dword ptr [rsp+0D0h],r14d
fffff800`120f43d3 4c89742428      mov     qword ptr [rsp+28h],r14
fffff800`120f43d8 b804000000      mov     eax,4
fffff800`120f43dd 89442420        mov     dword ptr [rsp+20h],eax
fffff800`120f43e1 4c8d8c24d0000000 lea     r9,[rsp+0D0h]
fffff800`120f43e9 448bc0          mov     r8d,eax
fffff800`120f43ec 488d15fd8efdff  lea     rdx,[nt! ?? ::NNGAKEGL::`string' (fffff800`120cd2f0)]
fffff800`120f43f3 498b0f          mov     rcx,qword ptr [r15]
fffff800`120f43f6 e8d9ebf9ff      call    nt!RtlQueryImageFileKeyOption (fffff800`12092fd4)
fffff800`120f43fb 85c0            test    eax,eax
fffff800`120f43fd 0f89bcc81800    jns     nt! ?? ::NNGAKEGL::`string'+0x49791 (fffff800`12280cbf)

nt!PspAllocateProcess+0xbc3:
fffff800`120f4403 c78424b801000030000000 mov dword ptr [rsp+1B8h],30h
fffff800`120f440e 498b07          mov     rax,qword ptr [r15]
fffff800`120f4411 48898424c0010000 mov     qword ptr [rsp+1C0h],rax
fffff800`120f4419 c78424d001000040020000 mov dword ptr [rsp+1D0h],240h
fffff800`120f4424 488d056560faff  lea     rax,[nt!SepServicesFilterPrivileges+0x10 (fffff800`1209a490)]
fffff800`120f442b 48898424c8010000 mov     qword ptr [rsp+1C8h],rax
fffff800`120f4433 4c89b424d8010000 mov     qword ptr [rsp+1D8h],r14
fffff800`120f443b 4c89b424e0010000 mov     qword ptr [rsp+1E0h],r14
fffff800`120f4443 4c8d8424b8010000 lea     r8,[rsp+1B8h]
fffff800`120f444b 8bd6            mov     edx,esi
fffff800`120f444d 488d8c2458010000 lea     rcx,[rsp+158h]
fffff800`120f4455 e8e6edbdff      call    nt!ZwOpenKey (fffff800`11cd3240)
fffff800`120f445a 85c0            test    eax,eax
fffff800`120f445c 0f88e6f7ffff    js      nt!PspAllocateProcess+0x408 (fffff800`120f3c48)

nt!PspAllocateProcess+0xc22:
fffff800`120f4462 488d942430020000 lea     rdx,[rsp+230h]
fffff800`120f446a 488b8c2458010000 mov     rcx,qword ptr [rsp+158h]
fffff800`120f4472 e8250b0400      call    nt!PspReadIFEOPerfOptions (fffff800`12134f9c)
fffff800`120f4477 33d2            xor     edx,edx
fffff800`120f4479 488b8c2458010000 mov     rcx,qword ptr [rsp+158h]
fffff800`120f4481 e85664fbff      call    nt!ObCloseHandle (fffff800`120aa8dc)
fffff800`120f4486 e9bdf7ffff      jmp     nt!PspAllocateProcess+0x408 (fffff800`120f3c48)

nt!PspAllocateProcess+0xc4b:
fffff800`120f448b 448ac7          mov     r8b,dil
fffff800`120f448e 488d942430020000 lea     rdx,[rsp+230h]
fffff800`120f4496 498bcd          mov     rcx,r13
fffff800`120f4499 e8d60b0400      call    nt!PspApplyIFEOPerfOptions (fffff800`12135074)
fffff800`120f449e e9ddfaffff      jmp     nt!PspAllocateProcess+0x740 (fffff800`120f3f80)

nt!PspAllocateProcess+0xc63:
fffff800`120f44a3 0fbae308        bt      ebx,8
fffff800`120f44a7 418bc6          mov     eax,r14d
fffff800`120f44aa 0f83aefbffff    jae     nt!PspAllocateProcess+0x81e (fffff800`120f405e)

nt!PspAllocateProcess+0xc70:
fffff800`120f44b0 e9a7fbffff      jmp     nt!PspAllocateProcess+0x81c (fffff800`120f405c)

nt!PspAllocateProcess+0xc75:
fffff800`120f44b5 458bc6          mov     r8d,r14d
fffff800`120f44b8 4439b424e8030000 cmp     dword ptr [rsp+3E8h],r14d
fffff800`120f44c0 410f95c0        setne   r8b
fffff800`120f44c4 4c8d8c2408010000 lea     r9,[rsp+108h]
fffff800`120f44cc 488d8c2430030000 lea     rcx,[rsp+330h]
fffff800`120f44d4 e89f18faff      call    nt!RtlAcquirePrivilege (fffff800`12095d78)
fffff800`120f44d9 85c0            test    eax,eax
fffff800`120f44db 0f881ef8ffff    js      nt!PspAllocateProcess+0x4bf (fffff800`120f3cff)

nt!PspAllocateProcess+0xca1:
fffff800`120f44e1 83cb10          or      ebx,10h
fffff800`120f44e4 895c2454        mov     dword ptr [rsp+54h],ebx
fffff800`120f44e8 e912f8ffff      jmp     nt!PspAllocateProcess+0x4bf (fffff800`120f3cff)

nt!PspAllocateProcess+0xcad:
fffff800`120f44ed 8bc2            mov     eax,edx
fffff800`120f44ef c784843003000003000000 mov dword ptr [rsp+rax*4+330h],3
fffff800`120f44fa 03d6            add     edx,esi
fffff800`120f44fc e9def7ffff      jmp     nt!PspAllocateProcess+0x49f (fffff800`120f3cdf)

nt!PspAllocateProcess+0xcc1:
fffff800`120f4501 8a542450        mov     dl,byte ptr [rsp+50h]
fffff800`120f4505 488b0da48d2000  mov     rcx,qword ptr [nt!SeAssignPrimaryTokenPrivilege (fffff800`122fd2b0)]
fffff800`120f450c e857990000      call    nt!SeSinglePrivilegeCheck (fffff800`120fde68)
fffff800`120f4511 84c0            test    al,al
fffff800`120f4513 0f84bf010000    je      nt!PspAllocateProcess+0xe98 (fffff800`120f46d8)

nt!PspAllocateProcess+0xcd9:
fffff800`120f4519 83cb04          or      ebx,4

nt!PspAllocateProcess+0xcdc:
fffff800`120f451c 488d542451      lea     rdx,[rsp+51h]
fffff800`120f4521 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff800`120f4529 e89215faff      call    nt!SeIsTokenAssignableToProcess (fffff800`12095ac0)
fffff800`120f452e 448bf8          mov     r15d,eax
fffff800`120f4531 85c0            test    eax,eax
fffff800`120f4533 0f88d3cc1800    js      nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt!PspAllocateProcess+0xcf9:
fffff800`120f4539 4438742451      cmp     byte ptr [rsp+51h],r14b
fffff800`120f453e 0f84b7000000    je      nt!PspAllocateProcess+0xdbb (fffff800`120f45fb)

nt!PspAllocateProcess+0xd04:
fffff800`120f4544 488d942428010000 lea     rdx,[rsp+128h]
fffff800`120f454c 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff800`120f4554 e8bb43f9ff      call    nt!SeQuerySessionIdToken (fffff800`12088914)
fffff800`120f4559 448bf8          mov     r15d,eax
fffff800`120f455c 85c0            test    eax,eax
fffff800`120f455e 0f88a8cc1800    js      nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt!PspAllocateProcess+0xd24:
fffff800`120f4564 4c8bbc2490000000 mov     r15,qword ptr [rsp+90h]
fffff800`120f456c 498bcf          mov     rcx,r15
fffff800`120f456f e8741ac4ff      call    nt!MmGetSessionIdEx (fffff800`11d35fe8)
fffff800`120f4574 8b8c2428010000  mov     ecx,dword ptr [rsp+128h]
fffff800`120f457b 3bc8            cmp     ecx,eax
fffff800`120f457d 0f8586000000    jne     nt!PspAllocateProcess+0xdc9 (fffff800`120f4609)

nt!PspAllocateProcess+0xd43:
fffff800`120f4583 8a4c2451        mov     cl,byte ptr [rsp+51h]
fffff800`120f4587 e9c0f7ffff      jmp     nt!PspAllocateProcess+0x50c (fffff800`120f3d4c)

nt!PspAllocateProcess+0xd4c:
fffff800`120f458c 84c9            test    cl,cl
fffff800`120f458e 0f85c6f7ffff    jne     nt!PspAllocateProcess+0x51a (fffff800`120f3d5a)

nt!PspAllocateProcess+0xd54:
fffff800`120f4594 4c8b8424b0000000 mov     r8,qword ptr [rsp+0B0h]
fffff800`120f459c 498bd5          mov     rdx,r13
fffff800`120f459f 33c9            xor     ecx,ecx
fffff800`120f45a1 e85a4efaff      call    nt!PspAssignProcessQuotaBlock (fffff800`12099400)
fffff800`120f45a6 448bf8          mov     r15d,eax
fffff800`120f45a9 85c0            test    eax,eax
fffff800`120f45ab 0f89dcf7ffff    jns     nt!PspAllocateProcess+0x54d (fffff800`120f3d8d)

nt!PspAllocateProcess+0xd71:
fffff800`120f45b1 e908c81800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49890 (fffff800`12280dbe)

nt!PspAllocateProcess+0xd76:
fffff800`120f45b6 488b8c2408010000 mov     rcx,qword ptr [rsp+108h]
fffff800`120f45be e83117faff      call    nt!RtlReleasePrivilege (fffff800`12095cf4)
fffff800`120f45c3 e971fbffff      jmp     nt!PspAllocateProcess+0x8f9 (fffff800`120f4139)

nt!PspAllocateProcess+0xd88:
fffff800`120f45c8 84c9            test    cl,cl
fffff800`120f45ca 0f852ff6ffff    jne     nt!PspAllocateProcess+0x3bf (fffff800`120f3bff)

nt!PspAllocateProcess+0xd90:
fffff800`120f45d0 b84c010000      mov     eax,14Ch
fffff800`120f45d5 663bd0          cmp     dx,ax
fffff800`120f45d8 0f8421f6ffff    je      nt!PspAllocateProcess+0x3bf (fffff800`120f3bff)

nt!PspAllocateProcess+0xd9e:
fffff800`120f45de e9d6c51800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49683 (fffff800`12280bb9)

nt!PspAllocateProcess+0xda3:
fffff800`120f45e3 4989b518040000  mov     qword ptr [r13+418h],rsi
fffff800`120f45ea e996f6ffff      jmp     nt!PspAllocateProcess+0x445 (fffff800`120f3c85)

nt!PspAllocateProcess+0xdaf:
fffff800`120f45ef 4109b5b0010000  or      dword ptr [r13+1B0h],esi
fffff800`120f45f6 e94bfbffff      jmp     nt!PspAllocateProcess+0x906 (fffff800`120f4146)

nt!PspAllocateProcess+0xdbb:
fffff800`120f45fb f6c304          test    bl,4
fffff800`120f45fe 0f8540ffffff    jne     nt!PspAllocateProcess+0xd04 (fffff800`120f4544)

nt!PspAllocateProcess+0xdc4:
fffff800`120f4604 e99fc71800      jmp     nt! ?? ::NNGAKEGL::`string'+0x4987a (fffff800`12280da8)

nt!PspAllocateProcess+0xdc9:
fffff800`120f4609 f6c304          test    bl,4
fffff800`120f460c 0f8496c71800    je      nt! ?? ::NNGAKEGL::`string'+0x4987a (fffff800`12280da8)

nt!PspAllocateProcess+0xdd2:
fffff800`120f4612 f68424d803000080 test    byte ptr [rsp+3D8h],80h
fffff800`120f461a 0f8593c71800    jne     nt! ?? ::NNGAKEGL::`string'+0x49885 (fffff800`12280db3)

nt!PspAllocateProcess+0xde0:
fffff800`120f4620 4c8d842430010000 lea     r8,[rsp+130h]
fffff800`120f4628 488d942448020000 lea     rdx,[rsp+248h]
fffff800`120f4630 e80ba9f8ff      call    nt!PspAttachSession (fffff800`1207ef40)
fffff800`120f4635 448bf8          mov     r15d,eax
fffff800`120f4638 85c0            test    eax,eax
fffff800`120f463a 0f88cccb1800    js      nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt!PspAllocateProcess+0xe00:
fffff800`120f4640 0bde            or      ebx,esi
fffff800`120f4642 488b8424e8000000 mov     rax,qword ptr [rsp+0E8h]
fffff800`120f464a 0fba2819        bts     dword ptr [rax],19h
fffff800`120f464e 8a4c2451        mov     cl,byte ptr [rsp+51h]
fffff800`120f4652 e9edf6ffff      jmp     nt!PspAllocateProcess+0x504 (fffff800`120f3d44)

nt!PspAllocateProcess+0xe17:
fffff800`120f4657 488d942448020000 lea     rdx,[rsp+248h]
fffff800`120f465f 4c8bbc2430010000 mov     r15,qword ptr [rsp+130h]
fffff800`120f4667 498bcf          mov     rcx,r15
fffff800`120f466a e8c12abcff      call    nt!MmDetachSession (fffff800`11cb7130)
fffff800`120f466f 498bcf          mov     rcx,r15
fffff800`120f4672 e86925c2ff      call    nt!ObfDereferenceObject (fffff800`11d16be0)
fffff800`120f4677 e94ff7ffff      jmp     nt!PspAllocateProcess+0x58b (fffff800`120f3dcb)

nt!PspAllocateProcess+0xe3c:
fffff800`120f467c 418b842434010000 mov     eax,dword ptr [r12+134h]
fffff800`120f4684 488bbc24a0000000 mov     rdi,qword ptr [rsp+0A0h]
fffff800`120f468c e91bf4ffff      jmp     nt!PspAllocateProcess+0x26c (fffff800`120f3aac)

nt!PspAllocateProcess+0xe51:
fffff800`120f4691 4180bc24f000000004 cmp   byte ptr [r12+0F0h],4
fffff800`120f469a 0f8531f6ffff    jne     nt!PspAllocateProcess+0x491 (fffff800`120f3cd1)

nt!PspAllocateProcess+0xe60:
fffff800`120f46a0 e9ddc61800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49854 (fffff800`12280d82)

nt!PspAllocateProcess+0xe65:
fffff800`120f46a5 448acf          mov     r9b,dil
fffff800`120f46a8 4533c0          xor     r8d,r8d
fffff800`120f46ab 418a9424f0000000 mov     dl,byte ptr [r12+0F0h]
fffff800`120f46b3 498bcd          mov     rcx,r13
fffff800`120f46b6 e8996bf8ff      call    nt!PspSetProcessPriorityClass (fffff800`1207b254)
fffff800`120f46bb 448bf8          mov     r15d,eax
fffff800`120f46be 85c0            test    eax,eax
fffff800`120f46c0 0f89cef8ffff    jns     nt!PspAllocateProcess+0x754 (fffff800`120f3f94)

nt!PspAllocateProcess+0xe86:
fffff800`120f46c6 e941cb1800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt!PspAllocateProcess+0xe8b:
fffff800`120f46cb 482bc1          sub     rax,rcx
fffff800`120f46ce 4901442430      add     qword ptr [r12+30h],rax
fffff800`120f46d3 e935faffff      jmp     nt!PspAllocateProcess+0x8cd (fffff800`120f410d)

nt!PspAllocateProcess+0xe98:
fffff800`120f46d8 83e3fb          and     ebx,0FFFFFFFBh
fffff800`120f46db e93cfeffff      jmp     nt!PspAllocateProcess+0xcdc (fffff800`120f451c)

nt!PspAllocateProcess+0xea0:
fffff800`120f46e0 c744246000000200 mov     dword ptr [rsp+60h],20000h
fffff800`120f46e8 e998f5ffff      jmp     nt!PspAllocateProcess+0x445 (fffff800`120f3c85)

nt!PspAllocateProcess+0xead:
fffff800`120f46ed 81e7ff01ffff    and     edi,0FFFF01FFh
fffff800`120f46f3 0fbaef08        bts     edi,8
fffff800`120f46f7 e950f9ffff      jmp     nt!PspAllocateProcess+0x80c (fffff800`120f404c)

nt!PspAllocateProcess+0xebc:
fffff800`120f46fc 488d8c2488000000 lea     rcx,[rsp+88h]
fffff800`120f4704 e843d50400      call    nt!PspHardenMitigationOptions (fffff800`12141c4c)
fffff800`120f4709 448bf8          mov     r15d,eax
fffff800`120f470c 4d85e4          test    r12,r12
fffff800`120f470f 740f            je      nt!PspAllocateProcess+0xee0 (fffff800`120f4720)

nt!PspAllocateProcess+0xed1:
fffff800`120f4711 41f744240400000100 test  dword ptr [r12+4],10000h
fffff800`120f471a 0f8580c71800    jne     nt! ?? ::NNGAKEGL::`string'+0x49972 (fffff800`12280ea0)

nt!PspAllocateProcess+0xee0:
fffff800`120f4720 458bfe          mov     r15d,r14d
fffff800`120f4723 e92cf9ffff      jmp     nt!PspAllocateProcess+0x814 (fffff800`120f4054)

nt!PspAllocateProcess+0xee8:
fffff800`120f4728 4439b42480000000 cmp     dword ptr [rsp+80h],r14d
fffff800`120f4730 0f8584f5ffff    jne     nt!PspAllocateProcess+0x47a (fffff800`120f3cba)

nt!PspAllocateProcess+0xef6:
fffff800`120f4736 e933c61800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49840 (fffff800`12280d6e)

nt!PspAllocateProcess+0xefb:
fffff800`120f473b 4c8d8c2440030000 lea     r9,[rsp+340h]
fffff800`120f4743 4533c0          xor     r8d,r8d
fffff800`120f4746 488d942480020000 lea     rdx,[rsp+280h]
fffff800`120f474e 488bc8          mov     rcx,rax
fffff800`120f4751 e8d6f4c5ff      call    nt!KeQueryAffinityProcess (fffff800`11d53c2c)
fffff800`120f4756 410fb7ce        movzx   ecx,r14w
fffff800`120f475a 66443bb42480020000 cmp   r14w,word ptr [rsp+280h]
fffff800`120f4763 7336            jae     nt!PspAllocateProcess+0xf5b (fffff800`120f479b)

nt!PspAllocateProcess+0xf25:
fffff800`120f4765 0fb7c1          movzx   eax,cx
fffff800`120f4768 488b94c488020000 mov     rdx,qword ptr [rsp+rax*8+288h]
fffff800`120f4770 4885d2          test    rdx,rdx
fffff800`120f4773 0f84f4c61800    je      nt! ?? ::NNGAKEGL::`string'+0x4993f (fffff800`12280e6d)

nt!PspAllocateProcess+0xf39:
fffff800`120f4779 33c0            xor     eax,eax
fffff800`120f477b 48898424c0000000 mov     qword ptr [rsp+0C0h],rax
fffff800`120f4783 48898424c8000000 mov     qword ptr [rsp+0C8h],rax
fffff800`120f478b 66898c24c8000000 mov     word ptr [rsp+0C8h],cx
fffff800`120f4793 48899424c0000000 mov     qword ptr [rsp+0C0h],rdx

nt!PspAllocateProcess+0xf5b:
fffff800`120f479b 0fb78424c8000000 movzx   eax,word ptr [rsp+0C8h]
fffff800`120f47a3 0fb78c4440030000 movzx   ecx,word ptr [rsp+rax*2+340h]
fffff800`120f47ab 488d054e38b8ff  lea     rax,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`120f47b2 4c8b8cc880183500 mov     r9,qword ptr [rax+rcx*8+351880h]
fffff800`120f47ba 4c894c2478      mov     qword ptr [rsp+78h],r9
fffff800`120f47bf e9b0f6ffff      jmp     nt!PspAllocateProcess+0x634 (fffff800`120f3e74)

nt!PspAllocateProcess+0xf84:
fffff800`120f47c4 498bd6          mov     rdx,r14
fffff800`120f47c7 e9e2f6ffff      jmp     nt!PspAllocateProcess+0x66e (fffff800`120f3eae)

nt!PspAllocateProcess+0xf8c:
fffff800`120f47cc 41888547040000  mov     byte ptr [r13+447h],al
fffff800`120f47d3 e94ff7ffff      jmp     nt!PspAllocateProcess+0x6e7 (fffff800`120f3f27)

nt!PspAllocateProcess+0xf98:
fffff800`120f47d8 4885d2          test    rdx,rdx
fffff800`120f47db 0f85efc21800    jne     nt! ?? ::NNGAKEGL::`string'+0x49586 (fffff800`12280ad0)

nt!PspAllocateProcess+0xfa1:
fffff800`120f47e1 410fb78424f2000000 movzx eax,word ptr [r12+0F2h]
fffff800`120f47ea 488d0d0f38b8ff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`120f47f1 488b84c180183500 mov     rax,qword ptr [rcx+rax*8+351880h]
fffff800`120f47f9 4889442478      mov     qword ptr [rsp+78h],rax
fffff800`120f47fe e94ef1ffff      jmp     nt!PspAllocateProcess+0x111 (fffff800`120f3951)

nt!PspAllocateProcess+0xfc3:
fffff800`120f4803 440fb77858      movzx   r15d,word ptr [rax+58h]
fffff800`120f4808 e92cf6ffff      jmp     nt!PspAllocateProcess+0x5f9 (fffff800`120f3e39)

nt!PspAllocateProcess+0xfcd:
fffff800`120f480d 488b054c39e2ff  mov     rax,qword ptr [nt!MiSessionLeaderProcess (fffff800`11f18160)]
fffff800`120f4814 4839842490000000 cmp     qword ptr [rsp+90h],rax
fffff800`120f481c 0f84d5f4ffff    je      nt!PspAllocateProcess+0x4b7 (fffff800`120f3cf7)

nt!PspAllocateProcess+0xfe2:
fffff800`120f4822 eb6e            jmp     nt!PspAllocateProcess+0x1052 (fffff800`120f4892)

nt!PspAllocateProcess+0xfe4:
fffff800`120f4824 488b053539e2ff  mov     rax,qword ptr [nt!MiSessionLeaderProcess (fffff800`11f18160)]
fffff800`120f482b 4839842490000000 cmp     qword ptr [rsp+90h],rax
fffff800`120f4833 0f8481f8ffff    je      nt!PspAllocateProcess+0x87a (fffff800`120f40ba)

nt!PspAllocateProcess+0xff9:
fffff800`120f4839 8a542450        mov     dl,byte ptr [rsp+50h]
fffff800`120f483d 488b0d2c892000  mov     rcx,qword ptr [nt!SeLoadDriverPrivilege (fffff800`122fd170)]
fffff800`120f4844 e81f960000      call    nt!SeSinglePrivilegeCheck (fffff800`120fde68)
fffff800`120f4849 84c0            test    al,al
fffff800`120f484b 0f8569f8ffff    jne     nt!PspAllocateProcess+0x87a (fffff800`120f40ba)

nt!PspAllocateProcess+0x1011:
fffff800`120f4851 e952c51800      jmp     nt! ?? ::NNGAKEGL::`string'+0x4987a (fffff800`12280da8)

nt!PspAllocateProcess+0x1016:
fffff800`120f4856 b805000000      mov     eax,5
fffff800`120f485b e94cf2ffff      jmp     nt!PspAllocateProcess+0x26c (fffff800`120f3aac)

nt!PspAllocateProcess+0x1020:
fffff800`120f4860 ba02000000      mov     edx,2
fffff800`120f4865 e8f68ec7ff      call    nt!MmGetDefaultPagePriority (fffff800`11d6d760)
fffff800`120f486a 448bc0          mov     r8d,eax
fffff800`120f486d e988f2ffff      jmp     nt!PspAllocateProcess+0x2ba (fffff800`120f3afa)

nt!PspAllocateProcess+0x1032:
fffff800`120f4872 4885ff          test    rdi,rdi
fffff800`120f4875 0f84ddf2ffff    je      nt!PspAllocateProcess+0x318 (fffff800`120f3b58)

nt!PspAllocateProcess+0x103b:
fffff800`120f487b e96bc21800      jmp     nt! ?? ::NNGAKEGL::`string'+0x495a1 (fffff800`12280aeb)

nt!PspAllocateProcess+0x1040:
fffff800`120f4880 4d85ff          test    r15,r15
fffff800`120f4883 0f8579c41800    jne     nt! ?? ::NNGAKEGL::`string'+0x497d4 (fffff800`12280d02)

nt!PspAllocateProcess+0x1049:
fffff800`120f4889 410fb7d6        movzx   edx,r14w
fffff800`120f488d e9d6f3ffff      jmp     nt!PspAllocateProcess+0x428 (fffff800`120f3c68)

nt!PspAllocateProcess+0x1052:
fffff800`120f4892 8bc2            mov     eax,edx
fffff800`120f4894 c78484300300000a000000 mov dword ptr [rsp+rax*4+330h],0Ah
fffff800`120f489f 03d6            add     edx,esi
fffff800`120f48a1 e951f4ffff      jmp     nt!PspAllocateProcess+0x4b7 (fffff800`120f3cf7)

nt!PspAllocateProcess+0x1066:
fffff800`120f48a6 488b842490000000 mov     rax,qword ptr [rsp+90h]
fffff800`120f48ae 488b8008040000  mov     rax,qword ptr [rax+408h]
fffff800`120f48b5 49898508040000  mov     qword ptr [r13+408h],rax
fffff800`120f48bc 33d2            xor     edx,edx
fffff800`120f48be 498bcd          mov     rcx,r13
fffff800`120f48c1 e86a100700      call    nt!PspInheritQuota (fffff800`12165930)
fffff800`120f48c6 e845060700      call    nt!MmInitializeHandBuiltProcess (fffff800`12164f10)
fffff800`120f48cb 448bf8          mov     r15d,eax
fffff800`120f48ce 85c0            test    eax,eax
fffff800`120f48d0 0f89fef4ffff    jns     nt!PspAllocateProcess+0x594 (fffff800`120f3dd4)

nt!PspAllocateProcess+0x1096:
fffff800`120f48d6 e931c91800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt!PspAllocateProcess+0x109b:
fffff800`120f48db 450fb7fe        movzx   r15d,r14w
fffff800`120f48df e955f5ffff      jmp     nt!PspAllocateProcess+0x5f9 (fffff800`120f3e39)

nt!PspAllocateProcess+0x10a4:
fffff800`120f48e4 498bcd          mov     rcx,r13
fffff800`120f48e7 e8b8040700      call    nt!MmInitializeHandBuiltProcess2 (fffff800`12164da4)
fffff800`120f48ec e971f6ffff      jmp     nt!PspAllocateProcess+0x722 (fffff800`120f3f62)

nt!PspAllocateProcess+0x10b1:
fffff800`120f48f1 4885ff          test    rdi,rdi
fffff800`120f48f4 0f8436f8ffff    je      nt!PspAllocateProcess+0x8f0 (fffff800`120f4130)

nt!PspAllocateProcess+0x10ba:
fffff800`120f48fa e9aec51800      jmp     nt! ?? ::NNGAKEGL::`string'+0x4997f (fffff800`12280ead)

nt!PspAllocateProcess+0x10bf:
fffff800`120f48ff f6c302          test    bl,2
fffff800`120f4902 0f8470f9ffff    je      nt!PspAllocateProcess+0xa38 (fffff800`120f4278)

nt!PspAllocateProcess+0x10c8:
fffff800`120f4908 e91dc81800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49c0e (fffff800`1228112a)

nt!PspAllocateProcess+0x10cd:
fffff800`120f490d b903000000      mov     ecx,3
fffff800`120f4912 e992c21800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49673 (fffff800`12280ba9)

nt!PspAllocateProcess+0x10d7:
fffff800`120f4917 4d8bce          mov     r9,r14
fffff800`120f491a e919f6ffff      jmp     nt!PspAllocateProcess+0x6f8 (fffff800`120f3f38)

nt!PspAllocateProcess+0x10df:
fffff800`120f491f 458bc6          mov     r8d,r14d
fffff800`120f4922 e922f6ffff      jmp     nt!PspAllocateProcess+0x709 (fffff800`120f3f49)

nt!PspAllocateProcess+0x10e7:
fffff800`120f4927 4c8936          mov     qword ptr [rsi],r14
fffff800`120f492a e9f1c81800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x49586:
fffff800`12280ad0 b8300000c0      mov     eax,0C0000030h
fffff800`12280ad5 e92538e7ff      jmp     nt!PspAllocateProcess+0xabf (fffff800`120f42ff)

nt! ?? ::NNGAKEGL::`string'+0x49590:
fffff800`12280ada 48898c2440010000 mov     qword ptr [rsp+140h],rcx
fffff800`12280ae2 8954245c        mov     dword ptr [rsp+5Ch],edx
fffff800`12280ae6 e9662ee7ff      jmp     nt!PspAllocateProcess+0x111 (fffff800`120f3951)

nt! ?? ::NNGAKEGL::`string'+0x495a1:
fffff800`12280aeb 4439b424e8030000 cmp     dword ptr [rsp+3E8h],r14d
fffff800`12280af3 740b            je      nt! ?? ::NNGAKEGL::`string'+0x495ba (fffff800`12280b00)

nt! ?? ::NNGAKEGL::`string'+0x495af:
fffff800`12280af5 41bf300000c0    mov     r15d,0C0000030h
fffff800`12280afb e920070000      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x495ba:
fffff800`12280b00 483b3d19f5d4ff  cmp     rdi,qword ptr [nt!PsInitialSystemProcess (fffff800`11fd0020)]
fffff800`12280b07 747f            je      nt! ?? ::NNGAKEGL::`string'+0x49652 (fffff800`12280b88)

nt! ?? ::NNGAKEGL::`string'+0x495c7:
fffff800`12280b09 4c8dbfd8020000  lea     r15,[rdi+2D8h]
fffff800`12280b10 410f0d0f        prefetchw [r15]
fffff800`12280b14 498b07          mov     rax,qword ptr [r15]
fffff800`12280b17 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff800`12280b1b 488d4802        lea     rcx,[rax+2]
fffff800`12280b1f f0490fb10f      lock cmpxchg qword ptr [r15],rcx
fffff800`12280b24 740c            je      nt! ?? ::NNGAKEGL::`string'+0x495f8 (fffff800`12280b32)

nt! ?? ::NNGAKEGL::`string'+0x495e8:
fffff800`12280b26 498bcf          mov     rcx,r15
fffff800`12280b29 e8a217abff      call    nt!ExfAcquireRundownProtection (fffff800`11d322d0)
fffff800`12280b2e 84c0            test    al,al
fffff800`12280b30 7435            je      nt! ?? ::NNGAKEGL::`string'+0x49631 (fffff800`12280b67)

nt! ?? ::NNGAKEGL::`string'+0x495f8:
fffff800`12280b32 488b87a8030000  mov     rax,qword ptr [rdi+3A8h]
fffff800`12280b39 48898424d8000000 mov     qword ptr [rsp+0D8h],rax
fffff800`12280b41 488bc8          mov     rcx,rax
fffff800`12280b44 e8f7f5a8ff      call    nt!ObfReferenceObject (fffff800`11d10140)
fffff800`12280b49 410f0d0f        prefetchw [r15]
fffff800`12280b4d 498b07          mov     rax,qword ptr [r15]
fffff800`12280b50 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff800`12280b54 488d48fe        lea     rcx,[rax-2]
fffff800`12280b58 f0490fb10f      lock cmpxchg qword ptr [r15],rcx
fffff800`12280b5d 7408            je      nt! ?? ::NNGAKEGL::`string'+0x49631 (fffff800`12280b67)

nt! ?? ::NNGAKEGL::`string'+0x49629:
fffff800`12280b5f 498bcf          mov     rcx,r15
fffff800`12280b62 e809c8a9ff      call    nt!ExfReleaseRundownProtection (fffff800`11d1d370)

nt! ?? ::NNGAKEGL::`string'+0x49631:
fffff800`12280b67 4c8bbc24d8000000 mov     r15,qword ptr [rsp+0D8h]
fffff800`12280b6f 4c8b6c2468      mov     r13,qword ptr [rsp+68h]
fffff800`12280b74 4d85ff          test    r15,r15
fffff800`12280b77 0f85db2fe7ff    jne     nt!PspAllocateProcess+0x318 (fffff800`120f3b58)

nt! ?? ::NNGAKEGL::`string'+0x49647:
fffff800`12280b7d 41bf0a0100c0    mov     r15d,0C000010Ah
fffff800`12280b83 e998060000      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x49652:
fffff800`12280b88 41bf0d0000c0    mov     r15d,0C000000Dh
fffff800`12280b8e e98d060000      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x4965d:
fffff800`12280b93 41bf7b0000c0    mov     r15d,0C000007Bh
fffff800`12280b99 e96f3de7ff      jmp     nt!PspAllocateProcess+0x10cd (fffff800`120f490d)

nt! ?? ::NNGAKEGL::`string'+0x49668:
fffff800`12280b9e 41bf390000c0    mov     r15d,0C0000039h
fffff800`12280ba4 b905000000      mov     ecx,5

nt! ?? ::NNGAKEGL::`string'+0x49673:
fffff800`12280ba9 4533c0          xor     r8d,r8d
fffff800`12280bac 498bd4          mov     rdx,r12
fffff800`12280baf e80c83e7ff      call    nt!PspUpdateCreateInfo (fffff800`120f8ec0)
fffff800`12280bb4 e967060000      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x49683:
fffff800`12280bb9 41bf7b0000c0    mov     r15d,0C000007Bh
fffff800`12280bbf b904000000      mov     ecx,4
fffff800`12280bc4 ebe3            jmp     nt! ?? ::NNGAKEGL::`string'+0x49673 (fffff800`12280ba9)

nt! ?? ::NNGAKEGL::`string'+0x49690:
fffff800`12280bc6 83bc243801000002 cmp     dword ptr [rsp+138h],2
fffff800`12280bce 0f85ab37e7ff    jne     nt!PspAllocateProcess+0xb3f (fffff800`120f437f)

nt! ?? ::NNGAKEGL::`string'+0x4969e:
fffff800`12280bd4 664439b424a8000000 cmp   word ptr [rsp+0A8h],r14w
fffff800`12280bdd 0f849c37e7ff    je      nt!PspAllocateProcess+0xb3f (fffff800`120f437f)

nt! ?? ::NNGAKEGL::`string'+0x496ad:
fffff800`12280be3 ebb9            jmp     nt! ?? ::NNGAKEGL::`string'+0x49668 (fffff800`12280b9e)

nt! ?? ::NNGAKEGL::`string'+0x496af:
fffff800`12280be5 4439742470      cmp     dword ptr [rsp+70h],r14d
fffff800`12280bea 0f84c137e7ff    je      nt!PspAllocateProcess+0xb71 (fffff800`120f43b1)

nt! ?? ::NNGAKEGL::`string'+0x496ba:
fffff800`12280bf0 838c24d803000010 or      dword ptr [rsp+3D8h],10h
fffff800`12280bf8 b84c010000      mov     eax,14Ch
fffff800`12280bfd 664139442460    cmp     word ptr [r12+60h],ax
fffff800`12280c03 0f84a837e7ff    je      nt!PspAllocateProcess+0xb71 (fffff800`120f43b1)

nt! ?? ::NNGAKEGL::`string'+0x496d3:
fffff800`12280c09 c784248801000030000000 mov dword ptr [rsp+188h],30h
fffff800`12280c14 498b07          mov     rax,qword ptr [r15]
fffff800`12280c17 4889842490010000 mov     qword ptr [rsp+190h],rax
fffff800`12280c1f c78424a001000040020000 mov dword ptr [rsp+1A0h],240h
fffff800`12280c2a 488d056f98e1ff  lea     rax,[nt!SepServicesFilterPrivileges+0x20 (fffff800`1209a4a0)]
fffff800`12280c31 4889842498010000 mov     qword ptr [rsp+198h],rax
fffff800`12280c39 4c89b424a8010000 mov     qword ptr [rsp+1A8h],r14
fffff800`12280c41 4c89b424b0010000 mov     qword ptr [rsp+1B0h],r14
fffff800`12280c49 4c8d842488010000 lea     r8,[rsp+188h]
fffff800`12280c51 8bd6            mov     edx,esi
fffff800`12280c53 488d8c2448010000 lea     rcx,[rsp+148h]
fffff800`12280c5b e8e025a5ff      call    nt!ZwOpenKey (fffff800`11cd3240)
fffff800`12280c60 85c0            test    eax,eax
fffff800`12280c62 0f884937e7ff    js      nt!PspAllocateProcess+0xb71 (fffff800`120f43b1)

nt! ?? ::NNGAKEGL::`string'+0x49732:
fffff800`12280c68 4489742470      mov     dword ptr [rsp+70h],r14d
fffff800`12280c6d 4c89742428      mov     qword ptr [rsp+28h],r14
fffff800`12280c72 b804000000      mov     eax,4
fffff800`12280c77 89442420        mov     dword ptr [rsp+20h],eax
fffff800`12280c7b 4c8d4c2470      lea     r9,[rsp+70h]
fffff800`12280c80 448bc0          mov     r8d,eax
fffff800`12280c83 488d1546c6e4ff  lea     rdx,[nt! ?? ::NNGAKEGL::`string' (fffff800`120cd2d0)]
fffff800`12280c8a 488b8c2448010000 mov     rcx,qword ptr [rsp+148h]
fffff800`12280c92 e83d23e1ff      call    nt!RtlQueryImageFileKeyOption (fffff800`12092fd4)
fffff800`12280c97 85c0            test    eax,eax
fffff800`12280c99 780f            js      nt! ?? ::NNGAKEGL::`string'+0x4977c (fffff800`12280caa)

nt! ?? ::NNGAKEGL::`string'+0x49769:
fffff800`12280c9b 4439742470      cmp     dword ptr [rsp+70h],r14d
fffff800`12280ca0 7408            je      nt! ?? ::NNGAKEGL::`string'+0x4977c (fffff800`12280caa)

nt! ?? ::NNGAKEGL::`string'+0x49774:
fffff800`12280ca2 838c24d803000020 or      dword ptr [rsp+3D8h],20h

nt! ?? ::NNGAKEGL::`string'+0x4977c:
fffff800`12280caa 33d2            xor     edx,edx
fffff800`12280cac 488b8c2448010000 mov     rcx,qword ptr [rsp+148h]
fffff800`12280cb4 e8239ce2ff      call    nt!ObCloseHandle (fffff800`120aa8dc)
fffff800`12280cb9 90              nop
fffff800`12280cba e9f236e7ff      jmp     nt!PspAllocateProcess+0xb71 (fffff800`120f43b1)

nt! ?? ::NNGAKEGL::`string'+0x49791:
fffff800`12280cbf 4439b424d0000000 cmp     dword ptr [rsp+0D0h],r14d
fffff800`12280cc7 0f843637e7ff    je      nt!PspAllocateProcess+0xbc3 (fffff800`120f4403)

nt! ?? ::NNGAKEGL::`string'+0x4979f:
fffff800`12280ccd 834c245c40      or      dword ptr [rsp+5Ch],40h
fffff800`12280cd2 e92c37e7ff      jmp     nt!PspAllocateProcess+0xbc3 (fffff800`120f4403)

nt! ?? ::NNGAKEGL::`string'+0x497a9:
fffff800`12280cd7 8b8424d8030000  mov     eax,dword ptr [rsp+3D8h]
fffff800`12280cde b94c010000      mov     ecx,14Ch
fffff800`12280ce3 f787fc02000000000200 test dword ptr [rdi+2FCh],20000h
fffff800`12280ced 0f84812fe7ff    je      nt!PspAllocateProcess+0x434 (fffff800`120f3c74)

nt! ?? ::NNGAKEGL::`string'+0x497c5:
fffff800`12280cf3 83c808          or      eax,8
fffff800`12280cf6 898424d8030000  mov     dword ptr [rsp+3D8h],eax
fffff800`12280cfd e9722fe7ff      jmp     nt!PspAllocateProcess+0x434 (fffff800`120f3c74)

nt! ?? ::NNGAKEGL::`string'+0x497d4:
fffff800`12280d02 4c8d8424f0010000 lea     r8,[rsp+1F0h]
fffff800`12280d0a 8bd6            mov     edx,esi
fffff800`12280d0c 498bcf          mov     rcx,r15
fffff800`12280d0f e85cb3e8ff      call    nt!MmGetSectionInformation (fffff800`1210c070)
fffff800`12280d14 448bf8          mov     r15d,eax
fffff800`12280d17 85c0            test    eax,eax
fffff800`12280d19 0f8801050000    js      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x497f1:
fffff800`12280d1f 0fb6842423020000 movzx   eax,byte ptr [rsp+223h]
fffff800`12280d27 c1e802          shr     eax,2
fffff800`12280d2a 23c6            and     eax,esi
fffff800`12280d2c c1e007          shl     eax,7
fffff800`12280d2f 33c3            xor     eax,ebx
fffff800`12280d31 2580000000      and     eax,80h
fffff800`12280d36 33d8            xor     ebx,eax
fffff800`12280d38 0fb6842423020000 movzx   eax,byte ptr [rsp+223h]
fffff800`12280d40 d1e8            shr     eax,1
fffff800`12280d42 23c6            and     eax,esi
fffff800`12280d44 c1e008          shl     eax,8
fffff800`12280d47 33c3            xor     eax,ebx
fffff800`12280d49 2500010000      and     eax,100h
fffff800`12280d4e 33d8            xor     ebx,eax
fffff800`12280d50 895c2454        mov     dword ptr [rsp+54h],ebx
fffff800`12280d54 0fb784241e020000 movzx   eax,word ptr [rsp+21Eh]
fffff800`12280d5c 6689442458      mov     word ptr [rsp+58h],ax
fffff800`12280d61 0fb7942420020000 movzx   edx,word ptr [rsp+220h]
fffff800`12280d69 e9fa2ee7ff      jmp     nt!PspAllocateProcess+0x428 (fffff800`120f3c68)

nt! ?? ::NNGAKEGL::`string'+0x49840:
fffff800`12280d6e 41bf220000c0    mov     r15d,0C0000022h
fffff800`12280d74 4d85e4          test    r12,r12
fffff800`12280d77 0f84a3040000    je      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x4984f:
fffff800`12280d7d e98b3be7ff      jmp     nt!PspAllocateProcess+0x10cd (fffff800`120f490d)

nt! ?? ::NNGAKEGL::`string'+0x49854:
fffff800`12280d82 c78424300300000e000000 mov dword ptr [rsp+330h],0Eh
fffff800`12280d8d 8bd6            mov     edx,esi
fffff800`12280d8f e93d2fe7ff      jmp     nt!PspAllocateProcess+0x491 (fffff800`120f3cd1)

nt! ?? ::NNGAKEGL::`string'+0x49866:
fffff800`12280d94 8bc2            mov     eax,edx
fffff800`12280d96 c784843003000004000000 mov dword ptr [rsp+rax*4+330h],4
fffff800`12280da1 03d6            add     edx,esi
fffff800`12280da3 e9472fe7ff      jmp     nt!PspAllocateProcess+0x4af (fffff800`120f3cef)

nt! ?? ::NNGAKEGL::`string'+0x4987a:
fffff800`12280da8 41bf610000c0    mov     r15d,0C0000061h
fffff800`12280dae e959040000      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt! ?? ::NNGAKEGL::`string'+0x49885:
fffff800`12280db3 41bf0d0000c0    mov     r15d,0C000000Dh
fffff800`12280db9 e94e040000      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt! ?? ::NNGAKEGL::`string'+0x49890:
fffff800`12280dbe 4084de          test    sil,bl
fffff800`12280dc1 0f8445040000    je      nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt! ?? ::NNGAKEGL::`string'+0x49899:
fffff800`12280dc7 488d942448020000 lea     rdx,[rsp+248h]
fffff800`12280dcf 488bbc2430010000 mov     rdi,qword ptr [rsp+130h]
fffff800`12280dd7 488bcf          mov     rcx,rdi
fffff800`12280dda e85163a3ff      call    nt!MmDetachSession (fffff800`11cb7130)
fffff800`12280ddf 488bcf          mov     rcx,rdi
fffff800`12280de2 e8f95da9ff      call    nt!ObfDereferenceObject (fffff800`11d16be0)
fffff800`12280de7 e920040000      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt! ?? ::NNGAKEGL::`string'+0x498be:
fffff800`12280dec 488d05cd23c8ff  lea     rax,[nt!PspSystemQuotaBlock (fffff800`11f031c0)]
fffff800`12280df3 e97b2fe7ff      jmp     nt!PspAllocateProcess+0x533 (fffff800`120f3d73)

nt! ?? ::NNGAKEGL::`string'+0x498ca:
fffff800`12280df8 8b8c2444020000  mov     ecx,dword ptr [rsp+244h]
fffff800`12280dff 8bd6            mov     edx,esi
fffff800`12280e01 e99e2fe7ff      jmp     nt!PspAllocateProcess+0x564 (fffff800`120f3da4)

nt! ?? ::NNGAKEGL::`string'+0x498d8:
fffff800`12280e06 41bf9a0000c0    mov     r15d,0C000009Ah
fffff800`12280e0c e9fb030000      jmp     nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt! ?? ::NNGAKEGL::`string'+0x498e3:
fffff800`12280e11 488b8424b8000000 mov     rax,qword ptr [rsp+0B8h]
fffff800`12280e19 f00908          lock or dword ptr [rax],ecx
fffff800`12280e1c 0fb78730020000  movzx   eax,word ptr [rdi+230h]
fffff800`12280e23 488d0dd6719fff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`12280e2a 488b84c180183500 mov     rax,qword ptr [rcx+rax*8+351880h]
fffff800`12280e32 4889442478      mov     qword ptr [rsp+78h],rax
fffff800`12280e37 440fb77858      movzx   r15d,word ptr [rax+58h]
fffff800`12280e3c e9ff2fe7ff      jmp     nt!PspAllocateProcess+0x600 (fffff800`120f3e40)

nt! ?? ::NNGAKEGL::`string'+0x49913:
fffff800`12280e41 e8eaa1a3ff      call    nt!KeQueryActiveGroupCount (fffff800`11cbb030)
fffff800`12280e46 663bc6          cmp     ax,si
fffff800`12280e49 0f86ea2fe7ff    jbe     nt!PspAllocateProcess+0x5f9 (fffff800`120f3e39)

nt! ?? ::NNGAKEGL::`string'+0x49921:
fffff800`12280e4f 488d0daa719fff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`12280e56 664585ff        test    r15w,r15w
fffff800`12280e5a 0f85e02fe7ff    jne     nt!PspAllocateProcess+0x600 (fffff800`120f3e40)

nt! ?? ::NNGAKEGL::`string'+0x49932:
fffff800`12280e60 4c89742478      mov     qword ptr [rsp+78h],r14
fffff800`12280e65 448bfe          mov     r15d,esi
fffff800`12280e68 e9d32fe7ff      jmp     nt!PspAllocateProcess+0x600 (fffff800`120f3e40)

nt! ?? ::NNGAKEGL::`string'+0x4993f:
fffff800`12280e6d 6603ce          add     cx,si
fffff800`12280e70 663b8c2480020000 cmp     cx,word ptr [rsp+280h]
fffff800`12280e78 0f82e738e7ff    jb      nt!PspAllocateProcess+0xf25 (fffff800`120f4765)

nt! ?? ::NNGAKEGL::`string'+0x49950:
fffff800`12280e7e e91839e7ff      jmp     nt!PspAllocateProcess+0xf5b (fffff800`120f479b)

nt! ?? ::NNGAKEGL::`string'+0x49955:
fffff800`12280e83 498b942460010000 mov     rdx,qword ptr [r12+160h]
fffff800`12280e8b 488bc8          mov     rcx,rax
fffff800`12280e8e e86df9e8ff      call    nt!PspInheritMitigationOptions (fffff800`12110800)
fffff800`12280e93 4889842488000000 mov     qword ptr [rsp+88h],rax
fffff800`12280e9b e98331e7ff      jmp     nt!PspAllocateProcess+0x7e3 (fffff800`120f4023)

nt! ?? ::NNGAKEGL::`string'+0x49972:
fffff800`12280ea0 85c0            test    eax,eax
fffff800`12280ea2 0f8878030000    js      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x4997a:
fffff800`12280ea8 e9a731e7ff      jmp     nt!PspAllocateProcess+0x814 (fffff800`120f4054)

nt! ?? ::NNGAKEGL::`string'+0x4997f:
fffff800`12280ead 488b87b0030000  mov     rax,qword ptr [rdi+3B0h]
fffff800`12280eb4 498985b0030000  mov     qword ptr [r13+3B0h],rax
fffff800`12280ebb 488b8740060000  mov     rax,qword ptr [rdi+640h]
fffff800`12280ec2 49898540060000  mov     qword ptr [r13+640h],rax
fffff800`12280ec9 4c8d8c24d8030000 lea     r9,[rsp+3D8h]
fffff800`12280ed1 4533c0          xor     r8d,r8d
fffff800`12280ed4 488bd7          mov     rdx,rdi
fffff800`12280ed7 498bcd          mov     rcx,r13
fffff800`12280eda e871e2e8ff      call    nt!MmInitializeProcessAddressSpace (fffff800`1210f150)
fffff800`12280edf 448bf8          mov     r15d,eax
fffff800`12280ee2 85c0            test    eax,eax
fffff800`12280ee4 0f8822030000    js      nt! ?? ::NNGAKEGL::`string'+0x49d14 (fffff800`1228120c)

nt! ?? ::NNGAKEGL::`string'+0x499bc:
fffff800`12280eea 83cb02          or      ebx,2
fffff800`12280eed 0fb68424d8030000 movzx   eax,byte ptr [rsp+3D8h]
fffff800`12280ef5 c1e804          shr     eax,4
fffff800`12280ef8 23c6            and     eax,esi
fffff800`12280efa c1e006          shl     eax,6
fffff800`12280efd 33c3            xor     eax,ebx
fffff800`12280eff 83e040          and     eax,40h
fffff800`12280f02 33d8            xor     ebx,eax
fffff800`12280f04 895c2454        mov     dword ptr [rsp+54h],ebx
fffff800`12280f08 488b8750040000  mov     rax,qword ptr [rdi+450h]
fffff800`12280f0f 0fb74802        movzx   ecx,word ptr [rax+2]
fffff800`12280f13 83c110          add     ecx,10h
fffff800`12280f16 8bc1            mov     eax,ecx
fffff800`12280f18 48898424f0000000 mov     qword ptr [rsp+0F0h],rax
fffff800`12280f20 41b853655061    mov     r8d,61506553h
fffff800`12280f26 8bd1            mov     edx,ecx
fffff800`12280f28 b900020000      mov     ecx,200h
fffff800`12280f2d e8de70c6ff      call    nt!ExAllocatePoolWithTag (fffff800`11ee8010)
fffff800`12280f32 49898550040000  mov     qword ptr [r13+450h],rax
fffff800`12280f39 4885c0          test    rax,rax
fffff800`12280f3c 0f84c4feffff    je      nt! ?? ::NNGAKEGL::`string'+0x498d8 (fffff800`12280e06)

nt! ?? ::NNGAKEGL::`string'+0x49a14:
fffff800`12280f42 4c8b8424f0000000 mov     r8,qword ptr [rsp+0F0h]
fffff800`12280f4a 488b9750040000  mov     rdx,qword ptr [rdi+450h]
fffff800`12280f51 488bc8          mov     rcx,rax
fffff800`12280f54 e8a7c2a4ff      call    nt!memcpy (fffff800`11ccd200)
fffff800`12280f59 4d8b9d50040000  mov     r11,qword ptr [r13+450h]
fffff800`12280f60 498d4310        lea     rax,[r11+10h]
fffff800`12280f64 49894308        mov     qword ptr [r11+8],rax
fffff800`12280f68 8b87b8030000    mov     eax,dword ptr [rdi+3B8h]
fffff800`12280f6e 418985b8030000  mov     dword ptr [r13+3B8h],eax
fffff800`12280f75 e9b631e7ff      jmp     nt!PspAllocateProcess+0x8f0 (fffff800`120f4130)

nt! ?? ::NNGAKEGL::`string'+0x49a4c:
fffff800`12280f7a 488b8424b8000000 mov     rax,qword ptr [rsp+0B8h]
fffff800`12280f82 f08120ffffcfff  lock and dword ptr [rax],0FFCFFFFFh
fffff800`12280f89 488d842468010000 lea     rax,[rsp+168h]
fffff800`12280f91 4889442420      mov     qword ptr [rsp+20h],rax
fffff800`12280f96 4c8d8c24c0000000 lea     r9,[rsp+0C0h]
fffff800`12280f9e 4533c0          xor     r8d,r8d
fffff800`12280fa1 8bd6            mov     edx,esi
fffff800`12280fa3 4c8b6c2468      mov     r13,qword ptr [rsp+68h]
fffff800`12280fa8 498bcd          mov     rcx,r13
fffff800`12280fab e86890f7ff      call    nt!PspSetProcessAffinitySafe (fffff800`121fa018)
fffff800`12280fb0 90              nop
fffff800`12280fb1 e98a32e7ff      jmp     nt!PspAllocateProcess+0xa00 (fffff800`120f4240)

nt! ?? ::NNGAKEGL::`string'+0x49a88:
fffff800`12280fb6 be01000000      mov     esi,1
fffff800`12280fbb 4088b42418010000 mov     byte ptr [rsp+118h],sil
fffff800`12280fc3 488b8424a0000000 mov     rax,qword ptr [rsp+0A0h]
fffff800`12280fcb 488b80e8030000  mov     rax,qword ptr [rax+3E8h]
fffff800`12280fd2 48898424b8000000 mov     qword ptr [rsp+0B8h],rax
fffff800`12280fda 498985e8030000  mov     qword ptr [r13+3E8h],rax
fffff800`12280fe1 488d942448020000 lea     rdx,[rsp+248h]
fffff800`12280fe9 e8421aaaff      call    nt!KeStackAttachProcess (fffff800`11d22a30)
fffff800`12280fee ba88030000      mov     edx,388h
fffff800`12280ff3 448d4603        lea     r8d,[rsi+3]
fffff800`12280ff7 488b8c24b8000000 mov     rcx,qword ptr [rsp+0B8h]
fffff800`12280fff e8b80ee4ff      call    nt!MmSecureVirtualMemory (fffff800`120c1ebc)
fffff800`12281004 4885c0          test    rax,rax
fffff800`12281007 7453            je      nt! ?? ::NNGAKEGL::`string'+0x49b37 (fffff800`1228105c)

nt! ?? ::NNGAKEGL::`string'+0x49adf:
fffff800`12281009 0f10842418010000 movups  xmm0,xmmword ptr [rsp+118h]
fffff800`12281011 488b8424b8000000 mov     rax,qword ptr [rsp+0B8h]
fffff800`12281019 f30f7f00        movdqu  xmmword ptr [rax],xmm0
fffff800`1228101d eb43            jmp     nt! ?? ::NNGAKEGL::`string'+0x49b3d (fffff800`12281062)

nt! ?? ::NNGAKEGL::`string'+0x49b37:
fffff800`1228105c 41bf410100c0    mov     r15d,0C0000141h

nt! ?? ::NNGAKEGL::`string'+0x49b3d:
fffff800`12281062 4585ff          test    r15d,r15d
fffff800`12281065 0f88a4000000    js      nt! ?? ::NNGAKEGL::`string'+0x49bf3 (fffff800`1228110f)

nt! ?? ::NNGAKEGL::`string'+0x49b46:
fffff800`1228106b 4d39b518040000  cmp     qword ptr [r13+418h],r14
fffff800`12281072 0f8497000000    je      nt! ?? ::NNGAKEGL::`string'+0x49bf3 (fffff800`1228110f)

nt! ?? ::NNGAKEGL::`string'+0x49b53:
fffff800`12281078 498b8518040000  mov     rax,qword ptr [r13+418h]
fffff800`1228107f 48898424f8000000 mov     qword ptr [rsp+0F8h],rax
fffff800`12281087 ba50020000      mov     edx,250h
fffff800`1228108c 41b804000000    mov     r8d,4
fffff800`12281092 488bc8          mov     rcx,rax
fffff800`12281095 e8220ee4ff      call    nt!MmSecureVirtualMemory (fffff800`120c1ebc)
fffff800`1228109a 4885c0          test    rax,rax
fffff800`1228109d 746a            je      nt! ?? ::NNGAKEGL::`string'+0x49bed (fffff800`12281109)

nt! ?? ::NNGAKEGL::`string'+0x49b7e:
fffff800`1228109f 33c0            xor     eax,eax
fffff800`122810a1 898424e0000000  mov     dword ptr [rsp+0E0h],eax
fffff800`122810a8 89bc24e4000000  mov     dword ptr [rsp+0E4h],edi
fffff800`122810af 4088b424e0000000 mov     byte ptr [rsp+0E0h],sil
fffff800`122810b7 8a442450        mov     al,byte ptr [rsp+50h]
fffff800`122810bb 888424e3000000  mov     byte ptr [rsp+0E3h],al
fffff800`122810c2 488b8424e0000000 mov     rax,qword ptr [rsp+0E0h]
fffff800`122810ca 488b8c24f8000000 mov     rcx,qword ptr [rsp+0F8h]
fffff800`122810d2 488901          mov     qword ptr [rcx],rax
fffff800`122810d5 eb38            jmp     nt! ?? ::NNGAKEGL::`string'+0x49bf3 (fffff800`1228110f)

nt! ?? ::NNGAKEGL::`string'+0x49bed:
fffff800`12281109 41bf410100c0    mov     r15d,0C0000141h

nt! ?? ::NNGAKEGL::`string'+0x49bf3:
fffff800`1228110f 488d8c2448020000 lea     rcx,[rsp+248h]
fffff800`12281117 e87413aaff      call    nt!KeUnstackDetachProcess (fffff800`11d22490)
fffff800`1228111c 4585ff          test    r15d,r15d
fffff800`1228111f 0f88fb000000    js      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x49c09:
fffff800`12281125 e91631e7ff      jmp     nt!PspAllocateProcess+0xa00 (fffff800`120f4240)

nt! ?? ::NNGAKEGL::`string'+0x49c0e:
fffff800`1228112a 458bfe          mov     r15d,r14d
fffff800`1228112d 488d942448020000 lea     rdx,[rsp+248h]
fffff800`12281135 498bcd          mov     rcx,r13
fffff800`12281138 e8f318aaff      call    nt!KeStackAttachProcess (fffff800`11d22a30)
fffff800`1228113d 498bd5          mov     rdx,r13
fffff800`12281140 4c8ba42400010000 mov     r12,qword ptr [rsp+100h]
fffff800`12281148 498bcc          mov     rcx,r12
fffff800`1228114b e82c00e9ff      call    nt!PspWritePebAffinityInfo (fffff800`1211117c)
fffff800`12281150 443974245c      cmp     dword ptr [rsp+5Ch],r14d
fffff800`12281155 7434            je      nt! ?? ::NNGAKEGL::`string'+0x49c7f (fffff800`1228118b)

nt! ?? ::NNGAKEGL::`string'+0x49c3f:
fffff800`12281157 498bcd          mov     rcx,r13
fffff800`1228115a e82debe7ff      call    nt!MmMapApiSetView (fffff800`120ffc8c)
fffff800`1228115f 448bf8          mov     r15d,eax
fffff800`12281162 85c0            test    eax,eax
fffff800`12281164 7825            js      nt! ?? ::NNGAKEGL::`string'+0x49c7f (fffff800`1228118b)

nt! ?? ::NNGAKEGL::`string'+0x49c52:
fffff800`12281166 33d2            xor     edx,edx
fffff800`12281168 33c9            xor     ecx,ecx
fffff800`1228116a e8018fe8ff      call    nt!PspPrepareSystemDllInitBlock (fffff800`1210a070)
fffff800`1228116f 448bf8          mov     r15d,eax
fffff800`12281172 85c0            test    eax,eax
fffff800`12281174 7815            js      nt! ?? ::NNGAKEGL::`string'+0x49c7f (fffff800`1228118b)

nt! ?? ::NNGAKEGL::`string'+0x49c66:
fffff800`12281176 4d39b518040000  cmp     qword ptr [r13+418h],r14
fffff800`1228117d 740c            je      nt! ?? ::NNGAKEGL::`string'+0x49c7f (fffff800`1228118b)

nt! ?? ::NNGAKEGL::`string'+0x49c73:
fffff800`1228117f 33d2            xor     edx,edx
fffff800`12281181 8bce            mov     ecx,esi
fffff800`12281183 e8e88ee8ff      call    nt!PspPrepareSystemDllInitBlock (fffff800`1210a070)
fffff800`12281188 448bf8          mov     r15d,eax

nt! ?? ::NNGAKEGL::`string'+0x49c7f:
fffff800`1228118b 488d8c2448020000 lea     rcx,[rsp+248h]
fffff800`12281193 e8f812aaff      call    nt!KeUnstackDetachProcess (fffff800`11d22490)
fffff800`12281198 90              nop
fffff800`12281199 e9e230e7ff      jmp     nt!PspAllocateProcess+0xa40 (fffff800`120f4280)

nt! ?? ::NNGAKEGL::`string'+0x49c92:
fffff800`1228119e 498bcd          mov     rcx,r13
fffff800`122811a1 e85a62adff      call    nt!ExfAcquirePushLockExclusive (fffff800`11d57400)
fffff800`122811a6 90              nop
fffff800`122811a7 e9fa30e7ff      jmp     nt!PspAllocateProcess+0xa66 (fffff800`120f42a6)

nt! ?? ::NNGAKEGL::`string'+0x49ca0:
fffff800`122811ac f0490fc17d00    lock xadd qword ptr [r13],rdi
fffff800`122811b2 40f6c702        test    dil,2
fffff800`122811b6 740e            je      nt! ?? ::NNGAKEGL::`string'+0x49cc2 (fffff800`122811c6)

nt! ?? ::NNGAKEGL::`string'+0x49cb0:
fffff800`122811b8 40f6c704        test    dil,4
fffff800`122811bc 7508            jne     nt! ?? ::NNGAKEGL::`string'+0x49cc2 (fffff800`122811c6)

nt! ?? ::NNGAKEGL::`string'+0x49cba:
fffff800`122811be 498bcd          mov     rcx,r13
fffff800`122811c1 e84e9eadff      call    nt!ExfTryToWakePushLock (fffff800`11d5b014)

nt! ?? ::NNGAKEGL::`string'+0x49cc2:
fffff800`122811c6 410fbf8424e4010000 movsx eax,word ptr [r12+1E4h]
fffff800`122811cf ffc0            inc     eax
fffff800`122811d1 6641898424e4010000 mov   word ptr [r12+1E4h],ax
fffff800`122811da 6685c0          test    ax,ax
fffff800`122811dd 751d            jne     nt! ?? ::NNGAKEGL::`string'+0x49d04 (fffff800`122811fc)

nt! ?? ::NNGAKEGL::`string'+0x49cdf:
fffff800`122811df 498d842498000000 lea     rax,[r12+98h]
fffff800`122811e7 483900          cmp     qword ptr [rax],rax
fffff800`122811ea 7410            je      nt! ?? ::NNGAKEGL::`string'+0x49d04 (fffff800`122811fc)

nt! ?? ::NNGAKEGL::`string'+0x49cf0:
fffff800`122811ec 664539b424e6010000 cmp   word ptr [r12+1E6h],r14w
fffff800`122811f5 7505            jne     nt! ?? ::NNGAKEGL::`string'+0x49d04 (fffff800`122811fc)

nt! ?? ::NNGAKEGL::`string'+0x49cff:
fffff800`122811f7 e804e6aeff      call    nt!KiCheckForKernelApcDelivery (fffff800`11d6f800)

nt! ?? ::NNGAKEGL::`string'+0x49d04:
fffff800`122811fc 41bf9a0000c0    mov     r15d,0C000009Ah
fffff800`12281202 4c8b6c2468      mov     r13,qword ptr [rsp+68h]
fffff800`12281207 eb17            jmp     nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x49d14:
fffff800`1228120c f6c310          test    bl,10h
fffff800`1228120f 740f            je      nt! ?? ::NNGAKEGL::`string'+0x49d2a (fffff800`12281220)

nt! ?? ::NNGAKEGL::`string'+0x49d1d:
fffff800`12281211 488b8c2408010000 mov     rcx,qword ptr [rsp+108h]
fffff800`12281219 e8d64ae1ff      call    nt!RtlReleasePrivilege (fffff800`12095cf4)
fffff800`1228121e 90              nop
fffff800`1228121f 90              nop

nt! ?? ::NNGAKEGL::`string'+0x49d2a:
fffff800`12281220 4d39b508040000  cmp     qword ptr [r13+408h],r14
fffff800`12281227 7408            je      nt! ?? ::NNGAKEGL::`string'+0x49d3f (fffff800`12281231)

nt! ?? ::NNGAKEGL::`string'+0x49d37:
fffff800`12281229 498bcd          mov     rcx,r13
fffff800`1228122c e81f62dbff      call    nt!PspDoHandleSweepSingle (fffff800`12037450)

nt! ?? ::NNGAKEGL::`string'+0x49d3f:
fffff800`12281231 ba50734372      mov     edx,72437350h
fffff800`12281236 498bcd          mov     rcx,r13
fffff800`12281239 e8221ca8ff      call    nt!ObfDereferenceObjectWithTag (fffff800`11d02e60)
fffff800`1228123e 418bc7          mov     eax,r15d
fffff800`12281241 e9b930e7ff      jmp     nt!PspAllocateProcess+0xabf (fffff800`120f42ff)
