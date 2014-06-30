0: kd> uf MiInitializeLoadedModuleList
nt!MiInitializeLoadedModuleList:
fffff800`1236dc10 48895c2418      mov     qword ptr [rsp+18h],rbx
fffff800`1236dc15 48896c2420      mov     qword ptr [rsp+20h],rbp
fffff800`1236dc1a 56              push    rsi
fffff800`1236dc1b 57              push    rdi
fffff800`1236dc1c 4155            push    r13
fffff800`1236dc1e 4156            push    r14
fffff800`1236dc20 4157            push    r15
fffff800`1236dc22 4883ec20        sub     rsp,20h
fffff800`1236dc26 4c8bf1          mov     r14,rcx
fffff800`1236dc29 488d0d906dbdff  lea     rcx,[nt!PsLoadedModuleResource (fffff800`11f449c0)]
fffff800`1236dc30 4533ff          xor     r15d,r15d
fffff800`1236dc33 418bef          mov     ebp,r15d
fffff800`1236dc36 e8953a9cff      call    nt!ExInitializeResourceLite (fffff800`11d316d0)
fffff800`1236dc3b 488d059eb6b9ff  lea     rax,[nt!ExpCovUnloadedModuleList (fffff800`11f092e0)]
fffff800`1236dc42 33d2            xor     edx,edx
fffff800`1236dc44 4c8d2d556ebdff  lea     r13,[nt!PsLoadedModuleList (fffff800`11f44aa0)]
fffff800`1236dc4b 41b001          mov     r8b,1
fffff800`1236dc4e 8d4a7e          lea     ecx,[rdx+7Eh]
fffff800`1236dc51 4c893d98b6b9ff  mov     qword ptr [nt!ExpCovPushLock (fffff800`11f092f0)],r15
fffff800`1236dc58 48890589b6b9ff  mov     qword ptr [nt!ExpCovUnloadedModuleList+0x8 (fffff800`11f092e8)],rax
fffff800`1236dc5f 4c892d426ebdff  mov     qword ptr [nt!PsLoadedModuleList+0x8 (fffff800`11f44aa8)],r13
fffff800`1236dc66 4c892d336ebdff  mov     qword ptr [nt!PsLoadedModuleList (fffff800`11f44aa0)],r13
fffff800`1236dc6d 4889056cb6b9ff  mov     qword ptr [nt!ExpCovUnloadedModuleList (fffff800`11f092e0)],rax
fffff800`1236dc74 e8d352dfff      call    nt!NtSetDebugFilterState (fffff800`12162f4c)
fffff800`1236dc79 4983c610        add     r14,10h
fffff800`1236dc7d 498b3e          mov     rdi,qword ptr [r14]
fffff800`1236dc80 488bcf          mov     rcx,rdi
fffff800`1236dc83 e8b842fdff      call    nt!MiLocateKernelSections (fffff800`12341f40)

nt!MiInitializeLoadedModuleList+0x78:
fffff800`1236dc88 493bfe          cmp     rdi,r14
fffff800`1236dc8b 0f84b4010000    je      nt!MiInitializeLoadedModuleList+0x235 (fffff800`1236de45)

nt!MiInitializeLoadedModuleList+0x81:
fffff800`1236dc91 8b4f40          mov     ecx,dword ptr [rdi+40h]
fffff800`1236dc94 0fb7575a        movzx   edx,word ptr [rdi+5Ah]
fffff800`1236dc98 418bc7          mov     eax,r15d
fffff800`1236dc9b c1e90c          shr     ecx,0Ch
fffff800`1236dc9e 4881c2a2000000  add     rdx,0A2h
fffff800`1236dca5 41b84d6d4c64    mov     r8d,644C6D4Dh
fffff800`1236dcab f6c13f          test    cl,3Fh
fffff800`1236dcae 0f95c0          setne   al
fffff800`1236dcb1 c1e906          shr     ecx,6
fffff800`1236dcb4 03c8            add     ecx,eax
fffff800`1236dcb6 8d34cd10000000  lea     esi,[rcx*8+10h]
fffff800`1236dcbd b900020000      mov     ecx,200h
fffff800`1236dcc2 4803d6          add     rdx,rsi
fffff800`1236dcc5 e846a3b7ff      call    nt!ExAllocatePoolWithTag (fffff800`11ee8010)
fffff800`1236dcca 488bd8          mov     rbx,rax
fffff800`1236dccd 4885c0          test    rax,rax
fffff800`1236dcd0 0f84739c0100    je      nt! ?? ::PBOPGDP::`string'+0x71b7 (fffff800`12387949)

nt!MiInitializeLoadedModuleList+0xc6:
fffff800`1236dcd6 488bc8          mov     rcx,rax
fffff800`1236dcd9 488bd7          mov     rdx,rdi
fffff800`1236dcdc 41b8a0000000    mov     r8d,0A0h
fffff800`1236dce2 e819f595ff      call    nt!memcpy (fffff800`11ccd200)
fffff800`1236dce7 488b4b30        mov     rcx,qword ptr [rbx+30h]
fffff800`1236dceb 4c897b28        mov     qword ptr [rbx+28h],r15
fffff800`1236dcef 4c89bb90000000  mov     qword ptr [rbx+90h],r15
fffff800`1236dcf6 e89db79eff      call    nt!RtlImageNtHeader (fffff800`11d59498)
fffff800`1236dcfb 4c8bd8          mov     r11,rax
fffff800`1236dcfe 4885c0          test    rax,rax
fffff800`1236dd01 0f84059c0100    je      nt! ?? ::PBOPGDP::`string'+0x717a (fffff800`1238790c)

nt!MiInitializeLoadedModuleList+0xf7:
fffff800`1236dd07 8b4050          mov     eax,dword ptr [rax+50h]
fffff800`1236dd0a 898398000000    mov     dword ptr [rbx+98h],eax
fffff800`1236dd10 418b4308        mov     eax,dword ptr [r11+8]
fffff800`1236dd14 89839c000000    mov     dword ptr [rbx+9Ch],eax

nt!MiInitializeLoadedModuleList+0x10a:
fffff800`1236dd1a 0fb7574a        movzx   edx,word ptr [rdi+4Ah]
fffff800`1236dd1e b901000000      mov     ecx,1
fffff800`1236dd23 41b84d6d4454    mov     r8d,54446D4Dh
fffff800`1236dd29 4883c202        add     rdx,2
fffff800`1236dd2d e8dea2b7ff      call    nt!ExAllocatePoolWithTag (fffff800`11ee8010)
fffff800`1236dd32 488bc8          mov     rcx,rax
fffff800`1236dd35 48894350        mov     qword ptr [rbx+50h],rax
fffff800`1236dd39 4885c0          test    rax,rax
fffff800`1236dd3c 0f84fd9b0100    je      nt! ?? ::PBOPGDP::`string'+0x71ad (fffff800`1238793f)

nt!MiInitializeLoadedModuleList+0x132:
fffff800`1236dd42 440fb7434a      movzx   r8d,word ptr [rbx+4Ah]
fffff800`1236dd47 488d83a0000000  lea     rax,[rbx+0A0h]
fffff800`1236dd4e 4803c6          add     rax,rsi
fffff800`1236dd51 48894360        mov     qword ptr [rbx+60h],rax
fffff800`1236dd55 488b5750        mov     rdx,qword ptr [rdi+50h]
fffff800`1236dd59 e8a2f495ff      call    nt!memcpy (fffff800`11ccd200)
fffff800`1236dd5e 440fb7435a      movzx   r8d,word ptr [rbx+5Ah]
fffff800`1236dd63 488b5760        mov     rdx,qword ptr [rdi+60h]
fffff800`1236dd67 488b4b60        mov     rcx,qword ptr [rbx+60h]
fffff800`1236dd6b e890f495ff      call    nt!memcpy (fffff800`11ccd200)
fffff800`1236dd70 440fb75b58      movzx   r11d,word ptr [rbx+58h]
fffff800`1236dd75 488b4360        mov     rax,qword ptr [rbx+60h]
fffff800`1236dd79 49d1eb          shr     r11,1
fffff800`1236dd7c 488bcb          mov     rcx,rbx
fffff800`1236dd7f 6646893c58      mov     word ptr [rax+r11*2],r15w
fffff800`1236dd84 8b4340          mov     eax,dword ptr [rbx+40h]
fffff800`1236dd87 48c1e80c        shr     rax,0Ch
fffff800`1236dd8b 4803e8          add     rbp,rax
fffff800`1236dd8e e84925cbff      call    nt!MiCaptureImageExceptionValues (fffff800`120202dc)
fffff800`1236dd93 488bcb          mov     rcx,rbx
fffff800`1236dd96 e82523cbff      call    nt!ExCovAddInfoToLoaderEntry (fffff800`120200c0)
fffff800`1236dd9b 4c8b1d066dbdff  mov     r11,qword ptr [nt!PsLoadedModuleList+0x8 (fffff800`11f44aa8)]
fffff800`1236dda2 4c892b          mov     qword ptr [rbx],r13
fffff800`1236dda5 4c895b08        mov     qword ptr [rbx+8],r11
fffff800`1236dda9 4d392b          cmp     qword ptr [r11],r13
fffff800`1236ddac 0f85869b0100    jne     nt! ?? ::PBOPGDP::`string'+0x71a6 (fffff800`12387938)

nt!MiInitializeLoadedModuleList+0x1a2:
fffff800`1236ddb2 49891b          mov     qword ptr [r11],rbx
fffff800`1236ddb5 48891dec6cbdff  mov     qword ptr [nt!PsLoadedModuleList+0x8 (fffff800`11f44aa8)],rbx
fffff800`1236ddbc 8b5340          mov     edx,dword ptr [rbx+40h]
fffff800`1236ddbf 488b4b30        mov     rcx,qword ptr [rbx+30h]
fffff800`1236ddc3 e82c1692ff      call    nt!RtlInsertInvertedFunctionTable (fffff800`11c8f3f4)
fffff800`1236ddc8 488b7330        mov     rsi,qword ptr [rbx+30h]
fffff800`1236ddcc 483b352d24c6ff  cmp     rsi,qword ptr [nt!PsNtosImageBase (fffff800`11fd0200)]
fffff800`1236ddd3 7408            je      nt!MiInitializeLoadedModuleList+0x1cd (fffff800`1236dddd)

nt!MiInitializeLoadedModuleList+0x1c5:
fffff800`1236ddd5 488b3f          mov     rdi,qword ptr [rdi]
fffff800`1236ddd8 e9abfeffff      jmp     nt!MiInitializeLoadedModuleList+0x78 (fffff800`1236dc88)

nt!MiInitializeLoadedModuleList+0x1cd:
fffff800`1236dddd 488b0d6407b8ff  mov     rcx,qword ptr [nt!PsInvertedFunctionTable+0x18 (fffff800`11eee548)]
fffff800`1236dde4 8b5b40          mov     ebx,dword ptr [rbx+40h]
fffff800`1236dde7 44897c2450      mov     dword ptr [rsp+50h],r15d
fffff800`1236ddec 483bf1          cmp     rsi,rcx
fffff800`1236ddef 7212            jb      nt!MiInitializeLoadedModuleList+0x1f3 (fffff800`1236de03)

nt!MiInitializeLoadedModuleList+0x1e1:
fffff800`1236ddf1 8b055907b8ff    mov     eax,dword ptr [nt!PsInvertedFunctionTable+0x20 (fffff800`11eee550)]
fffff800`1236ddf7 4803c1          add     rax,rcx
fffff800`1236ddfa 483bf0          cmp     rsi,rax
fffff800`1236ddfd 0f821e9b0100    jb      nt! ?? ::PBOPGDP::`string'+0x718f (fffff800`12387921)

nt!MiInitializeLoadedModuleList+0x1f3:
fffff800`1236de03 4c8d442450      lea     r8,[rsp+50h]
fffff800`1236de08 488d542458      lea     rdx,[rsp+58h]
fffff800`1236de0d 488bce          mov     rcx,rsi
fffff800`1236de10 e89f8d9fff      call    nt!RtlpxLookupFunctionTable (fffff800`11d66bb4)
fffff800`1236de15 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff800`1236de1a 488bd0          mov     rdx,rax
fffff800`1236de1d 8b442450        mov     eax,dword ptr [rsp+50h]

nt!MiInitializeLoadedModuleList+0x211:
fffff800`1236de21 48890d2007b8ff  mov     qword ptr [nt!PsInvertedFunctionTable+0x18 (fffff800`11eee548)],rcx
fffff800`1236de28 488bce          mov     rcx,rsi
fffff800`1236de2b 4889150e07b8ff  mov     qword ptr [nt!PsInvertedFunctionTable+0x10 (fffff800`11eee540)],rdx
fffff800`1236de32 891d1807b8ff    mov     dword ptr [nt!PsInvertedFunctionTable+0x20 (fffff800`11eee550)],ebx
fffff800`1236de38 89051607b8ff    mov     dword ptr [nt!PsInvertedFunctionTable+0x24 (fffff800`11eee554)],eax
fffff800`1236de3e e895ada5ff      call    nt!RtlRemoveInvertedFunctionTable (fffff800`11dc8bd8)
fffff800`1236de43 eb90            jmp     nt!MiInitializeLoadedModuleList+0x1c5 (fffff800`1236ddd5)

nt!MiInitializeLoadedModuleList+0x235:
fffff800`1236de45 488d0d34bcc5ff  lea     rcx,[nt!MmSystemPtesWs (fffff800`11fc9a80)]
fffff800`1236de4c 4533c0          xor     r8d,r8d
fffff800`1236de4f 488bd5          mov     rdx,rbp
fffff800`1236de52 e8f9549cff      call    nt!MiChargeWsles (fffff800`11d33350)
fffff800`1236de57 e824000000      call    nt!MiBuildImportsForBootDrivers (fffff800`1236de80)
fffff800`1236de5c b801000000      mov     eax,1

nt!MiInitializeLoadedModuleList+0x251:
fffff800`1236de61 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff800`1236de66 488b6c2468      mov     rbp,qword ptr [rsp+68h]
fffff800`1236de6b 4883c420        add     rsp,20h
fffff800`1236de6f 415f            pop     r15
fffff800`1236de71 415e            pop     r14
fffff800`1236de73 415d            pop     r13
fffff800`1236de75 5f              pop     rdi
fffff800`1236de76 5e              pop     rsi
fffff800`1236de77 c3              ret

nt! ?? ::PBOPGDP::`string'+0x717a:
fffff800`1238790c 8b4340          mov     eax,dword ptr [rbx+40h]
fffff800`1238790f 4489bb9c000000  mov     dword ptr [rbx+9Ch],r15d
fffff800`12387916 898398000000    mov     dword ptr [rbx+98h],eax
fffff800`1238791c e9f963feff      jmp     nt!MiInitializeLoadedModuleList+0x10a (fffff800`1236dd1a)

nt! ?? ::PBOPGDP::`string'+0x718f:
fffff800`12387921 8b052d6cb6ff    mov     eax,dword ptr [nt!PsInvertedFunctionTable+0x24 (fffff800`11eee554)]
fffff800`12387927 488b15126cb6ff  mov     rdx,qword ptr [nt!PsInvertedFunctionTable+0x10 (fffff800`11eee540)]
fffff800`1238792e 48894c2458      mov     qword ptr [rsp+58h],rcx
fffff800`12387933 e9e964feff      jmp     nt!MiInitializeLoadedModuleList+0x211 (fffff800`1236de21)

nt! ?? ::PBOPGDP::`string'+0x71a6:
fffff800`12387938 b903000000      mov     ecx,3
fffff800`1238793d cd29            int     29h

nt! ?? ::PBOPGDP::`string'+0x71ad:
fffff800`1238793f 33d2            xor     edx,edx
fffff800`12387941 488bcb          mov     rcx,rbx
fffff800`12387944 e81718b6ff      call    nt!ExFreePoolWithTag (fffff800`11ee9160)

nt! ?? ::PBOPGDP::`string'+0x71b7:
fffff800`12387949 33c0            xor     eax,eax
fffff800`1238794b e91165feff      jmp     nt!MiInitializeLoadedModuleList+0x251 (fffff800`1236de61)
