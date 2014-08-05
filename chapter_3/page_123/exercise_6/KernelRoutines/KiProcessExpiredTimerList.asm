nt!KiProcessExpiredTimerList:
fffff803`21cf5010 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`21cf5015 55              push    rbp
fffff803`21cf5016 56              push    rsi
fffff803`21cf5017 57              push    rdi
fffff803`21cf5018 4154            push    r12
fffff803`21cf501a 4155            push    r13
fffff803`21cf501c 4156            push    r14
fffff803`21cf501e 4157            push    r15
fffff803`21cf5020 488d6c24d9      lea     rbp,[rsp-27h]
fffff803`21cf5025 4881ecf0000000  sub     rsp,0F0h
fffff803`21cf502c 488b0565ca1f00  mov     rax,qword ptr [nt!_security_cookie (fffff803`21ef1a98)]
fffff803`21cf5033 4833c4          xor     rax,rsp
fffff803`21cf5036 48894517        mov     qword ptr [rbp+17h],rax
fffff803`21cf503a 0fb63543502d00  movzx   esi,byte ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)]
fffff803`21cf5041 4c8be9          mov     r13,rcx
fffff803`21cf5044 488b4908        mov     rcx,qword ptr [rcx+8]
fffff803`21cf5048 4c8be2          mov     r12,rdx
fffff803`21cf504b 4889558f        mov     qword ptr [rbp-71h],rdx
fffff803`21cf504f 8b91e4010000    mov     edx,dword ptr [rcx+1E4h]
fffff803`21cf5055 40c0ee07        shr     sil,7
fffff803`21cf5059 4533f6          xor     r14d,r14d
fffff803`21cf505c f70522502d0000000200 test dword ptr [nt!PerfGlobalGroupMask+0x8 (fffff803`21fca088)],20000h
fffff803`21cf5066 89542444        mov     dword ptr [rsp+44h],edx
fffff803`21cf506a 44894c2448      mov     dword ptr [rsp+48h],r9d
fffff803`21cf506f 4c89442438      mov     qword ptr [rsp+38h],r8
fffff803`21cf5074 48894d9f        mov     qword ptr [rbp-61h],rcx
fffff803`21cf5078 0f85a2040000    jne     nt!KiProcessExpiredTimerList+0x523 (fffff803`21cf5520)

nt!KiProcessExpiredTimerList+0x6e:
fffff803`21cf507e 4532ff          xor     r15b,r15b

nt!KiProcessExpiredTimerList+0x71:
fffff803`21cf5081 44887c2430      mov     byte ptr [rsp+30h],r15b

nt!KiProcessExpiredTimerList+0x76:
fffff803`21cf5086 33db            xor     ebx,ebx
fffff803`21cf5088 4b871cf0        xchg    rbx,qword ptr [r8+r14*8]
fffff803`21cf508c 41ffc6          inc     r14d
fffff803`21cf508f 4885db          test    rbx,rbx
fffff803`21cf5092 7444            je      nt!KiProcessExpiredTimerList+0xc8 (fffff803`21cf50d8)

nt!KiProcessExpiredTimerList+0x84:
fffff803`21cf5094 33ff            xor     edi,edi
fffff803`21cf5096 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21cf509b 0f825c040000    jb      nt!KiProcessExpiredTimerList+0x500 (fffff803`21cf54fd)

nt!KiProcessExpiredTimerList+0x91:
fffff803`21cf50a1 4584ff          test    r15b,r15b
fffff803`21cf50a4 0f85b9741500    jne     nt! ?? ::FNODOBFM::`string'+0x15167 (fffff803`21e4c563)

nt!KiProcessExpiredTimerList+0x9a:
fffff803`21cf50aa 4d8d442408      lea     r8,[r12+8]
fffff803`21cf50af 488bd3          mov     rdx,rbx
fffff803`21cf50b2 498bcd          mov     rcx,r13
fffff803`21cf50b5 e816efffff      call    nt!KiTimerWaitTest (fffff803`21cf3fd0)
fffff803`21cf50ba 488bf8          mov     rdi,rax
fffff803`21cf50bd 488945a7        mov     qword ptr [rbp-59h],rax
fffff803`21cf50c1 4584ff          test    r15b,r15b
fffff803`21cf50c4 0f85dd741500    jne     nt! ?? ::FNODOBFM::`string'+0x151af (fffff803`21e4c5a7)

nt!KiProcessExpiredTimerList+0xba:
fffff803`21cf50ca 4885ff          test    rdi,rdi
fffff803`21cf50cd 0f85fc000000    jne     nt!KiProcessExpiredTimerList+0x1bf (fffff803`21cf51cf)

nt!KiProcessExpiredTimerList+0xc3:
fffff803`21cf50d3 4c8b442438      mov     r8,qword ptr [rsp+38h]

nt!KiProcessExpiredTimerList+0xc8:
fffff803`21cf50d8 443b742448      cmp     r14d,dword ptr [rsp+48h]
fffff803`21cf50dd 72a7            jb      nt!KiProcessExpiredTimerList+0x76 (fffff803`21cf5086)

nt!KiProcessExpiredTimerList+0xcf:
fffff803`21cf50df 4d8bb5882c0000  mov     r14,qword ptr [r13+2C88h]
fffff803`21cf50e6 4d85f6          test    r14,r14
fffff803`21cf50e9 0f84b9000000    je      nt!KiProcessExpiredTimerList+0x198 (fffff803`21cf51a8)

nt!KiProcessExpiredTimerList+0xdf:
fffff803`21cf50ef 49c785882c000000000000 mov qword ptr [r13+2C88h],0

nt!KiProcessExpiredTimerList+0xea:
fffff803`21cf50fa 410fb6866b010000 movzx   eax,byte ptr [r14+16Bh]
fffff803`21cf5102 498b5ef8        mov     rbx,qword ptr [r14-8]
fffff803`21cf5106 498db628ffffff  lea     rsi,[r14-0D8h]
fffff803`21cf510d 4d8b36          mov     r14,qword ptr [r14]
fffff803`21cf5110 488d3c40        lea     rdi,[rax+rax*2]
fffff803`21cf5114 48c1e704        shl     rdi,4
fffff803`21cf5118 4803fb          add     rdi,rbx

nt!KiProcessExpiredTimerList+0x10b:
fffff803`21cf511b 0fb64311        movzx   eax,byte ptr [rbx+11h]
fffff803`21cf511f 3c03            cmp     al,3
fffff803`21cf5121 7344            jae     nt!KiProcessExpiredTimerList+0x157 (fffff803`21cf5167)

nt!KiProcessExpiredTimerList+0x113:
fffff803`21cf5123 4c8b7b20        mov     r15,qword ptr [rbx+20h]
fffff803`21cf5127 4533e4          xor     r12d,r12d
fffff803`21cf512a f0410fba2f07    lock bts dword ptr [r15],7
fffff803`21cf5130 0f824a030000    jb      nt!KiProcessExpiredTimerList+0x470 (fffff803`21cf5480)

nt!KiProcessExpiredTimerList+0x126:
fffff803`21cf5136 0fb64311        movzx   eax,byte ptr [rbx+11h]
fffff803`21cf513a 3c02            cmp     al,2
fffff803`21cf513c 7521            jne     nt!KiProcessExpiredTimerList+0x14f (fffff803`21cf515f)

nt!KiProcessExpiredTimerList+0x12e:
fffff803`21cf513e 488b0b          mov     rcx,qword ptr [rbx]
fffff803`21cf5141 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`21cf5145 48395908        cmp     qword ptr [rcx+8],rbx
fffff803`21cf5149 0f8518030000    jne     nt!KiProcessExpiredTimerList+0x457 (fffff803`21cf5467)

nt!KiProcessExpiredTimerList+0x13f:
fffff803`21cf514f 483918          cmp     qword ptr [rax],rbx
fffff803`21cf5152 0f850f030000    jne     nt!KiProcessExpiredTimerList+0x457 (fffff803`21cf5467)

nt!KiProcessExpiredTimerList+0x148:
fffff803`21cf5158 488908          mov     qword ptr [rax],rcx
fffff803`21cf515b 48894108        mov     qword ptr [rcx+8],rax

nt!KiProcessExpiredTimerList+0x14f:
fffff803`21cf515f f04181277fffffff lock and dword ptr [r15],0FFFFFF7Fh

nt!KiProcessExpiredTimerList+0x157:
fffff803`21cf5167 4883c330        add     rbx,30h
fffff803`21cf516b 483bdf          cmp     rbx,rdi
fffff803`21cf516e 75ab            jne     nt!KiProcessExpiredTimerList+0x10b (fffff803`21cf511b)

nt!KiProcessExpiredTimerList+0x160:
fffff803`21cf5170 66c786360200000100 mov   word ptr [rsi+236h],1
fffff803`21cf5179 f705014f2d0000020000 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],200h
fffff803`21cf5183 0f85d7741500    jne     nt! ?? ::FNODOBFM::`string'+0x15268 (fffff803`21e4c660)

nt!KiProcessExpiredTimerList+0x179:
fffff803`21cf5189 8b4674          mov     eax,dword ptr [rsi+74h]
fffff803`21cf518c a801            test    al,1
fffff803`21cf518e 0f8451020000    je      nt!KiProcessExpiredTimerList+0x3d5 (fffff803`21cf53e5)

nt!KiProcessExpiredTimerList+0x184:
fffff803`21cf5194 488bd6          mov     rdx,rsi
fffff803`21cf5197 498bcd          mov     rcx,r13
fffff803`21cf519a e8b16c0000      call    nt!KiDeferredReadyThread (fffff803`21cfbe50)

nt!KiProcessExpiredTimerList+0x18f:
fffff803`21cf519f 4d85f6          test    r14,r14
fffff803`21cf51a2 0f8552ffffff    jne     nt!KiProcessExpiredTimerList+0xea (fffff803`21cf50fa)

nt!KiProcessExpiredTimerList+0x198:
fffff803`21cf51a8 488b4d17        mov     rcx,qword ptr [rbp+17h]
fffff803`21cf51ac 4833cc          xor     rcx,rsp
fffff803`21cf51af e80ce3fcff      call    nt!_security_check_cookie (fffff803`21cc34c0)
fffff803`21cf51b4 488b9c2448010000 mov     rbx,qword ptr [rsp+148h]
fffff803`21cf51bc 4881c4f0000000  add     rsp,0F0h
fffff803`21cf51c3 415f            pop     r15
fffff803`21cf51c5 415e            pop     r14
fffff803`21cf51c7 415d            pop     r13
fffff803`21cf51c9 415c            pop     r12
fffff803`21cf51cb 5f              pop     rdi
fffff803`21cf51cc 5e              pop     rsi
fffff803`21cf51cd 5d              pop     rbp
fffff803`21cf51ce c3              ret

nt!KiProcessExpiredTimerList+0x1bf:
fffff803`21cf51cf 4d8ba5882c0000  mov     r12,qword ptr [r13+2C88h]
fffff803`21cf51d6 4d85e4          test    r12,r12
fffff803`21cf51d9 0f8537010000    jne     nt!KiProcessExpiredTimerList+0x306 (fffff803`21cf5316)

nt!KiProcessExpiredTimerList+0x1cf:
fffff803`21cf51df 4084f6          test    sil,sil
fffff803`21cf51e2 0f851b010000    jne     nt!KiProcessExpiredTimerList+0x2f3 (fffff803`21cf5303)

nt!KiProcessExpiredTimerList+0x1d8:
fffff803`21cf51e8 488b5718        mov     rdx,qword ptr [rdi+18h]
fffff803`21cf51ec 4c8b658f        mov     r12,qword ptr [rbp-71h]
fffff803`21cf51f0 488bcf          mov     rcx,rdi
fffff803`21cf51f3 418b0424        mov     eax,dword ptr [r12]
fffff803`21cf51f7 48895587        mov     qword ptr [rbp-79h],rdx
fffff803`21cf51fb 8bd8            mov     ebx,eax
fffff803`21cf51fd 83e30f          and     ebx,0Fh
fffff803`21cf5200 ffc0            inc     eax
fffff803`21cf5202 41890424        mov     dword ptr [r12],eax
fffff803`21cf5206 48ffc3          inc     rbx
fffff803`21cf5209 4803db          add     rbx,rbx
fffff803`21cf520c 498914dc        mov     qword ptr [r12+rbx*8],rdx
fffff803`21cf5210 a12003000080f7ffff mov   eax,dword ptr [FFFFF78000000320h]
fffff803`21cf5219 418944dc08      mov     dword ptr [r12+rbx*8+8],eax
fffff803`21cf521e 41c7852053000000000000 mov dword ptr [r13+5320h],0
fffff803`21cf5229 458b4c240c      mov     r9d,dword ptr [r12+0Ch]
fffff803`21cf522e 458b442408      mov     r8d,dword ptr [r12+8]
fffff803`21cf5233 488b5720        mov     rdx,qword ptr [rdi+20h]
fffff803`21cf5237 ff5587          call    qword ptr [rbp-79h]
fffff803`21cf523a a12003000080f7ffff mov   eax,dword ptr [FFFFF78000000320h]
fffff803`21cf5243 488b4d9f        mov     rcx,qword ptr [rbp-61h]
fffff803`21cf5247 8b542444        mov     edx,dword ptr [rsp+44h]
fffff803`21cf524b 418944dc0c      mov     dword ptr [r12+rbx*8+0Ch],eax
fffff803`21cf5250 3b91e4010000    cmp     edx,dword ptr [rcx+1E4h]
fffff803`21cf5256 0f85c6731500    jne     nt! ?? ::FNODOBFM::`string'+0x1522a (fffff803`21e4c622)

nt!KiProcessExpiredTimerList+0x24c:
fffff803`21cf525c 4084f6          test    sil,sil
fffff803`21cf525f 0f846efeffff    je      nt!KiProcessExpiredTimerList+0xc3 (fffff803`21cf50d3)

nt!KiProcessExpiredTimerList+0x255:
fffff803`21cf5265 8b1d954e2d00    mov     ebx,dword ptr [nt!EtwpActiveSystemLoggers (fffff803`21fca100)]
fffff803`21cf526b 488d4587        lea     rax,[rbp-79h]
fffff803`21cf526f 48c7450f08000000 mov     qword ptr [rbp+0Fh],8
fffff803`21cf5277 0fbccb          bsf     ecx,ebx
fffff803`21cf527a 48894507        mov     qword ptr [rbp+7],rax
fffff803`21cf527e 894c2440        mov     dword ptr [rsp+40h],ecx
fffff803`21cf5282 0f844bfeffff    je      nt!KiProcessExpiredTimerList+0xc3 (fffff803`21cf50d3)

nt!KiProcessExpiredTimerList+0x278:
fffff803`21cf5288 4c8d3d910a2100  lea     r15,[nt!EtwpSystemLogger (fffff803`21f05d20)]
fffff803`21cf528f 4c8d254a092100  lea     r12,[nt!EtwpGroupMasks (fffff803`21f05be0)]

nt!KiProcessExpiredTimerList+0x286:
fffff803`21cf5296 8d43ff          lea     eax,[rbx-1]
fffff803`21cf5299 8bd1            mov     edx,ecx
fffff803`21cf529b 23d8            and     ebx,eax
fffff803`21cf529d 8bc1            mov     eax,ecx
fffff803`21cf529f 48c1e005        shl     rax,5
fffff803`21cf52a3 4903c4          add     rax,r12
fffff803`21cf52a6 7443            je      nt!KiProcessExpiredTimerList+0x2db (fffff803`21cf52eb)

nt!KiProcessExpiredTimerList+0x298:
fffff803`21cf52a8 8b4004          mov     eax,dword ptr [rax+4]
fffff803`21cf52ab 84c0            test    al,al
fffff803`21cf52ad 793c            jns     nt!KiProcessExpiredTimerList+0x2db (fffff803`21cf52eb)

nt!KiProcessExpiredTimerList+0x29f:
fffff803`21cf52af 410fb7448f02    movzx   eax,word ptr [r15+rcx*4+2]
fffff803`21cf52b5 410fb71497      movzx   edx,word ptr [r15+rdx*4]
fffff803`21cf52ba 488d4de7        lea     rcx,[rbp-19h]
fffff803`21cf52be 488d0cc1        lea     rcx,[rcx+rax*8]
fffff803`21cf52c2 41b9450f0000    mov     r9d,0F45h
fffff803`21cf52c8 41b802000000    mov     r8d,2
fffff803`21cf52ce 48894df7        mov     qword ptr [rbp-9],rcx
fffff803`21cf52d2 488d4df7        lea     rcx,[rbp-9]
fffff803`21cf52d6 48c745ff08000000 mov     qword ptr [rbp-1],8
fffff803`21cf52de c7442420020a4000 mov     dword ptr [rsp+20h],400A02h
fffff803`21cf52e6 e815800b00      call    nt!EtwpLogKernelEvent (fffff803`21dad300)

nt!KiProcessExpiredTimerList+0x2db:
fffff803`21cf52eb 0fbccb          bsf     ecx,ebx
fffff803`21cf52ee 75a6            jne     nt!KiProcessExpiredTimerList+0x286 (fffff803`21cf5296)

nt!KiProcessExpiredTimerList+0x2e0:
fffff803`21cf52f0 440fb67c2430    movzx   r15d,byte ptr [rsp+30h]
fffff803`21cf52f6 4c8b658f        mov     r12,qword ptr [rbp-71h]
fffff803`21cf52fa 894c2440        mov     dword ptr [rsp+40h],ecx
fffff803`21cf52fe e9d0fdffff      jmp     nt!KiProcessExpiredTimerList+0xc3 (fffff803`21cf50d3)

nt!KiProcessExpiredTimerList+0x2f3:
fffff803`21cf5303 488d4de7        lea     rcx,[rbp-19h]
fffff803`21cf5307 ba80000020      mov     edx,20000080h
fffff803`21cf530c e8db0c0a00      call    nt!EtwGetKernelTraceTimestamp (fffff803`21d95fec)
fffff803`21cf5311 e9d2feffff      jmp     nt!KiProcessExpiredTimerList+0x1d8 (fffff803`21cf51e8)

nt!KiProcessExpiredTimerList+0x306:
fffff803`21cf5316 49c785882c000000000000 mov qword ptr [r13+2C88h],0

nt!KiProcessExpiredTimerList+0x311:
fffff803`21cf5321 410fb684246b010000 movzx eax,byte ptr [r12+16Bh]
fffff803`21cf532a 498b5c24f8      mov     rbx,qword ptr [r12-8]
fffff803`21cf532f 498dbc2428ffffff lea     rdi,[r12-0D8h]
fffff803`21cf5337 4d8b2424        mov     r12,qword ptr [r12]
fffff803`21cf533b 488d0c40        lea     rcx,[rax+rax*2]
fffff803`21cf533f 48897daf        mov     qword ptr [rbp-51h],rdi
fffff803`21cf5343 48c1e104        shl     rcx,4
fffff803`21cf5347 4803cb          add     rcx,rbx
fffff803`21cf534a 48894d97        mov     qword ptr [rbp-69h],rcx

nt!KiProcessExpiredTimerList+0x33e:
fffff803`21cf534e 0fb64311        movzx   eax,byte ptr [rbx+11h]
fffff803`21cf5352 3c03            cmp     al,3
fffff803`21cf5354 7346            jae     nt!KiProcessExpiredTimerList+0x38c (fffff803`21cf539c)

nt!KiProcessExpiredTimerList+0x346:
fffff803`21cf5356 488b7b20        mov     rdi,qword ptr [rbx+20h]
fffff803`21cf535a 4533ff          xor     r15d,r15d
fffff803`21cf535d f00fba2f07      lock bts dword ptr [rdi],7
fffff803`21cf5362 0f8248010000    jb      nt!KiProcessExpiredTimerList+0x4a0 (fffff803`21cf54b0)

nt!KiProcessExpiredTimerList+0x358:
fffff803`21cf5368 0fb64311        movzx   eax,byte ptr [rbx+11h]
fffff803`21cf536c 3c02            cmp     al,2
fffff803`21cf536e 7525            jne     nt!KiProcessExpiredTimerList+0x385 (fffff803`21cf5395)

nt!KiProcessExpiredTimerList+0x360:
fffff803`21cf5370 488b0b          mov     rcx,qword ptr [rbx]
fffff803`21cf5373 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`21cf5377 48395908        cmp     qword ptr [rcx+8],rbx
fffff803`21cf537b 0f8526010000    jne     nt!KiProcessExpiredTimerList+0x497 (fffff803`21cf54a7)

nt!KiProcessExpiredTimerList+0x371:
fffff803`21cf5381 483918          cmp     qword ptr [rax],rbx
fffff803`21cf5384 0f851d010000    jne     nt!KiProcessExpiredTimerList+0x497 (fffff803`21cf54a7)

nt!KiProcessExpiredTimerList+0x37a:
fffff803`21cf538a 488908          mov     qword ptr [rax],rcx
fffff803`21cf538d 48894108        mov     qword ptr [rcx+8],rax
fffff803`21cf5391 488b4d97        mov     rcx,qword ptr [rbp-69h]

nt!KiProcessExpiredTimerList+0x385:
fffff803`21cf5395 f081277fffffff  lock and dword ptr [rdi],0FFFFFF7Fh

nt!KiProcessExpiredTimerList+0x38c:
fffff803`21cf539c 4883c330        add     rbx,30h
fffff803`21cf53a0 483bd9          cmp     rbx,rcx
fffff803`21cf53a3 75a9            jne     nt!KiProcessExpiredTimerList+0x33e (fffff803`21cf534e)

nt!KiProcessExpiredTimerList+0x395:
fffff803`21cf53a5 488b7daf        mov     rdi,qword ptr [rbp-51h]
fffff803`21cf53a9 66c787360200000100 mov   word ptr [rdi+236h],1
fffff803`21cf53b2 f705c84c2d0000020000 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],200h
fffff803`21cf53bc 0f8547721500    jne     nt! ?? ::FNODOBFM::`string'+0x15211 (fffff803`21e4c609)

nt!KiProcessExpiredTimerList+0x3b2:
fffff803`21cf53c2 488bd7          mov     rdx,rdi
fffff803`21cf53c5 498bcd          mov     rcx,r13
fffff803`21cf53c8 e85bfbffff      call    nt!KiReadyThread (fffff803`21cf4f28)
fffff803`21cf53cd 4d85e4          test    r12,r12
fffff803`21cf53d0 0f854bffffff    jne     nt!KiProcessExpiredTimerList+0x311 (fffff803`21cf5321)

nt!KiProcessExpiredTimerList+0x3c6:
fffff803`21cf53d6 488b7da7        mov     rdi,qword ptr [rbp-59h]
fffff803`21cf53da 440fb67c2430    movzx   r15d,byte ptr [rsp+30h]
fffff803`21cf53e0 e9fafdffff      jmp     nt!KiProcessExpiredTimerList+0x1cf (fffff803`21cf51df)

nt!KiProcessExpiredTimerList+0x3d5:
fffff803`21cf53e5 488b9eb8000000  mov     rbx,qword ptr [rsi+0B8h]
fffff803`21cf53ec 33ff            xor     edi,edi
fffff803`21cf53ee f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21cf53f3 0f82e0000000    jb      nt!KiProcessExpiredTimerList+0x4d0 (fffff803`21cf54d9)

nt!KiProcessExpiredTimerList+0x3e9:
fffff803`21cf53f9 8b8334020000    mov     eax,dword ptr [rbx+234h]
fffff803`21cf53ff a807            test    al,7
fffff803`21cf5401 756b            jne     nt!KiProcessExpiredTimerList+0x45e (fffff803`21cf546e)

nt!KiProcessExpiredTimerList+0x3f3:
fffff803`21cf5403 b808000000      mov     eax,8
fffff803`21cf5408 f00fc18334020000 lock xadd dword ptr [rbx+234h],eax
fffff803`21cf5410 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`21cf5417 c6868401000006  mov     byte ptr [rsi+184h],6
fffff803`21cf541e 4881c6d8000000  add     rsi,0D8h
fffff803`21cf5425 0f0d0d7c092500  prefetchw [nt!KiStackInSwapListHead (fffff803`21f45da8)]
fffff803`21cf542c 488b0575092500  mov     rax,qword ptr [nt!KiStackInSwapListHead (fffff803`21f45da8)]

nt!KiProcessExpiredTimerList+0x423:
fffff803`21cf5433 488906          mov     qword ptr [rsi],rax
fffff803`21cf5436 488bc8          mov     rcx,rax
fffff803`21cf5439 f0480fb13566092500 lock cmpxchg qword ptr [nt!KiStackInSwapListHead (fffff803`21f45da8)],rsi
fffff803`21cf5442 483bc1          cmp     rax,rcx
fffff803`21cf5445 75ec            jne     nt!KiProcessExpiredTimerList+0x423 (fffff803`21cf5433)

nt!KiProcessExpiredTimerList+0x437:
fffff803`21cf5447 4885c0          test    rax,rax
fffff803`21cf544a 0f854ffdffff    jne     nt!KiProcessExpiredTimerList+0x18f (fffff803`21cf519f)

nt!KiProcessExpiredTimerList+0x440:
fffff803`21cf5450 8d500a          lea     edx,[rax+0Ah]
fffff803`21cf5453 488d0d26092500  lea     rcx,[nt!KiSwapEvent (fffff803`21f45d80)]
fffff803`21cf545a 4533c0          xor     r8d,r8d
fffff803`21cf545d e81e3a0100      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21cf5462 e938fdffff      jmp     nt!KiProcessExpiredTimerList+0x18f (fffff803`21cf519f)

nt!KiProcessExpiredTimerList+0x457:
fffff803`21cf5467 b903000000      mov     ecx,3
fffff803`21cf546c cd29            int     29h

nt!KiProcessExpiredTimerList+0x45e:
fffff803`21cf546e 488bd3          mov     rdx,rbx
fffff803`21cf5471 488bce          mov     rcx,rsi
fffff803`21cf5474 e85740f9ff      call    nt!KiRequestProcessInSwap (fffff803`21c894d0)
fffff803`21cf5479 e921fdffff      jmp     nt!KiProcessExpiredTimerList+0x18f (fffff803`21cf519f)

nt!KiProcessExpiredTimerList+0x470:
fffff803`21cf5480 41ffc4          inc     r12d
fffff803`21cf5483 448525c24f2d00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r12d
fffff803`21cf548a 0f84b4711500    je      nt! ?? ::FNODOBFM::`string'+0x1524c (fffff803`21e4c644)

nt!KiProcessExpiredTimerList+0x480:
fffff803`21cf5490 f390            pause

nt!KiProcessExpiredTimerList+0x482:
fffff803`21cf5492 418b07          mov     eax,dword ptr [r15]
fffff803`21cf5495 84c0            test    al,al
fffff803`21cf5497 78e7            js      nt!KiProcessExpiredTimerList+0x470 (fffff803`21cf5480)

nt!KiProcessExpiredTimerList+0x489:
fffff803`21cf5499 f0410fba2f07    lock bts dword ptr [r15],7
fffff803`21cf549f 0f8391fcffff    jae     nt!KiProcessExpiredTimerList+0x126 (fffff803`21cf5136)

nt!KiProcessExpiredTimerList+0x495:
fffff803`21cf54a5 ebd9            jmp     nt!KiProcessExpiredTimerList+0x470 (fffff803`21cf5480)

nt!KiProcessExpiredTimerList+0x497:
fffff803`21cf54a7 b903000000      mov     ecx,3
fffff803`21cf54ac cd29            int     29h
fffff803`21cf54ae 6690            xchg    ax,ax

nt!KiProcessExpiredTimerList+0x4a0:
fffff803`21cf54b0 41ffc7          inc     r15d
fffff803`21cf54b3 44853d924f2d00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r15d
fffff803`21cf54ba 0f842d711500    je      nt! ?? ::FNODOBFM::`string'+0x151f5 (fffff803`21e4c5ed)

nt!KiProcessExpiredTimerList+0x4b0:
fffff803`21cf54c0 f390            pause

nt!KiProcessExpiredTimerList+0x4b2:
fffff803`21cf54c2 8b07            mov     eax,dword ptr [rdi]
fffff803`21cf54c4 84c0            test    al,al
fffff803`21cf54c6 78e8            js      nt!KiProcessExpiredTimerList+0x4a0 (fffff803`21cf54b0)

nt!KiProcessExpiredTimerList+0x4b8:
fffff803`21cf54c8 f00fba2f07      lock bts dword ptr [rdi],7
fffff803`21cf54cd 72e1            jb      nt!KiProcessExpiredTimerList+0x4a0 (fffff803`21cf54b0)

nt!KiProcessExpiredTimerList+0x4bf:
fffff803`21cf54cf 488b4d97        mov     rcx,qword ptr [rbp-69h]
fffff803`21cf54d3 e990feffff      jmp     nt!KiProcessExpiredTimerList+0x358 (fffff803`21cf5368)

nt!KiProcessExpiredTimerList+0x4d0:
fffff803`21cf54d9 ffc7            inc     edi
fffff803`21cf54db 853d6b4f2d00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],edi
fffff803`21cf54e1 0f8492711500    je      nt! ?? ::FNODOBFM::`string'+0x15281 (fffff803`21e4c679)

nt!KiProcessExpiredTimerList+0x4de:
fffff803`21cf54e7 f390            pause

nt!KiProcessExpiredTimerList+0x4e0:
fffff803`21cf54e9 8b03            mov     eax,dword ptr [rbx]
fffff803`21cf54eb 84c0            test    al,al
fffff803`21cf54ed 78ea            js      nt!KiProcessExpiredTimerList+0x4d0 (fffff803`21cf54d9)

nt!KiProcessExpiredTimerList+0x4e6:
fffff803`21cf54ef f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21cf54f4 0f83fffeffff    jae     nt!KiProcessExpiredTimerList+0x3e9 (fffff803`21cf53f9)

nt!KiProcessExpiredTimerList+0x4f1:
fffff803`21cf54fa ebdd            jmp     nt!KiProcessExpiredTimerList+0x4d0 (fffff803`21cf54d9)

nt!KiProcessExpiredTimerList+0x500:
fffff803`21cf54fd ffc7            inc     edi
fffff803`21cf54ff 853d474f2d00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],edi
fffff803`21cf5505 0f843d701500    je      nt! ?? ::FNODOBFM::`string'+0x1514c (fffff803`21e4c548)

nt!KiProcessExpiredTimerList+0x50e:
fffff803`21cf550b f390            pause

nt!KiProcessExpiredTimerList+0x510:
fffff803`21cf550d 8b03            mov     eax,dword ptr [rbx]
fffff803`21cf550f 84c0            test    al,al
fffff803`21cf5511 78ea            js      nt!KiProcessExpiredTimerList+0x500 (fffff803`21cf54fd)

nt!KiProcessExpiredTimerList+0x516:
fffff803`21cf5513 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21cf5518 0f8383fbffff    jae     nt!KiProcessExpiredTimerList+0x91 (fffff803`21cf50a1)

nt!KiProcessExpiredTimerList+0x521:
fffff803`21cf551e ebdd            jmp     nt!KiProcessExpiredTimerList+0x500 (fffff803`21cf54fd)

nt!KiProcessExpiredTimerList+0x523:
fffff803`21cf5520 41b701          mov     r15b,1
fffff803`21cf5523 e959fbffff      jmp     nt!KiProcessExpiredTimerList+0x71 (fffff803`21cf5081)

nt! ?? ::FNODOBFM::`string'+0x1514c:
fffff803`21e4c548 8b0522db1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4c54e a840            test    al,40h
fffff803`21e4c550 0f84b58feaff    je      nt!KiProcessExpiredTimerList+0x50e (fffff803`21cf550b)

nt! ?? ::FNODOBFM::`string'+0x1515a:
fffff803`21e4c556 8bcf            mov     ecx,edi
fffff803`21e4c558 e867eef8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e4c55d 90              nop
fffff803`21e4c55e e9aa8feaff      jmp     nt!KiProcessExpiredTimerList+0x510 (fffff803`21cf550d)

nt! ?? ::FNODOBFM::`string'+0x15167:
fffff803`21e4c563 488b4318        mov     rax,qword ptr [rbx+18h]
fffff803`21e4c567 488945c7        mov     qword ptr [rbp-39h],rax
fffff803`21e4c56b 488b05b6df1700  mov     rax,qword ptr [nt!KiWaitNever (fffff803`21fca528)]
fffff803`21e4c572 488b5330        mov     rdx,qword ptr [rbx+30h]
fffff803`21e4c576 4833d0          xor     rdx,rax
fffff803`21e4c579 8bc8            mov     ecx,eax
fffff803`21e4c57b 48d3c2          rol     rdx,cl
fffff803`21e4c57e 4833d3          xor     rdx,rbx
fffff803`21e4c581 480fca          bswap   rdx
fffff803`21e4c584 48331505e21700  xor     rdx,qword ptr [nt!KiWaitAlways (fffff803`21fca790)]
fffff803`21e4c58b 740d            je      nt! ?? ::FNODOBFM::`string'+0x151a2 (fffff803`21e4c59a)

nt! ?? ::FNODOBFM::`string'+0x15195:
fffff803`21e4c58d 488b4218        mov     rax,qword ptr [rdx+18h]
fffff803`21e4c591 488945d7        mov     qword ptr [rbp-29h],rax
fffff803`21e4c595 e9108beaff      jmp     nt!KiProcessExpiredTimerList+0x9a (fffff803`21cf50aa)

nt! ?? ::FNODOBFM::`string'+0x151a2:
fffff803`21e4c59a 48c745d700000000 mov     qword ptr [rbp-29h],0
fffff803`21e4c5a2 e9038beaff      jmp     nt!KiProcessExpiredTimerList+0x9a (fffff803`21cf50aa)

nt! ?? ::FNODOBFM::`string'+0x151af:
fffff803`21e4c5a7 48895dcf        mov     qword ptr [rbp-31h],rbx
fffff803`21e4c5ab 0fb64b01        movzx   ecx,byte ptr [rbx+1]
fffff803`21e4c5af 488d45c7        lea     rax,[rbp-39h]
fffff803`21e4c5b3 c0e902          shr     cl,2
fffff803`21e4c5b6 41b9510f0000    mov     r9d,0F51h
fffff803`21e4c5bc ba01000000      mov     edx,1
fffff803`21e4c5c1 884ddf          mov     byte ptr [rbp-21h],cl
fffff803`21e4c5c4 488d4db7        lea     rcx,[rbp-49h]
fffff803`21e4c5c8 41b800000240    mov     r8d,40020000h
fffff803`21e4c5ce 488945b7        mov     qword ptr [rbp-49h],rax
fffff803`21e4c5d2 48c745bf20000000 mov     qword ptr [rbp-41h],20h
fffff803`21e4c5da c744242002060000 mov     dword ptr [rsp+20h],602h
fffff803`21e4c5e2 e85915f6ff      call    nt!EtwTraceKernelEvent (fffff803`21dadb40)
fffff803`21e4c5e7 90              nop
fffff803`21e4c5e8 e9dd8aeaff      jmp     nt!KiProcessExpiredTimerList+0xba (fffff803`21cf50ca)

nt! ?? ::FNODOBFM::`string'+0x151f5:
fffff803`21e4c5ed 8b057dda1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4c5f3 a840            test    al,40h
fffff803`21e4c5f5 0f84c58eeaff    je      nt!KiProcessExpiredTimerList+0x4b0 (fffff803`21cf54c0)

nt! ?? ::FNODOBFM::`string'+0x15203:
fffff803`21e4c5fb 418bcf          mov     ecx,r15d
fffff803`21e4c5fe e8c1edf8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e4c603 90              nop
fffff803`21e4c604 e9b98eeaff      jmp     nt!KiProcessExpiredTimerList+0x4b2 (fffff803`21cf54c2)

nt! ?? ::FNODOBFM::`string'+0x15211:
fffff803`21e4c609 41b902000000    mov     r9d,2
fffff803`21e4c60f 4533c0          xor     r8d,r8d
fffff803`21e4c612 b201            mov     dl,1
fffff803`21e4c614 488bcf          mov     rcx,rdi
fffff803`21e4c617 e86462feff      call    nt!EtwTraceReadyThread (fffff803`21e32880)
fffff803`21e4c61c 90              nop
fffff803`21e4c61d e9a08deaff      jmp     nt!KiProcessExpiredTimerList+0x3b2 (fffff803`21cf53c2)

nt! ?? ::FNODOBFM::`string'+0x1522a:
fffff803`21e4c622 8b81e4010000    mov     eax,dword ptr [rcx+1E4h]
fffff803`21e4c628 4c8b4587        mov     r8,qword ptr [rbp-79h]
fffff803`21e4c62c 4c8bca          mov     r9,rdx
fffff803`21e4c62f ba05000000      mov     edx,5
fffff803`21e4c634 b9c7000000      mov     ecx,0C7h
fffff803`21e4c639 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21e4c63e e8fdfde7ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e4c643 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x1524c:
fffff803`21e4c644 8b0526da1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4c64a a840            test    al,40h
fffff803`21e4c64c 0f843e8eeaff    je      nt!KiProcessExpiredTimerList+0x480 (fffff803`21cf5490)

nt! ?? ::FNODOBFM::`string'+0x1525a:
fffff803`21e4c652 418bcc          mov     ecx,r12d
fffff803`21e4c655 e86aedf8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e4c65a 90              nop
fffff803`21e4c65b e9328eeaff      jmp     nt!KiProcessExpiredTimerList+0x482 (fffff803`21cf5492)

nt! ?? ::FNODOBFM::`string'+0x15268:
fffff803`21e4c660 41b902000000    mov     r9d,2
fffff803`21e4c666 4533c0          xor     r8d,r8d
fffff803`21e4c669 b201            mov     dl,1
fffff803`21e4c66b 488bce          mov     rcx,rsi
fffff803`21e4c66e e80d62feff      call    nt!EtwTraceReadyThread (fffff803`21e32880)
fffff803`21e4c673 90              nop
fffff803`21e4c674 e9108beaff      jmp     nt!KiProcessExpiredTimerList+0x179 (fffff803`21cf5189)

nt! ?? ::FNODOBFM::`string'+0x15281:
fffff803`21e4c679 8b05f1d91700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4c67f a840            test    al,40h
fffff803`21e4c681 0f84608eeaff    je      nt!KiProcessExpiredTimerList+0x4de (fffff803`21cf54e7)

nt! ?? ::FNODOBFM::`string'+0x1528f:
fffff803`21e4c687 8bcf            mov     ecx,edi
fffff803`21e4c689 e836edf8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e4c68e 90              nop
fffff803`21e4c68f e9558eeaff      jmp     nt!KiProcessExpiredTimerList+0x4e0 (fffff803`21cf54e9)
