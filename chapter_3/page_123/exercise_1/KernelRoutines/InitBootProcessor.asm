0: kd> uf InitBootProcessor
nt!InitBootProcessor:
fffff800`1236bbe0 488bc4          mov     rax,rsp
fffff800`1236bbe3 48895810        mov     qword ptr [rax+10h],rbx
fffff800`1236bbe7 48897018        mov     qword ptr [rax+18h],rsi
fffff800`1236bbeb 48897820        mov     qword ptr [rax+20h],rdi
fffff800`1236bbef 55              push    rbp
fffff800`1236bbf0 4154            push    r12
fffff800`1236bbf2 4155            push    r13
fffff800`1236bbf4 4156            push    r14
fffff800`1236bbf6 4157            push    r15
fffff800`1236bbf8 488da8d8feffff  lea     rbp,[rax-128h]
fffff800`1236bbff 4881ec00020000  sub     rsp,200h
fffff800`1236bc06 488b058bbeb8ff  mov     rax,qword ptr [nt!_security_cookie (fffff800`11ef7a98)]
fffff800`1236bc0d 4833c4          xor     rax,rsp
fffff800`1236bc10 488985f0000000  mov     qword ptr [rbp+0F0h],rax
fffff800`1236bc17 488bd9          mov     rbx,rcx
fffff800`1236bc1a e85545fdff      call    nt!ExpValidateLoader (fffff800`12340174)
fffff800`1236bc1f 488bbbb8000000  mov     rdi,qword ptr [rbx+0B8h]
fffff800`1236bc26 4533ed          xor     r13d,r13d
fffff800`1236bc29 44892df454bfff  mov     dword ptr [nt!InitializationPhase (fffff800`11f61124)],r13d
fffff800`1236bc30 418d7501        lea     esi,[r13+1]
fffff800`1236bc34 4885ff          test    rdi,rdi
fffff800`1236bc37 7430            je      nt!InitBootProcessor+0x89 (fffff800`1236bc69)

nt!InitBootProcessor+0x59:
fffff800`1236bc39 488d15184597ff  lea     rdx,[nt!`string' (fffff800`11ce0158)]
fffff800`1236bc40 488bcf          mov     rcx,rdi
fffff800`1236bc43 e85c3aa4ff      call    nt!strstr (fffff800`11daf6a4)
fffff800`1236bc48 4885c0          test    rax,rax
fffff800`1236bc4b 0f853f680100    jne     nt! ?? ::PBOPGDP::`string'+0x1990 (fffff800`12382490)

nt!InitBootProcessor+0x71:
fffff800`1236bc51 488d15104597ff  lea     rdx,[nt!`string' (fffff800`11ce0168)]
fffff800`1236bc58 488bcf          mov     rcx,rdi
fffff800`1236bc5b e8443aa4ff      call    nt!strstr (fffff800`11daf6a4)
fffff800`1236bc60 4885c0          test    rax,rax
fffff800`1236bc63 0f8566680100    jne     nt! ?? ::PBOPGDP::`string'+0x19cf (fffff800`123824cf)

nt!InitBootProcessor+0x89:
fffff800`1236bc69 488b8bc0000000  mov     rcx,qword ptr [rbx+0C0h]
fffff800`1236bc70 4c8b09          mov     r9,qword ptr [rcx]
fffff800`1236bc73 44892d8a15f9ff  mov     dword ptr [nt!InitAnsiCodePageDataOffset (fffff800`122fd204)],r13d
fffff800`1236bc7a 4c890d9754bfff  mov     qword ptr [nt!InitNlsTableBase (fffff800`11f61118)],r9
fffff800`1236bc81 8b5108          mov     edx,dword ptr [rcx+8]
fffff800`1236bc84 2b11            sub     edx,dword ptr [rcx]
fffff800`1236bc86 89157415f9ff    mov     dword ptr [nt!InitOemCodePageDataOffset (fffff800`122fd200)],edx
fffff800`1236bc8c 8b01            mov     eax,dword ptr [rcx]
fffff800`1236bc8e 8b4910          mov     ecx,dword ptr [rcx+10h]
fffff800`1236bc91 2bc8            sub     ecx,eax
fffff800`1236bc93 4903d1          add     rdx,r9
fffff800`1236bc96 448bc1          mov     r8d,ecx
fffff800`1236bc99 890df914f9ff    mov     dword ptr [nt!InitUnicodeCaseTableDataOffset (fffff800`122fd198)],ecx
fffff800`1236bc9f 498bc9          mov     rcx,r9
fffff800`1236bca2 4d03c1          add     r8,r9
fffff800`1236bca5 e856cddfff      call    nt!RtlInitNlsTables (fffff800`12168a00)
fffff800`1236bcaa e8256adfff      call    nt!RtlResetRtlTranslations (fffff800`121626d4)
fffff800`1236bcaf e84014fdff      call    nt!WheapSetDefaultErrorSourceConfiguration (fffff800`1233d0f4)
fffff800`1236bcb4 488d05d5ddb8ff  lea     rax,[nt!WheapPfaList (fffff800`11ef9a90)]
fffff800`1236bcbb 4c892ddeddb8ff  mov     qword ptr [nt!WheapPfaLock (fffff800`11ef9aa0)],r13
fffff800`1236bcc2 488905cfddb8ff  mov     qword ptr [nt!WheapPfaList+0x8 (fffff800`11ef9a98)],rax
fffff800`1236bcc9 488905c0ddb8ff  mov     qword ptr [nt!WheapPfaList (fffff800`11ef9a90)],rax
fffff800`1236bcd0 f044092c24      lock or dword ptr [rsp],r13d
fffff800`1236bcd5 488d0d7c52bfff  lea     rcx,[nt!WheapTriageDumpLock+0x18 (fffff800`11f60f58)]
fffff800`1236bcdc 4533c0          xor     r8d,r8d
fffff800`1236bcdf 8bd6            mov     edx,esi
fffff800`1236bce1 40883522dbb8ff  mov     byte ptr [nt!WheapPfaInitialized (fffff800`11ef980a)],sil
fffff800`1236bce8 89355252bfff    mov     dword ptr [nt!WheapTriageDumpLock (fffff800`11f60f40)],esi
fffff800`1236bcee 4c892d5352bfff  mov     qword ptr [nt!WheapTriageDumpLock+0x8 (fffff800`11f60f48)],r13
fffff800`1236bcf5 44892d5452bfff  mov     dword ptr [nt!WheapTriageDumpLock+0x10 (fffff800`11f60f50)],r13d
fffff800`1236bcfc e88fa19bff      call    nt!KeInitializeEvent (fffff800`11d25e90)
fffff800`1236bd01 488d1518d9a6ff  lea     rdx,[nt!WheapDeferredRecoveryServiceDpcRoutine (fffff800`11dd9620)]
fffff800`1236bd08 488d0db152bfff  lea     rcx,[nt!WheaDrsDpc (fffff800`11f60fc0)]
fffff800`1236bd0f 4533c0          xor     r8d,r8d
fffff800`1236bd12 4c892d0753bfff  mov     qword ptr [nt!WheaPassiveDrsListLock (fffff800`11f61020)],r13
fffff800`1236bd19 e802669dff      call    nt!KeInitializeDpc (fffff800`11d42320)
fffff800`1236bd1e 4c8d1d37d8a6ff  lea     r11,[nt!WheapDeferredRecoveryServiceWorker (fffff800`11dd955c)]
fffff800`1236bd25 4c892dec52bfff  mov     qword ptr [nt!WheaDrsWorkItem+0x18 (fffff800`11f61018)],r13
fffff800`1236bd2c 4c891ddd52bfff  mov     qword ptr [nt!WheaDrsWorkItem+0x10 (fffff800`11f61010)],r11
fffff800`1236bd33 4c892dc652bfff  mov     qword ptr [nt!WheaDrsWorkItem (fffff800`11f61000)],r13
fffff800`1236bd3a f044092c24      lock or dword ptr [rsp],r13d
fffff800`1236bd3f 408835c3dab8ff  mov     byte ptr [nt!WheaDrsInitialized (fffff800`11ef9809)],sil
fffff800`1236bd46 e8cd9adfff      call    nt!WheapInitializeInUsePageOfflineNotifications (fffff800`12165818)
fffff800`1236bd4b 8b0dd353bfff    mov     ecx,dword ptr [nt!InitializationPhase (fffff800`11f61124)]
fffff800`1236bd51 488bd3          mov     rdx,rbx
fffff800`1236bd54 ff1526a7c5ff    call    qword ptr [nt!_imp_HalInitSystem (fffff800`11fc6480)]
fffff800`1236bd5a 84c0            test    al,al
fffff800`1236bd5c 0f84a5050000    je      nt!InitBootProcessor+0x727 (fffff800`1236c307)

nt!InitBootProcessor+0x182:
fffff800`1236bd62 8bce            mov     ecx,esi
fffff800`1236bd64 e877dffdff      call    nt!PsInitializeQuotaSystem (fffff800`12349ce0)
fffff800`1236bd69 488b8b88000000  mov     rcx,qword ptr [rbx+88h]
fffff800`1236bd70 e81fbbfdff      call    nt!CmGetSystemControlValues (fffff800`12347894)
fffff800`1236bd75 65488b0c2520000000 mov   rcx,qword ptr gs:[20h]
fffff800`1236bd7e e89d4edfff      call    nt!KeInitializeTimerTable (fffff800`12160c20)
fffff800`1236bd83 85c0            test    eax,eax
fffff800`1236bd85 0f8850670100    js      nt! ?? ::PBOPGDP::`string'+0x19db (fffff800`123824db)

nt!InitBootProcessor+0x1ab:
fffff800`1236bd8b 33c0            xor     eax,eax
fffff800`1236bd8d bf00010000      mov     edi,100h
fffff800`1236bd92 4c8d05df4397ff  lea     r8,[nt!`string' (fffff800`11ce0178)]
fffff800`1236bd99 a33c02000080f7ffff mov   dword ptr [FFFFF7800000023Ch],eax
fffff800`1236bda2 4c8b8ba8000000  mov     r9,qword ptr [rbx+0A8h]
fffff800`1236bda9 488d4db0        lea     rcx,[rbp-50h]
fffff800`1236bdad 8bd7            mov     edx,edi
fffff800`1236bdaf e81c18a5ff      call    nt!RtlStringCbPrintfA (fffff800`11dbd5d0)
fffff800`1236bdb4 85c0            test    eax,eax
fffff800`1236bdb6 0f8856050000    js      nt!InitBootProcessor+0x732 (fffff800`1236c312)

nt!InitBootProcessor+0x1dc:
fffff800`1236bdbc 488d55b0        lea     rdx,[rbp-50h]
fffff800`1236bdc0 488d4c2430      lea     rcx,[rsp+30h]
fffff800`1236bdc5 e86a649dff      call    nt!RtlInitString (fffff800`11d42234)
fffff800`1236bdca 0fb7442430      movzx   eax,word ptr [rsp+30h]
fffff800`1236bdcf 41bbffff0000    mov     r11d,0FFFFh
fffff800`1236bdd5 664103c3        add     ax,r11w
fffff800`1236bdd9 0fb7c8          movzx   ecx,ax
fffff800`1236bddc 6689442430      mov     word ptr [rsp+30h],ax
fffff800`1236bde1 483bcf          cmp     rcx,rdi
fffff800`1236bde4 0f83b1050000    jae     nt!InitBootProcessor+0x7bb (fffff800`1236c39b)

nt!InitBootProcessor+0x20a:
fffff800`1236bdea 44886c0db0      mov     byte ptr [rbp+rcx-50h],r13b
fffff800`1236bdef 48b83000000080f7ffff mov rax,0FFFFF78000000030h
fffff800`1236bdf9 488d542430      lea     rdx,[rsp+30h]
fffff800`1236bdfe 488d0d2b53bfff  lea     rcx,[nt!NtSystemRoot (fffff800`11f61130)]
fffff800`1236be05 4533c0          xor     r8d,r8d
fffff800`1236be08 c7051e53bfff00000802 mov dword ptr [nt!NtSystemRoot (fffff800`11f61130)],2080000h
fffff800`1236be12 4889051f53bfff  mov     qword ptr [nt!NtSystemRoot+0x8 (fffff800`11f61138)],rax
fffff800`1236be19 e83268d1ff      call    nt!RtlAnsiStringToUnicodeString (fffff800`12082650)
fffff800`1236be1e 85c0            test    eax,eax
fffff800`1236be20 0f88f7040000    js      nt!InitBootProcessor+0x73d (fffff800`1236c31d)

nt!InitBootProcessor+0x246:
fffff800`1236be26 4c8d4c2450      lea     r9,[rsp+50h]
fffff800`1236be2b 488d5598        lea     rdx,[rbp-68h]
fffff800`1236be2f 488d0dcac190ff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`1236be36 41b803000000    mov     r8d,3
fffff800`1236be3c 48c745980b000000 mov     qword ptr [rbp-68h],0Bh
fffff800`1236be44 488975a0        mov     qword ptr [rbp-60h],rsi
fffff800`1236be48 4c896da8        mov     qword ptr [rbp-58h],r13
fffff800`1236be4c e8872edfff      call    nt!LdrFindResource_U (fffff800`1215ecd8)
fffff800`1236be51 85c0            test    eax,eax
fffff800`1236be53 7829            js      nt!InitBootProcessor+0x29e (fffff800`1236be7e)

nt!InitBootProcessor+0x275:
fffff800`1236be55 488b542450      mov     rdx,qword ptr [rsp+50h]
fffff800`1236be5a 4c8d442468      lea     r8,[rsp+68h]
fffff800`1236be5f 488d0d9ac190ff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`1236be66 4533c9          xor     r9d,r9d
fffff800`1236be69 e8862edfff      call    nt!LdrAccessResource (fffff800`1215ecf4)
fffff800`1236be6e 85c0            test    eax,eax
fffff800`1236be70 780c            js      nt!InitBootProcessor+0x29e (fffff800`1236be7e)

nt!InitBootProcessor+0x292:
fffff800`1236be72 488b442468      mov     rax,qword ptr [rsp+68h]
fffff800`1236be77 488905b246c6ff  mov     qword ptr [nt!KiBugCodeMessages (fffff800`11fd0530)],rax

nt!InitBootProcessor+0x29e:
fffff800`1236be7e e8112ac7ff      call    nt!KeIntersectFeaturesWithRegistry (fffff800`11fde894)
fffff800`1236be83 8b057302fbff    mov     eax,dword ptr [nt!CmGlobalValidationRunlevel (fffff800`1231c0fc)]
fffff800`1236be89 a35802000080f7ffff mov   dword ptr [FFFFF78000000258h],eax
fffff800`1236be92 408ac6          mov     al,sil
fffff800`1236be95 a28b02000080f7ffff mov   byte ptr [FFFFF7800000028Bh],al
fffff800`1236be9e 8b057c52bfff    mov     eax,dword ptr [nt!CmNtSpBuildNumber (fffff800`11f61120)]
fffff800`1236bea4 6644892d9e53bfff mov     word ptr [nt!CmNtCSDVersion+0x2 (fffff800`11f6124a)],r13w
fffff800`1236beac 25ff0f0000      and     eax,0FFFh
fffff800`1236beb1 44392d8852bfff  cmp     dword ptr [nt!CmNtCSDReleaseType (fffff800`11f61140)],r13d
fffff800`1236beb8 89056252bfff    mov     dword ptr [nt!CmNtSpBuildNumber (fffff800`11f61120)],eax
fffff800`1236bebe 0f852f660100    jne     nt! ?? ::PBOPGDP::`string'+0x19f3 (fffff800`123824f3)

nt!InitBootProcessor+0x2e4:
fffff800`1236bec4 833d2902fbff04  cmp     dword ptr [nt!InitTickRolloverDelayLength (fffff800`1231c0f4)],4
fffff800`1236becb 0f8430660100    je      nt! ?? ::PBOPGDP::`string'+0x1a01 (fffff800`12382501)

nt!InitBootProcessor+0x2f1:
fffff800`1236bed1 418bc5          mov     eax,r13d
fffff800`1236bed4 89052601fbff    mov     dword ptr [nt!InitTickRolloverDelay (fffff800`1231c000)],eax

nt!InitBootProcessor+0x2fa:
fffff800`1236beda 85c0            test    eax,eax
fffff800`1236bedc 0f8537660100    jne     nt! ?? ::PBOPGDP::`string'+0x1a19 (fffff800`12382519)

nt!InitBootProcessor+0x302:
fffff800`1236bee2 8b0d1853bfff    mov     ecx,dword ptr [nt!NtGlobalFlag (fffff800`11f61200)]
fffff800`1236bee8 8b05da01fbff    mov     eax,dword ptr [nt!CmNtGlobalFlag (fffff800`1231c0c8)]
fffff800`1236beee 0bc8            or      ecx,eax
fffff800`1236bef0 890d0a53bfff    mov     dword ptr [nt!NtGlobalFlag (fffff800`11f61200)],ecx
fffff800`1236bef6 0fbae012        bt      eax,12h
fffff800`1236befa 720a            jb      nt!InitBootProcessor+0x326 (fffff800`1236bf06)

nt!InitBootProcessor+0x31c:
fffff800`1236befc 0fbaf112        btr     ecx,12h
fffff800`1236bf00 890dfa52bfff    mov     dword ptr [nt!NtGlobalFlag (fffff800`11f61200)],ecx

nt!InitBootProcessor+0x326:
fffff800`1236bf06 8bc6            mov     eax,esi
fffff800`1236bf08 a3c003000080f7ffff mov   dword ptr [FFFFF780000003C0h],eax
fffff800`1236bf11 a2c403000080f7ffff mov   byte ptr [FFFFF780000003C4h],al
fffff800`1236bf1a e80182fdff      call    nt!ExInitSystem (fffff800`12344120)
fffff800`1236bf1f 84c0            test    al,al
fffff800`1236bf21 0f8401040000    je      nt!InitBootProcessor+0x748 (fffff800`1236c328)

nt!InitBootProcessor+0x347:
fffff800`1236bf27 e83041fdff      call    nt!KeNumaInitialize (fffff800`1234005c)
fffff800`1236bf2c 488bcb          mov     rcx,rbx
fffff800`1236bf2f e8fc7ffdff      call    nt!VerifierInitSystem (fffff800`12343f30)
fffff800`1236bf34 e8632bfdff      call    nt!InitializeDynamicPartitioningPolicy (fffff800`1233ea9c)
fffff800`1236bf39 488bd3          mov     rdx,rbx
fffff800`1236bf3c 33c9            xor     ecx,ecx
fffff800`1236bf3e e84dc90000      call    nt!MmInitSystem (fffff800`12378890)
fffff800`1236bf43 84c0            test    al,al
fffff800`1236bf45 0f84e8030000    je      nt!InitBootProcessor+0x753 (fffff800`1236c333)

nt!InitBootProcessor+0x36b:
fffff800`1236bf4b 488bd3          mov     rdx,rbx
fffff800`1236bf4e 33c9            xor     ecx,ecx
fffff800`1236bf50 4c892d6954b9ff  mov     qword ptr [nt!KiHwPolicyDriverImageBase (fffff800`11f013c0)],r13
fffff800`1236bf57 ff1533a5c5ff    call    qword ptr [nt!_imp_HalInitializeBios (fffff800`11fc6490)]
fffff800`1236bf5d 4533c0          xor     r8d,r8d
fffff800`1236bf60 488bd3          mov     rdx,rbx
fffff800`1236bf63 33c9            xor     ecx,ecx
fffff800`1236bf65 e8e679ffff      call    nt!InbvDriverInitialize (fffff800`12363950)
fffff800`1236bf6a 4c8d6310        lea     r12,[rbx+10h]
fffff800`1236bf6e 458bfd          mov     r15d,r13d
fffff800`1236bf71 498b3424        mov     rsi,qword ptr [r12]
fffff800`1236bf75 41be5c000000    mov     r14d,5Ch
fffff800`1236bf7b eb49            jmp     nt!InitBootProcessor+0x3e6 (fffff800`1236bfc6)

nt!InitBootProcessor+0x39d:
fffff800`1236bf7d 8a02            mov     al,byte ptr [rdx]
fffff800`1236bf7f 41ffc1          inc     r9d
fffff800`1236bf82 48ffc1          inc     rcx
fffff800`1236bf85 88440daf        mov     byte ptr [rbp+rcx-51h],al
fffff800`1236bf89 4883c202        add     rdx,2
fffff800`1236bf8d 453bc8          cmp     r9d,r8d
fffff800`1236bf90 72eb            jb      nt!InitBootProcessor+0x39d (fffff800`1236bf7d)

nt!InitBootProcessor+0x3b2:
fffff800`1236bf92 483bcf          cmp     rcx,rdi
fffff800`1236bf95 0f83a3030000    jae     nt!InitBootProcessor+0x75e (fffff800`1236c33e)

nt!InitBootProcessor+0x3bb:
fffff800`1236bf9b 44886c0db0      mov     byte ptr [rbp+rcx-50h],r13b

nt!InitBootProcessor+0x3c0:
fffff800`1236bfa0 488d55b0        lea     rdx,[rbp-50h]
fffff800`1236bfa4 488d4d88        lea     rcx,[rbp-78h]
fffff800`1236bfa8 e887629dff      call    nt!RtlInitString (fffff800`11d42234)
fffff800`1236bfad 488b5630        mov     rdx,qword ptr [rsi+30h]
fffff800`1236bfb1 488d4d88        lea     rcx,[rbp-78h]
fffff800`1236bfb5 41b8ffffffff    mov     r8d,0FFFFFFFFh
fffff800`1236bfbb e8c01992ff      call    nt!DbgLoadImageSymbols (fffff800`11c8d980)

nt!InitBootProcessor+0x3e0:
fffff800`1236bfc0 488b36          mov     rsi,qword ptr [rsi]
fffff800`1236bfc3 41ffc7          inc     r15d

nt!InitBootProcessor+0x3e6:
fffff800`1236bfc6 493bf4          cmp     rsi,r12
fffff800`1236bfc9 742f            je      nt!InitBootProcessor+0x41a (fffff800`1236bffa)

nt!InitBootProcessor+0x3eb:
fffff800`1236bfcb 4183ff03        cmp     r15d,3
fffff800`1236bfcf 72ef            jb      nt!InitBootProcessor+0x3e0 (fffff800`1236bfc0)

nt!InitBootProcessor+0x3f1:
fffff800`1236bfd1 488b5650        mov     rdx,qword ptr [rsi+50h]
fffff800`1236bfd5 66443932        cmp     word ptr [rdx],r14w
fffff800`1236bfd9 0f8553650100    jne     nt! ?? ::PBOPGDP::`string'+0x1a32 (fffff800`12382532)

nt!InitBootProcessor+0x3ff:
fffff800`1236bfdf 440fb74648      movzx   r8d,word ptr [rsi+48h]
fffff800`1236bfe4 41d1e8          shr     r8d,1
fffff800`1236bfe7 418bc0          mov     eax,r8d
fffff800`1236bfea 48ffc0          inc     rax
fffff800`1236bfed 483bc7          cmp     rax,rdi
fffff800`1236bff0 77ce            ja      nt!InitBootProcessor+0x3e0 (fffff800`1236bfc0)

nt!InitBootProcessor+0x412:
fffff800`1236bff2 458bcd          mov     r9d,r13d
fffff800`1236bff5 498bcd          mov     rcx,r13
fffff800`1236bff8 eb83            jmp     nt!InitBootProcessor+0x39d (fffff800`1236bf7d)

nt!InitBootProcessor+0x41a:
fffff800`1236bffa 44382d6cfebdff  cmp     byte ptr [nt!KdBreakAfterSymbolLoad (fffff800`11f4be6d)],r13b
fffff800`1236c001 0f8592650100    jne     nt! ?? ::PBOPGDP::`string'+0x1a99 (fffff800`12382599)

nt!InitBootProcessor+0x427:
fffff800`1236c007 8a83e8000000    mov     al,byte ptr [rbx+0E8h]
fffff800`1236c00d 418bcd          mov     ecx,r13d
fffff800`1236c010 2401            and     al,1
fffff800`1236c012 3c01            cmp     al,1
fffff800`1236c014 0f94c1          sete    cl
fffff800`1236c017 ffc1            inc     ecx
fffff800`1236c019 890dd1dbb9ff    mov     dword ptr [nt!ExpBootEnvironmentInformation+0x10 (fffff800`11f09bf0)],ecx
fffff800`1236c01f 488b83d0000000  mov     rax,qword ptr [rbx+0D0h]
fffff800`1236c026 0f108098000000  movups  xmm0,xmmword ptr [rax+98h]
fffff800`1236c02d f30f7f05abdbb9ff movdqu  xmmword ptr [nt!ExpBootEnvironmentInformation (fffff800`11f09be0)],xmm0
fffff800`1236c035 488b83d0000000  mov     rax,qword ptr [rbx+0D0h]
fffff800`1236c03c 488b8870080000  mov     rcx,qword ptr [rax+870h]
fffff800`1236c043 48890daedbb9ff  mov     qword ptr [nt!ExpBootEnvironmentInformation+0x18 (fffff800`11f09bf8)],rcx
fffff800`1236c04a 488bcb          mov     rcx,rbx
fffff800`1236c04d e8aaf8a4ff      call    nt!HvlPhase1Initialize (fffff800`11dbb8fc)
fffff800`1236c052 4c8b9bd0000000  mov     r11,qword ptr [rbx+0D0h]
fffff800`1236c059 41813b20090000  cmp     dword ptr [r11],920h
fffff800`1236c060 7208            jb      nt!InitBootProcessor+0x48a (fffff800`1236c06a)

nt!InitBootProcessor+0x482:
fffff800`1236c062 488bcb          mov     rcx,rbx
fffff800`1236c065 e81649fdff      call    nt!HeadlessInit (fffff800`12340980)

nt!InitBootProcessor+0x48a:
fffff800`1236c06a 488bcb          mov     rcx,rbx
fffff800`1236c06d e84e0bfdff      call    nt!BootApplicationPersistentDataInitialize (fffff800`1233cbc0)
fffff800`1236c072 b8fffffe7f      mov     eax,7FFEFFFFh
fffff800`1236c077 4c8d7b20        lea     r15,[rbx+20h]
fffff800`1236c07b a3b402000080f7ffff mov   dword ptr [FFFFF780000002B4h],eax
fffff800`1236c084 b800000080      mov     eax,80000000h
fffff800`1236c089 a3b802000080f7ffff mov   dword ptr [FFFFF780000002B8h],eax
fffff800`1236c092 498b37          mov     rsi,qword ptr [r15]

nt!InitBootProcessor+0x4b5:
fffff800`1236c095 493bf7          cmp     rsi,r15
fffff800`1236c098 7447            je      nt!InitBootProcessor+0x501 (fffff800`1236c0e1)

nt!InitBootProcessor+0x4ba:
fffff800`1236c09a 837e1015        cmp     dword ptr [rsi+10h],15h
fffff800`1236c09e 7405            je      nt!InitBootProcessor+0x4c5 (fffff800`1236c0a5)

nt!InitBootProcessor+0x4c0:
fffff800`1236c0a0 488b36          mov     rsi,qword ptr [rsi]
fffff800`1236c0a3 ebf0            jmp     nt!InitBootProcessor+0x4b5 (fffff800`1236c095)

nt!InitBootProcessor+0x4c5:
fffff800`1236c0a5 488b4e20        mov     rcx,qword ptr [rsi+20h]
fffff800`1236c0a9 4c8d442460      lea     r8,[rsp+60h]
fffff800`1236c0ae ba00100000      mov     edx,1000h
fffff800`1236c0b3 e8f8b495ff      call    nt!RtlULongLongMult (fffff800`11cc75b0)
fffff800`1236c0b8 85c0            test    eax,eax
fffff800`1236c0ba 781c            js      nt!InitBootProcessor+0x4f8 (fffff800`1236c0d8)

nt!InitBootProcessor+0x4dc:
fffff800`1236c0bc 488b542460      mov     rdx,qword ptr [rsp+60h]
fffff800`1236c0c1 488b0d4850bfff  mov     rcx,qword ptr [nt!InitNlsTableSize (fffff800`11f61110)]
fffff800`1236c0c8 4c8d054150bfff  lea     r8,[nt!InitNlsTableSize (fffff800`11f61110)]
fffff800`1236c0cf e83cb195ff      call    nt!RtlSizeTAdd (fffff800`11cc7210)
fffff800`1236c0d4 85c0            test    eax,eax
fffff800`1236c0d6 79c8            jns     nt!InitBootProcessor+0x4c0 (fffff800`1236c0a0)

nt!InitBootProcessor+0x4f8:
fffff800`1236c0d8 418bce          mov     ecx,r14d
fffff800`1236c0db e8306396ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c0e0 cc              int     3

nt!InitBootProcessor+0x501:
fffff800`1236c0e1 488b152850bfff  mov     rdx,qword ptr [nt!InitNlsTableSize (fffff800`11f61110)]
fffff800`1236c0e8 41bc00020000    mov     r12d,200h
fffff800`1236c0ee 41b84e6c7320    mov     r8d,20736C4Eh
fffff800`1236c0f4 418bcc          mov     ecx,r12d
fffff800`1236c0f7 e814bfb7ff      call    nt!ExAllocatePoolWithTag (fffff800`11ee8010)
fffff800`1236c0fc 488bf0          mov     rsi,rax
fffff800`1236c0ff 4889051250bfff  mov     qword ptr [nt!InitNlsTableBase (fffff800`11f61118)],rax
fffff800`1236c106 4885c0          test    rax,rax
fffff800`1236c109 0f8437020000    je      nt!InitBootProcessor+0x766 (fffff800`1236c346)

nt!InitBootProcessor+0x52f:
fffff800`1236c10f 488b93c0000000  mov     rdx,qword ptr [rbx+0C0h]
fffff800`1236c116 4c8b05f34fbfff  mov     r8,qword ptr [nt!InitNlsTableSize (fffff800`11f61110)]
fffff800`1236c11d 488bc8          mov     rcx,rax
fffff800`1236c120 488b12          mov     rdx,qword ptr [rdx]
fffff800`1236c123 e8d81096ff      call    nt!memcpy (fffff800`11ccd200)
fffff800`1236c128 448b056910f9ff  mov     r8d,dword ptr [nt!InitUnicodeCaseTableDataOffset (fffff800`122fd198)]
fffff800`1236c12f 8b15cb10f9ff    mov     edx,dword ptr [nt!InitOemCodePageDataOffset (fffff800`122fd200)]
fffff800`1236c135 8b0dc910f9ff    mov     ecx,dword ptr [nt!InitAnsiCodePageDataOffset (fffff800`122fd204)]
fffff800`1236c13b 4c03c6          add     r8,rsi
fffff800`1236c13e 4803d6          add     rdx,rsi
fffff800`1236c141 4803ce          add     rcx,rsi
fffff800`1236c144 e8b7c8dfff      call    nt!RtlInitNlsTables (fffff800`12168a00)
fffff800`1236c149 e88665dfff      call    nt!RtlResetRtlTranslations (fffff800`121626d4)
fffff800`1236c14e 44392df350bfff  cmp     dword ptr [nt!CmNtCSDVersion (fffff800`11f61248)],r13d
fffff800`1236c155 0f854e640100    jne     nt! ?? ::PBOPGDP::`string'+0x1aa9 (fffff800`123825a9)

nt!InitBootProcessor+0x57b:
fffff800`1236c15b 488d542440      lea     rdx,[rsp+40h]
fffff800`1236c160 488d4db0        lea     rcx,[rbp-50h]
fffff800`1236c164 e8631ba5ff      call    nt!RtlStringCbCopyExA (fffff800`11dbdccc)
fffff800`1236c169 85c0            test    eax,eax
fffff800`1236c16b 0f886c650100    js      nt! ?? ::PBOPGDP::`string'+0x1be9 (fffff800`123826dd)

nt!InitBootProcessor+0x591:
fffff800`1236c171 662b7c2440      sub     di,word ptr [rsp+40h]
fffff800`1236c176 66893d7550bfff  mov     word ptr [nt!CmCSDVersionString+0x2 (fffff800`11f611f2)],di

nt!InitBootProcessor+0x59d:
fffff800`1236c17d 488d55b0        lea     rdx,[rbp-50h]
fffff800`1236c181 488d4c2430      lea     rcx,[rsp+30h]
fffff800`1236c186 e8ad17a0ff      call    nt!RtlInitAnsiString (fffff800`11d6d938)
fffff800`1236c18b 488d542430      lea     rdx,[rsp+30h]
fffff800`1236c190 488d0d5950bfff  lea     rcx,[nt!CmCSDVersionString (fffff800`11f611f0)]
fffff800`1236c197 41b001          mov     r8b,1
fffff800`1236c19a e8b164d1ff      call    nt!RtlAnsiStringToUnicodeString (fffff800`12082650)
fffff800`1236c19f 85c0            test    eax,eax
fffff800`1236c1a1 0f884f650100    js      nt! ?? ::PBOPGDP::`string'+0x1c02 (fffff800`123826f6)

nt!InitBootProcessor+0x5c7:
fffff800`1236c1a7 41b906000000    mov     r9d,6
fffff800`1236c1ad 4c8d05cc3f97ff  lea     r8,[nt!`string' (fffff800`11ce0180)]
fffff800`1236c1b4 488d8db0000000  lea     rcx,[rbp+0B0h]
fffff800`1236c1bb 418d513a        lea     edx,[r9+3Ah]
fffff800`1236c1bf c744242002000000 mov     dword ptr [rsp+20h],2
fffff800`1236c1c7 e80414a5ff      call    nt!RtlStringCbPrintfA (fffff800`11dbd5d0)
fffff800`1236c1cc 85c0            test    eax,eax
fffff800`1236c1ce 0f883b650100    js      nt! ?? ::PBOPGDP::`string'+0x1c1b (fffff800`1238270f)

nt!InitBootProcessor+0x5f4:
fffff800`1236c1d4 488d95b0000000  lea     rdx,[rbp+0B0h]
fffff800`1236c1db 488d0d1e4fbfff  lea     rcx,[nt!CmVersionString (fffff800`11f61100)]
fffff800`1236c1e2 e80984dfff      call    nt!RtlCreateUnicodeStringFromAsciiz (fffff800`121645f0)
fffff800`1236c1e7 84c0            test    al,al
fffff800`1236c1e9 0f846a010000    je      nt!InitBootProcessor+0x779 (fffff800`1236c359)

nt!InitBootProcessor+0x60f:
fffff800`1236c1ef f7050750bfff00200000 test dword ptr [nt!NtGlobalFlag (fffff800`11f61200)],2000h
fffff800`1236c1f9 41be00008000    mov     r14d,800000h
fffff800`1236c1ff 0f8523650100    jne     nt! ?? ::PBOPGDP::`string'+0x1c34 (fffff800`12382728)

nt!InitBootProcessor+0x625:
fffff800`1236c205 448535f44fbfff  test    dword ptr [nt!NtGlobalFlag (fffff800`11f61200)],r14d
fffff800`1236c20c 0f8583650100    jne     nt! ?? ::PBOPGDP::`string'+0x1ca1 (fffff800`12382795)

nt!InitBootProcessor+0x632:
fffff800`1236c212 488d0517dab9ff  lea     rax,[nt!HandleTableListHead (fffff800`11f09c30)]
fffff800`1236c219 4c892d20dab9ff  mov     qword ptr [nt!HandleTableListLock (fffff800`11f09c40)],r13
fffff800`1236c220 48890511dab9ff  mov     qword ptr [nt!HandleTableListHead+0x8 (fffff800`11f09c38)],rax
fffff800`1236c227 48890502dab9ff  mov     qword ptr [nt!HandleTableListHead (fffff800`11f09c30)],rax
fffff800`1236c22e e85d5efdff      call    nt!ObInitSystem (fffff800`12342090)
fffff800`1236c233 84c0            test    al,al
fffff800`1236c235 0f8429010000    je      nt!InitBootProcessor+0x784 (fffff800`1236c364)

nt!InitBootProcessor+0x65b:
fffff800`1236c23b e80084fdff      call    nt!SeInitSystem (fffff800`12344640)
fffff800`1236c240 84c0            test    al,al
fffff800`1236c242 0f8427010000    je      nt!InitBootProcessor+0x78f (fffff800`1236c36f)

nt!InitBootProcessor+0x668:
fffff800`1236c248 488bcb          mov     rcx,rbx
fffff800`1236c24b e80cc60000      call    nt!PsInitSystem (fffff800`1237885c)
fffff800`1236c250 84c0            test    al,al
fffff800`1236c252 0f8422010000    je      nt!InitBootProcessor+0x79a (fffff800`1236c37a)

nt!InitBootProcessor+0x678:
fffff800`1236c258 e86f82fdff      call    nt!DbgkInitialize (fffff800`123444cc)
fffff800`1236c25d 85c0            test    eax,eax
fffff800`1236c25f 0f8820010000    js      nt!InitBootProcessor+0x7a5 (fffff800`1236c385)

nt!InitBootProcessor+0x685:
fffff800`1236c265 e84e34fdff      call    nt!PpInitSystem (fffff800`1233f6b8)
fffff800`1236c26a 84c0            test    al,al
fffff800`1236c26c 0f841e010000    je      nt!InitBootProcessor+0x7b0 (fffff800`1236c390)

nt!InitBootProcessor+0x692:
fffff800`1236c272 e835010000      call    nt!ExComputeTickCountMultiplier (fffff800`1236c3ac)
fffff800`1236c277 890553dab9ff    mov     dword ptr [nt!ExpTickCountMultiplier (fffff800`11f09cd0)],eax
fffff800`1236c27d a30400000080f7ffff mov   dword ptr [FFFFF78000000004h],eax
fffff800`1236c286 b806000000      mov     eax,6
fffff800`1236c28b a36c02000080f7ffff mov   dword ptr [FFFFF7800000026Ch],eax
fffff800`1236c294 b802000000      mov     eax,2
fffff800`1236c299 a37002000080f7ffff mov   dword ptr [FFFFF78000000270h],eax
fffff800`1236c2a2 0fb705ab3ec6ff  movzx   eax,word ptr [nt!KeProcessorArchitecture (fffff800`11fd0154)]
fffff800`1236c2a9 66a36a02000080f7ffff mov word ptr [FFFFF7800000026Ah],ax
fffff800`1236c2b3 b864860000      mov     eax,8664h
fffff800`1236c2b8 66a32c00000080f7ffff mov word ptr [FFFFF7800000002Ch],ax
fffff800`1236c2c2 66a32e00000080f7ffff mov word ptr [FFFFF7800000002Eh],ax
fffff800`1236c2cc 33c0            xor     eax,eax
fffff800`1236c2ce a3a403000080f7ffff mov   dword ptr [FFFFF780000003A4h],eax
fffff800`1236c2d7 488b8df0000000  mov     rcx,qword ptr [rbp+0F0h]
fffff800`1236c2de 4833cc          xor     rcx,rsp
fffff800`1236c2e1 e8dad195ff      call    nt!_security_check_cookie (fffff800`11cc94c0)
fffff800`1236c2e6 4c8d9c2400020000 lea     r11,[rsp+200h]
fffff800`1236c2ee 498b5b38        mov     rbx,qword ptr [r11+38h]
fffff800`1236c2f2 498b7340        mov     rsi,qword ptr [r11+40h]
fffff800`1236c2f6 498b7b48        mov     rdi,qword ptr [r11+48h]
fffff800`1236c2fa 498be3          mov     rsp,r11
fffff800`1236c2fd 415f            pop     r15
fffff800`1236c2ff 415e            pop     r14
fffff800`1236c301 415d            pop     r13
fffff800`1236c303 415c            pop     r12
fffff800`1236c305 5d              pop     rbp
fffff800`1236c306 c3              ret

nt!InitBootProcessor+0x727:
fffff800`1236c307 b95c000000      mov     ecx,5Ch
fffff800`1236c30c e8ff6096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c311 cc              int     3

nt!InitBootProcessor+0x732:
fffff800`1236c312 b96f000000      mov     ecx,6Fh
fffff800`1236c317 e8f46096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c31c cc              int     3

nt!InitBootProcessor+0x73d:
fffff800`1236c31d b96f000000      mov     ecx,6Fh
fffff800`1236c322 e8e96096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c327 cc              int     3

nt!InitBootProcessor+0x748:
fffff800`1236c328 b931000000      mov     ecx,31h
fffff800`1236c32d e8de6096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c332 cc              int     3

nt!InitBootProcessor+0x753:
fffff800`1236c333 b931000000      mov     ecx,31h
fffff800`1236c338 e8d36096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c33d cc              int     3

nt!InitBootProcessor+0x75e:
fffff800`1236c33e 33c9            xor     ecx,ecx
fffff800`1236c340 e823bba6ff      call    nt!_report_gsfailure (fffff800`11dd7e68)
fffff800`1236c345 cc              int     3

nt!InitBootProcessor+0x766:
fffff800`1236c346 b931000000      mov     ecx,31h
fffff800`1236c34b e8c06096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c350 cc              int     3

nt!InitBootProcessor+0x771:
fffff800`1236c351 418bcd          mov     ecx,r13d
fffff800`1236c354 e9c1620100      jmp     nt! ?? ::PBOPGDP::`string'+0x1b1e (fffff800`1238261a)

nt!InitBootProcessor+0x779:
fffff800`1236c359 b931000000      mov     ecx,31h
fffff800`1236c35e e8ad6096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c363 cc              int     3

nt!InitBootProcessor+0x784:
fffff800`1236c364 b95e000000      mov     ecx,5Eh
fffff800`1236c369 e8a26096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c36e cc              int     3

nt!InitBootProcessor+0x78f:
fffff800`1236c36f b95f000000      mov     ecx,5Fh
fffff800`1236c374 e8976096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c379 cc              int     3

nt!InitBootProcessor+0x79a:
fffff800`1236c37a b960000000      mov     ecx,60h
fffff800`1236c37f e88c6096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c384 cc              int     3

nt!InitBootProcessor+0x7a5:
fffff800`1236c385 b960000000      mov     ecx,60h
fffff800`1236c38a e8816096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c38f cc              int     3

nt!InitBootProcessor+0x7b0:
fffff800`1236c390 b98f000000      mov     ecx,8Fh
fffff800`1236c395 e8766096ff      call    nt!KeBugCheck (fffff800`11cd2410)
fffff800`1236c39a cc              int     3

nt!InitBootProcessor+0x7bb:
fffff800`1236c39b 33c9            xor     ecx,ecx
fffff800`1236c39d e8c6baa6ff      call    nt!_report_gsfailure (fffff800`11dd7e68)
fffff800`1236c3a2 cc              int     3
fffff800`1236c3a3 90              nop
fffff800`1236c3a4 90              nop
fffff800`1236c3a5 90              nop
fffff800`1236c3a6 90              nop
fffff800`1236c3a7 90              nop
fffff800`1236c3a8 90              nop
fffff800`1236c3a9 90              nop
fffff800`1236c3aa 90              nop
fffff800`1236c3ab 90              nop
fffff800`1236c3ac 8b0d623cc6ff    mov     ecx,dword ptr [nt!KeMaximumIncrement (fffff800`11fd0014)]
fffff800`1236c3b2 b85917b7d1      mov     eax,0D1B71759h
fffff800`1236c3b7 f7e1            mul     eax,ecx
fffff800`1236c3b9 c1ea0d          shr     edx,0Dh
fffff800`1236c3bc 8bc2            mov     eax,edx
fffff800`1236c3be 69c010270000    imul    eax,eax,2710h
fffff800`1236c3c4 2bc8            sub     ecx,eax
fffff800`1236c3c6 33c0            xor     eax,eax
fffff800`1236c3c8 448d4018        lea     r8d,[rax+18h]

nt!ExComputeTickCountMultiplier+0x20:
fffff800`1236c3cc 03c9            add     ecx,ecx
fffff800`1236c3ce 03c0            add     eax,eax
fffff800`1236c3d0 81f910270000    cmp     ecx,2710h
fffff800`1236c3d6 730b            jae     nt!ExComputeTickCountMultiplier+0x37 (fffff800`1236c3e3)

nt!ExComputeTickCountMultiplier+0x2c:
fffff800`1236c3d8 49ffc8          dec     r8
fffff800`1236c3db 75ef            jne     nt!ExComputeTickCountMultiplier+0x20 (fffff800`1236c3cc)

nt!ExComputeTickCountMultiplier+0x31:
fffff800`1236c3dd c1e218          shl     edx,18h
fffff800`1236c3e0 0bc2            or      eax,edx
fffff800`1236c3e2 c3              ret

nt!ExComputeTickCountMultiplier+0x37:
fffff800`1236c3e3 81c1f0d8ffff    add     ecx,0FFFFD8F0h
fffff800`1236c3e9 83c801          or      eax,1
fffff800`1236c3ec ebea            jmp     nt!ExComputeTickCountMultiplier+0x2c (fffff800`1236c3d8)

nt! ?? ::PBOPGDP::`string'+0x1990:
fffff800`12382490 488d15dd4195ff  lea     rdx,[nt!`string' (fffff800`11cd6674)]
fffff800`12382497 488bc8          mov     rcx,rax
fffff800`1238249a e805d2a2ff      call    nt!strstr (fffff800`11daf6a4)
fffff800`1238249f 4885c0          test    rax,rax
fffff800`123824a2 0f84a997feff    je      nt!InitBootProcessor+0x71 (fffff800`1236bc51)

nt! ?? ::PBOPGDP::`string'+0x19a8:
fffff800`123824a8 488d4801        lea     rcx,[rax+1]
fffff800`123824ac e8676e91ff      call    nt!atol (fffff800`11c99318)
fffff800`123824b1 4863d0          movsxd  rdx,eax
fffff800`123824b4 48c1e208        shl     rdx,8
fffff800`123824b8 4885d2          test    rdx,rdx
fffff800`123824bb 0f849097feff    je      nt!InitBootProcessor+0x71 (fffff800`1236bc51)

nt! ?? ::PBOPGDP::`string'+0x19c1:
fffff800`123824c1 488bcb          mov     rcx,rbx
fffff800`123824c4 e8bfb0ffff      call    nt!ExBurnMemory (fffff800`1237d588)
fffff800`123824c9 90              nop
fffff800`123824ca e98297feff      jmp     nt!InitBootProcessor+0x71 (fffff800`1236bc51)

nt! ?? ::PBOPGDP::`string'+0x19cf:
fffff800`123824cf 40883590dbc4ff  mov     byte ptr [nt!KeForceGroupAwareness (fffff800`11fd0066)],sil
fffff800`123824d6 e98e97feff      jmp     nt!InitBootProcessor+0x89 (fffff800`1236bc69)

nt! ?? ::PBOPGDP::`string'+0x19db:
fffff800`123824db 4533c9          xor     r9d,r9d
fffff800`123824de 4863d0          movsxd  rdx,eax
fffff800`123824e1 4c8bc6          mov     r8,rsi
fffff800`123824e4 418d4931        lea     ecx,[r9+31h]
fffff800`123824e8 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`123824ed e84eff94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`123824f2 cc              int     3

nt! ?? ::PBOPGDP::`string'+0x19f3:
fffff800`123824f3 c1e010          shl     eax,10h
fffff800`123824f6 09054cedbdff    or      dword ptr [nt!CmNtCSDVersion (fffff800`11f61248)],eax
fffff800`123824fc e9c399feff      jmp     nt!InitBootProcessor+0x2e4 (fffff800`1236bec4)

nt! ?? ::PBOPGDP::`string'+0x1a01:
fffff800`12382501 833df09bf9ff04  cmp     dword ptr [nt!InitTickRolloverDelayType (fffff800`1231c0f8)],4
fffff800`12382508 0f85c399feff    jne     nt!InitBootProcessor+0x2f1 (fffff800`1236bed1)

nt! ?? ::PBOPGDP::`string'+0x1a0e:
fffff800`1238250e 8b05ec9af9ff    mov     eax,dword ptr [nt!InitTickRolloverDelay (fffff800`1231c000)]
fffff800`12382514 e9c199feff      jmp     nt!InitBootProcessor+0x2fa (fffff800`1236beda)

nt! ?? ::PBOPGDP::`string'+0x1a19:
fffff800`12382519 f7d8            neg     eax
fffff800`1238251b 408ad6          mov     dl,sil
fffff800`1238251e 8bc8            mov     ecx,eax
fffff800`12382520 4869c910270000  imul    rcx,rcx,2710h
fffff800`12382527 e844dda2ff      call    nt!KeAdjustInterruptTime (fffff800`11db0270)
fffff800`1238252c 90              nop
fffff800`1238252d e9b099feff      jmp     nt!InitBootProcessor+0x302 (fffff800`1236bee2)

nt! ?? ::PBOPGDP::`string'+0x1a32:
fffff800`12382532 0fb70df7ebbdff  movzx   ecx,word ptr [nt!NtSystemRoot (fffff800`11f61130)]
fffff800`12382539 488d5658        lea     rdx,[rsi+58h]
fffff800`1238253d 0fb702          movzx   eax,word ptr [rdx]
fffff800`12382540 48d1e9          shr     rcx,1
fffff800`12382543 48d1e8          shr     rax,1
fffff800`12382546 4883c111        add     rcx,11h
fffff800`1238254a 4803c1          add     rax,rcx
fffff800`1238254d 483bc7          cmp     rax,rdi
fffff800`12382550 0f876a9afeff    ja      nt!InitBootProcessor+0x3e0 (fffff800`1236bfc0)

nt! ?? ::PBOPGDP::`string'+0x1a56:
fffff800`12382556 4889542420      mov     qword ptr [rsp+20h],rdx
fffff800`1238255b 4c8d05164195ff  lea     r8,[nt!`string' (fffff800`11cd6678)]
fffff800`12382562 488d4db0        lea     rcx,[rbp-50h]
fffff800`12382566 49b93400000080f7ffff mov r9,0FFFFF78000000034h
fffff800`12382570 488bd7          mov     rdx,rdi
fffff800`12382573 e858b0a3ff      call    nt!RtlStringCbPrintfA (fffff800`11dbd5d0)
fffff800`12382578 85c0            test    eax,eax
fffff800`1238257a 0f89209afeff    jns     nt!InitBootProcessor+0x3c0 (fffff800`1236bfa0)

nt! ?? ::PBOPGDP::`string'+0x1a80:
fffff800`12382580 4533c9          xor     r9d,r9d
fffff800`12382583 4863d0          movsxd  rdx,eax
fffff800`12382586 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`1238258b 418d4931        lea     ecx,[r9+31h]
fffff800`1238258f 458d4103        lea     r8d,[r9+3]
fffff800`12382593 e8a8fe94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`12382598 cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1a99:
fffff800`12382599 b901000000      mov     ecx,1
fffff800`1238259e e80da794ff      call    nt!DbgBreakPointWithStatus (fffff800`11ccccb0)
fffff800`123825a3 90              nop
fffff800`123825a4 e95e9afeff      jmp     nt!InitBootProcessor+0x427 (fffff800`1236c007)

nt! ?? ::PBOPGDP::`string'+0x1aa9:
fffff800`123825a9 4533c0          xor     r8d,r8d
fffff800`123825ac 488d442458      lea     rax,[rsp+58h]
fffff800`123825b1 488d0d485a8fff  lea     rcx,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`123825b8 418d500b        lea     edx,[r8+0Bh]
fffff800`123825bc 41b987000040    mov     r9d,40000087h
fffff800`123825c2 4889442420      mov     qword ptr [rsp+20h],rax
fffff800`123825c7 e824e9dbff      call    nt!RtlFindMessage (fffff800`12140ef0)
fffff800`123825cc 85c0            test    eax,eax
fffff800`123825ce 7919            jns     nt! ?? ::PBOPGDP::`string'+0x1aed (fffff800`123825e9)

nt! ?? ::PBOPGDP::`string'+0x1ad4:
fffff800`123825d0 4533c9          xor     r9d,r9d
fffff800`123825d3 4863d0          movsxd  rdx,eax
fffff800`123825d6 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`123825db 418d4931        lea     ecx,[r9+31h]
fffff800`123825df 458d4104        lea     r8d,[r9+4]
fffff800`123825e3 e858fe94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`123825e8 cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1aed:
fffff800`123825e9 488b542458      mov     rdx,qword ptr [rsp+58h]
fffff800`123825ee 488d4c2430      lea     rcx,[rsp+30h]
fffff800`123825f3 4883c204        add     rdx,4
fffff800`123825f7 e83cb39eff      call    nt!RtlInitAnsiString (fffff800`11d6d938)
fffff800`123825fc 0fb60d45ecbdff  movzx   ecx,byte ptr [nt!CmNtCSDVersion (fffff800`11f61248)]
fffff800`12382603 41bbfeff0000    mov     r11d,0FFFEh
fffff800`12382609 6644015c2430    add     word ptr [rsp+30h],r11w
fffff800`1238260f 85c9            test    ecx,ecx
fffff800`12382611 0f843a9dfeff    je      nt!InitBootProcessor+0x771 (fffff800`1236c351)

nt! ?? ::PBOPGDP::`string'+0x1b1b:
fffff800`12382617 83c140          add     ecx,40h

nt! ?? ::PBOPGDP::`string'+0x1b1e:
fffff800`1238261a 0fb60528ecbdff  movzx   eax,byte ptr [nt!CmNtCSDVersion+0x1 (fffff800`11f61249)]
fffff800`12382621 894c2428        mov     dword ptr [rsp+28h],ecx
fffff800`12382625 4c8d4c2430      lea     r9,[rsp+30h]
fffff800`1238262a 4c8d05674095ff  lea     r8,[nt!`string' (fffff800`11cd6698)]
fffff800`12382631 488d4db0        lea     rcx,[rbp-50h]
fffff800`12382635 488bd7          mov     rdx,rdi
fffff800`12382638 89442420        mov     dword ptr [rsp+20h],eax
fffff800`1238263c e88fafa3ff      call    nt!RtlStringCbPrintfA (fffff800`11dbd5d0)
fffff800`12382641 85c0            test    eax,eax
fffff800`12382643 7919            jns     nt! ?? ::PBOPGDP::`string'+0x1b66 (fffff800`1238265e)

nt! ?? ::PBOPGDP::`string'+0x1b4d:
fffff800`12382645 4533c9          xor     r9d,r9d
fffff800`12382648 4863d0          movsxd  rdx,eax
fffff800`1238264b 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`12382650 418d4931        lea     ecx,[r9+31h]
fffff800`12382654 458d4105        lea     r8d,[r9+5]
fffff800`12382658 e8e3fd94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`1238265d cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1b66:
fffff800`1238265e f705e0ebbdff0000ffff test dword ptr [nt!CmNtCSDVersion (fffff800`11f61248)],0FFFF0000h
fffff800`12382668 0f840f9bfeff    je      nt!InitBootProcessor+0x59d (fffff800`1236c17d)

nt! ?? ::PBOPGDP::`string'+0x1b76:
fffff800`1238266e 4c8d442440      lea     r8,[rsp+40h]
fffff800`12382673 488d542448      lea     rdx,[rsp+48h]
fffff800`12382678 488d4db0        lea     rcx,[rbp-50h]
fffff800`1238267c e84b5ba5ff      call    nt!RtlStringCbCatExA (fffff800`11dd81cc)
fffff800`12382681 85c0            test    eax,eax
fffff800`12382683 7919            jns     nt! ?? ::PBOPGDP::`string'+0x1baa (fffff800`1238269e)

nt! ?? ::PBOPGDP::`string'+0x1b91:
fffff800`12382685 4533c9          xor     r9d,r9d
fffff800`12382688 4863d0          movsxd  rdx,eax
fffff800`1238268b 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`12382690 418d4931        lea     ecx,[r9+31h]
fffff800`12382694 458d4106        lea     r8d,[r9+6]
fffff800`12382698 e8a3fd94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`1238269d cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1baa:
fffff800`1238269e 440fb70da4ebbdff movzx   r9d,word ptr [nt!CmNtCSDVersion+0x2 (fffff800`11f6124a)]
fffff800`123826a6 488b542440      mov     rdx,qword ptr [rsp+40h]
fffff800`123826ab 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff800`123826b0 4c8d05ed3f95ff  lea     r8,[nt!`string' (fffff800`11cd66a4)]
fffff800`123826b7 e814afa3ff      call    nt!RtlStringCbPrintfA (fffff800`11dbd5d0)
fffff800`123826bc 85c0            test    eax,eax
fffff800`123826be 0f89b99afeff    jns     nt!InitBootProcessor+0x59d (fffff800`1236c17d)

nt! ?? ::PBOPGDP::`string'+0x1bd0:
fffff800`123826c4 4533c9          xor     r9d,r9d
fffff800`123826c7 4863d0          movsxd  rdx,eax
fffff800`123826ca 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`123826cf 418d4931        lea     ecx,[r9+31h]
fffff800`123826d3 458d4107        lea     r8d,[r9+7]
fffff800`123826d7 e864fd94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`123826dc cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1be9:
fffff800`123826dd 4533c9          xor     r9d,r9d
fffff800`123826e0 4863d0          movsxd  rdx,eax
fffff800`123826e3 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`123826e8 418d4931        lea     ecx,[r9+31h]
fffff800`123826ec 458d4108        lea     r8d,[r9+8]
fffff800`123826f0 e84bfd94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`123826f5 cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1c02:
fffff800`123826f6 4533c9          xor     r9d,r9d
fffff800`123826f9 4863d0          movsxd  rdx,eax
fffff800`123826fc 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`12382701 418d4931        lea     ecx,[r9+31h]
fffff800`12382705 458d4109        lea     r8d,[r9+9]
fffff800`12382709 e832fd94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`1238270e cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1c1b:
fffff800`1238270f 4533c9          xor     r9d,r9d
fffff800`12382712 4863d0          movsxd  rdx,eax
fffff800`12382715 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff800`1238271a 418d4931        lea     ecx,[r9+31h]
fffff800`1238271e 458d410a        lea     r8d,[r9+0Ah]
fffff800`12382722 e819fd94ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`12382727 cc              int     3

nt! ?? ::PBOPGDP::`string'+0x1c34:
fffff800`12382728 8b0dbedac4ff    mov     ecx,dword ptr [nt!MmSystemSize (fffff800`11fd01ec)]
fffff800`1238272e ba00001000      mov     edx,100000h
fffff800`12382733 ffc9            dec     ecx
fffff800`12382735 7409            je      nt! ?? ::PBOPGDP::`string'+0x1c4c (fffff800`12382740)

nt! ?? ::PBOPGDP::`string'+0x1c43:
fffff800`12382737 ffc9            dec     ecx
fffff800`12382739 750a            jne     nt! ?? ::PBOPGDP::`string'+0x1c51 (fffff800`12382745)

nt! ?? ::PBOPGDP::`string'+0x1c47:
fffff800`1238273b 418bd6          mov     edx,r14d
fffff800`1238273e eb05            jmp     nt! ?? ::PBOPGDP::`string'+0x1c51 (fffff800`12382745)

nt! ?? ::PBOPGDP::`string'+0x1c4c:
fffff800`12382740 ba00002000      mov     edx,200000h

nt! ?? ::PBOPGDP::`string'+0x1c51:
fffff800`12382745 41bf53746163    mov     r15d,63617453h
fffff800`1238274b 418bcc          mov     ecx,r12d
fffff800`1238274e 8bf2            mov     esi,edx
fffff800`12382750 458bc7          mov     r8d,r15d
fffff800`12382753 e8b858b6ff      call    nt!ExAllocatePoolWithTag (fffff800`11ee8010)
fffff800`12382758 488bf8          mov     rdi,rax
fffff800`1238275b 4885c0          test    rax,rax
fffff800`1238275e 0f84a19afeff    je      nt!InitBootProcessor+0x625 (fffff800`1236c205)

nt! ?? ::PBOPGDP::`string'+0x1c70:
fffff800`12382764 488d4c2470      lea     rcx,[rsp+70h]
fffff800`12382769 4889442470      mov     qword ptr [rsp+70h],rax
fffff800`1238276e 4889742478      mov     qword ptr [rsp+78h],rsi
fffff800`12382773 48897580        mov     qword ptr [rbp-80h],rsi
fffff800`12382777 e8fc35a9ff      call    nt!RtlControlStackTraceDataBase (fffff800`11e15d78)
fffff800`1238277c 85c0            test    eax,eax
fffff800`1238277e 0f89819afeff    jns     nt!InitBootProcessor+0x625 (fffff800`1236c205)

nt! ?? ::PBOPGDP::`string'+0x1c90:
fffff800`12382784 418bd7          mov     edx,r15d
fffff800`12382787 488bcf          mov     rcx,rdi
fffff800`1238278a e8d169b6ff      call    nt!ExFreePoolWithTag (fffff800`11ee9160)
fffff800`1238278f 90              nop
fffff800`12382790 e9709afeff      jmp     nt!InitBootProcessor+0x625 (fffff800`1236c205)

nt! ?? ::PBOPGDP::`string'+0x1ca1:
fffff800`12382795 bf20160100      mov     edi,11620h
fffff800`1238279a 41b845646267    mov     r8d,67626445h
fffff800`123827a0 418bcc          mov     ecx,r12d
fffff800`123827a3 8bd7            mov     edx,edi
fffff800`123827a5 e86658b6ff      call    nt!ExAllocatePoolWithTag (fffff800`11ee8010)
fffff800`123827aa 488905070ab8ff  mov     qword ptr [nt!RtlpExceptionLog2 (fffff800`11f031b8)],rax
fffff800`123827b1 4885c0          test    rax,rax
fffff800`123827b4 7417            je      nt! ?? ::PBOPGDP::`string'+0x1cdd (fffff800`123827cd)

nt! ?? ::PBOPGDP::`string'+0x1cc6:
fffff800`123827b6 448bc7          mov     r8d,edi
fffff800`123827b9 33d2            xor     edx,edx
fffff800`123827bb 488bc8          mov     rcx,rax
fffff800`123827be e8fd5297ff      call    nt!memset (fffff800`11cf7ac0)
fffff800`123827c3 c705efdcb8ff32000000 mov dword ptr [nt!RtlpExceptionLogSize (fffff800`11f104bc)],32h

nt! ?? ::PBOPGDP::`string'+0x1cdd:
fffff800`123827cd 4c892dac0cb8ff  mov     qword ptr [nt!RtlpExceptionLog (fffff800`11f03480)],r13
fffff800`123827d4 e9399afeff      jmp     nt!InitBootProcessor+0x632 (fffff800`1236c212)
