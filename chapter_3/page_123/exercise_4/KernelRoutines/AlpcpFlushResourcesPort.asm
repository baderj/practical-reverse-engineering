nt!AlpcpFlushResourcesPort:
fffff803`d9ceced0 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9ceced5 4889742410      mov     qword ptr [rsp+10h],rsi
fffff803`d9ceceda 48897c2418      mov     qword ptr [rsp+18h],rdi
fffff803`d9cecedf 4156            push    r14
fffff803`d9cecee1 4883ec20        sub     rsp,20h
fffff803`d9cecee5 488db930010000  lea     rdi,[rcx+130h]
fffff803`d9ceceec 4c8db138010000  lea     r14,[rcx+138h]
fffff803`d9cecef3 f0480fba2f00    lock bts qword ptr [rdi],0
fffff803`d9cecef9 0f8231001900    jb      nt! ?? ::NNGAKEGL::`string'+0x337b8 (fffff803`d9e7cf30)

nt!AlpcpFlushResourcesPort+0x2f:
fffff803`d9ceceff 4883cbff        or      rbx,0FFFFFFFFFFFFFFFFh

nt!AlpcpFlushResourcesPort+0x33:
fffff803`d9cecf03 498b36          mov     rsi,qword ptr [r14]
fffff803`d9cecf06 493bf6          cmp     rsi,r14
fffff803`d9cecf09 7524            jne     nt!AlpcpFlushResourcesPort+0x5f (fffff803`d9cecf2f)

nt!AlpcpFlushResourcesPort+0x3b:
fffff803`d9cecf0b f0480fc11f      lock xadd qword ptr [rdi],rbx
fffff803`d9cecf10 f6c302          test    bl,2
fffff803`d9cecf13 0f852c001900    jne     nt! ?? ::NNGAKEGL::`string'+0x337cd (fffff803`d9e7cf45)

nt!AlpcpFlushResourcesPort+0x49:
fffff803`d9cecf19 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d9cecf1e 488b742438      mov     rsi,qword ptr [rsp+38h]
fffff803`d9cecf23 488b7c2440      mov     rdi,qword ptr [rsp+40h]
fffff803`d9cecf28 4883c420        add     rsp,20h
fffff803`d9cecf2c 415e            pop     r14
fffff803`d9cecf2e c3              ret

nt!AlpcpFlushResourcesPort+0x5f:
fffff803`d9cecf2f 488b06          mov     rax,qword ptr [rsi]
fffff803`d9cecf32 4c397608        cmp     qword ptr [rsi+8],r14
fffff803`d9cecf36 0f8502001900    jne     nt! ?? ::NNGAKEGL::`string'+0x337c6 (fffff803`d9e7cf3e)

nt!AlpcpFlushResourcesPort+0x6c:
fffff803`d9cecf3c 48397008        cmp     qword ptr [rax+8],rsi
fffff803`d9cecf40 0f85f8ff1800    jne     nt! ?? ::NNGAKEGL::`string'+0x337c6 (fffff803`d9e7cf3e)

nt!AlpcpFlushResourcesPort+0x76:
fffff803`d9cecf46 498906          mov     qword ptr [r14],rax
fffff803`d9cecf49 4c897008        mov     qword ptr [rax+8],r14
fffff803`d9cecf4d 48897608        mov     qword ptr [rsi+8],rsi
fffff803`d9cecf51 488936          mov     qword ptr [rsi],rsi
fffff803`d9cecf54 4883c620        add     rsi,20h
fffff803`d9cecf58 0f0d4ef4        prefetchw [rsi-0Ch]
fffff803`d9cecf5c 8b46f4          mov     eax,dword ptr [rsi-0Ch]

nt!AlpcpFlushResourcesPort+0x8f:
fffff803`d9cecf5f 85c0            test    eax,eax
fffff803`d9cecf61 74a0            je      nt!AlpcpFlushResourcesPort+0x33 (fffff803`d9cecf03)

nt!AlpcpFlushResourcesPort+0x93:
fffff803`d9cecf63 8bd0            mov     edx,eax
fffff803`d9cecf65 8d4801          lea     ecx,[rax+1]
fffff803`d9cecf68 f00fb14ef4      lock cmpxchg dword ptr [rsi-0Ch],ecx
fffff803`d9cecf6d 3bc2            cmp     eax,edx
fffff803`d9cecf6f 75ee            jne     nt!AlpcpFlushResourcesPort+0x8f (fffff803`d9cecf5f)

nt!AlpcpFlushResourcesPort+0xa1:
fffff803`d9cecf71 ffc0            inc     eax
fffff803`d9cecf73 748e            je      nt!AlpcpFlushResourcesPort+0x33 (fffff803`d9cecf03)

nt!AlpcpFlushResourcesPort+0xa5:
fffff803`d9cecf75 488bc3          mov     rax,rbx
fffff803`d9cecf78 f0480fc107      lock xadd qword ptr [rdi],rax
fffff803`d9cecf7d a802            test    al,2
fffff803`d9cecf7f 7539            jne     nt!AlpcpFlushResourcesPort+0xea (fffff803`d9cecfba)

nt!AlpcpFlushResourcesPort+0xb1:
fffff803`d9cecf81 488bce          mov     rcx,rsi
fffff803`d9cecf84 e8f7eaffff      call    nt!AlpcpDeleteBlob (fffff803`d9ceba80)
fffff803`d9cecf89 84c0            test    al,al
fffff803`d9cecf8b 7406            je      nt!AlpcpFlushResourcesPort+0xc3 (fffff803`d9cecf93)

nt!AlpcpFlushResourcesPort+0xbd:
fffff803`d9cecf8d f0ff4ef4        lock dec dword ptr [rsi-0Ch]
fffff803`d9cecf91 7435            je      nt!AlpcpFlushResourcesPort+0xf8 (fffff803`d9cecfc8)

nt!AlpcpFlushResourcesPort+0xc3:
fffff803`d9cecf93 f0ff4ef4        lock dec dword ptr [rsi-0Ch]
fffff803`d9cecf97 7508            jne     nt!AlpcpFlushResourcesPort+0xd1 (fffff803`d9cecfa1)

nt!AlpcpFlushResourcesPort+0xc9:
fffff803`d9cecf99 488bce          mov     rcx,rsi
fffff803`d9cecf9c e87be9ffff      call    nt!AlpcpDestroyBlob (fffff803`d9ceb91c)

nt!AlpcpFlushResourcesPort+0xd1:
fffff803`d9cecfa1 f0480fba2f00    lock bts qword ptr [rdi],0
fffff803`d9cecfa7 0f8356ffffff    jae     nt!AlpcpFlushResourcesPort+0x33 (fffff803`d9cecf03)

nt!AlpcpFlushResourcesPort+0xdd:
fffff803`d9cecfad 488bcf          mov     rcx,rdi
fffff803`d9cecfb0 e84b84c7ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9cecfb5 e949ffffff      jmp     nt!AlpcpFlushResourcesPort+0x33 (fffff803`d9cecf03)

nt!AlpcpFlushResourcesPort+0xea:
fffff803`d9cecfba a804            test    al,4
fffff803`d9cecfbc 75c3            jne     nt!AlpcpFlushResourcesPort+0xb1 (fffff803`d9cecf81)

nt!AlpcpFlushResourcesPort+0xee:
fffff803`d9cecfbe 488bcf          mov     rcx,rdi
fffff803`d9cecfc1 e84ec0c7ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9cecfc6 ebb9            jmp     nt!AlpcpFlushResourcesPort+0xb1 (fffff803`d9cecf81)

nt!AlpcpFlushResourcesPort+0xf8:
fffff803`d9cecfc8 488bce          mov     rcx,rsi
fffff803`d9cecfcb e84ce9ffff      call    nt!AlpcpDestroyBlob (fffff803`d9ceb91c)
fffff803`d9cecfd0 ebc1            jmp     nt!AlpcpFlushResourcesPort+0xc3 (fffff803`d9cecf93)

nt! ?? ::NNGAKEGL::`string'+0x337b8:
fffff803`d9e7cf30 488bcf          mov     rcx,rdi
fffff803`d9e7cf33 e8c884aeff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9e7cf38 90              nop
fffff803`d9e7cf39 e9c1ffe6ff      jmp     nt!AlpcpFlushResourcesPort+0x2f (fffff803`d9ceceff)

nt! ?? ::NNGAKEGL::`string'+0x337c6:
fffff803`d9e7cf3e b903000000      mov     ecx,3
fffff803`d9e7cf43 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x337cd:
fffff803`d9e7cf45 f6c304          test    bl,4
fffff803`d9e7cf48 0f85cbffe6ff    jne     nt!AlpcpFlushResourcesPort+0x49 (fffff803`d9cecf19)

nt! ?? ::NNGAKEGL::`string'+0x337d6:
fffff803`d9e7cf4e 488bcf          mov     rcx,rdi
fffff803`d9e7cf51 e8bec0aeff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)
fffff803`d9e7cf56 90              nop
fffff803`d9e7cf57 e9bdffe6ff      jmp     nt!AlpcpFlushResourcesPort+0x49 (fffff803`d9cecf19)
