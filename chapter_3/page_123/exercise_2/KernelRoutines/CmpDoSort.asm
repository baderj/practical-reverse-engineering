0: kd> uf nt!CmpDoSort
nt!CmpDoSort:
fffff800`12372914 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`12372919 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff800`1237291e 4889742418      mov     qword ptr [rsp+18h],rsi
fffff800`12372923 57              push    rdi
fffff800`12372924 4154            push    r12
fffff800`12372926 4155            push    r13
fffff800`12372928 4156            push    r14
fffff800`1237292a 4157            push    r15
fffff800`1237292c 4883ec30        sub     rsp,30h
fffff800`12372930 4c8bda          mov     r11,rdx
fffff800`12372933 488bf9          mov     rdi,rcx
fffff800`12372936 e80d010000      call    nt!CmpSortByTag (fffff800`12372a48)
fffff800`1237293b 33c9            xor     ecx,ecx
fffff800`1237293d 84c0            test    al,al
fffff800`1237293f 0f848f0e0100    je      nt! ?? ::PBOPGDP::`string'+0x2cb6 (fffff800`123837d4)

nt!CmpDoSort+0x31:
fffff800`12372945 4d8b7b08        mov     r15,qword ptr [r11+8]
fffff800`12372949 410fb703        movzx   eax,word ptr [r11]
fffff800`1237294d 448bf1          mov     r14d,ecx
fffff800`12372950 498d5ffe        lea     rbx,[r15-2]
fffff800`12372954 48d1e8          shr     rax,1
fffff800`12372957 4c8be7          mov     r12,rdi
fffff800`1237295a 488d1c43        lea     rbx,[rbx+rax*2]
fffff800`1237295e eb04            jmp     nt!CmpDoSort+0x50 (fffff800`12372964)

nt!CmpDoSort+0x4c:
fffff800`12372960 4883eb02        sub     rbx,2

nt!CmpDoSort+0x50:
fffff800`12372964 493bdf          cmp     rbx,r15
fffff800`12372967 0f86ad000000    jbe     nt!CmpDoSort+0x106 (fffff800`12372a1a)

nt!CmpDoSort+0x59:
fffff800`1237296d 66390b          cmp     word ptr [rbx],cx
fffff800`12372970 4c0f44f3        cmove   r14,rbx
fffff800`12372974 4883eb02        sub     rbx,2
fffff800`12372978 493bdf          cmp     rbx,r15
fffff800`1237297b 7406            je      nt!CmpDoSort+0x6f (fffff800`12372983)

nt!CmpDoSort+0x69:
fffff800`1237297d 66394bfe        cmp     word ptr [rbx-2],cx
fffff800`12372981 75ea            jne     nt!CmpDoSort+0x59 (fffff800`1237296d)

nt!CmpDoSort+0x6f:
fffff800`12372983 488b6f08        mov     rbp,qword ptr [rdi+8]
fffff800`12372987 410fb7c6        movzx   eax,r14w
fffff800`1237298b 48895c2428      mov     qword ptr [rsp+28h],rbx
fffff800`12372990 662bc3          sub     ax,bx
fffff800`12372993 6689442420      mov     word ptr [rsp+20h],ax
fffff800`12372998 6689442422      mov     word ptr [rsp+22h],ax
fffff800`1237299d eb3f            jmp     nt!CmpDoSort+0xca (fffff800`123729de)

nt!CmpDoSort+0x8b:
fffff800`1237299f 488b0e          mov     rcx,qword ptr [rsi]
fffff800`123729a2 4c3be7          cmp     r12,rdi
fffff800`123729a5 4c0f44e6        cmove   r12,rsi
fffff800`123729a9 48397108        cmp     qword ptr [rcx+8],rsi
fffff800`123729ad 0f85280e0100    jne     nt! ?? ::PBOPGDP::`string'+0x2cbd (fffff800`123837db)

nt!CmpDoSort+0x9f:
fffff800`123729b3 48397500        cmp     qword ptr [rbp],rsi
fffff800`123729b7 0f851e0e0100    jne     nt! ?? ::PBOPGDP::`string'+0x2cbd (fffff800`123837db)

nt!CmpDoSort+0xa9:
fffff800`123729bd 48894d00        mov     qword ptr [rbp],rcx
fffff800`123729c1 48896908        mov     qword ptr [rcx+8],rbp
fffff800`123729c5 488b07          mov     rax,qword ptr [rdi]
fffff800`123729c8 488906          mov     qword ptr [rsi],rax
fffff800`123729cb 49897d00        mov     qword ptr [r13],rdi
fffff800`123729cf 48397808        cmp     qword ptr [rax+8],rdi
fffff800`123729d3 7564            jne     nt!CmpDoSort+0x125 (fffff800`12372a39)

nt!CmpDoSort+0xc1:
fffff800`123729d5 48897008        mov     qword ptr [rax+8],rsi
fffff800`123729d9 33c9            xor     ecx,ecx
fffff800`123729db 488937          mov     qword ptr [rdi],rsi

nt!CmpDoSort+0xca:
fffff800`123729de 493bec          cmp     rbp,r12
fffff800`123729e1 0f8479ffffff    je      nt!CmpDoSort+0x4c (fffff800`12372960)

nt!CmpDoSort+0xd3:
fffff800`123729e7 483bef          cmp     rbp,rdi
fffff800`123729ea 0f8470ffffff    je      nt!CmpDoSort+0x4c (fffff800`12372960)

nt!CmpDoSort+0xdc:
fffff800`123729f0 488bf5          mov     rsi,rbp
fffff800`123729f3 4c8d6d08        lea     r13,[rbp+8]
fffff800`123729f7 498b6d00        mov     rbp,qword ptr [r13]
fffff800`123729fb 48394e58        cmp     qword ptr [rsi+58h],rcx
fffff800`123729ff 74dd            je      nt!CmpDoSort+0xca (fffff800`123729de)

nt!CmpDoSort+0xed:
fffff800`12372a01 488d5650        lea     rdx,[rsi+50h]
fffff800`12372a05 488d4c2420      lea     rcx,[rsp+20h]
fffff800`12372a0a 41b001          mov     r8b,1
fffff800`12372a0d e8becbd3ff      call    nt!RtlEqualUnicodeString (fffff800`120af5d0)
fffff800`12372a12 33c9            xor     ecx,ecx
fffff800`12372a14 84c0            test    al,al
fffff800`12372a16 74c6            je      nt!CmpDoSort+0xca (fffff800`123729de)

nt!CmpDoSort+0x104:
fffff800`12372a18 eb85            jmp     nt!CmpDoSort+0x8b (fffff800`1237299f)

nt!CmpDoSort+0x106:
fffff800`12372a1a b001            mov     al,1

nt!CmpDoSort+0x108:
fffff800`12372a1c 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff800`12372a21 488b6c2468      mov     rbp,qword ptr [rsp+68h]
fffff800`12372a26 488b742470      mov     rsi,qword ptr [rsp+70h]
fffff800`12372a2b 4883c430        add     rsp,30h
fffff800`12372a2f 415f            pop     r15
fffff800`12372a31 415e            pop     r14
fffff800`12372a33 415d            pop     r13
fffff800`12372a35 415c            pop     r12
fffff800`12372a37 5f              pop     rdi
fffff800`12372a38 c3              ret

nt!CmpDoSort+0x125:
fffff800`12372a39 b903000000      mov     ecx,3
fffff800`12372a3e cd29            int     29h
fffff800`12372a40 90              nop
fffff800`12372a41 90              nop
fffff800`12372a42 90              nop
fffff800`12372a43 90              nop
fffff800`12372a44 90              nop
fffff800`12372a45 90              nop
fffff800`12372a46 90              nop
fffff800`12372a47 90              nop
fffff800`12372a48 4c8b01          mov     r8,qword ptr [rcx]
fffff800`12372a4b 4c8b4908        mov     r9,qword ptr [rcx+8]
fffff800`12372a4f 4c8bd1          mov     r10,rcx
fffff800`12372a52 eb4f            jmp     nt!CmpSortByTag+0x5b (fffff800`12372aa3)

nt!CmpSortByTag+0xc:
fffff800`12372a54 488b0a          mov     rcx,qword ptr [rdx]
fffff800`12372a57 488b4208        mov     rax,qword ptr [rdx+8]
fffff800`12372a5b 493bd1          cmp     rdx,r9
fffff800`12372a5e 4d0f44c8        cmove   r9,r8
fffff800`12372a62 48395108        cmp     qword ptr [rcx+8],rdx
fffff800`12372a66 755e            jne     nt!CmpSortByTag+0x7e (fffff800`12372ac6)

nt!CmpSortByTag+0x20:
fffff800`12372a68 483910          cmp     qword ptr [rax],rdx
fffff800`12372a6b 7559            jne     nt!CmpSortByTag+0x7e (fffff800`12372ac6)

nt!CmpSortByTag+0x25:
fffff800`12372a6d 488908          mov     qword ptr [rax],rcx
fffff800`12372a70 48894108        mov     qword ptr [rcx+8],rax
fffff800`12372a74 498b02          mov     rax,qword ptr [r10]
fffff800`12372a77 493bc0          cmp     rax,r8
fffff800`12372a7a 7410            je      nt!CmpSortByTag+0x44 (fffff800`12372a8c)

nt!CmpSortByTag+0x34:
fffff800`12372a7c 8b4a70          mov     ecx,dword ptr [rdx+70h]

nt!CmpSortByTag+0x37:
fffff800`12372a7f 394870          cmp     dword ptr [rax+70h],ecx
fffff800`12372a82 7308            jae     nt!CmpSortByTag+0x44 (fffff800`12372a8c)

nt!CmpSortByTag+0x3c:
fffff800`12372a84 488b00          mov     rax,qword ptr [rax]
fffff800`12372a87 493bc0          cmp     rax,r8
fffff800`12372a8a 75f3            jne     nt!CmpSortByTag+0x37 (fffff800`12372a7f)

nt!CmpSortByTag+0x44:
fffff800`12372a8c 488b4808        mov     rcx,qword ptr [rax+8]
fffff800`12372a90 488902          mov     qword ptr [rdx],rax
fffff800`12372a93 48894a08        mov     qword ptr [rdx+8],rcx
fffff800`12372a97 483901          cmp     qword ptr [rcx],rax
fffff800`12372a9a 7523            jne     nt!CmpSortByTag+0x77 (fffff800`12372abf)

nt!CmpSortByTag+0x54:
fffff800`12372a9c 488911          mov     qword ptr [rcx],rdx
fffff800`12372a9f 48895008        mov     qword ptr [rax+8],rdx

nt!CmpSortByTag+0x5b:
fffff800`12372aa3 498b10          mov     rdx,qword ptr [r8]

nt!CmpSortByTag+0x5e:
fffff800`12372aa6 4d3bc1          cmp     r8,r9
fffff800`12372aa9 7411            je      nt!CmpSortByTag+0x74 (fffff800`12372abc)

nt!CmpSortByTag+0x63:
fffff800`12372aab 8b4270          mov     eax,dword ptr [rdx+70h]
fffff800`12372aae 41394070        cmp     dword ptr [r8+70h],eax
fffff800`12372ab2 77a0            ja      nt!CmpSortByTag+0xc (fffff800`12372a54)

nt!CmpSortByTag+0x6c:
fffff800`12372ab4 4c8bc2          mov     r8,rdx
fffff800`12372ab7 488b12          mov     rdx,qword ptr [rdx]
fffff800`12372aba ebea            jmp     nt!CmpSortByTag+0x5e (fffff800`12372aa6)

nt!CmpSortByTag+0x74:
fffff800`12372abc b001            mov     al,1
fffff800`12372abe c3              ret

nt!CmpSortByTag+0x77:
fffff800`12372abf b903000000      mov     ecx,3
fffff800`12372ac4 cd29            int     29h

nt!CmpSortByTag+0x7e:
fffff800`12372ac6 b903000000      mov     ecx,3
fffff800`12372acb cd29            int     29h
fffff800`12372acd 90              nop
fffff800`12372ace 90              nop
fffff800`12372acf 90              nop
fffff800`12372ad0 90              nop
fffff800`12372ad1 90              nop
fffff800`12372ad2 90              nop
fffff800`12372ad3 90              nop
fffff800`12372ad4 488bc4          mov     rax,rsp
fffff800`12372ad7 48895808        mov     qword ptr [rax+8],rbx
fffff800`12372adb 48896810        mov     qword ptr [rax+10h],rbp
fffff800`12372adf 57              push    rdi
fffff800`12372ae0 4883ec50        sub     rsp,50h
fffff800`12372ae4 498be8          mov     rbp,r8
fffff800`12372ae7 4c8d48e8        lea     r9,[rax-18h]
fffff800`12372aeb 4c8d40f0        lea     r8,[rax-10h]
fffff800`12372aef 488bd9          mov     rbx,rcx
fffff800`12372af2 e845faffff      call    nt!CmpLoadDriversNode (fffff800`1237253c)
fffff800`12372af7 84c0            test    al,al
fffff800`12372af9 0f842d0d0100    je      nt! ?? ::PBOPGDP::`string'+0x2d08 (fffff800`1238382c)

nt!CmpFindDrivers+0x2b:
fffff800`12372aff 33ff            xor     edi,edi

nt!CmpFindDrivers+0x2d:
fffff800`12372b01 488364243800    and     qword ptr [rsp+38h],0
fffff800`12372b07 488364243000    and     qword ptr [rsp+30h],0
fffff800`12372b0d 488b542448      mov     rdx,qword ptr [rsp+48h]
fffff800`12372b12 488364242800    and     qword ptr [rsp+28h],0
fffff800`12372b18 488364242000    and     qword ptr [rsp+20h],0
fffff800`12372b1e 4c8d4c2478      lea     r9,[rsp+78h]
fffff800`12372b23 448bc7          mov     r8d,edi
fffff800`12372b26 488bcb          mov     rcx,rbx
fffff800`12372b29 e8f2bfdaff      call    nt!CmpFindSubKeyByNumber (fffff800`1211eb20)
fffff800`12372b2e ffc7            inc     edi
fffff800`12372b30 837c2478ff      cmp     dword ptr [rsp+78h],0FFFFFFFFh
fffff800`12372b35 7426            je      nt!CmpFindDrivers+0x89 (fffff800`12372b5d)

nt!CmpFindDrivers+0x63:
fffff800`12372b37 8b542478        mov     edx,dword ptr [rsp+78h]
fffff800`12372b3b 488bcb          mov     rcx,rbx
fffff800`12372b3e e8adf7ffff      call    nt!CmpIsLoadType (fffff800`123722f0)
fffff800`12372b43 84c0            test    al,al
fffff800`12372b45 74ba            je      nt!CmpFindDrivers+0x2d (fffff800`12372b01)

nt!CmpFindDrivers+0x73:
fffff800`12372b47 448b442440      mov     r8d,dword ptr [rsp+40h]
fffff800`12372b4c 8b542478        mov     edx,dword ptr [rsp+78h]
fffff800`12372b50 4c8bcd          mov     r9,rbp
fffff800`12372b53 488bcb          mov     rcx,rbx
fffff800`12372b56 e81d000000      call    nt!CmpAddDriverToList (fffff800`12372b78)
fffff800`12372b5b eba4            jmp     nt!CmpFindDrivers+0x2d (fffff800`12372b01)

nt!CmpFindDrivers+0x89:
fffff800`12372b5d b001            mov     al,1

nt!CmpFindDrivers+0x8b:
fffff800`12372b5f 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff800`12372b64 488b6c2468      mov     rbp,qword ptr [rsp+68h]
fffff800`12372b69 4883c450        add     rsp,50h
fffff800`12372b6d 5f              pop     rdi
fffff800`12372b6e c3              ret

nt!CmpAddDriverToList+0xb0:
fffff800`12372c28 410fb706        movzx   eax,word ptr [r14]
fffff800`12372c2c 4c8d05adc7fbff  lea     r8,[nt!CmpImagePathString (fffff800`1232f3e0)]
fffff800`12372c33 488bd6          mov     rdx,rsi
fffff800`12372c36 488bcf          mov     rcx,rdi
fffff800`12372c39 66894362        mov     word ptr [rbx+62h],ax
fffff800`12372c3d 440fb7e8        movzx   r13d,ax
fffff800`12372c41 e85a42e0ff      call    nt!CmpFindValueByName (fffff800`12176ea0)
fffff800`12372c46 83f8ff          cmp     eax,0FFFFFFFFh
fffff800`12372c49 0f8437020000    je      nt!CmpAddDriverToList+0x30e (fffff800`12372e86)

nt!CmpAddDriverToList+0xd7:
fffff800`12372c4f 8bd0            mov     edx,eax
fffff800`12372c51 488bcf          mov     rcx,rdi
fffff800`12372c54 ff5708          call    qword ptr [rdi+8]
fffff800`12372c57 4885c0          test    rax,rax
fffff800`12372c5a 0f849c020000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0xe8:
fffff800`12372c60 4c8d442460      lea     r8,[rsp+60h]
fffff800`12372c65 488bd0          mov     rdx,rax
fffff800`12372c68 488bcf          mov     rcx,rdi
fffff800`12372c6b e800dbdfff      call    nt!CmpValueToData (fffff800`12170770)
fffff800`12372c70 8b6c2460        mov     ebp,dword ptr [rsp+60h]
fffff800`12372c74 33d2            xor     edx,edx
fffff800`12372c76 8bcd            mov     ecx,ebp
fffff800`12372c78 41b8434d3320    mov     r8d,20334D43h
fffff800`12372c7e 4c8bf8          mov     r15,rax
fffff800`12372c81 ff5710          call    qword ptr [rdi+10h]
fffff800`12372c84 48894318        mov     qword ptr [rbx+18h],rax
fffff800`12372c88 4885c0          test    rax,rax
fffff800`12372c8b 0f846b020000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x119:
fffff800`12372c91 4d85ff          test    r15,r15
fffff800`12372c94 0f8462020000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x122:
fffff800`12372c9a 448bc5          mov     r8d,ebp
fffff800`12372c9d 498bd7          mov     rdx,r15
fffff800`12372ca0 488bc8          mov     rcx,rax
fffff800`12372ca3 e858a595ff      call    nt!memcpy (fffff800`11ccd200)
fffff800`12372ca8 66896b10        mov     word ptr [rbx+10h],bp
fffff800`12372cac 66896b12        mov     word ptr [rbx+12h],bp
fffff800`12372cb0 8b6c2470        mov     ebp,dword ptr [rsp+70h]

nt!CmpAddDriverToList+0x13c:
fffff800`12372cb4 4c8d7b20        lea     r15,[rbx+20h]
fffff800`12372cb8 33c0            xor     eax,eax
fffff800`12372cba 664183c568      add     r13w,68h
fffff800`12372cbf 410fb7cd        movzx   ecx,r13w
fffff800`12372cc3 33d2            xor     edx,edx
fffff800`12372cc5 41b8434d3420    mov     r8d,20344D43h
fffff800`12372ccb 66418907        mov     word ptr [r15],ax
fffff800`12372ccf 6641894f02      mov     word ptr [r15+2],cx
fffff800`12372cd4 ff5710          call    qword ptr [rdi+10h]
fffff800`12372cd7 4533ed          xor     r13d,r13d
fffff800`12372cda 49894708        mov     qword ptr [r15+8],rax
fffff800`12372cde 4885c0          test    rax,rax
fffff800`12372ce1 0f8415020000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x16f:
fffff800`12372ce7 488d1502c5fbff  lea     rdx,[nt!CmpServicesKeyName (fffff800`1232f1f0)]
fffff800`12372cee 498bcf          mov     rcx,r15
fffff800`12372cf1 e842ef9cff      call    nt!RtlAppendUnicodeStringToString (fffff800`11d41c38)
fffff800`12372cf6 498bd6          mov     rdx,r14
fffff800`12372cf9 498bcf          mov     rcx,r15
fffff800`12372cfc e837ef9cff      call    nt!RtlAppendUnicodeStringToString (fffff800`11d41c38)
fffff800`12372d01 4d8b1c24        mov     r11,qword ptr [r12]
fffff800`12372d05 4c896308        mov     qword ptr [rbx+8],r12
fffff800`12372d09 4c891b          mov     qword ptr [rbx],r11
fffff800`12372d0c 4d396308        cmp     qword ptr [r11+8],r12
fffff800`12372d10 0f85ff0a0100    jne     nt! ?? ::PBOPGDP::`string'+0x2cf5 (fffff800`12383815)

nt!CmpAddDriverToList+0x19e:
fffff800`12372d16 49895b08        mov     qword ptr [r11+8],rbx
fffff800`12372d1a 4c8d058fc6fbff  lea     r8,[nt!CmpErrorControlString (fffff800`1232f3b0)]
fffff800`12372d21 488bd6          mov     rdx,rsi
fffff800`12372d24 488bcf          mov     rcx,rdi
fffff800`12372d27 49891c24        mov     qword ptr [r12],rbx
fffff800`12372d2b e87041e0ff      call    nt!CmpFindValueByName (fffff800`12176ea0)
fffff800`12372d30 4183cfff        or      r15d,0FFFFFFFFh
fffff800`12372d34 413bc7          cmp     eax,r15d
fffff800`12372d37 0f84df0a0100    je      nt! ?? ::PBOPGDP::`string'+0x2cfc (fffff800`1238381c)

nt!CmpAddDriverToList+0x1c5:
fffff800`12372d3d 8bd0            mov     edx,eax
fffff800`12372d3f 488bcf          mov     rcx,rdi
fffff800`12372d42 ff5708          call    qword ptr [rdi+8]
fffff800`12372d45 4885c0          test    rax,rax
fffff800`12372d48 0f84ae010000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x1d6:
fffff800`12372d4e 4c8d442460      lea     r8,[rsp+60h]
fffff800`12372d53 488bd0          mov     rdx,rax
fffff800`12372d56 488bcf          mov     rcx,rdi
fffff800`12372d59 e812dadfff      call    nt!CmpValueToData (fffff800`12170770)
fffff800`12372d5e 4885c0          test    rax,rax
fffff800`12372d61 0f8495010000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x1ef:
fffff800`12372d67 8b00            mov     eax,dword ptr [rax]
fffff800`12372d69 894374          mov     dword ptr [rbx+74h],eax

nt!CmpAddDriverToList+0x1f4:
fffff800`12372d6c 4c8d055dc6fbff  lea     r8,[nt!CmpGroupString (fffff800`1232f3d0)]
fffff800`12372d73 488bd6          mov     rdx,rsi
fffff800`12372d76 488bcf          mov     rcx,rdi
fffff800`12372d79 e82241e0ff      call    nt!CmpFindValueByName (fffff800`12176ea0)
fffff800`12372d7e 413bc7          cmp     eax,r15d
fffff800`12372d81 0f847c010000    je      nt!CmpAddDriverToList+0x38b (fffff800`12372f03)

nt!CmpAddDriverToList+0x20f:
fffff800`12372d87 8bd0            mov     edx,eax
fffff800`12372d89 488bcf          mov     rcx,rdi
fffff800`12372d8c ff5708          call    qword ptr [rdi+8]
fffff800`12372d8f 4885c0          test    rax,rax
fffff800`12372d92 0f8464010000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x220:
fffff800`12372d98 4c8d442460      lea     r8,[rsp+60h]
fffff800`12372d9d 488bd0          mov     rdx,rax
fffff800`12372da0 488bcf          mov     rcx,rdi
fffff800`12372da3 e8c8d9dfff      call    nt!CmpValueToData (fffff800`12170770)
fffff800`12372da8 48894358        mov     qword ptr [rbx+58h],rax
fffff800`12372dac 4885c0          test    rax,rax
fffff800`12372daf 0f8447010000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x23d:
fffff800`12372db5 0fb7442460      movzx   eax,word ptr [rsp+60h]
fffff800`12372dba 4c8d7350        lea     r14,[rbx+50h]
fffff800`12372dbe 6683e802        sub     ax,2
fffff800`12372dc2 66418906        mov     word ptr [r14],ax
fffff800`12372dc6 663b442460      cmp     ax,word ptr [rsp+60h]
fffff800`12372dcb 0f872b010000    ja      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x259:
fffff800`12372dd1 66894352        mov     word ptr [rbx+52h],ax

nt!CmpAddDriverToList+0x25d:
fffff800`12372dd5 4c8d05c4c5fbff  lea     r8,[nt!CmpDriverDependencyString (fffff800`1232f3a0)]
fffff800`12372ddc 488bd6          mov     rdx,rsi
fffff800`12372ddf 488bcf          mov     rcx,rdi
fffff800`12372de2 e8b940e0ff      call    nt!CmpFindValueByName (fffff800`12176ea0)
fffff800`12372de7 413bc7          cmp     eax,r15d
fffff800`12372dea 754f            jne     nt!CmpAddDriverToList+0x2c3 (fffff800`12372e3b)

nt!CmpAddDriverToList+0x274:
fffff800`12372dec 44896b40        mov     dword ptr [rbx+40h],r13d
fffff800`12372df0 4c896b48        mov     qword ptr [rbx+48h],r13

nt!CmpAddDriverToList+0x27c:
fffff800`12372df4 4c8d0535c6fbff  lea     r8,[nt!CmpTagString (fffff800`1232f430)]
fffff800`12372dfb 488bd6          mov     rdx,rsi
fffff800`12372dfe 488bcf          mov     rcx,rdi
fffff800`12372e01 e89a40e0ff      call    nt!CmpFindValueByName (fffff800`12176ea0)
fffff800`12372e06 413bc7          cmp     eax,r15d
fffff800`12372e09 751b            jne     nt!CmpAddDriverToList+0x2ae (fffff800`12372e26)

nt!CmpAddDriverToList+0x293:
fffff800`12372e0b 44897b70        mov     dword ptr [rbx+70h],r15d

nt!CmpAddDriverToList+0x297:
fffff800`12372e0f b001            mov     al,1

nt!CmpAddDriverToList+0x299:
fffff800`12372e11 488b5c2468      mov     rbx,qword ptr [rsp+68h]
fffff800`12372e16 4883c420        add     rsp,20h
fffff800`12372e1a 415f            pop     r15
fffff800`12372e1c 415e            pop     r14
fffff800`12372e1e 415d            pop     r13
fffff800`12372e20 415c            pop     r12
fffff800`12372e22 5f              pop     rdi
fffff800`12372e23 5e              pop     rsi
fffff800`12372e24 5d              pop     rbp
fffff800`12372e25 c3              ret

nt!CmpAddDriverToList+0x2ae:
fffff800`12372e26 4d8bce          mov     r9,r14
fffff800`12372e29 448bc5          mov     r8d,ebp
fffff800`12372e2c 8bd0            mov     edx,eax
fffff800`12372e2e 488bcf          mov     rcx,rdi
fffff800`12372e31 e8ea000000      call    nt!CmpFindTagIndex (fffff800`12372f20)
fffff800`12372e36 894370          mov     dword ptr [rbx+70h],eax
fffff800`12372e39 ebd4            jmp     nt!CmpAddDriverToList+0x297 (fffff800`12372e0f)

nt!CmpAddDriverToList+0x2c3:
fffff800`12372e3b 8bd0            mov     edx,eax
fffff800`12372e3d 488bcf          mov     rcx,rdi
fffff800`12372e40 ff5708          call    qword ptr [rdi+8]
fffff800`12372e43 4885c0          test    rax,rax
fffff800`12372e46 0f84b0000000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x2d4:
fffff800`12372e4c 4c8d442460      lea     r8,[rsp+60h]
fffff800`12372e51 488bd0          mov     rdx,rax
fffff800`12372e54 488bcf          mov     rcx,rdi
fffff800`12372e57 e814d9dfff      call    nt!CmpValueToData (fffff800`12170770)
fffff800`12372e5c 48894348        mov     qword ptr [rbx+48h],rax
fffff800`12372e60 4885c0          test    rax,rax
fffff800`12372e63 0f8493000000    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x2f1:
fffff800`12372e69 0fb7442460      movzx   eax,word ptr [rsp+60h]
fffff800`12372e6e 6683e802        sub     ax,2
fffff800`12372e72 66894340        mov     word ptr [rbx+40h],ax
fffff800`12372e76 663b442460      cmp     ax,word ptr [rsp+60h]
fffff800`12372e7b 777f            ja      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x305:
fffff800`12372e7d 66894342        mov     word ptr [rbx+42h],ax
fffff800`12372e81 e96effffff      jmp     nt!CmpAddDriverToList+0x27c (fffff800`12372df4)

nt!CmpAddDriverToList+0x30e:
fffff800`12372e86 410fb7cd        movzx   ecx,r13w
fffff800`12372e8a 4c8d7b10        lea     r15,[rbx+10h]
fffff800`12372e8e 33c0            xor     eax,eax
fffff800`12372e90 83c12e          add     ecx,2Eh
fffff800`12372e93 33d2            xor     edx,edx
fffff800`12372e95 41b8434d3320    mov     r8d,20334D43h
fffff800`12372e9b 66418907        mov     word ptr [r15],ax
fffff800`12372e9f 6641894f02      mov     word ptr [r15+2],cx
fffff800`12372ea4 ff5710          call    qword ptr [rdi+10h]
fffff800`12372ea7 49894708        mov     qword ptr [r15+8],rax
fffff800`12372eab 4885c0          test    rax,rax
fffff800`12372eae 744c            je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x338:
fffff800`12372eb0 488d1569120000  lea     rdx,[nt! ?? ::PBOPGDP::`string' (fffff800`12374120)]
fffff800`12372eb7 498bcf          mov     rcx,r15
fffff800`12372eba e8b1d09eff      call    nt!RtlAppendUnicodeToString (fffff800`11d5ff70)
fffff800`12372ebf 85c0            test    eax,eax
fffff800`12372ec1 7839            js      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x34b:
fffff800`12372ec3 488d1576120000  lea     rdx,[nt! ?? ::PBOPGDP::`string' (fffff800`12374140)]
fffff800`12372eca 498bcf          mov     rcx,r15
fffff800`12372ecd e89ed09eff      call    nt!RtlAppendUnicodeToString (fffff800`11d5ff70)
fffff800`12372ed2 85c0            test    eax,eax
fffff800`12372ed4 7826            js      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x35e:
fffff800`12372ed6 498bd6          mov     rdx,r14
fffff800`12372ed9 498bcf          mov     rcx,r15
fffff800`12372edc e857ed9cff      call    nt!RtlAppendUnicodeStringToString (fffff800`11d41c38)
fffff800`12372ee1 85c0            test    eax,eax
fffff800`12372ee3 7817            js      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt!CmpAddDriverToList+0x36d:
fffff800`12372ee5 488d1574120000  lea     rdx,[nt! ?? ::PBOPGDP::`string' (fffff800`12374160)]
fffff800`12372eec 498bcf          mov     rcx,r15
fffff800`12372eef e87cd09eff      call    nt!RtlAppendUnicodeToString (fffff800`11d5ff70)
fffff800`12372ef4 85c0            test    eax,eax
fffff800`12372ef6 0f89b8fdffff    jns     nt!CmpAddDriverToList+0x13c (fffff800`12372cb4)

nt!CmpAddDriverToList+0x384:
fffff800`12372efc 32c0            xor     al,al
fffff800`12372efe e90effffff      jmp     nt!CmpAddDriverToList+0x299 (fffff800`12372e11)

nt!CmpAddDriverToList+0x38b:
fffff800`12372f03 4c8d7350        lea     r14,[rbx+50h]
fffff800`12372f07 6644896b52      mov     word ptr [rbx+52h],r13w
fffff800`12372f0c 4c896b58        mov     qword ptr [rbx+58h],r13
fffff800`12372f10 6645892e        mov     word ptr [r14],r13w
fffff800`12372f14 e9bcfeffff      jmp     nt!CmpAddDriverToList+0x25d (fffff800`12372dd5)

nt! ?? ::PBOPGDP::`string'+0x2cb6:
fffff800`123837d4 32c0            xor     al,al
fffff800`123837d6 e941f2feff      jmp     nt!CmpDoSort+0x108 (fffff800`12372a1c)

nt! ?? ::PBOPGDP::`string'+0x2cbd:
fffff800`123837db b903000000      mov     ecx,3
fffff800`123837e0 cd29            int     29h
fffff800`123837e2 90              nop
fffff800`123837e3 90              nop
fffff800`123837e4 0fb74648        movzx   eax,word ptr [rsi+48h]
fffff800`123837e8 8bc8            mov     ecx,eax
fffff800`123837ea 66418906        mov     word ptr [r14],ax
fffff800`123837ee ff5710          call    qword ptr [rdi+10h]
fffff800`123837f1 48894368        mov     qword ptr [rbx+68h],rax
fffff800`123837f5 4885c0          test    rax,rax
fffff800`123837f8 0f84fef6feff    je      nt!CmpAddDriverToList+0x384 (fffff800`12372efc)

nt! ?? ::PBOPGDP::`string'+0x2cde:
fffff800`123837fe 440fb74648      movzx   r8d,word ptr [rsi+48h]
fffff800`12383803 488d564c        lea     rdx,[rsi+4Ch]
fffff800`12383807 488bc8          mov     rcx,rax
fffff800`1238380a e8f19994ff      call    nt!memcpy (fffff800`11ccd200)
fffff800`1238380f 90              nop
fffff800`12383810 e913f4feff      jmp     nt!CmpAddDriverToList+0xb0 (fffff800`12372c28)

nt! ?? ::PBOPGDP::`string'+0x2cf5:
fffff800`12383815 b903000000      mov     ecx,3
fffff800`1238381a cd29            int     29h

nt! ?? ::PBOPGDP::`string'+0x2cfc:
fffff800`1238381c c7437401000000  mov     dword ptr [rbx+74h],1
fffff800`12383823 e944f5feff      jmp     nt!CmpAddDriverToList+0x1f4 (fffff800`12372d6c)

nt! ?? ::PBOPGDP::`string'+0x2d08:
fffff800`1238382c 32c0            xor     al,al
fffff800`1238382e e92cf3feff      jmp     nt!CmpFindDrivers+0x8b (fffff800`12372b5f)
