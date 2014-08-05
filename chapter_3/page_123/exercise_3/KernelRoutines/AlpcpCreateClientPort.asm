0: kd> uf AlpcpCreateClientPort
nt!AlpcpCreateClientPort:
fffff803`d9d14640 4c8bdc          mov     r11,rsp
fffff803`d9d14643 49895b20        mov     qword ptr [r11+20h],rbx
fffff803`d9d14647 45894318        mov     dword ptr [r11+18h],r8d
fffff803`d9d1464b 49895310        mov     qword ptr [r11+10h],rdx
fffff803`d9d1464f 49894b08        mov     qword ptr [r11+8],rcx
fffff803`d9d14653 55              push    rbp
fffff803`d9d14654 56              push    rsi
fffff803`d9d14655 57              push    rdi
fffff803`d9d14656 4154            push    r12
fffff803`d9d14658 4155            push    r13
fffff803`d9d1465a 4156            push    r14
fffff803`d9d1465c 4157            push    r15
fffff803`d9d1465e 488bec          mov     rbp,rsp
fffff803`d9d14661 4883ec70        sub     rsp,70h
fffff803`d9d14665 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9d1466e 488b4d60        mov     rcx,qword ptr [rbp+60h]
fffff803`d9d14672 4533ed          xor     r13d,r13d
fffff803`d9d14675 448ab032020000  mov     r14b,byte ptr [rax+232h]
fffff803`d9d1467c 488d45e0        lea     rax,[rbp-20h]
fffff803`d9d14680 4d8bd1          mov     r10,r9
fffff803`d9d14683 4885c9          test    rcx,rcx
fffff803`d9d14686 0f8580030000    jne     nt!AlpcpCreateClientPort+0x3cc (fffff803`d9d14a0c)

nt!AlpcpCreateClientPort+0x4c:
fffff803`d9d1468c 49894390        mov     qword ptr [r11-70h],rax
fffff803`d9d14690 488b0599ede3ff  mov     rax,qword ptr [nt!AlpcPortObjectType (fffff803`d9b53430)]
fffff803`d9d14697 4d896b88        mov     qword ptr [r11-78h],r13
fffff803`d9d1469b 448d4901        lea     r9d,[rcx+1]
fffff803`d9d1469f 45887380        mov     byte ptr [r11-80h],r14b
fffff803`d9d146a3 4533c0          xor     r8d,r8d
fffff803`d9d146a6 33d2            xor     edx,edx
fffff803`d9d146a8 498bca          mov     rcx,r10
fffff803`d9d146ab 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9d146b0 e85ffbffff      call    nt!ObReferenceObjectByName (fffff803`d9d14214)

nt!AlpcpCreateClientPort+0x75:
fffff803`d9d146b5 85c0            test    eax,eax
fffff803`d9d146b7 0f8873020000    js      nt!AlpcpCreateClientPort+0x2f0 (fffff803`d9d14930)

nt!AlpcpCreateClientPort+0x7d:
fffff803`d9d146bd 488b75e0        mov     rsi,qword ptr [rbp-20h]
fffff803`d9d146c1 8b8e84010000    mov     ecx,dword ptr [rsi+184h]
fffff803`d9d146c7 8bc1            mov     eax,ecx
fffff803`d9d146c9 2406            and     al,6
fffff803`d9d146cb 3c02            cmp     al,2
fffff803`d9d146cd 0f85ef030000    jne     nt!AlpcpCreateClientPort+0x482 (fffff803`d9d14ac2)

nt!AlpcpCreateClientPort+0x93:
fffff803`d9d146d3 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh
fffff803`d9d146d7 4438ad90000000  cmp     byte ptr [rbp+90h],r13b
fffff803`d9d146de 0f8492020000    je      nt!AlpcpCreateClientPort+0x336 (fffff803`d9d14976)

nt!AlpcpCreateClientPort+0xa4:
fffff803`d9d146e4 4c8ba580000000  mov     r12,qword ptr [rbp+80h]
fffff803`d9d146eb 4c8b7d78        mov     r15,qword ptr [rbp+78h]
fffff803`d9d146ef 4d85e4          test    r12,r12
fffff803`d9d146f2 0f858d020000    jne     nt!AlpcpCreateClientPort+0x345 (fffff803`d9d14985)

nt!AlpcpCreateClientPort+0xb8:
fffff803`d9d146f8 4d85ff          test    r15,r15
fffff803`d9d146fb 0f8584020000    jne     nt!AlpcpCreateClientPort+0x345 (fffff803`d9d14985)

nt!AlpcpCreateClientPort+0xc1:
fffff803`d9d14701 4c8b4568        mov     r8,qword ptr [rbp+68h]
fffff803`d9d14705 488b1524ede3ff  mov     rdx,qword ptr [nt!AlpcPortObjectType (fffff803`d9b53430)]
fffff803`d9d1470c 488d45e8        lea     rax,[rbp-18h]
fffff803`d9d14710 4889442440      mov     qword ptr [rsp+40h],rax
fffff803`d9d14715 44896c2438      mov     dword ptr [rsp+38h],r13d
fffff803`d9d1471a 44896c2430      mov     dword ptr [rsp+30h],r13d
fffff803`d9d1471f 41bfb8010000    mov     r15d,1B8h
fffff803`d9d14725 458ace          mov     r9b,r14b
fffff803`d9d14728 418ace          mov     cl,r14b
fffff803`d9d1472b 44897c2428      mov     dword ptr [rsp+28h],r15d
fffff803`d9d14730 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff803`d9d14735 e8c657faff      call    nt!ObCreateObject (fffff803`d9cb9f00)
fffff803`d9d1473a 8bf8            mov     edi,eax
fffff803`d9d1473c 85c0            test    eax,eax
fffff803`d9d1473e 0f88665b1600    js      nt! ?? ::NNGAKEGL::`string'+0x2f4ea (fffff803`d9e7a2aa)

nt!AlpcpCreateClientPort+0x104:
fffff803`d9d14744 488b7de8        mov     rdi,qword ptr [rbp-18h]
fffff803`d9d14748 458bc7          mov     r8d,r15d
fffff803`d9d1474b 33d2            xor     edx,edx
fffff803`d9d1474d 488bcf          mov     rcx,rdi
fffff803`d9d14750 e86b13bfff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9d14755 4c8b7d70        mov     r15,qword ptr [rbp+70h]
fffff803`d9d14759 4d85ff          test    r15,r15
fffff803`d9d1475c 0f85e6010000    jne     nt!AlpcpCreateClientPort+0x308 (fffff803`d9d14948)

nt!AlpcpCreateClientPort+0x122:
fffff803`d9d14762 458ac5          mov     r8b,r13b
fffff803`d9d14765 ba02000000      mov     edx,2
fffff803`d9d1476a 488bcf          mov     rcx,rdi
fffff803`d9d1476d e8f63a0000      call    nt!AlpcpInitializePort (fffff803`d9d18268)
fffff803`d9d14772 448bf0          mov     r14d,eax
fffff803`d9d14775 85c0            test    eax,eax
fffff803`d9d14777 0f880e5b1600    js      nt! ?? ::NNGAKEGL::`string'+0x2f4cb (fffff803`d9e7a28b)

nt!AlpcpCreateClientPort+0x13d:
fffff803`d9d1477d 4c8db784010000  lea     r14,[rdi+184h]
fffff803`d9d14784 488d0d85e1beff  lea     rcx,[nt!AlpcConnectionType (fffff803`d9902910)]
fffff803`d9d1478b ba40000000      mov     edx,40h
fffff803`d9d14790 41830e08        or      dword ptr [r14],8
fffff803`d9d14794 e80772fdff      call    nt!AlpcpAllocateBlob (fffff803`d9ceb9a0)
fffff803`d9d14799 48894710        mov     qword ptr [rdi+10h],rax
fffff803`d9d1479d 4883f800        cmp     rax,0
fffff803`d9d147a1 0f84de5a1600    je      nt! ?? ::NNGAKEGL::`string'+0x2f4c5 (fffff803`d9e7a285)

nt!AlpcpCreateClientPort+0x167:
fffff803`d9d147a7 48897810        mov     qword ptr [rax+10h],rdi
fffff803`d9d147ab 488b4710        mov     rax,qword ptr [rdi+10h]
fffff803`d9d147af 488930          mov     qword ptr [rax],rsi
fffff803`d9d147b2 488b4710        mov     rax,qword ptr [rdi+10h]
fffff803`d9d147b6 4883600800      and     qword ptr [rax+8],0
fffff803`d9d147bb 488b4e10        mov     rcx,qword ptr [rsi+10h]
fffff803`d9d147bf 4883e908        sub     rcx,8
fffff803`d9d147c3 f0480fba2900    lock bts qword ptr [rcx],0
fffff803`d9d147c9 0f82c1020000    jb      nt!AlpcpCreateClientPort+0x450 (fffff803`d9d14a90)

nt!AlpcpCreateClientPort+0x18f:
fffff803`d9d147cf 4c8b65e0        mov     r12,qword ptr [rbp-20h]
fffff803`d9d147d3 4981c448010000  add     r12,148h
fffff803`d9d147da f0490fba2c2400  lock bts qword ptr [r12],0
fffff803`d9d147e1 0f828f020000    jb      nt!AlpcpCreateClientPort+0x436 (fffff803`d9d14a76)

nt!AlpcpCreateClientPort+0x1a7:
fffff803`d9d147e7 488b4610        mov     rax,qword ptr [rsi+10h]
fffff803`d9d147eb 488b4f10        mov     rcx,qword ptr [rdi+10h]
fffff803`d9d147ef 488b5020        mov     rdx,qword ptr [rax+20h]
fffff803`d9d147f3 4883c018        add     rax,18h
fffff803`d9d147f7 4883c118        add     rcx,18h
fffff803`d9d147fb 48895108        mov     qword ptr [rcx+8],rdx
fffff803`d9d147ff 488901          mov     qword ptr [rcx],rax
fffff803`d9d14802 483902          cmp     qword ptr [rdx],rax
fffff803`d9d14805 0f85985a1600    jne     nt! ?? ::NNGAKEGL::`string'+0x2f4e3 (fffff803`d9e7a2a3)

nt!AlpcpCreateClientPort+0x1cb:
fffff803`d9d1480b 48890a          mov     qword ptr [rdx],rcx
fffff803`d9d1480e 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9d14812 488bc3          mov     rax,rbx
fffff803`d9d14815 f0490fc10424    lock xadd qword ptr [r12],rax
fffff803`d9d1481b a802            test    al,2
fffff803`d9d1481d 0f858a020000    jne     nt!AlpcpCreateClientPort+0x46d (fffff803`d9d14aad)

nt!AlpcpCreateClientPort+0x1e3:
fffff803`d9d14823 488b4e10        mov     rcx,qword ptr [rsi+10h]
fffff803`d9d14827 4883e908        sub     rcx,8
fffff803`d9d1482b f0480fc119      lock xadd qword ptr [rcx],rbx
fffff803`d9d14830 f6c302          test    bl,2
fffff803`d9d14833 0f8561020000    jne     nt!AlpcpCreateClientPort+0x45a (fffff803`d9d14a9a)

nt!AlpcpCreateClientPort+0x1f9:
fffff803`d9d14839 488b4f10        mov     rcx,qword ptr [rdi+10h]
fffff803`d9d1483d 4883c128        add     rcx,28h
fffff803`d9d14841 e80a3e0000      call    nt!AlpcInitializeHandleTable (fffff803`d9d18650)
fffff803`d9d14846 488b7de8        mov     rdi,qword ptr [rbp-18h]
fffff803`d9d1484a 33f6            xor     esi,esi
fffff803`d9d1484c 85c0            test    eax,eax
fffff803`d9d1484e 0f8803020000    js      nt!AlpcpCreateClientPort+0x417 (fffff803`d9d14a57)

nt!AlpcpCreateClientPort+0x214:
fffff803`d9d14854 8a9d90000000    mov     bl,byte ptr [rbp+90h]
fffff803`d9d1485a 4c8b8d88000000  mov     r9,qword ptr [rbp+88h]
fffff803`d9d14861 4c8b45e0        mov     r8,qword ptr [rbp-20h]
fffff803`d9d14865 885c2430        mov     byte ptr [rsp+30h],bl
fffff803`d9d14869 498bd7          mov     rdx,r15
fffff803`d9d1486c 488bcf          mov     rcx,rdi
fffff803`d9d1486f 44886c2428      mov     byte ptr [rsp+28h],r13b
fffff803`d9d14874 89742420        mov     dword ptr [rsp+20h],esi
fffff803`d9d14878 e89738feff      call    nt!AlpcpValidateAndSetPortAttributes (fffff803`d9cf8114)
fffff803`d9d1487d 85c0            test    eax,eax
fffff803`d9d1487f 0f88d2010000    js      nt!AlpcpCreateClientPort+0x417 (fffff803`d9d14a57)

nt!AlpcpCreateClientPort+0x245:
fffff803`d9d14885 84db            test    bl,bl
fffff803`d9d14887 7405            je      nt!AlpcpCreateClientPort+0x24e (fffff803`d9d1488e)

nt!AlpcpCreateClientPort+0x249:
fffff803`d9d14889 410fba2e0c      bts     dword ptr [r14],0Ch

nt!AlpcpCreateClientPort+0x24e:
fffff803`d9d1488e f7455000000800  test    dword ptr [rbp+50h],80000h
fffff803`d9d14895 0f85c4010000    jne     nt!AlpcpCreateClientPort+0x41f (fffff803`d9d14a5f)

nt!AlpcpCreateClientPort+0x25b:
fffff803`d9d1489b 80bff400000001  cmp     byte ptr [rdi+0F4h],1
fffff803`d9d148a2 0f8587010000    jne     nt!AlpcpCreateClientPort+0x3ef (fffff803`d9d14a2f)

nt!AlpcpCreateClientPort+0x268:
fffff803`d9d148a8 410fba2e0a      bts     dword ptr [r14],0Ah

nt!AlpcpCreateClientPort+0x26d:
fffff803`d9d148ad 4d85ff          test    r15,r15
fffff803`d9d148b0 0f85a7000000    jne     nt!AlpcpCreateClientPort+0x31d (fffff803`d9d1495d)

nt!AlpcpCreateClientPort+0x276:
fffff803`d9d148b6 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9d148bf 488b7de8        mov     rdi,qword ptr [rbp-18h]
fffff803`d9d148c3 488b98b8000000  mov     rbx,qword ptr [rax+0B8h]

nt!AlpcpCreateClientPort+0x28a:
fffff803`d9d148ca ba416c7063      mov     edx,63706C41h
fffff803`d9d148cf 488bcb          mov     rcx,rbx
fffff803`d9d148d2 e8115dc4ff      call    nt!ObfReferenceObjectWithTag (fffff803`d995a5e8)
fffff803`d9d148d7 488bcf          mov     rcx,rdi
fffff803`d9d148da 48895f18        mov     qword ptr [rdi+18h],rbx
fffff803`d9d148de e85d98c0ff      call    nt!ObfReferenceObject (fffff803`d991e140)
fffff803`d9d148e3 4c8d5df0        lea     r11,[rbp-10h]
fffff803`d9d148e7 4533c9          xor     r9d,r9d
fffff803`d9d148ea 4c895c2430      mov     qword ptr [rsp+30h],r11
fffff803`d9d148ef 33d2            xor     edx,edx
fffff803`d9d148f1 41b801001f00    mov     r8d,1F0001h
fffff803`d9d148f7 488bcf          mov     rcx,rdi
fffff803`d9d148fa 4889742428      mov     qword ptr [rsp+28h],rsi
fffff803`d9d148ff 89742420        mov     dword ptr [rsp+20h],esi
fffff803`d9d14903 e8a8b2fdff      call    nt!ObInsertObjectEx (fffff803`d9cefbb0)
fffff803`d9d14908 448bd8          mov     r11d,eax
fffff803`d9d1490b 85c0            test    eax,eax
fffff803`d9d1490d 0f8844010000    js      nt!AlpcpCreateClientPort+0x417 (fffff803`d9d14a57)

nt!AlpcpCreateClientPort+0x2d3:
fffff803`d9d14913 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff803`d9d14917 488b4d40        mov     rcx,qword ptr [rbp+40h]
fffff803`d9d1491b 48894738        mov     qword ptr [rdi+38h],rax
fffff803`d9d1491f 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff803`d9d14923 488901          mov     qword ptr [rcx],rax
fffff803`d9d14926 488b4548        mov     rax,qword ptr [rbp+48h]
fffff803`d9d1492a 488938          mov     qword ptr [rax],rdi
fffff803`d9d1492d 418bc3          mov     eax,r11d

nt!AlpcpCreateClientPort+0x2f0:
fffff803`d9d14930 488b9c24c8000000 mov     rbx,qword ptr [rsp+0C8h]
fffff803`d9d14938 4883c470        add     rsp,70h
fffff803`d9d1493c 415f            pop     r15
fffff803`d9d1493e 415e            pop     r14
fffff803`d9d14940 415d            pop     r13
fffff803`d9d14942 415c            pop     r12
fffff803`d9d14944 5f              pop     rdi
fffff803`d9d14945 5e              pop     rsi
fffff803`d9d14946 5d              pop     rbp
fffff803`d9d14947 c3              ret

nt!AlpcpCreateClientPort+0x308:
fffff803`d9d14948 41f70700000400  test    dword ptr [r15],40000h
fffff803`d9d1494f 0f840dfeffff    je      nt!AlpcpCreateClientPort+0x122 (fffff803`d9d14762)

nt!AlpcpCreateClientPort+0x315:
fffff803`d9d14955 41b501          mov     r13b,1
fffff803`d9d14958 e905feffff      jmp     nt!AlpcpCreateClientPort+0x122 (fffff803`d9d14762)

nt!AlpcpCreateClientPort+0x31d:
fffff803`d9d1495d 41f70700001000  test    dword ptr [r15],100000h
fffff803`d9d14964 0f844cffffff    je      nt!AlpcpCreateClientPort+0x276 (fffff803`d9d148b6)

nt!AlpcpCreateClientPort+0x32a:
fffff803`d9d1496a 488b1daf96ecff  mov     rbx,qword ptr [nt!PsInitialSystemProcess (fffff803`d9bde020)]
fffff803`d9d14971 e954ffffff      jmp     nt!AlpcpCreateClientPort+0x28a (fffff803`d9d148ca)

nt!AlpcpCreateClientPort+0x336:
fffff803`d9d14976 0fbae10c        bt      ecx,0Ch
fffff803`d9d1497a 0f8364fdffff    jae     nt!AlpcpCreateClientPort+0xa4 (fffff803`d9d146e4)

nt!AlpcpCreateClientPort+0x340:
fffff803`d9d14980 e9bb581600      jmp     nt! ?? ::NNGAKEGL::`string'+0x2f47c (fffff803`d9e7a240)

nt!AlpcpCreateClientPort+0x345:
fffff803`d9d14985 488dbe48010000  lea     rdi,[rsi+148h]
fffff803`d9d1498c b911000000      mov     ecx,11h
fffff803`d9d14991 33c0            xor     eax,eax
fffff803`d9d14993 f0480fb10f      lock cmpxchg qword ptr [rdi],rcx
fffff803`d9d14998 0f85cb000000    jne     nt!AlpcpCreateClientPort+0x429 (fffff803`d9d14a69)

nt!AlpcpCreateClientPort+0x35e:
fffff803`d9d1499e 488b45e0        mov     rax,qword ptr [rbp-20h]
fffff803`d9d149a2 488b7018        mov     rsi,qword ptr [rax+18h]
fffff803`d9d149a6 40f6c601        test    sil,1
fffff803`d9d149aa 0f8525010000    jne     nt!AlpcpCreateClientPort+0x495 (fffff803`d9d14ad5)

nt!AlpcpCreateClientPort+0x370:
fffff803`d9d149b0 4885f6          test    rsi,rsi
fffff803`d9d149b3 740d            je      nt!AlpcpCreateClientPort+0x382 (fffff803`d9d149c2)

nt!AlpcpCreateClientPort+0x375:
fffff803`d9d149b5 ba416c7063      mov     edx,63706C41h
fffff803`d9d149ba 488bce          mov     rcx,rsi
fffff803`d9d149bd e8265cc4ff      call    nt!ObfReferenceObjectWithTag (fffff803`d995a5e8)

nt!AlpcpCreateClientPort+0x382:
fffff803`d9d149c2 b811000000      mov     eax,11h
fffff803`d9d149c7 f04c0fb12f      lock cmpxchg qword ptr [rdi],r13
fffff803`d9d149cc 0f85b1000000    jne     nt!AlpcpCreateClientPort+0x443 (fffff803`d9d14a83)

nt!AlpcpCreateClientPort+0x392:
fffff803`d9d149d2 4885f6          test    rsi,rsi
fffff803`d9d149d5 0f8402010000    je      nt!AlpcpCreateClientPort+0x49d (fffff803`d9d14add)

nt!AlpcpCreateClientPort+0x39b:
fffff803`d9d149db 4d8bcf          mov     r9,r15
fffff803`d9d149de 4d8bc4          mov     r8,r12
fffff803`d9d149e1 418ad6          mov     dl,r14b
fffff803`d9d149e4 488bce          mov     rcx,rsi
fffff803`d9d149e7 e8942ff8ff      call    nt!AlpcpCheckConnectionSecurity (fffff803`d9c97980)
fffff803`d9d149ec ba416c7063      mov     edx,63706C41h
fffff803`d9d149f1 488bce          mov     rcx,rsi
fffff803`d9d149f4 8bf8            mov     edi,eax
fffff803`d9d149f6 e865c4bfff      call    nt!ObfDereferenceObjectWithTag (fffff803`d9910e60)

nt!AlpcpCreateClientPort+0x3bb:
fffff803`d9d149fb 488b75e0        mov     rsi,qword ptr [rbp-20h]
fffff803`d9d149ff 85ff            test    edi,edi
fffff803`d9d14a01 0f89fafcffff    jns     nt!AlpcpCreateClientPort+0xc1 (fffff803`d9d14701)

nt!AlpcpCreateClientPort+0x3c7:
fffff803`d9d14a07 e99e581600      jmp     nt! ?? ::NNGAKEGL::`string'+0x2f4ea (fffff803`d9e7a2aa)

nt!AlpcpCreateClientPort+0x3cc:
fffff803`d9d14a0c 4c8b051deae3ff  mov     r8,qword ptr [nt!AlpcPortObjectType (fffff803`d9b53430)]
fffff803`d9d14a13 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9d14a18 458ace          mov     r9b,r14b
fffff803`d9d14a1b ba01000000      mov     edx,1
fffff803`d9d14a20 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff803`d9d14a25 e8e630f8ff      call    nt!ObReferenceObjectByNameEx (fffff803`d9c97b10)
fffff803`d9d14a2a e986fcffff      jmp     nt!AlpcpCreateClientPort+0x75 (fffff803`d9d146b5)

nt!AlpcpCreateClientPort+0x3ef:
fffff803`d9d14a2f 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9d14a38 488b7de8        mov     rdi,qword ptr [rbp-18h]
fffff803`d9d14a3c 4533c0          xor     r8d,r8d
fffff803`d9d14a3f 4c8d4f40        lea     r9,[rdi+40h]
fffff803`d9d14a43 488d97ec000000  lea     rdx,[rdi+0ECh]
fffff803`d9d14a4a e8b110fbff      call    nt!SeCreateClientSecurity (fffff803`d9cc5b00)
fffff803`d9d14a4f 85c0            test    eax,eax
fffff803`d9d14a51 0f8956feffff    jns     nt!AlpcpCreateClientPort+0x26d (fffff803`d9d148ad)

nt!AlpcpCreateClientPort+0x417:
fffff803`d9d14a57 448bf0          mov     r14d,eax
fffff803`d9d14a5a e934581600      jmp     nt! ?? ::NNGAKEGL::`string'+0x2f4d3 (fffff803`d9e7a293)

nt!AlpcpCreateClientPort+0x41f:
fffff803`d9d14a5f 410fba2e08      bts     dword ptr [r14],8
fffff803`d9d14a64 e932feffff      jmp     nt!AlpcpCreateClientPort+0x25b (fffff803`d9d1489b)

nt!AlpcpCreateClientPort+0x429:
fffff803`d9d14a69 488bcf          mov     rcx,rdi
fffff803`d9d14a6c e8cfcdc1ff      call    nt!ExfAcquirePushLockShared (fffff803`d9931840)
fffff803`d9d14a71 e928ffffff      jmp     nt!AlpcpCreateClientPort+0x35e (fffff803`d9d1499e)

nt!AlpcpCreateClientPort+0x436:
fffff803`d9d14a76 498bcc          mov     rcx,r12
fffff803`d9d14a79 e88209c5ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9d14a7e e964fdffff      jmp     nt!AlpcpCreateClientPort+0x1a7 (fffff803`d9d147e7)

nt!AlpcpCreateClientPort+0x443:
fffff803`d9d14a83 488bcf          mov     rcx,rdi
fffff803`d9d14a86 e865cdc0ff      call    nt!ExfReleasePushLockShared (fffff803`d99217f0)
fffff803`d9d14a8b e942ffffff      jmp     nt!AlpcpCreateClientPort+0x392 (fffff803`d9d149d2)

nt!AlpcpCreateClientPort+0x450:
fffff803`d9d14a90 e86b09c5ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9d14a95 e935fdffff      jmp     nt!AlpcpCreateClientPort+0x18f (fffff803`d9d147cf)

nt!AlpcpCreateClientPort+0x45a:
fffff803`d9d14a9a f6c304          test    bl,4
fffff803`d9d14a9d 0f8596fdffff    jne     nt!AlpcpCreateClientPort+0x1f9 (fffff803`d9d14839)

nt!AlpcpCreateClientPort+0x463:
fffff803`d9d14aa3 e86c45c5ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9d14aa8 e98cfdffff      jmp     nt!AlpcpCreateClientPort+0x1f9 (fffff803`d9d14839)

nt!AlpcpCreateClientPort+0x46d:
fffff803`d9d14aad a804            test    al,4
fffff803`d9d14aaf 0f856efdffff    jne     nt!AlpcpCreateClientPort+0x1e3 (fffff803`d9d14823)

nt!AlpcpCreateClientPort+0x475:
fffff803`d9d14ab5 498bcc          mov     rcx,r12
fffff803`d9d14ab8 e85745c5ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9d14abd e961fdffff      jmp     nt!AlpcpCreateClientPort+0x1e3 (fffff803`d9d14823)

nt!AlpcpCreateClientPort+0x482:
fffff803`d9d14ac2 bf420000c0      mov     edi,0C0000042h
fffff803`d9d14ac7 e9de571600      jmp     nt! ?? ::NNGAKEGL::`string'+0x2f4ea (fffff803`d9e7a2aa)

nt!AlpcpCreateClientPort+0x48c:
fffff803`d9d14acc 488b75e0        mov     rsi,qword ptr [rbp-20h]
fffff803`d9d14ad0 e90ffcffff      jmp     nt!AlpcpCreateClientPort+0xa4 (fffff803`d9d146e4)

nt!AlpcpCreateClientPort+0x495:
fffff803`d9d14ad5 498bf5          mov     rsi,r13
fffff803`d9d14ad8 e9e5feffff      jmp     nt!AlpcpCreateClientPort+0x382 (fffff803`d9d149c2)

nt!AlpcpCreateClientPort+0x49d:
fffff803`d9d14add bfa00200c0      mov     edi,0C00002A0h
fffff803`d9d14ae2 e914ffffff      jmp     nt!AlpcpCreateClientPort+0x3bb (fffff803`d9d149fb)

nt! ?? ::NNGAKEGL::`string'+0x2f47c:
fffff803`d9e7a240 488dbe48010000  lea     rdi,[rsi+148h]
fffff803`d9e7a247 f0480fba2f00    lock bts qword ptr [rdi],0
fffff803`d9e7a24d 7308            jae     nt! ?? ::NNGAKEGL::`string'+0x2f497 (fffff803`d9e7a257)

nt! ?? ::NNGAKEGL::`string'+0x2f48f:
fffff803`d9e7a24f 488bcf          mov     rcx,rdi
fffff803`d9e7a252 e8a9b1aeff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)

nt! ?? ::NNGAKEGL::`string'+0x2f497:
fffff803`d9e7a257 0fbab6840100000d btr     dword ptr [rsi+184h],0Dh
fffff803`d9e7a25f 488bc3          mov     rax,rbx
fffff803`d9e7a262 f0480fc107      lock xadd qword ptr [rdi],rax
fffff803`d9e7a267 a802            test    al,2
fffff803`d9e7a269 0f845da8e9ff    je      nt!AlpcpCreateClientPort+0x48c (fffff803`d9d14acc)

nt! ?? ::NNGAKEGL::`string'+0x2f4af:
fffff803`d9e7a26f a804            test    al,4
fffff803`d9e7a271 0f8555a8e9ff    jne     nt!AlpcpCreateClientPort+0x48c (fffff803`d9d14acc)

nt! ?? ::NNGAKEGL::`string'+0x2f4b7:
fffff803`d9e7a277 488bcf          mov     rcx,rdi
fffff803`d9e7a27a e895edaeff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9e7a27f 90              nop
fffff803`d9e7a280 e947a8e9ff      jmp     nt!AlpcpCreateClientPort+0x48c (fffff803`d9d14acc)

nt! ?? ::NNGAKEGL::`string'+0x2f4c5:
fffff803`d9e7a285 41be170000c0    mov     r14d,0C0000017h

nt! ?? ::NNGAKEGL::`string'+0x2f4cb:
fffff803`d9e7a28b 488bce          mov     rcx,rsi
fffff803`d9e7a28e e84da9aaff      call    nt!ObfDereferenceObject (fffff803`d9924be0)

nt! ?? ::NNGAKEGL::`string'+0x2f4d3:
fffff803`d9e7a293 488bcf          mov     rcx,rdi
fffff803`d9e7a296 e845a9aaff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9e7a29b 418bc6          mov     eax,r14d
fffff803`d9e7a29e e98da6e9ff      jmp     nt!AlpcpCreateClientPort+0x2f0 (fffff803`d9d14930)

nt! ?? ::NNGAKEGL::`string'+0x2f4e3:
fffff803`d9e7a2a3 b903000000      mov     ecx,3
fffff803`d9e7a2a8 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x2f4ea:
fffff803`d9e7a2aa 488bce          mov     rcx,rsi
fffff803`d9e7a2ad e82ea9aaff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9e7a2b2 8bc7            mov     eax,edi
fffff803`d9e7a2b4 e977a6e9ff      jmp     nt!AlpcpCreateClientPort+0x2f0 (fffff803`d9d14930)
