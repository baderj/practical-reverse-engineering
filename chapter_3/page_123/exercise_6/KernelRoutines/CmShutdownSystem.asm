nt!CmShutdownSystem:
fffff803`221a3fb0 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff803`221a3fb5 48896c2418      mov     qword ptr [rsp+18h],rbp
fffff803`221a3fba 56              push    rsi
fffff803`221a3fbb 57              push    rdi
fffff803`221a3fbc 4156            push    r14
fffff803`221a3fbe 4883ec30        sub     rsp,30h
fffff803`221a3fc2 4533f6          xor     r14d,r14d
fffff803`221a3fc5 85c9            test    ecx,ecx
fffff803`221a3fc7 7516            jne     nt!CmShutdownSystem+0x2f (fffff803`221a3fdf)

nt!CmShutdownSystem+0x19:
fffff803`221a3fc9 8d7901          lea     edi,[rcx+1]
fffff803`221a3fcc 448935a52cd4ff  mov     dword ptr [nt!CmpDoIdleProcessing (fffff803`21ee6c78)],r14d
fffff803`221a3fd3 40883daffdd4ff  mov     byte ptr [nt!CmpNoMoreTx (fffff803`21ef3d89)],dil
fffff803`221a3fda e990040000      jmp     nt!CmShutdownSystem+0x4bf (fffff803`221a446f)

nt!CmShutdownSystem+0x2f:
fffff803`221a3fdf 488b0df2351500  mov     rcx,qword ptr [nt!CmpRegistryRootObject (fffff803`222f75d8)]
fffff803`221a3fe6 4885c9          test    rcx,rcx
fffff803`221a3fe9 7405            je      nt!CmShutdownSystem+0x40 (fffff803`221a3ff0)

nt!CmShutdownSystem+0x3b:
fffff803`221a3feb e8f0cbb6ff      call    nt!ObfDereferenceObject (fffff803`21d10be0)

nt!CmShutdownSystem+0x40:
fffff803`221a3ff0 bf01000000      mov     edi,1
fffff803`221a3ff5 33c0            xor     eax,eax
fffff803`221a3ff7 f0480fb13d585bdbff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)],rdi
fffff803`221a4000 7414            je      nt!CmShutdownSystem+0x66 (fffff803`221a4016)

nt!CmShutdownSystem+0x52:
fffff803`221a4002 483bc7          cmp     rax,rdi
fffff803`221a4005 740f            je      nt!CmShutdownSystem+0x66 (fffff803`221a4016)

nt!CmShutdownSystem+0x57:
fffff803`221a4007 488d0d4a5bdbff  lea     rcx,[nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`221a400e 488bd0          mov     rdx,rax
fffff803`221a4011 e83af9bcff      call    nt!ExfWaitForRundownProtectionRelease (fffff803`21d73950)

nt!CmShutdownSystem+0x66:
fffff803`221a4016 488bc7          mov     rax,rdi
fffff803`221a4019 488705385bdbff  xchg    rax,qword ptr [nt!CmpShutdownRundown (fffff803`21f59b58)]
fffff803`221a4020 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`221a4029 66ff89e4010000  dec     word ptr [rcx+1E4h]
fffff803`221a4030 f0480fba2d7669dbff00 lock bts qword ptr [nt!CmpShutdownLock (fffff803`21f5a9b0)],0
fffff803`221a403a 730c            jae     nt!CmShutdownSystem+0x98 (fffff803`221a4048)

nt!CmShutdownSystem+0x8c:
fffff803`221a403c 488d0d6d69dbff  lea     rcx,[nt!CmpShutdownLock (fffff803`21f5a9b0)]
fffff803`221a4043 e8b8d3baff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)

nt!CmShutdownSystem+0x98:
fffff803`221a4048 33c9            xor     ecx,ecx
fffff803`221a404a eb4d            jmp     nt!CmShutdownSystem+0xe9 (fffff803`221a4099)

nt!CmShutdownSystem+0x9c:
fffff803`221a404c e80349e9ff      call    nt!LOCK_HIVE_LOAD (fffff803`22038954)
fffff803`221a4051 e81aa5eaff      call    nt!CmpLockRegistryExclusive (fffff803`2204e570)
fffff803`221a4056 488b8b700b0000  mov     rcx,qword ptr [rbx+0B70h]
fffff803`221a405d 408ad7          mov     dl,dil
fffff803`221a4060 e87b50e7ff      call    nt!CmCloseRmHandle (fffff803`220190e0)
fffff803`221a4065 488b8b700b0000  mov     rcx,qword ptr [rbx+0B70h]
fffff803`221a406c 488bf0          mov     rsi,rax
fffff803`221a406f e89c50e7ff      call    nt!CmCloseTmHandle (fffff803`22019110)
fffff803`221a4074 488be8          mov     rbp,rax
fffff803`221a4077 e8f8e3f6ff      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`221a407c e83f48e9ff      call    nt!UNLOCK_HIVE_LOAD (fffff803`220388c0)
fffff803`221a4081 4885f6          test    rsi,rsi
fffff803`221a4084 7410            je      nt!CmShutdownSystem+0xe6 (fffff803`221a4096)

nt!CmShutdownSystem+0xd6:
fffff803`221a4086 488bce          mov     rcx,rsi
fffff803`221a4089 e85291b2ff      call    nt!ZwClose (fffff803`21ccd1e0)
fffff803`221a408e 488bcd          mov     rcx,rbp
fffff803`221a4091 e84a91b2ff      call    nt!ZwClose (fffff803`21ccd1e0)

nt!CmShutdownSystem+0xe6:
fffff803`221a4096 488bcb          mov     rcx,rbx

nt!CmShutdownSystem+0xe9:
fffff803`221a4099 e8e249e9ff      call    nt!CmpGetNextActiveHive (fffff803`22038a80)
fffff803`221a409e 488bd8          mov     rbx,rax
fffff803`221a40a1 4885c0          test    rax,rax
fffff803`221a40a4 75a6            jne     nt!CmShutdownSystem+0x9c (fffff803`221a404c)

nt!CmShutdownSystem+0xf6:
fffff803`221a40a6 e8a948e9ff      call    nt!LOCK_HIVE_LOAD (fffff803`22038954)
fffff803`221a40ab e8c0a4eaff      call    nt!CmpLockRegistryExclusive (fffff803`2204e570)
fffff803`221a40b0 443835d32f1500  cmp     byte ptr [nt!CmFirstTime (fffff803`222f708a)],r14b
fffff803`221a40b7 750c            jne     nt!CmShutdownSystem+0x115 (fffff803`221a40c5)

nt!CmShutdownSystem+0x109:
fffff803`221a40b9 488d0d6054dbff  lea     rcx,[nt!CmpLazyFlushTimer (fffff803`21f59520)]
fffff803`221a40c0 e8cb22b5ff      call    nt!KeCancelTimer (fffff803`21cf6390)

nt!CmShutdownSystem+0x115:
fffff803`221a40c5 488bcb          mov     rcx,rbx
fffff803`221a40c8 e8b349e9ff      call    nt!CmpGetNextActiveHive (fffff803`22038a80)
fffff803`221a40cd befeffffff      mov     esi,0FFFFFFFEh
fffff803`221a40d2 bd20000000      mov     ebp,20h
fffff803`221a40d7 eb3f            jmp     nt!CmShutdownSystem+0x168 (fffff803`221a4118)

nt!CmShutdownSystem+0x129:
fffff803`221a40d9 488b8b700b0000  mov     rcx,qword ptr [rbx+0B70h]
fffff803`221a40e0 4885c9          test    rcx,rcx
fffff803`221a40e3 742b            je      nt!CmShutdownSystem+0x160 (fffff803`221a4110)

nt!CmShutdownSystem+0x135:
fffff803`221a40e5 488b4338        mov     rax,qword ptr [rbx+38h]
fffff803`221a40e9 4883c110        add     rcx,10h
fffff803`221a40ed 483909          cmp     qword ptr [rcx],rcx
fffff803`221a40f0 7508            jne     nt!CmShutdownSystem+0x14a (fffff803`221a40fa)

nt!CmShutdownSystem+0x142:
fffff803`221a40f2 21b090000000    and     dword ptr [rax+90h],esi
fffff803`221a40f8 eb06            jmp     nt!CmShutdownSystem+0x150 (fffff803`221a4100)

nt!CmShutdownSystem+0x14a:
fffff803`221a40fa 09b890000000    or      dword ptr [rax+90h],edi

nt!CmShutdownSystem+0x150:
fffff803`221a4100 4533c9          xor     r9d,r9d
fffff803`221a4103 448bc5          mov     r8d,ebp
fffff803`221a4106 33d2            xor     edx,edx
fffff803`221a4108 488bcb          mov     rcx,rbx
fffff803`221a410b e8a01cedff      call    nt!HvpMarkDirty (fffff803`22075db0)

nt!CmShutdownSystem+0x160:
fffff803`221a4110 488bcb          mov     rcx,rbx
fffff803`221a4113 e86849e9ff      call    nt!CmpGetNextActiveHive (fffff803`22038a80)

nt!CmShutdownSystem+0x168:
fffff803`221a4118 488bd8          mov     rbx,rax
fffff803`221a411b 4885c0          test    rax,rax
fffff803`221a411e 75b9            jne     nt!CmShutdownSystem+0x129 (fffff803`221a40d9)

nt!CmShutdownSystem+0x170:
fffff803`221a4120 488b05b1fcd4ff  mov     rax,qword ptr [nt!CmRmSystem (fffff803`21ef3dd8)]
fffff803`221a4127 488b0d2229d4ff  mov     rcx,qword ptr [nt!CmpMachineHiveList+0x1b0 (fffff803`21ee6a50)]
fffff803`221a412e 4885c0          test    rax,rax
fffff803`221a4131 7428            je      nt!CmShutdownSystem+0x1ab (fffff803`221a415b)

nt!CmShutdownSystem+0x183:
fffff803`221a4133 4883c010        add     rax,10h
fffff803`221a4137 483900          cmp     qword ptr [rax],rax
fffff803`221a413a 488b4138        mov     rax,qword ptr [rcx+38h]
fffff803`221a413e 7508            jne     nt!CmShutdownSystem+0x198 (fffff803`221a4148)

nt!CmShutdownSystem+0x190:
fffff803`221a4140 21b090000000    and     dword ptr [rax+90h],esi
fffff803`221a4146 eb06            jmp     nt!CmShutdownSystem+0x19e (fffff803`221a414e)

nt!CmShutdownSystem+0x198:
fffff803`221a4148 09b890000000    or      dword ptr [rax+90h],edi

nt!CmShutdownSystem+0x19e:
fffff803`221a414e 4533c9          xor     r9d,r9d
fffff803`221a4151 448bc5          mov     r8d,ebp
fffff803`221a4154 33d2            xor     edx,edx
fffff803`221a4156 e8551cedff      call    nt!HvpMarkDirty (fffff803`22075db0)

nt!CmShutdownSystem+0x1ab:
fffff803`221a415b e814e3f6ff      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`221a4160 e85b47e9ff      call    nt!UNLOCK_HIVE_LOAD (fffff803`220388c0)
fffff803`221a4165 0f0d0d4468dbff  prefetchw [nt!CmpShutdownLock (fffff803`21f5a9b0)]
fffff803`221a416c 488b053d68dbff  mov     rax,qword ptr [nt!CmpShutdownLock (fffff803`21f5a9b0)]
fffff803`221a4173 488bc8          mov     rcx,rax
fffff803`221a4176 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`221a417a 4883f910        cmp     rcx,10h
fffff803`221a417e 488d48f0        lea     rcx,[rax-10h]
fffff803`221a4182 7703            ja      nt!CmShutdownSystem+0x1d7 (fffff803`221a4187)

nt!CmShutdownSystem+0x1d4:
fffff803`221a4184 498bce          mov     rcx,r14

nt!CmShutdownSystem+0x1d7:
fffff803`221a4187 a802            test    al,2
fffff803`221a4189 750b            jne     nt!CmShutdownSystem+0x1e6 (fffff803`221a4196)

nt!CmShutdownSystem+0x1db:
fffff803`221a418b f0480fb10d1c68dbff lock cmpxchg qword ptr [nt!CmpShutdownLock (fffff803`21f5a9b0)],rcx
fffff803`221a4194 740c            je      nt!CmShutdownSystem+0x1f2 (fffff803`221a41a2)

nt!CmShutdownSystem+0x1e6:
fffff803`221a4196 488d0d1368dbff  lea     rcx,[nt!CmpShutdownLock (fffff803`21f5a9b0)]
fffff803`221a419d e84a82b8ff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt!CmShutdownSystem+0x1f2:
fffff803`221a41a2 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`221a41ab 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`221a41b2 ffc0            inc     eax
fffff803`221a41b4 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`221a41bb 6685c0          test    ax,ax
fffff803`221a41be 751b            jne     nt!CmShutdownSystem+0x22b (fffff803`221a41db)

nt!CmShutdownSystem+0x210:
fffff803`221a41c0 488d8198000000  lea     rax,[rcx+98h]
fffff803`221a41c7 483900          cmp     qword ptr [rax],rax
fffff803`221a41ca 740f            je      nt!CmShutdownSystem+0x22b (fffff803`221a41db)

nt!CmShutdownSystem+0x21c:
fffff803`221a41cc 664439b1e6010000 cmp     word ptr [rcx+1E6h],r14w
fffff803`221a41d4 7505            jne     nt!CmShutdownSystem+0x22b (fffff803`221a41db)

nt!CmShutdownSystem+0x226:
fffff803`221a41d6 e82556bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!CmShutdownSystem+0x22b:
fffff803`221a41db e80416f9ff      call    nt!CmpDoFlushAll (fffff803`221357e4)
fffff803`221a41e0 654c8b1c2588010000 mov   r11,qword ptr gs:[188h]
fffff803`221a41e9 6641ff8be4010000 dec     word ptr [r11+1E4h]
fffff803`221a41f1 f0480fba2db567dbff00 lock bts qword ptr [nt!CmpShutdownLock (fffff803`21f5a9b0)],0
fffff803`221a41fb 730c            jae     nt!CmShutdownSystem+0x259 (fffff803`221a4209)

nt!CmShutdownSystem+0x24d:
fffff803`221a41fd 488d0dac67dbff  lea     rcx,[nt!CmpShutdownLock (fffff803`21f5a9b0)]
fffff803`221a4204 e8f7d1baff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)

nt!CmShutdownSystem+0x259:
fffff803`221a4209 e84647e9ff      call    nt!LOCK_HIVE_LOAD (fffff803`22038954)
fffff803`221a420e e85da3eaff      call    nt!CmpLockRegistryExclusive (fffff803`2204e570)
fffff803`221a4213 33c9            xor     ecx,ecx
fffff803`221a4215 eb11            jmp     nt!CmShutdownSystem+0x278 (fffff803`221a4228)

nt!CmShutdownSystem+0x267:
fffff803`221a4217 488b8b700b0000  mov     rcx,qword ptr [rbx+0B70h]
fffff803`221a421e 33d2            xor     edx,edx
fffff803`221a4220 e8fb4ae7ff      call    nt!CmShutdownCmRM (fffff803`22018d20)
fffff803`221a4225 488bcb          mov     rcx,rbx

nt!CmShutdownSystem+0x278:
fffff803`221a4228 e85348e9ff      call    nt!CmpGetNextActiveHive (fffff803`22038a80)
fffff803`221a422d 488bd8          mov     rbx,rax
fffff803`221a4230 4885c0          test    rax,rax
fffff803`221a4233 75e2            jne     nt!CmShutdownSystem+0x267 (fffff803`221a4217)

nt!CmShutdownSystem+0x285:
fffff803`221a4235 33c9            xor     ecx,ecx
fffff803`221a4237 e99f000000      jmp     nt!CmShutdownSystem+0x32b (fffff803`221a42db)

nt!CmShutdownSystem+0x28c:
fffff803`221a423c 488db3580b0000  lea     rsi,[rbx+0B58h]
fffff803`221a4243 483936          cmp     qword ptr [rsi],rsi
fffff803`221a4246 7476            je      nt!CmShutdownSystem+0x30e (fffff803`221a42be)

nt!CmShutdownSystem+0x298:
fffff803`221a4248 f0480fba2d4e67dbff00 lock bts qword ptr [nt!CmpHiveListHeadLock (fffff803`21f5a9a0)],0
fffff803`221a4252 730c            jae     nt!CmShutdownSystem+0x2b0 (fffff803`221a4260)

nt!CmShutdownSystem+0x2a4:
fffff803`221a4254 488d0d4567dbff  lea     rcx,[nt!CmpHiveListHeadLock (fffff803`21f5a9a0)]
fffff803`221a425b e8a0d1baff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)

nt!CmShutdownSystem+0x2b0:
fffff803`221a4260 488b0e          mov     rcx,qword ptr [rsi]
fffff803`221a4263 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`221a4267 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`221a426b 0f8511020000    jne     nt!CmShutdownSystem+0x4d2 (fffff803`221a4482)

nt!CmShutdownSystem+0x2c1:
fffff803`221a4271 483930          cmp     qword ptr [rax],rsi
fffff803`221a4274 0f8508020000    jne     nt!CmShutdownSystem+0x4d2 (fffff803`221a4482)

nt!CmShutdownSystem+0x2ca:
fffff803`221a427a 488908          mov     qword ptr [rax],rcx
fffff803`221a427d 48894108        mov     qword ptr [rcx+8],rax
fffff803`221a4281 0f0d0d1867dbff  prefetchw [nt!CmpHiveListHeadLock (fffff803`21f5a9a0)]
fffff803`221a4288 488b051167dbff  mov     rax,qword ptr [nt!CmpHiveListHeadLock (fffff803`21f5a9a0)]
fffff803`221a428f 488bc8          mov     rcx,rax
fffff803`221a4292 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`221a4296 4883f910        cmp     rcx,10h
fffff803`221a429a 488d48f0        lea     rcx,[rax-10h]
fffff803`221a429e 7703            ja      nt!CmShutdownSystem+0x2f3 (fffff803`221a42a3)

nt!CmShutdownSystem+0x2f0:
fffff803`221a42a0 498bce          mov     rcx,r14

nt!CmShutdownSystem+0x2f3:
fffff803`221a42a3 a802            test    al,2
fffff803`221a42a5 750b            jne     nt!CmShutdownSystem+0x302 (fffff803`221a42b2)

nt!CmShutdownSystem+0x2f7:
fffff803`221a42a7 f0480fb10df066dbff lock cmpxchg qword ptr [nt!CmpHiveListHeadLock (fffff803`21f5a9a0)],rcx
fffff803`221a42b0 740c            je      nt!CmShutdownSystem+0x30e (fffff803`221a42be)

nt!CmShutdownSystem+0x302:
fffff803`221a42b2 488d0de766dbff  lea     rcx,[nt!CmpHiveListHeadLock (fffff803`21f5a9a0)]
fffff803`221a42b9 e82e81b8ff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt!CmShutdownSystem+0x30e:
fffff803`221a42be 8b83500b0000    mov     eax,dword ptr [rbx+0B50h]
fffff803`221a42c4 a802            test    al,2
fffff803`221a42c6 7408            je      nt!CmShutdownSystem+0x320 (fffff803`221a42d0)

nt!CmShutdownSystem+0x318:
fffff803`221a42c8 488bcb          mov     rcx,rbx
fffff803`221a42cb e8d402ffff      call    nt!CmpRemoveHiveFromMapping (fffff803`221945a4)

nt!CmShutdownSystem+0x320:
fffff803`221a42d0 488bcb          mov     rcx,rbx
fffff803`221a42d3 e8a8b3e7ff      call    nt!CmpCmdHiveClose (fffff803`2201f680)
fffff803`221a42d8 488bcb          mov     rcx,rbx

nt!CmShutdownSystem+0x32b:
fffff803`221a42db e8a047e9ff      call    nt!CmpGetNextActiveHive (fffff803`22038a80)
fffff803`221a42e0 488bd8          mov     rbx,rax
fffff803`221a42e3 4885c0          test    rax,rax
fffff803`221a42e6 0f8550ffffff    jne     nt!CmShutdownSystem+0x28c (fffff803`221a423c)

nt!CmShutdownSystem+0x33c:
fffff803`221a42ec 8b0582fad4ff    mov     eax,dword ptr [nt!CmpActiveHiveRundownCount (fffff803`21ef3d74)]
fffff803`221a42f2 89442450        mov     dword ptr [rsp+50h],eax
fffff803`221a42f6 413bc6          cmp     eax,r14d
fffff803`221a42f9 7e48            jle     nt!CmShutdownSystem+0x393 (fffff803`221a4343)

nt!CmShutdownSystem+0x34b:
fffff803`221a42fb e874e1f6ff      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`221a4300 e8bb45e9ff      call    nt!UNLOCK_HIVE_LOAD (fffff803`220388c0)

nt!CmShutdownSystem+0x355:
fffff803`221a4305 4c8d442450      lea     r8,[rsp+50h]
fffff803`221a430a 488d1563fad4ff  lea     rdx,[nt!CmpActiveHiveRundownCount (fffff803`21ef3d74)]
fffff803`221a4311 488d0d4858dbff  lea     rcx,[nt!CmpActiveHiveRundownEvent (fffff803`21f59b60)]
fffff803`221a4318 41b904000000    mov     r9d,4
fffff803`221a431e 4c89742420      mov     qword ptr [rsp+20h],r14
fffff803`221a4323 e88449aeff      call    nt!ExBlockOnAddressPushLock (fffff803`21c88cac)
fffff803`221a4328 448b1d45fad4ff  mov     r11d,dword ptr [nt!CmpActiveHiveRundownCount (fffff803`21ef3d74)]
fffff803`221a432f 44895c2450      mov     dword ptr [rsp+50h],r11d
fffff803`221a4334 453bde          cmp     r11d,r14d
fffff803`221a4337 7fcc            jg      nt!CmShutdownSystem+0x355 (fffff803`221a4305)

nt!CmShutdownSystem+0x389:
fffff803`221a4339 e81646e9ff      call    nt!LOCK_HIVE_LOAD (fffff803`22038954)
fffff803`221a433e e82da2eaff      call    nt!CmpLockRegistryExclusive (fffff803`2204e570)

nt!CmShutdownSystem+0x393:
fffff803`221a4343 40883d972d1500  mov     byte ptr [nt!HvShutdownComplete (fffff803`222f70e1)],dil
fffff803`221a434a f0480fba2d2cf3e1ff00 lock bts qword ptr [nt!CmpParseCacheLock (fffff803`21fc3680)],0
fffff803`221a4354 730c            jae     nt!CmShutdownSystem+0x3b2 (fffff803`221a4362)

nt!CmShutdownSystem+0x3a6:
fffff803`221a4356 488d0d23f3e1ff  lea     rcx,[nt!CmpParseCacheLock (fffff803`21fc3680)]
fffff803`221a435d e89ed0baff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)

nt!CmShutdownSystem+0x3b2:
fffff803`221a4362 488b358f51dbff  mov     rsi,qword ptr [nt!CmpParseCacheTable (fffff803`21f594f8)]
fffff803`221a4369 4883c608        add     rsi,8

nt!CmShutdownSystem+0x3bd:
fffff803`221a436d 488b0e          mov     rcx,qword ptr [rsi]
fffff803`221a4370 4885c9          test    rcx,rcx
fffff803`221a4373 7415            je      nt!CmShutdownSystem+0x3da (fffff803`221a438a)

nt!CmShutdownSystem+0x3c5:
fffff803`221a4375 488b19          mov     rbx,qword ptr [rcx]
fffff803`221a4378 ba434d5065      mov     edx,65504D43h
fffff803`221a437d e8deedd3ff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`221a4382 488bcb          mov     rcx,rbx
fffff803`221a4385 4885db          test    rbx,rbx
fffff803`221a4388 75eb            jne     nt!CmShutdownSystem+0x3c5 (fffff803`221a4375)

nt!CmShutdownSystem+0x3da:
fffff803`221a438a 4883c608        add     rsi,8
fffff803`221a438e 482bef          sub     rbp,rdi
fffff803`221a4391 75da            jne     nt!CmShutdownSystem+0x3bd (fffff803`221a436d)

nt!CmShutdownSystem+0x3e3:
fffff803`221a4393 4c89355e51dbff  mov     qword ptr [nt!CmpParseCacheTable (fffff803`21f594f8)],r14
fffff803`221a439a 0f0d0ddff2e1ff  prefetchw [nt!CmpParseCacheLock (fffff803`21fc3680)]
fffff803`221a43a1 488b05d8f2e1ff  mov     rax,qword ptr [nt!CmpParseCacheLock (fffff803`21fc3680)]
fffff803`221a43a8 488bc8          mov     rcx,rax
fffff803`221a43ab 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`221a43af 4883f910        cmp     rcx,10h
fffff803`221a43b3 488d48f0        lea     rcx,[rax-10h]
fffff803`221a43b7 7703            ja      nt!CmShutdownSystem+0x40c (fffff803`221a43bc)

nt!CmShutdownSystem+0x409:
fffff803`221a43b9 498bce          mov     rcx,r14

nt!CmShutdownSystem+0x40c:
fffff803`221a43bc a802            test    al,2
fffff803`221a43be 750b            jne     nt!CmShutdownSystem+0x41b (fffff803`221a43cb)

nt!CmShutdownSystem+0x410:
fffff803`221a43c0 f0480fb10db7f2e1ff lock cmpxchg qword ptr [nt!CmpParseCacheLock (fffff803`21fc3680)],rcx
fffff803`221a43c9 740c            je      nt!CmShutdownSystem+0x427 (fffff803`221a43d7)

nt!CmShutdownSystem+0x41b:
fffff803`221a43cb 488d0daef2e1ff  lea     rcx,[nt!CmpParseCacheLock (fffff803`21fc3680)]
fffff803`221a43d2 e81580b8ff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt!CmShutdownSystem+0x427:
fffff803`221a43d7 8b05438cd5ff    mov     eax,dword ptr [nt!PopShutdownCleanly (fffff803`21efd020)]
fffff803`221a43dd a808            test    al,8
fffff803`221a43df 740e            je      nt!CmShutdownSystem+0x43f (fffff803`221a43ef)

nt!CmShutdownSystem+0x431:
fffff803`221a43e1 443835a22c1500  cmp     byte ptr [nt!CmFirstTime (fffff803`222f708a)],r14b
fffff803`221a43e8 7505            jne     nt!CmShutdownSystem+0x43f (fffff803`221a43ef)

nt!CmShutdownSystem+0x43a:
fffff803`221a43ea e8a1000000      call    nt!CmpFreeAllMemory (fffff803`221a4490)

nt!CmShutdownSystem+0x43f:
fffff803`221a43ef e880e0f6ff      call    nt!CmpUnlockRegistry (fffff803`22112474)
fffff803`221a43f4 e8c744e9ff      call    nt!UNLOCK_HIVE_LOAD (fffff803`220388c0)
fffff803`221a43f9 0f0d0db065dbff  prefetchw [nt!CmpShutdownLock (fffff803`21f5a9b0)]
fffff803`221a4400 488b05a965dbff  mov     rax,qword ptr [nt!CmpShutdownLock (fffff803`21f5a9b0)]
fffff803`221a4407 488bc8          mov     rcx,rax
fffff803`221a440a 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`221a440e 4883f910        cmp     rcx,10h
fffff803`221a4412 488d48f0        lea     rcx,[rax-10h]
fffff803`221a4416 7703            ja      nt!CmShutdownSystem+0x46b (fffff803`221a441b)

nt!CmShutdownSystem+0x468:
fffff803`221a4418 498bce          mov     rcx,r14

nt!CmShutdownSystem+0x46b:
fffff803`221a441b a802            test    al,2
fffff803`221a441d 750b            jne     nt!CmShutdownSystem+0x47a (fffff803`221a442a)

nt!CmShutdownSystem+0x46f:
fffff803`221a441f f0480fb10d8865dbff lock cmpxchg qword ptr [nt!CmpShutdownLock (fffff803`21f5a9b0)],rcx
fffff803`221a4428 740c            je      nt!CmShutdownSystem+0x486 (fffff803`221a4436)

nt!CmShutdownSystem+0x47a:
fffff803`221a442a 488d0d7f65dbff  lea     rcx,[nt!CmpShutdownLock (fffff803`21f5a9b0)]
fffff803`221a4431 e8b67fb8ff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt!CmShutdownSystem+0x486:
fffff803`221a4436 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`221a443f 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`221a4446 ffc0            inc     eax
fffff803`221a4448 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`221a444f 6685c0          test    ax,ax
fffff803`221a4452 751b            jne     nt!CmShutdownSystem+0x4bf (fffff803`221a446f)

nt!CmShutdownSystem+0x4a4:
fffff803`221a4454 488d8198000000  lea     rax,[rcx+98h]
fffff803`221a445b 483900          cmp     qword ptr [rax],rax
fffff803`221a445e 740f            je      nt!CmShutdownSystem+0x4bf (fffff803`221a446f)

nt!CmShutdownSystem+0x4b0:
fffff803`221a4460 664439b1e6010000 cmp     word ptr [rcx+1E6h],r14w
fffff803`221a4468 7505            jne     nt!CmShutdownSystem+0x4bf (fffff803`221a446f)

nt!CmShutdownSystem+0x4ba:
fffff803`221a446a e89153bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt!CmShutdownSystem+0x4bf:
fffff803`221a446f 488b5c2458      mov     rbx,qword ptr [rsp+58h]
fffff803`221a4474 488b6c2460      mov     rbp,qword ptr [rsp+60h]
fffff803`221a4479 4883c430        add     rsp,30h
fffff803`221a447d 415e            pop     r14
fffff803`221a447f 5f              pop     rdi
fffff803`221a4480 5e              pop     rsi
fffff803`221a4481 c3              ret

nt!CmShutdownSystem+0x4d2:
fffff803`221a4482 b903000000      mov     ecx,3
fffff803`221a4487 cd29            int     29h
fffff803`221a4489 90              nop
fffff803`221a448a 90              nop
fffff803`221a448b 90              nop
fffff803`221a448c 90              nop
fffff803`221a448d 90              nop
fffff803`221a448e 90              nop
fffff803`221a448f 90              nop
fffff803`221a4490 48895c2410      mov     qword ptr [rsp+10h],rbx
fffff803`221a4495 48896c2418      mov     qword ptr [rsp+18h],rbp
fffff803`221a449a 56              push    rsi
fffff803`221a449b 57              push    rdi
fffff803`221a449c 4154            push    r12
fffff803`221a449e 4156            push    r14
fffff803`221a44a0 4157            push    r15
fffff803`221a44a2 4883ec30        sub     rsp,30h
fffff803`221a44a6 33f6            xor     esi,esi
fffff803`221a44a8 33c9            xor     ecx,ecx
fffff803`221a44aa 4532f6          xor     r14b,r14b
fffff803`221a44ad 448d6601        lea     r12d,[rsi+1]
fffff803`221a44b1 418ad4          mov     dl,r12b
fffff803`221a44b4 e8634fe7ff      call    nt!CmpRunDownDelayDerefKCBEngine (fffff803`2201941c)
fffff803`221a44b9 33c9            xor     ecx,ecx
fffff803`221a44bb e8c045e9ff      call    nt!CmpGetNextActiveHive (fffff803`22038a80)
fffff803`221a44c0 488bd8          mov     rbx,rax
fffff803`221a44c3 4885c0          test    rax,rax
fffff803`221a44c6 0f84e7000000    je      nt!CmpFreeAllMemory+0x123 (fffff803`221a45b3)

nt!CmpFreeAllMemory+0x3c:
fffff803`221a44cc 8b8b00060000    mov     ecx,dword ptr [rbx+600h]
fffff803`221a44d2 488bbbf8050000  mov     rdi,qword ptr [rbx+5F8h]
fffff803`221a44d9 33c0            xor     eax,eax
fffff803`221a44db 89442460        mov     dword ptr [rsp+60h],eax
fffff803`221a44df 85c9            test    ecx,ecx
fffff803`221a44e1 7e41            jle     nt!CmpFreeAllMemory+0x94 (fffff803`221a4524)

nt!CmpFreeAllMemory+0x53:
fffff803`221a44e3 4883c710        add     rdi,10h
fffff803`221a44e7 448bf9          mov     r15d,ecx

nt!CmpFreeAllMemory+0x5a:
fffff803`221a44ea 488b2f          mov     rbp,qword ptr [rdi]
fffff803`221a44ed eb23            jmp     nt!CmpFreeAllMemory+0x82 (fffff803`221a4512)

nt!CmpFreeAllMemory+0x5f:
fffff803`221a44ef 410fb6c6        movzx   eax,r14b
fffff803`221a44f3 4584f6          test    r14b,r14b
fffff803`221a44f6 488d4df0        lea     rcx,[rbp-10h]
fffff803`221a44fa 410f44c4        cmove   eax,r12d
fffff803`221a44fe 488d542460      lea     rdx,[rsp+60h]
fffff803`221a4503 4533c0          xor     r8d,r8d
fffff803`221a4506 448af0          mov     r14b,al
fffff803`221a4509 e8d6fbfeff      call    nt!CmpDumpKeyBodyList (fffff803`221940e4)
fffff803`221a450e 488b6d08        mov     rbp,qword ptr [rbp+8]

nt!CmpFreeAllMemory+0x82:
fffff803`221a4512 4885ed          test    rbp,rbp
fffff803`221a4515 75d8            jne     nt!CmpFreeAllMemory+0x5f (fffff803`221a44ef)

nt!CmpFreeAllMemory+0x87:
fffff803`221a4517 4883c718        add     rdi,18h
fffff803`221a451b 4d2bfc          sub     r15,r12
fffff803`221a451e 75ca            jne     nt!CmpFreeAllMemory+0x5a (fffff803`221a44ea)

nt!CmpFreeAllMemory+0x90:
fffff803`221a4520 8b442460        mov     eax,dword ptr [rsp+60h]

nt!CmpFreeAllMemory+0x94:
fffff803`221a4524 488b8bb0050000  mov     rcx,qword ptr [rbx+5B0h]
fffff803`221a452b 03f0            add     esi,eax
fffff803`221a452d 4532f6          xor     r14b,r14b
fffff803`221a4530 eb29            jmp     nt!CmpFreeAllMemory+0xcb (fffff803`221a455b)

nt!CmpFreeAllMemory+0xa2:
fffff803`221a4532 4c8d4110        lea     r8,[rcx+10h]
fffff803`221a4536 498b10          mov     rdx,qword ptr [r8]
fffff803`221a4539 eb18            jmp     nt!CmpFreeAllMemory+0xc3 (fffff803`221a4553)

nt!CmpFreeAllMemory+0xab:
fffff803`221a453b 48837a3000      cmp     qword ptr [rdx+30h],0
fffff803`221a4540 740e            je      nt!CmpFreeAllMemory+0xc0 (fffff803`221a4550)

nt!CmpFreeAllMemory+0xb2:
fffff803`221a4542 410fb6c6        movzx   eax,r14b
fffff803`221a4546 4584f6          test    r14b,r14b
fffff803`221a4549 410f44c4        cmove   eax,r12d
fffff803`221a454d 448af0          mov     r14b,al

nt!CmpFreeAllMemory+0xc0:
fffff803`221a4550 488b12          mov     rdx,qword ptr [rdx]

nt!CmpFreeAllMemory+0xc3:
fffff803`221a4553 493bd0          cmp     rdx,r8
fffff803`221a4556 75e3            jne     nt!CmpFreeAllMemory+0xab (fffff803`221a453b)

nt!CmpFreeAllMemory+0xc8:
fffff803`221a4558 488b09          mov     rcx,qword ptr [rcx]

nt!CmpFreeAllMemory+0xcb:
fffff803`221a455b 4885c9          test    rcx,rcx
fffff803`221a455e 75d2            jne     nt!CmpFreeAllMemory+0xa2 (fffff803`221a4532)

nt!CmpFreeAllMemory+0xd0:
fffff803`221a4560 488bcb          mov     rcx,rbx
fffff803`221a4563 e84c52e7ff      call    nt!CmpDestroySecurityCache (fffff803`220197b4)
fffff803`221a4568 418ad4          mov     dl,r12b
fffff803`221a456b 488bcb          mov     rcx,rbx
fffff803`221a456e e8e9dfe7ff      call    nt!HvFreeHive (fffff803`2202255c)
fffff803`221a4573 f0ff8ba80b0000  lock dec dword ptr [rbx+0BA8h]
fffff803`221a457a 7508            jne     nt!CmpFreeAllMemory+0xf4 (fffff803`221a4584)

nt!CmpFreeAllMemory+0xec:
fffff803`221a457c 488bcb          mov     rcx,rbx
fffff803`221a457f e82073aeff      call    nt!CmpDeleteHive (fffff803`21c8b8a4)

nt!CmpFreeAllMemory+0xf4:
fffff803`221a4584 488bcb          mov     rcx,rbx
fffff803`221a4587 e8f444e9ff      call    nt!CmpGetNextActiveHive (fffff803`22038a80)
fffff803`221a458c 488bd8          mov     rbx,rax
fffff803`221a458f 4885c0          test    rax,rax
fffff803`221a4592 0f8534ffffff    jne     nt!CmpFreeAllMemory+0x3c (fffff803`221a44cc)

nt!CmpFreeAllMemory+0x108:
fffff803`221a4598 85f6            test    esi,esi
fffff803`221a459a 7417            je      nt!CmpFreeAllMemory+0x123 (fffff803`221a45b3)

nt!CmpFreeAllMemory+0x10c:
fffff803`221a459c 4821442420      and     qword ptr [rsp+20h],rax
fffff803`221a45a1 8d500f          lea     edx,[rax+0Fh]
fffff803`221a45a4 8d4851          lea     ecx,[rax+51h]
fffff803`221a45a7 448bce          mov     r9d,esi
fffff803`221a45aa 4d8bc4          mov     r8,r12
fffff803`221a45ad e88e7eb2ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`221a45b2 cc              int     3

nt!CmpFreeAllMemory+0x123:
fffff803`221a45b3 488b0d9e54dbff  mov     rcx,qword ptr [nt!CmpNameCacheTable (fffff803`21f59a58)]
fffff803`221a45ba 33d2            xor     edx,edx
fffff803`221a45bc e89febd3ff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`221a45c1 488b0df0f7d4ff  mov     rcx,qword ptr [nt!CmpLockTable (fffff803`21ef3db8)]
fffff803`221a45c8 4885c9          test    rcx,rcx
fffff803`221a45cb 740a            je      nt!CmpFreeAllMemory+0x147 (fffff803`221a45d7)

nt!CmpFreeAllMemory+0x13d:
fffff803`221a45cd ba434d4c74      mov     edx,744C4D43h
fffff803`221a45d2 e889ebd3ff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)

nt!CmpFreeAllMemory+0x147:
fffff803`221a45d7 488b5c2468      mov     rbx,qword ptr [rsp+68h]
fffff803`221a45dc 488b6c2470      mov     rbp,qword ptr [rsp+70h]
fffff803`221a45e1 4883c430        add     rsp,30h
fffff803`221a45e5 415f            pop     r15
fffff803`221a45e7 415e            pop     r14
fffff803`221a45e9 415c            pop     r12
fffff803`221a45eb 5f              pop     rdi
fffff803`221a45ec 5e              pop     rsi
fffff803`221a45ed c3              ret
