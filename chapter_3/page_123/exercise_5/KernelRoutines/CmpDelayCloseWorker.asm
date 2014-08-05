nt!CmpRemoveFromDelayedClose+0x8c:
fffff803`d9c2d1c0 48894908        mov     qword ptr [rcx+8],rcx
fffff803`d9c2d1c4 488909          mov     qword ptr [rcx],rcx
fffff803`d9c2d1c7 f0830c2400      lock or dword ptr [rsp],0
fffff803`d9c2d1cc 836308fd        and     dword ptr [rbx+8],0FFFFFFFDh
fffff803`d9c2d1d0 4883259006f4ff00 and     qword ptr [nt!CmpDelayedCloseTableLock+0x8 (fffff803`d9b6d868)],0
fffff803`d9c2d1d8 8a1db206f4ff    mov     bl,byte ptr [nt!CmpDelayedCloseTableLock+0x30 (fffff803`d9b6d890)]
fffff803`d9c2d1de 33c0            xor     eax,eax
fffff803`d9c2d1e0 f00fb1357806f4ff lock cmpxchg dword ptr [nt!CmpDelayedCloseTableLock (fffff803`d9b6d860)],esi
fffff803`d9c2d1e8 7528            jne     nt!CmpRemoveFromDelayedClose+0xde (fffff803`d9c2d212)

nt!CmpRemoveFromDelayedClose+0xb6:
fffff803`d9c2d1ea 0fb6c3          movzx   eax,bl
fffff803`d9c2d1ed 440f22c0        mov     cr8,rax
fffff803`d9c2d1f1 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`d9c2d1f6 488b742438      mov     rsi,qword ptr [rsp+38h]
fffff803`d9c2d1fb 4883c420        add     rsp,20h
fffff803`d9c2d1ff 5f              pop     rdi
fffff803`d9c2d200 c3              ret

nt!CmpRemoveFromDelayedClose+0xde:
fffff803`d9c2d212 488d0d4706f4ff  lea     rcx,[nt!CmpDelayedCloseTableLock (fffff803`d9b6d860)]
fffff803`d9c2d219 8bd0            mov     edx,eax
fffff803`d9c2d21b e80c9ed5ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9c2d220 ebc8            jmp     nt!CmpRemoveFromDelayedClose+0xb6 (fffff803`d9c2d1ea)

nt!CmpDelayCloseWorker:
fffff803`d9c2f690 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9c2f695 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`d9c2f69a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d9c2f69f 57              push    rdi
fffff803`d9c2f6a0 4154            push    r12
fffff803`d9c2f6a2 4155            push    r13
fffff803`d9c2f6a4 4156            push    r14
fffff803`d9c2f6a6 4157            push    r15
fffff803`d9c2f6a8 4881eca0000000  sub     rsp,0A0h
fffff803`d9c2f6af 488b05e263edff  mov     rax,qword ptr [nt!_security_cookie (fffff803`d9b05a98)]
fffff803`d9c2f6b6 4833c4          xor     rax,rsp
fffff803`d9c2f6b9 4889842490000000 mov     qword ptr [rsp+90h],rax
fffff803`d9c2f6c1 4885c9          test    rcx,rcx
fffff803`d9c2f6c4 0f8555040000    jne     nt!CmpDelayCloseWorker+0x48f (fffff803`d9c2fb1f)

nt!CmpDelayCloseWorker+0x3a:
fffff803`d9c2f6ca 4532e4          xor     r12b,r12b

nt!CmpDelayCloseWorker+0x3d:
fffff803`d9c2f6cd 803db5b92d0000  cmp     byte ptr [nt!CmpPuntBoot (fffff803`d9f0b089)],0
fffff803`d9c2f6d4 752d            jne     nt!CmpDelayCloseWorker+0x73 (fffff803`d9c2f703)

nt!CmpDelayCloseWorker+0x46:
fffff803`d9c2f6d6 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9c2f6df fe8037040000    inc     byte ptr [rax+437h]
fffff803`d9c2f6e5 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9c2f6ee 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9c2f6f5 488d0d0481faff  lea     rcx,[nt!CmpRegistryLock (fffff803`d9bd7800)]
fffff803`d9c2f6fc b201            mov     dl,1
fffff803`d9c2f6fe e89d9aceff      call    nt!ExAcquireResourceSharedLite (fffff803`d99191a0)

nt!CmpDelayCloseWorker+0x73:
fffff803`d9c2f703 4533ed          xor     r13d,r13d
fffff803`d9c2f706 458d5d01        lea     r11d,[r13+1]

nt!CmpDelayCloseWorker+0x7a:
fffff803`d9c2f70a 4c8d058fe1f3ff  lea     r8,[nt!CmpDelayedLRUListHead (fffff803`d9b6d8a0)]
fffff803`d9c2f711 4584e4          test    r12b,r12b
fffff803`d9c2f714 750b            jne     nt!CmpDelayCloseWorker+0x91 (fffff803`d9c2f721)

nt!CmpDelayCloseWorker+0x86:
fffff803`d9c2f716 b802000000      mov     eax,2
fffff803`d9c2f71b 87056b86edff    xchg    eax,dword ptr [nt!CmpDelayCloseWorkItemActive (fffff803`d9b07d8c)]

nt!CmpDelayCloseWorker+0x91:
fffff803`d9c2f721 418bf5          mov     esi,r13d
fffff803`d9c2f724 440f20c3        mov     rbx,cr8
fffff803`d9c2f728 450f22c3        mov     cr8,r11
fffff803`d9c2f72c f00fba352be1f3ff00 lock btr dword ptr [nt!CmpDelayedCloseTableLock (fffff803`d9b6d860)],0
fffff803`d9c2f735 0f8396030000    jae     nt!CmpDelayCloseWorker+0x441 (fffff803`d9c2fad1)

nt!CmpDelayCloseWorker+0xab:
fffff803`d9c2f73b 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9c2f744 4c8d542438      lea     r10,[rsp+38h]
fffff803`d9c2f749 48890518e1f3ff  mov     qword ptr [nt!CmpDelayedCloseTableLock+0x8 (fffff803`d9b6d868)],rax
fffff803`d9c2f750 0fb6c3          movzx   eax,bl
fffff803`d9c2f753 890537e1f3ff    mov     dword ptr [nt!CmpDelayedCloseTableLock+0x30 (fffff803`d9b6d890)],eax
fffff803`d9c2f759 8b053186edff    mov     eax,dword ptr [nt!CmpDelayedCloseElements (fffff803`d9b07d90)]

nt!CmpDelayCloseWorker+0xcf:
fffff803`d9c2f75f 3b05ffb4ecff    cmp     eax,dword ptr [nt!CmpDelayedCloseSize (fffff803`d9afac64)]
fffff803`d9c2f765 0f8687000000    jbe     nt!CmpDelayCloseWorker+0x162 (fffff803`d9c2f7f2)

nt!CmpDelayCloseWorker+0xdb:
fffff803`d9c2f76b 488b0d36e1f3ff  mov     rcx,qword ptr [nt!CmpDelayedLRUListHead+0x8 (fffff803`d9b6d8a8)]
fffff803`d9c2f772 488b5108        mov     rdx,qword ptr [rcx+8]
fffff803`d9c2f776 4c8d8928ffffff  lea     r9,[rcx-0D8h]
fffff803`d9c2f77d 4c3901          cmp     qword ptr [rcx],r8
fffff803`d9c2f780 0f8599942200    jne     nt! ?? ::NNGAKEGL::`string'+0x966d (fffff803`d9e58c1f)

nt!CmpDelayCloseWorker+0xf6:
fffff803`d9c2f786 48390a          cmp     qword ptr [rdx],rcx
fffff803`d9c2f789 0f8590942200    jne     nt! ?? ::NNGAKEGL::`string'+0x966d (fffff803`d9e58c1f)

nt!CmpDelayCloseWorker+0xff:
fffff803`d9c2f78f 48891512e1f3ff  mov     qword ptr [nt!CmpDelayedLRUListHead+0x8 (fffff803`d9b6d8a8)],rdx
fffff803`d9c2f796 4c8902          mov     qword ptr [rdx],r8
fffff803`d9c2f799 48ff0d88c02d00  dec     qword ptr [nt!CmPerfCounters+0x8 (fffff803`d9f0b828)]
fffff803`d9c2f7a0 498b4920        mov     rcx,qword ptr [r9+20h]
fffff803`d9c2f7a4 4d890a          mov     qword ptr [r10],r9
fffff803`d9c2f7a7 ffc8            dec     eax
fffff803`d9c2f7a9 49894af8        mov     qword ptr [r10-8],rcx
fffff803`d9c2f7ad 8bce            mov     ecx,esi
fffff803`d9c2f7af 4c8d442440      lea     r8,[rsp+40h]
fffff803`d9c2f7b4 488d1449        lea     rdx,[rcx+rcx*2]
fffff803`d9c2f7b8 8905d285edff    mov     dword ptr [nt!CmpDelayedCloseElements (fffff803`d9b07d90)],eax
fffff803`d9c2f7be ffc6            inc     esi
fffff803`d9c2f7c0 45882cd0        mov     byte ptr [r8+rdx*8],r13b
fffff803`d9c2f7c4 418b4910        mov     ecx,dword ptr [r9+10h]
fffff803`d9c2f7c8 4d8d04d0        lea     r8,[r8+rdx*8]
fffff803`d9c2f7cc 41894a0c        mov     dword ptr [r10+0Ch],ecx
fffff803`d9c2f7d0 4183490804      or      dword ptr [r9+8],4
fffff803`d9c2f7d5 4983c218        add     r10,18h
fffff803`d9c2f7d9 4d8981d8000000  mov     qword ptr [r9+0D8h],r8
fffff803`d9c2f7e0 4c8d05b9e0f3ff  lea     r8,[nt!CmpDelayedLRUListHead (fffff803`d9b6d8a0)]
fffff803`d9c2f7e7 83fe04          cmp     esi,4
fffff803`d9c2f7ea 0f826fffffff    jb      nt!CmpDelayCloseWorker+0xcf (fffff803`d9c2f75f)

nt!CmpDelayCloseWorker+0x160:
fffff803`d9c2f7f0 eb09            jmp     nt!CmpDelayCloseWorker+0x16b (fffff803`d9c2f7fb)

nt!CmpDelayCloseWorker+0x162:
fffff803`d9c2f7f2 4584e4          test    r12b,r12b
fffff803`d9c2f7f5 0f85f4020000    jne     nt!CmpDelayCloseWorker+0x45f (fffff803`d9c2faef)

nt!CmpDelayCloseWorker+0x16b:
fffff803`d9c2f7fb 0fb61d8ee0f3ff  movzx   ebx,byte ptr [nt!CmpDelayedCloseTableLock+0x30 (fffff803`d9b6d890)]
fffff803`d9c2f802 4c892d5fe0f3ff  mov     qword ptr [nt!CmpDelayedCloseTableLock+0x8 (fffff803`d9b6d868)],r13
fffff803`d9c2f809 33c0            xor     eax,eax
fffff803`d9c2f80b f0440fb11d4ce0f3ff lock cmpxchg dword ptr [nt!CmpDelayedCloseTableLock (fffff803`d9b6d860)],r11d
fffff803`d9c2f814 0f85a4020000    jne     nt!CmpDelayCloseWorker+0x42e (fffff803`d9c2fabe)

nt!CmpDelayCloseWorker+0x18a:
fffff803`d9c2f81a 0fb6c3          movzx   eax,bl
fffff803`d9c2f81d 440f22c0        mov     cr8,rax
fffff803`d9c2f821 418bed          mov     ebp,r13d
fffff803`d9c2f824 85f6            test    esi,esi
fffff803`d9c2f826 0f84de010000    je      nt!CmpDelayCloseWorker+0x37a (fffff803`d9c2fa0a)

nt!CmpDelayCloseWorker+0x19c:
fffff803`d9c2f82c 4c8d742430      lea     r14,[rsp+30h]

nt!CmpDelayCloseWorker+0x1a1:
fffff803`d9c2f831 458b7e14        mov     r15d,dword ptr [r14+14h]
fffff803`d9c2f835 498b1e          mov     rbx,qword ptr [r14]
fffff803`d9c2f838 8b8b00060000    mov     ecx,dword ptr [rbx+600h]
fffff803`d9c2f83e 418bc7          mov     eax,r15d
fffff803`d9c2f841 c1e809          shr     eax,9
fffff803`d9c2f844 ffc9            dec     ecx
fffff803`d9c2f846 4133c7          xor     eax,r15d
fffff803`d9c2f849 69c0a38a0100    imul    eax,eax,18AA3h
fffff803`d9c2f84f 8bd0            mov     edx,eax
fffff803`d9c2f851 48c1ea09        shr     rdx,9
fffff803`d9c2f855 4833d0          xor     rdx,rax
fffff803`d9c2f858 488b83f8050000  mov     rax,qword ptr [rbx+5F8h]
fffff803`d9c2f85f 4823d1          and     rdx,rcx
fffff803`d9c2f862 488d0c52        lea     rcx,[rdx+rdx*2]
fffff803`d9c2f866 f0480fba2cc800  lock bts qword ptr [rax+rcx*8],0
fffff803`d9c2f86d 488d3cc8        lea     rdi,[rax+rcx*8]
fffff803`d9c2f871 0f829b020000    jb      nt!CmpDelayCloseWorker+0x482 (fffff803`d9c2fb12)

nt!CmpDelayCloseWorker+0x1e7:
fffff803`d9c2f877 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9c2f880 488bcb          mov     rcx,rbx
fffff803`d9c2f883 48894708        mov     qword ptr [rdi+8],rax
fffff803`d9c2f887 e86498cfff      call    nt!CmpReferenceHive (fffff803`d99290f0)
fffff803`d9c2f88c 84c0            test    al,al
fffff803`d9c2f88e 0f8470932200    je      nt! ?? ::NNGAKEGL::`string'+0x9652 (fffff803`d9e58c04)

nt!CmpDelayCloseWorker+0x204:
fffff803`d9c2f894 448bfd          mov     r15d,ebp
fffff803`d9c2f897 3bee            cmp     ebp,esi
fffff803`d9c2f899 0f83e6000000    jae     nt!CmpDelayCloseWorker+0x2f5 (fffff803`d9c2f985)

nt!CmpDelayCloseWorker+0x20f:
fffff803`d9c2f89f 498d5e08        lea     rbx,[r14+8]

nt!CmpDelayCloseWorker+0x213:
fffff803`d9c2f8a3 418b4614        mov     eax,dword ptr [r14+14h]
fffff803`d9c2f8a7 39430c          cmp     dword ptr [rbx+0Ch],eax
fffff803`d9c2f8aa 0f85c5000000    jne     nt!CmpDelayCloseWorker+0x2e5 (fffff803`d9c2f975)

nt!CmpDelayCloseWorker+0x220:
fffff803`d9c2f8b0 498b06          mov     rax,qword ptr [r14]
fffff803`d9c2f8b3 483943f8        cmp     qword ptr [rbx-8],rax
fffff803`d9c2f8b7 0f85b8000000    jne     nt!CmpDelayCloseWorker+0x2e5 (fffff803`d9c2f975)

nt!CmpDelayCloseWorker+0x22d:
fffff803`d9c2f8bd 0fb64308        movzx   eax,byte ptr [rbx+8]
fffff803`d9c2f8c1 84c0            test    al,al
fffff803`d9c2f8c3 0f85ac000000    jne     nt!CmpDelayCloseWorker+0x2e5 (fffff803`d9c2f975)

nt!CmpDelayCloseWorker+0x239:
fffff803`d9c2f8c9 488b3b          mov     rdi,qword ptr [rbx]
fffff803`d9c2f8cc f7470400001000  test    dword ptr [rdi+4],100000h
fffff803`d9c2f8d3 0f85eb922200    jne     nt! ?? ::NNGAKEGL::`string'+0x9612 (fffff803`d9e58bc4)

nt!CmpDelayCloseWorker+0x249:
fffff803`d9c2f8d9 f0480fba6f3000  lock bts qword ptr [rdi+30h],0
fffff803`d9c2f8e0 488d4f30        lea     rcx,[rdi+30h]
fffff803`d9c2f8e4 0f8255020000    jb      nt!CmpDelayCloseWorker+0x4af (fffff803`d9c2fb3f)

nt!CmpDelayCloseWorker+0x25a:
fffff803`d9c2f8ea 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9c2f8f3 33d2            xor     edx,edx
fffff803`d9c2f8f5 48894738        mov     qword ptr [rdi+38h],rax
fffff803`d9c2f8f9 488b0b          mov     rcx,qword ptr [rbx]
fffff803`d9c2f8fc e84f9b0900      call    nt!CmpCleanUpKcbCacheWithLock (fffff803`d9cc9450)
fffff803`d9c2f901 488b3b          mov     rdi,qword ptr [rbx]
fffff803`d9c2f904 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9c2f90d 48394738        cmp     qword ptr [rdi+38h],rax
fffff803`d9c2f911 0f8532020000    jne     nt!CmpDelayCloseWorker+0x4b9 (fffff803`d9c2fb49)

nt!CmpDelayCloseWorker+0x287:
fffff803`d9c2f917 4c896f38        mov     qword ptr [rdi+38h],r13

nt!CmpDelayCloseWorker+0x28b:
fffff803`d9c2f91b 0f0d4f30        prefetchw [rdi+30h]
fffff803`d9c2f91f 488b4730        mov     rax,qword ptr [rdi+30h]
fffff803`d9c2f923 488bc8          mov     rcx,rax
fffff803`d9c2f926 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`d9c2f92a 4883f910        cmp     rcx,10h
fffff803`d9c2f92e 0f871e020000    ja      nt!CmpDelayCloseWorker+0x4c2 (fffff803`d9c2fb52)

nt!CmpDelayCloseWorker+0x2a4:
fffff803`d9c2f934 498bcd          mov     rcx,r13

nt!CmpDelayCloseWorker+0x2a7:
fffff803`d9c2f937 a802            test    al,2
fffff803`d9c2f939 0f8597922200    jne     nt! ?? ::NNGAKEGL::`string'+0x9624 (fffff803`d9e58bd6)

nt!CmpDelayCloseWorker+0x2af:
fffff803`d9c2f93f f0480fb14f30    lock cmpxchg qword ptr [rdi+30h],rcx
fffff803`d9c2f945 0f858b922200    jne     nt! ?? ::NNGAKEGL::`string'+0x9624 (fffff803`d9e58bd6)

nt!CmpDelayCloseWorker+0x2bb:
fffff803`d9c2f94b f7470400001000  test    dword ptr [rdi+4],100000h
fffff803`d9c2f952 0f858d922200    jne     nt! ?? ::NNGAKEGL::`string'+0x9633 (fffff803`d9e58be5)

nt!CmpDelayCloseWorker+0x2c8:
fffff803`d9c2f958 f7470400000800  test    dword ptr [rdi+4],80000h
fffff803`d9c2f95f 7408            je      nt!CmpDelayCloseWorker+0x2d9 (fffff803`d9c2f969)

nt!CmpDelayCloseWorker+0x2d1:
fffff803`d9c2f961 488bcf          mov     rcx,rdi
fffff803`d9c2f964 e8579e0900      call    nt!CmpFreeKeyControlBlock (fffff803`d9cc97c0)

nt!CmpDelayCloseWorker+0x2d9:
fffff803`d9c2f969 418bc7          mov     eax,r15d
fffff803`d9c2f96c 488d0c40        lea     rcx,[rax+rax*2]
fffff803`d9c2f970 c644cc4001      mov     byte ptr [rsp+rcx*8+40h],1

nt!CmpDelayCloseWorker+0x2e5:
fffff803`d9c2f975 41ffc7          inc     r15d
fffff803`d9c2f978 4883c318        add     rbx,18h
fffff803`d9c2f97c 443bfe          cmp     r15d,esi
fffff803`d9c2f97f 0f821effffff    jb      nt!CmpDelayCloseWorker+0x213 (fffff803`d9c2f8a3)

nt!CmpDelayCloseWorker+0x2f5:
fffff803`d9c2f985 418b4614        mov     eax,dword ptr [r14+14h]
fffff803`d9c2f989 498b1e          mov     rbx,qword ptr [r14]
fffff803`d9c2f98c 8bc8            mov     ecx,eax
fffff803`d9c2f98e c1e909          shr     ecx,9
fffff803`d9c2f991 33c8            xor     ecx,eax
fffff803`d9c2f993 69c9a38a0100    imul    ecx,ecx,18AA3h
fffff803`d9c2f999 8bc1            mov     eax,ecx
fffff803`d9c2f99b 8bd1            mov     edx,ecx
fffff803`d9c2f99d 8b8b00060000    mov     ecx,dword ptr [rbx+600h]
fffff803`d9c2f9a3 48c1ea09        shr     rdx,9
fffff803`d9c2f9a7 ffc9            dec     ecx
fffff803`d9c2f9a9 4833d0          xor     rdx,rax
fffff803`d9c2f9ac 488b83f8050000  mov     rax,qword ptr [rbx+5F8h]
fffff803`d9c2f9b3 4823d1          and     rdx,rcx
fffff803`d9c2f9b6 488d0c52        lea     rcx,[rdx+rdx*2]
fffff803`d9c2f9ba 488d14c8        lea     rdx,[rax+rcx*8]
fffff803`d9c2f9be 4c896a08        mov     qword ptr [rdx+8],r13
fffff803`d9c2f9c2 0f0d0a          prefetchw [rdx]
fffff803`d9c2f9c5 488b02          mov     rax,qword ptr [rdx]
fffff803`d9c2f9c8 488bc8          mov     rcx,rax
fffff803`d9c2f9cb 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`d9c2f9cf 4883f910        cmp     rcx,10h
fffff803`d9c2f9d3 0f8730010000    ja      nt!CmpDelayCloseWorker+0x479 (fffff803`d9c2fb09)

nt!CmpDelayCloseWorker+0x349:
fffff803`d9c2f9d9 498bcd          mov     rcx,r13

nt!CmpDelayCloseWorker+0x34c:
fffff803`d9c2f9dc a802            test    al,2
fffff803`d9c2f9de 0f8518010000    jne     nt!CmpDelayCloseWorker+0x46c (fffff803`d9c2fafc)

nt!CmpDelayCloseWorker+0x354:
fffff803`d9c2f9e4 f0480fb10a      lock cmpxchg qword ptr [rdx],rcx
fffff803`d9c2f9e9 0f850d010000    jne     nt!CmpDelayCloseWorker+0x46c (fffff803`d9c2fafc)

nt!CmpDelayCloseWorker+0x35f:
fffff803`d9c2f9ef f0ff8ba80b0000  lock dec dword ptr [rbx+0BA8h]
fffff803`d9c2f9f6 0f84fa912200    je      nt! ?? ::NNGAKEGL::`string'+0x9644 (fffff803`d9e58bf6)

nt!CmpDelayCloseWorker+0x36c:
fffff803`d9c2f9fc ffc5            inc     ebp
fffff803`d9c2f9fe 4983c618        add     r14,18h
fffff803`d9c2fa02 3bee            cmp     ebp,esi
fffff803`d9c2fa04 0f8227feffff    jb      nt!CmpDelayCloseWorker+0x1a1 (fffff803`d9c2f831)

nt!CmpDelayCloseWorker+0x37a:
fffff803`d9c2fa0a 41bb01000000    mov     r11d,1
fffff803`d9c2fa10 4c8d0589def3ff  lea     r8,[nt!CmpDelayedLRUListHead (fffff803`d9b6d8a0)]
fffff803`d9c2fa17 83fe04          cmp     esi,4
fffff803`d9c2fa1a 0f8401fdffff    je      nt!CmpDelayCloseWorker+0x91 (fffff803`d9c2f721)

nt!CmpDelayCloseWorker+0x390:
fffff803`d9c2fa20 4584e4          test    r12b,r12b
fffff803`d9c2fa23 7514            jne     nt!CmpDelayCloseWorker+0x3a9 (fffff803`d9c2fa39)

nt!CmpDelayCloseWorker+0x395:
fffff803`d9c2fa25 b802000000      mov     eax,2
fffff803`d9c2fa2a f0440fb12d5983edff lock cmpxchg dword ptr [nt!CmpDelayCloseWorkItemActive (fffff803`d9b07d8c)],r13d
fffff803`d9c2fa33 0f85d1fcffff    jne     nt!CmpDelayCloseWorker+0x7a (fffff803`d9c2f70a)

nt!CmpDelayCloseWorker+0x3a9:
fffff803`d9c2fa39 44382d49b62d00  cmp     byte ptr [nt!CmpPuntBoot (fffff803`d9f0b089)],r13b
fffff803`d9c2fa40 754b            jne     nt!CmpDelayCloseWorker+0x3fd (fffff803`d9c2fa8d)

nt!CmpDelayCloseWorker+0x3b2:
fffff803`d9c2fa42 488d0db77dfaff  lea     rcx,[nt!CmpRegistryLock (fffff803`d9bd7800)]
fffff803`d9c2fa49 e8c2deceff      call    nt!ExReleaseResourceLite (fffff803`d991d910)
fffff803`d9c2fa4e 654c8b1c2588010000 mov   r11,qword ptr gs:[188h]
fffff803`d9c2fa57 410fbf83e4010000 movsx   eax,word ptr [r11+1E4h]
fffff803`d9c2fa5f ffc0            inc     eax
fffff803`d9c2fa61 66418983e4010000 mov     word ptr [r11+1E4h],ax
fffff803`d9c2fa69 6685c0          test    ax,ax
fffff803`d9c2fa6c 7510            jne     nt!CmpDelayCloseWorker+0x3ee (fffff803`d9c2fa7e)

nt!CmpDelayCloseWorker+0x3de:
fffff803`d9c2fa6e 498d8398000000  lea     rax,[r11+98h]
fffff803`d9c2fa75 483900          cmp     qword ptr [rax],rax
fffff803`d9c2fa78 0f85a9000000    jne     nt!CmpDelayCloseWorker+0x497 (fffff803`d9c2fb27)

nt!CmpDelayCloseWorker+0x3ee:
fffff803`d9c2fa7e 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9c2fa87 fe8837040000    dec     byte ptr [rax+437h]

nt!CmpDelayCloseWorker+0x3fd:
fffff803`d9c2fa8d 488b8c2490000000 mov     rcx,qword ptr [rsp+90h]
fffff803`d9c2fa95 4833cc          xor     rcx,rsp
fffff803`d9c2fa98 e8237acaff      call    nt!_security_check_cookie (fffff803`d98d74c0)
fffff803`d9c2fa9d 4c8d9c24a0000000 lea     r11,[rsp+0A0h]
fffff803`d9c2faa5 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff803`d9c2faa9 498b6b38        mov     rbp,qword ptr [r11+38h]
fffff803`d9c2faad 498b7340        mov     rsi,qword ptr [r11+40h]
fffff803`d9c2fab1 498be3          mov     rsp,r11
fffff803`d9c2fab4 415f            pop     r15
fffff803`d9c2fab6 415e            pop     r14
fffff803`d9c2fab8 415d            pop     r13
fffff803`d9c2faba 415c            pop     r12
fffff803`d9c2fabc 5f              pop     rdi
fffff803`d9c2fabd c3              ret

nt!CmpDelayCloseWorker+0x42e:
fffff803`d9c2fabe 488d0d9bddf3ff  lea     rcx,[nt!CmpDelayedCloseTableLock (fffff803`d9b6d860)]
fffff803`d9c2fac5 8bd0            mov     edx,eax
fffff803`d9c2fac7 e86075d5ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9c2facc e949fdffff      jmp     nt!CmpDelayCloseWorker+0x18a (fffff803`d9c2f81a)

nt!CmpDelayCloseWorker+0x441:
fffff803`d9c2fad1 488d0d88ddf3ff  lea     rcx,[nt!CmpDelayedCloseTableLock (fffff803`d9b6d860)]
fffff803`d9c2fad8 e8437fd5ff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)
fffff803`d9c2fadd 41bb01000000    mov     r11d,1
fffff803`d9c2fae3 4c8d05b6ddf3ff  lea     r8,[nt!CmpDelayedLRUListHead (fffff803`d9b6d8a0)]
fffff803`d9c2faea e94cfcffff      jmp     nt!CmpDelayCloseWorker+0xab (fffff803`d9c2f73b)

nt!CmpDelayCloseWorker+0x45f:
fffff803`d9c2faef 85c0            test    eax,eax
fffff803`d9c2faf1 0f8574fcffff    jne     nt!CmpDelayCloseWorker+0xdb (fffff803`d9c2f76b)

nt!CmpDelayCloseWorker+0x467:
fffff803`d9c2faf7 e9fffcffff      jmp     nt!CmpDelayCloseWorker+0x16b (fffff803`d9c2f7fb)

nt!CmpDelayCloseWorker+0x46c:
fffff803`d9c2fafc 488bca          mov     rcx,rdx
fffff803`d9c2faff e8e808d1ff      call    nt!ExfReleasePushLock (fffff803`d99403ec)
fffff803`d9c2fb04 e9e6feffff      jmp     nt!CmpDelayCloseWorker+0x35f (fffff803`d9c2f9ef)

nt!CmpDelayCloseWorker+0x479:
fffff803`d9c2fb09 488d48f0        lea     rcx,[rax-10h]
fffff803`d9c2fb0d e9cafeffff      jmp     nt!CmpDelayCloseWorker+0x34c (fffff803`d9c2f9dc)

nt!CmpDelayCloseWorker+0x482:
fffff803`d9c2fb12 488bcf          mov     rcx,rdi
fffff803`d9c2fb15 e8e658d3ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9c2fb1a e958fdffff      jmp     nt!CmpDelayCloseWorker+0x1e7 (fffff803`d9c2f877)

nt!CmpDelayCloseWorker+0x48f:
fffff803`d9c2fb1f 41b401          mov     r12b,1
fffff803`d9c2fb22 e9a6fbffff      jmp     nt!CmpDelayCloseWorker+0x3d (fffff803`d9c2f6cd)

nt!CmpDelayCloseWorker+0x497:
fffff803`d9c2fb27 664539abe6010000 cmp     word ptr [r11+1E6h],r13w
fffff803`d9c2fb2f 0f8549ffffff    jne     nt!CmpDelayCloseWorker+0x3ee (fffff803`d9c2fa7e)

nt!CmpDelayCloseWorker+0x4a5:
fffff803`d9c2fb35 e8c6dcd4ff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)
fffff803`d9c2fb3a e93fffffff      jmp     nt!CmpDelayCloseWorker+0x3ee (fffff803`d9c2fa7e)

nt!CmpDelayCloseWorker+0x4af:
fffff803`d9c2fb3f e8bc58d3ff      call    nt!ExfAcquirePushLockExclusive (fffff803`d9965400)
fffff803`d9c2fb44 e9a1fdffff      jmp     nt!CmpDelayCloseWorker+0x25a (fffff803`d9c2f8ea)

nt!CmpDelayCloseWorker+0x4b9:
fffff803`d9c2fb49 f0ff4f38        lock dec dword ptr [rdi+38h]
fffff803`d9c2fb4d e9c9fdffff      jmp     nt!CmpDelayCloseWorker+0x28b (fffff803`d9c2f91b)

nt!CmpDelayCloseWorker+0x4c2:
fffff803`d9c2fb52 488d48f0        lea     rcx,[rax-10h]
fffff803`d9c2fb56 e9dcfdffff      jmp     nt!CmpDelayCloseWorker+0x2a7 (fffff803`d9c2f937)

nt! ?? ::NNGAKEGL::`string'+0x9612:
fffff803`d9e58bc4 b201            mov     dl,1
fffff803`d9e58bc6 488bcf          mov     rcx,rdi
fffff803`d9e58bc9 e82627b9ff      call    nt!CmpLockTableAdd (fffff803`d99eb2f4)
fffff803`d9e58bce 894740          mov     dword ptr [rdi+40h],eax
fffff803`d9e58bd1 e9036dddff      jmp     nt!CmpDelayCloseWorker+0x249 (fffff803`d9c2f8d9)

nt! ?? ::NNGAKEGL::`string'+0x9624:
fffff803`d9e58bd6 488d4f30        lea     rcx,[rdi+30h]
fffff803`d9e58bda e80d78aeff      call    nt!ExfReleasePushLock (fffff803`d99403ec)
fffff803`d9e58bdf 90              nop
fffff803`d9e58be0 e9666dddff      jmp     nt!CmpDelayCloseWorker+0x2bb (fffff803`d9c2f94b)

nt! ?? ::NNGAKEGL::`string'+0x9633:
fffff803`d9e58be5 8b5740          mov     edx,dword ptr [rdi+40h]
fffff803`d9e58be8 488bcf          mov     rcx,rdi
fffff803`d9e58beb e83026b9ff      call    nt!CmpLockTableRemove (fffff803`d99eb220)
fffff803`d9e58bf0 90              nop
fffff803`d9e58bf1 e9626dddff      jmp     nt!CmpDelayCloseWorker+0x2c8 (fffff803`d9c2f958)

nt! ?? ::NNGAKEGL::`string'+0x9644:
fffff803`d9e58bf6 488bcb          mov     rcx,rbx
fffff803`d9e58bf9 e8a66ca4ff      call    nt!CmpDeleteHive (fffff803`d989f8a4)
fffff803`d9e58bfe 90              nop
fffff803`d9e58bff e9f86dddff      jmp     nt!CmpDelayCloseWorker+0x36c (fffff803`d9c2f9fc)

nt! ?? ::NNGAKEGL::`string'+0x9652:
fffff803`d9e58c04 41b90c000000    mov     r9d,0Ch
fffff803`d9e58c0a 4c8bc3          mov     r8,rbx
fffff803`d9e58c0d 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff803`d9e58c12 418d510b        lea     edx,[r9+0Bh]
fffff803`d9e58c16 8d4a3a          lea     ecx,[rdx+3Ah]
fffff803`d9e58c19 e82278a8ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9e58c1e cc              int     3

nt! ?? ::NNGAKEGL::`string'+0x966d:
fffff803`d9e58c1f b903000000      mov     ecx,3
fffff803`d9e58c24 cd29            int     29h
fffff803`d9e58c26 90              nop
fffff803`d9e58c27 90              nop
fffff803`d9e58c28 488b01          mov     rax,qword ptr [rcx]
fffff803`d9e58c2b 408830          mov     byte ptr [rax],sil
fffff803`d9e58c2e 836308fb        and     dword ptr [rbx+8],0FFFFFFFBh
fffff803`d9e58c32 e98945ddff      jmp     nt!CmpRemoveFromDelayedClose+0x8c (fffff803`d9c2d1c0)
