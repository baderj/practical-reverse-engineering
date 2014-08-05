0: kd> uf AlpcpCreateSection
nt!AlpcpCreateSection:
fffff803`d9d13f18 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9d13f1d 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`d9d13f22 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d9d13f27 57              push    rdi
fffff803`d9d13f28 4154            push    r12
fffff803`d9d13f2a 4155            push    r13
fffff803`d9d13f2c 4156            push    r14
fffff803`d9d13f2e 4157            push    r15
fffff803`d9d13f30 4883ec50        sub     rsp,50h
fffff803`d9d13f34 4533e4          xor     r12d,r12d
fffff803`d9d13f37 498bd9          mov     rbx,r9
fffff803`d9d13f3a 458af0          mov     r14b,r8b
fffff803`d9d13f3d 408af2          mov     sil,dl
fffff803`d9d13f40 4c8bf9          mov     r15,rcx
fffff803`d9d13f43 4d85c9          test    r9,r9
fffff803`d9d13f46 7408            je      nt!AlpcpCreateSection+0x38 (fffff803`d9d13f50)

nt!AlpcpCreateSection+0x30:
fffff803`d9d13f48 84d2            test    dl,dl
fffff803`d9d13f4a 0f8586020000    jne     nt!AlpcpCreateSection+0x2be (fffff803`d9d141d6)

nt!AlpcpCreateSection+0x38:
fffff803`d9d13f50 bd48000000      mov     ebp,48h
fffff803`d9d13f55 488d0d74eabeff  lea     rcx,[nt!AlpcSectionType (fffff803`d99029d0)]
fffff803`d9d13f5c 8bd5            mov     edx,ebp
fffff803`d9d13f5e e83d7afdff      call    nt!AlpcpAllocateBlob (fffff803`d9ceb9a0)
fffff803`d9d13f63 488bf8          mov     rdi,rax
fffff803`d9d13f66 4885c0          test    rax,rax
fffff803`d9d13f69 0f8499861600    je      nt! ?? ::NNGAKEGL::`string'+0x327d0 (fffff803`d9e7c608)

nt!AlpcpCreateSection+0x57:
fffff803`d9d13f6f 448bc5          mov     r8d,ebp
fffff803`d9d13f72 33d2            xor     edx,edx
fffff803`d9d13f74 488bc8          mov     rcx,rax
fffff803`d9d13f77 e8441bbfff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9d13f7c 654c8b1c2588010000 mov   r11,qword ptr gs:[188h]
fffff803`d9d13f85 8b0d95f4e3ff    mov     ecx,dword ptr [nt!AlpcpRegionGranularity (fffff803`d9b53420)]
fffff803`d9d13f8b 498b83b8000000  mov     rax,qword ptr [r11+0B8h]
fffff803`d9d13f92 8d51ff          lea     edx,[rcx-1]
fffff803`d9d13f95 48039424a0000000 add     rdx,qword ptr [rsp+0A0h]
fffff803`d9d13f9d 48894720        mov     qword ptr [rdi+20h],rax
fffff803`d9d13fa1 488d41ff        lea     rax,[rcx-1]
fffff803`d9d13fa5 48f7d0          not     rax
fffff803`d9d13fa8 4823d0          and     rdx,rax
fffff803`d9d13fab 488d4738        lea     rax,[rdi+38h]
fffff803`d9d13faf 48895708        mov     qword ptr [rdi+8],rdx
fffff803`d9d13fb3 48894008        mov     qword ptr [rax+8],rax
fffff803`d9d13fb7 488900          mov     qword ptr [rax],rax
fffff803`d9d13fba 4885db          test    rbx,rbx
fffff803`d9d13fbd 0f843d010000    je      nt!AlpcpCreateSection+0x1e8 (fffff803`d9d14100)

nt!AlpcpCreateSection+0xab:
fffff803`d9d13fc3 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9d13fcc 4c8b0565a1ecff  mov     r8,qword ptr [nt!MmSectionObjectType (fffff803`d9bde138)]
fffff803`d9d13fd3 8d55be          lea     edx,[rbp-42h]
fffff803`d9d13fd6 448a8832020000  mov     r9b,byte ptr [rax+232h]
fffff803`d9d13fdd 488d842498000000 lea     rax,[rsp+98h]
fffff803`d9d13fe5 488bcb          mov     rcx,rbx
fffff803`d9d13fe8 4c89642428      mov     qword ptr [rsp+28h],r12
fffff803`d9d13fed 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9d13ff2 e8b94efaff      call    nt!ObReferenceObjectByHandle (fffff803`d9cb8eb0)
fffff803`d9d13ff7 8bf0            mov     esi,eax
fffff803`d9d13ff9 488b842498000000 mov     rax,qword ptr [rsp+98h]
fffff803`d9d14001 488907          mov     qword ptr [rdi],rax

nt!AlpcpCreateSection+0xec:
fffff803`d9d14004 85f6            test    esi,esi
fffff803`d9d14006 0f8806861600    js      nt! ?? ::NNGAKEGL::`string'+0x327da (fffff803`d9e7c612)

nt!AlpcpCreateSection+0xf4:
fffff803`d9d1400c 33c0            xor     eax,eax
fffff803`d9d1400e 498daf48010000  lea     rbp,[r15+148h]
fffff803`d9d14015 448d6811        lea     r13d,[rax+11h]
fffff803`d9d14019 f04c0fb16d00    lock cmpxchg qword ptr [rbp],r13
fffff803`d9d1401f 0f8575010000    jne     nt!AlpcpCreateSection+0x282 (fffff803`d9d1419a)

nt!AlpcpCreateSection+0x10d:
fffff803`d9d14025 418b9784010000  mov     edx,dword ptr [r15+184h]
fffff803`d9d1402c f6c220          test    dl,20h
fffff803`d9d1402f 0f85f2851600    jne     nt! ?? ::NNGAKEGL::`string'+0x327ef (fffff803`d9e7c627)

nt!AlpcpCreateSection+0x11d:
fffff803`d9d14035 488d77e0        lea     rsi,[rdi-20h]
fffff803`d9d14039 488d4e18        lea     rcx,[rsi+18h]
fffff803`d9d1403d f0480fba2900    lock bts qword ptr [rcx],0
fffff803`d9d14043 0f8297010000    jb      nt!AlpcpCreateSection+0x2c8 (fffff803`d9d141e0)

nt!AlpcpCreateSection+0x131:
fffff803`d9d14049 804e1004        or      byte ptr [rsi+10h],4
fffff803`d9d1404d 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh
fffff803`d9d14051 4584f6          test    r14b,r14b
fffff803`d9d14054 0f85fa000000    jne     nt!AlpcpCreateSection+0x23c (fffff803`d9d14154)

nt!AlpcpCreateSection+0x142:
fffff803`d9d1405a 498bcf          mov     rcx,r15
fffff803`d9d1405d e8dea0c0ff      call    nt!ObfReferenceObject (fffff803`d991e140)
fffff803`d9d14062 4d8db730010000  lea     r14,[r15+130h]
fffff803`d9d14069 4c897f28        mov     qword ptr [rdi+28h],r15
fffff803`d9d1406d f0490fba2e00    lock bts qword ptr [r14],0
fffff803`d9d14073 0f823b010000    jb      nt!AlpcpCreateSection+0x29c (fffff803`d9d141b4)

nt!AlpcpCreateSection+0x161:
fffff803`d9d14079 4981c738010000  add     r15,138h
fffff803`d9d14080 498b4708        mov     rax,qword ptr [r15+8]
fffff803`d9d14084 4c893e          mov     qword ptr [rsi],r15
fffff803`d9d14087 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9d1408b 4c3938          cmp     qword ptr [rax],r15
fffff803`d9d1408e 0f85f1851600    jne     nt! ?? ::NNGAKEGL::`string'+0x3284d (fffff803`d9e7c685)

nt!AlpcpCreateSection+0x17c:
fffff803`d9d14094 488930          mov     qword ptr [rax],rsi
fffff803`d9d14097 49897708        mov     qword ptr [r15+8],rsi
fffff803`d9d1409b 488bc3          mov     rax,rbx
fffff803`d9d1409e f0490fc106      lock xadd qword ptr [r14],rax
fffff803`d9d140a3 a802            test    al,2
fffff803`d9d140a5 0f8516010000    jne     nt!AlpcpCreateSection+0x2a9 (fffff803`d9d141c1)

nt!AlpcpCreateSection+0x193:
fffff803`d9d140ab 498bc5          mov     rax,r13
fffff803`d9d140ae f04c0fb16500    lock cmpxchg qword ptr [rbp],r12
fffff803`d9d140b4 0f85ed000000    jne     nt!AlpcpCreateSection+0x28f (fffff803`d9d141a7)

nt!AlpcpCreateSection+0x1a2:
fffff803`d9d140ba f044092424      lock or dword ptr [rsp],r12d
fffff803`d9d140bf 806610fb        and     byte ptr [rsi+10h],0FBh
fffff803`d9d140c3 488d4e18        lea     rcx,[rsi+18h]
fffff803`d9d140c7 f0480fc119      lock xadd qword ptr [rcx],rbx
fffff803`d9d140cc f6c302          test    bl,2
fffff803`d9d140cf 0f85b7851600    jne     nt! ?? ::NNGAKEGL::`string'+0x32854 (fffff803`d9e7c68c)

nt!AlpcpCreateSection+0x1bd:
fffff803`d9d140d5 488b8424a8000000 mov     rax,qword ptr [rsp+0A8h]
fffff803`d9d140dd 488938          mov     qword ptr [rax],rdi
fffff803`d9d140e0 33c0            xor     eax,eax

nt!AlpcpCreateSection+0x1ca:
fffff803`d9d140e2 4c8d5c2450      lea     r11,[rsp+50h]
fffff803`d9d140e7 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff803`d9d140eb 498b6b38        mov     rbp,qword ptr [r11+38h]
fffff803`d9d140ef 498b7340        mov     rsi,qword ptr [r11+40h]
fffff803`d9d140f3 498be3          mov     rsp,r11
fffff803`d9d140f6 415f            pop     r15
fffff803`d9d140f8 415e            pop     r14
fffff803`d9d140fa 415d            pop     r13
fffff803`d9d140fc 415c            pop     r12
fffff803`d9d140fe 5f              pop     rdi
fffff803`d9d140ff c3              ret

nt!AlpcpCreateSection+0x1e8:
fffff803`d9d14100 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`d9d14104 4c89642438      mov     qword ptr [rsp+38h],r12
fffff803`d9d14109 4c89642430      mov     qword ptr [rsp+30h],r12
fffff803`d9d1410e 4889442440      mov     qword ptr [rsp+40h],rax
fffff803`d9d14113 400fb6c6        movzx   eax,sil
fffff803`d9d14117 4c8d4c2440      lea     r9,[rsp+40h]
fffff803`d9d1411c 03c0            add     eax,eax
fffff803`d9d1411e 4533c0          xor     r8d,r8d
fffff803`d9d14121 ba1f000f00      mov     edx,0F001Fh
fffff803`d9d14126 334730          xor     eax,dword ptr [rdi+30h]
fffff803`d9d14129 488bcf          mov     rcx,rdi
fffff803`d9d1412c c744242800000008 mov     dword ptr [rsp+28h],8000000h
fffff803`d9d14134 83e002          and     eax,2
fffff803`d9d14137 c744242004000000 mov     dword ptr [rsp+20h],4
fffff803`d9d1413f 334730          xor     eax,dword ptr [rdi+30h]
fffff803`d9d14142 83c801          or      eax,1
fffff803`d9d14145 894730          mov     dword ptr [rdi+30h],eax
fffff803`d9d14148 e8831fffff      call    nt!MmCreateSection (fffff803`d9d060d0)
fffff803`d9d1414d 8bf0            mov     esi,eax
fffff803`d9d1414f e9b0feffff      jmp     nt!AlpcpCreateSection+0xec (fffff803`d9d14004)

nt!AlpcpCreateSection+0x23c:
fffff803`d9d14154 0f0d4e14        prefetchw [rsi+14h]
fffff803`d9d14158 8b4614          mov     eax,dword ptr [rsi+14h]

nt!AlpcpCreateSection+0x243:
fffff803`d9d1415b 85c0            test    eax,eax
fffff803`d9d1415d 740e            je      nt!AlpcpCreateSection+0x255 (fffff803`d9d1416d)

nt!AlpcpCreateSection+0x247:
fffff803`d9d1415f 8bd0            mov     edx,eax
fffff803`d9d14161 8d4801          lea     ecx,[rax+1]
fffff803`d9d14164 f00fb14e14      lock cmpxchg dword ptr [rsi+14h],ecx
fffff803`d9d14169 3bc2            cmp     eax,edx
fffff803`d9d1416b 75ee            jne     nt!AlpcpCreateSection+0x243 (fffff803`d9d1415b)

nt!AlpcpCreateSection+0x255:
fffff803`d9d1416d 498b4f10        mov     rcx,qword ptr [r15+10h]
fffff803`d9d14171 488d542448      lea     rdx,[rsp+48h]
fffff803`d9d14176 48897c2448      mov     qword ptr [rsp+48h],rdi
fffff803`d9d1417b 4883c128        add     rcx,28h
fffff803`d9d1417f 48894f10        mov     qword ptr [rdi+10h],rcx
fffff803`d9d14183 e8203b0100      call    nt!AlpcAddHandleTableEntry (fffff803`d9d27ca8)
fffff803`d9d14188 48894718        mov     qword ptr [rdi+18h],rax
fffff803`d9d1418c 483bc3          cmp     rax,rbx
fffff803`d9d1418f 0f85c5feffff    jne     nt!AlpcpCreateSection+0x142 (fffff803`d9d1405a)

nt!AlpcpCreateSection+0x27d:
fffff803`d9d14195 e9b8841600      jmp     nt! ?? ::NNGAKEGL::`string'+0x3281a (fffff803`d9e7c652)

nt!AlpcpCreateSection+0x282:
fffff803`d9d1419a 488bcd          mov     rcx,rbp
fffff803`d9d1419d e89ed6c1ff      call    nt!ExfAcquirePushLockShared (fffff803`d9931840)
fffff803`d9d141a2 e97efeffff      jmp     nt!AlpcpCreateSection+0x10d (fffff803`d9d14025)

nt!AlpcpCreateSection+0x28f:
fffff803`d9d141a7 488bcd          mov     rcx,rbp
fffff803`d9d141aa e841d6c0ff      call    nt!ExfReleasePushLockShared (fffff803`d99217f0)
fffff803`d9d141af e906ffffff      jmp     nt!AlpcpCreateSection+0x1a2 (fffff803`d9d140ba)

nt!AlpcpCreateSection+0x29c:
fffff803`d9d141b4 498bce          mov     rcx,r14
fffff803`d9d141b7 e84412c5ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9d141bc e9b8feffff      jmp     nt!AlpcpCreateSection+0x161 (fffff803`d9d14079)

nt!AlpcpCreateSection+0x2a9:
fffff803`d9d141c1 a804            test    al,4
fffff803`d9d141c3 0f85e2feffff    jne     nt!AlpcpCreateSection+0x193 (fffff803`d9d140ab)

nt!AlpcpCreateSection+0x2b1:
fffff803`d9d141c9 498bce          mov     rcx,r14
fffff803`d9d141cc e8434ec5ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9d141d1 e9d5feffff      jmp     nt!AlpcpCreateSection+0x193 (fffff803`d9d140ab)

nt!AlpcpCreateSection+0x2be:
fffff803`d9d141d6 b80d0000c0      mov     eax,0C000000Dh
fffff803`d9d141db e902ffffff      jmp     nt!AlpcpCreateSection+0x1ca (fffff803`d9d140e2)

nt!AlpcpCreateSection+0x2c8:
fffff803`d9d141e0 e81b12c5ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9d141e5 e95ffeffff      jmp     nt!AlpcpCreateSection+0x131 (fffff803`d9d14049)

nt! ?? ::NNGAKEGL::`string'+0x327c8:
fffff803`d9e7c600 488bcf          mov     rcx,rdi
fffff803`d9e7c603 e814f3e6ff      call    nt!AlpcpDestroyBlob (fffff803`d9ceb91c)

nt! ?? ::NNGAKEGL::`string'+0x327d0:
fffff803`d9e7c608 b89a0000c0      mov     eax,0C000009Ah
fffff803`d9e7c60d e9d07ae9ff      jmp     nt!AlpcpCreateSection+0x1ca (fffff803`d9d140e2)

nt! ?? ::NNGAKEGL::`string'+0x327da:
fffff803`d9e7c612 f0ff4ff4        lock dec dword ptr [rdi-0Ch]
fffff803`d9e7c616 7508            jne     nt! ?? ::NNGAKEGL::`string'+0x327e8 (fffff803`d9e7c620)

nt! ?? ::NNGAKEGL::`string'+0x327e0:
fffff803`d9e7c618 488bcf          mov     rcx,rdi
fffff803`d9e7c61b e8fcf2e6ff      call    nt!AlpcpDestroyBlob (fffff803`d9ceb91c)

nt! ?? ::NNGAKEGL::`string'+0x327e8:
fffff803`d9e7c620 8bc6            mov     eax,esi
fffff803`d9e7c622 e9bb7ae9ff      jmp     nt!AlpcpCreateSection+0x1ca (fffff803`d9d140e2)

nt! ?? ::NNGAKEGL::`string'+0x327ef:
fffff803`d9e7c627 498bc5          mov     rax,r13
fffff803`d9e7c62a f04c0fb16500    lock cmpxchg qword ptr [rbp],r12
fffff803`d9e7c630 7408            je      nt! ?? ::NNGAKEGL::`string'+0x32802 (fffff803`d9e7c63a)

nt! ?? ::NNGAKEGL::`string'+0x327fa:
fffff803`d9e7c632 488bcd          mov     rcx,rbp
fffff803`d9e7c635 e8b651aaff      call    nt!ExfReleasePushLockShared (fffff803`d99217f0)

nt! ?? ::NNGAKEGL::`string'+0x32802:
fffff803`d9e7c63a f0ff4ff4        lock dec dword ptr [rdi-0Ch]
fffff803`d9e7c63e 7508            jne     nt! ?? ::NNGAKEGL::`string'+0x32810 (fffff803`d9e7c648)

nt! ?? ::NNGAKEGL::`string'+0x32808:
fffff803`d9e7c640 488bcf          mov     rcx,rdi
fffff803`d9e7c643 e8d4f2e6ff      call    nt!AlpcpDestroyBlob (fffff803`d9ceb91c)

nt! ?? ::NNGAKEGL::`string'+0x32810:
fffff803`d9e7c648 b8370000c0      mov     eax,0C0000037h
fffff803`d9e7c64d e9907ae9ff      jmp     nt!AlpcpCreateSection+0x1ca (fffff803`d9d140e2)

nt! ?? ::NNGAKEGL::`string'+0x3281a:
fffff803`d9e7c652 498bc5          mov     rax,r13
fffff803`d9e7c655 f04c0fb16500    lock cmpxchg qword ptr [rbp],r12
fffff803`d9e7c65b 7408            je      nt! ?? ::NNGAKEGL::`string'+0x3282d (fffff803`d9e7c665)

nt! ?? ::NNGAKEGL::`string'+0x32825:
fffff803`d9e7c65d 488bcd          mov     rcx,rbp
fffff803`d9e7c660 e88b51aaff      call    nt!ExfReleasePushLockShared (fffff803`d99217f0)

nt! ?? ::NNGAKEGL::`string'+0x3282d:
fffff803`d9e7c665 488bcf          mov     rcx,rdi
fffff803`d9e7c668 4c896710        mov     qword ptr [rdi+10h],r12
fffff803`d9e7c66c e86b5adeff      call    nt!AlpcpEndInitialization (fffff803`d9c620dc)
fffff803`d9e7c671 b8feffffff      mov     eax,0FFFFFFFEh
fffff803`d9e7c676 f00fc14614      lock xadd dword ptr [rsi+14h],eax
fffff803`d9e7c67b 83f802          cmp     eax,2
fffff803`d9e7c67e 7588            jne     nt! ?? ::NNGAKEGL::`string'+0x327d0 (fffff803`d9e7c608)

nt! ?? ::NNGAKEGL::`string'+0x32848:
fffff803`d9e7c680 e97bffffff      jmp     nt! ?? ::NNGAKEGL::`string'+0x327c8 (fffff803`d9e7c600)

nt! ?? ::NNGAKEGL::`string'+0x3284d:
fffff803`d9e7c685 b903000000      mov     ecx,3
fffff803`d9e7c68a cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x32854:
fffff803`d9e7c68c f6c304          test    bl,4
fffff803`d9e7c68f 0f85407ae9ff    jne     nt!AlpcpCreateSection+0x1bd (fffff803`d9d140d5)

nt! ?? ::NNGAKEGL::`string'+0x3285d:
fffff803`d9e7c695 e87ac9aeff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9e7c69a 90              nop
fffff803`d9e7c69b e9357ae9ff      jmp     nt!AlpcpCreateSection+0x1bd (fffff803`d9d140d5)
