0: kd> uf IoCreateDevice
nt!IoCreateDevice:
fffff800`1205ce70 fff5            push    rbp
fffff800`1205ce72 53              push    rbx
fffff800`1205ce73 56              push    rsi
fffff800`1205ce74 57              push    rdi
fffff800`1205ce75 4154            push    r12
fffff800`1205ce77 4155            push    r13
fffff800`1205ce79 4156            push    r14
fffff800`1205ce7b 4157            push    r15
fffff800`1205ce7d 488d6c24c8      lea     rbp,[rsp-38h]
fffff800`1205ce82 4881ec38010000  sub     rsp,138h
fffff800`1205ce89 488b0508ace9ff  mov     rax,qword ptr [nt!_security_cookie (fffff800`11ef7a98)]
fffff800`1205ce90 4833c4          xor     rax,rsp
fffff800`1205ce93 48894520        mov     qword ptr [rbp+20h],rax
fffff800`1205ce97 488b85b0000000  mov     rax,qword ptr [rbp+0B0h]
fffff800`1205ce9e 4533f6          xor     r14d,r14d
fffff800`1205cea1 4c8bf9          mov     r15,rcx
fffff800`1205cea4 8b8da0000000    mov     ecx,dword ptr [rbp+0A0h]
fffff800`1205ceaa 8bda            mov     ebx,edx
fffff800`1205ceac 418bf9          mov     edi,r9d
fffff800`1205ceaf 83e307          and     ebx,7
fffff800`1205ceb2 448be9          mov     r13d,ecx
fffff800`1205ceb5 498bf0          mov     rsi,r8
fffff800`1205ceb8 4c89442478      mov     qword ptr [rsp+78h],r8
fffff800`1205cebd 89542458        mov     dword ptr [rsp+58h],edx
fffff800`1205cec1 894c2468        mov     dword ptr [rsp+68h],ecx
fffff800`1205cec5 4181e580000000  and     r13d,80h
fffff800`1205cecc 48894580        mov     qword ptr [rbp-80h],rax
fffff800`1205ced0 450fb7e6        movzx   r12d,r14w
fffff800`1205ced4 4c89742460      mov     qword ptr [rsp+60h],r14
fffff800`1205ced9 895c245c        mov     dword ptr [rsp+5Ch],ebx

nt!IoCreateDevice+0x6d:
fffff800`1205cedd 4c89742470      mov     qword ptr [rsp+70h],r14

nt!IoCreateDevice+0x72:
fffff800`1205cee2 4585ed          test    r13d,r13d
fffff800`1205cee5 0f8543030000    jne     nt!IoCreateDevice+0x3be (fffff800`1205d22e)

nt!IoCreateDevice+0x7b:
fffff800`1205ceeb 8b542468        mov     edx,dword ptr [rsp+68h]
fffff800`1205ceef 488d442470      lea     rax,[rsp+70h]
fffff800`1205cef4 4885f6          test    rsi,rsi
fffff800`1205cef7 410f95c6        setne   r14b
fffff800`1205cefb 488364242800    and     qword ptr [rsp+28h],0
fffff800`1205cf01 4c8d4c2460      lea     r9,[rsp+60h]
fffff800`1205cf06 4c8d45f8        lea     r8,[rbp-8]
fffff800`1205cf0a 8bcf            mov     ecx,edi
fffff800`1205cf0c 4889442420      mov     qword ptr [rsp+20h],rax
fffff800`1205cf11 e89a5e0000      call    nt!IopCreateDefaultDeviceSecurityDescriptor (fffff800`12062db0)
fffff800`1205cf16 8bcf            mov     ecx,edi
fffff800`1205cf18 4c8bd8          mov     r11,rax
fffff800`1205cf1b 83e903          sub     ecx,3
fffff800`1205cf1e 0f8466030000    je      nt!IoCreateDevice+0x41a (fffff800`1205d28a)

nt!IoCreateDevice+0xb4:
fffff800`1205cf24 83e904          sub     ecx,4
fffff800`1205cf27 0f84e8020000    je      nt!IoCreateDevice+0x3a5 (fffff800`1205d215)

nt!IoCreateDevice+0xbd:
fffff800`1205cf2d ffc9            dec     ecx
fffff800`1205cf2f 0f84e0020000    je      nt!IoCreateDevice+0x3a5 (fffff800`1205d215)

nt!IoCreateDevice+0xc5:
fffff800`1205cf35 83f91c          cmp     ecx,1Ch
fffff800`1205cf38 0f84d7020000    je      nt!IoCreateDevice+0x3a5 (fffff800`1205d215)

nt!IoCreateDevice+0xce:
fffff800`1205cf3e 8b0554fee8ff    mov     eax,dword ptr [nt!IopCaseInsensitive (fffff800`11eecd98)]
fffff800`1205cf44 33d2            xor     edx,edx
fffff800`1205cf46 c7459030000000  mov     dword ptr [rbp-70h],30h
fffff800`1205cf4d f7d8            neg     eax
fffff800`1205cf4f b800020000      mov     eax,200h
fffff800`1205cf54 48895598        mov     qword ptr [rbp-68h],rdx
fffff800`1205cf58 1bc9            sbb     ecx,ecx
fffff800`1205cf5a 488975a0        mov     qword ptr [rbp-60h],rsi
fffff800`1205cf5e 4c895db0        mov     qword ptr [rbp-50h],r11
fffff800`1205cf62 83e140          and     ecx,40h
fffff800`1205cf65 488955b8        mov     qword ptr [rbp-48h],rdx
fffff800`1205cf69 0bc8            or      ecx,eax
fffff800`1205cf6b 894da8          mov     dword ptr [rbp-58h],ecx
fffff800`1205cf6e 3895a8000000    cmp     byte ptr [rbp+0A8h],dl
fffff800`1205cf74 0f856e030000    jne     nt!IoCreateDevice+0x478 (fffff800`1205d2e8)

nt!IoCreateDevice+0x10a:
fffff800`1205cf7a 4584f6          test    r14b,r14b
fffff800`1205cf7d 7406            je      nt!IoCreateDevice+0x115 (fffff800`1205cf85)

nt!IoCreateDevice+0x10f:
fffff800`1205cf7f 83c910          or      ecx,10h
fffff800`1205cf82 894da8          mov     dword ptr [rbp-58h],ecx

nt!IoCreateDevice+0x115:
fffff800`1205cf85 85db            test    ebx,ebx
fffff800`1205cf87 0f854d030000    jne     nt!IoCreateDevice+0x46a (fffff800`1205d2da)

nt!IoCreateDevice+0x11d:
fffff800`1205cf8d 035c2458        add     ebx,dword ptr [rsp+58h]
fffff800`1205cf91 488d4c2450      lea     rcx,[rsp+50h]
fffff800`1205cf96 4c8d4590        lea     r8,[rbp-70h]
fffff800`1205cf9a 48894c2440      mov     qword ptr [rsp+40h],rcx
fffff800`1205cf9f 89542438        mov     dword ptr [rsp+38h],edx
fffff800`1205cfa3 89542430        mov     dword ptr [rsp+30h],edx
fffff800`1205cfa7 8d83c0010000    lea     eax,[rbx+1C0h]
fffff800`1205cfad 4533c9          xor     r9d,r9d
fffff800`1205cfb0 33c9            xor     ecx,ecx
fffff800`1205cfb2 89442428        mov     dword ptr [rsp+28h],eax
fffff800`1205cfb6 4889542420      mov     qword ptr [rsp+20h],rdx
fffff800`1205cfbb 488b156e36f7ff  mov     rdx,qword ptr [nt!IoDeviceObjectType (fffff800`11fd0630)]
fffff800`1205cfc2 e839ef0400      call    nt!ObCreateObject (fffff800`120abf00)
fffff800`1205cfc7 8bf0            mov     esi,eax
fffff800`1205cfc9 85c0            test    eax,eax
fffff800`1205cfcb 0f883c030000    js      nt!IoCreateDevice+0x49d (fffff800`1205d30d)

nt!IoCreateDevice+0x161:
fffff800`1205cfd1 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff800`1205cfd6 4c8d83c0010000  lea     r8,[rbx+1C0h]
fffff800`1205cfdd 33d2            xor     edx,edx
fffff800`1205cfdf e8dcaac9ff      call    nt!memset (fffff800`11cf7ac0)
fffff800`1205cfe4 4c8b5c2450      mov     r11,qword ptr [rsp+50h]
fffff800`1205cfe9 33f6            xor     esi,esi
fffff800`1205cfeb 498d8b50010000  lea     rcx,[r11+150h]
fffff800`1205cff2 8d5603          lea     edx,[rsi+3]
fffff800`1205cff5 4803cb          add     rcx,rbx
fffff800`1205cff8 8b5c2458        mov     ebx,dword ptr [rsp+58h]
fffff800`1205cffc 4c895908        mov     qword ptr [rcx+8],r11
fffff800`1205d000 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d005 48898838010000  mov     qword ptr [rax+138h],rcx
fffff800`1205d00c c7010d000000    mov     dword ptr [rcx],0Dh
fffff800`1205d012 897110          mov     dword ptr [rcx+10h],esi
fffff800`1205d015 48897118        mov     qword ptr [rcx+18h],rsi
fffff800`1205d019 488d4150        lea     rax,[rcx+50h]
fffff800`1205d01d 48894008        mov     qword ptr [rax+8],rax
fffff800`1205d021 488900          mov     qword ptr [rax],rax
fffff800`1205d024 488d4160        lea     rax,[rcx+60h]
fffff800`1205d028 48894008        mov     qword ptr [rax+8],rax
fffff800`1205d02c 488900          mov     qword ptr [rax],rax
fffff800`1205d02f 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d034 668910          mov     word ptr [rax],dx
fffff800`1205d037 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d03c b950010000      mov     ecx,150h
fffff800`1205d041 03cb            add     ecx,ebx
fffff800`1205d043 66894802        mov     word ptr [rax+2],cx
fffff800`1205d047 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d04c 8b4c2468        mov     ecx,dword ptr [rsp+68h]
fffff800`1205d050 897848          mov     dword ptr [rax+48h],edi
fffff800`1205d053 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d058 894834          mov     dword ptr [rax+34h],ecx
fffff800`1205d05b 83ff24          cmp     edi,24h
fffff800`1205d05e 0f8431020000    je      nt!IoCreateDevice+0x425 (fffff800`1205d295)

nt!IoCreateDevice+0x1f4:
fffff800`1205d064 83ff07          cmp     edi,7
fffff800`1205d067 0f8428020000    je      nt!IoCreateDevice+0x425 (fffff800`1205d295)

nt!IoCreateDevice+0x1fd:
fffff800`1205d06d 83ff02          cmp     edi,2
fffff800`1205d070 0f841f020000    je      nt!IoCreateDevice+0x425 (fffff800`1205d295)

nt!IoCreateDevice+0x206:
fffff800`1205d076 83ff1f          cmp     edi,1Fh
fffff800`1205d079 0f8416020000    je      nt!IoCreateDevice+0x425 (fffff800`1205d295)

nt!IoCreateDevice+0x20f:
fffff800`1205d07f 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d084 89b098000000    mov     dword ptr [rax+98h],esi
fffff800`1205d08a 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d08f 664489a030010000 mov     word ptr [rax+130h],r12w
fffff800`1205d097 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d09c c7403080000000  mov     dword ptr [rax+30h],80h
fffff800`1205d0a3 4038b5a8000000  cmp     byte ptr [rbp+0A8h],sil
fffff800`1205d0aa 0f8543020000    jne     nt!IoCreateDevice+0x483 (fffff800`1205d2f3)

nt!IoCreateDevice+0x240:
fffff800`1205d0b0 4584f6          test    r14b,r14b
fffff800`1205d0b3 7409            je      nt!IoCreateDevice+0x24e (fffff800`1205d0be)

nt!IoCreateDevice+0x245:
fffff800`1205d0b5 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d0ba 83483040        or      dword ptr [rax+30h],40h

nt!IoCreateDevice+0x24e:
fffff800`1205d0be 4533f6          xor     r14d,r14d
fffff800`1205d0c1 85db            test    ebx,ebx
fffff800`1205d0c3 0f8457010000    je      nt!IoCreateDevice+0x3b0 (fffff800`1205d220)

nt!IoCreateDevice+0x259:
fffff800`1205d0c9 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff800`1205d0ce 488d8150010000  lea     rax,[rcx+150h]
fffff800`1205d0d5 48894140        mov     qword ptr [rcx+40h],rax

nt!IoCreateDevice+0x269:
fffff800`1205d0d9 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d0de c6404c01        mov     byte ptr [rax+4Ch],1
fffff800`1205d0e2 3bfa            cmp     edi,edx
fffff800`1205d0e4 0f8416010000    je      nt!IoCreateDevice+0x390 (fffff800`1205d200)

nt!IoCreateDevice+0x27a:
fffff800`1205d0ea 83ff07          cmp     edi,7
fffff800`1205d0ed 761b            jbe     nt!IoCreateDevice+0x29a (fffff800`1205d10a)

nt!IoCreateDevice+0x27f:
fffff800`1205d0ef 83ff09          cmp     edi,9
fffff800`1205d0f2 0f8608010000    jbe     nt!IoCreateDevice+0x390 (fffff800`1205d200)

nt!IoCreateDevice+0x288:
fffff800`1205d0f8 83ff14          cmp     edi,14h
fffff800`1205d0fb 0f84ff000000    je      nt!IoCreateDevice+0x390 (fffff800`1205d200)

nt!IoCreateDevice+0x291:
fffff800`1205d101 83ff20          cmp     edi,20h
fffff800`1205d104 0f84f6000000    je      nt!IoCreateDevice+0x390 (fffff800`1205d200)

nt!IoCreateDevice+0x29a:
fffff800`1205d10a 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff800`1205d10f 4881c1a0000000  add     rcx,0A0h
fffff800`1205d116 e8253ac3ff      call    nt!KeInitializeDeviceQueue (fffff800`11c90b40)
fffff800`1205d11b ba03000000      mov     edx,3

nt!IoCreateDevice+0x2b0:
fffff800`1205d120 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff800`1205d125 8b4134          mov     eax,dword ptr [rcx+34h]
fffff800`1205d128 a801            test    al,1
fffff800`1205d12a 751a            jne     nt!IoCreateDevice+0x2d6 (fffff800`1205d146)

nt!IoCreateDevice+0x2bc:
fffff800`1205d12c 0fbae012        bt      eax,12h
fffff800`1205d130 7214            jb      nt!IoCreateDevice+0x2d6 (fffff800`1205d146)

nt!IoCreateDevice+0x2c2:
fffff800`1205d132 488b8138010000  mov     rax,qword ptr [rcx+138h]
fffff800`1205d139 b900080000      mov     ecx,800h
fffff800`1205d13e 094820          or      dword ptr [rax+20h],ecx
fffff800`1205d141 488b4c2450      mov     rcx,qword ptr [rsp+50h]

nt!IoCreateDevice+0x2d6:
fffff800`1205d146 488d4588        lea     rax,[rbp-78h]
fffff800`1205d14a 448bc2          mov     r8d,edx
fffff800`1205d14d 41b901000000    mov     r9d,1
fffff800`1205d153 4889442430      mov     qword ptr [rsp+30h],rax
fffff800`1205d158 488d442450      lea     rax,[rsp+50h]
fffff800`1205d15d 33d2            xor     edx,edx
fffff800`1205d15f 4889442428      mov     qword ptr [rsp+28h],rax
fffff800`1205d164 4489742420      mov     dword ptr [rsp+20h],r14d
fffff800`1205d169 e8424a0800      call    nt!ObInsertObjectEx (fffff800`120e1bb0)
fffff800`1205d16e 8bf0            mov     esi,eax
fffff800`1205d170 85c0            test    eax,eax
fffff800`1205d172 0f88f8000000    js      nt!IoCreateDevice+0x400 (fffff800`1205d270)

nt!IoCreateDevice+0x308:
fffff800`1205d178 498bcf          mov     rcx,r15
fffff800`1205d17b e8c02fcbff      call    nt!ObfReferenceObject (fffff800`11d10140)
fffff800`1205d180 4c8b5c2450      mov     r11,qword ptr [rsp+50h]
fffff800`1205d185 41b001          mov     r8b,1
fffff800`1205d188 4d897b08        mov     qword ptr [r11+8],r15
fffff800`1205d18c 488b542450      mov     rdx,qword ptr [rsp+50h]
fffff800`1205d191 498bcf          mov     rcx,r15
fffff800`1205d194 e8d741c4ff      call    nt!IopInsertRemoveDevice (fffff800`11ca1370)
fffff800`1205d199 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff800`1205d19e 4c397138        cmp     qword ptr [rcx+38h],r14
fffff800`1205d1a2 0f8528010000    jne     nt!IoCreateDevice+0x460 (fffff800`1205d2d0)

nt!IoCreateDevice+0x338:
fffff800`1205d1a8 488b4d88        mov     rcx,qword ptr [rbp-78h]
fffff800`1205d1ac 33d2            xor     edx,edx
fffff800`1205d1ae e829d70400      call    nt!ObCloseHandle (fffff800`120aa8dc)

nt!IoCreateDevice+0x343:
fffff800`1205d1b3 488b4c2460      mov     rcx,qword ptr [rsp+60h]
fffff800`1205d1b8 4885c9          test    rcx,rcx
fffff800`1205d1bb 0f8540010000    jne     nt!IoCreateDevice+0x491 (fffff800`1205d301)

nt!IoCreateDevice+0x351:
fffff800`1205d1c1 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff800`1205d1c6 4885c9          test    rcx,rcx
fffff800`1205d1c9 7407            je      nt!IoCreateDevice+0x362 (fffff800`1205d1d2)

nt!IoCreateDevice+0x35b:
fffff800`1205d1cb 33d2            xor     edx,edx
fffff800`1205d1cd e88ebfe8ff      call    nt!ExFreePoolWithTag (fffff800`11ee9160)

nt!IoCreateDevice+0x362:
fffff800`1205d1d2 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d1d7 488b4d80        mov     rcx,qword ptr [rbp-80h]
fffff800`1205d1db 488901          mov     qword ptr [rcx],rax
fffff800`1205d1de 8bc6            mov     eax,esi

nt!IoCreateDevice+0x370:
fffff800`1205d1e0 488b4d20        mov     rcx,qword ptr [rbp+20h]
fffff800`1205d1e4 4833cc          xor     rcx,rsp
fffff800`1205d1e7 e8d4c2c6ff      call    nt!_security_check_cookie (fffff800`11cc94c0)
fffff800`1205d1ec 4881c438010000  add     rsp,138h
fffff800`1205d1f3 415f            pop     r15
fffff800`1205d1f5 415e            pop     r14
fffff800`1205d1f7 415d            pop     r13
fffff800`1205d1f9 415c            pop     r12
fffff800`1205d1fb 5f              pop     rdi
fffff800`1205d1fc 5e              pop     rsi
fffff800`1205d1fd 5b              pop     rbx
fffff800`1205d1fe 5d              pop     rbp
fffff800`1205d1ff c3              ret

nt!IoCreateDevice+0x390:
fffff800`1205d200 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d205 4883c050        add     rax,50h
fffff800`1205d209 48894008        mov     qword ptr [rax+8],rax
fffff800`1205d20d 488900          mov     qword ptr [rax],rax
fffff800`1205d210 e90bffffff      jmp     nt!IoCreateDevice+0x2b0 (fffff800`1205d120)

nt!IoCreateDevice+0x3a5:
fffff800`1205d215 41bc00020000    mov     r12d,200h
fffff800`1205d21b e91efdffff      jmp     nt!IoCreateDevice+0xce (fffff800`1205cf3e)

nt!IoCreateDevice+0x3b0:
fffff800`1205d220 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d225 4c897040        mov     qword ptr [rax+40h],r14
fffff800`1205d229 e9abfeffff      jmp     nt!IoCreateDevice+0x269 (fffff800`1205d0d9)

nt!IoCreateDevice+0x3be:
fffff800`1205d22e 41b901000000    mov     r9d,1
fffff800`1205d234 f0440fc10dc352efff lock xadd dword ptr [nt!IopUniqueDeviceObjectNumber (fffff800`11f52500)],r9d
fffff800`1205d23d 4c8d050ca50600  lea     r8,[nt! ?? ::NNGAKEGL::`string' (fffff800`120c7750)]
fffff800`1205d244 488d4dd0        lea     rcx,[rbp-30h]
fffff800`1205d248 41ffc1          inc     r9d
fffff800`1205d24b ba11000000      mov     edx,11h
fffff800`1205d250 e84b3bc3ff      call    nt!RtlStringCchPrintfW (fffff800`11c90da0)
fffff800`1205d255 488d55d0        lea     rdx,[rbp-30h]
fffff800`1205d259 488d4dc0        lea     rcx,[rbp-40h]
fffff800`1205d25d e8befaccff      call    nt!RtlInitUnicodeString (fffff800`11d2cd20)
fffff800`1205d262 488d75c0        lea     rsi,[rbp-40h]
fffff800`1205d266 4889742478      mov     qword ptr [rsp+78h],rsi
fffff800`1205d26b e97bfcffff      jmp     nt!IoCreateDevice+0x7b (fffff800`1205ceeb)

nt!IoCreateDevice+0x400:
fffff800`1205d270 3d350000c0      cmp     eax,0C0000035h
fffff800`1205d275 7509            jne     nt!IoCreateDevice+0x410 (fffff800`1205d280)

nt!IoCreateDevice+0x407:
fffff800`1205d277 4585ed          test    r13d,r13d
fffff800`1205d27a 0f85509b1f00    jne     nt! ?? ::NNGAKEGL::`string'+0x1732e (fffff800`12256dd0)

nt!IoCreateDevice+0x410:
fffff800`1205d280 4c89742450      mov     qword ptr [rsp+50h],r14
fffff800`1205d285 e929ffffff      jmp     nt!IoCreateDevice+0x343 (fffff800`1205d1b3)

nt!IoCreateDevice+0x41a:
fffff800`1205d28a 41bc00080000    mov     r12d,800h
fffff800`1205d290 e9a9fcffff      jmp     nt!IoCreateDevice+0xce (fffff800`1205cf3e)

nt!IoCreateDevice+0x425:
fffff800`1205d295 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff800`1205d29a e841541100      call    nt!IopCreateVpb (fffff800`121726e0)
fffff800`1205d29f 488b4c2450      mov     rcx,qword ptr [rsp+50h]
fffff800`1205d2a4 8bd8            mov     ebx,eax
fffff800`1205d2a6 85c0            test    eax,eax
fffff800`1205d2a8 0f885c9b1f00    js      nt! ?? ::NNGAKEGL::`string'+0x1736c (fffff800`12256e0a)

nt!IoCreateDevice+0x43e:
fffff800`1205d2ae 4881c118010000  add     rcx,118h
fffff800`1205d2b5 41b001          mov     r8b,1
fffff800`1205d2b8 ba01000000      mov     edx,1
fffff800`1205d2bd e8ce8bccff      call    nt!KeInitializeEvent (fffff800`11d25e90)
fffff800`1205d2c2 8b5c2458        mov     ebx,dword ptr [rsp+58h]
fffff800`1205d2c6 ba03000000      mov     edx,3
fffff800`1205d2cb e9affdffff      jmp     nt!IoCreateDevice+0x20f (fffff800`1205d07f)

nt!IoCreateDevice+0x460:
fffff800`1205d2d0 e8cb521100      call    nt!PoVolumeDevice (fffff800`121725a0)
fffff800`1205d2d5 e9cefeffff      jmp     nt!IoCreateDevice+0x338 (fffff800`1205d1a8)

nt!IoCreateDevice+0x46a:
fffff800`1205d2da b808000000      mov     eax,8
fffff800`1205d2df 2bc3            sub     eax,ebx
fffff800`1205d2e1 8bd8            mov     ebx,eax
fffff800`1205d2e3 e9a5fcffff      jmp     nt!IoCreateDevice+0x11d (fffff800`1205cf8d)

nt!IoCreateDevice+0x478:
fffff800`1205d2e8 83c920          or      ecx,20h
fffff800`1205d2eb 894da8          mov     dword ptr [rbp-58h],ecx
fffff800`1205d2ee e987fcffff      jmp     nt!IoCreateDevice+0x10a (fffff800`1205cf7a)

nt!IoCreateDevice+0x483:
fffff800`1205d2f3 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1205d2f8 83483008        or      dword ptr [rax+30h],8
fffff800`1205d2fc e9affdffff      jmp     nt!IoCreateDevice+0x240 (fffff800`1205d0b0)

nt!IoCreateDevice+0x491:
fffff800`1205d301 33d2            xor     edx,edx
fffff800`1205d303 e858bee8ff      call    nt!ExFreePoolWithTag (fffff800`11ee9160)
fffff800`1205d308 e9b4feffff      jmp     nt!IoCreateDevice+0x351 (fffff800`1205d1c1)

nt!IoCreateDevice+0x49d:
fffff800`1205d30d 4533f6          xor     r14d,r14d
fffff800`1205d310 e96bffffff      jmp     nt!IoCreateDevice+0x410 (fffff800`1205d280)

nt! ?? ::NNGAKEGL::`string'+0x1732e:
fffff800`12256dd0 488b4c2460      mov     rcx,qword ptr [rsp+60h]
fffff800`12256dd5 4885c9          test    rcx,rcx
fffff800`12256dd8 740c            je      nt! ?? ::NNGAKEGL::`string'+0x17348 (fffff800`12256de6)

nt! ?? ::NNGAKEGL::`string'+0x1733c:
fffff800`12256dda 33d2            xor     edx,edx
fffff800`12256ddc e87f23c9ff      call    nt!ExFreePoolWithTag (fffff800`11ee9160)
fffff800`12256de1 4c89742460      mov     qword ptr [rsp+60h],r14

nt! ?? ::NNGAKEGL::`string'+0x17348:
fffff800`12256de6 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff800`12256deb 488b742478      mov     rsi,qword ptr [rsp+78h]
fffff800`12256df0 8b5c245c        mov     ebx,dword ptr [rsp+5Ch]
fffff800`12256df4 4885c9          test    rcx,rcx
fffff800`12256df7 0f84e560e0ff    je      nt!IoCreateDevice+0x72 (fffff800`1205cee2)

nt! ?? ::NNGAKEGL::`string'+0x1735f:
fffff800`12256dfd 33d2            xor     edx,edx
fffff800`12256dff e85c23c9ff      call    nt!ExFreePoolWithTag (fffff800`11ee9160)
fffff800`12256e04 90              nop
fffff800`12256e05 e9d360e0ff      jmp     nt!IoCreateDevice+0x6d (fffff800`1205cedd)

nt! ?? ::NNGAKEGL::`string'+0x1736c:
fffff800`12256e0a e8d1fdabff      call    nt!ObfDereferenceObject (fffff800`11d16be0)
fffff800`12256e0f 488b4c2460      mov     rcx,qword ptr [rsp+60h]
fffff800`12256e14 4885c9          test    rcx,rcx
fffff800`12256e17 7407            je      nt! ?? ::NNGAKEGL::`string'+0x17386 (fffff800`12256e20)

nt! ?? ::NNGAKEGL::`string'+0x1737f:
fffff800`12256e19 33d2            xor     edx,edx
fffff800`12256e1b e84023c9ff      call    nt!ExFreePoolWithTag (fffff800`11ee9160)

nt! ?? ::NNGAKEGL::`string'+0x17386:
fffff800`12256e20 488b4c2470      mov     rcx,qword ptr [rsp+70h]
fffff800`12256e25 4885c9          test    rcx,rcx
fffff800`12256e28 7407            je      nt! ?? ::NNGAKEGL::`string'+0x1739b (fffff800`12256e31)

nt! ?? ::NNGAKEGL::`string'+0x17394:
fffff800`12256e2a 33d2            xor     edx,edx
fffff800`12256e2c e82f23c9ff      call    nt!ExFreePoolWithTag (fffff800`11ee9160)

nt! ?? ::NNGAKEGL::`string'+0x1739b:
fffff800`12256e31 488b4d80        mov     rcx,qword ptr [rbp-80h]
fffff800`12256e35 8bc3            mov     eax,ebx
fffff800`12256e37 488931          mov     qword ptr [rcx],rsi
fffff800`12256e3a e9a163e0ff      jmp     nt!IoCreateDevice+0x370 (fffff800`1205d1e0)
