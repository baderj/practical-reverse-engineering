0: kd> uf PnpRequestDeviceAction
nt!PnpRequestDeviceAction:
fffff803`d98be25c 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d98be261 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`d98be266 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d98be26b 57              push    rdi
fffff803`d98be26c 4156            push    r14
fffff803`d98be26e 4157            push    r15
fffff803`d98be270 4883ec20        sub     rsp,20h
fffff803`d98be274 33db            xor     ebx,ebx
fffff803`d98be276 498be9          mov     rbp,r9
fffff803`d98be279 458af8          mov     r15b,r8b
fffff803`d98be27c 391d02062a00    cmp     dword ptr [nt!PnpShutdownEvent+0x4 (fffff803`d9b5e884)],ebx
fffff803`d98be282 448bf2          mov     r14d,edx
fffff803`d98be285 488bf9          mov     rdi,rcx
fffff803`d98be288 0f85be1d1100    jne     nt! ?? ::FNODOBFM::`string'+0xd978 (fffff803`d99d004c)

nt!PnpRequestDeviceAction+0x32:
fffff803`d98be28e 8d5338          lea     edx,[rbx+38h]
fffff803`d98be291 b900020000      mov     ecx,200h
fffff803`d98be296 41b8506e7032    mov     r8d,32706E50h
fffff803`d98be29c e86f7d2300      call    nt!ExAllocatePoolWithTag (fffff803`d9af6010)
fffff803`d98be2a1 488bf0          mov     rsi,rax
fffff803`d98be2a4 4885c0          test    rax,rax
fffff803`d98be2a7 0f84a91d1100    je      nt! ?? ::FNODOBFM::`string'+0xd982 (fffff803`d99d0056)

nt!PnpRequestDeviceAction+0x51:
fffff803`d98be2ad 4885ff          test    rdi,rdi
fffff803`d98be2b0 0f8442010000    je      nt!PnpRequestDeviceAction+0x19c (fffff803`d98be3f8)

nt!PnpRequestDeviceAction+0x5a:
fffff803`d98be2b6 ba44666c74      mov     edx,746C6644h
fffff803`d98be2bb 488bcf          mov     rcx,rdi
fffff803`d98be2be e825c30900      call    nt!ObfReferenceObjectWithTag (fffff803`d995a5e8)
fffff803`d98be2c3 488b442460      mov     rax,qword ptr [rsp+60h]
fffff803`d98be2c8 48897e10        mov     qword ptr [rsi+10h],rdi
fffff803`d98be2cc 48894628        mov     qword ptr [rsi+28h],rax
fffff803`d98be2d0 488b442468      mov     rax,qword ptr [rsp+68h]
fffff803`d98be2d5 44897618        mov     dword ptr [rsi+18h],r14d
fffff803`d98be2d9 44887e1c        mov     byte ptr [rsi+1Ch],r15b
fffff803`d98be2dd 48896e20        mov     qword ptr [rsi+20h],rbp
fffff803`d98be2e1 48894630        mov     qword ptr [rsi+30h],rax
fffff803`d98be2e5 440f20c5        mov     rbp,cr8
fffff803`d98be2e9 b802000000      mov     eax,2
fffff803`d98be2ee 440f22c0        mov     cr8,rax
fffff803`d98be2f2 f70588fd310000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d98be2fc 488d3d4dd42900  lea     rdi,[nt!PnpSpinLock (fffff803`d9b5b750)]
fffff803`d98be303 0f85571d1100    jne     nt! ?? ::FNODOBFM::`string'+0xd98c (fffff803`d99d0060)

nt!PnpRequestDeviceAction+0xad:
fffff803`d98be309 f0480fba2f00    lock bts qword ptr [rdi],0
fffff803`d98be30f 0f82591d1100    jb      nt! ?? ::FNODOBFM::`string'+0xd99a (fffff803`d99d006e)

nt!PnpRequestDeviceAction+0xb9:
fffff803`d98be315 488b052cd42900  mov     rax,qword ptr [nt!PnpEnumerationRequestList+0x8 (fffff803`d9b5b748)]
fffff803`d98be31c 488d0d1dd42900  lea     rcx,[nt!PnpEnumerationRequestList (fffff803`d9b5b740)]
fffff803`d98be323 48894608        mov     qword ptr [rsi+8],rax
fffff803`d98be327 48890e          mov     qword ptr [rsi],rcx
fffff803`d98be32a 483908          cmp     qword ptr [rax],rcx
fffff803`d98be32d 0f85491d1100    jne     nt! ?? ::FNODOBFM::`string'+0xd9a8 (fffff803`d99d007c)

nt!PnpRequestDeviceAction+0xd7:
fffff803`d98be333 488930          mov     qword ptr [rax],rsi
fffff803`d98be336 4889350bd42900  mov     qword ptr [nt!PnpEnumerationRequestList+0x8 (fffff803`d9b5b748)],rsi
fffff803`d98be33d 4183fe07        cmp     r14d,7
fffff803`d98be341 0f84c1000000    je      nt!PnpRequestDeviceAction+0x1ac (fffff803`d98be408)

nt!PnpRequestDeviceAction+0xeb:
fffff803`d98be347 4183fe0a        cmp     r14d,0Ah
fffff803`d98be34b 0f84b7000000    je      nt!PnpRequestDeviceAction+0x1ac (fffff803`d98be408)

nt!PnpRequestDeviceAction+0xf5:
fffff803`d98be351 381dc1d32900    cmp     byte ptr [nt!PnpEnumerationInProgress (fffff803`d9b5b718)],bl
fffff803`d98be357 743b            je      nt!PnpRequestDeviceAction+0x138 (fffff803`d98be394)

nt!PnpRequestDeviceAction+0xfd:
fffff803`d98be359 f70521fd310000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d98be363 0f852d1d1100    jne     nt! ?? ::FNODOBFM::`string'+0xd9c2 (fffff803`d99d0096)

nt!PnpRequestDeviceAction+0x10d:
fffff803`d98be369 f048211ddfd32900 lock and qword ptr [nt!PnpSpinLock (fffff803`d9b5b750)],rbx

nt!PnpRequestDeviceAction+0x115:
fffff803`d98be371 400fb6c5        movzx   eax,bpl
fffff803`d98be375 440f22c0        mov     cr8,rax

nt!PnpRequestDeviceAction+0x11d:
fffff803`d98be379 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`d98be37e 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`d98be383 8bc3            mov     eax,ebx
fffff803`d98be385 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d98be38a 4883c420        add     rsp,20h
fffff803`d98be38e 415f            pop     r15
fffff803`d98be390 415e            pop     r14
fffff803`d98be392 5f              pop     rdi
fffff803`d98be393 c3              ret

nt!PnpRequestDeviceAction+0x138:
fffff803`d98be394 381dff042a00    cmp     byte ptr [nt!PnPBootDriversLoaded (fffff803`d9b5e899)],bl
fffff803`d98be39a 74bd            je      nt!PnpRequestDeviceAction+0xfd (fffff803`d98be359)

nt!PnpRequestDeviceAction+0x140:
fffff803`d98be39c f705defc310000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d98be3a6 c6056bd3290001  mov     byte ptr [nt!PnpEnumerationInProgress (fffff803`d9b5b718)],1
fffff803`d98be3ad 891d51d32900    mov     dword ptr [nt!PnpEnumerationLock+0x4 (fffff803`d9b5b704)],ebx
fffff803`d98be3b3 0f85ca1c1100    jne     nt! ?? ::FNODOBFM::`string'+0xd9af (fffff803`d99d0083)

nt!PnpRequestDeviceAction+0x15d:
fffff803`d98be3b9 f048211d8fd32900 lock and qword ptr [nt!PnpSpinLock (fffff803`d9b5b750)],rbx

nt!PnpRequestDeviceAction+0x165:
fffff803`d98be3c1 400fb6c5        movzx   eax,bpl
fffff803`d98be3c5 440f22c0        mov     cr8,rax
fffff803`d98be3c9 488d051426feff  lea     rax,[nt!PnpDeviceActionWorker (fffff803`d98a09e4)]
fffff803`d98be3d0 488d0d49d32900  lea     rcx,[nt!PnpDeviceEnumerationWorkItem (fffff803`d9b5b720)]
fffff803`d98be3d7 ba01000000      mov     edx,1
fffff803`d98be3dc 48891d55d32900  mov     qword ptr [nt!PnpDeviceEnumerationWorkItem+0x18 (fffff803`d9b5b738)],rbx
fffff803`d98be3e3 48891d36d32900  mov     qword ptr [nt!PnpDeviceEnumerationWorkItem (fffff803`d9b5b720)],rbx
fffff803`d98be3ea 4889053fd32900  mov     qword ptr [nt!PnpDeviceEnumerationWorkItem+0x10 (fffff803`d9b5b730)],rax
fffff803`d98be3f1 e8dab20500      call    nt!ExQueueWorkItem (fffff803`d99196d0)
fffff803`d98be3f6 eb81            jmp     nt!PnpRequestDeviceAction+0x11d (fffff803`d98be379)

nt!PnpRequestDeviceAction+0x19c:
fffff803`d98be3f8 488b0561042a00  mov     rax,qword ptr [nt!IopRootDeviceNode (fffff803`d9b5e860)]
fffff803`d98be3ff 488b7820        mov     rdi,qword ptr [rax+20h]
fffff803`d98be403 e9aefeffff      jmp     nt!PnpRequestDeviceAction+0x5a (fffff803`d98be2b6)

nt!PnpRequestDeviceAction+0x1ac:
fffff803`d98be408 f70572fc310000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d98be412 c605ffd2290001  mov     byte ptr [nt!PnpEnumerationInProgress (fffff803`d9b5b718)],1
fffff803`d98be419 891de5d22900    mov     dword ptr [nt!PnpEnumerationLock+0x4 (fffff803`d9b5b704)],ebx
fffff803`d98be41f 751c            jne     nt!PnpRequestDeviceAction+0x1e1 (fffff803`d98be43d)

nt!PnpRequestDeviceAction+0x1c5:
fffff803`d98be421 f048211d27d32900 lock and qword ptr [nt!PnpSpinLock (fffff803`d9b5b750)],rbx

nt!PnpRequestDeviceAction+0x1cd:
fffff803`d98be429 400fb6cd        movzx   ecx,bpl
fffff803`d98be42d 440f22c1        mov     cr8,rcx
fffff803`d98be431 33c9            xor     ecx,ecx
fffff803`d98be433 e8ac25feff      call    nt!PnpDeviceActionWorker (fffff803`d98a09e4)
fffff803`d98be438 e93cffffff      jmp     nt!PnpRequestDeviceAction+0x11d (fffff803`d98be379)

nt!PnpRequestDeviceAction+0x1e1:
fffff803`d98be43d 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`d98be442 488bcf          mov     rcx,rdi
fffff803`d98be445 e852201400      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d98be44a ebdd            jmp     nt!PnpRequestDeviceAction+0x1cd (fffff803`d98be429)

nt! ?? ::FNODOBFM::`string'+0xd978:
fffff803`d99d004c bb890100c0      mov     ebx,0C0000189h
fffff803`d99d0051 e923e3eeff      jmp     nt!PnpRequestDeviceAction+0x11d (fffff803`d98be379)

nt! ?? ::FNODOBFM::`string'+0xd982:
fffff803`d99d0056 bb9a0000c0      mov     ebx,0C000009Ah
fffff803`d99d005b e919e3eeff      jmp     nt!PnpRequestDeviceAction+0x11d (fffff803`d98be379)

nt! ?? ::FNODOBFM::`string'+0xd98c:
fffff803`d99d0060 488bcf          mov     rcx,rdi
fffff803`d99d0063 e858040300      call    nt!KiAcquireSpinLockInstrumented (fffff803`d9a004c0)
fffff803`d99d0068 90              nop
fffff803`d99d0069 e9a7e2eeff      jmp     nt!PnpRequestDeviceAction+0xb9 (fffff803`d98be315)

nt! ?? ::FNODOBFM::`string'+0xd99a:
fffff803`d99d006e 488bcf          mov     rcx,rdi
fffff803`d99d0071 e84a12efff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`d98c12c0)
fffff803`d99d0076 90              nop
fffff803`d99d0077 e999e2eeff      jmp     nt!PnpRequestDeviceAction+0xb9 (fffff803`d98be315)

nt! ?? ::FNODOBFM::`string'+0xd9a8:
fffff803`d99d007c b903000000      mov     ecx,3
fffff803`d99d0081 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xd9af:
fffff803`d99d0083 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`d99d0088 488bcf          mov     rcx,rdi
fffff803`d99d008b e80c040300      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d99d0090 90              nop
fffff803`d99d0091 e92be3eeff      jmp     nt!PnpRequestDeviceAction+0x165 (fffff803`d98be3c1)

nt! ?? ::FNODOBFM::`string'+0xd9c2:
fffff803`d99d0096 488b542438      mov     rdx,qword ptr [rsp+38h]
fffff803`d99d009b 488bcf          mov     rcx,rdi
fffff803`d99d009e e8f9030300      call    nt!KiReleaseSpinLockInstrumented (fffff803`d9a0049c)
fffff803`d99d00a3 90              nop
fffff803`d99d00a4 e9c8e2eeff      jmp     nt!PnpRequestDeviceAction+0x115 (fffff803`d98be371)
