nt! ?? ::FNODOBFM::`string'+0x14de4:
fffff803`21c7e9ca 8b05a0b63400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c7e9d0 a840            test    al,40h
fffff803`21c7e9d2 0f84632f0c00    je      nt!KiDeliverApc+0x330 (fffff803`21d4193b)

nt! ?? ::FNODOBFM::`string'+0x14df2:
fffff803`21c7e9d8 418bcd          mov     ecx,r13d
fffff803`21c7e9db e8e4c91500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c7e9e0 90              nop
fffff803`21c7e9e1 e9572f0c00      jmp     nt!KiDeliverApc+0x332 (fffff803`21d4193d)

nt! ?? ::FNODOBFM::`string'+0x14e00:
fffff803`21c7e9e6 4533c0          xor     r8d,r8d
fffff803`21c7e9e9 b801000000      mov     eax,1
fffff803`21c7e9ee 4c894340        mov     qword ptr [rbx+40h],r8
fffff803`21c7e9f2 440f22c0        mov     cr8,rax
fffff803`21c7e9f6 418d4002        lea     eax,[r8+2]
fffff803`21c7e9fa e98b2c0c00      jmp     nt!KiDeliverApc+0x7a (fffff803`21d4168a)

nt! ?? ::FNODOBFM::`string'+0x14e19:
fffff803`21c7e9ff 8b056bb63400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c7ea05 a840            test    al,40h
fffff803`21c7ea07 0f84632f0c00    je      nt!KiDeliverApc+0x360 (fffff803`21d41970)

nt! ?? ::FNODOBFM::`string'+0x14e27:
fffff803`21c7ea0d 418bcc          mov     ecx,r12d
fffff803`21c7ea10 e8afc91500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c7ea15 90              nop
fffff803`21c7ea16 e9572f0c00      jmp     nt!KiDeliverApc+0x362 (fffff803`21d41972)

nt! ?? ::FNODOBFM::`string'+0x14e35:
fffff803`21c7ea1b b101            mov     cl,1
fffff803`21c7ea1d e8fe6e0d00      call    nt!KeTestAlertThread (fffff803`21d55920)
fffff803`21c7ea22 90              nop
fffff803`21c7ea23 e96c2c0c00      jmp     nt!KiDeliverApc+0x84 (fffff803`21d41694)

nt! ?? ::FNODOBFM::`string'+0x14e42:
fffff803`21c7ea28 658b04255c2f0000 mov     eax,dword ptr gs:[2F5Ch]
fffff803`21c7ea30 440fb68b42020000 movzx   r9d,byte ptr [rbx+242h]
fffff803`21c7ea38 498bd7          mov     rdx,r15
fffff803`21c7ea3b 2501000100      and     eax,10001h
fffff803`21c7ea40 b905000000      mov     ecx,5
fffff803`21c7ea45 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21c7ea4a e8f1d90400      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21c7ea4f cc              int     3
fffff803`21c7ea50 90              nop
fffff803`21c7ea51 90              nop
fffff803`21c7ea52 90              nop
fffff803`21c7ea53 90              nop
fffff803`21c7ea54 90              nop
fffff803`21c7ea55 90              nop
fffff803`21c7ea56 90              nop
fffff803`21c7ea57 90              nop
fffff803`21c7ea58 90              nop
fffff803`21c7ea59 90              nop
fffff803`21c7ea5a 90              nop
fffff803`21c7ea5b 90              nop
fffff803`21c7ea5c 90              nop
fffff803`21c7ea5d 90              nop
fffff803`21c7ea5e 90              nop
fffff803`21c7ea5f 90              nop
fffff803`21c7ea60 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`21c7ea65 48896c2410      mov     qword ptr [rsp+10h],rbp
fffff803`21c7ea6a 4889742418      mov     qword ptr [rsp+18h],rsi
fffff803`21c7ea6f 57              push    rdi
fffff803`21c7ea70 4883ec10        sub     rsp,10h
fffff803`21c7ea74 488bf1          mov     rsi,rcx
fffff803`21c7ea77 488b0a          mov     rcx,qword ptr [rdx]
fffff803`21c7ea7a 4c8bca          mov     r9,rdx
fffff803`21c7ea7d 4c8bd1          mov     r10,rcx
fffff803`21c7ea80 4d63d8          movsxd  r11,r8d
fffff803`21c7ea83 bdffff0700      mov     ebp,7FFFFh
fffff803`21c7ea88 49c1ea17        shr     r10,17h

nt!ExFastReplenishHandleTableEntry+0x2c:
fffff803`21c7ea8c 410f1001        movups  xmm0,xmmword ptr [r9]
fffff803`21c7ea90 48d1e9          shr     rcx,1
fffff803`21c7ea93 4533c0          xor     r8d,r8d
fffff803`21c7ea96 4823cd          and     rcx,rbp
fffff803`21c7ea99 4903cb          add     rcx,r11
fffff803`21c7ea9c f30f7f0424      movdqu  xmmword ptr [rsp],xmm0
fffff803`21c7eaa1 483bcd          cmp     rcx,rbp
fffff803`21c7eaa4 7f63            jg      nt!ExFastReplenishHandleTableEntry+0xa9 (fffff803`21c7eb09)

nt!ExFastReplenishHandleTableEntry+0x46:
fffff803`21c7eaa6 488b1c24        mov     rbx,qword ptr [rsp]
fffff803`21c7eaaa 488b7c2408      mov     rdi,qword ptr [rsp+8]
fffff803`21c7eaaf 498b5108        mov     rdx,qword ptr [r9+8]
fffff803`21c7eab3 8bc1            mov     eax,ecx
fffff803`21c7eab5 488bcf          mov     rcx,rdi
fffff803`21c7eab8 4803c0          add     rax,rax
fffff803`21c7eabb 4833c3          xor     rax,rbx
fffff803`21c7eabe 25feff0f00      and     eax,0FFFFEh
fffff803`21c7eac3 4833d8          xor     rbx,rax
fffff803`21c7eac6 498b01          mov     rax,qword ptr [r9]
fffff803`21c7eac9 f0480fc70e      lock cmpxchg16b oword ptr [rsi]
fffff803`21c7eace 498901          mov     qword ptr [r9],rax
fffff803`21c7ead1 49895108        mov     qword ptr [r9+8],rdx
fffff803`21c7ead5 7518            jne     nt!ExFastReplenishHandleTableEntry+0x8f (fffff803`21c7eaef)

nt!ExFastReplenishHandleTableEntry+0x77:
fffff803`21c7ead7 488b5c2420      mov     rbx,qword ptr [rsp+20h]
fffff803`21c7eadc 488b6c2428      mov     rbp,qword ptr [rsp+28h]
fffff803`21c7eae1 488b742430      mov     rsi,qword ptr [rsp+30h]
fffff803`21c7eae6 418bc0          mov     eax,r8d
fffff803`21c7eae9 4883c410        add     rsp,10h
fffff803`21c7eaed 5f              pop     rdi
fffff803`21c7eaee c3              ret

nt!ExFastReplenishHandleTableEntry+0x8f:
fffff803`21c7eaef 488bc8          mov     rcx,rax
fffff803`21c7eaf2 48c1e817        shr     rax,17h
fffff803`21c7eaf6 493bc2          cmp     rax,r10
fffff803`21c7eaf9 0f8538131f00    jne     nt! ?? ::FNODOBFM::`string'+0x4b4c8 (fffff803`21e6fe37)

nt!ExFastReplenishHandleTableEntry+0x9f:
fffff803`21c7eaff f6c101          test    cl,1
fffff803`21c7eb02 7588            jne     nt!ExFastReplenishHandleTableEntry+0x2c (fffff803`21c7ea8c)

nt!ExFastReplenishHandleTableEntry+0xa4:
fffff803`21c7eb04 e92e131f00      jmp     nt! ?? ::FNODOBFM::`string'+0x4b4c8 (fffff803`21e6fe37)

nt!ExFastReplenishHandleTableEntry+0xa9:
fffff803`21c7eb09 4c8d810100f8ff  lea     r8,[rcx-7FFFFh]
fffff803`21c7eb10 488bcd          mov     rcx,rbp
fffff803`21c7eb13 eb91            jmp     nt!ExFastReplenishHandleTableEntry+0x46 (fffff803`21c7eaa6)

nt!KiDeliverApc:
fffff803`21d41610 4889542410      mov     qword ptr [rsp+10h],rdx
fffff803`21d41615 55              push    rbp
fffff803`21d41616 53              push    rbx
fffff803`21d41617 56              push    rsi
fffff803`21d41618 4154            push    r12
fffff803`21d4161a 4156            push    r14
fffff803`21d4161c 4157            push    r15
fffff803`21d4161e 488bec          mov     rbp,rsp
fffff803`21d41621 4883ec48        sub     rsp,48h
fffff803`21d41625 498bf0          mov     rsi,r8
fffff803`21d41628 440fb6e1        movzx   r12d,cl
fffff803`21d4162c 4d85c0          test    r8,r8
fffff803`21d4162f 0f85e1010000    jne     nt!KiDeliverApc+0x205 (fffff803`21d41816)

nt!KiDeliverApc+0x25:
fffff803`21d41635 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`21d4163e 4889bc2480000000 mov     qword ptr [rsp+80h],rdi
fffff803`21d41646 4c896c2440      mov     qword ptr [rsp+40h],r13
fffff803`21d4164b 6683bbe601000000 cmp     word ptr [rbx+1E6h],0
fffff803`21d41653 4c8bb390000000  mov     r14,qword ptr [rbx+90h]
fffff803`21d4165a 4c8bbbb8000000  mov     r15,qword ptr [rbx+0B8h]
fffff803`21d41661 4889b390000000  mov     qword ptr [rbx+90h],rsi
fffff803`21d41668 c683c100000000  mov     byte ptr [rbx+0C1h],0
fffff803`21d4166f 7523            jne     nt!KiDeliverApc+0x84 (fffff803`21d41694)

nt!KiDeliverApc+0x61:
fffff803`21d41671 f0830c2400      lock or dword ptr [rsp],0
fffff803`21d41676 488dbb98000000  lea     rdi,[rbx+98h]

nt!KiDeliverApc+0x6d:
fffff803`21d4167d 4533c0          xor     r8d,r8d
fffff803`21d41680 b802000000      mov     eax,2
fffff803`21d41685 48393f          cmp     qword ptr [rdi],rdi
fffff803`21d41688 753c            jne     nt!KiDeliverApc+0xb6 (fffff803`21d416c6)

nt!KiDeliverApc+0x7a:
fffff803`21d4168a 4180fc01        cmp     r12b,1
fffff803`21d4168e 0f8490010000    je      nt!KiDeliverApc+0x212 (fffff803`21d41824)

nt!KiDeliverApc+0x84:
fffff803`21d41694 4c8b83b8000000  mov     r8,qword ptr [rbx+0B8h]
fffff803`21d4169b 4d3bc7          cmp     r8,r15
fffff803`21d4169e 0f8584d3f3ff    jne     nt! ?? ::FNODOBFM::`string'+0x14e42 (fffff803`21c7ea28)

nt!KiDeliverApc+0x94:
fffff803`21d416a4 4c8b6c2440      mov     r13,qword ptr [rsp+40h]
fffff803`21d416a9 488bbc2480000000 mov     rdi,qword ptr [rsp+80h]
fffff803`21d416b1 4c89b390000000  mov     qword ptr [rbx+90h],r14
fffff803`21d416b8 4883c448        add     rsp,48h
fffff803`21d416bc 415f            pop     r15
fffff803`21d416be 415e            pop     r14
fffff803`21d416c0 415c            pop     r12
fffff803`21d416c2 5e              pop     rsi
fffff803`21d416c3 5b              pop     rbx
fffff803`21d416c4 5d              pop     rbp
fffff803`21d416c5 c3              ret

nt!KiDeliverApc+0xb6:
fffff803`21d416c6 440f22c0        mov     cr8,rax
fffff803`21d416ca 458be8          mov     r13d,r8d

nt!KiDeliverApc+0xbd:
fffff803`21d416cd f0480fba6b4000  lock bts qword ptr [rbx+40h],0
fffff803`21d416d4 0f8251020000    jb      nt!KiDeliverApc+0x320 (fffff803`21d4192b)

nt!KiDeliverApc+0xca:
fffff803`21d416da 488b17          mov     rdx,qword ptr [rdi]
fffff803`21d416dd 483bd7          cmp     rdx,rdi
fffff803`21d416e0 0f8400d3f3ff    je      nt! ?? ::FNODOBFM::`string'+0x14e00 (fffff803`21c7e9e6)

nt!KiDeliverApc+0xd6:
fffff803`21d416e6 c683c100000000  mov     byte ptr [rbx+0C1h],0
fffff803`21d416ed 4c8d52f0        lea     r10,[rdx-10h]
fffff803`21d416f1 410f0d0a        prefetchw [r10]
fffff803`21d416f5 498b4a30        mov     rcx,qword ptr [r10+30h]
fffff803`21d416f9 4d8b5a20        mov     r11,qword ptr [r10+20h]
fffff803`21d416fd 48894d48        mov     qword ptr [rbp+48h],rcx
fffff803`21d41701 498b4238        mov     rax,qword ptr [r10+38h]
fffff803`21d41705 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`21d41709 498b4240        mov     rax,qword ptr [r10+40h]
fffff803`21d4170d 488945e8        mov     qword ptr [rbp-18h],rax
fffff803`21d41711 498b4248        mov     rax,qword ptr [r10+48h]
fffff803`21d41715 48894550        mov     qword ptr [rbp+50h],rax
fffff803`21d41719 4885c9          test    rcx,rcx
fffff803`21d4171c 7556            jne     nt!KiDeliverApc+0x164 (fffff803`21d41774)

nt!KiDeliverApc+0x10e:
fffff803`21d4171e 488b0a          mov     rcx,qword ptr [rdx]
fffff803`21d41721 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`21d41725 48395108        cmp     qword ptr [rcx+8],rdx
fffff803`21d41729 0f851c020000    jne     nt!KiDeliverApc+0x340 (fffff803`21d4194b)

nt!KiDeliverApc+0x11f:
fffff803`21d4172f 483910          cmp     qword ptr [rax],rdx
fffff803`21d41732 0f8513020000    jne     nt!KiDeliverApc+0x340 (fffff803`21d4194b)

nt!KiDeliverApc+0x128:
fffff803`21d41738 488908          mov     qword ptr [rax],rcx
fffff803`21d4173b 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d4173f 4533ed          xor     r13d,r13d
fffff803`21d41742 41c6425200      mov     byte ptr [r10+52h],0
fffff803`21d41747 b801000000      mov     eax,1
fffff803`21d4174c 4c896b40        mov     qword ptr [rbx+40h],r13
fffff803`21d41750 440f22c0        mov     cr8,rax
fffff803`21d41754 488d4550        lea     rax,[rbp+50h]
fffff803`21d41758 4c8d4de8        lea     r9,[rbp-18h]
fffff803`21d4175c 4c8d45f0        lea     r8,[rbp-10h]
fffff803`21d41760 488d5548        lea     rdx,[rbp+48h]
fffff803`21d41764 498bca          mov     rcx,r10
fffff803`21d41767 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21d4176c 41ffd3          call    r11
fffff803`21d4176f e909ffffff      jmp     nt!KiDeliverApc+0x6d (fffff803`21d4167d)

nt!KiDeliverApc+0x164:
fffff803`21d41774 80bbc000000000  cmp     byte ptr [rbx+0C0h],0
fffff803`21d4177b 0f8594010000    jne     nt!KiDeliverApc+0x303 (fffff803`21d41915)

nt!KiDeliverApc+0x171:
fffff803`21d41781 6683bbe401000000 cmp     word ptr [rbx+1E4h],0
fffff803`21d41789 0f8586010000    jne     nt!KiDeliverApc+0x303 (fffff803`21d41915)

nt!KiDeliverApc+0x17f:
fffff803`21d4178f 488b0a          mov     rcx,qword ptr [rdx]
fffff803`21d41792 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`21d41796 48395108        cmp     qword ptr [rcx+8],rdx
fffff803`21d4179a 0f85e0010000    jne     nt!KiDeliverApc+0x370 (fffff803`21d41980)

nt!KiDeliverApc+0x190:
fffff803`21d417a0 483910          cmp     qword ptr [rax],rdx
fffff803`21d417a3 0f85d7010000    jne     nt!KiDeliverApc+0x370 (fffff803`21d41980)

nt!KiDeliverApc+0x199:
fffff803`21d417a9 488908          mov     qword ptr [rax],rcx
fffff803`21d417ac 48894108        mov     qword ptr [rcx+8],rax
fffff803`21d417b0 4533ed          xor     r13d,r13d
fffff803`21d417b3 41c6425200      mov     byte ptr [r10+52h],0
fffff803`21d417b8 b801000000      mov     eax,1
fffff803`21d417bd 4c896b40        mov     qword ptr [rbx+40h],r13
fffff803`21d417c1 440f22c0        mov     cr8,rax
fffff803`21d417c5 488d4550        lea     rax,[rbp+50h]
fffff803`21d417c9 4c8d4de8        lea     r9,[rbp-18h]
fffff803`21d417cd 4c8d45f0        lea     r8,[rbp-10h]
fffff803`21d417d1 488d5548        lea     rdx,[rbp+48h]
fffff803`21d417d5 498bca          mov     rcx,r10
fffff803`21d417d8 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21d417dd 41ffd3          call    r11
fffff803`21d417e0 4c396d48        cmp     qword ptr [rbp+48h],r13
fffff803`21d417e4 7423            je      nt!KiDeliverApc+0x1f9 (fffff803`21d41809)

nt!KiDeliverApc+0x1d6:
fffff803`21d417e6 c683c000000001  mov     byte ptr [rbx+0C0h],1
fffff803`21d417ed 450f22c5        mov     cr8,r13
fffff803`21d417f1 4c8b4550        mov     r8,qword ptr [rbp+50h]
fffff803`21d417f5 488b55e8        mov     rdx,qword ptr [rbp-18h]
fffff803`21d417f9 488b4df0        mov     rcx,qword ptr [rbp-10h]
fffff803`21d417fd ff5548          call    qword ptr [rbp+48h]
fffff803`21d41800 b801000000      mov     eax,1
fffff803`21d41805 440f22c0        mov     cr8,rax

nt!KiDeliverApc+0x1f9:
fffff803`21d41809 4488abc0000000  mov     byte ptr [rbx+0C0h],r13b
fffff803`21d41810 e968feffff      jmp     nt!KiDeliverApc+0x6d (fffff803`21d4167d)

nt!KiDeliverApc+0x205:
fffff803`21d41816 498bc8          mov     rcx,r8
fffff803`21d41819 e852aefeff      call    nt!KiCheckForSListAddress (fffff803`21d2c670)
fffff803`21d4181e e912feffff      jmp     nt!KiDeliverApc+0x25 (fffff803`21d41635)

nt!KiDeliverApc+0x212:
fffff803`21d41824 488dbba8000000  lea     rdi,[rbx+0A8h]
fffff803`21d4182b 48393f          cmp     qword ptr [rdi],rdi
fffff803`21d4182e 0f8460feffff    je      nt!KiDeliverApc+0x84 (fffff803`21d41694)

nt!KiDeliverApc+0x222:
fffff803`21d41834 80bbc200000000  cmp     byte ptr [rbx+0C2h],0
fffff803`21d4183b 0f8453feffff    je      nt!KiDeliverApc+0x84 (fffff803`21d41694)

nt!KiDeliverApc+0x22f:
fffff803`21d41841 440f22c0        mov     cr8,rax
fffff803`21d41845 458be0          mov     r12d,r8d

nt!KiDeliverApc+0x236:
fffff803`21d41848 f0480fba6b4000  lock bts qword ptr [rbx+40h],0
fffff803`21d4184f 0f820b010000    jb      nt!KiDeliverApc+0x350 (fffff803`21d41960)

nt!KiDeliverApc+0x243:
fffff803`21d41855 488b0f          mov     rcx,qword ptr [rdi]
fffff803`21d41858 c683c200000000  mov     byte ptr [rbx+0C2h],0
fffff803`21d4185f 483bcf          cmp     rcx,rdi
fffff803`21d41862 0f84ad000000    je      nt!KiDeliverApc+0x303 (fffff803`21d41915)

nt!KiDeliverApc+0x256:
fffff803`21d41868 0f0d49f0        prefetchw [rcx-10h]
fffff803`21d4186c 488b4120        mov     rax,qword ptr [rcx+20h]
fffff803`21d41870 4c8b5910        mov     r11,qword ptr [rcx+10h]
fffff803`21d41874 48894548        mov     qword ptr [rbp+48h],rax
fffff803`21d41878 488b4128        mov     rax,qword ptr [rcx+28h]
fffff803`21d4187c 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`21d41880 488b4130        mov     rax,qword ptr [rcx+30h]
fffff803`21d41884 488945e8        mov     qword ptr [rbp-18h],rax
fffff803`21d41888 488b4138        mov     rax,qword ptr [rcx+38h]
fffff803`21d4188c 48894550        mov     qword ptr [rbp+50h],rax
fffff803`21d41890 488b11          mov     rdx,qword ptr [rcx]
fffff803`21d41893 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`21d41897 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`21d4189b 0f85b1000000    jne     nt!KiDeliverApc+0x347 (fffff803`21d41952)

nt!KiDeliverApc+0x28f:
fffff803`21d418a1 483908          cmp     qword ptr [rax],rcx
fffff803`21d418a4 0f85a8000000    jne     nt!KiDeliverApc+0x347 (fffff803`21d41952)

nt!KiDeliverApc+0x298:
fffff803`21d418aa 488910          mov     qword ptr [rax],rdx
fffff803`21d418ad 48894208        mov     qword ptr [rdx+8],rax
fffff803`21d418b1 4533ed          xor     r13d,r13d
fffff803`21d418b4 c6414200        mov     byte ptr [rcx+42h],0
fffff803`21d418b8 b801000000      mov     eax,1
fffff803`21d418bd 4c896b40        mov     qword ptr [rbx+40h],r13
fffff803`21d418c1 440f22c0        mov     cr8,rax
fffff803`21d418c5 488d4550        lea     rax,[rbp+50h]
fffff803`21d418c9 4c8d4de8        lea     r9,[rbp-18h]
fffff803`21d418cd 4c8d45f0        lea     r8,[rbp-10h]
fffff803`21d418d1 488d5548        lea     rdx,[rbp+48h]
fffff803`21d418d5 4883c1f0        add     rcx,0FFFFFFFFFFFFFFF0h
fffff803`21d418d9 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21d418de 41ffd3          call    r11
fffff803`21d418e1 4c8b4548        mov     r8,qword ptr [rbp+48h]
fffff803`21d418e5 4d85c0          test    r8,r8
fffff803`21d418e8 0f842dd1f3ff    je      nt! ?? ::FNODOBFM::`string'+0x14e35 (fffff803`21c7ea1b)

nt!KiDeliverApc+0x2dc:
fffff803`21d418ee 488b4550        mov     rax,qword ptr [rbp+50h]
fffff803`21d418f2 4c8b4df0        mov     r9,qword ptr [rbp-10h]
fffff803`21d418f6 488b4d40        mov     rcx,qword ptr [rbp+40h]
fffff803`21d418fa 4889442428      mov     qword ptr [rsp+28h],rax
fffff803`21d418ff 488b45e8        mov     rax,qword ptr [rbp-18h]
fffff803`21d41903 488bd6          mov     rdx,rsi
fffff803`21d41906 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21d4190b e86c49f5ff      call    nt!KiInitializeUserApc (fffff803`21c9627c)
fffff803`21d41910 e97ffdffff      jmp     nt!KiDeliverApc+0x84 (fffff803`21d41694)

nt!KiDeliverApc+0x303:
fffff803`21d41915 4533ed          xor     r13d,r13d
fffff803`21d41918 b801000000      mov     eax,1
fffff803`21d4191d 4c896b40        mov     qword ptr [rbx+40h],r13
fffff803`21d41921 440f22c0        mov     cr8,rax
fffff803`21d41925 e96afdffff      jmp     nt!KiDeliverApc+0x84 (fffff803`21d41694)

nt!KiDeliverApc+0x320:
fffff803`21d4192b 41ffc5          inc     r13d
fffff803`21d4192e 44852d178b2800  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r13d
fffff803`21d41935 0f848fd0f3ff    je      nt! ?? ::FNODOBFM::`string'+0x14de4 (fffff803`21c7e9ca)

nt!KiDeliverApc+0x330:
fffff803`21d4193b f390            pause

nt!KiDeliverApc+0x332:
fffff803`21d4193d 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`21d41941 4885c0          test    rax,rax
fffff803`21d41944 75e5            jne     nt!KiDeliverApc+0x320 (fffff803`21d4192b)

nt!KiDeliverApc+0x33b:
fffff803`21d41946 e982fdffff      jmp     nt!KiDeliverApc+0xbd (fffff803`21d416cd)

nt!KiDeliverApc+0x340:
fffff803`21d4194b b903000000      mov     ecx,3
fffff803`21d41950 cd29            int     29h

nt!KiDeliverApc+0x347:
fffff803`21d41952 b903000000      mov     ecx,3
fffff803`21d41957 cd29            int     29h
fffff803`21d41959 66666690        xchg    ax,ax
fffff803`21d4195d 666690          xchg    ax,ax

nt!KiDeliverApc+0x350:
fffff803`21d41960 41ffc4          inc     r12d
fffff803`21d41963 448525e28a2800  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r12d
fffff803`21d4196a 0f848fd0f3ff    je      nt! ?? ::FNODOBFM::`string'+0x14e19 (fffff803`21c7e9ff)

nt!KiDeliverApc+0x360:
fffff803`21d41970 f390            pause

nt!KiDeliverApc+0x362:
fffff803`21d41972 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`21d41976 4885c0          test    rax,rax
fffff803`21d41979 75e5            jne     nt!KiDeliverApc+0x350 (fffff803`21d41960)

nt!KiDeliverApc+0x36b:
fffff803`21d4197b e9c8feffff      jmp     nt!KiDeliverApc+0x236 (fffff803`21d41848)

nt!KiDeliverApc+0x370:
fffff803`21d41980 b903000000      mov     ecx,3
fffff803`21d41985 cd29            int     29h
fffff803`21d41987 90              nop
fffff803`21d41988 90              nop
fffff803`21d41989 90              nop
fffff803`21d4198a 90              nop
fffff803`21d4198b 90              nop
fffff803`21d4198c 90              nop
fffff803`21d4198d 90              nop
fffff803`21d4198e 90              nop
fffff803`21d4198f 90              nop
fffff803`21d41990 48895c2418      mov     qword ptr [rsp+18h],rbx
fffff803`21d41995 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`21d4199a 57              push    rdi
fffff803`21d4199b 4883ec20        sub     rsp,20h
fffff803`21d4199f 48b80000000080090000 mov rax,98000000000h
fffff803`21d419a9 4c8bd1          mov     r10,rcx
fffff803`21d419ac 48b9f8ffffff7f000000 mov rcx,7FFFFFFFF8h
fffff803`21d419b6 49c1ea09        shr     r10,9
fffff803`21d419ba 488bfa          mov     rdi,rdx
fffff803`21d419bd 33db            xor     ebx,ebx
fffff803`21d419bf 48c1ef09        shr     rdi,9
fffff803`21d419c3 4c23d1          and     r10,rcx
fffff803`21d419c6 4823f9          and     rdi,rcx
fffff803`21d419c9 4c2bd0          sub     r10,rax
fffff803`21d419cc 482bf8          sub     rdi,rax
fffff803`21d419cf 418b402c        mov     eax,dword ptr [r8+2Ch]
fffff803`21d419d3 85c0            test    eax,eax
fffff803`21d419d5 0f8984000000    jns     nt!MiComputePageCommitment+0xd0 (fffff803`21d41a5f)

nt!MiComputePageCommitment+0x4b:
fffff803`21d419db 488bf7          mov     rsi,rdi
fffff803`21d419de bb02000000      mov     ebx,2
fffff803`21d419e3 492bf2          sub     rsi,r10
fffff803`21d419e6 48c1fe03        sar     rsi,3
fffff803`21d419ea ffc6            inc     esi

nt!MiComputePageCommitment+0x5c:
fffff803`21d419ec 4c3bd7          cmp     r10,rdi
fffff803`21d419ef 773d            ja      nt!MiComputePageCommitment+0x9f (fffff803`21d41a2e)

nt!MiComputePageCommitment+0x61:
fffff803`21d419f1 4c8d4c2430      lea     r9,[rsp+30h]
fffff803`21d419f6 4533c0          xor     r8d,r8d
fffff803`21d419f9 488bd7          mov     rdx,rdi
fffff803`21d419fc 498bca          mov     rcx,r10
fffff803`21d419ff e8dc98feff      call    nt!MiGetNextPageTable (fffff803`21d2b2e0)
fffff803`21d41a04 4c8bd0          mov     r10,rax
fffff803`21d41a07 4885c0          test    rax,rax
fffff803`21d41a0a 7422            je      nt!MiComputePageCommitment+0x9f (fffff803`21d41a2e)

nt!MiComputePageCommitment+0x7c:
fffff803`21d41a0c 0f1f00          nop     dword ptr [rax]

nt!MiComputePageCommitment+0x80:
fffff803`21d41a0f 498b02          mov     rax,qword ptr [r10]
fffff803`21d41a12 4889442438      mov     qword ptr [rsp+38h],rax
fffff803`21d41a17 4885c0          test    rax,rax
fffff803`21d41a1a 7524            jne     nt!MiComputePageCommitment+0xb1 (fffff803`21d41a40)

nt!MiComputePageCommitment+0x8d:
fffff803`21d41a1c 4983c208        add     r10,8
fffff803`21d41a20 49f7c2ff0f0000  test    r10,0FFFh
fffff803`21d41a27 7443            je      nt!MiComputePageCommitment+0xdd (fffff803`21d41a6c)

nt!MiComputePageCommitment+0x9a:
fffff803`21d41a29 4c3bd7          cmp     r10,rdi
fffff803`21d41a2c 76e1            jbe     nt!MiComputePageCommitment+0x80 (fffff803`21d41a0f)

nt!MiComputePageCommitment+0x9f:
fffff803`21d41a2e 8bc6            mov     eax,esi
fffff803`21d41a30 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d41a35 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff803`21d41a3a 4883c420        add     rsp,20h
fffff803`21d41a3e 5f              pop     rdi
fffff803`21d41a3f c3              ret

nt!MiComputePageCommitment+0xb1:
fffff803`21d41a40 488d4c2438      lea     rcx,[rsp+38h]
fffff803`21d41a45 e826dbf6ff      call    nt!MiIsPteDecommittedPage (fffff803`21caf570)
fffff803`21d41a4a 85c0            test    eax,eax
fffff803`21d41a4c 7535            jne     nt!MiComputePageCommitment+0xf8 (fffff803`21d41a83)

nt!MiComputePageCommitment+0xbf:
fffff803`21d41a4e 83e3fe          and     ebx,0FFFFFFFEh

nt!MiComputePageCommitment+0xc2:
fffff803`21d41a51 f6c302          test    bl,2
fffff803`21d41a54 740d            je      nt!MiComputePageCommitment+0xd4 (fffff803`21d41a63)

nt!MiComputePageCommitment+0xc7:
fffff803`21d41a56 f6c301          test    bl,1
fffff803`21d41a59 74c1            je      nt!MiComputePageCommitment+0x8d (fffff803`21d41a1c)

nt!MiComputePageCommitment+0xcc:
fffff803`21d41a5b ffce            dec     esi
fffff803`21d41a5d ebbd            jmp     nt!MiComputePageCommitment+0x8d (fffff803`21d41a1c)

nt!MiComputePageCommitment+0xd0:
fffff803`21d41a5f 8bf3            mov     esi,ebx
fffff803`21d41a61 eb89            jmp     nt!MiComputePageCommitment+0x5c (fffff803`21d419ec)

nt!MiComputePageCommitment+0xd4:
fffff803`21d41a63 f6c301          test    bl,1
fffff803`21d41a66 75b4            jne     nt!MiComputePageCommitment+0x8d (fffff803`21d41a1c)

nt!MiComputePageCommitment+0xd9:
fffff803`21d41a68 ffc6            inc     esi
fffff803`21d41a6a ebb0            jmp     nt!MiComputePageCommitment+0x8d (fffff803`21d41a1c)

nt!MiComputePageCommitment+0xdd:
fffff803`21d41a6c 4c3bd7          cmp     r10,rdi
fffff803`21d41a6f 7680            jbe     nt!MiComputePageCommitment+0x61 (fffff803`21d419f1)

nt!MiComputePageCommitment+0xe6:
fffff803`21d41a71 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21d41a76 8bc6            mov     eax,esi
fffff803`21d41a78 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff803`21d41a7d 4883c420        add     rsp,20h
fffff803`21d41a81 5f              pop     rdi
fffff803`21d41a82 c3              ret

nt!MiComputePageCommitment+0xf8:
fffff803`21d41a83 83cb01          or      ebx,1
fffff803`21d41a86 ebc9            jmp     nt!MiComputePageCommitment+0xc2 (fffff803`21d41a51)

nt! ?? ::FNODOBFM::`string'+0x4b4c8:
fffff803`21e6fe37 49897908        mov     qword ptr [r9+8],rdi
fffff803`21e6fe3b 498919          mov     qword ptr [r9],rbx
fffff803`21e6fe3e 4d8bc3          mov     r8,r11
fffff803`21e6fe41 e991ece0ff      jmp     nt!ExFastReplenishHandleTableEntry+0x77 (fffff803`21c7ead7)
