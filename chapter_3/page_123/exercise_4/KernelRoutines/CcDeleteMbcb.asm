nt!CcDeleteMbcb:
fffff803`d9987458 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d998745d 4889742410      mov     qword ptr [rsp+10h],rsi
fffff803`d9987462 48897c2418      mov     qword ptr [rsp+18h],rdi
fffff803`d9987467 55              push    rbp
fffff803`d9987468 4154            push    r12
fffff803`d998746a 4155            push    r13
fffff803`d998746c 4156            push    r14
fffff803`d998746e 4157            push    r15
fffff803`d9987470 488bec          mov     rbp,rsp
fffff803`d9987473 4883ec40        sub     rsp,40h
fffff803`d9987477 488d45f0        lea     rax,[rbp-10h]
fffff803`d998747b 4c8bf1          mov     r14,rcx
fffff803`d998747e 488d9918010000  lea     rbx,[rcx+118h]
fffff803`d9987485 488945f8        mov     qword ptr [rbp-8],rax
fffff803`d9987489 488d45f0        lea     rax,[rbp-10h]
fffff803`d998748d 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`d9987491 440f20c7        mov     rdi,cr8
fffff803`d9987495 41bd01000000    mov     r13d,1
fffff803`d998749b 450f22c5        mov     cr8,r13
fffff803`d998749f f00fba3300      lock btr dword ptr [rbx],0
fffff803`d99874a4 0f8336b30c00    jae     nt! ?? ::FNODOBFM::`string'+0x21c0 (fffff803`d9a527e0)

nt!CcDeleteMbcb+0x52:
fffff803`d99874aa 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d99874b3 4533e4          xor     r12d,r12d
fffff803`d99874b6 48894308        mov     qword ptr [rbx+8],rax
fffff803`d99874ba 400fb6c7        movzx   eax,dil
fffff803`d99874be 894330          mov     dword ptr [rbx+30h],eax
fffff803`d99874c1 498bb6a0000000  mov     rsi,qword ptr [r14+0A0h]
fffff803`d99874c8 4885f6          test    rsi,rsi
fffff803`d99874cb 0f8481b30c00    je      nt! ?? ::FNODOBFM::`string'+0x2232 (fffff803`d9a52852)

nt!CcDeleteMbcb+0x79:
fffff803`d99874d1 450f20c7        mov     r15,cr8
fffff803`d99874d5 418d442402      lea     eax,[r12+2]
fffff803`d99874da 440f22c0        mov     cr8,rax
fffff803`d99874de 65488b0c2528000000 mov   rcx,qword ptr gs:[28h]
fffff803`d99874e7 4c8b4158        mov     r8,qword ptr [rcx+58h]
fffff803`d99874eb 4883c150        add     rcx,50h
fffff803`d99874ef f7058b6b250000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d99874f9 0f85efb20c00    jne     nt! ?? ::FNODOBFM::`string'+0x21ce (fffff803`d9a527ee)

nt!CcDeleteMbcb+0xa7:
fffff803`d99874ff 488bd1          mov     rdx,rcx
fffff803`d9987502 498710          xchg    rdx,qword ptr [r8]
fffff803`d9987505 4885d2          test    rdx,rdx
fffff803`d9987508 0f8581010000    jne     nt!CcDeleteMbcb+0x237 (fffff803`d998768f)

nt!CcDeleteMbcb+0xb6:
fffff803`d998750e 8b4608          mov     eax,dword ptr [rsi+8]
fffff803`d9987511 48290548761e00  sub     qword ptr [nt!CcGlobalDirtyPageStatistics (fffff803`d9b6eb60)],rax
fffff803`d9987518 8bc8            mov     ecx,eax
fffff803`d998751a 83f8ff          cmp     eax,0FFFFFFFFh
fffff803`d998751d 0f8311b30c00    jae     nt! ?? ::FNODOBFM::`string'+0x2214 (fffff803`d9a52834)

nt!CcDeleteMbcb+0xcb:
fffff803`d9987523 41294670        sub     dword ptr [r14+70h],eax
fffff803`d9987527 498b86f8010000  mov     rax,qword ptr [r14+1F8h]
fffff803`d998752e 48294820        sub     qword ptr [rax+20h],rcx
fffff803`d9987532 41f7869800000000000001 test dword ptr [r14+98h],1000000h
fffff803`d998753d 0f8588010000    jne     nt!CcDeleteMbcb+0x273 (fffff803`d99876cb)

nt!CcDeleteMbcb+0xeb:
fffff803`d9987543 65488b3c2528000000 mov   rdi,qword ptr gs:[28h]
fffff803`d998754c 4883c750        add     rdi,50h
fffff803`d9987550 f7052a6b250000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],10000h
fffff803`d998755a 0f859cb20c00    jne     nt! ?? ::FNODOBFM::`string'+0x21dc (fffff803`d9a527fc)

nt!CcDeleteMbcb+0x108:
fffff803`d9987560 0f0d0f          prefetchw [rdi]
fffff803`d9987563 488b07          mov     rax,qword ptr [rdi]
fffff803`d9987566 4885c0          test    rax,rax
fffff803`d9987569 0f8513010000    jne     nt!CcDeleteMbcb+0x22a (fffff803`d9987682)

nt!CcDeleteMbcb+0x117:
fffff803`d998756f 488b4f08        mov     rcx,qword ptr [rdi+8]
fffff803`d9987573 488bc7          mov     rax,rdi
fffff803`d9987576 f04c0fb121      lock cmpxchg qword ptr [rcx],r12
fffff803`d998757b 0f85f9000000    jne     nt!CcDeleteMbcb+0x222 (fffff803`d998767a)

nt!CcDeleteMbcb+0x129:
fffff803`d9987581 410fb6c7        movzx   eax,r15b
fffff803`d9987585 440f22c0        mov     cr8,rax
fffff803`d9987589 4c8d7e10        lea     r15,[rsi+10h]

nt!CcDeleteMbcb+0x135:
fffff803`d998758d 498b3f          mov     rdi,qword ptr [r15]
fffff803`d9987590 493bff          cmp     rdi,r15
fffff803`d9987593 746d            je      nt!CcDeleteMbcb+0x1aa (fffff803`d9987602)

nt!CcDeleteMbcb+0x13d:
fffff803`d9987595 488b0f          mov     rcx,qword ptr [rdi]
fffff803`d9987598 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`d998759c 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`d99875a0 0f851e010000    jne     nt!CcDeleteMbcb+0x26c (fffff803`d99876c4)

nt!CcDeleteMbcb+0x14e:
fffff803`d99875a6 483938          cmp     qword ptr [rax],rdi
fffff803`d99875a9 0f8515010000    jne     nt!CcDeleteMbcb+0x26c (fffff803`d99876c4)

nt!CcDeleteMbcb+0x157:
fffff803`d99875af 488908          mov     qword ptr [rax],rcx
fffff803`d99875b2 48894108        mov     qword ptr [rcx+8],rax
fffff803`d99875b6 488b5728        mov     rdx,qword ptr [rdi+28h]
fffff803`d99875ba 4885d2          test    rdx,rdx
fffff803`d99875bd 740d            je      nt!CcDeleteMbcb+0x174 (fffff803`d99875cc)

nt!CcDeleteMbcb+0x167:
fffff803`d99875bf 488d4660        lea     rax,[rsi+60h]
fffff803`d99875c3 483bd0          cmp     rdx,rax
fffff803`d99875c6 0f859d000000    jne     nt!CcDeleteMbcb+0x211 (fffff803`d9987669)

nt!CcDeleteMbcb+0x174:
fffff803`d99875cc 483bfe          cmp     rdi,rsi
fffff803`d99875cf 720c            jb      nt!CcDeleteMbcb+0x185 (fffff803`d99875dd)

nt!CcDeleteMbcb+0x179:
fffff803`d99875d1 488d86c0000000  lea     rax,[rsi+0C0h]
fffff803`d99875d8 483bf8          cmp     rdi,rax
fffff803`d99875db 72b0            jb      nt!CcDeleteMbcb+0x135 (fffff803`d998758d)

nt!CcDeleteMbcb+0x185:
fffff803`d99875dd 488b45f8        mov     rax,qword ptr [rbp-8]
fffff803`d99875e1 488d4df0        lea     rcx,[rbp-10h]
fffff803`d99875e5 48890f          mov     qword ptr [rdi],rcx
fffff803`d99875e8 488d4df0        lea     rcx,[rbp-10h]
fffff803`d99875ec 48894708        mov     qword ptr [rdi+8],rax
fffff803`d99875f0 483908          cmp     qword ptr [rax],rcx
fffff803`d99875f3 0f8515b20c00    jne     nt! ?? ::FNODOBFM::`string'+0x21ee (fffff803`d9a5280e)

nt!CcDeleteMbcb+0x1a1:
fffff803`d99875f9 488938          mov     qword ptr [rax],rdi
fffff803`d99875fc 48897df8        mov     qword ptr [rbp-8],rdi
fffff803`d9987600 eb8b            jmp     nt!CcDeleteMbcb+0x135 (fffff803`d998758d)

nt!CcDeleteMbcb+0x1aa:
fffff803`d9987602 4d89a6a0000000  mov     qword ptr [r14+0A0h],r12
fffff803`d9987609 408a7b30        mov     dil,byte ptr [rbx+30h]
fffff803`d998760d 33c0            xor     eax,eax
fffff803`d998760f 4c896308        mov     qword ptr [rbx+8],r12
fffff803`d9987613 f0440fb12b      lock cmpxchg dword ptr [rbx],r13d
fffff803`d9987618 0f85f7b10c00    jne     nt! ?? ::FNODOBFM::`string'+0x21f5 (fffff803`d9a52815)

nt!CcDeleteMbcb+0x1c6:
fffff803`d998761e 400fb6c7        movzx   eax,dil
fffff803`d9987622 440f22c0        mov     cr8,rax

nt!CcDeleteMbcb+0x1ce:
fffff803`d9987626 488b4df0        mov     rcx,qword ptr [rbp-10h]
fffff803`d998762a 488d45f0        lea     rax,[rbp-10h]
fffff803`d998762e 483bc8          cmp     rcx,rax
fffff803`d9987631 7566            jne     nt!CcDeleteMbcb+0x241 (fffff803`d9987699)

nt!CcDeleteMbcb+0x1db:
fffff803`d9987633 b8fd020000      mov     eax,2FDh
fffff803`d9987638 663906          cmp     word ptr [rsi],ax
fffff803`d998763b 0f84e4b10c00    je      nt! ?? ::FNODOBFM::`string'+0x2205 (fffff803`d9a52825)

nt!CcDeleteMbcb+0x1e9:
fffff803`d9987641 33d2            xor     edx,edx
fffff803`d9987643 488bce          mov     rcx,rsi
fffff803`d9987646 e815fb1600      call    nt!ExFreePoolWithTag (fffff803`d9af7160)

nt!CcDeleteMbcb+0x1f3:
fffff803`d998764b 4c8d5c2440      lea     r11,[rsp+40h]
fffff803`d9987650 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff803`d9987654 498b7338        mov     rsi,qword ptr [r11+38h]
fffff803`d9987658 498b7b40        mov     rdi,qword ptr [r11+40h]
fffff803`d998765c 498be3          mov     rsp,r11
fffff803`d998765f 415f            pop     r15
fffff803`d9987661 415e            pop     r14
fffff803`d9987663 415d            pop     r13
fffff803`d9987665 415c            pop     r12
fffff803`d9987667 5d              pop     rbp
fffff803`d9987668 c3              ret

nt!CcDeleteMbcb+0x211:
fffff803`d9987669 488d0d90051800  lea     rcx,[nt!CcBitmapLookasideList (fffff803`d9b07c00)]
fffff803`d9987670 e83bb2f4ff      call    nt!ExFreeToNPagedLookasideList (fffff803`d98d28b0)
fffff803`d9987675 e952ffffff      jmp     nt!CcDeleteMbcb+0x174 (fffff803`d99875cc)

nt!CcDeleteMbcb+0x222:
fffff803`d998767a 488bcf          mov     rcx,rdi
fffff803`d998767d e8eecefbff      call    nt!KxWaitForLockChainValid (fffff803`d9944570)

nt!CcDeleteMbcb+0x22a:
fffff803`d9987682 f04c316808      lock xor qword ptr [rax+8],r13
fffff803`d9987687 4c8927          mov     qword ptr [rdi],r12
fffff803`d998768a e9f2feffff      jmp     nt!CcDeleteMbcb+0x129 (fffff803`d9987581)

nt!CcDeleteMbcb+0x237:
fffff803`d998768f e84c2bfaff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d9987694 e975feffff      jmp     nt!CcDeleteMbcb+0xb6 (fffff803`d998750e)

nt!CcDeleteMbcb+0x241:
fffff803`d9987699 488b01          mov     rax,qword ptr [rcx]
fffff803`d998769c 488d55f0        lea     rdx,[rbp-10h]
fffff803`d99876a0 48395108        cmp     qword ptr [rcx+8],rdx
fffff803`d99876a4 7535            jne     nt!CcDeleteMbcb+0x283 (fffff803`d99876db)

nt!CcDeleteMbcb+0x24e:
fffff803`d99876a6 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d99876aa 752f            jne     nt!CcDeleteMbcb+0x283 (fffff803`d99876db)

nt!CcDeleteMbcb+0x254:
fffff803`d99876ac 488d55f0        lea     rdx,[rbp-10h]
fffff803`d99876b0 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`d99876b4 48895008        mov     qword ptr [rax+8],rdx
fffff803`d99876b8 33d2            xor     edx,edx
fffff803`d99876ba e8a1fa1600      call    nt!ExFreePoolWithTag (fffff803`d9af7160)
fffff803`d99876bf e962ffffff      jmp     nt!CcDeleteMbcb+0x1ce (fffff803`d9987626)

nt!CcDeleteMbcb+0x26c:
fffff803`d99876c4 b903000000      mov     ecx,3
fffff803`d99876c9 cd29            int     29h

nt!CcDeleteMbcb+0x273:
fffff803`d99876cb 498b86f0000000  mov     rax,qword ptr [r14+0F0h]
fffff803`d99876d2 48294818        sub     qword ptr [rax+18h],rcx
fffff803`d99876d6 e968feffff      jmp     nt!CcDeleteMbcb+0xeb (fffff803`d9987543)

nt!CcDeleteMbcb+0x283:
fffff803`d99876db b903000000      mov     ecx,3
fffff803`d99876e0 cd29            int     29h
fffff803`d99876e2 90              nop
fffff803`d99876e3 90              nop
fffff803`d99876e4 90              nop
fffff803`d99876e5 90              nop
fffff803`d99876e6 90              nop
fffff803`d99876e7 90              nop
fffff803`d99876e8 33c0            xor     eax,eax
fffff803`d99876ea 85c9            test    ecx,ecx
fffff803`d99876ec 741a            je      nt!CcIsLazyWriteScanQueued+0x20 (fffff803`d9987708)

nt!CcIsLazyWriteScanQueued+0x6:
fffff803`d99876ee 83f902          cmp     ecx,2
fffff803`d99876f1 7617            jbe     nt!CcIsLazyWriteScanQueued+0x22 (fffff803`d998770a)

nt!CcIsLazyWriteScanQueued+0xb:
fffff803`d99876f3 83f904          cmp     ecx,4
fffff803`d99876f6 752d            jne     nt!CcIsLazyWriteScanQueued+0x3d (fffff803`d9987725)

nt!CcIsLazyWriteScanQueued+0x10:
fffff803`d99876f8 380585761e00    cmp     byte ptr [nt!LazyWriter+0x83 (fffff803`d9b6ed83)],al
fffff803`d99876fe 7522            jne     nt!CcIsLazyWriteScanQueued+0x3a (fffff803`d9987722)

nt!CcIsLazyWriteScanQueued+0x18:
fffff803`d9987700 38057c761e00    cmp     byte ptr [nt!LazyWriter+0x82 (fffff803`d9b6ed82)],al

nt!CcIsLazyWriteScanQueued+0x1e:
fffff803`d9987706 751a            jne     nt!CcIsLazyWriteScanQueued+0x3a (fffff803`d9987722)

nt!CcIsLazyWriteScanQueued+0x20:
fffff803`d9987708 f3c3            rep ret

nt!CcIsLazyWriteScanQueued+0x22:
fffff803`d998770a 380575761e00    cmp     byte ptr [nt!LazyWriter+0x85 (fffff803`d9b6ed85)],al
fffff803`d9987710 7510            jne     nt!CcIsLazyWriteScanQueued+0x3a (fffff803`d9987722)

nt!CcIsLazyWriteScanQueued+0x2a:
fffff803`d9987712 38056c761e00    cmp     byte ptr [nt!LazyWriter+0x84 (fffff803`d9b6ed84)],al
fffff803`d9987718 7508            jne     nt!CcIsLazyWriteScanQueued+0x3a (fffff803`d9987722)

nt!CcIsLazyWriteScanQueued+0x32:
fffff803`d998771a 380566761e00    cmp     byte ptr [nt!LazyWriter+0x86 (fffff803`d9b6ed86)],al
fffff803`d9987720 ebe4            jmp     nt!CcIsLazyWriteScanQueued+0x1e (fffff803`d9987706)

nt!CcIsLazyWriteScanQueued+0x3a:
fffff803`d9987722 b001            mov     al,1
fffff803`d9987724 c3              ret

nt!CcIsLazyWriteScanQueued+0x3d:
fffff803`d9987725 83f908          cmp     ecx,8
fffff803`d9987728 7507            jne     nt!CcIsLazyWriteScanQueued+0x49 (fffff803`d9987731)

nt!CcIsLazyWriteScanQueued+0x42:
fffff803`d998772a 8a0552761e00    mov     al,byte ptr [nt!LazyWriter+0x82 (fffff803`d9b6ed82)]
fffff803`d9987730 c3              ret

nt!CcIsLazyWriteScanQueued+0x49:
fffff803`d9987731 83f910          cmp     ecx,10h
fffff803`d9987734 74d4            je      nt!CcIsLazyWriteScanQueued+0x22 (fffff803`d998770a)

nt!CcIsLazyWriteScanQueued+0x4e:
fffff803`d9987736 f3c3            rep ret

nt! ?? ::FNODOBFM::`string'+0x21c0:
fffff803`d9a527e0 488bcb          mov     rcx,rbx
fffff803`d9a527e3 e83852f3ff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)
fffff803`d9a527e8 90              nop
fffff803`d9a527e9 e9bc4cf3ff      jmp     nt!CcDeleteMbcb+0x52 (fffff803`d99874aa)

nt! ?? ::FNODOBFM::`string'+0x21ce:
fffff803`d9a527ee 498bd0          mov     rdx,r8
fffff803`d9a527f1 e8faeefaff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9a527f6 90              nop
fffff803`d9a527f7 e9124df3ff      jmp     nt!CcDeleteMbcb+0xb6 (fffff803`d998750e)

nt! ?? ::FNODOBFM::`string'+0x21dc:
fffff803`d9a527fc 488b5528        mov     rdx,qword ptr [rbp+28h]
fffff803`d9a52800 488bcf          mov     rcx,rdi
fffff803`d9a52803 e8c8edfaff      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d9a52808 90              nop
fffff803`d9a52809 e9734df3ff      jmp     nt!CcDeleteMbcb+0x129 (fffff803`d9987581)

nt! ?? ::FNODOBFM::`string'+0x21ee:
fffff803`d9a5280e b903000000      mov     ecx,3
fffff803`d9a52813 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x21f5:
fffff803`d9a52815 8bd0            mov     edx,eax
fffff803`d9a52817 488bcb          mov     rcx,rbx
fffff803`d9a5281a e80d48f3ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9a5281f 90              nop
fffff803`d9a52820 e9f94df3ff      jmp     nt!CcDeleteMbcb+0x1c6 (fffff803`d998761e)

nt! ?? ::FNODOBFM::`string'+0x2205:
fffff803`d9a52825 488d4e48        lea     rcx,[rsi+48h]
fffff803`d9a52829 e8a232f0ff      call    nt!ExDeleteResourceLite (fffff803`d9955ad0)
fffff803`d9a5282e 90              nop
fffff803`d9a5282f e90d4ef3ff      jmp     nt!CcDeleteMbcb+0x1e9 (fffff803`d9987641)

nt! ?? ::FNODOBFM::`string'+0x2214:
fffff803`d9a52834 4533c9          xor     r9d,r9d
fffff803`d9a52837 ba870f0000      mov     edx,0F87h
fffff803`d9a5283c 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`d9a52843 418d4934        lea     ecx,[r9+34h]
fffff803`d9a52847 4c89642420      mov     qword ptr [rsp+20h],r12
fffff803`d9a5284c e8efdbe8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a52851 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x2232:
fffff803`d9a52852 408af8          mov     dil,al
fffff803`d9a52855 4c896308        mov     qword ptr [rbx+8],r12
fffff803`d9a52859 33c0            xor     eax,eax
fffff803`d9a5285b f0440fb12b      lock cmpxchg dword ptr [rbx],r13d
fffff803`d9a52860 740a            je      nt! ?? ::FNODOBFM::`string'+0x224c (fffff803`d9a5286c)

nt! ?? ::FNODOBFM::`string'+0x2242:
fffff803`d9a52862 8bd0            mov     edx,eax
fffff803`d9a52864 488bcb          mov     rcx,rbx
fffff803`d9a52867 e8c047f3ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt! ?? ::FNODOBFM::`string'+0x224c:
fffff803`d9a5286c 400fb6c7        movzx   eax,dil
fffff803`d9a52870 440f22c0        mov     cr8,rax
fffff803`d9a52874 e9d24df3ff      jmp     nt!CcDeleteMbcb+0x1f3 (fffff803`d998764b)
