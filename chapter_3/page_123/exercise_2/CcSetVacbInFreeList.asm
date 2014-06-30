0: kd> uf CcSetVacbInFreeList
nt!CcSetVacbInFreeList:
fffff800`11c7f6b4 4883ec28        sub     rsp,28h
fffff800`11c7f6b8 ff0d46a62700    dec     dword ptr [nt!CcNumberOfMappedVacbs (fffff800`11ef9d04)]
fffff800`11c7f6be 4c8bc1          mov     r8,rcx
fffff800`11c7f6c1 84d2            test    dl,dl
fffff800`11c7f6c3 0f8503831c00    jne     nt! ?? ::FNODOBFM::`string'+0x5f0c (fffff800`11e479cc)

nt!CcSetVacbInFreeList+0x15:
fffff800`11c7f6c9 488d4110        lea     rax,[rcx+10h]
fffff800`11c7f6cd 488b0d2c142e00  mov     rcx,qword ptr [nt!CcVacbFreeList (fffff800`11f60b00)]
fffff800`11c7f6d4 488d1525142e00  lea     rdx,[nt!CcVacbFreeList (fffff800`11f60b00)]
fffff800`11c7f6db 488908          mov     qword ptr [rax],rcx
fffff800`11c7f6de 48895008        mov     qword ptr [rax+8],rdx
fffff800`11c7f6e2 48395108        cmp     qword ptr [rcx+8],rdx
fffff800`11c7f6e6 7526            jne     nt!CcSetVacbInFreeList+0x5a (fffff800`11c7f70e)

nt!CcSetVacbInFreeList+0x34:
fffff800`11c7f6e8 48894108        mov     qword ptr [rcx+8],rax
fffff800`11c7f6ec 4889050d142e00  mov     qword ptr [nt!CcVacbFreeList (fffff800`11f60b00)],rax
fffff800`11c7f6f3 498b4820        mov     rcx,qword ptr [r8+20h]
fffff800`11c7f6f7 4983600800      and     qword ptr [r8+8],0
fffff800`11c7f6fc b201            mov     dl,1
fffff800`11c7f6fe e81d000000      call    nt!CcDereferenceVacbArray (fffff800`11c7f720)
fffff800`11c7f703 ff05cf132e00    inc     dword ptr [nt!CcNumberOfFreeVacbs (fffff800`11f60ad8)]

nt!CcSetVacbInFreeList+0x55:
fffff800`11c7f709 4883c428        add     rsp,28h
fffff800`11c7f70d c3              ret

nt!CcSetVacbInFreeList+0x5a:
fffff800`11c7f70e b903000000      mov     ecx,3
fffff800`11c7f713 cd29            int     29h
fffff800`11c7f715 90              nop
fffff800`11c7f716 90              nop
fffff800`11c7f717 90              nop
fffff800`11c7f718 90              nop
fffff800`11c7f719 90              nop
fffff800`11c7f71a 90              nop
fffff800`11c7f71b 90              nop
fffff800`11c7f71c 90              nop
fffff800`11c7f71d 90              nop
fffff800`11c7f71e 90              nop
fffff800`11c7f71f 90              nop
fffff800`11c7f720 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`11c7f725 48896c2418      mov     qword ptr [rsp+18h],rbp
fffff800`11c7f72a 4889742420      mov     qword ptr [rsp+20h],rsi
fffff800`11c7f72f 57              push    rdi
fffff800`11c7f730 4883ec30        sub     rsp,30h
fffff800`11c7f734 8ada            mov     bl,dl
fffff800`11c7f736 488bf9          mov     rdi,rcx
fffff800`11c7f739 bd04000000      mov     ebp,4
fffff800`11c7f73e 84d2            test    dl,dl
fffff800`11c7f740 7438            je      nt!CcDereferenceVacbArray+0x5a (fffff800`11c7f77a)

nt!CcDereferenceVacbArray+0x22:
fffff800`11c7f742 408a742448      mov     sil,byte ptr [rsp+48h]

nt!CcDereferenceVacbArray+0x27:
fffff800`11c7f747 8b4704          mov     eax,dword ptr [rdi+4]
fffff800`11c7f74a 85c0            test    eax,eax
fffff800`11c7f74c 0f8414831c00    je      nt! ?? ::FNODOBFM::`string'+0x5fa0 (fffff800`11e47a66)

nt!CcDereferenceVacbArray+0x32:
fffff800`11c7f752 ffc8            dec     eax
fffff800`11c7f754 894704          mov     dword ptr [rdi+4],eax
fffff800`11c7f757 0f84cf821c00    je      nt! ?? ::FNODOBFM::`string'+0x5f66 (fffff800`11e47a2c)

nt!CcDereferenceVacbArray+0x3d:
fffff800`11c7f75d 84db            test    bl,bl
fffff800`11c7f75f 0f84f0821c00    je      nt! ?? ::FNODOBFM::`string'+0x5f8f (fffff800`11e47a55)

nt!CcDereferenceVacbArray+0x45:
fffff800`11c7f765 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff800`11c7f76a 488b6c2450      mov     rbp,qword ptr [rsp+50h]
fffff800`11c7f76f 488b742458      mov     rsi,qword ptr [rsp+58h]
fffff800`11c7f774 4883c430        add     rsp,30h
fffff800`11c7f778 5f              pop     rdi
fffff800`11c7f779 c3              ret

nt!CcDereferenceVacbArray+0x5a:
fffff800`11c7f77a 488bcd          mov     rcx,rbp
fffff800`11c7f77d e83e810a00      call    nt!KeAcquireQueuedSpinLock (fffff800`11d278c0)
fffff800`11c7f782 408af0          mov     sil,al
fffff800`11c7f785 ebc0            jmp     nt!CcDereferenceVacbArray+0x27 (fffff800`11c7f747)

nt!CcExtendVacbArray+0x1f6:
fffff800`11d6e576 488b9c24a0000000 mov     rbx,qword ptr [rsp+0A0h]
fffff800`11d6e57e 4883c460        add     rsp,60h
fffff800`11d6e582 415f            pop     r15
fffff800`11d6e584 415e            pop     r14
fffff800`11d6e586 415d            pop     r13
fffff800`11d6e588 415c            pop     r12
fffff800`11d6e58a 5f              pop     rdi
fffff800`11d6e58b 5e              pop     rsi
fffff800`11d6e58c 5d              pop     rbp
fffff800`11d6e58d c3              ret

nt! ?? ::FNODOBFM::`string'+0x5f0c:
fffff800`11e479cc 488d153d911100  lea     rdx,[nt!CcVacbFreeHighPriorityList (fffff800`11f60b10)]
fffff800`11e479d3 e8a84ff9ff      call    nt!CcSetVacbIntoList (fffff800`11ddc980)
fffff800`11e479d8 4983600800      and     qword ptr [r8+8],0
fffff800`11e479dd ff05f9901100    inc     dword ptr [nt!CcNumberOfFreeHighPriorityVacbs (fffff800`11f60adc)]
fffff800`11e479e3 e9217de3ff      jmp     nt!CcSetVacbInFreeList+0x55 (fffff800`11c7f709)

nt! ?? ::FNODOBFM::`string'+0x5f66:
fffff800`11e47a2c 84db            test    bl,bl
fffff800`11e47a2e 0f85317de3ff    jne     nt!CcDereferenceVacbArray+0x45 (fffff800`11c7f765)

nt! ?? ::FNODOBFM::`string'+0x5f6e:
fffff800`11e47a34 488bcf          mov     rcx,rdi
fffff800`11e47a37 e8704ff9ff      call    nt!CcRemoveVacbArray (fffff800`11ddc9ac)
fffff800`11e47a3c 408ad6          mov     dl,sil
fffff800`11e47a3f 488bcd          mov     rcx,rbp
fffff800`11e47a42 e8e9c9eeff      call    nt!KeReleaseQueuedSpinLock (fffff800`11d34430)
fffff800`11e47a47 488bcf          mov     rcx,rdi
fffff800`11e47a4a e895f53500      call    nt!CcFreeVacbArray (fffff800`121a6fe4)
fffff800`11e47a4f 90              nop
fffff800`11e47a50 e9107de3ff      jmp     nt!CcDereferenceVacbArray+0x45 (fffff800`11c7f765)

nt! ?? ::FNODOBFM::`string'+0x5f8f:
fffff800`11e47a55 408ad6          mov     dl,sil
fffff800`11e47a58 488bcd          mov     rcx,rbp
fffff800`11e47a5b e8d0c9eeff      call    nt!KeReleaseQueuedSpinLock (fffff800`11d34430)
fffff800`11e47a60 90              nop
fffff800`11e47a61 e9ff7ce3ff      jmp     nt!CcDereferenceVacbArray+0x45 (fffff800`11c7f765)

nt! ?? ::FNODOBFM::`string'+0x5fa0:
fffff800`11e47a66 488364242000    and     qword ptr [rsp+20h],0
fffff800`11e47a6c 4533c9          xor     r9d,r9d
fffff800`11e47a6f ba46010000      mov     edx,146h
fffff800`11e47a74 418d4934        lea     ecx,[r9+34h]
fffff800`11e47a78 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff800`11e47a7f e8bca9e8ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`11e47a84 cc              int     3
fffff800`11e47a85 90              nop
fffff800`11e47a86 90              nop
fffff800`11e47a87 90              nop
fffff800`11e47a88 90              nop
fffff800`11e47a89 90              nop
fffff800`11e47a8a 90              nop
fffff800`11e47a8b 90              nop
fffff800`11e47a8c 90              nop
fffff800`11e47a8d 90              nop
fffff800`11e47a8e 90              nop
fffff800`11e47a8f 90              nop
fffff800`11e47a90 488364242000    and     qword ptr [rsp+20h],0
fffff800`11e47a96 4533c9          xor     r9d,r9d
fffff800`11e47a99 ba17010000      mov     edx,117h
fffff800`11e47a9e 418d4934        lea     ecx,[r9+34h]
fffff800`11e47aa2 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff800`11e47aa9 e892a9e8ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`11e47aae cc              int     3
fffff800`11e47aaf 90              nop
fffff800`11e47ab0 4533c9          xor     r9d,r9d
fffff800`11e47ab3 ba08090000      mov     edx,908h
fffff800`11e47ab8 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff800`11e47abf 418d4934        lea     ecx,[r9+34h]
fffff800`11e47ac3 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff800`11e47ac8 e873a9e8ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`11e47acd cc              int     3
fffff800`11e47ace 4533c9          xor     r9d,r9d
fffff800`11e47ad1 ba07090000      mov     edx,907h
fffff800`11e47ad6 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff800`11e47add 418d4934        lea     ecx,[r9+34h]
fffff800`11e47ae1 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff800`11e47ae6 e855a9e8ff      call    nt!KeBugCheckEx (fffff800`11cd2440)
fffff800`11e47aeb cc              int     3
fffff800`11e47aec b8400000c0      mov     eax,0C0000040h
fffff800`11e47af1 e9806af2ff      jmp     nt!CcExtendVacbArray+0x1f6 (fffff800`11d6e576)
