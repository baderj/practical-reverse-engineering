0: kd> uf CcInsertVacbArray
nt!CcDereferenceVacbArray+0x45:
fffff803`d988d765 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d988d76a 488b6c2450      mov     rbp,qword ptr [rsp+50h]
fffff803`d988d76f 488b742458      mov     rsi,qword ptr [rsp+58h]
fffff803`d988d774 4883c430        add     rsp,30h
fffff803`d988d778 5f              pop     rdi
fffff803`d988d779 c3              ret

nt!CcInsertVacbArray:
fffff803`d9893224 4883ec38        sub     rsp,38h
fffff803`d9893228 41b900050000    mov     r9d,500h
fffff803`d989322e 44390dbbb82d00  cmp     dword ptr [nt!CcVacbArraysAllocated (fffff803`d9b6eaf0)],r9d
fffff803`d9893235 0f87d0271c00    ja      nt! ?? ::FNODOBFM::`string'+0x5f47 (fffff803`d9a55a0b)

nt!CcInsertVacbArray+0x17:
fffff803`d989323b 4c8b05a6b82d00  mov     r8,qword ptr [nt!CcVacbArrays (fffff803`d9b6eae8)]
fffff803`d9893242 33d2            xor     edx,edx
fffff803`d9893244 498bc0          mov     rax,r8

nt!CcInsertVacbArray+0x23:
fffff803`d9893247 48833800        cmp     qword ptr [rax],0
fffff803`d989324b 0f8591000000    jne     nt!CcInsertVacbArray+0xbe (fffff803`d98932e2)

nt!CcInsertVacbArray+0x2d:
fffff803`d9893251 3b15c14a2700    cmp     edx,dword ptr [nt!CcVacbArraysHighestUsedIndex (fffff803`d9b07d18)]
fffff803`d9893257 49890cd0        mov     qword ptr [r8+rdx*8],rcx
fffff803`d989325b 8911            mov     dword ptr [rcx],edx
fffff803`d989325d 0f8793000000    ja      nt!CcInsertVacbArray+0xd2 (fffff803`d98932f6)

nt!CcInsertVacbArray+0x3f:
fffff803`d9893263 413bd1          cmp     edx,r9d
fffff803`d9893266 0f8480271c00    je      nt! ?? ::FNODOBFM::`string'+0x5f28 (fffff803`d9a559ec)

nt!CcInsertVacbArray+0x48:
fffff803`d989326c 33d2            xor     edx,edx
fffff803`d989326e 488d4120        lea     rax,[rcx+20h]
fffff803`d9893272 4c8d0587b82d00  lea     r8,[nt!CcVacbFreeList (fffff803`d9b6eb00)]
fffff803`d9893279 4c8d0d90b82d00  lea     r9,[nt!CcVacbFreeHighPriorityList (fffff803`d9b6eb10)]

nt!CcInsertVacbArray+0x5c:
fffff803`d9893280 488378f000      cmp     qword ptr [rax-10h],0
fffff803`d9893285 7536            jne     nt!CcInsertVacbArray+0x99 (fffff803`d98932bd)

nt!CcInsertVacbArray+0x63:
fffff803`d9893287 488b0d7ab82d00  mov     rcx,qword ptr [nt!CcVacbFreeList+0x8 (fffff803`d9b6eb08)]
fffff803`d989328e 4c8900          mov     qword ptr [rax],r8
fffff803`d9893291 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9893295 4c3901          cmp     qword ptr [rcx],r8
fffff803`d9893298 7567            jne     nt!CcInsertVacbArray+0xdd (fffff803`d9893301)

nt!CcInsertVacbArray+0x76:
fffff803`d989329a 488901          mov     qword ptr [rcx],rax
fffff803`d989329d ff0535b82d00    inc     dword ptr [nt!CcNumberOfFreeVacbs (fffff803`d9b6ead8)]
fffff803`d98932a3 4889055eb82d00  mov     qword ptr [nt!CcVacbFreeList+0x8 (fffff803`d9b6eb08)],rax

nt!CcInsertVacbArray+0x86:
fffff803`d98932aa ffc2            inc     edx
fffff803`d98932ac 4883c028        add     rax,28h
fffff803`d98932b0 81facc0c0000    cmp     edx,0CCCh
fffff803`d98932b6 72c8            jb      nt!CcInsertVacbArray+0x5c (fffff803`d9893280)

nt!CcInsertVacbArray+0x94:
fffff803`d98932b8 4883c438        add     rsp,38h
fffff803`d98932bc c3              ret

nt!CcInsertVacbArray+0x99:
fffff803`d98932bd 488b0d54b82d00  mov     rcx,qword ptr [nt!CcVacbFreeHighPriorityList+0x8 (fffff803`d9b6eb18)]
fffff803`d98932c4 4c8908          mov     qword ptr [rax],r9
fffff803`d98932c7 48894808        mov     qword ptr [rax+8],rcx
fffff803`d98932cb 4c3909          cmp     qword ptr [rcx],r9
fffff803`d98932ce 7538            jne     nt!CcInsertVacbArray+0xe4 (fffff803`d9893308)

nt!CcInsertVacbArray+0xac:
fffff803`d98932d0 488901          mov     qword ptr [rcx],rax
fffff803`d98932d3 ff0503b82d00    inc     dword ptr [nt!CcNumberOfFreeHighPriorityVacbs (fffff803`d9b6eadc)]
fffff803`d98932d9 48890538b82d00  mov     qword ptr [nt!CcVacbFreeHighPriorityList+0x8 (fffff803`d9b6eb18)],rax
fffff803`d98932e0 ebc8            jmp     nt!CcInsertVacbArray+0x86 (fffff803`d98932aa)

nt!CcInsertVacbArray+0xbe:
fffff803`d98932e2 ffc2            inc     edx
fffff803`d98932e4 4883c008        add     rax,8
fffff803`d98932e8 413bd1          cmp     edx,r9d
fffff803`d98932eb 0f8256ffffff    jb      nt!CcInsertVacbArray+0x23 (fffff803`d9893247)

nt!CcInsertVacbArray+0xcd:
fffff803`d98932f1 e96dffffff      jmp     nt!CcInsertVacbArray+0x3f (fffff803`d9893263)

nt!CcInsertVacbArray+0xd2:
fffff803`d98932f6 89151c4a2700    mov     dword ptr [nt!CcVacbArraysHighestUsedIndex (fffff803`d9b07d18)],edx
fffff803`d98932fc e962ffffff      jmp     nt!CcInsertVacbArray+0x3f (fffff803`d9893263)

nt!CcInsertVacbArray+0xdd:
fffff803`d9893301 b903000000      mov     ecx,3
fffff803`d9893306 cd29            int     29h

nt!CcInsertVacbArray+0xe4:
fffff803`d9893308 b903000000      mov     ecx,3
fffff803`d989330d cd29            int     29h
fffff803`d989330f 90              nop
fffff803`d9893310 90              nop
fffff803`d9893311 90              nop
fffff803`d9893312 90              nop
fffff803`d9893313 90              nop
fffff803`d9893314 90              nop
fffff803`d9893315 90              nop
fffff803`d9893316 90              nop
fffff803`d9893317 90              nop
fffff803`d9893318 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d989331d 57              push    rdi
fffff803`d989331e 4883ec20        sub     rsp,20h
fffff803`d9893322 bf04000000      mov     edi,4
fffff803`d9893327 8bcf            mov     ecx,edi
fffff803`d9893329 e892250a00      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d989332e 8b15bcb72d00    mov     edx,dword ptr [nt!CcVacbArraysAllocated (fffff803`d9b6eaf0)]
fffff803`d9893334 8bcf            mov     ecx,edi
fffff803`d9893336 81fa00050000    cmp     edx,500h
fffff803`d989333c 0f8326261c00    jae     nt! ?? ::FNODOBFM::`string'+0x5eae (fffff803`d9a55968)

nt!CcAllocateInitializeVacbArray+0x2a:
fffff803`d9893342 ffc2            inc     edx
fffff803`d9893344 8915a6b72d00    mov     dword ptr [nt!CcVacbArraysAllocated (fffff803`d9b6eaf0)],edx
fffff803`d989334a 8ad0            mov     dl,al
fffff803`d989334c e8dff00a00      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9893351 ba00000200      mov     edx,20000h
fffff803`d9893356 b900020000      mov     ecx,200h
fffff803`d989335b 41b843635661    mov     r8d,61566343h
fffff803`d9893361 e8aa2c2600      call    nt!ExAllocatePoolWithTag (fffff803`d9af6010)
fffff803`d9893366 488bd8          mov     rbx,rax
fffff803`d9893369 4885c0          test    rax,rax
fffff803`d989336c 0f8404261c00    je      nt! ?? ::FNODOBFM::`string'+0x5ebc (fffff803`d9a55976)

nt!CcAllocateInitializeVacbArray+0x5a:
fffff803`d9893372 33d2            xor     edx,edx
fffff803`d9893374 41b800000200    mov     r8d,20000h
fffff803`d989337a 488bc8          mov     rcx,rax
fffff803`d989337d e83e270700      call    nt!memset (fffff803`d9905ac0)
fffff803`d9893382 488d4330        lea     rax,[rbx+30h]
fffff803`d9893386 b9cc0c0000      mov     ecx,0CCCh

nt!CcAllocateInitializeVacbArray+0x73:
fffff803`d989338b 488918          mov     qword ptr [rax],rbx
fffff803`d989338e 4883c028        add     rax,28h
fffff803`d9893392 48ffc9          dec     rcx
fffff803`d9893395 75f4            jne     nt!CcAllocateInitializeVacbArray+0x73 (fffff803`d989338b)

nt!CcAllocateInitializeVacbArray+0x7f:
fffff803`d9893397 488bc3          mov     rax,rbx

nt!CcAllocateInitializeVacbArray+0x82:
fffff803`d989339a 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d989339f 4883c420        add     rsp,20h
fffff803`d98933a3 5f              pop     rdi
fffff803`d98933a4 c3              ret

nt! ?? ::FNODOBFM::`string'+0x5eae:
fffff803`d9a55968 8ad0            mov     dl,al
fffff803`d9a5596a e8c1caeeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a5596f 33c0            xor     eax,eax
fffff803`d9a55971 e924dae3ff      jmp     nt!CcAllocateInitializeVacbArray+0x82 (fffff803`d989339a)

nt! ?? ::FNODOBFM::`string'+0x5ebc:
fffff803`d9a55976 488bcf          mov     rcx,rdi
fffff803`d9a55979 e842ffedff      call    nt!KeAcquireQueuedSpinLock (fffff803`d99358c0)
fffff803`d9a5597e ff0d6c911100    dec     dword ptr [nt!CcVacbArraysAllocated (fffff803`d9b6eaf0)]
fffff803`d9a55984 488bcf          mov     rcx,rdi
fffff803`d9a55987 8ad0            mov     dl,al
fffff803`d9a55989 e8a2caeeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a5598e 90              nop
fffff803`d9a5598f e903dae3ff      jmp     nt!CcAllocateInitializeVacbArray+0x7f (fffff803`d9893397)

nt! ?? ::FNODOBFM::`string'+0x5f28:
fffff803`d9a559ec 488364242000    and     qword ptr [rsp+20h],0
fffff803`d9a559f2 4533c9          xor     r9d,r9d
fffff803`d9a559f5 baa4010000      mov     edx,1A4h
fffff803`d9a559fa 418d4934        lea     ecx,[r9+34h]
fffff803`d9a559fe 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a55a05 e836aae8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55a0a cc              int     3

nt! ?? ::FNODOBFM::`string'+0x5f47:
fffff803`d9a55a0b 488364242000    and     qword ptr [rsp+20h],0
fffff803`d9a55a11 4533c9          xor     r9d,r9d
fffff803`d9a55a14 ba87010000      mov     edx,187h
fffff803`d9a55a19 418d4934        lea     ecx,[r9+34h]
fffff803`d9a55a1d 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a55a24 e817aae8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a55a29 cc              int     3
fffff803`d9a55a2a 90              nop
fffff803`d9a55a2b 90              nop
fffff803`d9a55a2c 84db            test    bl,bl
fffff803`d9a55a2e 0f85317de3ff    jne     nt!CcDereferenceVacbArray+0x45 (fffff803`d988d765)

nt! ?? ::FNODOBFM::`string'+0x5f6e:
fffff803`d9a55a34 488bcf          mov     rcx,rdi
fffff803`d9a55a37 e8704ff9ff      call    nt!CcRemoveVacbArray (fffff803`d99ea9ac)
fffff803`d9a55a3c 408ad6          mov     dl,sil
fffff803`d9a55a3f 488bcd          mov     rcx,rbp
fffff803`d9a55a42 e8e9c9eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`d9942430)
fffff803`d9a55a47 488bcf          mov     rcx,rdi
fffff803`d9a55a4a e895f53500      call    nt!CcFreeVacbArray (fffff803`d9db4fe4)
fffff803`d9a55a4f 90              nop
fffff803`d9a55a50 e9107de3ff      jmp     nt!CcDereferenceVacbArray+0x45 (fffff803`d988d765)
