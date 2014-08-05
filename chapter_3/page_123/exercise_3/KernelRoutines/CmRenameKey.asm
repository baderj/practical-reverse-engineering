0: kd> uf CmRenameKey
nt!CmRenameKey:
fffff803`d9db9894 488bc4          mov     rax,rsp
fffff803`d9db9897 48895818        mov     qword ptr [rax+18h],rbx
fffff803`d9db989b 48895010        mov     qword ptr [rax+10h],rdx
fffff803`d9db989f 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9db98a3 55              push    rbp
fffff803`d9db98a4 56              push    rsi
fffff803`d9db98a5 57              push    rdi
fffff803`d9db98a6 4154            push    r12
fffff803`d9db98a8 4155            push    r13
fffff803`d9db98aa 4156            push    r14
fffff803`d9db98ac 4157            push    r15
fffff803`d9db98ae 488d68a1        lea     rbp,[rax-5Fh]
fffff803`d9db98b2 4881ecc0000000  sub     rsp,0C0h
fffff803`d9db98b9 4533ed          xor     r13d,r13d
fffff803`d9db98bc 83c8ff          or      eax,0FFFFFFFFh
fffff803`d9db98bf 458ae0          mov     r12b,r8b
fffff803`d9db98c2 8945c3          mov     dword ptr [rbp-3Dh],eax
fffff803`d9db98c5 8945bb          mov     dword ptr [rbp-45h],eax
fffff803`d9db98c8 488bd9          mov     rbx,rcx
fffff803`d9db98cb 4c896daf        mov     qword ptr [rbp-51h],r13
fffff803`d9db98cf 4c896def        mov     qword ptr [rbp-11h],r13
fffff803`d9db98d3 4c896dd7        mov     qword ptr [rbp-29h],r13
fffff803`d9db98d7 4c896d0f        mov     qword ptr [rbp+0Fh],r13
fffff803`d9db98db 4c896ddf        mov     qword ptr [rbp-21h],r13
fffff803`d9db98df 4c896d17        mov     qword ptr [rbp+17h],r13
fffff803`d9db98e3 44896dcf        mov     dword ptr [rbp-31h],r13d
fffff803`d9db98e7 458afd          mov     r15b,r13b

nt!CmRenameKey+0x56:
fffff803`d9db98ea be01000000      mov     esi,1
fffff803`d9db98ef 4584ff          test    r15b,r15b
fffff803`d9db98f2 7466            je      nt!CmRenameKey+0xc6 (fffff803`d9db995a)

nt!CmRenameKey+0x60:
fffff803`d9db98f4 0f0d0d5d42dbff  prefetchw [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db98fb 488b055642dbff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db9902 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`d9db9906 488d48fe        lea     rcx,[rax-2]
fffff803`d9db990a f0480fb10d4542dbff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)],rcx
fffff803`d9db9913 740c            je      nt!CmRenameKey+0x8d (fffff803`d9db9921)

nt!CmRenameKey+0x81:
fffff803`d9db9915 488d0d3c42dbff  lea     rcx,[nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db991c e84f1ab7ff      call    nt!ExfReleaseRundownProtection (fffff803`d992b370)

nt!CmRenameKey+0x8d:
fffff803`d9db9921 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9db992a 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9db9931 ffc0            inc     eax
fffff803`d9db9933 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9db993a 6685c0          test    ax,ax
fffff803`d9db993d 751b            jne     nt!CmRenameKey+0xc6 (fffff803`d9db995a)

nt!CmRenameKey+0xab:
fffff803`d9db993f 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9db9946 483900          cmp     qword ptr [rax],rax
fffff803`d9db9949 740f            je      nt!CmRenameKey+0xc6 (fffff803`d9db995a)

nt!CmRenameKey+0xb7:
fffff803`d9db994b 664439a9e6010000 cmp     word ptr [rcx+1E6h],r13w
fffff803`d9db9953 7505            jne     nt!CmRenameKey+0xc6 (fffff803`d9db995a)

nt!CmRenameKey+0xc1:
fffff803`d9db9955 e8a63ebcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmRenameKey+0xc6:
fffff803`d9db995a 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9db9963 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9db996a 0f0d0de741dbff  prefetchw [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db9971 488b05e041dbff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db9978 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`d9db997c 488d4802        lea     rcx,[rax+2]
fffff803`d9db9980 f0480fb10dcf41dbff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)],rcx
fffff803`d9db9989 7414            je      nt!CmRenameKey+0x10b (fffff803`d9db999f)

nt!CmRenameKey+0xf7:
fffff803`d9db998b 488d0dc641dbff  lea     rcx,[nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db9992 e83969b8ff      call    nt!ExfAcquireRundownProtection (fffff803`d99402d0)
fffff803`d9db9997 84c0            test    al,al
fffff803`d9db9999 0f84c9010000    je      nt!CmRenameKey+0x2d4 (fffff803`d9db9b68)

nt!CmRenameKey+0x10b:
fffff803`d9db999f 488b7b08        mov     rdi,qword ptr [rbx+8]
fffff803`d9db99a3 33d2            xor     edx,edx
fffff803`d9db99a5 448afe          mov     r15b,sil
fffff803`d9db99a8 488bcf          mov     rcx,rdi
fffff803`d9db99ab 4d8bf5          mov     r14,r13
fffff803`d9db99ae 4c896dc7        mov     qword ptr [rbp-39h],r13
fffff803`d9db99b2 e895fef4ff      call    nt!CmRmIsKCBDeleted (fffff803`d9d0984c)
fffff803`d9db99b7 403ac6          cmp     al,sil
fffff803`d9db99ba 0f84950c0000    je      nt!CmRenameKey+0xdc1 (fffff803`d9dba655)

nt!CmRenameKey+0x12c:
fffff803`d9db99c0 4c8b4b38        mov     r9,qword ptr [rbx+38h]
fffff803`d9db99c4 4d85c9          test    r9,r9
fffff803`d9db99c7 7506            jne     nt!CmRenameKey+0x13b (fffff803`d9db99cf)

nt!CmRenameKey+0x135:
fffff803`d9db99c9 4c396b40        cmp     qword ptr [rbx+40h],r13
fffff803`d9db99cd 7436            je      nt!CmRenameKey+0x171 (fffff803`d9db9a05)

nt!CmRenameKey+0x13b:
fffff803`d9db99cf 488d45c7        lea     rax,[rbp-39h]
fffff803`d9db99d3 4533c0          xor     r8d,r8d
fffff803`d9db99d6 33d2            xor     edx,edx
fffff803`d9db99d8 4889442430      mov     qword ptr [rsp+30h],rax
fffff803`d9db99dd 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`d9db99e1 488bcb          mov     rcx,rbx
fffff803`d9db99e4 44886c2428      mov     byte ptr [rsp+28h],r13b
fffff803`d9db99e9 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9db99ee e84d26f3ff      call    nt!CmpSearchAddTrans (fffff803`d9cec040)
fffff803`d9db99f3 8bd8            mov     ebx,eax
fffff803`d9db99f5 85c0            test    eax,eax
fffff803`d9db99f7 0f88c6010000    js      nt!CmRenameKey+0x32f (fffff803`d9db9bc3)

nt!CmRenameKey+0x169:
fffff803`d9db99fd 4c8b75c7        mov     r14,qword ptr [rbp-39h]
fffff803`d9db9a01 488b5d67        mov     rbx,qword ptr [rbp+67h]

nt!CmRenameKey+0x171:
fffff803`d9db9a05 498bd6          mov     rdx,r14
fffff803`d9db9a08 488bcf          mov     rcx,rdi
fffff803`d9db9a0b e83cfef4ff      call    nt!CmRmIsKCBDeleted (fffff803`d9d0984c)
fffff803`d9db9a10 403ac6          cmp     al,sil
fffff803`d9db9a13 0f843c0c0000    je      nt!CmRenameKey+0xdc1 (fffff803`d9dba655)

nt!CmRenameKey+0x185:
fffff803`d9db9a19 8b4728          mov     eax,dword ptr [rdi+28h]
fffff803`d9db9a1c 488b7720        mov     rsi,qword ptr [rdi+20h]
fffff803`d9db9a20 488b1569161500  mov     rdx,qword ptr [nt!CmpMasterHive (fffff803`d9f0b090)]
fffff803`d9db9a27 448be8          mov     r13d,eax
fffff803`d9db9a2a 8945bf          mov     dword ptr [rbp-41h],eax
fffff803`d9db9a2d 41c1ed1f        shr     r13d,1Fh
fffff803`d9db9a31 44896da7        mov     dword ptr [rbp-59h],r13d
fffff803`d9db9a35 483bf2          cmp     rsi,rdx
fffff803`d9db9a38 0f840d0c0000    je      nt!CmRenameKey+0xdb7 (fffff803`d9dba64b)

nt!CmRenameKey+0x1aa:
fffff803`d9db9a3e 488b4748        mov     rax,qword ptr [rdi+48h]
fffff803`d9db9a42 4885c0          test    rax,rax
fffff803`d9db9a45 0f84000c0000    je      nt!CmRenameKey+0xdb7 (fffff803`d9dba64b)

nt!CmRenameKey+0x1b7:
fffff803`d9db9a4b 488b4820        mov     rcx,qword ptr [rax+20h]
fffff803`d9db9a4f 483bca          cmp     rcx,rdx
fffff803`d9db9a52 0f84f30b0000    je      nt!CmRenameKey+0xdb7 (fffff803`d9dba64b)

nt!CmRenameKey+0x1c4:
fffff803`d9db9a58 8b5028          mov     edx,dword ptr [rax+28h]
fffff803`d9db9a5b 41b904000000    mov     r9d,4
fffff803`d9db9a61 458ac4          mov     r8b,r12b
fffff803`d9db9a64 e8bb2c0000      call    nt!CmpCheckKeyAccess (fffff803`d9dbc724)
fffff803`d9db9a69 8bd8            mov     ebx,eax
fffff803`d9db9a6b 85c0            test    eax,eax
fffff803`d9db9a6d 0f884d010000    js      nt!CmRenameKey+0x32c (fffff803`d9db9bc0)

nt!CmRenameKey+0x1df:
fffff803`d9db9a73 8b55bf          mov     edx,dword ptr [rbp-41h]
fffff803`d9db9a76 458ac4          mov     r8b,r12b
fffff803`d9db9a79 488bce          mov     rcx,rsi
fffff803`d9db9a7c e8072d0000      call    nt!CmpDoAccessCheckOnSubtree (fffff803`d9dbc788)
fffff803`d9db9a81 8bd8            mov     ebx,eax
fffff803`d9db9a83 85c0            test    eax,eax
fffff803`d9db9a85 0f8835010000    js      nt!CmRenameKey+0x32c (fffff803`d9db9bc0)

nt!CmRenameKey+0x1f7:
fffff803`d9db9a8b 448b45bf        mov     r8d,dword ptr [rbp-41h]
fffff803`d9db9a8f 33db            xor     ebx,ebx
fffff803`d9db9a91 4d8bce          mov     r9,r14
fffff803`d9db9a94 8d4301          lea     eax,[rbx+1]
fffff803`d9db9a97 488bd6          mov     rdx,rsi
fffff803`d9db9a9a 488bcf          mov     rcx,rdi
fffff803`d9db9a9d 48895c2428      mov     qword ptr [rsp+28h],rbx
fffff803`d9db9aa2 89442420        mov     dword ptr [rsp+20h],eax
fffff803`d9db9aa6 e8694cecff      call    nt!CmpReportNotify (fffff803`d9c7e714)
fffff803`d9db9aab 4d85f6          test    r14,r14
fffff803`d9db9aae 0f85f7000000    jne     nt!CmRenameKey+0x317 (fffff803`d9db9bab)

nt!CmRenameKey+0x220:
fffff803`d9db9ab4 488d8ff0000000  lea     rcx,[rdi+0F0h]
fffff803`d9db9abb e82c09f9ff      call    nt!CmpTryAcquireIXLockExclusive (fffff803`d9d4a3ec)
fffff803`d9db9ac0 4533ed          xor     r13d,r13d
fffff803`d9db9ac3 84c0            test    al,al
fffff803`d9db9ac5 7547            jne     nt!CmRenameKey+0x27a (fffff803`d9db9b0e)

nt!CmRenameKey+0x233:
fffff803`d9db9ac7 4c8d45e7        lea     r8,[rbp-19h]
fffff803`d9db9acb 488d55b7        lea     rdx,[rbp-49h]
fffff803`d9db9acf e888cb0000      call    nt!CmpSnapshotTxOwnerArray (fffff803`d9dc665c)
fffff803`d9db9ad4 8bd8            mov     ebx,eax
fffff803`d9db9ad6 85c0            test    eax,eax
fffff803`d9db9ad8 0f88e5000000    js      nt!CmRenameKey+0x32f (fffff803`d9db9bc3)

nt!CmRenameKey+0x24a:
fffff803`d9db9ade e891c9f6ff      call    nt!CmpUnlockRegistry (fffff803`d9d26474)
fffff803`d9db9ae3 488b55e7        mov     rdx,qword ptr [rbp-19h]
fffff803`d9db9ae7 8b4db7          mov     ecx,dword ptr [rbp-49h]
fffff803`d9db9aea 4c8d4dcf        lea     r9,[rbp-31h]
fffff803`d9db9aee 4533c0          xor     r8d,r8d
fffff803`d9db9af1 e88a590000      call    nt!CmpRollbackTransactionArray (fffff803`d9dbf480)
fffff803`d9db9af6 8bd8            mov     ebx,eax
fffff803`d9db9af8 e8738aeaff      call    nt!CmpLockRegistryExclusive (fffff803`d9c62570)
fffff803`d9db9afd 85db            test    ebx,ebx
fffff803`d9db9aff 0f88be000000    js      nt!CmRenameKey+0x32f (fffff803`d9db9bc3)

nt!CmRenameKey+0x271:
fffff803`d9db9b05 488b5d67        mov     rbx,qword ptr [rbp+67h]
fffff803`d9db9b09 e9dcfdffff      jmp     nt!CmRenameKey+0x56 (fffff803`d9db98ea)

nt!CmRenameKey+0x27a:
fffff803`d9db9b0e 488d8f00010000  lea     rcx,[rdi+100h]
fffff803`d9db9b15 e8d208f9ff      call    nt!CmpTryAcquireIXLockExclusive (fffff803`d9d4a3ec)
fffff803`d9db9b1a 84c0            test    al,al
fffff803`d9db9b1c 74a9            je      nt!CmRenameKey+0x233 (fffff803`d9db9ac7)

nt!CmRenameKey+0x28a:
fffff803`d9db9b1e 488b5748        mov     rdx,qword ptr [rdi+48h]
fffff803`d9db9b22 488d8af0000000  lea     rcx,[rdx+0F0h]
fffff803`d9db9b29 e8be08f9ff      call    nt!CmpTryAcquireIXLockExclusive (fffff803`d9d4a3ec)
fffff803`d9db9b2e 84c0            test    al,al
fffff803`d9db9b30 7495            je      nt!CmRenameKey+0x233 (fffff803`d9db9ac7)

nt!CmRenameKey+0x29e:
fffff803`d9db9b32 488d8a00010000  lea     rcx,[rdx+100h]
fffff803`d9db9b39 e8ae08f9ff      call    nt!CmpTryAcquireIXLockExclusive (fffff803`d9d4a3ec)
fffff803`d9db9b3e 84c0            test    al,al
fffff803`d9db9b40 7485            je      nt!CmRenameKey+0x233 (fffff803`d9db9ac7)

nt!CmRenameKey+0x2ae:
fffff803`d9db9b42 8b5da7          mov     ebx,dword ptr [rbp-59h]

nt!CmRenameKey+0x2b1:
fffff803`d9db9b45 448b7dbf        mov     r15d,dword ptr [rbp-41h]
fffff803`d9db9b49 488bce          mov     rcx,rsi
fffff803`d9db9b4c 418bd7          mov     edx,r15d
fffff803`d9db9b4f ff5608          call    qword ptr [rsi+8]
fffff803`d9db9b52 4c8be0          mov     r12,rax
fffff803`d9db9b55 4885c0          test    rax,rax
fffff803`d9db9b58 0f857a030000    jne     nt!CmRenameKey+0x644 (fffff803`d9db9ed8)

nt!CmRenameKey+0x2ca:
fffff803`d9db9b5e bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d9db9b63 e91e0a0000      jmp     nt!CmRenameKey+0xcf2 (fffff803`d9dba586)

nt!CmRenameKey+0x2d4:
fffff803`d9db9b68 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9db9b71 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9db9b78 ffc0            inc     eax
fffff803`d9db9b7a 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9db9b81 6685c0          test    ax,ax
fffff803`d9db9b84 751b            jne     nt!CmRenameKey+0x30d (fffff803`d9db9ba1)

nt!CmRenameKey+0x2f2:
fffff803`d9db9b86 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9db9b8d 483900          cmp     qword ptr [rax],rax
fffff803`d9db9b90 740f            je      nt!CmRenameKey+0x30d (fffff803`d9db9ba1)

nt!CmRenameKey+0x2fe:
fffff803`d9db9b92 664439a9e6010000 cmp     word ptr [rcx+1E6h],r13w
fffff803`d9db9b9a 7505            jne     nt!CmRenameKey+0x30d (fffff803`d9db9ba1)

nt!CmRenameKey+0x308:
fffff803`d9db9b9c e85f3cbcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmRenameKey+0x30d:
fffff803`d9db9ba1 b8890100c0      mov     eax,0C0000189h
fffff803`d9db9ba6 e980000000      jmp     nt!CmRenameKey+0x397 (fffff803`d9db9c2b)

nt!CmRenameKey+0x317:
fffff803`d9db9bab 4c8db7c8000000  lea     r14,[rdi+0C8h]
fffff803`d9db9bb2 4d3936          cmp     qword ptr [r14],r14
fffff803`d9db9bb5 0f848b000000    je      nt!CmRenameKey+0x3b2 (fffff803`d9db9c46)

nt!CmRenameKey+0x327:
fffff803`d9db9bbb bb010019c0      mov     ebx,0C0190001h

nt!CmRenameKey+0x32c:
fffff803`d9db9bc0 4533ed          xor     r13d,r13d

nt!CmRenameKey+0x32f:
fffff803`d9db9bc3 0f0d0d8e3fdbff  prefetchw [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db9bca 488b05873fdbff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db9bd1 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`d9db9bd5 488d48fe        lea     rcx,[rax-2]
fffff803`d9db9bd9 f0480fb10d763fdbff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)],rcx
fffff803`d9db9be2 740c            je      nt!CmRenameKey+0x35c (fffff803`d9db9bf0)

nt!CmRenameKey+0x350:
fffff803`d9db9be4 488d0d6d3fdbff  lea     rcx,[nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9db9beb e88017b7ff      call    nt!ExfReleaseRundownProtection (fffff803`d992b370)

nt!CmRenameKey+0x35c:
fffff803`d9db9bf0 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9db9bf9 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9db9c00 ffc0            inc     eax
fffff803`d9db9c02 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9db9c09 6685c0          test    ax,ax
fffff803`d9db9c0c 751b            jne     nt!CmRenameKey+0x395 (fffff803`d9db9c29)

nt!CmRenameKey+0x37a:
fffff803`d9db9c0e 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9db9c15 483900          cmp     qword ptr [rax],rax
fffff803`d9db9c18 740f            je      nt!CmRenameKey+0x395 (fffff803`d9db9c29)

nt!CmRenameKey+0x386:
fffff803`d9db9c1a 664439a9e6010000 cmp     word ptr [rcx+1E6h],r13w
fffff803`d9db9c22 7505            jne     nt!CmRenameKey+0x395 (fffff803`d9db9c29)

nt!CmRenameKey+0x390:
fffff803`d9db9c24 e8d73bbcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmRenameKey+0x395:
fffff803`d9db9c29 8bc3            mov     eax,ebx

nt!CmRenameKey+0x397:
fffff803`d9db9c2b 488b9c2410010000 mov     rbx,qword ptr [rsp+110h]
fffff803`d9db9c33 4881c4c0000000  add     rsp,0C0h
fffff803`d9db9c3a 415f            pop     r15
fffff803`d9db9c3c 415e            pop     r14
fffff803`d9db9c3e 415d            pop     r13
fffff803`d9db9c40 415c            pop     r12
fffff803`d9db9c42 5f              pop     rdi
fffff803`d9db9c43 5e              pop     rsi
fffff803`d9db9c44 5d              pop     rbp
fffff803`d9db9c45 c3              ret

nt!CmRenameKey+0x3b2:
fffff803`d9db9c46 e815f8e6ff      call    nt!CmpAllocateUnitOfWork (fffff803`d9c29460)
fffff803`d9db9c4b 4c8be0          mov     r12,rax
fffff803`d9db9c4e 488945d7        mov     qword ptr [rbp-29h],rax
fffff803`d9db9c52 4885c0          test    rax,rax
fffff803`d9db9c55 0f84ef080000    je      nt!CmRenameKey+0xcb6 (fffff803`d9dba54a)

nt!CmRenameKey+0x3c7:
fffff803`d9db9c5b e800f8e6ff      call    nt!CmpAllocateUnitOfWork (fffff803`d9c29460)
fffff803`d9db9c60 4c8bf8          mov     r15,rax
fffff803`d9db9c63 488945df        mov     qword ptr [rbp-21h],rax
fffff803`d9db9c67 4885c0          test    rax,rax
fffff803`d9db9c6a 0f84da080000    je      nt!CmRenameKey+0xcb6 (fffff803`d9dba54a)

nt!CmRenameKey+0x3dc:
fffff803`d9db9c70 488b4748        mov     rax,qword ptr [rdi+48h]
fffff803`d9db9c74 498d4c2420      lea     rcx,[r12+20h]
fffff803`d9db9c79 4805c8000000    add     rax,0C8h
fffff803`d9db9c7f 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`d9db9c83 488901          mov     qword ptr [rcx],rax
fffff803`d9db9c86 48895108        mov     qword ptr [rcx+8],rdx
fffff803`d9db9c8a 483902          cmp     qword ptr [rdx],rax
fffff803`d9db9c8d 7407            je      nt!CmRenameKey+0x402 (fffff803`d9db9c96)

nt!CmRenameKey+0x3fb:
fffff803`d9db9c8f b903000000      mov     ecx,3
fffff803`d9db9c94 cd29            int     29h

nt!CmRenameKey+0x402:
fffff803`d9db9c96 48890a          mov     qword ptr [rdx],rcx
fffff803`d9db9c99 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9db9c9d 488b4f48        mov     rcx,qword ptr [rdi+48h]
fffff803`d9db9ca1 e8ba4feaff      call    nt!CmpReferenceKeyControlBlock (fffff803`d9c5ec60)
fffff803`d9db9ca6 4c8b5f48        mov     r11,qword ptr [rdi+48h]
fffff803`d9db9caa 4d895c2430      mov     qword ptr [r12+30h],r11
fffff803`d9db9caf 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9db9cb8 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9db9cbf 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`d9db9cc8 f00fba35af39dbff00 lock btr dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],0
fffff803`d9db9cd1 720c            jb      nt!CmRenameKey+0x44b (fffff803`d9db9cdf)

nt!CmRenameKey+0x43f:
fffff803`d9db9cd3 488d0da639dbff  lea     rcx,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9db9cda e841ddbcff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)

nt!CmRenameKey+0x44b:
fffff803`d9db9cdf 48891da239dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],rbx
fffff803`d9db9ce6 488b5dc7        mov     rbx,qword ptr [rbp-39h]
fffff803`d9db9cea 488b4318        mov     rax,qword ptr [rbx+18h]
fffff803`d9db9cee 4883c310        add     rbx,10h
fffff803`d9db9cf2 4989442408      mov     qword ptr [r12+8],rax
fffff803`d9db9cf7 49891c24        mov     qword ptr [r12],rbx
fffff803`d9db9cfb 483918          cmp     qword ptr [rax],rbx
fffff803`d9db9cfe 7407            je      nt!CmRenameKey+0x473 (fffff803`d9db9d07)

nt!CmRenameKey+0x46c:
fffff803`d9db9d00 b903000000      mov     ecx,3
fffff803`d9db9d05 cd29            int     29h

nt!CmRenameKey+0x473:
fffff803`d9db9d07 4c8920          mov     qword ptr [rax],r12
fffff803`d9db9d0a 4533ed          xor     r13d,r13d
fffff803`d9db9d0d 33c0            xor     eax,eax
fffff803`d9db9d0f 4c896308        mov     qword ptr [rbx+8],r12
fffff803`d9db9d13 8d4801          lea     ecx,[rax+1]
fffff803`d9db9d16 4c892d6b39dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],r13
fffff803`d9db9d1d f00fb10d5b39dbff lock cmpxchg dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],ecx
fffff803`d9db9d25 740e            je      nt!CmRenameKey+0x4a1 (fffff803`d9db9d35)

nt!CmRenameKey+0x493:
fffff803`d9db9d27 488d0d5239dbff  lea     rcx,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9db9d2e 8bd0            mov     edx,eax
fffff803`d9db9d30 e8f7d2bcff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!CmRenameKey+0x4a1:
fffff803`d9db9d35 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9db9d3e 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9db9d45 ffc0            inc     eax
fffff803`d9db9d47 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9db9d4e 6685c0          test    ax,ax
fffff803`d9db9d51 751b            jne     nt!CmRenameKey+0x4da (fffff803`d9db9d6e)

nt!CmRenameKey+0x4bf:
fffff803`d9db9d53 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9db9d5a 483900          cmp     qword ptr [rax],rax
fffff803`d9db9d5d 740f            je      nt!CmRenameKey+0x4da (fffff803`d9db9d6e)

nt!CmRenameKey+0x4cb:
fffff803`d9db9d5f 664439a9e6010000 cmp     word ptr [rcx+1E6h],r13w
fffff803`d9db9d67 7505            jne     nt!CmRenameKey+0x4da (fffff803`d9db9d6e)

nt!CmRenameKey+0x4d5:
fffff803`d9db9d69 e8923abcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmRenameKey+0x4da:
fffff803`d9db9d6e 488b45c7        mov     rax,qword ptr [rbp-39h]
fffff803`d9db9d72 4989442438      mov     qword ptr [r12+38h],rax
fffff803`d9db9d77 498b4e08        mov     rcx,qword ptr [r14+8]
fffff803`d9db9d7b 498d4720        lea     rax,[r15+20h]
fffff803`d9db9d7f 4c8930          mov     qword ptr [rax],r14
fffff803`d9db9d82 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9db9d86 4c3931          cmp     qword ptr [rcx],r14
fffff803`d9db9d89 7407            je      nt!CmRenameKey+0x4fe (fffff803`d9db9d92)

nt!CmRenameKey+0x4f7:
fffff803`d9db9d8b b903000000      mov     ecx,3
fffff803`d9db9d90 cd29            int     29h

nt!CmRenameKey+0x4fe:
fffff803`d9db9d92 488901          mov     qword ptr [rcx],rax
fffff803`d9db9d95 488bcf          mov     rcx,rdi
fffff803`d9db9d98 49894608        mov     qword ptr [r14+8],rax
fffff803`d9db9d9c e8bf4eeaff      call    nt!CmpReferenceKeyControlBlock (fffff803`d9c5ec60)
fffff803`d9db9da1 49897f30        mov     qword ptr [r15+30h],rdi
fffff803`d9db9da5 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9db9dae 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9db9db5 654c8b342588010000 mov   r14,qword ptr gs:[188h]
fffff803`d9db9dbe f00fba35b938dbff00 lock btr dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],0
fffff803`d9db9dc7 720c            jb      nt!CmRenameKey+0x541 (fffff803`d9db9dd5)

nt!CmRenameKey+0x535:
fffff803`d9db9dc9 488d0db038dbff  lea     rcx,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9db9dd0 e84bdcbcff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)

nt!CmRenameKey+0x541:
fffff803`d9db9dd5 4c8935ac38dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],r14
fffff803`d9db9ddc 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`d9db9de0 49891f          mov     qword ptr [r15],rbx
fffff803`d9db9de3 49894708        mov     qword ptr [r15+8],rax
fffff803`d9db9de7 483918          cmp     qword ptr [rax],rbx
fffff803`d9db9dea 7407            je      nt!CmRenameKey+0x55f (fffff803`d9db9df3)

nt!CmRenameKey+0x558:
fffff803`d9db9dec b903000000      mov     ecx,3
fffff803`d9db9df1 cd29            int     29h

nt!CmRenameKey+0x55f:
fffff803`d9db9df3 4c8938          mov     qword ptr [rax],r15
fffff803`d9db9df6 4c897b08        mov     qword ptr [rbx+8],r15
fffff803`d9db9dfa 33c0            xor     eax,eax
fffff803`d9db9dfc 8d5801          lea     ebx,[rax+1]
fffff803`d9db9dff 4c892d8238dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],r13
fffff803`d9db9e06 f00fb11d7238dbff lock cmpxchg dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],ebx
fffff803`d9db9e0e 740e            je      nt!CmRenameKey+0x58a (fffff803`d9db9e1e)

nt!CmRenameKey+0x57c:
fffff803`d9db9e10 488d0d6938dbff  lea     rcx,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9db9e17 8bd0            mov     edx,eax
fffff803`d9db9e19 e80ed2bcff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!CmRenameKey+0x58a:
fffff803`d9db9e1e 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9db9e27 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9db9e2e ffc0            inc     eax
fffff803`d9db9e30 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9db9e37 6685c0          test    ax,ax
fffff803`d9db9e3a 751b            jne     nt!CmRenameKey+0x5c3 (fffff803`d9db9e57)

nt!CmRenameKey+0x5a8:
fffff803`d9db9e3c 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9db9e43 483900          cmp     qword ptr [rax],rax
fffff803`d9db9e46 740f            je      nt!CmRenameKey+0x5c3 (fffff803`d9db9e57)

nt!CmRenameKey+0x5b4:
fffff803`d9db9e48 664439a9e6010000 cmp     word ptr [rcx+1E6h],r13w
fffff803`d9db9e50 7505            jne     nt!CmRenameKey+0x5c3 (fffff803`d9db9e57)

nt!CmRenameKey+0x5be:
fffff803`d9db9e52 e8a939bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmRenameKey+0x5c3:
fffff803`d9db9e57 4c8b75c7        mov     r14,qword ptr [rbp-39h]
fffff803`d9db9e5b 4533c0          xor     r8d,r8d
fffff803`d9db9e5e 498bd4          mov     rdx,r12
fffff803`d9db9e61 4d897738        mov     qword ptr [r15+38h],r14
fffff803`d9db9e65 488b4f48        mov     rcx,qword ptr [rdi+48h]
fffff803`d9db9e69 4881c1f0000000  add     rcx,0F0h
fffff803`d9db9e70 e8a3f7e6ff      call    nt!CmpLockIXLockExclusive (fffff803`d9c29618)
fffff803`d9db9e75 84c0            test    al,al
fffff803`d9db9e77 0f84c6060000    je      nt!CmRenameKey+0xcaf (fffff803`d9dba543)

nt!CmRenameKey+0x5e9:
fffff803`d9db9e7d 488b4f48        mov     rcx,qword ptr [rdi+48h]
fffff803`d9db9e81 b800010000      mov     eax,100h
fffff803`d9db9e86 448bc3          mov     r8d,ebx
fffff803`d9db9e89 4803c8          add     rcx,rax
fffff803`d9db9e8c 498bd4          mov     rdx,r12
fffff803`d9db9e8f e884f7e6ff      call    nt!CmpLockIXLockExclusive (fffff803`d9c29618)
fffff803`d9db9e94 84c0            test    al,al
fffff803`d9db9e96 0f84a7060000    je      nt!CmRenameKey+0xcaf (fffff803`d9dba543)

nt!CmRenameKey+0x608:
fffff803`d9db9e9c 488d8ff0000000  lea     rcx,[rdi+0F0h]
fffff803`d9db9ea3 4533c0          xor     r8d,r8d
fffff803`d9db9ea6 498bd7          mov     rdx,r15
fffff803`d9db9ea9 e86af7e6ff      call    nt!CmpLockIXLockExclusive (fffff803`d9c29618)
fffff803`d9db9eae 84c0            test    al,al
fffff803`d9db9eb0 0f848d060000    je      nt!CmRenameKey+0xcaf (fffff803`d9dba543)

nt!CmRenameKey+0x622:
fffff803`d9db9eb6 488d8f00010000  lea     rcx,[rdi+100h]
fffff803`d9db9ebd 448bc3          mov     r8d,ebx
fffff803`d9db9ec0 498bd7          mov     rdx,r15
fffff803`d9db9ec3 e850f7e6ff      call    nt!CmpLockIXLockExclusive (fffff803`d9c29618)
fffff803`d9db9ec8 84c0            test    al,al
fffff803`d9db9eca 0f8473060000    je      nt!CmRenameKey+0xcaf (fffff803`d9dba543)

nt!CmRenameKey+0x63c:
fffff803`d9db9ed0 895da7          mov     dword ptr [rbp-59h],ebx
fffff803`d9db9ed3 e96dfcffff      jmp     nt!CmRenameKey+0x2b1 (fffff803`d9db9b45)

nt!CmRenameKey+0x644:
fffff803`d9db9ed8 458bc7          mov     r8d,r15d
fffff803`d9db9edb 488bd0          mov     rdx,rax
fffff803`d9db9ede 488bce          mov     rcx,rsi
fffff803`d9db9ee1 e8d22ceaff      call    nt!CmpUpdateKeyNodeAccessBits (fffff803`d9c5cbb8)
fffff803`d9db9ee6 418b542410      mov     edx,dword ptr [r12+10h]
fffff803`d9db9eeb 488bce          mov     rcx,rsi
fffff803`d9db9eee ff5608          call    qword ptr [rsi+8]
fffff803`d9db9ef1 4c8be8          mov     r13,rax
fffff803`d9db9ef4 488945af        mov     qword ptr [rbp-51h],rax
fffff803`d9db9ef8 4885c0          test    rax,rax
fffff803`d9db9efb 750a            jne     nt!CmRenameKey+0x673 (fffff803`d9db9f07)

nt!CmRenameKey+0x669:
fffff803`d9db9efd bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d9db9f02 e97f060000      jmp     nt!CmRenameKey+0xcf2 (fffff803`d9dba586)

nt!CmRenameKey+0x673:
fffff803`d9db9f07 458b442410      mov     r8d,dword ptr [r12+10h]
fffff803`d9db9f0c 498bd5          mov     rdx,r13
fffff803`d9db9f0f 488bce          mov     rcx,rsi
fffff803`d9db9f12 e8a12ceaff      call    nt!CmpUpdateKeyNodeAccessBits (fffff803`d9c5cbb8)
fffff803`d9db9f17 4c8b456f        mov     r8,qword ptr [rbp+6Fh]
fffff803`d9db9f1b 4c8d4dff        lea     r9,[rbp-1]
fffff803`d9db9f1f 498bd5          mov     rdx,r13
fffff803`d9db9f22 488bce          mov     rcx,rsi
fffff803`d9db9f25 e86647f3ff      call    nt!CmpFindSubKeyByNameWithStatus (fffff803`d9cee690)
fffff803`d9db9f2a 8b55ff          mov     edx,dword ptr [rbp-1]
fffff803`d9db9f2d 83faff          cmp     edx,0FFFFFFFFh
fffff803`d9db9f30 7441            je      nt!CmRenameKey+0x6df (fffff803`d9db9f73)

nt!CmRenameKey+0x69e:
fffff803`d9db9f32 4533ed          xor     r13d,r13d
fffff803`d9db9f35 44382d240dd4ff  cmp     byte ptr [nt!CmpVEEnabled (fffff803`d9afac60)],r13b
fffff803`d9db9f3c 742b            je      nt!CmRenameKey+0x6d5 (fffff803`d9db9f69)

nt!CmRenameKey+0x6aa:
fffff803`d9db9f3e b900010000      mov     ecx,100h
fffff803`d9db9f43 66858fba000000  test    word ptr [rdi+0BAh],cx
fffff803`d9db9f4a 741d            je      nt!CmRenameKey+0x6d5 (fffff803`d9db9f69)

nt!CmRenameKey+0x6b8:
fffff803`d9db9f4c 488bce          mov     rcx,rsi
fffff803`d9db9f4f ff5608          call    qword ptr [rsi+8]
fffff803`d9db9f52 bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d9db9f57 48f7d8          neg     rax
fffff803`d9db9f5a 1bc9            sbb     ecx,ecx
fffff803`d9db9f5c 81e187000000    and     ecx,87h
fffff803`d9db9f62 03d9            add     ebx,ecx
fffff803`d9db9f64 e91d060000      jmp     nt!CmRenameKey+0xcf2 (fffff803`d9dba586)

nt!CmRenameKey+0x6d5:
fffff803`d9db9f69 bb210100c0      mov     ebx,0C0000121h
fffff803`d9db9f6e e913060000      jmp     nt!CmRenameKey+0xcf2 (fffff803`d9dba586)

nt!CmRenameKey+0x6df:
fffff803`d9db9f73 488b4d6f        mov     rcx,qword ptr [rbp+6Fh]
fffff803`d9db9f77 e84032ecff      call    nt!CmpNameSize (fffff803`d9c7d1bc)
fffff803`d9db9f7c 440fb7e8        movzx   r13d,ax
fffff803`d9db9f80 4d85f6          test    r14,r14
fffff803`d9db9f83 0f85d4000000    jne     nt!CmRenameKey+0x7c9 (fffff803`d9dba05d)

nt!CmRenameKey+0x6f5:
fffff803`d9db9f89 418b542410      mov     edx,dword ptr [r12+10h]
fffff803`d9db9f8e 4533c9          xor     r9d,r9d
fffff803`d9db9f91 4533c0          xor     r8d,r8d
fffff803`d9db9f94 488bce          mov     rcx,rsi
fffff803`d9db9f97 e87403edff      call    nt!HvpMarkCellDirty (fffff803`d9c8a310)
fffff803`d9db9f9c 84c0            test    al,al
fffff803`d9db9f9e 750a            jne     nt!CmRenameKey+0x716 (fffff803`d9db9faa)

nt!CmRenameKey+0x70c:
fffff803`d9db9fa0 bb7d0100c0      mov     ebx,0C000017Dh
fffff803`d9db9fa5 e916fcffff      jmp     nt!CmRenameKey+0x32c (fffff803`d9db9bc0)

nt!CmRenameKey+0x716:
fffff803`d9db9faa 418b542410      mov     edx,dword ptr [r12+10h]
fffff803`d9db9faf 458bc7          mov     r8d,r15d
fffff803`d9db9fb2 488bce          mov     rcx,rsi
fffff803`d9db9fb5 e83e3ceaff      call    nt!CmpMarkIndexDirty (fffff803`d9c5dbf8)
fffff803`d9db9fba 84c0            test    al,al
fffff803`d9db9fbc 74e2            je      nt!CmRenameKey+0x70c (fffff803`d9db9fa0)

nt!CmRenameKey+0x72a:
fffff803`d9db9fbe 4533c9          xor     r9d,r9d
fffff803`d9db9fc1 4533c0          xor     r8d,r8d
fffff803`d9db9fc4 418bd7          mov     edx,r15d
fffff803`d9db9fc7 488bce          mov     rcx,rsi
fffff803`d9db9fca e84103edff      call    nt!HvpMarkCellDirty (fffff803`d9c8a310)
fffff803`d9db9fcf 84c0            test    al,al
fffff803`d9db9fd1 74cd            je      nt!CmRenameKey+0x70c (fffff803`d9db9fa0)

nt!CmRenameKey+0x73f:
fffff803`d9db9fd3 4c8b75af        mov     r14,qword ptr [rbp-51h]
fffff803`d9db9fd7 4863c3          movsxd  rax,ebx
fffff803`d9db9fda 418b5c861c      mov     ebx,dword ptr [r14+rax*4+1Ch]
fffff803`d9db9fdf 895dbb          mov     dword ptr [rbp-45h],ebx
fffff803`d9db9fe2 83fbff          cmp     ebx,0FFFFFFFFh
fffff803`d9db9fe5 74b9            je      nt!CmRenameKey+0x70c (fffff803`d9db9fa0)

nt!CmRenameKey+0x753:
fffff803`d9db9fe7 4533c9          xor     r9d,r9d
fffff803`d9db9fea 4533c0          xor     r8d,r8d
fffff803`d9db9fed 8bd3            mov     edx,ebx
fffff803`d9db9fef 488bce          mov     rcx,rsi
fffff803`d9db9ff2 e81903edff      call    nt!HvpMarkCellDirty (fffff803`d9c8a310)
fffff803`d9db9ff7 4533f6          xor     r14d,r14d
fffff803`d9db9ffa 84c0            test    al,al
fffff803`d9db9ffc 74a2            je      nt!CmRenameKey+0x70c (fffff803`d9db9fa0)

nt!CmRenameKey+0x76a:
fffff803`d9db9ffe 8bd3            mov     edx,ebx
fffff803`d9dba000 488bce          mov     rcx,rsi
fffff803`d9dba003 ff5608          call    qword ptr [rsi+8]
fffff803`d9dba006 488bd8          mov     rbx,rax
fffff803`d9dba009 4885c0          test    rax,rax
fffff803`d9dba00c 750a            jne     nt!CmRenameKey+0x784 (fffff803`d9dba018)

nt!CmRenameKey+0x77a:
fffff803`d9dba00e bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d9dba013 e9a8fbffff      jmp     nt!CmRenameKey+0x32c (fffff803`d9db9bc0)

nt!CmRenameKey+0x784:
fffff803`d9dba018 b872690000      mov     eax,6972h
fffff803`d9dba01d 663903          cmp     word ptr [rbx],ax
fffff803`d9dba020 753b            jne     nt!CmRenameKey+0x7c9 (fffff803`d9dba05d)

nt!CmRenameKey+0x78e:
fffff803`d9dba022 458bfe          mov     r15d,r14d
fffff803`d9dba025 66443b7302      cmp     r14w,word ptr [rbx+2]
fffff803`d9dba02a 732d            jae     nt!CmRenameKey+0x7c5 (fffff803`d9dba059)

nt!CmRenameKey+0x798:
fffff803`d9dba02c 4c8d7304        lea     r14,[rbx+4]

nt!CmRenameKey+0x79c:
fffff803`d9dba030 418b16          mov     edx,dword ptr [r14]
fffff803`d9dba033 4533c9          xor     r9d,r9d
fffff803`d9dba036 4533c0          xor     r8d,r8d
fffff803`d9dba039 488bce          mov     rcx,rsi
fffff803`d9dba03c e8cf02edff      call    nt!HvpMarkCellDirty (fffff803`d9c8a310)
fffff803`d9dba041 84c0            test    al,al
fffff803`d9dba043 0f8457ffffff    je      nt!CmRenameKey+0x70c (fffff803`d9db9fa0)

nt!CmRenameKey+0x7b5:
fffff803`d9dba049 0fb74302        movzx   eax,word ptr [rbx+2]
fffff803`d9dba04d 41ffc7          inc     r15d
fffff803`d9dba050 4983c604        add     r14,4
fffff803`d9dba054 443bf8          cmp     r15d,eax
fffff803`d9dba057 72d7            jb      nt!CmRenameKey+0x79c (fffff803`d9dba030)

nt!CmRenameKey+0x7c5:
fffff803`d9dba059 448b7dbf        mov     r15d,dword ptr [rbp-41h]

nt!CmRenameKey+0x7c9:
fffff803`d9dba05d 4c6375a7        movsxd  r14,dword ptr [rbp-59h]
fffff803`d9dba061 4c8d4d07        lea     r9,[rbp+7]
fffff803`d9dba065 418d554c        lea     edx,[r13+4Ch]
fffff803`d9dba069 458bc6          mov     r8d,r14d
fffff803`d9dba06c 488bce          mov     rcx,rsi
fffff803`d9dba06f e84453ecff      call    nt!HvAllocateCell (fffff803`d9c7f3b8)
fffff803`d9dba074 8945c3          mov     dword ptr [rbp-3Dh],eax
fffff803`d9dba077 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d9dba07a 0f8420ffffff    je      nt!CmRenameKey+0x70c (fffff803`d9db9fa0)

nt!CmRenameKey+0x7ec:
fffff803`d9dba080 488b5d07        mov     rbx,qword ptr [rbp+7]
fffff803`d9dba084 498bd4          mov     rdx,r12
fffff803`d9dba087 41b84c000000    mov     r8d,4Ch
fffff803`d9dba08d 488bcb          mov     rcx,rbx
fffff803`d9dba090 e86b11b2ff      call    nt!memcpy (fffff803`d98db200)
fffff803`d9dba095 488b556f        mov     rdx,qword ptr [rbp+6Fh]
fffff803`d9dba099 488d4b4c        lea     rcx,[rbx+4Ch]
fffff803`d9dba09d e8be30ecff      call    nt!CmpCopyName (fffff803`d9c7d160)
fffff803`d9dba0a2 440fb7d8        movzx   r11d,ax
fffff803`d9dba0a6 488b456f        mov     rax,qword ptr [rbp+6Fh]
fffff803`d9dba0aa 6644895b48      mov     word ptr [rbx+48h],r11w
fffff803`d9dba0af 440fb728        movzx   r13d,word ptr [rax]
fffff803`d9dba0b3 44896df7        mov     dword ptr [rbp-9],r13d
fffff803`d9dba0b7 453bdd          cmp     r11d,r13d
fffff803`d9dba0ba 7307            jae     nt!CmRenameKey+0x82f (fffff803`d9dba0c3)

nt!CmRenameKey+0x828:
fffff803`d9dba0bc 66834b0220      or      word ptr [rbx+2],20h
fffff803`d9dba0c1 eb09            jmp     nt!CmRenameKey+0x838 (fffff803`d9dba0cc)

nt!CmRenameKey+0x82f:
fffff803`d9dba0c3 b9dfff0000      mov     ecx,0FFDFh
fffff803`d9dba0c8 66214b02        and     word ptr [rbx+2],cx

nt!CmRenameKey+0x838:
fffff803`d9dba0cc 33c9            xor     ecx,ecx
fffff803`d9dba0ce 48bb1400000080f7ffff mov rbx,0FFFFF78000000014h
fffff803`d9dba0d8 488b1b          mov     rbx,qword ptr [rbx]
fffff803`d9dba0db 4c8b4507        mov     r8,qword ptr [rbp+7]
fffff803`d9dba0df 48394dc7        cmp     qword ptr [rbp-39h],rcx
fffff803`d9dba0e3 49895804        mov     qword ptr [r8+4],rbx
fffff803`d9dba0e7 488bce          mov     rcx,rsi
fffff803`d9dba0ea 0f8560020000    jne     nt!CmRenameKey+0xabc (fffff803`d9dba350)

nt!CmRenameKey+0x85c:
fffff803`d9dba0f0 8b55bb          mov     edx,dword ptr [rbp-45h]
fffff803`d9dba0f3 458bc6          mov     r8d,r14d
fffff803`d9dba0f6 e8d53b0000      call    nt!CmpDuplicateIndex (fffff803`d9dbdcd0)
fffff803`d9dba0fb 488b55af        mov     rdx,qword ptr [rbp-51h]
fffff803`d9dba0ff 428944b21c      mov     dword ptr [rdx+r14*4+1Ch],eax
fffff803`d9dba104 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d9dba107 750a            jne     nt!CmRenameKey+0x87f (fffff803`d9dba113)

nt!CmRenameKey+0x875:
fffff803`d9dba109 bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d9dba10e 4533e4          xor     r12d,r12d
fffff803`d9dba111 eb2b            jmp     nt!CmRenameKey+0x8aa (fffff803`d9dba13e)

nt!CmRenameKey+0x87f:
fffff803`d9dba113 448b75c3        mov     r14d,dword ptr [rbp-3Dh]
fffff803`d9dba117 418b542410      mov     edx,dword ptr [r12+10h]
fffff803`d9dba11c 4533c9          xor     r9d,r9d
fffff803`d9dba11f 458bc6          mov     r8d,r14d
fffff803`d9dba122 488bce          mov     rcx,rsi
fffff803`d9dba125 e8fadbebff      call    nt!CmpAddSubKeyEx (fffff803`d9c77d24)
fffff803`d9dba12a 84c0            test    al,al
fffff803`d9dba12c 0f859c000000    jne     nt!CmRenameKey+0x93a (fffff803`d9dba1ce)

nt!CmRenameKey+0x89e:
fffff803`d9dba132 bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d9dba137 4533e4          xor     r12d,r12d

nt!CmRenameKey+0x8a6:
fffff803`d9dba13a 488b55af        mov     rdx,qword ptr [rbp-51h]

nt!CmRenameKey+0x8aa:
fffff803`d9dba13e 448b6da7        mov     r13d,dword ptr [rbp-59h]

nt!CmRenameKey+0x8ae:
fffff803`d9dba142 448b7dbb        mov     r15d,dword ptr [rbp-45h]
fffff803`d9dba146 83c8ff          or      eax,0FFFFFFFFh
fffff803`d9dba149 443bf8          cmp     r15d,eax
fffff803`d9dba14c 0f8412040000    je      nt!CmRenameKey+0xcd0 (fffff803`d9dba564)

nt!CmRenameKey+0x8be:
fffff803`d9dba152 4d63ed          movsxd  r13,r13d
fffff803`d9dba155 4c896df7        mov     qword ptr [rbp-9],r13
fffff803`d9dba159 428b54aa1c      mov     edx,dword ptr [rdx+r13*4+1Ch]
fffff803`d9dba15e 3bd0            cmp     edx,eax
fffff803`d9dba160 0f84f5030000    je      nt!CmRenameKey+0xcc7 (fffff803`d9dba55b)

nt!CmRenameKey+0x8d2:
fffff803`d9dba166 488bce          mov     rcx,rsi
fffff803`d9dba169 ff5608          call    qword ptr [rsi+8]
fffff803`d9dba16c 4c8bf0          mov     r14,rax
fffff803`d9dba16f 4885c0          test    rax,rax
fffff803`d9dba172 0f84e3030000    je      nt!CmRenameKey+0xcc7 (fffff803`d9dba55b)

nt!CmRenameKey+0x8e4:
fffff803`d9dba178 b872690000      mov     eax,6972h
fffff803`d9dba17d 66413906        cmp     word ptr [r14],ax
fffff803`d9dba181 7535            jne     nt!CmRenameKey+0x924 (fffff803`d9dba1b8)

nt!CmRenameKey+0x8ef:
fffff803`d9dba183 33c0            xor     eax,eax
fffff803`d9dba185 66413b4602      cmp     ax,word ptr [r14+2]
fffff803`d9dba18a 732c            jae     nt!CmRenameKey+0x924 (fffff803`d9dba1b8)

nt!CmRenameKey+0x8f8:
fffff803`d9dba18c 4d8d7e04        lea     r15,[r14+4]
fffff803`d9dba190 448d6801        lea     r13d,[rax+1]

nt!CmRenameKey+0x900:
fffff803`d9dba194 418b17          mov     edx,dword ptr [r15]
fffff803`d9dba197 488bce          mov     rcx,rsi
fffff803`d9dba19a e8495becff      call    nt!HvFreeCell (fffff803`d9c7fce8)
fffff803`d9dba19f 410fb74602      movzx   eax,word ptr [r14+2]
fffff803`d9dba1a4 4503e5          add     r12d,r13d
fffff803`d9dba1a7 4983c704        add     r15,4
fffff803`d9dba1ab 443be0          cmp     r12d,eax
fffff803`d9dba1ae 72e4            jb      nt!CmRenameKey+0x900 (fffff803`d9dba194)

nt!CmRenameKey+0x91c:
fffff803`d9dba1b0 4c8b6df7        mov     r13,qword ptr [rbp-9]
fffff803`d9dba1b4 448b7dbb        mov     r15d,dword ptr [rbp-45h]

nt!CmRenameKey+0x924:
fffff803`d9dba1b8 4c8b75af        mov     r14,qword ptr [rbp-51h]
fffff803`d9dba1bc 488bce          mov     rcx,rsi
fffff803`d9dba1bf 438b54ae1c      mov     edx,dword ptr [r14+r13*4+1Ch]
fffff803`d9dba1c4 e81f5becff      call    nt!HvFreeCell (fffff803`d9c7fce8)
fffff803`d9dba1c9 e991030000      jmp     nt!CmRenameKey+0xccb (fffff803`d9dba55f)

nt!CmRenameKey+0x93a:
fffff803`d9dba1ce 418b542410      mov     edx,dword ptr [r12+10h]
fffff803`d9dba1d3 458bc7          mov     r8d,r15d
fffff803`d9dba1d6 488bce          mov     rcx,rsi
fffff803`d9dba1d9 e84a6cecff      call    nt!CmpRemoveSubKey (fffff803`d9c80e28)
fffff803`d9dba1de 4533e4          xor     r12d,r12d
fffff803`d9dba1e1 84c0            test    al,al
fffff803`d9dba1e3 750a            jne     nt!CmRenameKey+0x95b (fffff803`d9dba1ef)

nt!CmRenameKey+0x951:
fffff803`d9dba1e5 bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d9dba1ea e94bffffff      jmp     nt!CmRenameKey+0x8a6 (fffff803`d9dba13a)

nt!CmRenameKey+0x95b:
fffff803`d9dba1ef 4c8b6750        mov     r12,qword ptr [rdi+50h]
fffff803`d9dba1f3 488b4d6f        mov     rcx,qword ptr [rbp+6Fh]
fffff803`d9dba1f7 488d557f        lea     rdx,[rbp+7Fh]
fffff803`d9dba1fb 4c8965ef        mov     qword ptr [rbp-11h],r12
fffff803`d9dba1ff e8ac46f3ff      call    nt!CmpGetNameControlBlock (fffff803`d9cee8b0)
fffff803`d9dba204 48894750        mov     qword ptr [rdi+50h],rax
fffff803`d9dba208 4885c0          test    rax,rax
fffff803`d9dba20b 0f8421ffffff    je      nt!CmRenameKey+0x89e (fffff803`d9dba132)

nt!CmRenameKey+0x97d:
fffff803`d9dba211 418bd6          mov     edx,r14d
fffff803`d9dba214 488bce          mov     rcx,rsi
fffff803`d9dba217 e8143c0000      call    nt!CmpUpdateParentForEachSon (fffff803`d9dbde30)
fffff803`d9dba21c 84c0            test    al,al
fffff803`d9dba21e 0f840effffff    je      nt!CmRenameKey+0x89e (fffff803`d9dba132)

nt!CmRenameKey+0x990:
fffff803`d9dba224 8b55bb          mov     edx,dword ptr [rbp-45h]
fffff803`d9dba227 488bce          mov     rcx,rsi
fffff803`d9dba22a ff5608          call    qword ptr [rsi+8]
fffff803`d9dba22d 4c8bf0          mov     r14,rax
fffff803`d9dba230 33c0            xor     eax,eax
fffff803`d9dba232 4d85f6          test    r14,r14
fffff803`d9dba235 0f84f7feffff    je      nt!CmRenameKey+0x89e (fffff803`d9dba132)

nt!CmRenameKey+0x9a7:
fffff803`d9dba23b b972690000      mov     ecx,6972h
fffff803`d9dba240 6641390e        cmp     word ptr [r14],cx
fffff803`d9dba244 753a            jne     nt!CmRenameKey+0x9ec (fffff803`d9dba280)

nt!CmRenameKey+0x9b2:
fffff803`d9dba246 448be0          mov     r12d,eax
fffff803`d9dba249 66413b4602      cmp     ax,word ptr [r14+2]
fffff803`d9dba24e 732c            jae     nt!CmRenameKey+0x9e8 (fffff803`d9dba27c)

nt!CmRenameKey+0x9bc:
fffff803`d9dba250 4d8d7e04        lea     r15,[r14+4]
fffff803`d9dba254 448d6801        lea     r13d,[rax+1]

nt!CmRenameKey+0x9c4:
fffff803`d9dba258 418b17          mov     edx,dword ptr [r15]
fffff803`d9dba25b 488bce          mov     rcx,rsi
fffff803`d9dba25e e8855aecff      call    nt!HvFreeCell (fffff803`d9c7fce8)
fffff803`d9dba263 410fb74602      movzx   eax,word ptr [r14+2]
fffff803`d9dba268 4503e5          add     r12d,r13d
fffff803`d9dba26b 4983c704        add     r15,4
fffff803`d9dba26f 443be0          cmp     r12d,eax
fffff803`d9dba272 72e4            jb      nt!CmRenameKey+0x9c4 (fffff803`d9dba258)

nt!CmRenameKey+0x9e0:
fffff803`d9dba274 448b6df7        mov     r13d,dword ptr [rbp-9]
fffff803`d9dba278 448b7dbf        mov     r15d,dword ptr [rbp-41h]

nt!CmRenameKey+0x9e8:
fffff803`d9dba27c 4c8b65ef        mov     r12,qword ptr [rbp-11h]

nt!CmRenameKey+0x9ec:
fffff803`d9dba280 8b55bb          mov     edx,dword ptr [rbp-45h]
fffff803`d9dba283 488bce          mov     rcx,rsi
fffff803`d9dba286 e85d5aecff      call    nt!HvFreeCell (fffff803`d9c7fce8)
fffff803`d9dba28b 418bd7          mov     edx,r15d
fffff803`d9dba28e 488bce          mov     rcx,rsi
fffff803`d9dba291 e8525aecff      call    nt!HvFreeCell (fffff803`d9c7fce8)
fffff803`d9dba296 8b55c3          mov     edx,dword ptr [rbp-3Dh]
fffff803`d9dba299 488b4f48        mov     rcx,qword ptr [rdi+48h]
fffff803`d9dba29d 895728          mov     dword ptr [rdi+28h],edx
fffff803`d9dba2a0 48899fa8000000  mov     qword ptr [rdi+0A8h],rbx
fffff803`d9dba2a7 e84426eaff      call    nt!CmpCleanUpSubKeyInfo (fffff803`d9c5c8f0)
fffff803`d9dba2ac 488b55af        mov     rdx,qword ptr [rbp-51h]
fffff803`d9dba2b0 8b4234          mov     eax,dword ptr [rdx+34h]
fffff803`d9dba2b3 0fb7c8          movzx   ecx,ax
fffff803`d9dba2b6 413bcd          cmp     ecx,r13d
fffff803`d9dba2b9 7311            jae     nt!CmRenameKey+0xa38 (fffff803`d9dba2cc)

nt!CmRenameKey+0xa27:
fffff803`d9dba2bb 6644896a34      mov     word ptr [rdx+34h],r13w
fffff803`d9dba2c0 488b4748        mov     rax,qword ptr [rdi+48h]
fffff803`d9dba2c4 664489a8b0000000 mov     word ptr [rax+0B0h],r13w

nt!CmRenameKey+0xa38:
fffff803`d9dba2cc 488bcf          mov     rcx,rdi
fffff803`d9dba2cf e87c0b0000      call    nt!CmpComputeKcbConvKey (fffff803`d9dbae50)
fffff803`d9dba2d4 4c8d5f10        lea     r11,[rdi+10h]
fffff803`d9dba2d8 8bd8            mov     ebx,eax
fffff803`d9dba2da 413b03          cmp     eax,dword ptr [r11]
fffff803`d9dba2dd 741e            je      nt!CmRenameKey+0xa69 (fffff803`d9dba2fd)

nt!CmRenameKey+0xa4b:
fffff803`d9dba2df 488b4f20        mov     rcx,qword ptr [rdi+20h]
fffff803`d9dba2e3 498bd3          mov     rdx,r11
fffff803`d9dba2e6 e8a538eaff      call    nt!CmpRemoveKeyHash (fffff803`d9c5db90)
fffff803`d9dba2eb 488b4f20        mov     rcx,qword ptr [rdi+20h]
fffff803`d9dba2ef 4533c0          xor     r8d,r8d
fffff803`d9dba2f2 498bd3          mov     rdx,r11
fffff803`d9dba2f5 41891b          mov     dword ptr [r11],ebx
fffff803`d9dba2f8 e8030c0000      call    nt!CmpInsertKeyHash (fffff803`d9dbaf00)

nt!CmRenameKey+0xa69:
fffff803`d9dba2fd 4533c0          xor     r8d,r8d
fffff803`d9dba300 488bcf          mov     rcx,rdi
fffff803`d9dba303 418d5003        lea     edx,[r8+3]
fffff803`d9dba307 e8948de7ff      call    nt!CmpSearchForOpenSubKeys (fffff803`d9c330a0)
fffff803`d9dba30c 498bcc          mov     rcx,r12
fffff803`d9dba30f e85cf6f0ff      call    nt!CmpDereferenceNameControlBlockWithLock (fffff803`d9cc9970)
fffff803`d9dba314 488b8fc0000000  mov     rcx,qword ptr [rdi+0C0h]
fffff803`d9dba31b 4533ed          xor     r13d,r13d
fffff803`d9dba31e 4885c9          test    rcx,rcx
fffff803`d9dba321 7413            je      nt!CmRenameKey+0xaa2 (fffff803`d9dba336)

nt!CmRenameKey+0xa8f:
fffff803`d9dba323 418d4501        lea     eax,[r13+1]
fffff803`d9dba327 483bc8          cmp     rcx,rax
fffff803`d9dba32a 740a            je      nt!CmRenameKey+0xaa2 (fffff803`d9dba336)

nt!CmRenameKey+0xa98:
fffff803`d9dba32c ba434d4e62      mov     edx,624E4D43h
fffff803`d9dba331 e82aced3ff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)

nt!CmRenameKey+0xaa2:
fffff803`d9dba336 498bc5          mov     rax,r13
fffff803`d9dba339 b901000000      mov     ecx,1
fffff803`d9dba33e 384d7f          cmp     byte ptr [rbp+7Fh],cl
fffff803`d9dba341 0f94c0          sete    al
fffff803`d9dba344 488987c0000000  mov     qword ptr [rdi+0C0h],rax
fffff803`d9dba34b e9eb010000      jmp     nt!CmRenameKey+0xca7 (fffff803`d9dba53b)

nt!CmRenameKey+0xabc:
fffff803`d9dba350 4c8b4f48        mov     r9,qword ptr [rdi+48h]
fffff803`d9dba354 8b55c3          mov     edx,dword ptr [rbp-3Dh]
fffff803`d9dba357 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9dba35c 4533e4          xor     r12d,r12d
fffff803`d9dba35f 4489642420      mov     dword ptr [rsp+20h],r12d
fffff803`d9dba364 e8f748f3ff      call    nt!CmpCreateKeyControlBlock (fffff803`d9ceec60)
fffff803`d9dba369 4c8be8          mov     r13,rax
fffff803`d9dba36c 48894517        mov     qword ptr [rbp+17h],rax
fffff803`d9dba370 4885c0          test    rax,rax
fffff803`d9dba373 0f846cfeffff    je      nt!CmRenameKey+0x951 (fffff803`d9dba1e5)

nt!CmRenameKey+0xae5:
fffff803`d9dba379 e8e2f0e6ff      call    nt!CmpAllocateUnitOfWork (fffff803`d9c29460)
fffff803`d9dba37e 4c8bf0          mov     r14,rax
fffff803`d9dba381 4889450f        mov     qword ptr [rbp+0Fh],rax
fffff803`d9dba385 4885c0          test    rax,rax
fffff803`d9dba388 0f8457feffff    je      nt!CmRenameKey+0x951 (fffff803`d9dba1e5)

nt!CmRenameKey+0xafa:
fffff803`d9dba38e 488d4820        lea     rcx,[rax+20h]
fffff803`d9dba392 498d85c8000000  lea     rax,[r13+0C8h]
fffff803`d9dba399 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`d9dba39d 488901          mov     qword ptr [rcx],rax
fffff803`d9dba3a0 48895108        mov     qword ptr [rcx+8],rdx
fffff803`d9dba3a4 483902          cmp     qword ptr [rdx],rax
fffff803`d9dba3a7 7407            je      nt!CmRenameKey+0xb1c (fffff803`d9dba3b0)

nt!CmRenameKey+0xb15:
fffff803`d9dba3a9 418d4c2403      lea     ecx,[r12+3]
fffff803`d9dba3ae cd29            int     29h

nt!CmRenameKey+0xb1c:
fffff803`d9dba3b0 48890a          mov     qword ptr [rdx],rcx
fffff803`d9dba3b3 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9dba3b7 498bcd          mov     rcx,r13
fffff803`d9dba3ba e8a148eaff      call    nt!CmpReferenceKeyControlBlock (fffff803`d9c5ec60)
fffff803`d9dba3bf 4d896e30        mov     qword ptr [r14+30h],r13
fffff803`d9dba3c3 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9dba3cc 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9dba3d3 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`d9dba3dc f00fba359b32dbff00 lock btr dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],0
fffff803`d9dba3e5 720c            jb      nt!CmRenameKey+0xb5f (fffff803`d9dba3f3)

nt!CmRenameKey+0xb53:
fffff803`d9dba3e7 488d0d9232dbff  lea     rcx,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9dba3ee e82dd6bcff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)

nt!CmRenameKey+0xb5f:
fffff803`d9dba3f3 488b45c7        mov     rax,qword ptr [rbp-39h]
fffff803`d9dba3f7 48891d8a32dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],rbx
fffff803`d9dba3fe 488b4818        mov     rcx,qword ptr [rax+18h]
fffff803`d9dba402 4883c010        add     rax,10h
fffff803`d9dba406 49894e08        mov     qword ptr [r14+8],rcx
fffff803`d9dba40a 498906          mov     qword ptr [r14],rax
fffff803`d9dba40d 483901          cmp     qword ptr [rcx],rax
fffff803`d9dba410 7407            je      nt!CmRenameKey+0xb85 (fffff803`d9dba419)

nt!CmRenameKey+0xb7e:
fffff803`d9dba412 b903000000      mov     ecx,3
fffff803`d9dba417 cd29            int     29h

nt!CmRenameKey+0xb85:
fffff803`d9dba419 4c8931          mov     qword ptr [rcx],r14
fffff803`d9dba41c 4c897008        mov     qword ptr [rax+8],r14
fffff803`d9dba420 33c0            xor     eax,eax
fffff803`d9dba422 8d4801          lea     ecx,[rax+1]
fffff803`d9dba425 4c89255c32dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],r12
fffff803`d9dba42c f00fb10d4c32dbff lock cmpxchg dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],ecx
fffff803`d9dba434 740e            je      nt!CmRenameKey+0xbb0 (fffff803`d9dba444)

nt!CmRenameKey+0xba2:
fffff803`d9dba436 488d0d4332dbff  lea     rcx,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9dba43d 8bd0            mov     edx,eax
fffff803`d9dba43f e8e8cbbcff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!CmRenameKey+0xbb0:
fffff803`d9dba444 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dba44d 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dba454 ffc0            inc     eax
fffff803`d9dba456 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dba45d 6685c0          test    ax,ax
fffff803`d9dba460 751b            jne     nt!CmRenameKey+0xbe9 (fffff803`d9dba47d)

nt!CmRenameKey+0xbce:
fffff803`d9dba462 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9dba469 483900          cmp     qword ptr [rax],rax
fffff803`d9dba46c 740f            je      nt!CmRenameKey+0xbe9 (fffff803`d9dba47d)

nt!CmRenameKey+0xbda:
fffff803`d9dba46e 664439a1e6010000 cmp     word ptr [rcx+1E6h],r12w
fffff803`d9dba476 7505            jne     nt!CmRenameKey+0xbe9 (fffff803`d9dba47d)

nt!CmRenameKey+0xbe4:
fffff803`d9dba478 e88333bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmRenameKey+0xbe9:
fffff803`d9dba47d 488b5dc7        mov     rbx,qword ptr [rbp-39h]
fffff803`d9dba481 498d8df0000000  lea     rcx,[r13+0F0h]
fffff803`d9dba488 4533c0          xor     r8d,r8d
fffff803`d9dba48b 498bd6          mov     rdx,r14
fffff803`d9dba48e 49895e38        mov     qword ptr [r14+38h],rbx
fffff803`d9dba492 e881f1e6ff      call    nt!CmpLockIXLockExclusive (fffff803`d9c29618)
fffff803`d9dba497 498d8d00010000  lea     rcx,[r13+100h]
fffff803`d9dba49e 41b801000000    mov     r8d,1
fffff803`d9dba4a4 498bd6          mov     rdx,r14
fffff803`d9dba4a7 e86cf1e6ff      call    nt!CmpLockIXLockExclusive (fffff803`d9c29618)
fffff803`d9dba4ac 488b45df        mov     rax,qword ptr [rbp-21h]
fffff803`d9dba4b0 4c8b65d7        mov     r12,qword ptr [rbp-29h]
fffff803`d9dba4b4 49899de8000000  mov     qword ptr [r13+0E8h],rbx
fffff803`d9dba4bb 49897e50        mov     qword ptr [r14+50h],rdi
fffff803`d9dba4bf 49897c2450      mov     qword ptr [r12+50h],rdi
fffff803`d9dba4c4 4c896850        mov     qword ptr [rax+50h],r13
fffff803`d9dba4c8 4d896c2458      mov     qword ptr [r12+58h],r13
fffff803`d9dba4cd 41c74424440a000000 mov   dword ptr [r12+44h],0Ah
fffff803`d9dba4d6 c740440b000000  mov     dword ptr [rax+44h],0Bh
fffff803`d9dba4dd 41c1ef1f        shr     r15d,1Fh
fffff803`d9dba4e1 488bc8          mov     rcx,rax
fffff803`d9dba4e4 41c746440c000000 mov     dword ptr [r14+44h],0Ch
fffff803`d9dba4ec 45897e48        mov     dword ptr [r14+48h],r15d
fffff803`d9dba4f0 e87715e7ff      call    nt!CmAddLogForAction (fffff803`d9c2ba6c)
fffff803`d9dba4f5 4533e4          xor     r12d,r12d
fffff803`d9dba4f8 8bd8            mov     ebx,eax
fffff803`d9dba4fa 85c0            test    eax,eax
fffff803`d9dba4fc 0f8838fcffff    js      nt!CmRenameKey+0x8a6 (fffff803`d9dba13a)

nt!CmRenameKey+0xc6e:
fffff803`d9dba502 418d5c2401      lea     ebx,[r12+1]
fffff803`d9dba507 488bcf          mov     rcx,rdi
fffff803`d9dba50a 8ad3            mov     dl,bl
fffff803`d9dba50c e8ef63f0ff      call    nt!CmpDereferenceKeyControlBlockWithLock (fffff803`d9cc0900)
fffff803`d9dba511 8ad3            mov     dl,bl
fffff803`d9dba513 488b5d67        mov     rbx,qword ptr [rbp+67h]
fffff803`d9dba517 488bcb          mov     rcx,rbx
fffff803`d9dba51a e8350a0000      call    nt!DelistKeyBodyFromKCB (fffff803`d9dbaf54)
fffff803`d9dba51f 418d542402      lea     edx,[r12+2]
fffff803`d9dba524 488bcb          mov     rcx,rbx
fffff803`d9dba527 4c896b08        mov     qword ptr [rbx+8],r13
fffff803`d9dba52b e85026ecff      call    nt!EnlistKeyBodyWithKCB (fffff803`d9c7cb80)
fffff803`d9dba530 498bcd          mov     rcx,r13
fffff803`d9dba533 e878ecf3ff      call    nt!CmpUnlockKcb (fffff803`d9cf91b0)
fffff803`d9dba538 4533ed          xor     r13d,r13d

nt!CmRenameKey+0xca7:
fffff803`d9dba53b 418bdd          mov     ebx,r13d
fffff803`d9dba53e e980f6ffff      jmp     nt!CmRenameKey+0x32f (fffff803`d9db9bc3)

nt!CmRenameKey+0xcaf:
fffff803`d9dba543 bb010019c0      mov     ebx,0C0190001h
fffff803`d9dba548 eb44            jmp     nt!CmRenameKey+0xcfa (fffff803`d9dba58e)

nt!CmRenameKey+0xcb6:
fffff803`d9dba54a 488b55af        mov     rdx,qword ptr [rbp-51h]
fffff803`d9dba54e bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d9dba553 4533e4          xor     r12d,r12d
fffff803`d9dba556 e9e7fbffff      jmp     nt!CmRenameKey+0x8ae (fffff803`d9dba142)

nt!CmRenameKey+0xcc7:
fffff803`d9dba55b 4c8b75af        mov     r14,qword ptr [rbp-51h]

nt!CmRenameKey+0xccb:
fffff803`d9dba55f 47897cae1c      mov     dword ptr [r14+r13*4+1Ch],r15d

nt!CmRenameKey+0xcd0:
fffff803`d9dba564 8b45c3          mov     eax,dword ptr [rbp-3Dh]
fffff803`d9dba567 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d9dba56a 740a            je      nt!CmRenameKey+0xce2 (fffff803`d9dba576)

nt!CmRenameKey+0xcd8:
fffff803`d9dba56c 8bd0            mov     edx,eax
fffff803`d9dba56e 488bce          mov     rcx,rsi
fffff803`d9dba571 e87257ecff      call    nt!HvFreeCell (fffff803`d9c7fce8)

nt!CmRenameKey+0xce2:
fffff803`d9dba576 488b45ef        mov     rax,qword ptr [rbp-11h]
fffff803`d9dba57a 4533ed          xor     r13d,r13d
fffff803`d9dba57d 4885c0          test    rax,rax
fffff803`d9dba580 7404            je      nt!CmRenameKey+0xcf2 (fffff803`d9dba586)

nt!CmRenameKey+0xcee:
fffff803`d9dba582 48894750        mov     qword ptr [rdi+50h],rax

nt!CmRenameKey+0xcf2:
fffff803`d9dba586 4c8b65d7        mov     r12,qword ptr [rbp-29h]
fffff803`d9dba58a 4c8b7ddf        mov     r15,qword ptr [rbp-21h]

nt!CmRenameKey+0xcfa:
fffff803`d9dba58e be434d5577      mov     esi,77554D43h
fffff803`d9dba593 4d85e4          test    r12,r12
fffff803`d9dba596 7412            je      nt!CmRenameKey+0xd16 (fffff803`d9dba5aa)

nt!CmRenameKey+0xd04:
fffff803`d9dba598 498bcc          mov     rcx,r12
fffff803`d9dba59b e8d8f3e6ff      call    nt!CmpRundownUnitOfWork (fffff803`d9c29978)
fffff803`d9dba5a0 8bd6            mov     edx,esi
fffff803`d9dba5a2 498bcc          mov     rcx,r12
fffff803`d9dba5a5 e8b6cbd3ff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)

nt!CmRenameKey+0xd16:
fffff803`d9dba5aa 488b7d0f        mov     rdi,qword ptr [rbp+0Fh]
fffff803`d9dba5ae 4885ff          test    rdi,rdi
fffff803`d9dba5b1 7412            je      nt!CmRenameKey+0xd31 (fffff803`d9dba5c5)

nt!CmRenameKey+0xd1f:
fffff803`d9dba5b3 488bcf          mov     rcx,rdi
fffff803`d9dba5b6 e8bdf3e6ff      call    nt!CmpRundownUnitOfWork (fffff803`d9c29978)
fffff803`d9dba5bb 8bd6            mov     edx,esi
fffff803`d9dba5bd 488bcf          mov     rcx,rdi
fffff803`d9dba5c0 e89bcbd3ff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)

nt!CmRenameKey+0xd31:
fffff803`d9dba5c5 4d85ff          test    r15,r15
fffff803`d9dba5c8 7412            je      nt!CmRenameKey+0xd48 (fffff803`d9dba5dc)

nt!CmRenameKey+0xd36:
fffff803`d9dba5ca 498bcf          mov     rcx,r15
fffff803`d9dba5cd e8a6f3e6ff      call    nt!CmpRundownUnitOfWork (fffff803`d9c29978)
fffff803`d9dba5d2 8bd6            mov     edx,esi
fffff803`d9dba5d4 498bcf          mov     rcx,r15
fffff803`d9dba5d7 e884cbd3ff      call    nt!ExFreePoolWithTag (fffff803`d9af7160)

nt!CmRenameKey+0xd48:
fffff803`d9dba5dc 488b7d17        mov     rdi,qword ptr [rbp+17h]
fffff803`d9dba5e0 4885ff          test    rdi,rdi
fffff803`d9dba5e3 7412            je      nt!CmRenameKey+0xd63 (fffff803`d9dba5f7)

nt!CmRenameKey+0xd51:
fffff803`d9dba5e5 b201            mov     dl,1
fffff803`d9dba5e7 488bcf          mov     rcx,rdi
fffff803`d9dba5ea e81163f0ff      call    nt!CmpDereferenceKeyControlBlockWithLock (fffff803`d9cc0900)
fffff803`d9dba5ef 488bcf          mov     rcx,rdi
fffff803`d9dba5f2 e8b9ebf3ff      call    nt!CmpUnlockKcb (fffff803`d9cf91b0)

nt!CmRenameKey+0xd63:
fffff803`d9dba5f7 0f0d0d5a35dbff  prefetchw [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dba5fe 488b055335dbff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dba605 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`d9dba609 488d50fe        lea     rdx,[rax-2]
fffff803`d9dba60d f0480fb1154235dbff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)],rdx
fffff803`d9dba616 740c            je      nt!CmRenameKey+0xd90 (fffff803`d9dba624)

nt!CmRenameKey+0xd84:
fffff803`d9dba618 488d0d3935dbff  lea     rcx,[nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dba61f e84c0db7ff      call    nt!ExfReleaseRundownProtection (fffff803`d992b370)

nt!CmRenameKey+0xd90:
fffff803`d9dba624 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dba62d 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dba634 ffc0            inc     eax
fffff803`d9dba636 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dba63d 6685c0          test    ax,ax
fffff803`d9dba640 0f85e3f5ffff    jne     nt!CmRenameKey+0x395 (fffff803`d9db9c29)

nt!CmRenameKey+0xdb2:
fffff803`d9dba646 e9c3f5ffff      jmp     nt!CmRenameKey+0x37a (fffff803`d9db9c0e)

nt!CmRenameKey+0xdb7:
fffff803`d9dba64b bb220000c0      mov     ebx,0C0000022h
fffff803`d9dba650 e96bf5ffff      jmp     nt!CmRenameKey+0x32c (fffff803`d9db9bc0)

nt!CmRenameKey+0xdc1:
fffff803`d9dba655 8a4330          mov     al,byte ptr [rbx+30h]
fffff803`d9dba658 4022c6          and     al,sil
fffff803`d9dba65b f6d8            neg     al
fffff803`d9dba65d 1bdb            sbb     ebx,ebx
fffff803`d9dba65f 81e3a9020000    and     ebx,2A9h
fffff803`d9dba665 81c37c0100c0    add     ebx,0C000017Ch
fffff803`d9dba66b e953f5ffff      jmp     nt!CmRenameKey+0x32f (fffff803`d9db9bc3)
