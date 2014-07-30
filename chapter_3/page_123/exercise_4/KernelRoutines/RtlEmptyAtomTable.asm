nt!RtlEmptyAtomTable:
fffff803`d9e0e690 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9e0e695 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`d9e0e69a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`d9e0e69f 57              push    rdi
fffff803`d9e0e6a0 4154            push    r12
fffff803`d9e0e6a2 4155            push    r13
fffff803`d9e0e6a4 4156            push    r14
fffff803`d9e0e6a6 4157            push    r15
fffff803`d9e0e6a8 4883ec20        sub     rsp,20h
fffff803`d9e0e6ac 448ae2          mov     r12b,dl
fffff803`d9e0e6af 488bf9          mov     rdi,rcx
fffff803`d9e0e6b2 e8d93de9ff      call    nt!RtlpLockAtomTable (fffff803`d9ca2490)
fffff803`d9e0e6b7 4533ed          xor     r13d,r13d
fffff803`d9e0e6ba 84c0            test    al,al
fffff803`d9e0e6bc 750a            jne     nt!RtlEmptyAtomTable+0x38 (fffff803`d9e0e6c8)

nt!RtlEmptyAtomTable+0x2e:
fffff803`d9e0e6be b80d0000c0      mov     eax,0C000000Dh
fffff803`d9e0e6c3 e9e0000000      jmp     nt!RtlEmptyAtomTable+0x118 (fffff803`d9e0e7a8)

nt!RtlEmptyAtomTable+0x38:
fffff803`d9e0e6c8 4c8dbf20020000  lea     r15,[rdi+220h]
fffff803`d9e0e6cf 418bed          mov     ebp,r13d
fffff803`d9e0e6d2 4439af1c020000  cmp     dword ptr [rdi+21Ch],r13d
fffff803`d9e0e6d9 7678            jbe     nt!RtlEmptyAtomTable+0xc3 (fffff803`d9e0e753)

nt!RtlEmptyAtomTable+0x4b:
fffff803`d9e0e6db 4d8bf7          mov     r14,r15
fffff803`d9e0e6de 4983c708        add     r15,8
fffff803`d9e0e6e2 eb5d            jmp     nt!RtlEmptyAtomTable+0xb1 (fffff803`d9e0e741)

nt!RtlEmptyAtomTable+0x54:
fffff803`d9e0e6e4 4584e4          test    r12b,r12b
fffff803`d9e0e6e7 750b            jne     nt!RtlEmptyAtomTable+0x64 (fffff803`d9e0e6f4)

nt!RtlEmptyAtomTable+0x59:
fffff803`d9e0e6e9 f6432601        test    byte ptr [rbx+26h],1
fffff803`d9e0e6ed 7405            je      nt!RtlEmptyAtomTable+0x64 (fffff803`d9e0e6f4)

nt!RtlEmptyAtomTable+0x5f:
fffff803`d9e0e6ef 4c8bf3          mov     r14,rbx
fffff803`d9e0e6f2 eb4d            jmp     nt!RtlEmptyAtomTable+0xb1 (fffff803`d9e0e741)

nt!RtlEmptyAtomTable+0x64:
fffff803`d9e0e6f4 488b03          mov     rax,qword ptr [rbx]
fffff803`d9e0e6f7 488bd3          mov     rdx,rbx
fffff803`d9e0e6fa 488bcf          mov     rcx,rdi
fffff803`d9e0e6fd 498906          mov     qword ptr [r14],rax
fffff803`d9e0e700 4c892b          mov     qword ptr [rbx],r13
fffff803`d9e0e703 e8703ee7ff      call    nt!RtlpFreeHandleForAtom (fffff803`d9c82578)
fffff803`d9e0e708 488d7310        lea     rsi,[rbx+10h]

nt!RtlEmptyAtomTable+0x7c:
fffff803`d9e0e70c 483936          cmp     qword ptr [rsi],rsi
fffff803`d9e0e70f 7428            je      nt!RtlEmptyAtomTable+0xa9 (fffff803`d9e0e739)

nt!RtlEmptyAtomTable+0x81:
fffff803`d9e0e711 488b0e          mov     rcx,qword ptr [rsi]
fffff803`d9e0e714 488b01          mov     rax,qword ptr [rcx]
fffff803`d9e0e717 48397108        cmp     qword ptr [rcx+8],rsi
fffff803`d9e0e71b 0f85a4000000    jne     nt!RtlEmptyAtomTable+0x135 (fffff803`d9e0e7c5)

nt!RtlEmptyAtomTable+0x91:
fffff803`d9e0e721 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d9e0e725 0f859a000000    jne     nt!RtlEmptyAtomTable+0x135 (fffff803`d9e0e7c5)

nt!RtlEmptyAtomTable+0x9b:
fffff803`d9e0e72b 488906          mov     qword ptr [rsi],rax
fffff803`d9e0e72e 48897008        mov     qword ptr [rax+8],rsi
fffff803`d9e0e732 e8ed3de7ff      call    nt!RtlpFreeAtom (fffff803`d9c82524)
fffff803`d9e0e737 ebd3            jmp     nt!RtlEmptyAtomTable+0x7c (fffff803`d9e0e70c)

nt!RtlEmptyAtomTable+0xa9:
fffff803`d9e0e739 488bcb          mov     rcx,rbx
fffff803`d9e0e73c e8e33de7ff      call    nt!RtlpFreeAtom (fffff803`d9c82524)

nt!RtlEmptyAtomTable+0xb1:
fffff803`d9e0e741 498b1e          mov     rbx,qword ptr [r14]
fffff803`d9e0e744 4885db          test    rbx,rbx
fffff803`d9e0e747 759b            jne     nt!RtlEmptyAtomTable+0x54 (fffff803`d9e0e6e4)

nt!RtlEmptyAtomTable+0xb9:
fffff803`d9e0e749 ffc5            inc     ebp
fffff803`d9e0e74b 3baf1c020000    cmp     ebp,dword ptr [rdi+21Ch]
fffff803`d9e0e751 7288            jb      nt!RtlEmptyAtomTable+0x4b (fffff803`d9e0e6db)

nt!RtlEmptyAtomTable+0xc3:
fffff803`d9e0e753 488d4f08        lea     rcx,[rdi+8]
fffff803`d9e0e757 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`d9e0e75b f0480fc101      lock xadd qword ptr [rcx],rax
fffff803`d9e0e760 a802            test    al,2
fffff803`d9e0e762 7409            je      nt!RtlEmptyAtomTable+0xdd (fffff803`d9e0e76d)

nt!RtlEmptyAtomTable+0xd4:
fffff803`d9e0e764 a804            test    al,4
fffff803`d9e0e766 7505            jne     nt!RtlEmptyAtomTable+0xdd (fffff803`d9e0e76d)

nt!RtlEmptyAtomTable+0xd8:
fffff803`d9e0e768 e8a7a8b5ff      call    nt!ExfTryToWakePushLock (fffff803`d9969014)

nt!RtlEmptyAtomTable+0xdd:
fffff803`d9e0e76d 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9e0e776 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9e0e77d ffc0            inc     eax
fffff803`d9e0e77f 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9e0e786 6685c0          test    ax,ax
fffff803`d9e0e789 751b            jne     nt!RtlEmptyAtomTable+0x116 (fffff803`d9e0e7a6)

nt!RtlEmptyAtomTable+0xfb:
fffff803`d9e0e78b 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9e0e792 483900          cmp     qword ptr [rax],rax
fffff803`d9e0e795 740f            je      nt!RtlEmptyAtomTable+0x116 (fffff803`d9e0e7a6)

nt!RtlEmptyAtomTable+0x107:
fffff803`d9e0e797 664439a9e6010000 cmp     word ptr [rcx+1E6h],r13w
fffff803`d9e0e79f 7505            jne     nt!RtlEmptyAtomTable+0x116 (fffff803`d9e0e7a6)

nt!RtlEmptyAtomTable+0x111:
fffff803`d9e0e7a1 e85af0b6ff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!RtlEmptyAtomTable+0x116:
fffff803`d9e0e7a6 33c0            xor     eax,eax

nt!RtlEmptyAtomTable+0x118:
fffff803`d9e0e7a8 488b5c2450      mov     rbx,qword ptr [rsp+50h]
fffff803`d9e0e7ad 488b6c2458      mov     rbp,qword ptr [rsp+58h]
fffff803`d9e0e7b2 488b742460      mov     rsi,qword ptr [rsp+60h]
fffff803`d9e0e7b7 4883c420        add     rsp,20h
fffff803`d9e0e7bb 415f            pop     r15
fffff803`d9e0e7bd 415e            pop     r14
fffff803`d9e0e7bf 415d            pop     r13
fffff803`d9e0e7c1 415c            pop     r12
fffff803`d9e0e7c3 5f              pop     rdi
fffff803`d9e0e7c4 c3              ret

nt!RtlEmptyAtomTable+0x135:
fffff803`d9e0e7c5 b903000000      mov     ecx,3
fffff803`d9e0e7ca cd29            int     29h
fffff803`d9e0e7cc 488bc4          mov     rax,rsp
fffff803`d9e0e7cf 53              push    rbx
fffff803`d9e0e7d0 56              push    rsi
fffff803`d9e0e7d1 57              push    rdi
fffff803`d9e0e7d2 4154            push    r12
fffff803`d9e0e7d4 4155            push    r13
fffff803`d9e0e7d6 4156            push    r14
fffff803`d9e0e7d8 4157            push    r15
fffff803`d9e0e7da 4881ecb0000000  sub     rsp,0B0h
fffff803`d9e0e7e1 488bf1          mov     rsi,rcx
fffff803`d9e0e7e4 33db            xor     ebx,ebx
fffff803`d9e0e7e6 448bf3          mov     r14d,ebx
fffff803`d9e0e7e9 48895c2438      mov     qword ptr [rsp+38h],rbx
fffff803`d9e0e7ee 48898c2400010000 mov     qword ptr [rsp+100h],rcx
fffff803`d9e0e7f6 885c2430        mov     byte ptr [rsp+30h],bl
fffff803`d9e0e7fa 0b5174          or      edx,dword ptr [rcx+74h]
fffff803`d9e0e7fd 895810          mov     dword ptr [rax+10h],ebx
fffff803`d9e0e800 895808          mov     dword ptr [rax+8],ebx
fffff803`d9e0e803 f6c201          test    dl,1
fffff803`d9e0e806 7513            jne     nt!RtlZeroHeap+0x4f (fffff803`d9e0e81b)

nt!RtlZeroHeap+0x3c:
fffff803`d9e0e808 b201            mov     dl,1
fffff803`d9e0e80a 488b8960010000  mov     rcx,qword ptr [rcx+160h]
fffff803`d9e0e811 e83a6bb1ff      call    nt!ExAcquireResourceExclusiveLite (fffff803`d9925350)
fffff803`d9e0e816 c644243001      mov     byte ptr [rsp+30h],1

nt!RtlZeroHeap+0x4f:
fffff803`d9e0e81b 488d8620010000  lea     rax,[rsi+120h]
fffff803`d9e0e822 4c8b28          mov     r13,qword ptr [rax]
fffff803`d9e0e825 4c896c2458      mov     qword ptr [rsp+58h],r13

nt!RtlZeroHeap+0x5e:
fffff803`d9e0e82a 4c896c2458      mov     qword ptr [rsp+58h],r13
fffff803`d9e0e82f 4c3be8          cmp     r13,rax
fffff803`d9e0e832 0f84e5030000    je      nt!RtlZeroHeap+0x451 (fffff803`d9e0ec1d)

nt!RtlZeroHeap+0x6c:
fffff803`d9e0e838 498d45e8        lea     rax,[r13-18h]
fffff803`d9e0e83c 4889842408010000 mov     qword ptr [rsp+108h],rax
fffff803`d9e0e844 4c8b7840        mov     r15,qword ptr [rax+40h]
fffff803`d9e0e848 4c897c2440      mov     qword ptr [rsp+40h],r15

nt!RtlZeroHeap+0x81:
fffff803`d9e0e84d 4c3b7848        cmp     r15,qword ptr [rax+48h]
fffff803`d9e0e851 0f83b6030000    jae     nt!RtlZeroHeap+0x441 (fffff803`d9e0ec0d)

nt!RtlZeroHeap+0x8b:
fffff803`d9e0e857 4d85f6          test    r14,r14
fffff803`d9e0e85a 7426            je      nt!RtlZeroHeap+0xb6 (fffff803`d9e0e882)

nt!RtlZeroHeap+0x90:
fffff803`d9e0e85c 395e7c          cmp     dword ptr [rsi+7Ch],ebx
fffff803`d9e0e85f 744d            je      nt!RtlZeroHeap+0xe2 (fffff803`d9e0e8ae)

nt!RtlZeroHeap+0x95:
fffff803`d9e0e861 410fb64e0a      movzx   ecx,byte ptr [r14+0Ah]
fffff803`d9e0e866 410fb64609      movzx   eax,byte ptr [r14+9]
fffff803`d9e0e86b 33c8            xor     ecx,eax
fffff803`d9e0e86d 410fb64608      movzx   eax,byte ptr [r14+8]
fffff803`d9e0e872 33c8            xor     ecx,eax
fffff803`d9e0e874 41884e0b        mov     byte ptr [r14+0Bh],cl
fffff803`d9e0e878 8b8688000000    mov     eax,dword ptr [rsi+88h]
fffff803`d9e0e87e 41314608        xor     dword ptr [r14+8],eax

nt!RtlZeroHeap+0xb6:
fffff803`d9e0e882 395e7c          cmp     dword ptr [rsi+7Ch],ebx
fffff803`d9e0e885 7427            je      nt!RtlZeroHeap+0xe2 (fffff803`d9e0e8ae)

nt!RtlZeroHeap+0xbb:
fffff803`d9e0e887 8b8688000000    mov     eax,dword ptr [rsi+88h]
fffff803`d9e0e88d 41314708        xor     dword ptr [r15+8],eax
fffff803`d9e0e891 418a4f0a        mov     cl,byte ptr [r15+0Ah]
fffff803`d9e0e895 41324f09        xor     cl,byte ptr [r15+9]
fffff803`d9e0e899 41324f08        xor     cl,byte ptr [r15+8]
fffff803`d9e0e89d 41384f0b        cmp     byte ptr [r15+0Bh],cl
fffff803`d9e0e8a1 740b            je      nt!RtlZeroHeap+0xe2 (fffff803`d9e0e8ae)

nt!RtlZeroHeap+0xd7:
fffff803`d9e0e8a3 498bd7          mov     rdx,r15
fffff803`d9e0e8a6 488bce          mov     rcx,rsi
fffff803`d9e0e8a9 e842eac1ff      call    nt!RtlpAnalyzeHeapFailure (fffff803`d9a2d2f0)

nt!RtlZeroHeap+0xe2:
fffff803`d9e0e8ae 4d8bf7          mov     r14,r15
fffff803`d9e0e8b1 4c897c2438      mov     qword ptr [rsp+38h],r15
fffff803`d9e0e8b6 450fb74708      movzx   r8d,word ptr [r15+8]
fffff803`d9e0e8bb 418bc0          mov     eax,r8d
fffff803`d9e0e8be c1e004          shl     eax,4
fffff803`d9e0e8c1 4863d0          movsxd  rdx,eax
fffff803`d9e0e8c4 410fb64f0a      movzx   ecx,byte ptr [r15+0Ah]
fffff803`d9e0e8c9 8bc1            mov     eax,ecx
fffff803`d9e0e8cb 83e001          and     eax,1
fffff803`d9e0e8ce 84c0            test    al,al
fffff803`d9e0e8d0 0f850c030000    jne     nt!RtlZeroHeap+0x416 (fffff803`d9e0ebe2)

nt!RtlZeroHeap+0x10a:
fffff803`d9e0e8d6 498bff          mov     rdi,r15
fffff803`d9e0e8d9 4c897c2478      mov     qword ptr [rsp+78h],r15
fffff803`d9e0e8de f6c108          test    cl,8
fffff803`d9e0e8e1 0f8421020000    je      nt!RtlZeroHeap+0x33c (fffff803`d9e0eb08)

nt!RtlZeroHeap+0x11b:
fffff803`d9e0e8e7 4d8d5710        lea     r10,[r15+10h]
fffff803`d9e0e8eb 4d8b32          mov     r14,qword ptr [r10]
fffff803`d9e0e8ee 4d8b6718        mov     r12,qword ptr [r15+18h]
fffff803`d9e0e8f2 498b0424        mov     rax,qword ptr [r12]
fffff803`d9e0e8f6 4d8b4e08        mov     r9,qword ptr [r14+8]
fffff803`d9e0e8fa 493bc1          cmp     rax,r9
fffff803`d9e0e8fd 0f85d6010000    jne     nt!RtlZeroHeap+0x30d (fffff803`d9e0ead9)

nt!RtlZeroHeap+0x137:
fffff803`d9e0e903 493bc2          cmp     rax,r10
fffff803`d9e0e906 0f85cd010000    jne     nt!RtlZeroHeap+0x30d (fffff803`d9e0ead9)

nt!RtlZeroHeap+0x140:
fffff803`d9e0e90c 418bc0          mov     eax,r8d
fffff803`d9e0e90f 482986c0000000  sub     qword ptr [rsi+0C0h],rax
fffff803`d9e0e916 488b8e38010000  mov     rcx,qword ptr [rsi+138h]
fffff803`d9e0e91d 4885c9          test    rcx,rcx
fffff803`d9e0e920 7456            je      nt!RtlZeroHeap+0x1ac (fffff803`d9e0e978)

nt!RtlZeroHeap+0x156:
fffff803`d9e0e922 410fb75708      movzx   edx,word ptr [r15+8]
fffff803`d9e0e927 48894c2460      mov     qword ptr [rsp+60h],rcx

nt!RtlZeroHeap+0x160:
fffff803`d9e0e92c 448b4108        mov     r8d,dword ptr [rcx+8]
fffff803`d9e0e930 493bd0          cmp     rdx,r8
fffff803`d9e0e933 720c            jb      nt!RtlZeroHeap+0x175 (fffff803`d9e0e941)

nt!RtlZeroHeap+0x169:
fffff803`d9e0e935 488b01          mov     rax,qword ptr [rcx]
fffff803`d9e0e938 4885c0          test    rax,rax
fffff803`d9e0e93b 7531            jne     nt!RtlZeroHeap+0x1a2 (fffff803`d9e0e96e)

nt!RtlZeroHeap+0x171:
fffff803`d9e0e93d 418d50ff        lea     edx,[r8-1]

nt!RtlZeroHeap+0x175:
fffff803`d9e0e941 4889942488000000 mov     qword ptr [rsp+88h],rdx
fffff803`d9e0e949 410fb74708      movzx   eax,word ptr [r15+8]
fffff803`d9e0e94e 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`d9e0e953 89542420        mov     dword ptr [rsp+20h],edx
fffff803`d9e0e957 4d8bca          mov     r9,r10
fffff803`d9e0e95a 4c8d059fd5b5ff  lea     r8,[nt!RtlpHeapFreeListCompare (fffff803`d996bf00)]
fffff803`d9e0e961 488bd1          mov     rdx,rcx
fffff803`d9e0e964 488bce          mov     rcx,rsi
fffff803`d9e0e967 e8643eb4ff      call    nt!RtlpHeapRemoveListEntry (fffff803`d99527d0)
fffff803`d9e0e96c eb0a            jmp     nt!RtlZeroHeap+0x1ac (fffff803`d9e0e978)

nt!RtlZeroHeap+0x1a2:
fffff803`d9e0e96e 488bc8          mov     rcx,rax
fffff803`d9e0e971 4889442460      mov     qword ptr [rsp+60h],rax
fffff803`d9e0e976 ebb4            jmp     nt!RtlZeroHeap+0x160 (fffff803`d9e0e92c)

nt!RtlZeroHeap+0x1ac:
fffff803`d9e0e978 4d893424        mov     qword ptr [r12],r14
fffff803`d9e0e97c 4d896608        mov     qword ptr [r14+8],r12
fffff803`d9e0e980 450fb76708      movzx   r12d,word ptr [r15+8]
fffff803`d9e0e985 41885f0a        mov     byte ptr [r15+0Ah],bl
fffff803`d9e0e989 41885f0f        mov     byte ptr [r15+0Fh],bl
fffff803`d9e0e98d 4c8db650010000  lea     r14,[rsi+150h]
fffff803`d9e0e994 48399e38010000  cmp     qword ptr [rsi+138h],rbx
fffff803`d9e0e99b 7410            je      nt!RtlZeroHeap+0x1e1 (fffff803`d9e0e9ad)

nt!RtlZeroHeap+0x1d1:
fffff803`d9e0e99d 418bd4          mov     edx,r12d
fffff803`d9e0e9a0 488bce          mov     rcx,rsi
fffff803`d9e0e9a3 e86886a9ff      call    nt!RtlpFindEntry (fffff803`d98a7010)
fffff803`d9e0e9a8 4c8bc0          mov     r8,rax
fffff803`d9e0e9ab eb03            jmp     nt!RtlZeroHeap+0x1e4 (fffff803`d9e0e9b0)

nt!RtlZeroHeap+0x1e1:
fffff803`d9e0e9ad 4d8b06          mov     r8,qword ptr [r14]

nt!RtlZeroHeap+0x1e4:
fffff803`d9e0e9b0 4c89842498000000 mov     qword ptr [rsp+98h],r8

nt!RtlZeroHeap+0x1ec:
fffff803`d9e0e9b8 4d3bf0          cmp     r14,r8
fffff803`d9e0e9bb 7462            je      nt!RtlZeroHeap+0x253 (fffff803`d9e0ea1f)

nt!RtlZeroHeap+0x1f1:
fffff803`d9e0e9bd 395e7c          cmp     dword ptr [rsi+7Ch],ebx
fffff803`d9e0e9c0 7443            je      nt!RtlZeroHeap+0x239 (fffff803`d9e0ea05)

nt!RtlZeroHeap+0x1f6:
fffff803`d9e0e9c2 418b48f8        mov     ecx,dword ptr [r8-8]
fffff803`d9e0e9c6 898c24a8000000  mov     dword ptr [rsp+0A8h],ecx
fffff803`d9e0e9cd 8b467c          mov     eax,dword ptr [rsi+7Ch]
fffff803`d9e0e9d0 85c1            test    ecx,eax
fffff803`d9e0e9d2 740f            je      nt!RtlZeroHeap+0x217 (fffff803`d9e0e9e3)

nt!RtlZeroHeap+0x208:
fffff803`d9e0e9d4 8b8688000000    mov     eax,dword ptr [rsi+88h]
fffff803`d9e0e9da 33c1            xor     eax,ecx
fffff803`d9e0e9dc 898424a8000000  mov     dword ptr [rsp+0A8h],eax

nt!RtlZeroHeap+0x217:
fffff803`d9e0e9e3 0fb78424a8000000 movzx   eax,word ptr [rsp+0A8h]
fffff803`d9e0e9eb 8b8c24f0000000  mov     ecx,dword ptr [rsp+0F0h]
fffff803`d9e0e9f2 898c24f8000000  mov     dword ptr [rsp+0F8h],ecx
fffff803`d9e0e9f9 4c8b7c2440      mov     r15,qword ptr [rsp+40h]
fffff803`d9e0e9fe 488b7c2478      mov     rdi,qword ptr [rsp+78h]
fffff803`d9e0ea03 eb05            jmp     nt!RtlZeroHeap+0x23e (fffff803`d9e0ea0a)

nt!RtlZeroHeap+0x239:
fffff803`d9e0ea05 410fb740f8      movzx   eax,word ptr [r8-8]

nt!RtlZeroHeap+0x23e:
fffff803`d9e0ea0a 0fb7c0          movzx   eax,ax
fffff803`d9e0ea0d 4c3be0          cmp     r12,rax
fffff803`d9e0ea10 760d            jbe     nt!RtlZeroHeap+0x253 (fffff803`d9e0ea1f)

nt!RtlZeroHeap+0x246:
fffff803`d9e0ea12 4d8b00          mov     r8,qword ptr [r8]
fffff803`d9e0ea15 4c89842498000000 mov     qword ptr [rsp+98h],r8
fffff803`d9e0ea1d eb99            jmp     nt!RtlZeroHeap+0x1ec (fffff803`d9e0e9b8)

nt!RtlZeroHeap+0x253:
fffff803`d9e0ea1f 4c8d7710        lea     r14,[rdi+10h]
fffff803`d9e0ea23 498b4008        mov     rax,qword ptr [r8+8]
fffff803`d9e0ea27 488b08          mov     rcx,qword ptr [rax]
fffff803`d9e0ea2a 493bc8          cmp     rcx,r8
fffff803`d9e0ea2d 7510            jne     nt!RtlZeroHeap+0x273 (fffff803`d9e0ea3f)

nt!RtlZeroHeap+0x263:
fffff803`d9e0ea2f 4d8906          mov     qword ptr [r14],r8
fffff803`d9e0ea32 49894608        mov     qword ptr [r14+8],rax
fffff803`d9e0ea36 4c8930          mov     qword ptr [rax],r14
fffff803`d9e0ea39 4d897008        mov     qword ptr [r8+8],r14
fffff803`d9e0ea3d eb17            jmp     nt!RtlZeroHeap+0x28a (fffff803`d9e0ea56)

nt!RtlZeroHeap+0x273:
fffff803`d9e0ea3f 48895c2428      mov     qword ptr [rsp+28h],rbx
fffff803`d9e0ea44 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`d9e0ea49 4533c9          xor     r9d,r9d
fffff803`d9e0ea4c 33d2            xor     edx,edx
fffff803`d9e0ea4e 8d4a0c          lea     ecx,[rdx+0Ch]
fffff803`d9e0ea51 e89ae6c1ff      call    nt!RtlpLogHeapFailure (fffff803`d9a2d0f0)

nt!RtlZeroHeap+0x28a:
fffff803`d9e0ea56 0fb74708        movzx   eax,word ptr [rdi+8]
fffff803`d9e0ea5a 480186c0000000  add     qword ptr [rsi+0C0h],rax
fffff803`d9e0ea61 488b8e38010000  mov     rcx,qword ptr [rsi+138h]
fffff803`d9e0ea68 4885c9          test    rcx,rcx
fffff803`d9e0ea6b 7449            je      nt!RtlZeroHeap+0x2ea (fffff803`d9e0eab6)

nt!RtlZeroHeap+0x2a1:
fffff803`d9e0ea6d 0fb75708        movzx   edx,word ptr [rdi+8]
fffff803`d9e0ea71 48894c2470      mov     qword ptr [rsp+70h],rcx

nt!RtlZeroHeap+0x2aa:
fffff803`d9e0ea76 448b4108        mov     r8d,dword ptr [rcx+8]
fffff803`d9e0ea7a 493bd0          cmp     rdx,r8
fffff803`d9e0ea7d 720c            jb      nt!RtlZeroHeap+0x2bf (fffff803`d9e0ea8b)

nt!RtlZeroHeap+0x2b3:
fffff803`d9e0ea7f 488b01          mov     rax,qword ptr [rcx]
fffff803`d9e0ea82 4885c0          test    rax,rax
fffff803`d9e0ea85 7525            jne     nt!RtlZeroHeap+0x2e0 (fffff803`d9e0eaac)

nt!RtlZeroHeap+0x2bb:
fffff803`d9e0ea87 418d50ff        lea     edx,[r8-1]

nt!RtlZeroHeap+0x2bf:
fffff803`d9e0ea8b 4889542468      mov     qword ptr [rsp+68h],rdx
fffff803`d9e0ea90 0fb74708        movzx   eax,word ptr [rdi+8]
fffff803`d9e0ea94 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9e0ea99 448bca          mov     r9d,edx
fffff803`d9e0ea9c 4d8bc6          mov     r8,r14
fffff803`d9e0ea9f 488bd1          mov     rdx,rcx
fffff803`d9e0eaa2 488bce          mov     rcx,rsi
fffff803`d9e0eaa5 e80645acff      call    nt!RtlpHeapAddListEntry (fffff803`d98d2fb0)
fffff803`d9e0eaaa eb0a            jmp     nt!RtlZeroHeap+0x2ea (fffff803`d9e0eab6)

nt!RtlZeroHeap+0x2e0:
fffff803`d9e0eaac 488bc8          mov     rcx,rax
fffff803`d9e0eaaf 4889442470      mov     qword ptr [rsp+70h],rax
fffff803`d9e0eab4 ebc0            jmp     nt!RtlZeroHeap+0x2aa (fffff803`d9e0ea76)

nt!RtlZeroHeap+0x2ea:
fffff803`d9e0eab6 395e7c          cmp     dword ptr [rsi+7Ch],ebx
fffff803`d9e0eab9 7438            je      nt!RtlZeroHeap+0x327 (fffff803`d9e0eaf3)

nt!RtlZeroHeap+0x2ef:
fffff803`d9e0eabb 0fb64f0a        movzx   ecx,byte ptr [rdi+0Ah]
fffff803`d9e0eabf 0fb64709        movzx   eax,byte ptr [rdi+9]
fffff803`d9e0eac3 33c8            xor     ecx,eax
fffff803`d9e0eac5 0fb64708        movzx   eax,byte ptr [rdi+8]
fffff803`d9e0eac9 33c8            xor     ecx,eax
fffff803`d9e0eacb 884f0b          mov     byte ptr [rdi+0Bh],cl
fffff803`d9e0eace 8b8688000000    mov     eax,dword ptr [rsi+88h]
fffff803`d9e0ead4 314708          xor     dword ptr [rdi+8],eax
fffff803`d9e0ead7 eb1a            jmp     nt!RtlZeroHeap+0x327 (fffff803`d9e0eaf3)

nt!RtlZeroHeap+0x30d:
fffff803`d9e0ead9 48895c2428      mov     qword ptr [rsp+28h],rbx
fffff803`d9e0eade 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9e0eae3 4d8bc2          mov     r8,r10
fffff803`d9e0eae6 488bd6          mov     rdx,rsi
fffff803`d9e0eae9 b90c000000      mov     ecx,0Ch
fffff803`d9e0eaee e8fde5c1ff      call    nt!RtlpLogHeapFailure (fffff803`d9a2d0f0)

nt!RtlZeroHeap+0x327:
fffff803`d9e0eaf3 4c8bf3          mov     r14,rbx
fffff803`d9e0eaf6 48895c2438      mov     qword ptr [rsp+38h],rbx

nt!RtlZeroHeap+0x32f:
fffff803`d9e0eafb 488b842408010000 mov     rax,qword ptr [rsp+108h]
fffff803`d9e0eb03 e945fdffff      jmp     nt!RtlZeroHeap+0x81 (fffff803`d9e0e84d)

nt!RtlZeroHeap+0x33c:
fffff803`d9e0eb08 8b4670          mov     eax,dword ptr [rsi+70h]
fffff803`d9e0eb0b a840            test    al,40h
fffff803`d9e0eb0d 7479            je      nt!RtlZeroHeap+0x3bc (fffff803`d9e0eb88)

nt!RtlZeroHeap+0x343:
fffff803`d9e0eb0f f6c104          test    cl,4
fffff803`d9e0eb12 7474            je      nt!RtlZeroHeap+0x3bc (fffff803`d9e0eb88)

nt!RtlZeroHeap+0x348:
fffff803`d9e0eb14 4883c2e0        add     rdx,0FFFFFFFFFFFFFFE0h
fffff803`d9e0eb18 4889542450      mov     qword ptr [rsp+50h],rdx
fffff803`d9e0eb1d 4d8d4720        lea     r8,[r15+20h]
fffff803`d9e0eb21 4c89842480000000 mov     qword ptr [rsp+80h],r8
fffff803`d9e0eb29 48c1ea02        shr     rdx,2
fffff803`d9e0eb2d 4889542450      mov     qword ptr [rsp+50h],rdx
fffff803`d9e0eb32 4885d2          test    rdx,rdx
fffff803`d9e0eb35 0f84a7000000    je      nt!RtlZeroHeap+0x416 (fffff803`d9e0ebe2)

nt!RtlZeroHeap+0x36f:
fffff803`d9e0eb3b 41f6c004        test    r8b,4
fffff803`d9e0eb3f 7421            je      nt!RtlZeroHeap+0x396 (fffff803`d9e0eb62)

nt!RtlZeroHeap+0x375:
fffff803`d9e0eb41 41c700eefeeefe  mov     dword ptr [r8],0FEEEFEEEh
fffff803`d9e0eb48 48ffca          dec     rdx
fffff803`d9e0eb4b 4889542450      mov     qword ptr [rsp+50h],rdx
fffff803`d9e0eb50 0f848c000000    je      nt!RtlZeroHeap+0x416 (fffff803`d9e0ebe2)

nt!RtlZeroHeap+0x38a:
fffff803`d9e0eb56 4983c004        add     r8,4
fffff803`d9e0eb5a 4c89842480000000 mov     qword ptr [rsp+80h],r8

nt!RtlZeroHeap+0x396:
fffff803`d9e0eb62 488bca          mov     rcx,rdx
fffff803`d9e0eb65 48d1e9          shr     rcx,1
fffff803`d9e0eb68 48b8eefeeefeeefeeefe mov rax,0FEEEFEEEFEEEFEEEh
fffff803`d9e0eb72 498bf8          mov     rdi,r8
fffff803`d9e0eb75 f348ab          rep stos qword ptr [rdi]
fffff803`d9e0eb78 f6c201          test    dl,1
fffff803`d9e0eb7b 7465            je      nt!RtlZeroHeap+0x416 (fffff803`d9e0ebe2)

nt!RtlZeroHeap+0x3b1:
fffff803`d9e0eb7d 41c74490fceefeeefe mov   dword ptr [r8+rdx*4-4],0FEEEFEEEh
fffff803`d9e0eb86 eb5a            jmp     nt!RtlZeroHeap+0x416 (fffff803`d9e0ebe2)

nt!RtlZeroHeap+0x3bc:
fffff803`d9e0eb88 4883c2e0        add     rdx,0FFFFFFFFFFFFFFE0h
fffff803`d9e0eb8c 4889542448      mov     qword ptr [rsp+48h],rdx
fffff803`d9e0eb91 4d8d4720        lea     r8,[r15+20h]
fffff803`d9e0eb95 4c89842490000000 mov     qword ptr [rsp+90h],r8
fffff803`d9e0eb9d 48c1ea02        shr     rdx,2
fffff803`d9e0eba1 4889542448      mov     qword ptr [rsp+48h],rdx
fffff803`d9e0eba6 4885d2          test    rdx,rdx
fffff803`d9e0eba9 7437            je      nt!RtlZeroHeap+0x416 (fffff803`d9e0ebe2)

nt!RtlZeroHeap+0x3df:
fffff803`d9e0ebab 41f6c004        test    r8b,4
fffff803`d9e0ebaf 7419            je      nt!RtlZeroHeap+0x3fe (fffff803`d9e0ebca)

nt!RtlZeroHeap+0x3e5:
fffff803`d9e0ebb1 418918          mov     dword ptr [r8],ebx
fffff803`d9e0ebb4 48ffca          dec     rdx
fffff803`d9e0ebb7 4889542448      mov     qword ptr [rsp+48h],rdx
fffff803`d9e0ebbc 7424            je      nt!RtlZeroHeap+0x416 (fffff803`d9e0ebe2)

nt!RtlZeroHeap+0x3f2:
fffff803`d9e0ebbe 4983c004        add     r8,4
fffff803`d9e0ebc2 4c89842490000000 mov     qword ptr [rsp+90h],r8

nt!RtlZeroHeap+0x3fe:
fffff803`d9e0ebca 488bca          mov     rcx,rdx
fffff803`d9e0ebcd 48d1e9          shr     rcx,1
fffff803`d9e0ebd0 498bf8          mov     rdi,r8
fffff803`d9e0ebd3 33c0            xor     eax,eax
fffff803`d9e0ebd5 f348ab          rep stos qword ptr [rdi]
fffff803`d9e0ebd8 f6c201          test    dl,1
fffff803`d9e0ebdb 7405            je      nt!RtlZeroHeap+0x416 (fffff803`d9e0ebe2)

nt!RtlZeroHeap+0x411:
fffff803`d9e0ebdd 41895c90fc      mov     dword ptr [r8+rdx*4-4],ebx

nt!RtlZeroHeap+0x416:
fffff803`d9e0ebe2 41807f0f03      cmp     byte ptr [r15+0Fh],3
fffff803`d9e0ebe7 7516            jne     nt!RtlZeroHeap+0x433 (fffff803`d9e0ebff)

nt!RtlZeroHeap+0x41d:
fffff803`d9e0ebe9 498d4f10        lea     rcx,[r15+10h]
fffff803`d9e0ebed 4c8d7930        lea     r15,[rcx+30h]
fffff803`d9e0ebf1 4c037928        add     r15,qword ptr [rcx+28h]

nt!RtlZeroHeap+0x429:
fffff803`d9e0ebf5 4c897c2440      mov     qword ptr [rsp+40h],r15
fffff803`d9e0ebfa e9fcfeffff      jmp     nt!RtlZeroHeap+0x32f (fffff803`d9e0eafb)

nt!RtlZeroHeap+0x433:
fffff803`d9e0ebff 410fb74708      movzx   eax,word ptr [r15+8]
fffff803`d9e0ec04 48c1e004        shl     rax,4
fffff803`d9e0ec08 4c03f8          add     r15,rax
fffff803`d9e0ec0b ebe8            jmp     nt!RtlZeroHeap+0x429 (fffff803`d9e0ebf5)

nt!RtlZeroHeap+0x441:
fffff803`d9e0ec0d 4d8b6d00        mov     r13,qword ptr [r13]
fffff803`d9e0ec11 488d8620010000  lea     rax,[rsi+120h]
fffff803`d9e0ec18 e90dfcffff      jmp     nt!RtlZeroHeap+0x5e (fffff803`d9e0e82a)

nt!RtlZeroHeap+0x451:
fffff803`d9e0ec1d 8bbc24f8000000  mov     edi,dword ptr [rsp+0F8h]
fffff803`d9e0ec24 eb11            jmp     nt!RtlZeroHeap+0x46b (fffff803`d9e0ec37)

nt!RtlZeroHeap+0x46b:
fffff803`d9e0ec37 4d85f6          test    r14,r14
fffff803`d9e0ec3a 741f            je      nt!RtlZeroHeap+0x48f (fffff803`d9e0ec5b)

nt!RtlZeroHeap+0x470:
fffff803`d9e0ec3c 395e7c          cmp     dword ptr [rsi+7Ch],ebx
fffff803`d9e0ec3f 741a            je      nt!RtlZeroHeap+0x48f (fffff803`d9e0ec5b)

nt!RtlZeroHeap+0x475:
fffff803`d9e0ec41 418a560a        mov     dl,byte ptr [r14+0Ah]
fffff803`d9e0ec45 41325609        xor     dl,byte ptr [r14+9]
fffff803`d9e0ec49 41325608        xor     dl,byte ptr [r14+8]
fffff803`d9e0ec4d 4188560b        mov     byte ptr [r14+0Bh],dl
fffff803`d9e0ec51 8b9688000000    mov     edx,dword ptr [rsi+88h]
fffff803`d9e0ec57 41315608        xor     dword ptr [r14+8],edx

nt!RtlZeroHeap+0x48f:
fffff803`d9e0ec5b 385c2430        cmp     byte ptr [rsp+30h],bl
fffff803`d9e0ec5f 740c            je      nt!RtlZeroHeap+0x4a1 (fffff803`d9e0ec6d)

nt!RtlZeroHeap+0x495:
fffff803`d9e0ec61 488b8e60010000  mov     rcx,qword ptr [rsi+160h]
fffff803`d9e0ec68 e8a3ecb0ff      call    nt!ExReleaseResourceLite (fffff803`d991d910)

nt!RtlZeroHeap+0x4a1:
fffff803`d9e0ec6d 8bc7            mov     eax,edi
fffff803`d9e0ec6f 4881c4b0000000  add     rsp,0B0h
fffff803`d9e0ec76 415f            pop     r15
fffff803`d9e0ec78 415e            pop     r14
fffff803`d9e0ec7a 415d            pop     r13
fffff803`d9e0ec7c 415c            pop     r12
fffff803`d9e0ec7e 5f              pop     rdi
fffff803`d9e0ec7f 5e              pop     rsi
fffff803`d9e0ec80 5b              pop     rbx
fffff803`d9e0ec81 c3              ret
