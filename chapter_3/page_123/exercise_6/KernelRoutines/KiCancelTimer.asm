nt!KiCancelTimer:
fffff803`21cf5760 4c8bdc          mov     r11,rsp
fffff803`21cf5763 49895b20        mov     qword ptr [r11+20h],rbx
fffff803`21cf5767 55              push    rbp
fffff803`21cf5768 56              push    rsi
fffff803`21cf5769 57              push    rdi
fffff803`21cf576a 4154            push    r12
fffff803`21cf576c 4155            push    r13
fffff803`21cf576e 4883ec50        sub     rsp,50h
fffff803`21cf5772 488b051fc31f00  mov     rax,qword ptr [nt!_security_cookie (fffff803`21ef1a98)]
fffff803`21cf5779 4833c4          xor     rax,rsp
fffff803`21cf577c 4889442448      mov     qword ptr [rsp+48h],rax
fffff803`21cf5781 4d897310        mov     qword ptr [r11+10h],r14
fffff803`21cf5785 0fb6ea          movzx   ebp,dl
fffff803`21cf5788 488bd9          mov     rbx,rcx
fffff803`21cf578b 4d897b18        mov     qword ptr [r11+18h],r15
fffff803`21cf578f 4032ff          xor     dil,dil
fffff803`21cf5792 4c8d2d67c8f7ff  lea     r13,[nt!`string' <PERF> (nt+0x0) (fffff803`21c72000)]

nt!KiCancelTimer+0x39:
fffff803`21cf5799 33f6            xor     esi,esi
fffff803`21cf579b f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21cf57a0 0f82ae010000    jb      nt!KiCancelTimer+0x200 (fffff803`21cf5954)

nt!KiCancelTimer+0x46:
fffff803`21cf57a6 f64303c0        test    byte ptr [rbx+3],0C0h
fffff803`21cf57aa 754e            jne     nt!KiCancelTimer+0x9a (fffff803`21cf57fa)

nt!KiCancelTimer+0x4c:
fffff803`21cf57ac 4084ed          test    bpl,bpl
fffff803`21cf57af 0f8513010000    jne     nt!KiCancelTimer+0x168 (fffff803`21cf58c8)

nt!KiCancelTimer+0x55:
fffff803`21cf57b5 f705c9482d0000000200 test dword ptr [nt!PerfGlobalGroupMask+0x8 (fffff803`21fca088)],20000h
fffff803`21cf57bf 0f850c8e1500    jne     nt! ?? ::FNODOBFM::`string'+0x182d0 (fffff803`21e4e5d1)

nt!KiCancelTimer+0x65:
fffff803`21cf57c5 4c8bbc2490000000 mov     r15,qword ptr [rsp+90h]
fffff803`21cf57cd 4c8bb42488000000 mov     r14,qword ptr [rsp+88h]
fffff803`21cf57d5 400fb6c7        movzx   eax,dil
fffff803`21cf57d9 488b4c2448      mov     rcx,qword ptr [rsp+48h]
fffff803`21cf57de 4833cc          xor     rcx,rsp
fffff803`21cf57e1 e8dadcfcff      call    nt!_security_check_cookie (fffff803`21cc34c0)
fffff803`21cf57e6 488b9c2498000000 mov     rbx,qword ptr [rsp+98h]
fffff803`21cf57ee 4883c450        add     rsp,50h
fffff803`21cf57f2 415d            pop     r13
fffff803`21cf57f4 415c            pop     r12
fffff803`21cf57f6 5f              pop     rdi
fffff803`21cf57f7 5e              pop     rsi
fffff803`21cf57f8 5d              pop     rbp
fffff803`21cf57f9 c3              ret

nt!KiCancelTimer+0x9a:
fffff803`21cf57fa 8b4338          mov     eax,dword ptr [rbx+38h]
fffff803`21cf57fd 440fb67b02      movzx   r15d,byte ptr [rbx+2]
fffff803`21cf5802 4d8bb4c5808c3500 mov     r14,qword ptr [r13+rax*8+358C80h]
fffff803`21cf580a 498d7710        lea     rsi,[r15+10h]
fffff803`21cf580e 4981c6002e0000  add     r14,2E00h
fffff803`21cf5815 48c1e605        shl     rsi,5
fffff803`21cf5819 4903f6          add     rsi,r14
fffff803`21cf581c 4533e4          xor     r12d,r12d

nt!KiCancelTimer+0xbf:
fffff803`21cf581f f0480fba2e00    lock bts qword ptr [rsi],0
fffff803`21cf5825 0f824d010000    jb      nt!KiCancelTimer+0x230 (fffff803`21cf5978)

nt!KiCancelTimer+0xcb:
fffff803`21cf582b 0fb64303        movzx   eax,byte ptr [rbx+3]
fffff803`21cf582f 84c0            test    al,al
fffff803`21cf5831 0f88b5000000    js      nt!KiCancelTimer+0x18c (fffff803`21cf58ec)

nt!KiCancelTimer+0xd7:
fffff803`21cf5837 488b4b20        mov     rcx,qword ptr [rbx+20h]
fffff803`21cf583b 488b4328        mov     rax,qword ptr [rbx+28h]
fffff803`21cf583f 488d5320        lea     rdx,[rbx+20h]
fffff803`21cf5843 4d8d4710        lea     r8,[r15+10h]
fffff803`21cf5847 4d8bcf          mov     r9,r15
fffff803`21cf584a 49c1e005        shl     r8,5
fffff803`21cf584e 48395108        cmp     qword ptr [rcx+8],rdx
fffff803`21cf5852 0f858d000000    jne     nt!KiCancelTimer+0x185 (fffff803`21cf58e5)

nt!KiCancelTimer+0xf8:
fffff803`21cf5858 483910          cmp     qword ptr [rax],rdx
fffff803`21cf585b 0f8584000000    jne     nt!KiCancelTimer+0x185 (fffff803`21cf58e5)

nt!KiCancelTimer+0x101:
fffff803`21cf5861 488908          mov     qword ptr [rax],rcx
fffff803`21cf5864 48894108        mov     qword ptr [rcx+8],rax
fffff803`21cf5868 483bc1          cmp     rax,rcx
fffff803`21cf586b 7539            jne     nt!KiCancelTimer+0x146 (fffff803`21cf58a6)

nt!KiCancelTimer+0x10d:
fffff803`21cf586d 43c744301cffffffff mov   dword ptr [r8+r14+1Ch],0FFFFFFFFh
fffff803`21cf5876 410fb78658d8ffff movzx   eax,word ptr [r14-27A8h]
fffff803`21cf587e 4803c0          add     rax,rax
fffff803`21cf5881 833d68482d0000  cmp     dword ptr [nt!KiSerializeTimerExpiration (fffff803`21fca0f0)],0
fffff803`21cf5888 498b8cc588a03500 mov     rcx,qword ptr [r13+rax*8+35A088h]
fffff803`21cf5890 7442            je      nt!KiCancelTimer+0x174 (fffff803`21cf58d4)

nt!KiCancelTimer+0x132:
fffff803`21cf5892 4183e73f        and     r15d,3Fh
fffff803`21cf5896 49c1e906        shr     r9,6
fffff803`21cf589a 4a8d0cc9        lea     rcx,[rcx+r9*8]

nt!KiCancelTimer+0x13e:
fffff803`21cf589e 418bc7          mov     eax,r15d
fffff803`21cf58a1 f0480fb301      lock btr qword ptr [rcx],rax

nt!KiCancelTimer+0x146:
fffff803`21cf58a6 f048832600      lock and qword ptr [rsi],0
fffff803`21cf58ab b800000040      mov     eax,40000000h
fffff803`21cf58b0 b980000040      mov     ecx,40000080h
fffff803`21cf58b5 4084ed          test    bpl,bpl
fffff803`21cf58b8 0f45c1          cmovne  eax,ecx
fffff803`21cf58bb f7d0            not     eax
fffff803`21cf58bd f02103          lock and dword ptr [rbx],eax
fffff803`21cf58c0 40b701          mov     dil,1
fffff803`21cf58c3 e9edfeffff      jmp     nt!KiCancelTimer+0x55 (fffff803`21cf57b5)

nt!KiCancelTimer+0x168:
fffff803`21cf58c8 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`21cf58cf e9e1feffff      jmp     nt!KiCancelTimer+0x55 (fffff803`21cf57b5)

nt!KiCancelTimer+0x174:
fffff803`21cf58d4 450fb6be68d8ffff movzx   r15d,byte ptr [r14-2798h]
fffff803`21cf58dc 49c1e106        shl     r9,6
fffff803`21cf58e0 4903c9          add     rcx,r9
fffff803`21cf58e3 ebb9            jmp     nt!KiCancelTimer+0x13e (fffff803`21cf589e)

nt!KiCancelTimer+0x185:
fffff803`21cf58e5 b903000000      mov     ecx,3
fffff803`21cf58ea cd29            int     29h

nt!KiCancelTimer+0x18c:
fffff803`21cf58ec f048832600      lock and qword ptr [rsi],0
fffff803`21cf58f1 0fb64303        movzx   eax,byte ptr [rbx+3]
fffff803`21cf58f5 33c9            xor     ecx,ecx
fffff803`21cf58f7 83e03f          and     eax,3Fh
fffff803`21cf58fa 49870cc6        xchg    rcx,qword ptr [r14+rax*8]
fffff803`21cf58fe 4885c9          test    rcx,rcx
fffff803`21cf5901 7533            jne     nt!KiCancelTimer+0x1d6 (fffff803`21cf5936)

nt!KiCancelTimer+0x1a3:
fffff803`21cf5903 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`21cf590a 0fb64303        movzx   eax,byte ptr [rbx+3]
fffff803`21cf590e 33f6            xor     esi,esi
fffff803`21cf5910 84c0            test    al,al
fffff803`21cf5912 0f8981feffff    jns     nt!KiCancelTimer+0x39 (fffff803`21cf5799)

nt!KiCancelTimer+0x1b8:
fffff803`21cf5918 ffc6            inc     esi
fffff803`21cf591a 85352c4b2d00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21cf5920 0f84908c1500    je      nt! ?? ::FNODOBFM::`string'+0x182b5 (fffff803`21e4e5b6)

nt!KiCancelTimer+0x1c6:
fffff803`21cf5926 f390            pause

nt!KiCancelTimer+0x1c8:
fffff803`21cf5928 0fb64303        movzx   eax,byte ptr [rbx+3]
fffff803`21cf592c 84c0            test    al,al
fffff803`21cf592e 0f8965feffff    jns     nt!KiCancelTimer+0x39 (fffff803`21cf5799)

nt!KiCancelTimer+0x1d4:
fffff803`21cf5934 ebe2            jmp     nt!KiCancelTimer+0x1b8 (fffff803`21cf5918)

nt!KiCancelTimer+0x1d6:
fffff803`21cf5936 b8000000ff      mov     eax,0FF000000h
fffff803`21cf593b b9800000ff      mov     ecx,0FF000080h
fffff803`21cf5940 4084ed          test    bpl,bpl
fffff803`21cf5943 0f45c1          cmovne  eax,ecx
fffff803`21cf5946 f7d0            not     eax
fffff803`21cf5948 f02103          lock and dword ptr [rbx],eax
fffff803`21cf594b 40b701          mov     dil,1
fffff803`21cf594e e962feffff      jmp     nt!KiCancelTimer+0x55 (fffff803`21cf57b5)

nt!KiCancelTimer+0x200:
fffff803`21cf5954 ffc6            inc     esi
fffff803`21cf5956 8535f04a2d00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21cf595c 0f841d8c1500    je      nt! ?? ::FNODOBFM::`string'+0x1827e (fffff803`21e4e57f)

nt!KiCancelTimer+0x20e:
fffff803`21cf5962 f390            pause

nt!KiCancelTimer+0x210:
fffff803`21cf5964 8b03            mov     eax,dword ptr [rbx]
fffff803`21cf5966 84c0            test    al,al
fffff803`21cf5968 78ea            js      nt!KiCancelTimer+0x200 (fffff803`21cf5954)

nt!KiCancelTimer+0x216:
fffff803`21cf596a f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21cf596f 0f8331feffff    jae     nt!KiCancelTimer+0x46 (fffff803`21cf57a6)

nt!KiCancelTimer+0x221:
fffff803`21cf5975 ebdd            jmp     nt!KiCancelTimer+0x200 (fffff803`21cf5954)

nt!KiCancelTimer+0x230:
fffff803`21cf5978 41ffc4          inc     r12d
fffff803`21cf597b 448525ca4a2d00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r12d
fffff803`21cf5982 0f84128c1500    je      nt! ?? ::FNODOBFM::`string'+0x18299 (fffff803`21e4e59a)

nt!KiCancelTimer+0x240:
fffff803`21cf5988 f390            pause

nt!KiCancelTimer+0x242:
fffff803`21cf598a 488b06          mov     rax,qword ptr [rsi]
fffff803`21cf598d 4885c0          test    rax,rax
fffff803`21cf5990 75e6            jne     nt!KiCancelTimer+0x230 (fffff803`21cf5978)

nt!KiCancelTimer+0x24a:
fffff803`21cf5992 e988feffff      jmp     nt!KiCancelTimer+0xbf (fffff803`21cf581f)

nt! ?? ::FNODOBFM::`string'+0x1827e:
fffff803`21e4e57f 8b05ebba1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4e585 a840            test    al,40h
fffff803`21e4e587 0f84d573eaff    je      nt!KiCancelTimer+0x20e (fffff803`21cf5962)

nt! ?? ::FNODOBFM::`string'+0x1828c:
fffff803`21e4e58d 8bce            mov     ecx,esi
fffff803`21e4e58f e830cef8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e4e594 90              nop
fffff803`21e4e595 e9ca73eaff      jmp     nt!KiCancelTimer+0x210 (fffff803`21cf5964)

nt! ?? ::FNODOBFM::`string'+0x18299:
fffff803`21e4e59a 8b05d0ba1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4e5a0 a840            test    al,40h
fffff803`21e4e5a2 0f84e073eaff    je      nt!KiCancelTimer+0x240 (fffff803`21cf5988)

nt! ?? ::FNODOBFM::`string'+0x182a7:
fffff803`21e4e5a8 418bcc          mov     ecx,r12d
fffff803`21e4e5ab e814cef8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e4e5b0 90              nop
fffff803`21e4e5b1 e9d473eaff      jmp     nt!KiCancelTimer+0x242 (fffff803`21cf598a)

nt! ?? ::FNODOBFM::`string'+0x182b5:
fffff803`21e4e5b6 8b05b4ba1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e4e5bc a840            test    al,40h
fffff803`21e4e5be 0f846273eaff    je      nt!KiCancelTimer+0x1c6 (fffff803`21cf5926)

nt! ?? ::FNODOBFM::`string'+0x182c3:
fffff803`21e4e5c4 8bce            mov     ecx,esi
fffff803`21e4e5c6 e8f9cdf8ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e4e5cb 90              nop
fffff803`21e4e5cc e95773eaff      jmp     nt!KiCancelTimer+0x1c8 (fffff803`21cf5928)

nt! ?? ::FNODOBFM::`string'+0x182d0:
fffff803`21e4e5d1 4084ff          test    dil,dil
fffff803`21e4e5d4 0f84eb71eaff    je      nt!KiCancelTimer+0x65 (fffff803`21cf57c5)

nt! ?? ::FNODOBFM::`string'+0x182d9:
fffff803`21e4e5da 488d442430      lea     rax,[rsp+30h]
fffff803`21e4e5df 488d4c2438      lea     rcx,[rsp+38h]
fffff803`21e4e5e4 41b9550f0000    mov     r9d,0F55h
fffff803`21e4e5ea ba01000000      mov     edx,1
fffff803`21e4e5ef 41b800000240    mov     r8d,40020000h
fffff803`21e4e5f5 48895c2430      mov     qword ptr [rsp+30h],rbx
fffff803`21e4e5fa 4889442438      mov     qword ptr [rsp+38h],rax
fffff803`21e4e5ff 48c744244008000000 mov   qword ptr [rsp+40h],8
fffff803`21e4e608 c744242002060000 mov     dword ptr [rsp+20h],602h
fffff803`21e4e610 e82bf5f5ff      call    nt!EtwTraceKernelEvent (fffff803`21dadb40)
fffff803`21e4e615 90              nop
fffff803`21e4e616 e9aa71eaff      jmp     nt!KiCancelTimer+0x65 (fffff803`21cf57c5)
