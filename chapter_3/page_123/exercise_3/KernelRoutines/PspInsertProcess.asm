0: kd> uf PspInsertProcess
nt!PspInsertProcess:
fffff803`d9d05618 44894c2420      mov     dword ptr [rsp+20h],r9d
fffff803`d9d0561d 4489442418      mov     dword ptr [rsp+18h],r8d
fffff803`d9d05622 53              push    rbx
fffff803`d9d05623 55              push    rbp
fffff803`d9d05624 56              push    rsi
fffff803`d9d05625 57              push    rdi
fffff803`d9d05626 4154            push    r12
fffff803`d9d05628 4156            push    r14
fffff803`d9d0562a 4157            push    r15
fffff803`d9d0562c 4883ec50        sub     rsp,50h
fffff803`d9d05630 65488b342588010000 mov   rsi,qword ptr gs:[188h]
fffff803`d9d05639 4c8b9108040000  mov     r10,qword ptr [rcx+408h]
fffff803`d9d05640 8b81e0020000    mov     eax,dword ptr [rcx+2E0h]
fffff803`d9d05646 4c8ba6b8000000  mov     r12,qword ptr [rsi+0B8h]
fffff803`d9d0564d 4c8bfa          mov     r15,rdx
fffff803`d9d05650 488bf9          mov     rdi,rcx
fffff803`d9d05653 33d2            xor     edx,edx
fffff803`d9d05655 b984000000      mov     ecx,84h
fffff803`d9d0565a 418be9          mov     ebp,r9d
fffff803`d9d0565d 4c89642440      mov     qword ptr [rsp+40h],r12
fffff803`d9d05662 41894228        mov     dword ptr [r10+28h],eax
fffff803`d9d05666 e8a9140000      call    nt!SeAuditingWithTokenForSubcategory (fffff803`d9d06b14)
fffff803`d9d0566b 4533f6          xor     r14d,r14d
fffff803`d9d0566e 84c0            test    al,al
fffff803`d9d05670 0f85d29b1800    jne     nt! ?? ::NNGAKEGL::`string'+0x49d54 (fffff803`d9e8f248)

nt!PspInsertProcess+0x5e:
fffff803`d9d05676 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh
fffff803`d9d0567a 4d85ff          test    r15,r15
fffff803`d9d0567d 7428            je      nt!PspInsertProcess+0x8f (fffff803`d9d056a7)

nt!PspInsertProcess+0x67:
fffff803`d9d0567f 498b87a0030000  mov     rax,qword ptr [r15+3A0h]
fffff803`d9d05686 4885c0          test    rax,rax
fffff803`d9d05689 741c            je      nt!PspInsertProcess+0x8f (fffff803`d9d056a7)

nt!PspInsertProcess+0x73:
fffff803`d9d0568b 498b8fa0030000  mov     rcx,qword ptr [r15+3A0h]
fffff803`d9d05692 448bc5          mov     r8d,ebp
fffff803`d9d05695 488bd7          mov     rdx,rdi
fffff803`d9d05698 e8cbf60100      call    nt!PspImplicitAssignProcessToJob (fffff803`d9d24d68)
fffff803`d9d0569d 8be8            mov     ebp,eax
fffff803`d9d0569f 85c0            test    eax,eax
fffff803`d9d056a1 0f88559c1800    js      nt! ?? ::NNGAKEGL::`string'+0x49e03 (fffff803`d9e8f2fc)

nt!PspInsertProcess+0x8f:
fffff803`d9d056a7 66019ee6010000  add     word ptr [rsi+1E6h],bx
fffff803`d9d056ae f0480fba2de094e1ff00 lock bts qword ptr [nt!PspActiveProcessLock (fffff803`d9b1eb98)],0
fffff803`d9d056b8 0f82e7010000    jb      nt!PspInsertProcess+0x28d (fffff803`d9d058a5)

nt!PspInsertProcess+0xa6:
fffff803`d9d056be 488b0dc395e1ff  mov     rcx,qword ptr [nt!PsActiveProcessHead+0x8 (fffff803`d9b1ec88)]
fffff803`d9d056c5 488d87e8020000  lea     rax,[rdi+2E8h]
fffff803`d9d056cc 488d15ad95e1ff  lea     rdx,[nt!PsActiveProcessHead (fffff803`d9b1ec80)]
fffff803`d9d056d3 488910          mov     qword ptr [rax],rdx
fffff803`d9d056d6 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9d056da 483911          cmp     qword ptr [rcx],rdx
fffff803`d9d056dd 0f85739b1800    jne     nt! ?? ::NNGAKEGL::`string'+0x49d62 (fffff803`d9e8f256)

nt!PspInsertProcess+0xcb:
fffff803`d9d056e3 488901          mov     qword ptr [rcx],rax
fffff803`d9d056e6 4889059b95e1ff  mov     qword ptr [nt!PsActiveProcessHead+0x8 (fffff803`d9b1ec88)],rax
fffff803`d9d056ed 488bc3          mov     rax,rbx
fffff803`d9d056f0 f0480fc1059f94e1ff lock xadd qword ptr [nt!PspActiveProcessLock (fffff803`d9b1eb98)],rax
fffff803`d9d056f9 a802            test    al,2
fffff803`d9d056fb 0f85b5010000    jne     nt!PspInsertProcess+0x29e (fffff803`d9d058b6)

nt!PspInsertProcess+0xe9:
fffff803`d9d05701 0fbf86e6010000  movsx   eax,word ptr [rsi+1E6h]
fffff803`d9d05708 ffc0            inc     eax
fffff803`d9d0570a 668986e6010000  mov     word ptr [rsi+1E6h],ax
fffff803`d9d05711 6685c0          test    ax,ax
fffff803`d9d05714 7510            jne     nt!PspInsertProcess+0x10e (fffff803`d9d05726)

nt!PspInsertProcess+0xfe:
fffff803`d9d05716 488d8698000000  lea     rax,[rsi+98h]
fffff803`d9d0571d 483900          cmp     qword ptr [rax],rax
fffff803`d9d05720 0f85f4010000    jne     nt!PspInsertProcess+0x302 (fffff803`d9d0591a)

nt!PspInsertProcess+0x10e:
fffff803`d9d05726 418b8424fc020000 mov     eax,dword ptr [r12+2FCh]
fffff803`d9d0572e a808            test    al,8
fffff803`d9d05730 0f85ee010000    jne     nt!PspInsertProcess+0x30c (fffff803`d9d05924)

nt!PspInsertProcess+0x11e:
fffff803`d9d05736 488b8c24b0000000 mov     rcx,qword ptr [rsp+0B0h]
fffff803`d9d0573e 4885c9          test    rcx,rcx
fffff803`d9d05741 0f85169b1800    jne     nt! ?? ::NNGAKEGL::`string'+0x49d69 (fffff803`d9e8f25d)

nt!PspInsertProcess+0x12f:
fffff803`d9d05747 4c8d8c2490000000 lea     r9,[rsp+90h]
fffff803`d9d0574f 4d8bc6          mov     r8,r14
fffff803`d9d05752 498bd4          mov     rdx,r12
fffff803`d9d05755 488bcf          mov     rcx,rdi
fffff803`d9d05758 e8fb050000      call    nt!DbgkCopyProcessDebugPort (fffff803`d9d05d58)
fffff803`d9d0575d 8be8            mov     ebp,eax
fffff803`d9d0575f 4d85f6          test    r14,r14
fffff803`d9d05762 0f853f9b1800    jne     nt! ?? ::NNGAKEGL::`string'+0x49db3 (fffff803`d9e8f2a7)

nt!PspInsertProcess+0x150:
fffff803`d9d05768 4533f6          xor     r14d,r14d
fffff803`d9d0576b 85ed            test    ebp,ebp
fffff803`d9d0576d 0f88899b1800    js      nt! ?? ::NNGAKEGL::`string'+0x49e03 (fffff803`d9e8f2fc)

nt!PspInsertProcess+0x15b:
fffff803`d9d05773 4438b42490000000 cmp     byte ptr [rsp+90h],r14b
fffff803`d9d0577b 0f85349b1800    jne     nt! ?? ::NNGAKEGL::`string'+0x49dc1 (fffff803`d9e8f2b5)

nt!PspInsertProcess+0x169:
fffff803`d9d05781 458be6          mov     r12d,r14d
fffff803`d9d05784 4d85ff          test    r15,r15
fffff803`d9d05787 740c            je      nt!PspInsertProcess+0x17d (fffff803`d9d05795)

nt!PspInsertProcess+0x171:
fffff803`d9d05789 488b159088edff  mov     rdx,qword ptr [nt!PsInitialSystemProcess (fffff803`d9bde020)]
fffff803`d9d05790 4c3bfa          cmp     r15,rdx
fffff803`d9d05793 7413            je      nt!PspInsertProcess+0x190 (fffff803`d9d057a8)

nt!PspInsertProcess+0x17d:
fffff803`d9d05795 f68424b800000002 test    byte ptr [rsp+0B8h],2
fffff803`d9d0579d 0f85f4000000    jne     nt!PspInsertProcess+0x27f (fffff803`d9d05897)

nt!PspInsertProcess+0x18b:
fffff803`d9d057a3 488b542440      mov     rdx,qword ptr [rsp+40h]

nt!PspInsertProcess+0x190:
fffff803`d9d057a8 488b056988edff  mov     rax,qword ptr [nt!PsProcessType (fffff803`d9bde018)]
fffff803`d9d057af 4c8bb424c0000000 mov     r14,qword ptr [rsp+0C0h]
fffff803`d9d057b7 33c9            xor     ecx,ecx
fffff803`d9d057b9 4883c04c        add     rax,4Ch
fffff803`d9d057bd 4d8d8ea0000000  lea     r9,[r14+0A0h]
fffff803`d9d057c4 4d8bc6          mov     r8,r14
fffff803`d9d057c7 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9d057cc 8b8424a0000000  mov     eax,dword ptr [rsp+0A0h]
fffff803`d9d057d3 89442420        mov     dword ptr [rsp+20h],eax
fffff803`d9d057d7 e884cefeff      call    nt!SeCreateAccessStateEx (fffff803`d9cf2660)
fffff803`d9d057dc 8be8            mov     ebp,eax
fffff803`d9d057de 85c0            test    eax,eax
fffff803`d9d057e0 0f8854010000    js      nt!PspInsertProcess+0x322 (fffff803`d9d0593a)

nt!PspInsertProcess+0x1ce:
fffff803`d9d057e6 ba50734372      mov     edx,72437350h
fffff803`d9d057eb 488bcf          mov     rcx,rdi
fffff803`d9d057ee e8f54dc5ff      call    nt!ObfReferenceObjectWithTag (fffff803`d995a5e8)
fffff803`d9d057f3 f68424b800000004 test    byte ptr [rsp+0B8h],4
fffff803`d9d057fb 0f85ce000000    jne     nt!PspInsertProcess+0x2b7 (fffff803`d9d058cf)

nt!PspInsertProcess+0x1e9:
fffff803`d9d05801 4533ff          xor     r15d,r15d

nt!PspInsertProcess+0x1ec:
fffff803`d9d05804 448b8424a0000000 mov     r8d,dword ptr [rsp+0A0h]
fffff803`d9d0580c 4c897c2430      mov     qword ptr [rsp+30h],r15
fffff803`d9d05811 488364242800    and     qword ptr [rsp+28h],0
fffff803`d9d05817 4533c9          xor     r9d,r9d
fffff803`d9d0581a 498bd6          mov     rdx,r14
fffff803`d9d0581d 488bcf          mov     rcx,rdi
fffff803`d9d05820 4489642420      mov     dword ptr [rsp+20h],r12d
fffff803`d9d05825 e886a3feff      call    nt!ObInsertObjectEx (fffff803`d9cefbb0)
fffff803`d9d0582a 4533e4          xor     r12d,r12d
fffff803`d9d0582d 8be8            mov     ebp,eax
fffff803`d9d0582f 85c0            test    eax,eax
fffff803`d9d05831 0f88b59a1800    js      nt! ?? ::NNGAKEGL::`string'+0x49df5 (fffff803`d9e8f2ec)

nt!PspInsertProcess+0x21f:
fffff803`d9d05837 4d85ff          test    r15,r15
fffff803`d9d0583a 750d            jne     nt!PspInsertProcess+0x231 (fffff803`d9d05849)

nt!PspInsertProcess+0x224:
fffff803`d9d0583c ba50734372      mov     edx,72437350h
fffff803`d9d05841 488bcf          mov     rcx,rdi
fffff803`d9d05844 e817b6c0ff      call    nt!ObfDereferenceObjectWithTag (fffff803`d9910e60)

nt!PspInsertProcess+0x231:
fffff803`d9d05849 488b8fa0030000  mov     rcx,qword ptr [rdi+3A0h]
fffff803`d9d05850 4885c9          test    rcx,rcx
fffff803`d9d05853 7435            je      nt!PspInsertProcess+0x272 (fffff803`d9d0588a)

nt!PspInsertProcess+0x23d:
fffff803`d9d05855 488bd7          mov     rdx,rdi
fffff803`d9d05858 e833fd0100      call    nt!PspValidateJobAffinityState (fffff803`d9d25590)
fffff803`d9d0585d 8be8            mov     ebp,eax
fffff803`d9d0585f 85c0            test    eax,eax
fffff803`d9d05861 0f88859a1800    js      nt! ?? ::NNGAKEGL::`string'+0x49df5 (fffff803`d9e8f2ec)

nt!PspInsertProcess+0x24f:
fffff803`d9d05867 488bcf          mov     rcx,rdi
fffff803`d9d0586a e881050000      call    nt!ObCheckRefTraceProcess (fffff803`d9d05df0)
fffff803`d9d0586f f68424b800000001 test    byte ptr [rsp+0B8h],1
fffff803`d9d05877 7562            jne     nt!PspInsertProcess+0x2c3 (fffff803`d9d058db)

nt!PspInsertProcess+0x261:
fffff803`d9d05879 33c0            xor     eax,eax

nt!PspInsertProcess+0x263:
fffff803`d9d0587b 4883c450        add     rsp,50h
fffff803`d9d0587f 415f            pop     r15
fffff803`d9d05881 415e            pop     r14
fffff803`d9d05883 415c            pop     r12
fffff803`d9d05885 5f              pop     rdi
fffff803`d9d05886 5e              pop     rsi
fffff803`d9d05887 5d              pop     rbp
fffff803`d9d05888 5b              pop     rbx
fffff803`d9d05889 c3              ret

nt!PspInsertProcess+0x272:
fffff803`d9d0588a f0818ffc02000000000004 lock or dword ptr [rdi+2FCh],4000000h
fffff803`d9d05895 ebd0            jmp     nt!PspInsertProcess+0x24f (fffff803`d9d05867)

nt!PspInsertProcess+0x27f:
fffff803`d9d05897 488bd7          mov     rdx,rdi
fffff803`d9d0589a 41bc01000000    mov     r12d,1
fffff803`d9d058a0 e903ffffff      jmp     nt!PspInsertProcess+0x190 (fffff803`d9d057a8)

nt!PspInsertProcess+0x28d:
fffff803`d9d058a5 488d0dec92e1ff  lea     rcx,[nt!PspActiveProcessLock (fffff803`d9b1eb98)]
fffff803`d9d058ac e84ffbc5ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9d058b1 e908feffff      jmp     nt!PspInsertProcess+0xa6 (fffff803`d9d056be)

nt!PspInsertProcess+0x29e:
fffff803`d9d058b6 a804            test    al,4
fffff803`d9d058b8 0f8543feffff    jne     nt!PspInsertProcess+0xe9 (fffff803`d9d05701)

nt!PspInsertProcess+0x2a6:
fffff803`d9d058be 488d0dd392e1ff  lea     rcx,[nt!PspActiveProcessLock (fffff803`d9b1eb98)]
fffff803`d9d058c5 e84a37c6ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9d058ca e932feffff      jmp     nt!PspInsertProcess+0xe9 (fffff803`d9d05701)

nt!PspInsertProcess+0x2b7:
fffff803`d9d058cf 4d8dbe88010000  lea     r15,[r14+188h]
fffff803`d9d058d6 e929ffffff      jmp     nt!PspInsertProcess+0x1ec (fffff803`d9d05804)

nt!PspInsertProcess+0x2c3:
fffff803`d9d058db 488d8fc8020000  lea     rcx,[rdi+2C8h]
fffff803`d9d058e2 f0480fc119      lock xadd qword ptr [rcx],rbx
fffff803`d9d058e7 f6c302          test    bl,2
fffff803`d9d058ea 7542            jne     nt!PspInsertProcess+0x316 (fffff803`d9d0592e)

nt!PspInsertProcess+0x2d4:
fffff803`d9d058ec 0fbf86e4010000  movsx   eax,word ptr [rsi+1E4h]
fffff803`d9d058f3 ffc0            inc     eax
fffff803`d9d058f5 668986e4010000  mov     word ptr [rsi+1E4h],ax
fffff803`d9d058fc 6685c0          test    ax,ax
fffff803`d9d058ff 0f8574ffffff    jne     nt!PspInsertProcess+0x261 (fffff803`d9d05879)

nt!PspInsertProcess+0x2ed:
fffff803`d9d05905 488d8698000000  lea     rax,[rsi+98h]
fffff803`d9d0590c 483900          cmp     qword ptr [rax],rax
fffff803`d9d0590f 0f8464ffffff    je      nt!PspInsertProcess+0x261 (fffff803`d9d05879)

nt!PspInsertProcess+0x2fd:
fffff803`d9d05915 e9b6991800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49ddc (fffff803`d9e8f2d0)

nt!PspInsertProcess+0x302:
fffff803`d9d0591a e8e17ec7ff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)
fffff803`d9d0591f e902feffff      jmp     nt!PspInsertProcess+0x10e (fffff803`d9d05726)

nt!PspInsertProcess+0x30c:
fffff803`d9d05924 bd0a0100c0      mov     ebp,0C000010Ah
fffff803`d9d05929 e9ce991800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49e03 (fffff803`d9e8f2fc)

nt!PspInsertProcess+0x316:
fffff803`d9d0592e f6c304          test    bl,4
fffff803`d9d05931 75b9            jne     nt!PspInsertProcess+0x2d4 (fffff803`d9d058ec)

nt!PspInsertProcess+0x31b:
fffff803`d9d05933 e8dc36c6ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9d05938 ebb2            jmp     nt!PspInsertProcess+0x2d4 (fffff803`d9d058ec)

nt!PspInsertProcess+0x322:
fffff803`d9d0593a 4533f6          xor     r14d,r14d
fffff803`d9d0593d e9ba991800      jmp     nt! ?? ::NNGAKEGL::`string'+0x49e03 (fffff803`d9e8f2fc)

nt! ?? ::NNGAKEGL::`string'+0x49d54:
fffff803`d9e8f248 488bcf          mov     rcx,rdi
fffff803`d9e8f24b e8488ef8ff      call    nt!SeAuditProcessCreation (fffff803`d9e18098)
fffff803`d9e8f250 90              nop
fffff803`d9e8f251 e92064e7ff      jmp     nt!PspInsertProcess+0x5e (fffff803`d9d05676)

nt! ?? ::NNGAKEGL::`string'+0x49d62:
fffff803`d9e8f256 b903000000      mov     ecx,3
fffff803`d9e8f25b cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x49d69:
fffff803`d9e8f25d 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9e8f266 4c8b05738bc7ff  mov     r8,qword ptr [nt!DbgkDebugObjectType (fffff803`d9b07de0)]
fffff803`d9e8f26d ba02000000      mov     edx,2
fffff803`d9e8f272 448a8832020000  mov     r9b,byte ptr [rax+232h]
fffff803`d9e8f279 488d842498000000 lea     rax,[rsp+98h]
fffff803`d9e8f281 4c89742428      mov     qword ptr [rsp+28h],r14
fffff803`d9e8f286 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9e8f28b e8209ce2ff      call    nt!ObReferenceObjectByHandle (fffff803`d9cb8eb0)
fffff803`d9e8f290 4c8bb42498000000 mov     r14,qword ptr [rsp+98h]
fffff803`d9e8f298 8be8            mov     ebp,eax
fffff803`d9e8f29a 85c0            test    eax,eax
fffff803`d9e8f29c 0f889866e7ff    js      nt!PspInsertProcess+0x322 (fffff803`d9d0593a)

nt! ?? ::NNGAKEGL::`string'+0x49dae:
fffff803`d9e8f2a2 e9a064e7ff      jmp     nt!PspInsertProcess+0x12f (fffff803`d9d05747)

nt! ?? ::NNGAKEGL::`string'+0x49db3:
fffff803`d9e8f2a7 498bce          mov     rcx,r14
fffff803`d9e8f2aa e83159a9ff      call    nt!ObfDereferenceObject (fffff803`d9924be0)
fffff803`d9e8f2af 90              nop
fffff803`d9e8f2b0 e9b364e7ff      jmp     nt!PspInsertProcess+0x150 (fffff803`d9d05768)

nt! ?? ::NNGAKEGL::`string'+0x49dc1:
fffff803`d9e8f2b5 f68424a800000002 test    byte ptr [rsp+0A8h],2
fffff803`d9e8f2bd 0f84be64e7ff    je      nt!PspInsertProcess+0x169 (fffff803`d9d05781)

nt! ?? ::NNGAKEGL::`string'+0x49dcf:
fffff803`d9e8f2c3 f0838ffc02000002 lock or dword ptr [rdi+2FCh],2
fffff803`d9e8f2cb e9b164e7ff      jmp     nt!PspInsertProcess+0x169 (fffff803`d9d05781)

nt! ?? ::NNGAKEGL::`string'+0x49ddc:
fffff803`d9e8f2d0 664439a6e6010000 cmp     word ptr [rsi+1E6h],r12w
fffff803`d9e8f2d8 0f859b65e7ff    jne     nt!PspInsertProcess+0x261 (fffff803`d9d05879)

nt! ?? ::NNGAKEGL::`string'+0x49dea:
fffff803`d9e8f2de e81de5aeff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)
fffff803`d9e8f2e3 90              nop
fffff803`d9e8f2e4 e99065e7ff      jmp     nt!PspInsertProcess+0x261 (fffff803`d9d05879)

nt! ?? ::NNGAKEGL::`string'+0x49df5:
fffff803`d9e8f2ec 498bce          mov     rcx,r14
fffff803`d9e8f2ef e85cdfe2ff      call    nt!SeDeleteAccessState (fffff803`d9cbd250)
fffff803`d9e8f2f4 90              nop
fffff803`d9e8f2f5 e94066e7ff      jmp     nt!PspInsertProcess+0x322 (fffff803`d9d0593a)

nt! ?? ::NNGAKEGL::`string'+0x49e03:
fffff803`d9e8f2fc f68424b800000001 test    byte ptr [rsp+0B8h],1
fffff803`d9e8f304 744b            je      nt! ?? ::NNGAKEGL::`string'+0x49e5c (fffff803`d9e8f351)

nt! ?? ::NNGAKEGL::`string'+0x49e11:
fffff803`d9e8f306 488d8fc8020000  lea     rcx,[rdi+2C8h]
fffff803`d9e8f30d f0480fc119      lock xadd qword ptr [rcx],rbx
fffff803`d9e8f312 f6c302          test    bl,2
fffff803`d9e8f315 740a            je      nt! ?? ::NNGAKEGL::`string'+0x49e2c (fffff803`d9e8f321)

nt! ?? ::NNGAKEGL::`string'+0x49e22:
fffff803`d9e8f317 f6c304          test    bl,4
fffff803`d9e8f31a 7505            jne     nt! ?? ::NNGAKEGL::`string'+0x49e2c (fffff803`d9e8f321)

nt! ?? ::NNGAKEGL::`string'+0x49e27:
fffff803`d9e8f31c e8f39cadff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)

nt! ?? ::NNGAKEGL::`string'+0x49e2c:
fffff803`d9e8f321 0fbf86e4010000  movsx   eax,word ptr [rsi+1E4h]
fffff803`d9e8f328 ffc0            inc     eax
fffff803`d9e8f32a 668986e4010000  mov     word ptr [rsi+1E4h],ax
fffff803`d9e8f331 6685c0          test    ax,ax
fffff803`d9e8f334 751b            jne     nt! ?? ::NNGAKEGL::`string'+0x49e5c (fffff803`d9e8f351)

nt! ?? ::NNGAKEGL::`string'+0x49e41:
fffff803`d9e8f336 488d8698000000  lea     rax,[rsi+98h]
fffff803`d9e8f33d 483900          cmp     qword ptr [rax],rax
fffff803`d9e8f340 740f            je      nt! ?? ::NNGAKEGL::`string'+0x49e5c (fffff803`d9e8f351)

nt! ?? ::NNGAKEGL::`string'+0x49e4d:
fffff803`d9e8f342 664439b6e6010000 cmp     word ptr [rsi+1E6h],r14w
fffff803`d9e8f34a 7505            jne     nt! ?? ::NNGAKEGL::`string'+0x49e5c (fffff803`d9e8f351)

nt! ?? ::NNGAKEGL::`string'+0x49e57:
fffff803`d9e8f34c e8afe4aeff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt! ?? ::NNGAKEGL::`string'+0x49e5c:
fffff803`d9e8f351 8bc5            mov     eax,ebp
fffff803`d9e8f353 e92365e7ff      jmp     nt!PspInsertProcess+0x263 (fffff803`d9d0587b)
