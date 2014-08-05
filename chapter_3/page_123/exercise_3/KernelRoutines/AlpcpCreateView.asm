0: kd> uf AlpcpCreateView
nt!AlpcpCreateView:
fffff803`d9d1bc00 4c89442418      mov     qword ptr [rsp+18h],r8
fffff803`d9d1bc05 53              push    rbx
fffff803`d9d1bc06 55              push    rbp
fffff803`d9d1bc07 56              push    rsi
fffff803`d9d1bc08 57              push    rdi
fffff803`d9d1bc09 4154            push    r12
fffff803`d9d1bc0b 4157            push    r15
fffff803`d9d1bc0d 4881ec88000000  sub     rsp,88h
fffff803`d9d1bc14 488b7110        mov     rsi,qword ptr [rcx+10h]
fffff803`d9d1bc18 4533ff          xor     r15d,r15d
fffff803`d9d1bc1b 488bf9          mov     rdi,rcx
fffff803`d9d1bc1e 488d4ef8        lea     rcx,[rsi-8]
fffff803`d9d1bc22 4d8938          mov     qword ptr [r8],r15
fffff803`d9d1bc25 488bea          mov     rbp,rdx
fffff803`d9d1bc28 f0480fba2900    lock bts qword ptr [rcx],0
fffff803`d9d1bc2e 0f8274030000    jb      nt!AlpcpCreateView+0x3a5 (fffff803`d9d1bfa8)

nt!AlpcpCreateView+0x34:
fffff803`d9d1bc34 804ef001        or      byte ptr [rsi-10h],1
fffff803`d9d1bc38 b800000100      mov     eax,10000h
fffff803`d9d1bc3d f00fc146f4      lock xadd dword ptr [rsi-0Ch],eax
fffff803`d9d1bc42 4c8da548010000  lea     r12,[rbp+148h]
fffff803`d9d1bc49 b911000000      mov     ecx,11h
fffff803`d9d1bc4e 33c0            xor     eax,eax
fffff803`d9d1bc50 4c89642460      mov     qword ptr [rsp+60h],r12
fffff803`d9d1bc55 f0490fb10c24    lock cmpxchg qword ptr [r12],rcx
fffff803`d9d1bc5b 0f85e7020000    jne     nt!AlpcpCreateView+0x347 (fffff803`d9d1bf48)

nt!AlpcpCreateView+0x61:
fffff803`d9d1bc61 8b8584010000    mov     eax,dword ptr [rbp+184h]
fffff803`d9d1bc67 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh
fffff803`d9d1bc6b 4c89ac2480000000 mov     qword ptr [rsp+80h],r13
fffff803`d9d1bc73 4c89742478      mov     qword ptr [rsp+78h],r14
fffff803`d9d1bc78 a820            test    al,20h
fffff803`d9d1bc7a 0f85ac081600    jne     nt! ?? ::NNGAKEGL::`string'+0x326f6 (fffff803`d9e7c52c)

nt!AlpcpCreateView+0x80:
fffff803`d9d1bc80 488b8518010000  mov     rax,qword ptr [rbp+118h]
fffff803`d9d1bc87 4c8b6d18        mov     r13,qword ptr [rbp+18h]
fffff803`d9d1bc8b 4885c0          test    rax,rax
fffff803`d9d1bc8e 740a            je      nt!AlpcpCreateView+0x9a (fffff803`d9d1bc9a)

nt!AlpcpCreateView+0x90:
fffff803`d9d1bc90 483b4728        cmp     rax,qword ptr [rdi+28h]
fffff803`d9d1bc94 0f829d081600    jb      nt! ?? ::NNGAKEGL::`string'+0x32701 (fffff803`d9e7c537)

nt!AlpcpCreateView+0x9a:
fffff803`d9d1bc9a 8b4730          mov     eax,dword ptr [rdi+30h]
fffff803`d9d1bc9d a801            test    al,1
fffff803`d9d1bc9f 7414            je      nt!AlpcpCreateView+0xb5 (fffff803`d9d1bcb5)

nt!AlpcpCreateView+0xa1:
fffff803`d9d1bca1 837f3402        cmp     dword ptr [rdi+34h],2
fffff803`d9d1bca5 0f83dc081600    jae     nt! ?? ::NNGAKEGL::`string'+0x32751 (fffff803`d9e7c587)

nt!AlpcpCreateView+0xab:
fffff803`d9d1bcab 4c397f50        cmp     qword ptr [rdi+50h],r15
fffff803`d9d1bcaf 0f85d2081600    jne     nt! ?? ::NNGAKEGL::`string'+0x32751 (fffff803`d9e7c587)

nt!AlpcpCreateView+0xb5:
fffff803`d9d1bcb5 488d0db46cbeff  lea     rcx,[nt!AlpcViewType (fffff803`d9902970)]
fffff803`d9d1bcbc ba60000000      mov     edx,60h
fffff803`d9d1bcc1 e8dafcfcff      call    nt!AlpcpAllocateBlob (fffff803`d9ceb9a0)
fffff803`d9d1bcc6 4c8bf0          mov     r14,rax
fffff803`d9d1bcc9 4885c0          test    rax,rax
fffff803`d9d1bccc 0f8470081600    je      nt! ?? ::NNGAKEGL::`string'+0x3270c (fffff803`d9e7c542)

nt!AlpcpCreateView+0xd2:
fffff803`d9d1bcd2 33d2            xor     edx,edx
fffff803`d9d1bcd4 488bc8          mov     rcx,rax
fffff803`d9d1bcd7 448d4260        lea     r8d,[rdx+60h]
fffff803`d9d1bcdb e8e09dbeff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9d1bce0 488b4728        mov     rax,qword ptr [rdi+28h]
fffff803`d9d1bce4 4c8b5f18        mov     r11,qword ptr [rdi+18h]
fffff803`d9d1bce8 48898424c8000000 mov     qword ptr [rsp+0C8h],rax
fffff803`d9d1bcf0 8b4630          mov     eax,dword ptr [rsi+30h]
fffff803`d9d1bcf3 4533c9          xor     r9d,r9d
fffff803`d9d1bcf6 4c899c24d8000000 mov     qword ptr [rsp+0D8h],r11
fffff803`d9d1bcfe 4c89bc24c0000000 mov     qword ptr [rsp+0C0h],r15
fffff803`d9d1bd06 4c8d8424c0000000 lea     r8,[rsp+0C0h]
fffff803`d9d1bd0e 498bd5          mov     rdx,r13
fffff803`d9d1bd11 a802            test    al,2
fffff803`d9d1bd13 0f841d020000    je      nt!AlpcpCreateView+0x336 (fffff803`d9d1bf36)

nt!AlpcpCreateView+0x119:
fffff803`d9d1bd19 488b0e          mov     rcx,qword ptr [rsi]
fffff803`d9d1bd1c 498d4638        lea     rax,[r14+38h]
fffff803`d9d1bd20 4889442450      mov     qword ptr [rsp+50h],rax

nt!AlpcpCreateView+0x125:
fffff803`d9d1bd25 c744244804000000 mov     dword ptr [rsp+48h],4
fffff803`d9d1bd2d 44897c2440      mov     dword ptr [rsp+40h],r15d
fffff803`d9d1bd32 c744243802000000 mov     dword ptr [rsp+38h],2
fffff803`d9d1bd3a 488d8424c8000000 lea     rax,[rsp+0C8h]
fffff803`d9d1bd42 4889442430      mov     qword ptr [rsp+30h],rax
fffff803`d9d1bd47 488d8424d8000000 lea     rax,[rsp+0D8h]
fffff803`d9d1bd4f 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9d1bd54 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`d9d1bd59 e8a2f0faff      call    nt!MiMapViewOfSection (fffff803`d9ccae00)
fffff803`d9d1bd5e 448bf8          mov     r15d,eax
fffff803`d9d1bd61 85c0            test    eax,eax
fffff803`d9d1bd63 0f88e4071600    js      nt! ?? ::NNGAKEGL::`string'+0x32717 (fffff803`d9e7c54d)

nt!AlpcpCreateView+0x169:
fffff803`d9d1bd69 488b8424c0000000 mov     rax,qword ptr [rsp+0C0h]
fffff803`d9d1bd71 41834e4801      or      dword ptr [r14+48h],1
fffff803`d9d1bd76 ba416c7063      mov     edx,63706C41h
fffff803`d9d1bd7b 49894628        mov     qword ptr [r14+28h],rax
fffff803`d9d1bd7f 488b8424c8000000 mov     rax,qword ptr [rsp+0C8h]
fffff803`d9d1bd87 498bcd          mov     rcx,r13
fffff803`d9d1bd8a 49894630        mov     qword ptr [r14+30h],rax
fffff803`d9d1bd8e e855e8c3ff      call    nt!ObfReferenceObjectWithTag (fffff803`d995a5e8)
fffff803`d9d1bd93 488bcd          mov     rcx,rbp
fffff803`d9d1bd96 4d896e20        mov     qword ptr [r14+20h],r13
fffff803`d9d1bd9a e8a123c0ff      call    nt!ObfReferenceObject (fffff803`d991e140)
fffff803`d9d1bd9f 49896e18        mov     qword ptr [r14+18h],rbp
fffff803`d9d1bda3 0f0d4ff4        prefetchw [rdi-0Ch]
fffff803`d9d1bda7 8b47f4          mov     eax,dword ptr [rdi-0Ch]
fffff803`d9d1bdaa 85c0            test    eax,eax
fffff803`d9d1bdac 7412            je      nt!AlpcpCreateView+0x1c0 (fffff803`d9d1bdc0)

nt!AlpcpCreateView+0x1ae:
fffff803`d9d1bdae 8bd0            mov     edx,eax
fffff803`d9d1bdb0 8d4801          lea     ecx,[rax+1]
fffff803`d9d1bdb3 f00fb14ff4      lock cmpxchg dword ptr [rdi-0Ch],ecx
fffff803`d9d1bdb8 3bc2            cmp     eax,edx
fffff803`d9d1bdba 0f85a6071600    jne     nt! ?? ::NNGAKEGL::`string'+0x32730 (fffff803`d9e7c566)

nt!AlpcpCreateView+0x1c0:
fffff803`d9d1bdc0 49897e10        mov     qword ptr [r14+10h],rdi
fffff803`d9d1bdc4 488b4740        mov     rax,qword ptr [rdi+40h]
fffff803`d9d1bdc8 488d4f38        lea     rcx,[rdi+38h]
fffff803`d9d1bdcc 49890e          mov     qword ptr [r14],rcx
fffff803`d9d1bdcf 49894608        mov     qword ptr [r14+8],rax
fffff803`d9d1bdd3 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`d9d1bdd7 4c8930          mov     qword ptr [rax],r14
fffff803`d9d1bdda 4c897108        mov     qword ptr [rcx+8],r14
fffff803`d9d1bdde ff4734          inc     dword ptr [rdi+34h]
fffff803`d9d1bde1 4c8da530010000  lea     r12,[rbp+130h]
fffff803`d9d1bde8 4d8d7ee0        lea     r15,[r14-20h]
fffff803`d9d1bdec f0490fba2c2400  lock bts qword ptr [r12],0
fffff803`d9d1bdf3 0f825d010000    jb      nt!AlpcpCreateView+0x354 (fffff803`d9d1bf56)

nt!AlpcpCreateView+0x1f9:
fffff803`d9d1bdf9 4881c538010000  add     rbp,138h
fffff803`d9d1be00 488b4508        mov     rax,qword ptr [rbp+8]
fffff803`d9d1be04 49892f          mov     qword ptr [r15],rbp
fffff803`d9d1be07 49894708        mov     qword ptr [r15+8],rax
fffff803`d9d1be0b 483928          cmp     qword ptr [rax],rbp
fffff803`d9d1be0e 0f855f071600    jne     nt! ?? ::NNGAKEGL::`string'+0x3273d (fffff803`d9e7c573)

nt!AlpcpCreateView+0x214:
fffff803`d9d1be14 4c8938          mov     qword ptr [rax],r15
fffff803`d9d1be17 4c897d08        mov     qword ptr [rbp+8],r15
fffff803`d9d1be1b 488bc3          mov     rax,rbx
fffff803`d9d1be1e f0490fc10424    lock xadd qword ptr [r12],rax
fffff803`d9d1be24 a802            test    al,2
fffff803`d9d1be26 0f8537010000    jne     nt!AlpcpCreateView+0x361 (fffff803`d9d1bf63)

nt!AlpcpCreateView+0x22c:
fffff803`d9d1be2c 498dadd0050000  lea     rbp,[r13+5D0h]
fffff803`d9d1be33 f0480fba6d0000  lock bts qword ptr [rbp],0
fffff803`d9d1be3a 0f824d010000    jb      nt!AlpcpCreateView+0x38b (fffff803`d9d1bf8d)

nt!AlpcpCreateView+0x240:
fffff803`d9d1be40 498d95d8050000  lea     rdx,[r13+5D8h]
fffff803`d9d1be47 4d8d4650        lea     r8,[r14+50h]
fffff803`d9d1be4b 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`d9d1be4f 498910          mov     qword ptr [r8],rdx
fffff803`d9d1be52 49894008        mov     qword ptr [r8+8],rax
fffff803`d9d1be56 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`d9d1be5a 4c8900          mov     qword ptr [rax],r8
fffff803`d9d1be5d 4c894208        mov     qword ptr [rdx+8],r8
fffff803`d9d1be61 488bc3          mov     rax,rbx
fffff803`d9d1be64 f0480fc14500    lock xadd qword ptr [rbp],rax
fffff803`d9d1be6a a802            test    al,2
fffff803`d9d1be6c 0f8506010000    jne     nt!AlpcpCreateView+0x376 (fffff803`d9d1bf78)

nt!AlpcpCreateView+0x272:
fffff803`d9d1be72 8b4730          mov     eax,dword ptr [rdi+30h]
fffff803`d9d1be75 a801            test    al,1
fffff803`d9d1be77 7404            je      nt!AlpcpCreateView+0x27d (fffff803`d9d1be7d)

nt!AlpcpCreateView+0x279:
fffff803`d9d1be79 4c897750        mov     qword ptr [rdi+50h],r14

nt!AlpcpCreateView+0x27d:
fffff803`d9d1be7d 410f0d4f14      prefetchw [r15+14h]
fffff803`d9d1be82 418b4714        mov     eax,dword ptr [r15+14h]
fffff803`d9d1be86 85c0            test    eax,eax
fffff803`d9d1be88 7413            je      nt!AlpcpCreateView+0x29d (fffff803`d9d1be9d)

nt!AlpcpCreateView+0x28a:
fffff803`d9d1be8a 8bd0            mov     edx,eax
fffff803`d9d1be8c 8d4801          lea     ecx,[rax+1]
fffff803`d9d1be8f f0410fb14f14    lock cmpxchg dword ptr [r15+14h],ecx
fffff803`d9d1be95 3bc2            cmp     eax,edx
fffff803`d9d1be97 0f85dd061600    jne     nt! ?? ::NNGAKEGL::`string'+0x32744 (fffff803`d9e7c57a)

nt!AlpcpCreateView+0x29d:
fffff803`d9d1be9d 488b8c24d0000000 mov     rcx,qword ptr [rsp+0D0h]
fffff803`d9d1bea5 4c8b642460      mov     r12,qword ptr [rsp+60h]
fffff803`d9d1beaa 33ed            xor     ebp,ebp
fffff803`d9d1beac 4c8931          mov     qword ptr [rcx],r14
fffff803`d9d1beaf 448bfd          mov     r15d,ebp

nt!AlpcpCreateView+0x2b2:
fffff803`d9d1beb2 b811000000      mov     eax,11h
fffff803`d9d1beb7 f0490fb12c24    lock cmpxchg qword ptr [r12],rbp
fffff803`d9d1bebd 756d            jne     nt!AlpcpCreateView+0x32c (fffff803`d9d1bf2c)

nt!AlpcpCreateView+0x2bf:
fffff803`d9d1bebf 0fb64ef0        movzx   ecx,byte ptr [rsi-10h]
fffff803`d9d1bec3 8bfd            mov     edi,ebp
fffff803`d9d1bec5 f6c101          test    cl,1
fffff803`d9d1bec8 7415            je      nt!AlpcpCreateView+0x2df (fffff803`d9d1bedf)

nt!AlpcpCreateView+0x2ca:
fffff803`d9d1beca 0fbf46f2        movsx   eax,word ptr [rsi-0Eh]
fffff803`d9d1bece bf00000100      mov     edi,10000h
fffff803`d9d1bed3 66896ef2        mov     word ptr [rsi-0Eh],bp
fffff803`d9d1bed7 2bf8            sub     edi,eax
fffff803`d9d1bed9 80e1fe          and     cl,0FEh
fffff803`d9d1bedc 884ef0          mov     byte ptr [rsi-10h],cl

nt!AlpcpCreateView+0x2df:
fffff803`d9d1bedf 488d4ef8        lea     rcx,[rsi-8]
fffff803`d9d1bee3 f0480fc119      lock xadd qword ptr [rcx],rbx
fffff803`d9d1bee8 f6c302          test    bl,2
fffff803`d9d1beeb 740a            je      nt!AlpcpCreateView+0x2f7 (fffff803`d9d1bef7)

nt!AlpcpCreateView+0x2ed:
fffff803`d9d1beed f6c304          test    bl,4
fffff803`d9d1bef0 7505            jne     nt!AlpcpCreateView+0x2f7 (fffff803`d9d1bef7)

nt!AlpcpCreateView+0x2f2:
fffff803`d9d1bef2 e81dd1c4ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)

nt!AlpcpCreateView+0x2f7:
fffff803`d9d1bef7 85ff            test    edi,edi
fffff803`d9d1bef9 7e11            jle     nt!AlpcpCreateView+0x30c (fffff803`d9d1bf0c)

nt!AlpcpCreateView+0x2fb:
fffff803`d9d1befb f7df            neg     edi
fffff803`d9d1befd 8bc7            mov     eax,edi
fffff803`d9d1beff f00fc146f4      lock xadd dword ptr [rsi-0Ch],eax
fffff803`d9d1bf04 03c7            add     eax,edi
fffff803`d9d1bf06 0f848e000000    je      nt!AlpcpCreateView+0x398 (fffff803`d9d1bf9a)

nt!AlpcpCreateView+0x30c:
fffff803`d9d1bf0c 4c8b742478      mov     r14,qword ptr [rsp+78h]
fffff803`d9d1bf11 4c8bac2480000000 mov     r13,qword ptr [rsp+80h]
fffff803`d9d1bf19 418bc7          mov     eax,r15d
fffff803`d9d1bf1c 4881c488000000  add     rsp,88h
fffff803`d9d1bf23 415f            pop     r15
fffff803`d9d1bf25 415c            pop     r12
fffff803`d9d1bf27 5f              pop     rdi
fffff803`d9d1bf28 5e              pop     rsi
fffff803`d9d1bf29 5d              pop     rbp
fffff803`d9d1bf2a 5b              pop     rbx
fffff803`d9d1bf2b c3              ret

nt!AlpcpCreateView+0x32c:
fffff803`d9d1bf2c 498bcc          mov     rcx,r12
fffff803`d9d1bf2f e8bc58c0ff      call    nt!ExfReleasePushLockShared (fffff803`d99217f0)
fffff803`d9d1bf34 eb89            jmp     nt!AlpcpCreateView+0x2bf (fffff803`d9d1bebf)

nt!AlpcpCreateView+0x336:
fffff803`d9d1bf36 488b4710        mov     rax,qword ptr [rdi+10h]
fffff803`d9d1bf3a 4c897c2450      mov     qword ptr [rsp+50h],r15
fffff803`d9d1bf3f 488b08          mov     rcx,qword ptr [rax]
fffff803`d9d1bf42 e9defdffff      jmp     nt!AlpcpCreateView+0x125 (fffff803`d9d1bd25)

nt!AlpcpCreateView+0x347:
fffff803`d9d1bf48 498bcc          mov     rcx,r12
fffff803`d9d1bf4b e8f058c1ff      call    nt!ExfAcquirePushLockShared (fffff803`d9931840)
fffff803`d9d1bf50 e90cfdffff      jmp     nt!AlpcpCreateView+0x61 (fffff803`d9d1bc61)

nt!AlpcpCreateView+0x354:
fffff803`d9d1bf56 498bcc          mov     rcx,r12
fffff803`d9d1bf59 e8a294c4ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9d1bf5e e996feffff      jmp     nt!AlpcpCreateView+0x1f9 (fffff803`d9d1bdf9)

nt!AlpcpCreateView+0x361:
fffff803`d9d1bf63 a804            test    al,4
fffff803`d9d1bf65 0f85c1feffff    jne     nt!AlpcpCreateView+0x22c (fffff803`d9d1be2c)

nt!AlpcpCreateView+0x369:
fffff803`d9d1bf6b 498bcc          mov     rcx,r12
fffff803`d9d1bf6e e8a1d0c4ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9d1bf73 e9b4feffff      jmp     nt!AlpcpCreateView+0x22c (fffff803`d9d1be2c)

nt!AlpcpCreateView+0x376:
fffff803`d9d1bf78 a804            test    al,4
fffff803`d9d1bf7a 0f85f2feffff    jne     nt!AlpcpCreateView+0x272 (fffff803`d9d1be72)

nt!AlpcpCreateView+0x37e:
fffff803`d9d1bf80 488bcd          mov     rcx,rbp
fffff803`d9d1bf83 e88cd0c4ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9d1bf88 e9e5feffff      jmp     nt!AlpcpCreateView+0x272 (fffff803`d9d1be72)

nt!AlpcpCreateView+0x38b:
fffff803`d9d1bf8d 488bcd          mov     rcx,rbp
fffff803`d9d1bf90 e86b94c4ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9d1bf95 e9a6feffff      jmp     nt!AlpcpCreateView+0x240 (fffff803`d9d1be40)

nt!AlpcpCreateView+0x398:
fffff803`d9d1bf9a 488bce          mov     rcx,rsi
fffff803`d9d1bf9d e87af9fcff      call    nt!AlpcpDestroyBlob (fffff803`d9ceb91c)
fffff803`d9d1bfa2 e965ffffff      jmp     nt!AlpcpCreateView+0x30c (fffff803`d9d1bf0c)

nt!AlpcpCreateView+0x3a5:
fffff803`d9d1bfa8 e85394c4ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9d1bfad e982fcffff      jmp     nt!AlpcpCreateView+0x34 (fffff803`d9d1bc34)

nt!AlpcpCreateView+0x3af:
fffff803`d9d1bfb3 33ed            xor     ebp,ebp
fffff803`d9d1bfb5 e9f8feffff      jmp     nt!AlpcpCreateView+0x2b2 (fffff803`d9d1beb2)

nt! ?? ::NNGAKEGL::`string'+0x326f6:
fffff803`d9e7c52c 41bf370000c0    mov     r15d,0C0000037h
fffff803`d9e7c532 e97cfae9ff      jmp     nt!AlpcpCreateView+0x3af (fffff803`d9d1bfb3)

nt! ?? ::NNGAKEGL::`string'+0x32701:
fffff803`d9e7c537 41bf440000c0    mov     r15d,0C0000044h
fffff803`d9e7c53d e971fae9ff      jmp     nt!AlpcpCreateView+0x3af (fffff803`d9d1bfb3)

nt! ?? ::NNGAKEGL::`string'+0x3270c:
fffff803`d9e7c542 41bf9a0000c0    mov     r15d,0C000009Ah
fffff803`d9e7c548 e966fae9ff      jmp     nt!AlpcpCreateView+0x3af (fffff803`d9d1bfb3)

nt! ?? ::NNGAKEGL::`string'+0x32717:
fffff803`d9e7c54d f041ff4ef4      lock dec dword ptr [r14-0Ch]
fffff803`d9e7c552 0f855bfae9ff    jne     nt!AlpcpCreateView+0x3af (fffff803`d9d1bfb3)

nt! ?? ::NNGAKEGL::`string'+0x32722:
fffff803`d9e7c558 498bce          mov     rcx,r14
fffff803`d9e7c55b e8bcf3e6ff      call    nt!AlpcpDestroyBlob (fffff803`d9ceb91c)
fffff803`d9e7c560 90              nop
fffff803`d9e7c561 e94dfae9ff      jmp     nt!AlpcpCreateView+0x3af (fffff803`d9d1bfb3)

nt! ?? ::NNGAKEGL::`string'+0x32730:
fffff803`d9e7c566 85c0            test    eax,eax
fffff803`d9e7c568 0f8540f8e9ff    jne     nt!AlpcpCreateView+0x1ae (fffff803`d9d1bdae)

nt! ?? ::NNGAKEGL::`string'+0x32738:
fffff803`d9e7c56e e94df8e9ff      jmp     nt!AlpcpCreateView+0x1c0 (fffff803`d9d1bdc0)

nt! ?? ::NNGAKEGL::`string'+0x3273d:
fffff803`d9e7c573 b903000000      mov     ecx,3
fffff803`d9e7c578 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x32744:
fffff803`d9e7c57a 85c0            test    eax,eax
fffff803`d9e7c57c 0f8508f9e9ff    jne     nt!AlpcpCreateView+0x28a (fffff803`d9d1be8a)

nt! ?? ::NNGAKEGL::`string'+0x3274c:
fffff803`d9e7c582 e916f9e9ff      jmp     nt!AlpcpCreateView+0x29d (fffff803`d9d1be9d)

nt! ?? ::NNGAKEGL::`string'+0x32751:
fffff803`d9e7c587 41bf220000c0    mov     r15d,0C0000022h
fffff803`d9e7c58d e921fae9ff      jmp     nt!AlpcpCreateView+0x3af (fffff803`d9d1bfb3)
