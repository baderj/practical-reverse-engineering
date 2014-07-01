0: kd> uf IovpCallDriver1
nt!IovpCallDriver1:
fffff803`d9ed1888 488bc4          mov     rax,rsp
fffff803`d9ed188b 48895810        mov     qword ptr [rax+10h],rbx
fffff803`d9ed188f 48897018        mov     qword ptr [rax+18h],rsi
fffff803`d9ed1893 48897820        mov     qword ptr [rax+20h],rdi
fffff803`d9ed1897 55              push    rbp
fffff803`d9ed1898 4154            push    r12
fffff803`d9ed189a 4155            push    r13
fffff803`d9ed189c 4156            push    r14
fffff803`d9ed189e 4157            push    r15
fffff803`d9ed18a0 488d68a8        lea     rbp,[rax-58h]
fffff803`d9ed18a4 4881ec30010000  sub     rsp,130h
fffff803`d9ed18ab 488b05e641c3ff  mov     rax,qword ptr [nt!_security_cookie (fffff803`d9b05a98)]
fffff803`d9ed18b2 4833c4          xor     rax,rsp
fffff803`d9ed18b5 48894520        mov     qword ptr [rbp+20h],rax
fffff803`d9ed18b9 4c8bf9          mov     r15,rcx
fffff803`d9ed18bc 488bb1a8000000  mov     rsi,qword ptr [rcx+0A8h]
fffff803`d9ed18c3 440f20c3        mov     rbx,cr8
fffff803`d9ed18c7 488bce          mov     rcx,rsi
fffff803`d9ed18ca e8e5feffff      call    nt!IovpPacketFromIrp (fffff803`d9ed17b4)
fffff803`d9ed18cf 4c8bf0          mov     r14,rax
fffff803`d9ed18d2 4885c0          test    rax,rax
fffff803`d9ed18d5 0f84dd050000    je      nt!IovpCallDriver1+0x630 (fffff803`d9ed1eb8)

nt!IovpCallDriver1+0x53:
fffff803`d9ed18db 33c0            xor     eax,eax
fffff803`d9ed18dd 41885e3d        mov     byte ptr [r14+3Dh],bl
fffff803`d9ed18e1 41885e3c        mov     byte ptr [r14+3Ch],bl
fffff803`d9ed18e5 4c8baeb8000000  mov     r13,qword ptr [rsi+0B8h]
fffff803`d9ed18ec 498b8fb0000000  mov     rcx,qword ptr [r15+0B0h]
fffff803`d9ed18f3 48894580        mov     qword ptr [rbp-80h],rax
fffff803`d9ed18f7 418b86d8000000  mov     eax,dword ptr [r14+0D8h]
fffff803`d9ed18fe 4983ed48        sub     r13,48h
fffff803`d9ed1902 4533e4          xor     r12d,r12d
fffff803`d9ed1905 48894c2448      mov     qword ptr [rsp+48h],rcx
fffff803`d9ed190a bf01000000      mov     edi,1
fffff803`d9ed190f 0fbae009        bt      eax,9
fffff803`d9ed1913 0f83e8000000    jae     nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x91:
fffff803`d9ed1919 80fb02          cmp     bl,2
fffff803`d9ed191c 0f83df000000    jae     nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x9a:
fffff803`d9ed1922 4d39a6c8000000  cmp     qword ptr [r14+0C8h],r12
fffff803`d9ed1929 0f85d2000000    jne     nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0xa7:
fffff803`d9ed192f 488b059ac0c4ff  mov     rax,qword ptr [nt!ViDriverKernelBase (fffff803`d9b1d9d0)]
fffff803`d9ed1936 4885c0          test    rax,rax
fffff803`d9ed1939 7412            je      nt!IovpCallDriver1+0xc5 (fffff803`d9ed194d)

nt!IovpCallDriver1+0xb3:
fffff803`d9ed193b 483bc8          cmp     rcx,rax
fffff803`d9ed193e 720d            jb      nt!IovpCallDriver1+0xc5 (fffff803`d9ed194d)

nt!IovpCallDriver1+0xb8:
fffff803`d9ed1940 483b0dd1c0c4ff  cmp     rcx,qword ptr [nt!ViDriverKernelEnd (fffff803`d9b1da18)]
fffff803`d9ed1947 0f82b4000000    jb      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0xc5:
fffff803`d9ed194d e86a4c0000      call    nt!VfTargetDriversIsEnabled (fffff803`d9ed65bc)
fffff803`d9ed1952 85c0            test    eax,eax
fffff803`d9ed1954 0f84a7000000    je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0xd2:
fffff803`d9ed195a 8b4610          mov     eax,dword ptr [rsi+10h]
fffff803`d9ed195d a8c0            test    al,0C0h
fffff803`d9ed195f 0f859c000000    jne     nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0xdd:
fffff803`d9ed1965 44386641        cmp     byte ptr [rsi+41h],r12b
fffff803`d9ed1969 0f8592000000    jne     nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0xe7:
fffff803`d9ed196f ba64000000      mov     edx,64h
fffff803`d9ed1974 33c9            xor     ecx,ecx
fffff803`d9ed1976 e83171ffff      call    nt!VfRandomGetNumber (fffff803`d9ec8aac)
fffff803`d9ed197b 8b0d17cfc2ff    mov     ecx,dword ptr [nt!ViPendingProbability (fffff803`d9afe898)]
fffff803`d9ed1981 3bc1            cmp     eax,ecx
fffff803`d9ed1983 737c            jae     nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0xfd:
fffff803`d9ed1985 410fb64d00      movzx   ecx,byte ptr [r13]
fffff803`d9ed198a 83f90d          cmp     ecx,0Dh
fffff803`d9ed198d 7506            jne     nt!IovpCallDriver1+0x10d (fffff803`d9ed1995)

nt!IovpCallDriver1+0x107:
fffff803`d9ed198f 418b4518        mov     eax,dword ptr [r13+18h]
fffff803`d9ed1993 eb05            jmp     nt!IovpCallDriver1+0x112 (fffff803`d9ed199a)

nt!IovpCallDriver1+0x10d:
fffff803`d9ed1995 410fb64501      movzx   eax,byte ptr [r13+1]

nt!IovpCallDriver1+0x112:
fffff803`d9ed199a 83e90c          sub     ecx,0Ch
fffff803`d9ed199d 745b            je      nt!IovpCallDriver1+0x172 (fffff803`d9ed19fa)

nt!IovpCallDriver1+0x117:
fffff803`d9ed199f ffc9            dec     ecx
fffff803`d9ed19a1 7418            je      nt!IovpCallDriver1+0x133 (fffff803`d9ed19bb)

nt!IovpCallDriver1+0x11b:
fffff803`d9ed19a3 83e904          sub     ecx,4
fffff803`d9ed19a6 740f            je      nt!IovpCallDriver1+0x12f (fffff803`d9ed19b7)

nt!IovpCallDriver1+0x120:
fffff803`d9ed19a8 83f90a          cmp     ecx,0Ah
fffff803`d9ed19ab 7505            jne     nt!IovpCallDriver1+0x12a (fffff803`d9ed19b2)

nt!IovpCallDriver1+0x125:
fffff803`d9ed19ad 83f802          cmp     eax,2

nt!IovpCallDriver1+0x128:
fffff803`d9ed19b0 744f            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x12a:
fffff803`d9ed19b2 448be7          mov     r12d,edi
fffff803`d9ed19b5 eb4a            jmp     nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x12f:
fffff803`d9ed19b7 3bc7            cmp     eax,edi
fffff803`d9ed19b9 ebf5            jmp     nt!IovpCallDriver1+0x128 (fffff803`d9ed19b0)

nt!IovpCallDriver1+0x133:
fffff803`d9ed19bb 3d00000900      cmp     eax,90000h
fffff803`d9ed19c0 743f            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x13a:
fffff803`d9ed19c2 3d04000900      cmp     eax,90004h
fffff803`d9ed19c7 7438            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x141:
fffff803`d9ed19c9 3d08000900      cmp     eax,90008h
fffff803`d9ed19ce 7431            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x148:
fffff803`d9ed19d0 3d0c000900      cmp     eax,9000Ch
fffff803`d9ed19d5 742a            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x14f:
fffff803`d9ed19d7 3d10000900      cmp     eax,90010h
fffff803`d9ed19dc 7423            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x156:
fffff803`d9ed19de 3d14000900      cmp     eax,90014h
fffff803`d9ed19e3 741c            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x15d:
fffff803`d9ed19e5 3d50000900      cmp     eax,90050h
fffff803`d9ed19ea 7415            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x164:
fffff803`d9ed19ec 3d5c000900      cmp     eax,9005Ch
fffff803`d9ed19f1 740e            je      nt!IovpCallDriver1+0x179 (fffff803`d9ed1a01)

nt!IovpCallDriver1+0x16b:
fffff803`d9ed19f3 3d40020900      cmp     eax,90240h
fffff803`d9ed19f8 ebb6            jmp     nt!IovpCallDriver1+0x128 (fffff803`d9ed19b0)

nt!IovpCallDriver1+0x172:
fffff803`d9ed19fa 83f802          cmp     eax,2
fffff803`d9ed19fd 440f45e7        cmovne  r12d,edi

nt!IovpCallDriver1+0x179:
fffff803`d9ed1a01 8a4642          mov     al,byte ptr [rsi+42h]
fffff803`d9ed1a04 498bbee0000000  mov     rdi,qword ptr [r14+0E0h]
fffff803`d9ed1a0b 498b8fa0000000  mov     rcx,qword ptr [r15+0A0h]
fffff803`d9ed1a12 48897c2468      mov     qword ptr [rsp+68h],rdi
fffff803`d9ed1a17 48894c2460      mov     qword ptr [rsp+60h],rcx
fffff803`d9ed1a1c 384643          cmp     byte ptr [rsi+43h],al
fffff803`d9ed1a1f 7f39            jg      nt!IovpCallDriver1+0x1d2 (fffff803`d9ed1a5a)

nt!IovpCallDriver1+0x199:
fffff803`d9ed1a21 418a4500        mov     al,byte ptr [r13]
fffff803`d9ed1a25 3c03            cmp     al,3
fffff803`d9ed1a27 7404            je      nt!IovpCallDriver1+0x1a5 (fffff803`d9ed1a2d)

nt!IovpCallDriver1+0x1a1:
fffff803`d9ed1a29 3c04            cmp     al,4
fffff803`d9ed1a2b 752d            jne     nt!IovpCallDriver1+0x1d2 (fffff803`d9ed1a5a)

nt!IovpCallDriver1+0x1a5:
fffff803`d9ed1a2d 498b87a8000000  mov     rax,qword ptr [r15+0A8h]
fffff803`d9ed1a34 4883780800      cmp     qword ptr [rax+8],0
fffff803`d9ed1a39 741f            je      nt!IovpCallDriver1+0x1d2 (fffff803`d9ed1a5a)

nt!IovpCallDriver1+0x1b3:
fffff803`d9ed1a3b f705bb13c8ff00600000 test dword ptr [nt!MmVerifierData (fffff803`d9b52e00)],6000h
fffff803`d9ed1a45 7413            je      nt!IovpCallDriver1+0x1d2 (fffff803`d9ed1a5a)

nt!IovpCallDriver1+0x1bf:
fffff803`d9ed1a47 4d8bc5          mov     r8,r13
fffff803`d9ed1a4a 498bd6          mov     rdx,r14
fffff803`d9ed1a4d 498bcf          mov     rcx,r15
fffff803`d9ed1a50 e8fb23b7ff      call    nt!MdlInvariantPreProcessing1 (fffff803`d9a43e50)
fffff803`d9ed1a55 488b4c2460      mov     rcx,qword ptr [rsp+60h]

nt!IovpCallDriver1+0x1d2:
fffff803`d9ed1a5a 4885ff          test    rdi,rdi
fffff803`d9ed1a5d 7530            jne     nt!IovpCallDriver1+0x207 (fffff803`d9ed1a8f)

nt!IovpCallDriver1+0x1d7:
fffff803`d9ed1a5f 418b4638        mov     eax,dword ptr [r14+38h]
fffff803`d9ed1a63 a801            test    al,1
fffff803`d9ed1a65 7528            jne     nt!IovpCallDriver1+0x207 (fffff803`d9ed1a8f)

nt!IovpCallDriver1+0x1df:
fffff803`d9ed1a67 83c801          or      eax,1
fffff803`d9ed1a6a 458bc4          mov     r8d,r12d
fffff803`d9ed1a6d 498bd6          mov     rdx,r14
fffff803`d9ed1a70 41894638        mov     dword ptr [r14+38h],eax
fffff803`d9ed1a74 c744244001000000 mov     dword ptr [rsp+40h],1
fffff803`d9ed1a7c e867a40000      call    nt!IovpSessionDataCreate (fffff803`d9edbee8)
fffff803`d9ed1a81 488bf8          mov     rdi,rax
fffff803`d9ed1a84 4889442468      mov     qword ptr [rsp+68h],rax
fffff803`d9ed1a89 8b442440        mov     eax,dword ptr [rsp+40h]
fffff803`d9ed1a8d eb06            jmp     nt!IovpCallDriver1+0x20d (fffff803`d9ed1a95)

nt!IovpCallDriver1+0x207:
fffff803`d9ed1a8f 33c0            xor     eax,eax
fffff803`d9ed1a91 89442440        mov     dword ptr [rsp+40h],eax

nt!IovpCallDriver1+0x20d:
fffff803`d9ed1a95 49893f          mov     qword ptr [r15],rdi
fffff803`d9ed1a98 4d897710        mov     qword ptr [r15+10h],r14
fffff803`d9ed1a9c 4885ff          test    rdi,rdi
fffff803`d9ed1a9f 0f84fa030000    je      nt!IovpCallDriver1+0x617 (fffff803`d9ed1e9f)

nt!IovpCallDriver1+0x21d:
fffff803`d9ed1aa5 48bb1400000080f7ffff mov rbx,0FFFFF78000000014h
fffff803`d9ed1aaf 488b1b          mov     rbx,qword ptr [rbx]
fffff803`d9ed1ab2 85c0            test    eax,eax
fffff803`d9ed1ab4 743d            je      nt!IovpCallDriver1+0x26b (fffff803`d9ed1af3)

nt!IovpCallDriver1+0x22e:
fffff803`d9ed1ab6 488b4c2460      mov     rcx,qword ptr [rsp+60h]
fffff803`d9ed1abb e850240000      call    nt!IovUtilGetBottomDeviceObject (fffff803`d9ed3f10)
fffff803`d9ed1ac0 418b8ed8000000  mov     ecx,dword ptr [r14+0D8h]
fffff803`d9ed1ac7 4c8bc6          mov     r8,rsi
fffff803`d9ed1aca 488bd0          mov     rdx,rax
fffff803`d9ed1acd 488bf8          mov     rdi,rax
fffff803`d9ed1ad0 e8dfcb0000      call    nt!VfIrpLogRecordEvent (fffff803`d9ede6b4)
fffff803`d9ed1ad5 488bcf          mov     rcx,rdi
fffff803`d9ed1ad8 e80331a5ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9ed1add f041ff4614      lock inc dword ptr [r14+14h]
fffff803`d9ed1ae2 488b7c2468      mov     rdi,qword ptr [rsp+68h]
fffff803`d9ed1ae7 41ff4618        inc     dword ptr [r14+18h]
fffff803`d9ed1aeb 488bcf          mov     rcx,rdi
fffff803`d9ed1aee e80da50000      call    nt!IovpSessionDataReference (fffff803`d9edc000)

nt!IovpCallDriver1+0x26b:
fffff803`d9ed1af3 48837e6800      cmp     qword ptr [rsi+68h],0
fffff803`d9ed1af8 7450            je      nt!IovpCallDriver1+0x2c2 (fffff803`d9ed1b4a)

nt!IovpCallDriver1+0x272:
fffff803`d9ed1afa b903020000      mov     ecx,203h
fffff803`d9ed1aff e8542e0000      call    nt!ViErrorDisplayDescription (fffff803`d9ed4958)
fffff803`d9ed1b04 4c8b4c2448      mov     r9,qword ptr [rsp+48h]
fffff803`d9ed1b09 4c8d05c085a7ff  lea     r8,[nt! ?? ::FNODOBFM::`string' (fffff803`d994a0d0)]
fffff803`d9ed1b10 488d4da0        lea     rcx,[rbp-60h]
fffff803`d9ed1b14 ba40000000      mov     edx,40h
fffff803`d9ed1b19 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`d9ed1b1e e8ad9aafff      call    nt!RtlStringCbPrintfA (fffff803`d99cb5d0)
fffff803`d9ed1b23 85c0            test    eax,eax
fffff803`d9ed1b25 7809            js      nt!IovpCallDriver1+0x2a8 (fffff803`d9ed1b30)

nt!IovpCallDriver1+0x29f:
fffff803`d9ed1b27 488d4da0        lea     rcx,[rbp-60h]
fffff803`d9ed1b2b e80060b3ff      call    nt!KsepDebugPrint (fffff803`d9a07b30)

nt!IovpCallDriver1+0x2a8:
fffff803`d9ed1b30 488b542448      mov     rdx,qword ptr [rsp+48h]
fffff803`d9ed1b35 4533c9          xor     r9d,r9d
fffff803`d9ed1b38 4c8bc6          mov     r8,rsi
fffff803`d9ed1b3b b903020000      mov     ecx,203h
fffff803`d9ed1b40 e8eb2c0000      call    nt!ViErrorFinishReport (fffff803`d9ed4830)
fffff803`d9ed1b45 4883666800      and     qword ptr [rsi+68h],0

nt!IovpCallDriver1+0x2c2:
fffff803`d9ed1b4a 418b4638        mov     eax,dword ptr [r14+38h]
fffff803`d9ed1b4e a810            test    al,10h
fffff803`d9ed1b50 744b            je      nt!IovpCallDriver1+0x315 (fffff803`d9ed1b9d)

nt!IovpCallDriver1+0x2ca:
fffff803`d9ed1b52 b905020000      mov     ecx,205h
fffff803`d9ed1b57 e8fc2d0000      call    nt!ViErrorDisplayDescription (fffff803`d9ed4958)
fffff803`d9ed1b5c 4c8b4c2448      mov     r9,qword ptr [rsp+48h]
fffff803`d9ed1b61 4c8d056885a7ff  lea     r8,[nt! ?? ::FNODOBFM::`string' (fffff803`d994a0d0)]
fffff803`d9ed1b68 488d4de0        lea     rcx,[rbp-20h]
fffff803`d9ed1b6c ba40000000      mov     edx,40h
fffff803`d9ed1b71 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`d9ed1b76 e8559aafff      call    nt!RtlStringCbPrintfA (fffff803`d99cb5d0)
fffff803`d9ed1b7b 85c0            test    eax,eax
fffff803`d9ed1b7d 7809            js      nt!IovpCallDriver1+0x300 (fffff803`d9ed1b88)

nt!IovpCallDriver1+0x2f7:
fffff803`d9ed1b7f 488d4de0        lea     rcx,[rbp-20h]
fffff803`d9ed1b83 e8a85fb3ff      call    nt!KsepDebugPrint (fffff803`d9a07b30)

nt!IovpCallDriver1+0x300:
fffff803`d9ed1b88 488b542448      mov     rdx,qword ptr [rsp+48h]
fffff803`d9ed1b8d 4533c9          xor     r9d,r9d
fffff803`d9ed1b90 4c8bc6          mov     r8,rsi
fffff803`d9ed1b93 b905020000      mov     ecx,205h
fffff803`d9ed1b98 e8932c0000      call    nt!ViErrorFinishReport (fffff803`d9ed4830)

nt!IovpCallDriver1+0x315:
fffff803`d9ed1b9d 488b5730        mov     rdx,qword ptr [rdi+30h]
fffff803`d9ed1ba1 488b4c2460      mov     rcx,qword ptr [rsp+60h]
fffff803`d9ed1ba6 e8f1f7ffff      call    nt!IovpExamineDevObjForwarding (fffff803`d9ed139c)
fffff803`d9ed1bab 4c8b4c2448      mov     r9,qword ptr [rsp+48h]
fffff803`d9ed1bb0 8b542440        mov     edx,dword ptr [rsp+40h]
fffff803`d9ed1bb4 894738          mov     dword ptr [rdi+38h],eax
fffff803`d9ed1bb7 488d442478      lea     rax,[rsp+78h]
fffff803`d9ed1bbc 4c8bc6          mov     r8,rsi
fffff803`d9ed1bbf 4889442430      mov     qword ptr [rsp+30h],rax
fffff803`d9ed1bc4 488d442458      lea     rax,[rsp+58h]
fffff803`d9ed1bc9 498bce          mov     rcx,r14
fffff803`d9ed1bcc 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9ed1bd1 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff803`d9ed1bd6 e86df8ffff      call    nt!IovpExamineIrpStackForwarding (fffff803`d9ed1448)
fffff803`d9ed1bdb 4585e4          test    r12d,r12d
fffff803`d9ed1bde 741c            je      nt!IovpCallDriver1+0x374 (fffff803`d9ed1bfc)

nt!IovpCallDriver1+0x358:
fffff803`d9ed1be0 f041ff4614      lock inc dword ptr [r14+14h]
fffff803`d9ed1be5 41ff4618        inc     dword ptr [r14+18h]
fffff803`d9ed1be9 488bce          mov     rcx,rsi
fffff803`d9ed1bec 4d89aec8000000  mov     qword ptr [r14+0C8h],r13
fffff803`d9ed1bf3 e898130000      call    nt!VfPendingStartLogging (fffff803`d9ed2f90)
fffff803`d9ed1bf8 48894580        mov     qword ptr [rbp-80h],rax

nt!IovpCallDriver1+0x374:
fffff803`d9ed1bfc 4c8b642458      mov     r12,qword ptr [rsp+58h]
fffff803`d9ed1c01 498bd5          mov     rdx,r13
fffff803`d9ed1c04 498bcc          mov     rcx,r12
fffff803`d9ed1c07 e8a42a0000      call    nt!VfMajorIsNewRequest (fffff803`d9ed46b0)
fffff803`d9ed1c0c 488d542470      lea     rdx,[rsp+70h]
fffff803`d9ed1c11 488d4f50        lea     rcx,[rdi+50h]
fffff803`d9ed1c15 4889542438      mov     qword ptr [rsp+38h],rdx
fffff803`d9ed1c1a 8b542478        mov     edx,dword ptr [rsp+78h]
fffff803`d9ed1c1e c744243001000000 mov     dword ptr [rsp+30h],1
fffff803`d9ed1c26 89442428        mov     dword ptr [rsp+28h],eax
fffff803`d9ed1c2a 89542420        mov     dword ptr [rsp+20h],edx
fffff803`d9ed1c2e 8a5643          mov     dl,byte ptr [rsi+43h]
fffff803`d9ed1c31 4d8bcc          mov     r9,r12
fffff803`d9ed1c34 4d8bc5          mov     r8,r13
fffff803`d9ed1c37 89442450        mov     dword ptr [rsp+50h],eax
fffff803`d9ed1c3b e804faffff      call    nt!IovpAdvanceStackDownwards (fffff803`d9ed1644)
fffff803`d9ed1c40 488b7c2470      mov     rdi,qword ptr [rsp+70h]
fffff803`d9ed1c45 48895f30        mov     qword ptr [rdi+30h],rbx
fffff803`d9ed1c49 85c0            test    eax,eax
fffff803`d9ed1c4b 7551            jne     nt!IovpCallDriver1+0x416 (fffff803`d9ed1c9e)

nt!IovpCallDriver1+0x3c5:
fffff803`d9ed1c4d 410fba6f181a    bts     dword ptr [r15+18h],1Ah
fffff803`d9ed1c53 837c245000      cmp     dword ptr [rsp+50h],0
fffff803`d9ed1c58 498d4720        lea     rax,[r15+20h]
fffff803`d9ed1c5c 48894008        mov     qword ptr [rax+8],rax
fffff803`d9ed1c60 488900          mov     qword ptr [rax],rax
fffff803`d9ed1c63 48895f38        mov     qword ptr [rdi+38h],rbx
fffff803`d9ed1c67 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9ed1c70 488b7c2470      mov     rdi,qword ptr [rsp+70h]
fffff803`d9ed1c75 48894770        mov     qword ptr [rdi+70h],rax
fffff803`d9ed1c79 741e            je      nt!IovpCallDriver1+0x411 (fffff803`d9ed1c99)

nt!IovpCallDriver1+0x3f3:
fffff803`d9ed1c7b 837c244000      cmp     dword ptr [rsp+40h],0
fffff803`d9ed1c80 0f104630        movups  xmm0,xmmword ptr [rsi+30h]
fffff803`d9ed1c84 f30f7f4750      movdqu  xmmword ptr [rdi+50h],xmm0
fffff803`d9ed1c89 0f104e30        movups  xmm1,xmmword ptr [rsi+30h]
fffff803`d9ed1c8d f30f7f4f60      movdqu  xmmword ptr [rdi+60h],xmm1
fffff803`d9ed1c92 7405            je      nt!IovpCallDriver1+0x411 (fffff803`d9ed1c99)

nt!IovpCallDriver1+0x40c:
fffff803`d9ed1c94 0fba6f041b      bts     dword ptr [rdi+4],1Bh

nt!IovpCallDriver1+0x411:
fffff803`d9ed1c99 4c8b642458      mov     r12,qword ptr [rsp+58h]

nt!IovpCallDriver1+0x416:
fffff803`d9ed1c9e 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff803`d9ed1ca3 488bcb          mov     rcx,rbx
fffff803`d9ed1ca6 e8c5220000      call    nt!IovUtilGetLowerDeviceObject (fffff803`d9ed3f70)
fffff803`d9ed1cab 4885c0          test    rax,rax
fffff803`d9ed1cae 740a            je      nt!IovpCallDriver1+0x432 (fffff803`d9ed1cba)

nt!IovpCallDriver1+0x428:
fffff803`d9ed1cb0 488bc8          mov     rcx,rax
fffff803`d9ed1cb3 e8282fa5ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9ed1cb8 eb05            jmp     nt!IovpCallDriver1+0x437 (fffff803`d9ed1cbf)

nt!IovpCallDriver1+0x432:
fffff803`d9ed1cba 0fba6f041c      bts     dword ptr [rdi+4],1Ch

nt!IovpCallDriver1+0x437:
fffff803`d9ed1cbf 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`d9ed1cc3 410fb65500      movzx   edx,byte ptr [r13]
fffff803`d9ed1cc8 488b54d070      mov     rdx,qword ptr [rax+rdx*8+70h]
fffff803`d9ed1ccd 488d4710        lea     rax,[rdi+10h]
fffff803`d9ed1cd1 48895728        mov     qword ptr [rdi+28h],rdx
fffff803`d9ed1cd5 0fba77041e      btr     dword ptr [rdi+4],1Eh
fffff803`d9ed1cda 4c8b00          mov     r8,qword ptr [rax]
fffff803`d9ed1cdd 498d5720        lea     rdx,[r15+20h]
fffff803`d9ed1ce1 4c8902          mov     qword ptr [rdx],r8
fffff803`d9ed1ce4 48894208        mov     qword ptr [rdx+8],rax
fffff803`d9ed1ce8 49394008        cmp     qword ptr [r8+8],rax
fffff803`d9ed1cec 7407            je      nt!IovpCallDriver1+0x46d (fffff803`d9ed1cf5)

nt!IovpCallDriver1+0x466:
fffff803`d9ed1cee b903000000      mov     ecx,3
fffff803`d9ed1cf3 cd29            int     29h

nt!IovpCallDriver1+0x46d:
fffff803`d9ed1cf5 49895008        mov     qword ptr [r8+8],rdx
fffff803`d9ed1cf9 488910          mov     qword ptr [rax],rdx
fffff803`d9ed1cfc 49897f08        mov     qword ptr [r15+8],rdi
fffff803`d9ed1d00 49897748        mov     qword ptr [r15+48h],rsi
fffff803`d9ed1d04 488b96b8000000  mov     rdx,qword ptr [rsi+0B8h]
fffff803`d9ed1d0b 498d4f50        lea     rcx,[r15+50h]
fffff803`d9ed1d0f 4883c2b8        add     rdx,0FFFFFFFFFFFFFFB8h
fffff803`d9ed1d13 41b848000000    mov     r8d,48h
fffff803`d9ed1d19 e8e294a0ff      call    nt!memcpy (fffff803`d98db200)
fffff803`d9ed1d1e 41f6450301      test    byte ptr [r13+3],1
fffff803`d9ed1d23 7406            je      nt!IovpCallDriver1+0x4a3 (fffff803`d9ed1d2b)

nt!IovpCallDriver1+0x49d:
fffff803`d9ed1d25 410fba6f1818    bts     dword ptr [r15+18h],18h

nt!IovpCallDriver1+0x4a3:
fffff803`d9ed1d2b 41807d001b      cmp     byte ptr [r13],1Bh
fffff803`d9ed1d30 0f8585000000    jne     nt!IovpCallDriver1+0x533 (fffff803`d9ed1dbb)

nt!IovpCallDriver1+0x4ae:
fffff803`d9ed1d36 41807d0102      cmp     byte ptr [r13+1],2
fffff803`d9ed1d3b 757e            jne     nt!IovpCallDriver1+0x533 (fffff803`d9ed1dbb)

nt!IovpCallDriver1+0x4b5:
fffff803`d9ed1d3d 410fba6f181d    bts     dword ptr [r15+18h],1Dh
fffff803`d9ed1d43 488bcb          mov     rcx,rbx
fffff803`d9ed1d46 e8c5210000      call    nt!IovUtilGetBottomDeviceObject (fffff803`d9ed3f10)
fffff803`d9ed1d4b 488bc8          mov     rcx,rax
fffff803`d9ed1d4e 49894740        mov     qword ptr [r15+40h],rax
fffff803`d9ed1d52 e8892ea5ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9ed1d57 488bcb          mov     rcx,rbx
fffff803`d9ed1d5a e865220000      call    nt!IovUtilIsInFdoStack (fffff803`d9ed3fc4)
fffff803`d9ed1d5f 85c0            test    eax,eax
fffff803`d9ed1d61 7417            je      nt!IovpCallDriver1+0x4f2 (fffff803`d9ed1d7a)

nt!IovpCallDriver1+0x4db:
fffff803`d9ed1d63 ba03000000      mov     edx,3
fffff803`d9ed1d68 488bcb          mov     rcx,rbx
fffff803`d9ed1d6b e8b8220000      call    nt!IovUtilIsDeviceObjectMarked (fffff803`d9ed4028)
fffff803`d9ed1d70 85c0            test    eax,eax
fffff803`d9ed1d72 7506            jne     nt!IovpCallDriver1+0x4f2 (fffff803`d9ed1d7a)

nt!IovpCallDriver1+0x4ec:
fffff803`d9ed1d74 410fba6f181c    bts     dword ptr [r15+18h],1Ch

nt!IovpCallDriver1+0x4f2:
fffff803`d9ed1d7a 488d4d88        lea     rcx,[rbp-78h]
fffff803`d9ed1d7e ba01000000      mov     edx,1
fffff803`d9ed1d83 e8b8c29dff      call    nt!VfAvlInitializeLockContext (fffff803`d98ae040)
fffff803`d9ed1d88 488d5588        lea     rdx,[rbp-78h]
fffff803`d9ed1d8c 488d0ddd140200  lea     rcx,[nt!ViDevObjAvl (fffff803`d9ef3270)]
fffff803`d9ed1d93 4533c9          xor     r9d,r9d
fffff803`d9ed1d96 4c8bc3          mov     r8,rbx
fffff803`d9ed1d99 e8e247b0ff      call    nt!VfAvlLookupTreeNode (fffff803`d99d6580)
fffff803`d9ed1d9e 4885c0          test    rax,rax
fffff803`d9ed1da1 740f            je      nt!IovpCallDriver1+0x52a (fffff803`d9ed1db2)

nt!IovpCallDriver1+0x51b:
fffff803`d9ed1da3 f083481002      lock or dword ptr [rax+10h],2
fffff803`d9ed1da8 4c8b642458      mov     r12,qword ptr [rsp+58h]
fffff803`d9ed1dad 488b7c2470      mov     rdi,qword ptr [rsp+70h]

nt!IovpCallDriver1+0x52a:
fffff803`d9ed1db2 488d4d88        lea     rcx,[rbp-78h]
fffff803`d9ed1db6 e841c29dff      call    nt!VfAvlCleanupLockContext (fffff803`d98adffc)

nt!IovpCallDriver1+0x533:
fffff803`d9ed1dbb 837c244000      cmp     dword ptr [rsp+40h],0
fffff803`d9ed1dc0 741b            je      nt!IovpCallDriver1+0x555 (fffff803`d9ed1ddd)

nt!IovpCallDriver1+0x53a:
fffff803`d9ed1dc2 488b442448      mov     rax,qword ptr [rsp+48h]
fffff803`d9ed1dc7 4c8bcf          mov     r9,rdi
fffff803`d9ed1dca 4d8bc5          mov     r8,r13
fffff803`d9ed1dcd 488bd6          mov     rdx,rsi
fffff803`d9ed1dd0 498bce          mov     rcx,r14
fffff803`d9ed1dd3 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9ed1dd8 e847240000      call    nt!VfMajorVerifyNewIrp (fffff803`d9ed4224)

nt!IovpCallDriver1+0x555:
fffff803`d9ed1ddd 837c245000      cmp     dword ptr [rsp+50h],0
fffff803`d9ed1de2 742a            je      nt!IovpCallDriver1+0x586 (fffff803`d9ed1e0e)

nt!IovpCallDriver1+0x55c:
fffff803`d9ed1de4 41f7463800000800 test    dword ptr [r14+38h],80000h
fffff803`d9ed1dec 7520            jne     nt!IovpCallDriver1+0x586 (fffff803`d9ed1e0e)

nt!IovpCallDriver1+0x566:
fffff803`d9ed1dee 488b442448      mov     rax,qword ptr [rsp+48h]
fffff803`d9ed1df3 4d8bcd          mov     r9,r13
fffff803`d9ed1df6 4d8bc4          mov     r8,r12
fffff803`d9ed1df9 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9ed1dfe 488bd3          mov     rdx,rbx
fffff803`d9ed1e01 498bce          mov     rcx,r14
fffff803`d9ed1e04 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff803`d9ed1e09 e8c2240000      call    nt!VfMajorVerifyNewRequest (fffff803`d9ed42d0)

nt!IovpCallDriver1+0x586:
fffff803`d9ed1e0e 488b442448      mov     rax,qword ptr [rsp+48h]
fffff803`d9ed1e13 4d8bcd          mov     r9,r13
fffff803`d9ed1e16 4d8bc4          mov     r8,r12
fffff803`d9ed1e19 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9ed1e1e 488bd3          mov     rdx,rbx
fffff803`d9ed1e21 498bce          mov     rcx,r14
fffff803`d9ed1e24 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff803`d9ed1e29 e85a250000      call    nt!VfMajorVerifyIrpStackDownward (fffff803`d9ed4388)
fffff803`d9ed1e2e 488b4c2468      mov     rcx,qword ptr [rsp+68h]
fffff803`d9ed1e33 48895930        mov     qword ptr [rcx+30h],rbx
fffff803`d9ed1e37 8a4643          mov     al,byte ptr [rsi+43h]
fffff803`d9ed1e3a 418886ba000000  mov     byte ptr [r14+0BAh],al
fffff803`d9ed1e41 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`d9ed1e45 0f104630        movups  xmm0,xmmword ptr [rsi+30h]
fffff803`d9ed1e49 f30f7f4060      movdqu  xmmword ptr [rax+60h],xmm0
fffff803`d9ed1e4e 8a4643          mov     al,byte ptr [rsi+43h]
fffff803`d9ed1e51 3c02            cmp     al,2
fffff803`d9ed1e53 7e23            jle     nt!IovpCallDriver1+0x5f0 (fffff803`d9ed1e78)

nt!IovpCallDriver1+0x5cd:
fffff803`d9ed1e55 488386b8000000b8 add     qword ptr [rsi+0B8h],0FFFFFFFFFFFFFFB8h
fffff803`d9ed1e5d fec8            dec     al
fffff803`d9ed1e5f 884643          mov     byte ptr [rsi+43h],al
fffff803`d9ed1e62 488b86b8000000  mov     rax,qword ptr [rsi+0B8h]
fffff803`d9ed1e69 8048bb10        or      byte ptr [rax-45h],10h
fffff803`d9ed1e6d fe4643          inc     byte ptr [rsi+43h]
fffff803`d9ed1e70 488386b800000048 add     qword ptr [rsi+0B8h],48h

nt!IovpCallDriver1+0x5f0:
fffff803`d9ed1e78 e883a10000      call    nt!IovpSessionDataReference (fffff803`d9edc000)
fffff803`d9ed1e7d f041ff4614      lock inc dword ptr [r14+14h]
fffff803`d9ed1e82 8b056cc0c4ff    mov     eax,dword ptr [nt!VfWdCancelTimeoutTicks (fffff803`d9b1def4)]
fffff803`d9ed1e88 498b5730        mov     rdx,qword ptr [r15+30h]
fffff803`d9ed1e8c 85c0            test    eax,eax
fffff803`d9ed1e8e 740f            je      nt!IovpCallDriver1+0x617 (fffff803`d9ed1e9f)

nt!IovpCallDriver1+0x608:
fffff803`d9ed1e90 4d8d86e8000000  lea     r8,[r14+0E8h]
fffff803`d9ed1e97 488bce          mov     rcx,rsi
fffff803`d9ed1e9a e8e5970000      call    nt!ViWdBeforeCallDriver (fffff803`d9edb684)

nt!IovpCallDriver1+0x617:
fffff803`d9ed1e9f 498bce          mov     rcx,r14
fffff803`d9ed1ea2 e8298f0000      call    nt!VfIrpDatabaseEntryReleaseLock (fffff803`d9edadd0)
fffff803`d9ed1ea7 488b4580        mov     rax,qword ptr [rbp-80h]
fffff803`d9ed1eab 4885c0          test    rax,rax
fffff803`d9ed1eae 7408            je      nt!IovpCallDriver1+0x630 (fffff803`d9ed1eb8)

nt!IovpCallDriver1+0x628:
fffff803`d9ed1eb0 488bc8          mov     rcx,rax
fffff803`d9ed1eb3 e828110000      call    nt!VfPendingFinishLogging (fffff803`d9ed2fe0)

nt!IovpCallDriver1+0x630:
fffff803`d9ed1eb8 488b4d20        mov     rcx,qword ptr [rbp+20h]
fffff803`d9ed1ebc 4833cc          xor     rcx,rsp
fffff803`d9ed1ebf e8fc55a0ff      call    nt!_security_check_cookie (fffff803`d98d74c0)
fffff803`d9ed1ec4 4c8d9c2430010000 lea     r11,[rsp+130h]
fffff803`d9ed1ecc 498b5b38        mov     rbx,qword ptr [r11+38h]
fffff803`d9ed1ed0 498b7340        mov     rsi,qword ptr [r11+40h]
fffff803`d9ed1ed4 498b7b48        mov     rdi,qword ptr [r11+48h]
fffff803`d9ed1ed8 498be3          mov     rsp,r11
fffff803`d9ed1edb 415f            pop     r15
fffff803`d9ed1edd 415e            pop     r14
fffff803`d9ed1edf 415d            pop     r13
fffff803`d9ed1ee1 415c            pop     r12
fffff803`d9ed1ee3 5d              pop     rbp
fffff803`d9ed1ee4 c3              ret
