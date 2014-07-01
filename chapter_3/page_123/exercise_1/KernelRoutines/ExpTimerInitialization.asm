0: kd> uf ExpTimerInitialization
nt!ExpTimerInitialization:
fffff800`1233862c 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`12338631 48897c2410      mov     qword ptr [rsp+10h],rdi
fffff800`12338636 55              push    rbp
fffff800`12338637 488d6c24a9      lea     rbp,[rsp-57h]
fffff800`1233863c 4881ecb0000000  sub     rsp,0B0h
fffff800`12338643 488d05260cbdff  lea     rax,[nt!ExpWakeTimerList (fffff800`11f09270)]
fffff800`1233864a 488d151ff10300  lea     rdx,[nt! ?? ::PBOPGDP::`string' (fffff800`12377770)]
fffff800`12338651 488d4dc7        lea     rcx,[rbp-39h]
fffff800`12338655 33db            xor     ebx,ebx
fffff800`12338657 4889051a0cbdff  mov     qword ptr [nt!ExpWakeTimerList+0x8 (fffff800`11f09278)],rax
fffff800`1233865e 4889050b0cbdff  mov     qword ptr [nt!ExpWakeTimerList (fffff800`11f09270)],rax
fffff800`12338665 48891d140cbdff  mov     qword ptr [nt!ExpWakeTimerLock (fffff800`11f09280)],rbx
fffff800`1233866c e8af469fff      call    nt!RtlInitUnicodeString (fffff800`11d2cd20)
fffff800`12338671 8d7b78          lea     edi,[rbx+78h]
fffff800`12338674 488d4dd7        lea     rcx,[rbp-29h]
fffff800`12338678 448bc7          mov     r8d,edi
fffff800`1233867b 33d2            xor     edx,edx
fffff800`1233867d e83ef49bff      call    nt!memset (fffff800`11cf7ac0)
fffff800`12338682 488d058374a3ff  lea     rax,[nt!ExpDeleteTimer (fffff800`11d6fb0c)]
fffff800`12338689 4c8d0d107dc9ff  lea     r9,[nt!ExTimerObjectType (fffff800`11fd03a0)]
fffff800`12338690 0f1005996bffff  movups  xmm0,xmmword ptr [nt!ExpTimerMapping (fffff800`1232f230)]
fffff800`12338697 488d55d7        lea     rdx,[rbp-29h]
fffff800`1233869b 488d4dc7        lea     rcx,[rbp-39h]
fffff800`1233869f 4533c0          xor     r8d,r8d
fffff800`123386a2 f30f7f45e3      movdqu  xmmword ptr [rbp-1Dh],xmm0
fffff800`123386a7 66897dd7        mov     word ptr [rbp-29h],di
fffff800`123386ab c745df00010000  mov     dword ptr [rbp-21h],100h
fffff800`123386b2 c745fb00020000  mov     dword ptr [rbp-5],200h
fffff800`123386b9 c7450338010000  mov     dword ptr [rbp+3],138h
fffff800`123386c0 c745f303001f00  mov     dword ptr [rbp-0Dh],1F0003h
fffff800`123386c7 4889451f        mov     qword ptr [rbp+1Fh],rax
fffff800`123386cb e8d0a6e3ff      call    nt!ObCreateObjectType (fffff800`12172da0)
fffff800`123386d0 85c0            test    eax,eax
fffff800`123386d2 7843            js      nt!ExpTimerInitialization+0xeb (fffff800`12338717)

nt!ExpTimerInitialization+0xa8:
fffff800`123386d4 488d15a5f00300  lea     rdx,[nt! ?? ::PBOPGDP::`string' (fffff800`12377780)]
fffff800`123386db 488d4dc7        lea     rcx,[rbp-39h]
fffff800`123386df e83c469fff      call    nt!RtlInitUnicodeString (fffff800`11d2cd20)
fffff800`123386e4 488d05954bb0ff  lea     rax,[nt!ExpCloseIRTimer (fffff800`11e3d280)]
fffff800`123386eb 4c8d0da67fc9ff  lea     r9,[nt!ExpIRTimerObjectType (fffff800`11fd0698)]
fffff800`123386f2 488d55d7        lea     rdx,[rbp-29h]
fffff800`123386f6 488d4dc7        lea     rcx,[rbp-39h]
fffff800`123386fa 4533c0          xor     r8d,r8d
fffff800`123386fd 48894517        mov     qword ptr [rbp+17h],rax
fffff800`12338701 c7450388000000  mov     dword ptr [rbp+3],88h
fffff800`12338708 48895d1f        mov     qword ptr [rbp+1Fh],rbx
fffff800`1233870c e88fa6e3ff      call    nt!ObCreateObjectType (fffff800`12172da0)
fffff800`12338711 85c0            test    eax,eax
fffff800`12338713 7802            js      nt!ExpTimerInitialization+0xeb (fffff800`12338717)

nt!ExpTimerInitialization+0xe9:
fffff800`12338715 b301            mov     bl,1

nt!ExpTimerInitialization+0xeb:
fffff800`12338717 4c8d9c24b0000000 lea     r11,[rsp+0B0h]
fffff800`1233871f 8ac3            mov     al,bl
fffff800`12338721 498b5b10        mov     rbx,qword ptr [r11+10h]
fffff800`12338725 498b7b18        mov     rdi,qword ptr [r11+18h]
fffff800`12338729 498be3          mov     rsp,r11
fffff800`1233872c 5d              pop     rbp
fffff800`1233872d c3              ret
