0: kd> uf IoSetIoCompletionEx2
nt!IoSetIoCompletionEx2:
fffff803`d98b1e90 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d98b1e95 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`d98b1e9a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d98b1e9f 57              push    rdi
fffff803`d98b1ea0 4154            push    r12
fffff803`d98b1ea2 4155            push    r13
fffff803`d98b1ea4 4156            push    r14
fffff803`d98b1ea6 4157            push    r15
fffff803`d98b1ea8 4883ec50        sub     rsp,50h
fffff803`d98b1eac 488bbc24b0000000 mov     rdi,qword ptr [rsp+0B0h]
fffff803`d98b1eb4 33f6            xor     esi,esi
fffff803`d98b1eb6 418be9          mov     ebp,r9d
fffff803`d98b1eb9 4d8bf0          mov     r14,r8
fffff803`d98b1ebc 4c8bfa          mov     r15,rdx
fffff803`d98b1ebf 488bd9          mov     rbx,rcx
fffff803`d98b1ec2 4885ff          test    rdi,rdi
fffff803`d98b1ec5 0f85b6020000    jne     nt!IoSetIoCompletionEx2+0x2f1 (fffff803`d98b2181)

nt!IoSetIoCompletionEx2+0x3b:
fffff803`d98b1ecb 0fb69424a8000000 movzx   edx,byte ptr [rsp+0A8h]
fffff803`d98b1ed3 b101            mov     cl,1
fffff803`d98b1ed5 e8364c3e00      call    nt!IopAllocateMiniCompletionPacket (fffff803`d9c96b10)
fffff803`d98b1eda 488bf8          mov     rdi,rax
fffff803`d98b1edd 4885c0          test    rax,rax
fffff803`d98b1ee0 0f841a010000    je      nt!IoSetIoCompletionEx2+0x170 (fffff803`d98b2000)

nt!IoSetIoCompletionEx2+0x56:
fffff803`d98b1ee6 4c897818        mov     qword ptr [rax+18h],r15
fffff803`d98b1eea 4c897020        mov     qword ptr [rax+20h],r14
fffff803`d98b1eee 896828          mov     dword ptr [rax+28h],ebp
fffff803`d98b1ef1 488b8424a0000000 mov     rax,qword ptr [rsp+0A0h]
fffff803`d98b1ef9 48894730        mov     qword ptr [rdi+30h],rax
fffff803`d98b1efd 4038b424b8000000 cmp     byte ptr [rsp+0B8h],sil
fffff803`d98b1f05 0f85c57c1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb798 (fffff803`d9a59bd0)

nt!IoSetIoCompletionEx2+0x7b:
fffff803`d98b1f0b 448bfe          mov     r15d,esi

nt!IoSetIoCompletionEx2+0x7e:
fffff803`d98b1f0e 488d6b08        lea     rbp,[rbx+8]
fffff803`d98b1f12 450f20c4        mov     r12,cr8
fffff803`d98b1f16 b802000000      mov     eax,2
fffff803`d98b1f1b 440f22c0        mov     cr8,rax
fffff803`d98b1f1f 654c8b342520000000 mov   r14,qword ptr gs:[20h]
fffff803`d98b1f28 f70552c1320000000001 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],1000000h
fffff803`d98b1f32 498b4e08        mov     rcx,qword ptr [r14+8]
fffff803`d98b1f36 48898c24b0000000 mov     qword ptr [rsp+0B0h],rcx
fffff803`d98b1f3e 0f85977c1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb7a3 (fffff803`d9a59bdb)

nt!IoSetIoCompletionEx2+0xb4:
fffff803`d98b1f44 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`d98b1f49 448bee          mov     r13d,esi
fffff803`d98b1f4c 0f8247030000    jb      nt!IoSetIoCompletionEx2+0x410 (fffff803`d98b2299)

nt!IoSetIoCompletionEx2+0xc2:
fffff803`d98b1f52 8b4304          mov     eax,dword ptr [rbx+4]
fffff803`d98b1f55 89442430        mov     dword ptr [rsp+30h],eax
fffff803`d98b1f59 48396d08        cmp     qword ptr [rbp+8],rbp
fffff803`d98b1f5d 0f85ff030000    jne     nt!IoSetIoCompletionEx2+0x4d2 (fffff803`d98b2362)

nt!IoSetIoCompletionEx2+0xd3:
fffff803`d98b1f63 ff4304          inc     dword ptr [rbx+4]
fffff803`d98b1f66 488d4318        lea     rax,[rbx+18h]
fffff803`d98b1f6a 41f6c702        test    r15b,2
fffff803`d98b1f6e 0f85987c1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb7d4 (fffff803`d9a59c0c)

nt!IoSetIoCompletionEx2+0xe4:
fffff803`d98b1f74 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d98b1f78 488907          mov     qword ptr [rdi],rax
fffff803`d98b1f7b 48894f08        mov     qword ptr [rdi+8],rcx
fffff803`d98b1f7f 483901          cmp     qword ptr [rcx],rax
fffff803`d98b1f82 0f85a77c1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb7fb (fffff803`d9a59c2f)

nt!IoSetIoCompletionEx2+0xf8:
fffff803`d98b1f88 488939          mov     qword ptr [rcx],rdi
fffff803`d98b1f8b 48897808        mov     qword ptr [rax+8],rdi

nt!IoSetIoCompletionEx2+0xff:
fffff803`d98b1f8f f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`d98b1f96 41f6c701        test    r15b,1
fffff803`d98b1f9a 0f8530040000    jne     nt!IoSetIoCompletionEx2+0x540 (fffff803`d98b23d0)

nt!IoSetIoCompletionEx2+0x110:
fffff803`d98b1fa0 32db            xor     bl,bl

nt!IoSetIoCompletionEx2+0x112:
fffff803`d98b1fa2 4939b6882c0000  cmp     qword ptr [r14+2C88h],rsi
fffff803`d98b1fa9 755c            jne     nt!IoSetIoCompletionEx2+0x177 (fffff803`d98b2007)

nt!IoSetIoCompletionEx2+0x11b:
fffff803`d98b1fab 84db            test    bl,bl
fffff803`d98b1fad 0f85d5000000    jne     nt!IoSetIoCompletionEx2+0x1f8 (fffff803`d98b2088)

nt!IoSetIoCompletionEx2+0x123:
fffff803`d98b1fb3 4180fc02        cmp     r12b,2
fffff803`d98b1fb7 0f838d7d1a00    jae     nt! ?? ::FNODOBFM::`string'+0xb926 (fffff803`d9a59d4a)

nt!IoSetIoCompletionEx2+0x12d:
fffff803`d98b1fbd 498b5e08        mov     rbx,qword ptr [r14+8]
fffff803`d98b1fc1 49397610        cmp     qword ptr [r14+10h],rsi
fffff803`d98b1fc5 0f85d1000000    jne     nt!IoSetIoCompletionEx2+0x20c (fffff803`d98b209c)

nt!IoSetIoCompletionEx2+0x13b:
fffff803`d98b1fcb f7437400010000  test    dword ptr [rbx+74h],100h
fffff803`d98b1fd2 0f85507d1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb904 (fffff803`d9a59d28)

nt!IoSetIoCompletionEx2+0x148:
fffff803`d98b1fd8 410fb6c4        movzx   eax,r12b
fffff803`d98b1fdc 440f22c0        mov     cr8,rax

nt!IoSetIoCompletionEx2+0x150:
fffff803`d98b1fe0 4c8d5c2450      lea     r11,[rsp+50h]
fffff803`d98b1fe5 8bc6            mov     eax,esi
fffff803`d98b1fe7 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff803`d98b1feb 498b6b38        mov     rbp,qword ptr [r11+38h]
fffff803`d98b1fef 498b7340        mov     rsi,qword ptr [r11+40h]
fffff803`d98b1ff3 498be3          mov     rsp,r11
fffff803`d98b1ff6 415f            pop     r15
fffff803`d98b1ff8 415e            pop     r14
fffff803`d98b1ffa 415d            pop     r13
fffff803`d98b1ffc 415c            pop     r12
fffff803`d98b1ffe 5f              pop     rdi
fffff803`d98b1fff c3              ret

nt!IoSetIoCompletionEx2+0x170:
fffff803`d98b2000 be9a0000c0      mov     esi,0C000009Ah
fffff803`d98b2005 ebd9            jmp     nt!IoSetIoCompletionEx2+0x150 (fffff803`d98b1fe0)

nt!IoSetIoCompletionEx2+0x177:
fffff803`d98b2007 84db            test    bl,bl
fffff803`d98b2009 0f85277c1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb802 (fffff803`d9a59c36)

nt!IoSetIoCompletionEx2+0x17f:
fffff803`d98b200f 4d8bae882c0000  mov     r13,qword ptr [r14+2C88h]
fffff803`d98b2016 4989b6882c0000  mov     qword ptr [r14+2C88h],rsi

nt!IoSetIoCompletionEx2+0x18d:
fffff803`d98b201d 410fb6856b010000 movzx   eax,byte ptr [r13+16Bh]
fffff803`d98b2025 498b7df8        mov     rdi,qword ptr [r13-8]
fffff803`d98b2029 498dad28ffffff  lea     rbp,[r13-0D8h]
fffff803`d98b2030 4d8b6d00        mov     r13,qword ptr [r13]
fffff803`d98b2034 4c8d3c40        lea     r15,[rax+rax*2]
fffff803`d98b2038 49c1e704        shl     r15,4
fffff803`d98b203c 4c896c2440      mov     qword ptr [rsp+40h],r13
fffff803`d98b2041 4c03ff          add     r15,rdi

nt!IoSetIoCompletionEx2+0x1b4:
fffff803`d98b2044 0fb64711        movzx   eax,byte ptr [rdi+11h]
fffff803`d98b2048 3c03            cmp     al,3
fffff803`d98b204a 0f82fd7b1a00    jb      nt! ?? ::FNODOBFM::`string'+0xb819 (fffff803`d9a59c4d)

nt!IoSetIoCompletionEx2+0x1c0:
fffff803`d98b2050 4883c730        add     rdi,30h
fffff803`d98b2054 493bff          cmp     rdi,r15
fffff803`d98b2057 75eb            jne     nt!IoSetIoCompletionEx2+0x1b4 (fffff803`d98b2044)

nt!IoSetIoCompletionEx2+0x1c9:
fffff803`d98b2059 66c785360200000100 mov   word ptr [rbp+236h],1
fffff803`d98b2062 f70518c0320000020000 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],200h
fffff803`d98b206c 0f85587c1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb8a6 (fffff803`d9a59cca)

nt!IoSetIoCompletionEx2+0x1e2:
fffff803`d98b2072 488bd5          mov     rdx,rbp
fffff803`d98b2075 498bce          mov     rcx,r14
fffff803`d98b2078 e8ab6e0500      call    nt!KiReadyThread (fffff803`d9908f28)
fffff803`d98b207d 4d85ed          test    r13,r13
fffff803`d98b2080 0f8425ffffff    je      nt!IoSetIoCompletionEx2+0x11b (fffff803`d98b1fab)

nt!IoSetIoCompletionEx2+0x1f6:
fffff803`d98b2086 eb95            jmp     nt!IoSetIoCompletionEx2+0x18d (fffff803`d98b201d)

nt!IoSetIoCompletionEx2+0x1f8:
fffff803`d98b2088 498b4608        mov     rax,qword ptr [r14+8]
fffff803`d98b208c 83487408        or      dword ptr [rax+74h],8
fffff803`d98b2090 4488a086010000  mov     byte ptr [rax+186h],r12b
fffff803`d98b2097 e944ffffff      jmp     nt!IoSetIoCompletionEx2+0x150 (fffff803`d98b1fe0)

nt!IoSetIoCompletionEx2+0x20c:
fffff803`d98b209c 8bfe            mov     edi,esi

nt!IoSetIoCompletionEx2+0x20e:
fffff803`d98b209e f0490fba6e3000  lock bts qword ptr [r14+30h],0
fffff803`d98b20a5 0f825a020000    jb      nt!IoSetIoCompletionEx2+0x480 (fffff803`d98b2305)

nt!IoSetIoCompletionEx2+0x21b:
fffff803`d98b20ab 498b7e10        mov     rdi,qword ptr [r14+10h]
fffff803`d98b20af 49897610        mov     qword ptr [r14+10h],rsi
fffff803`d98b20b3 fa              cli
fffff803`d98b20b4 41c6462001      mov     byte ptr [r14+20h],1
fffff803`d98b20b9 0f31            rdtsc
fffff803`d98b20bb 488b4b48        mov     rcx,qword ptr [rbx+48h]
fffff803`d98b20bf 48c1e220        shl     rdx,20h
fffff803`d98b20c3 480bc2          or      rax,rdx
fffff803`d98b20c6 4c8bc0          mov     r8,rax
fffff803`d98b20c9 488be8          mov     rbp,rax
fffff803`d98b20cc 8b4350          mov     eax,dword ptr [rbx+50h]
fffff803`d98b20cf 4d2b8640530000  sub     r8,qword ptr [r14+5340h]
fffff803`d98b20d6 4903c8          add     rcx,r8
fffff803`d98b20d9 4903c0          add     rax,r8
fffff803`d98b20dc 48894b48        mov     qword ptr [rbx+48h],rcx
fffff803`d98b20e0 b9ffffffff      mov     ecx,0FFFFFFFFh
fffff803`d98b20e5 483bc1          cmp     rax,rcx
fffff803`d98b20e8 480f47c1        cmova   rax,rcx
fffff803`d98b20ec f643020e        test    byte ptr [rbx+2],0Eh
fffff803`d98b20f0 894350          mov     dword ptr [rbx+50h],eax
fffff803`d98b20f3 7444            je      nt!IoSetIoCompletionEx2+0x2a9 (fffff803`d98b2139)

nt!IoSetIoCompletionEx2+0x265:
fffff803`d98b20f5 488b4368        mov     rax,qword ptr [rbx+68h]
fffff803`d98b20f9 4885c0          test    rax,rax
fffff803`d98b20fc 0f85007c1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb8de (fffff803`d9a59d02)

nt!IoSetIoCompletionEx2+0x272:
fffff803`d98b2102 f6430208        test    byte ptr [rbx+2],8
fffff803`d98b2106 7424            je      nt!IoSetIoCompletionEx2+0x29c (fffff803`d98b212c)

nt!IoSetIoCompletionEx2+0x278:
fffff803`d98b2108 498b8638530000  mov     rax,qword ptr [r14+5338h]
fffff803`d98b210f 488b8b38020000  mov     rcx,qword ptr [rbx+238h]
fffff803`d98b2116 488b5050        mov     rdx,qword ptr [rax+50h]
fffff803`d98b211a 488bc2          mov     rax,rdx
fffff803`d98b211d 4823c1          and     rax,rcx
fffff803`d98b2120 483bc2          cmp     rax,rdx
fffff803`d98b2123 7407            je      nt!IoSetIoCompletionEx2+0x29c (fffff803`d98b212c)

nt!IoSetIoCompletionEx2+0x295:
fffff803`d98b2125 4d018650530000  add     qword ptr [r14+5350h],r8

nt!IoSetIoCompletionEx2+0x29c:
fffff803`d98b212c 4839b368010000  cmp     qword ptr [rbx+168h],rsi
fffff803`d98b2133 0f85e17b1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb8f6 (fffff803`d9a59d1a)

nt!IoSetIoCompletionEx2+0x2a9:
fffff803`d98b2139 4989ae40530000  mov     qword ptr [r14+5340h],rbp
fffff803`d98b2140 fb              sti
fffff803`d98b2141 49897e08        mov     qword ptr [r14+8],rdi
fffff803`d98b2145 c6878401000002  mov     byte ptr [rdi+184h],2
fffff803`d98b214c 488bd3          mov     rdx,rbx
fffff803`d98b214f 498bce          mov     rcx,r14
fffff803`d98b2152 c6838302000020  mov     byte ptr [rbx+283h],20h
fffff803`d98b2159 4488a386010000  mov     byte ptr [rbx+186h],r12b
fffff803`d98b2160 e89b790500      call    nt!KiQueueReadyThread (fffff803`d9909b00)
fffff803`d98b2165 450fb6c4        movzx   r8d,r12b
fffff803`d98b2169 488bd7          mov     rdx,rdi
fffff803`d98b216c 488bcb          mov     rcx,rbx
fffff803`d98b216f e8bc7e0200      call    nt!KiSwapContext (fffff803`d98da030)
fffff803`d98b2174 84c0            test    al,al
fffff803`d98b2176 0f845cfeffff    je      nt!IoSetIoCompletionEx2+0x148 (fffff803`d98b1fd8)

nt!IoSetIoCompletionEx2+0x2ec:
fffff803`d98b217c e9a77b1a00      jmp     nt! ?? ::FNODOBFM::`string'+0xb904 (fffff803`d9a59d28)

nt!IoSetIoCompletionEx2+0x2f1:
fffff803`d98b2181 488b8424a0000000 mov     rax,qword ptr [rsp+0A0h]
fffff803`d98b2189 4c894720        mov     qword ptr [rdi+20h],r8
fffff803`d98b218d 48895718        mov     qword ptr [rdi+18h],rdx
fffff803`d98b2191 44894f28        mov     dword ptr [rdi+28h],r9d
fffff803`d98b2195 41b801000000    mov     r8d,1
fffff803`d98b219b 48894730        mov     qword ptr [rdi+30h],rax
fffff803`d98b219f 4038b424b8000000 cmp     byte ptr [rsp+0B8h],sil
fffff803`d98b21a7 0f8531020000    jne     nt!IoSetIoCompletionEx2+0x54e (fffff803`d98b23de)

nt!IoSetIoCompletionEx2+0x31d:
fffff803`d98b21ad 448be6          mov     r12d,esi

nt!IoSetIoCompletionEx2+0x320:
fffff803`d98b21b0 4c8d7908        lea     r15,[rcx+8]
fffff803`d98b21b4 440f20c1        mov     rcx,cr8
fffff803`d98b21b8 48898c24b0000000 mov     qword ptr [rsp+0B0h],rcx
fffff803`d98b21c0 b802000000      mov     eax,2
fffff803`d98b21c5 440f22c0        mov     cr8,rax
fffff803`d98b21c9 654c8b342520000000 mov   r14,qword ptr gs:[20h]
fffff803`d98b21d2 f705a8be320000000001 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],1000000h
fffff803`d98b21dc 498b6e08        mov     rbp,qword ptr [r14+8]
fffff803`d98b21e0 0f859c7b1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb962 (fffff803`d9a59d82)

nt!IoSetIoCompletionEx2+0x356:
fffff803`d98b21e6 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`d98b21eb 448bee          mov     r13d,esi
fffff803`d98b21ee 0f823c010000    jb      nt!IoSetIoCompletionEx2+0x4a0 (fffff803`d98b2330)

nt!IoSetIoCompletionEx2+0x364:
fffff803`d98b21f4 4d397f08        cmp     qword ptr [r15+8],r15
fffff803`d98b21f8 0f84d5000000    je      nt!IoSetIoCompletionEx2+0x44a (fffff803`d98b22d3)

nt!IoSetIoCompletionEx2+0x36e:
fffff803`d98b21fe 8b4328          mov     eax,dword ptr [rbx+28h]
fffff803`d98b2201 3b432c          cmp     eax,dword ptr [rbx+2Ch]
fffff803`d98b2204 0f83c9000000    jae     nt!IoSetIoCompletionEx2+0x44a (fffff803`d98b22d3)

nt!IoSetIoCompletionEx2+0x37a:
fffff803`d98b220a 488b85e8000000  mov     rax,qword ptr [rbp+0E8h]
fffff803`d98b2211 483bc3          cmp     rax,rbx
fffff803`d98b2214 750d            jne     nt!IoSetIoCompletionEx2+0x393 (fffff803`d98b2223)

nt!IoSetIoCompletionEx2+0x386:
fffff803`d98b2216 80bd830200000f  cmp     byte ptr [rbp+283h],0Fh
fffff803`d98b221d 0f84b0000000    je      nt!IoSetIoCompletionEx2+0x44a (fffff803`d98b22d3)

nt!IoSetIoCompletionEx2+0x393:
fffff803`d98b2223 488b6b10        mov     rbp,qword ptr [rbx+10h]

nt!IoSetIoCompletionEx2+0x397:
fffff803`d98b2227 488bd5          mov     rdx,rbp
fffff803`d98b222a 488b6d08        mov     rbp,qword ptr [rbp+8]
fffff803`d98b222e 4c8b02          mov     r8,qword ptr [rdx]
fffff803`d98b2231 49395008        cmp     qword ptr [r8+8],rdx
fffff803`d98b2235 0f858f7b1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb9aa (fffff803`d9a59dca)

nt!IoSetIoCompletionEx2+0x3ab:
fffff803`d98b223b 48395500        cmp     qword ptr [rbp],rdx
fffff803`d98b223f 0f85857b1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb9aa (fffff803`d9a59dca)

nt!IoSetIoCompletionEx2+0x3b5:
fffff803`d98b2245 4c894500        mov     qword ptr [rbp],r8
fffff803`d98b2249 49896808        mov     qword ptr [r8+8],rbp
fffff803`d98b224d 4533c9          xor     r9d,r9d
fffff803`d98b2250 4c8bc7          mov     r8,rdi
fffff803`d98b2253 498bce          mov     rcx,r14
fffff803`d98b2256 e845200700      call    nt!KiTryUnwaitThread (fffff803`d99242a0)
fffff803`d98b225b 84c0            test    al,al
fffff803`d98b225d 0f84597b1a00    je      nt! ?? ::FNODOBFM::`string'+0xb99c (fffff803`d9a59dbc)

nt!IoSetIoCompletionEx2+0x3d3:
fffff803`d98b2263 41b801000000    mov     r8d,1

nt!IoSetIoCompletionEx2+0x3d9:
fffff803`d98b2269 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]

nt!IoSetIoCompletionEx2+0x3e1:
fffff803`d98b2271 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`d98b2278 41f6c401        test    r12b,1
fffff803`d98b227c 0f8564010000    jne     nt!IoSetIoCompletionEx2+0x556 (fffff803`d98b23e6)

nt!IoSetIoCompletionEx2+0x3f2:
fffff803`d98b2282 884c2420        mov     byte ptr [rsp+20h],cl
fffff803`d98b2286 32d2            xor     dl,dl
fffff803`d98b2288 4533c9          xor     r9d,r9d
fffff803`d98b228b 498bce          mov     rcx,r14
fffff803`d98b228e e8b98b0b00      call    nt!KiExitDispatcher (fffff803`d996ae4c)
fffff803`d98b2293 e948fdffff      jmp     nt!IoSetIoCompletionEx2+0x150 (fffff803`d98b1fe0)

nt!IoSetIoCompletionEx2+0x410:
fffff803`d98b2299 41ffc5          inc     r13d
fffff803`d98b229c 44852da9c13200  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],r13d
fffff803`d98b22a3 0f8447791a00    je      nt! ?? ::FNODOBFM::`string'+0xb7b8 (fffff803`d9a59bf0)

nt!IoSetIoCompletionEx2+0x420:
fffff803`d98b22a9 f390            pause

nt!IoSetIoCompletionEx2+0x422:
fffff803`d98b22ab 8b03            mov     eax,dword ptr [rbx]
fffff803`d98b22ad 84c0            test    al,al
fffff803`d98b22af 78e8            js      nt!IoSetIoCompletionEx2+0x410 (fffff803`d98b2299)

nt!IoSetIoCompletionEx2+0x428:
fffff803`d98b22b1 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`d98b22b6 72e1            jb      nt!IoSetIoCompletionEx2+0x410 (fffff803`d98b2299)

nt!IoSetIoCompletionEx2+0x42f:
fffff803`d98b22b8 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff803`d98b22c0 e98dfcffff      jmp     nt!IoSetIoCompletionEx2+0xc2 (fffff803`d98b1f52)

nt!IoSetIoCompletionEx2+0x43c:
fffff803`d98b22c5 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff803`d98b22cd 41b801000000    mov     r8d,1

nt!IoSetIoCompletionEx2+0x44a:
fffff803`d98b22d3 ff4304          inc     dword ptr [rbx+4]
fffff803`d98b22d6 488d4318        lea     rax,[rbx+18h]
fffff803`d98b22da 41f6c402        test    r12b,2
fffff803`d98b22de 0f85ed7a1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb9b1 (fffff803`d9a59dd1)

nt!IoSetIoCompletionEx2+0x45b:
fffff803`d98b22e4 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d98b22e8 488907          mov     qword ptr [rdi],rax
fffff803`d98b22eb 48894f08        mov     qword ptr [rdi+8],rcx
fffff803`d98b22ef 483901          cmp     qword ptr [rcx],rax
fffff803`d98b22f2 0f85fc7a1a00    jne     nt! ?? ::FNODOBFM::`string'+0xb9d8 (fffff803`d9a59df4)

nt!IoSetIoCompletionEx2+0x46f:
fffff803`d98b22f8 488939          mov     qword ptr [rcx],rdi
fffff803`d98b22fb 48897808        mov     qword ptr [rax+8],rdi
fffff803`d98b22ff e965ffffff      jmp     nt!IoSetIoCompletionEx2+0x3d9 (fffff803`d98b2269)

nt!IoSetIoCompletionEx2+0x480:
fffff803`d98b2305 ffc7            inc     edi
fffff803`d98b2307 853d3fc13200    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],edi
fffff803`d98b230d 0f84d4791a00    je      nt! ?? ::FNODOBFM::`string'+0xb8c3 (fffff803`d9a59ce7)

nt!IoSetIoCompletionEx2+0x48e:
fffff803`d98b2313 f390            pause

nt!IoSetIoCompletionEx2+0x490:
fffff803`d98b2315 498b4630        mov     rax,qword ptr [r14+30h]
fffff803`d98b2319 4885c0          test    rax,rax
fffff803`d98b231c 75e7            jne     nt!IoSetIoCompletionEx2+0x480 (fffff803`d98b2305)

nt!IoSetIoCompletionEx2+0x499:
fffff803`d98b231e e97bfdffff      jmp     nt!IoSetIoCompletionEx2+0x20e (fffff803`d98b209e)

nt!IoSetIoCompletionEx2+0x4a0:
fffff803`d98b2330 41ffc5          inc     r13d
fffff803`d98b2333 44852d12c13200  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],r13d
fffff803`d98b233a 0f84607a1a00    je      nt! ?? ::FNODOBFM::`string'+0xb980 (fffff803`d9a59da0)

nt!IoSetIoCompletionEx2+0x4b0:
fffff803`d98b2340 f390            pause

nt!IoSetIoCompletionEx2+0x4b2:
fffff803`d98b2342 8b03            mov     eax,dword ptr [rbx]
fffff803`d98b2344 84c0            test    al,al
fffff803`d98b2346 78e8            js      nt!IoSetIoCompletionEx2+0x4a0 (fffff803`d98b2330)

nt!IoSetIoCompletionEx2+0x4b8:
fffff803`d98b2348 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`d98b234d 72e1            jb      nt!IoSetIoCompletionEx2+0x4a0 (fffff803`d98b2330)

nt!IoSetIoCompletionEx2+0x4bf:
fffff803`d98b234f 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff803`d98b2357 41b801000000    mov     r8d,1
fffff803`d98b235d e992feffff      jmp     nt!IoSetIoCompletionEx2+0x364 (fffff803`d98b21f4)

nt!IoSetIoCompletionEx2+0x4d2:
fffff803`d98b2362 8b4328          mov     eax,dword ptr [rbx+28h]
fffff803`d98b2365 3b432c          cmp     eax,dword ptr [rbx+2Ch]
fffff803`d98b2368 0f83f5fbffff    jae     nt!IoSetIoCompletionEx2+0xd3 (fffff803`d98b1f63)

nt!IoSetIoCompletionEx2+0x4de:
fffff803`d98b236e 488b81e8000000  mov     rax,qword ptr [rcx+0E8h]
fffff803`d98b2375 483bc3          cmp     rax,rbx
fffff803`d98b2378 750d            jne     nt!IoSetIoCompletionEx2+0x4f7 (fffff803`d98b2387)

nt!IoSetIoCompletionEx2+0x4ea:
fffff803`d98b237a 80b9830200000f  cmp     byte ptr [rcx+283h],0Fh
fffff803`d98b2381 0f84dcfbffff    je      nt!IoSetIoCompletionEx2+0xd3 (fffff803`d98b1f63)

nt!IoSetIoCompletionEx2+0x4f7:
fffff803`d98b2387 4c8b6b10        mov     r13,qword ptr [rbx+10h]

nt!IoSetIoCompletionEx2+0x4fb:
fffff803`d98b238b 498bd5          mov     rdx,r13
fffff803`d98b238e 4d8b6d08        mov     r13,qword ptr [r13+8]
fffff803`d98b2392 4c8b02          mov     r8,qword ptr [rdx]
fffff803`d98b2395 49395008        cmp     qword ptr [r8+8],rdx
fffff803`d98b2399 752e            jne     nt!IoSetIoCompletionEx2+0x539 (fffff803`d98b23c9)

nt!IoSetIoCompletionEx2+0x50b:
fffff803`d98b239b 49395500        cmp     qword ptr [r13],rdx
fffff803`d98b239f 7528            jne     nt!IoSetIoCompletionEx2+0x539 (fffff803`d98b23c9)

nt!IoSetIoCompletionEx2+0x511:
fffff803`d98b23a1 4d894500        mov     qword ptr [r13],r8
fffff803`d98b23a5 4d896808        mov     qword ptr [r8+8],r13
fffff803`d98b23a9 4533c9          xor     r9d,r9d
fffff803`d98b23ac 4c8bc7          mov     r8,rdi
fffff803`d98b23af 498bce          mov     rcx,r14
fffff803`d98b23b2 e8e91e0700      call    nt!KiTryUnwaitThread (fffff803`d99242a0)
fffff803`d98b23b7 84c0            test    al,al
fffff803`d98b23b9 0f85d0fbffff    jne     nt!IoSetIoCompletionEx2+0xff (fffff803`d98b1f8f)

nt!IoSetIoCompletionEx2+0x52f:
fffff803`d98b23bf 4c3bed          cmp     r13,rbp
fffff803`d98b23c2 75c7            jne     nt!IoSetIoCompletionEx2+0x4fb (fffff803`d98b238b)

nt!IoSetIoCompletionEx2+0x534:
fffff803`d98b23c4 e99afbffff      jmp     nt!IoSetIoCompletionEx2+0xd3 (fffff803`d98b1f63)

nt!IoSetIoCompletionEx2+0x539:
fffff803`d98b23c9 b903000000      mov     ecx,3
fffff803`d98b23ce cd29            int     29h

nt!IoSetIoCompletionEx2+0x540:
fffff803`d98b23d0 b301            mov     bl,1
fffff803`d98b23d2 e9cbfbffff      jmp     nt!IoSetIoCompletionEx2+0x112 (fffff803`d98b1fa2)

nt!IoSetIoCompletionEx2+0x547:
fffff803`d98b23d7 f390            pause
fffff803`d98b23d9 e9ad781a00      jmp     nt! ?? ::FNODOBFM::`string'+0xb85b (fffff803`d9a59c8b)

nt!IoSetIoCompletionEx2+0x54e:
fffff803`d98b23de 458be0          mov     r12d,r8d
fffff803`d98b23e1 e9cafdffff      jmp     nt!IoSetIoCompletionEx2+0x320 (fffff803`d98b21b0)

nt!IoSetIoCompletionEx2+0x556:
fffff803`d98b23e6 884c2420        mov     byte ptr [rsp+20h],cl
fffff803`d98b23ea b201            mov     dl,1
fffff803`d98b23ec 4533c9          xor     r9d,r9d
fffff803`d98b23ef 498bce          mov     rcx,r14
fffff803`d98b23f2 e8558a0b00      call    nt!KiExitDispatcher (fffff803`d996ae4c)
fffff803`d98b23f7 e9e4fbffff      jmp     nt!IoSetIoCompletionEx2+0x150 (fffff803`d98b1fe0)

nt!IoSetIoCompletionEx+0x199:
fffff803`d98c5669 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff803`d98c566e 488b742470      mov     rsi,qword ptr [rsp+70h]
fffff803`d98c5673 8bc5            mov     eax,ebp
fffff803`d98c5675 488b6c2468      mov     rbp,qword ptr [rsp+68h]
fffff803`d98c567a 4883c430        add     rsp,30h
fffff803`d98c567e 415f            pop     r15
fffff803`d98c5680 415e            pop     r14
fffff803`d98c5682 415d            pop     r13
fffff803`d98c5684 415c            pop     r12
fffff803`d98c5686 5f              pop     rdi
fffff803`d98c5687 c3              ret

nt! ?? ::FNODOBFM::`string'+0xb798:
fffff803`d9a59bd0 41bf01000000    mov     r15d,1
fffff803`d9a59bd6 e93383e5ff      jmp     nt!IoSetIoCompletionEx2+0x7e (fffff803`d98b1f0e)

nt! ?? ::FNODOBFM::`string'+0xb7a3:
fffff803`d9a59bdb 488bd7          mov     rdx,rdi
fffff803`d9a59bde e89dcdfeff      call    nt!EtwTraceEnqueueWork (fffff803`d9a46980)
fffff803`d9a59be3 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff803`d9a59beb e95483e5ff      jmp     nt!IoSetIoCompletionEx2+0xb4 (fffff803`d98b1f44)

nt! ?? ::FNODOBFM::`string'+0xb7b8:
fffff803`d9a59bf0 8b057a441800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a59bf6 a840            test    al,40h
fffff803`d9a59bf8 0f84ab86e5ff    je      nt!IoSetIoCompletionEx2+0x420 (fffff803`d98b22a9)

nt! ?? ::FNODOBFM::`string'+0xb7c6:
fffff803`d9a59bfe 418bcd          mov     ecx,r13d
fffff803`d9a59c01 e8be57f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a59c06 90              nop
fffff803`d9a59c07 e99f86e5ff      jmp     nt!IoSetIoCompletionEx2+0x422 (fffff803`d98b22ab)

nt! ?? ::FNODOBFM::`string'+0xb7d4:
fffff803`d9a59c0c 488b08          mov     rcx,qword ptr [rax]
fffff803`d9a59c0f 48894708        mov     qword ptr [rdi+8],rax
fffff803`d9a59c13 48890f          mov     qword ptr [rdi],rcx
fffff803`d9a59c16 48394108        cmp     qword ptr [rcx+8],rax
fffff803`d9a59c1a 7407            je      nt! ?? ::FNODOBFM::`string'+0xb7ef (fffff803`d9a59c23)

nt! ?? ::FNODOBFM::`string'+0xb7e8:
fffff803`d9a59c1c b903000000      mov     ecx,3
fffff803`d9a59c21 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xb7ef:
fffff803`d9a59c23 48897908        mov     qword ptr [rcx+8],rdi
fffff803`d9a59c27 488938          mov     qword ptr [rax],rdi
fffff803`d9a59c2a e96083e5ff      jmp     nt!IoSetIoCompletionEx2+0xff (fffff803`d98b1f8f)

nt! ?? ::FNODOBFM::`string'+0xb7fb:
fffff803`d9a59c2f b903000000      mov     ecx,3
fffff803`d9a59c34 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xb802:
fffff803`d9a59c36 33d2            xor     edx,edx
fffff803`d9a59c38 498bce          mov     rcx,r14
fffff803`d9a59c3b e85058ecff      call    nt!KiDirectSwitchThread (fffff803`d991f490)
fffff803`d9a59c40 84c0            test    al,al
fffff803`d9a59c42 0f854084e5ff    jne     nt!IoSetIoCompletionEx2+0x1f8 (fffff803`d98b2088)

nt! ?? ::FNODOBFM::`string'+0xb814:
fffff803`d9a59c48 e9c283e5ff      jmp     nt!IoSetIoCompletionEx2+0x17f (fffff803`d98b200f)

nt! ?? ::FNODOBFM::`string'+0xb819:
fffff803`d9a59c4d 488b4f20        mov     rcx,qword ptr [rdi+20h]
fffff803`d9a59c51 48894c2438      mov     qword ptr [rsp+38h],rcx
fffff803`d9a59c56 f00fba2907      lock bts dword ptr [rcx],7
fffff803`d9a59c5b 7340            jae     nt! ?? ::FNODOBFM::`string'+0xb86d (fffff803`d9a59c9d)

nt! ?? ::FNODOBFM::`string'+0xb82d:
fffff803`d9a59c5d 448bee          mov     r13d,esi

nt! ?? ::FNODOBFM::`string'+0xb830:
fffff803`d9a59c60 41ffc5          inc     r13d
fffff803`d9a59c63 44852de2471800  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],r13d
fffff803`d9a59c6a 0f856787e5ff    jne     nt!IoSetIoCompletionEx2+0x547 (fffff803`d98b23d7)

nt! ?? ::FNODOBFM::`string'+0xb840:
fffff803`d9a59c70 8b05fa431800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a59c76 a840            test    al,40h
fffff803`d9a59c78 0f845987e5ff    je      nt!IoSetIoCompletionEx2+0x547 (fffff803`d98b23d7)

nt! ?? ::FNODOBFM::`string'+0xb84e:
fffff803`d9a59c7e 418bcd          mov     ecx,r13d
fffff803`d9a59c81 e83e57f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a59c86 488b4c2438      mov     rcx,qword ptr [rsp+38h]

nt! ?? ::FNODOBFM::`string'+0xb85b:
fffff803`d9a59c8b 8b01            mov     eax,dword ptr [rcx]
fffff803`d9a59c8d 84c0            test    al,al
fffff803`d9a59c8f 78cf            js      nt! ?? ::FNODOBFM::`string'+0xb830 (fffff803`d9a59c60)

nt! ?? ::FNODOBFM::`string'+0xb861:
fffff803`d9a59c91 f00fba2907      lock bts dword ptr [rcx],7
fffff803`d9a59c96 72c8            jb      nt! ?? ::FNODOBFM::`string'+0xb830 (fffff803`d9a59c60)

nt! ?? ::FNODOBFM::`string'+0xb868:
fffff803`d9a59c98 4c8b6c2440      mov     r13,qword ptr [rsp+40h]

nt! ?? ::FNODOBFM::`string'+0xb86d:
fffff803`d9a59c9d 0fb64711        movzx   eax,byte ptr [rdi+11h]
fffff803`d9a59ca1 3c02            cmp     al,2
fffff803`d9a59ca3 7519            jne     nt! ?? ::FNODOBFM::`string'+0xb89a (fffff803`d9a59cbe)

nt! ?? ::FNODOBFM::`string'+0xb879:
fffff803`d9a59ca5 488b17          mov     rdx,qword ptr [rdi]
fffff803`d9a59ca8 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`d9a59cac 48397a08        cmp     qword ptr [rdx+8],rdi
fffff803`d9a59cb0 752e            jne     nt! ?? ::FNODOBFM::`string'+0xb8bc (fffff803`d9a59ce0)

nt! ?? ::FNODOBFM::`string'+0xb88a:
fffff803`d9a59cb2 483938          cmp     qword ptr [rax],rdi
fffff803`d9a59cb5 7529            jne     nt! ?? ::FNODOBFM::`string'+0xb8bc (fffff803`d9a59ce0)

nt! ?? ::FNODOBFM::`string'+0xb893:
fffff803`d9a59cb7 488910          mov     qword ptr [rax],rdx
fffff803`d9a59cba 48894208        mov     qword ptr [rdx+8],rax

nt! ?? ::FNODOBFM::`string'+0xb89a:
fffff803`d9a59cbe f081217fffffff  lock and dword ptr [rcx],0FFFFFF7Fh
fffff803`d9a59cc5 e98683e5ff      jmp     nt!IoSetIoCompletionEx2+0x1c0 (fffff803`d98b2050)

nt! ?? ::FNODOBFM::`string'+0xb8a6:
fffff803`d9a59cca 4533c9          xor     r9d,r9d
fffff803`d9a59ccd 4533c0          xor     r8d,r8d
fffff803`d9a59cd0 b201            mov     dl,1
fffff803`d9a59cd2 488bcd          mov     rcx,rbp
fffff803`d9a59cd5 e8a6cbfeff      call    nt!EtwTraceReadyThread (fffff803`d9a46880)
fffff803`d9a59cda 90              nop
fffff803`d9a59cdb e99283e5ff      jmp     nt!IoSetIoCompletionEx2+0x1e2 (fffff803`d98b2072)

nt! ?? ::FNODOBFM::`string'+0xb8bc:
fffff803`d9a59ce0 b903000000      mov     ecx,3
fffff803`d9a59ce5 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xb8c3:
fffff803`d9a59ce7 8b0583431800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a59ced a840            test    al,40h
fffff803`d9a59cef 0f841e86e5ff    je      nt!IoSetIoCompletionEx2+0x48e (fffff803`d98b2313)

nt! ?? ::FNODOBFM::`string'+0xb8d1:
fffff803`d9a59cf5 8bcf            mov     ecx,edi
fffff803`d9a59cf7 e8c856f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a59cfc 90              nop
fffff803`d9a59cfd e91386e5ff      jmp     nt!IoSetIoCompletionEx2+0x490 (fffff803`d98b2315)

nt! ?? ::FNODOBFM::`string'+0xb8de:
fffff803`d9a59d02 418b8e1c530000  mov     ecx,dword ptr [r14+531Ch]
fffff803`d9a59d09 4803c8          add     rcx,rax
fffff803`d9a59d0c 0f84f083e5ff    je      nt!IoSetIoCompletionEx2+0x272 (fffff803`d98b2102)

nt! ?? ::FNODOBFM::`string'+0xb8ee:
fffff803`d9a59d12 4c0101          add     qword ptr [rcx],r8
fffff803`d9a59d15 e9e883e5ff      jmp     nt!IoSetIoCompletionEx2+0x272 (fffff803`d98b2102)

nt! ?? ::FNODOBFM::`string'+0xb8f6:
fffff803`d9a59d1a 488bcb          mov     rcx,rbx
fffff803`d9a59d1d e81eaffaff      call    nt!KiEndCounterAccumulation (fffff803`d9a04c40)
fffff803`d9a59d22 90              nop
fffff803`d9a59d23 e91184e5ff      jmp     nt!IoSetIoCompletionEx2+0x2a9 (fffff803`d98b2139)

nt! ?? ::FNODOBFM::`string'+0xb904:
fffff803`d9a59d28 b801000000      mov     eax,1
fffff803`d9a59d2d 440f22c0        mov     cr8,rax
fffff803`d9a59d31 816374fffeffff  and     dword ptr [rbx+74h],0FFFFFEFFh
fffff803`d9a59d38 4533c0          xor     r8d,r8d
fffff803`d9a59d3b 33d2            xor     edx,edx
fffff803`d9a59d3d 33c9            xor     ecx,ecx
fffff803`d9a59d3f e8ccb8efff      call    nt!KiDeliverApc (fffff803`d9955610)
fffff803`d9a59d44 90              nop
fffff803`d9a59d45 e98e82e5ff      jmp     nt!IoSetIoCompletionEx2+0x148 (fffff803`d98b1fd8)

nt! ?? ::FNODOBFM::`string'+0xb926:
fffff803`d9a59d4a 49397610        cmp     qword ptr [r14+10h],rsi
fffff803`d9a59d4e 0f848c82e5ff    je      nt!IoSetIoCompletionEx2+0x150 (fffff803`d98b1fe0)

nt! ?? ::FNODOBFM::`string'+0xb930:
fffff803`d9a59d54 410fb686da2d0000 movzx   eax,byte ptr [r14+2DDAh]
fffff803`d9a59d5c 84c0            test    al,al
fffff803`d9a59d5e 0f857c82e5ff    jne     nt!IoSetIoCompletionEx2+0x150 (fffff803`d98b1fe0)

nt! ?? ::FNODOBFM::`string'+0xb940:
fffff803`d9a59d64 41387620        cmp     byte ptr [r14+20h],sil
fffff803`d9a59d68 740a            je      nt! ?? ::FNODOBFM::`string'+0xb954 (fffff803`d9a59d74)

nt! ?? ::FNODOBFM::`string'+0xb94a:
fffff803`d9a59d6a 41c6460601      mov     byte ptr [r14+6],1
fffff803`d9a59d6f e96c82e5ff      jmp     nt!IoSetIoCompletionEx2+0x150 (fffff803`d98b1fe0)

nt! ?? ::FNODOBFM::`string'+0xb954:
fffff803`d9a59d74 b102            mov     cl,2
fffff803`d9a59d76 ff1554a61700    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`d9bd43d0)]
fffff803`d9a59d7c 90              nop
fffff803`d9a59d7d e95e82e5ff      jmp     nt!IoSetIoCompletionEx2+0x150 (fffff803`d98b1fe0)

nt! ?? ::FNODOBFM::`string'+0xb962:
fffff803`d9a59d82 488bd7          mov     rdx,rdi
fffff803`d9a59d85 488bcd          mov     rcx,rbp
fffff803`d9a59d88 e8f3cbfeff      call    nt!EtwTraceEnqueueWork (fffff803`d9a46980)
fffff803`d9a59d8d 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff803`d9a59d95 41b801000000    mov     r8d,1
fffff803`d9a59d9b e94684e5ff      jmp     nt!IoSetIoCompletionEx2+0x356 (fffff803`d98b21e6)

nt! ?? ::FNODOBFM::`string'+0xb980:
fffff803`d9a59da0 8b05ca421800    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a59da6 a840            test    al,40h
fffff803`d9a59da8 0f849285e5ff    je      nt!IoSetIoCompletionEx2+0x4b0 (fffff803`d98b2340)

nt! ?? ::FNODOBFM::`string'+0xb98e:
fffff803`d9a59dae 418bcd          mov     ecx,r13d
fffff803`d9a59db1 e80e56f9ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a59db6 90              nop
fffff803`d9a59db7 e98685e5ff      jmp     nt!IoSetIoCompletionEx2+0x4b2 (fffff803`d98b2342)

nt! ?? ::FNODOBFM::`string'+0xb99c:
fffff803`d9a59dbc 493bef          cmp     rbp,r15
fffff803`d9a59dbf 0f856284e5ff    jne     nt!IoSetIoCompletionEx2+0x397 (fffff803`d98b2227)

nt! ?? ::FNODOBFM::`string'+0xb9a5:
fffff803`d9a59dc5 e9fb84e5ff      jmp     nt!IoSetIoCompletionEx2+0x43c (fffff803`d98b22c5)

nt! ?? ::FNODOBFM::`string'+0xb9aa:
fffff803`d9a59dca b903000000      mov     ecx,3
fffff803`d9a59dcf cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xb9b1:
fffff803`d9a59dd1 488b10          mov     rdx,qword ptr [rax]
fffff803`d9a59dd4 48894708        mov     qword ptr [rdi+8],rax
fffff803`d9a59dd8 488917          mov     qword ptr [rdi],rdx
fffff803`d9a59ddb 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d9a59ddf 7407            je      nt! ?? ::FNODOBFM::`string'+0xb9cc (fffff803`d9a59de8)

nt! ?? ::FNODOBFM::`string'+0xb9c5:
fffff803`d9a59de1 b903000000      mov     ecx,3
fffff803`d9a59de6 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xb9cc:
fffff803`d9a59de8 48897a08        mov     qword ptr [rdx+8],rdi
fffff803`d9a59dec 488938          mov     qword ptr [rax],rdi
fffff803`d9a59def e97d84e5ff      jmp     nt!IoSetIoCompletionEx2+0x3e1 (fffff803`d98b2271)

nt! ?? ::FNODOBFM::`string'+0xb9d8:
fffff803`d9a59df4 b903000000      mov     ecx,3
fffff803`d9a59df9 cd29            int     29h
fffff803`d9a59dfb 90              nop
fffff803`d9a59dfc 90              nop
fffff803`d9a59dfd 90              nop
fffff803`d9a59dfe 90              nop
fffff803`d9a59dff 90              nop
fffff803`d9a59e00 bd9a0000c0      mov     ebp,0C000009Ah
fffff803`d9a59e05 e95fb8e6ff      jmp     nt!IoSetIoCompletionEx+0x199 (fffff803`d98c5669)
