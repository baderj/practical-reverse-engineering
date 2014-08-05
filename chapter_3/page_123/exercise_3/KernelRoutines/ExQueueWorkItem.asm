0: kd> uf ExQueueWorkItem
nt!ExQueueWorkItem:
fffff803`d99196d0 fff7            push    rdi
fffff803`d99196d2 4154            push    r12
fffff803`d99196d4 4883ec68        sub     rsp,68h
fffff803`d99196d8 48833900        cmp     qword ptr [rcx],0
fffff803`d99196dc 488bf9          mov     rdi,rcx
fffff803`d99196df 0f853bc21600    jne     nt! ?? ::FNODOBFM::`string'+0x4d2de (fffff803`d9a85920)

nt!ExQueueWorkItem+0x15:
fffff803`d99196e5 83fa07          cmp     edx,7
fffff803`d99196e8 0f8d50c21600    jge     nt! ?? ::FNODOBFM::`string'+0x4d2fc (fffff803`d9a8593e)

nt!ExQueueWorkItem+0x1e:
fffff803`d99196ee 83fa40          cmp     edx,40h
fffff803`d99196f1 0f8d50c21600    jge     nt! ?? ::FNODOBFM::`string'+0x4d305 (fffff803`d9a85947)

nt!ExQueueWorkItem+0x27:
fffff803`d99196f7 4c8b4910        mov     r9,qword ptr [rcx+10h]
fffff803`d99196fb 4533e4          xor     r12d,r12d
fffff803`d99196fe 4c3b0dfb482c00  cmp     r9,qword ptr [nt!MmUserProbeAddress (fffff803`d9bde000)]
fffff803`d9919705 0f865bc21600    jbe     nt! ?? ::FNODOBFM::`string'+0x4d324 (fffff803`d9a85966)

nt!ExQueueWorkItem+0x3b:
fffff803`d991970b 4c896c2450      mov     qword ptr [rsp+50h],r13
fffff803`d9919710 458d542402      lea     r10d,[r12+2]
fffff803`d9919715 83fa07          cmp     edx,7
fffff803`d9919718 0f8d60c21600    jge     nt! ?? ::FNODOBFM::`string'+0x4d33c (fffff803`d9a8597e)

nt!ExQueueWorkItem+0x4e:
fffff803`d991971e 448bc2          mov     r8d,edx

nt!ExQueueWorkItem+0x51:
fffff803`d9919721 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`d991972a 4c8d0d8f2c1f00  lea     r9,[nt!KiNodeInit (fffff803`d9b0c3c0)]
fffff803`d9919731 4c8ba838530000  mov     r13,qword ptr [rax+5338h]
fffff803`d9919738 4c896c2438      mov     qword ptr [rsp+38h],r13
fffff803`d991973d 410fb74544      movzx   eax,word ptr [r13+44h]
fffff803`d9919742 8bc8            mov     ecx,eax
fffff803`d9919744 488d0440        lea     rax,[rax+rax*2]
fffff803`d9919748 48c1e006        shl     rax,6
fffff803`d991974c 4903c1          add     rax,r9
fffff803`d991974f 4c8d0d2ae12b00  lea     r9,[nt!KeNodeBlock (fffff803`d9bd7880)]
fffff803`d9919756 493904c9        cmp     qword ptr [r9+rcx*8],rax
fffff803`d991975a 0f84ac030000    je      nt!ExQueueWorkItem+0x44e (fffff803`d9919b0c)

nt!ExQueueWorkItem+0x90:
fffff803`d9919760 418b8514030000  mov     eax,dword ptr [r13+314h]
fffff803`d9919767 4184c2          test    r10b,al
fffff803`d991976a 0f849c030000    je      nt!ExQueueWorkItem+0x44e (fffff803`d9919b0c)

nt!ExQueueWorkItem+0xa0:
fffff803`d9919770 48899c2488000000 mov     qword ptr [rsp+88h],rbx
fffff803`d9919778 48896c2460      mov     qword ptr [rsp+60h],rbp
fffff803`d991977d 4889742458      mov     qword ptr [rsp+58h],rsi
fffff803`d9919782 4963c0          movsxd  rax,r8d
fffff803`d9919785 498d9dc0000000  lea     rbx,[r13+0C0h]
fffff803`d991978c 4c89742448      mov     qword ptr [rsp+48h],r14
fffff803`d9919791 488d0c80        lea     rcx,[rax+rax*4]
fffff803`d9919795 4c897c2440      mov     qword ptr [rsp+40h],r15
fffff803`d991979a 48c1e104        shl     rcx,4
fffff803`d991979e 4803d9          add     rbx,rcx
fffff803`d99197a1 4c8d7b08        lea     r15,[rbx+8]
fffff803`d99197a5 440f20c0        mov     rax,cr8
fffff803`d99197a9 4889842498000000 mov     qword ptr [rsp+98h],rax
fffff803`d99197b1 450f22c2        mov     cr8,r10
fffff803`d99197b5 65488b2c2520000000 mov   rbp,qword ptr gs:[20h]
fffff803`d99197be f705bc482c0000000001 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],1000000h
fffff803`d99197c8 488b7508        mov     rsi,qword ptr [rbp+8]
fffff803`d99197cc 0f850dc21600    jne     nt! ?? ::FNODOBFM::`string'+0x4d3b0 (fffff803`d9a859df)

nt!ExQueueWorkItem+0x102:
fffff803`d99197d2 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`d99197d7 458bf4          mov     r14d,r12d
fffff803`d99197da 0f82a5020000    jb      nt!ExQueueWorkItem+0x3c0 (fffff803`d9919a85)

nt!ExQueueWorkItem+0x110:
fffff803`d99197e0 8b4304          mov     eax,dword ptr [rbx+4]
fffff803`d99197e3 89842490000000  mov     dword ptr [rsp+90h],eax
fffff803`d99197ea 4d397f08        cmp     qword ptr [r15+8],r15
fffff803`d99197ee 0f8486010000    je      nt!ExQueueWorkItem+0x2aa (fffff803`d991997a)

nt!ExQueueWorkItem+0x124:
fffff803`d99197f4 8b4328          mov     eax,dword ptr [rbx+28h]
fffff803`d99197f7 3b432c          cmp     eax,dword ptr [rbx+2Ch]
fffff803`d99197fa 0f837a010000    jae     nt!ExQueueWorkItem+0x2aa (fffff803`d991997a)

nt!ExQueueWorkItem+0x130:
fffff803`d9919800 488b86e8000000  mov     rax,qword ptr [rsi+0E8h]
fffff803`d9919807 483bc3          cmp     rax,rbx
fffff803`d991980a 0f845d010000    je      nt!ExQueueWorkItem+0x29d (fffff803`d991996d)

nt!ExQueueWorkItem+0x140:
fffff803`d9919810 488b7310        mov     rsi,qword ptr [rbx+10h]

nt!ExQueueWorkItem+0x144:
fffff803`d9919814 488bd6          mov     rdx,rsi
fffff803`d9919817 488b7608        mov     rsi,qword ptr [rsi+8]
fffff803`d991981b 4c8b02          mov     r8,qword ptr [rdx]
fffff803`d991981e 49395008        cmp     qword ptr [r8+8],rdx
fffff803`d9919822 0f851b030000    jne     nt!ExQueueWorkItem+0x485 (fffff803`d9919b43)

nt!ExQueueWorkItem+0x158:
fffff803`d9919828 483916          cmp     qword ptr [rsi],rdx
fffff803`d991982b 0f8512030000    jne     nt!ExQueueWorkItem+0x485 (fffff803`d9919b43)

nt!ExQueueWorkItem+0x161:
fffff803`d9919831 4c8906          mov     qword ptr [rsi],r8
fffff803`d9919834 49897008        mov     qword ptr [r8+8],rsi
fffff803`d9919838 4533c9          xor     r9d,r9d
fffff803`d991983b 4c8bc7          mov     r8,rdi
fffff803`d991983e 488bcd          mov     rcx,rbp
fffff803`d9919841 e85aaa0000      call    nt!KiTryUnwaitThread (fffff803`d99242a0)
fffff803`d9919846 84c0            test    al,al
fffff803`d9919848 0f84bec11600    je      nt! ?? ::FNODOBFM::`string'+0x4d3dd (fffff803`d9a85a0c)

nt!ExQueueWorkItem+0x17e:
fffff803`d991984e f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`d9919855 4c8bb5882c0000  mov     r14,qword ptr [rbp+2C88h]
fffff803`d991985c 4d85f6          test    r14,r14
fffff803`d991985f 7475            je      nt!ExQueueWorkItem+0x206 (fffff803`d99198d6)

nt!ExQueueWorkItem+0x191:
fffff803`d9919861 4c89a5882c0000  mov     qword ptr [rbp+2C88h],r12

nt!ExQueueWorkItem+0x198:
fffff803`d9919868 410fb6866b010000 movzx   eax,byte ptr [r14+16Bh]
fffff803`d9919870 498b76f8        mov     rsi,qword ptr [r14-8]
fffff803`d9919874 498dbe28ffffff  lea     rdi,[r14-0D8h]
fffff803`d991987b 4d8b36          mov     r14,qword ptr [r14]
fffff803`d991987e 4c8d3c40        lea     r15,[rax+rax*2]
fffff803`d9919882 49c1e704        shl     r15,4
fffff803`d9919886 4c03fe          add     r15,rsi

nt!ExQueueWorkItem+0x1b9:
fffff803`d9919889 0fb64611        movzx   eax,byte ptr [rsi+11h]
fffff803`d991988d 3c03            cmp     al,3
fffff803`d991988f 0f828cc11600    jb      nt! ?? ::FNODOBFM::`string'+0x4d3f2 (fffff803`d9a85a21)

nt!ExQueueWorkItem+0x1c5:
fffff803`d9919895 4883c630        add     rsi,30h
fffff803`d9919899 493bf7          cmp     rsi,r15
fffff803`d991989c 75eb            jne     nt!ExQueueWorkItem+0x1b9 (fffff803`d9919889)

nt!ExQueueWorkItem+0x1ce:
fffff803`d991989e 66c787360200000100 mov   word ptr [rdi+236h],1
fffff803`d99198a7 f705d3472c0000020000 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],200h
fffff803`d99198b1 0f85efc11600    jne     nt! ?? ::FNODOBFM::`string'+0x4d47f (fffff803`d9a85aa6)

nt!ExQueueWorkItem+0x1e7:
fffff803`d99198b7 8b4774          mov     eax,dword ptr [rdi+74h]
fffff803`d99198ba a801            test    al,1
fffff803`d99198bc 0f84fac11600    je      nt! ?? ::FNODOBFM::`string'+0x4d495 (fffff803`d9a85abc)

nt!ExQueueWorkItem+0x1f2:
fffff803`d99198c2 488bd7          mov     rdx,rdi
fffff803`d99198c5 488bcd          mov     rcx,rbp
fffff803`d99198c8 e88365ffff      call    nt!KiDeferredReadyThread (fffff803`d990fe50)

nt!ExQueueWorkItem+0x1fd:
fffff803`d99198cd 4d85f6          test    r14,r14
fffff803`d99198d0 7596            jne     nt!ExQueueWorkItem+0x198 (fffff803`d9919868)

nt!ExQueueWorkItem+0x202:
fffff803`d99198d2 4c8d7b08        lea     r15,[rbx+8]

nt!ExQueueWorkItem+0x206:
fffff803`d99198d6 80bc249800000002 cmp     byte ptr [rsp+98h],2
fffff803`d99198de 7225            jb      nt!ExQueueWorkItem+0x235 (fffff803`d9919905)

nt!ExQueueWorkItem+0x210:
fffff803`d99198e0 4c396510        cmp     qword ptr [rbp+10h],r12
fffff803`d99198e4 7446            je      nt!ExQueueWorkItem+0x25c (fffff803`d991992c)

nt!ExQueueWorkItem+0x216:
fffff803`d99198e6 0fb685da2d0000  movzx   eax,byte ptr [rbp+2DDAh]
fffff803`d99198ed 84c0            test    al,al
fffff803`d99198ef 753b            jne     nt!ExQueueWorkItem+0x25c (fffff803`d991992c)

nt!ExQueueWorkItem+0x221:
fffff803`d99198f1 44386520        cmp     byte ptr [rbp+20h],r12b
fffff803`d99198f5 0f8573020000    jne     nt!ExQueueWorkItem+0x4b0 (fffff803`d9919b6e)

nt!ExQueueWorkItem+0x22b:
fffff803`d99198fb b102            mov     cl,2
fffff803`d99198fd ff15cdaa2b00    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`d9bd43d0)]
fffff803`d9919903 eb27            jmp     nt!ExQueueWorkItem+0x25c (fffff803`d991992c)

nt!ExQueueWorkItem+0x235:
fffff803`d9919905 488b7d08        mov     rdi,qword ptr [rbp+8]
fffff803`d9919909 4c396510        cmp     qword ptr [rbp+10h],r12
fffff803`d991990d 0f85a6000000    jne     nt!ExQueueWorkItem+0x2e9 (fffff803`d99199b9)

nt!ExQueueWorkItem+0x243:
fffff803`d9919913 f7477400010000  test    dword ptr [rdi+74h],100h
fffff803`d991991a 0f8543010000    jne     nt!ExQueueWorkItem+0x393 (fffff803`d9919a63)

nt!ExQueueWorkItem+0x250:
fffff803`d9919920 0fb6842498000000 movzx   eax,byte ptr [rsp+98h]
fffff803`d9919928 440f22c0        mov     cr8,rax

nt!ExQueueWorkItem+0x25c:
fffff803`d991992c 8b4348          mov     eax,dword ptr [rbx+48h]
fffff803`d991992f 3d00020000      cmp     eax,200h
fffff803`d9919934 7d0e            jge     nt!ExQueueWorkItem+0x274 (fffff803`d9919944)

nt!ExQueueWorkItem+0x266:
fffff803`d9919936 44396304        cmp     dword ptr [rbx+4],r12d
fffff803`d991993a 7565            jne     nt!ExQueueWorkItem+0x2d1 (fffff803`d99199a1)

nt!ExQueueWorkItem+0x26c:
fffff803`d991993c 0fb6434c        movzx   eax,byte ptr [rbx+4Ch]
fffff803`d9919940 84c0            test    al,al
fffff803`d9919942 7562            jne     nt!ExQueueWorkItem+0x2d6 (fffff803`d99199a6)

nt!ExQueueWorkItem+0x274:
fffff803`d9919944 4c8b742448      mov     r14,qword ptr [rsp+48h]
fffff803`d9919949 488b9c2488000000 mov     rbx,qword ptr [rsp+88h]
fffff803`d9919951 488b742458      mov     rsi,qword ptr [rsp+58h]
fffff803`d9919956 488b6c2460      mov     rbp,qword ptr [rsp+60h]
fffff803`d991995b 4c8b7c2440      mov     r15,qword ptr [rsp+40h]
fffff803`d9919960 4c8b6c2450      mov     r13,qword ptr [rsp+50h]
fffff803`d9919965 4883c468        add     rsp,68h
fffff803`d9919969 415c            pop     r12
fffff803`d991996b 5f              pop     rdi
fffff803`d991996c c3              ret

nt!ExQueueWorkItem+0x29d:
fffff803`d991996d 80be830200000f  cmp     byte ptr [rsi+283h],0Fh
fffff803`d9919974 0f8596feffff    jne     nt!ExQueueWorkItem+0x140 (fffff803`d9919810)

nt!ExQueueWorkItem+0x2aa:
fffff803`d991997a ff4304          inc     dword ptr [rbx+4]
fffff803`d991997d 488b4b20        mov     rcx,qword ptr [rbx+20h]
fffff803`d9919981 488d4318        lea     rax,[rbx+18h]
fffff803`d9919985 48894f08        mov     qword ptr [rdi+8],rcx
fffff803`d9919989 488907          mov     qword ptr [rdi],rax
fffff803`d991998c 483901          cmp     qword ptr [rcx],rax
fffff803`d991998f 0f8585c01600    jne     nt! ?? ::FNODOBFM::`string'+0x4d3eb (fffff803`d9a85a1a)

nt!ExQueueWorkItem+0x2c5:
fffff803`d9919995 488939          mov     qword ptr [rcx],rdi
fffff803`d9919998 48897808        mov     qword ptr [rax+8],rdi
fffff803`d991999c e9adfeffff      jmp     nt!ExQueueWorkItem+0x17e (fffff803`d991984e)

nt!ExQueueWorkItem+0x2d1:
fffff803`d99199a1 4d393f          cmp     qword ptr [r15],r15
fffff803`d99199a4 7596            jne     nt!ExQueueWorkItem+0x26c (fffff803`d991993c)

nt!ExQueueWorkItem+0x2d6:
fffff803`d99199a6 498d8df0020000  lea     rcx,[r13+2F0h]
fffff803`d99199ad 4533c0          xor     r8d,r8d
fffff803`d99199b0 33d2            xor     edx,edx
fffff803`d99199b2 e8c9340000      call    nt!KeSetEvent (fffff803`d991ce80)
fffff803`d99199b7 eb8b            jmp     nt!ExQueueWorkItem+0x274 (fffff803`d9919944)

nt!ExQueueWorkItem+0x2e9:
fffff803`d99199b9 418bf4          mov     esi,r12d

nt!ExQueueWorkItem+0x2ec:
fffff803`d99199bc f0480fba6d3000  lock bts qword ptr [rbp+30h],0
fffff803`d99199c3 0f8224010000    jb      nt!ExQueueWorkItem+0x430 (fffff803`d9919aed)

nt!ExQueueWorkItem+0x2f9:
fffff803`d99199c9 488b7510        mov     rsi,qword ptr [rbp+10h]
fffff803`d99199cd 4c896510        mov     qword ptr [rbp+10h],r12
fffff803`d99199d1 fa              cli
fffff803`d99199d2 c6452001        mov     byte ptr [rbp+20h],1
fffff803`d99199d6 0f31            rdtsc
fffff803`d99199d8 48c1e220        shl     rdx,20h
fffff803`d99199dc 480bc2          or      rax,rdx
fffff803`d99199df 488b5748        mov     rdx,qword ptr [rdi+48h]
fffff803`d99199e3 8b4f50          mov     ecx,dword ptr [rdi+50h]
fffff803`d99199e6 4c8bc0          mov     r8,rax
fffff803`d99199e9 4c8bf0          mov     r14,rax
fffff803`d99199ec b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`d99199f1 4c2b8540530000  sub     r8,qword ptr [rbp+5340h]
fffff803`d99199f8 4903d0          add     rdx,r8
fffff803`d99199fb 4903c8          add     rcx,r8
fffff803`d99199fe 48895748        mov     qword ptr [rdi+48h],rdx
fffff803`d9919a02 483bc8          cmp     rcx,rax
fffff803`d9919a05 0f875b010000    ja      nt!ExQueueWorkItem+0x4a8 (fffff803`d9919b66)

nt!ExQueueWorkItem+0x33b:
fffff803`d9919a0b f647020e        test    byte ptr [rdi+2],0Eh
fffff803`d9919a0f 894f50          mov     dword ptr [rdi+50h],ecx
fffff803`d9919a12 0f8592000000    jne     nt!ExQueueWorkItem+0x3e5 (fffff803`d9919aaa)

nt!ExQueueWorkItem+0x348:
fffff803`d9919a18 4c89b540530000  mov     qword ptr [rbp+5340h],r14
fffff803`d9919a1f fb              sti
fffff803`d9919a20 4c8bb42498000000 mov     r14,qword ptr [rsp+98h]
fffff803`d9919a28 48897508        mov     qword ptr [rbp+8],rsi
fffff803`d9919a2c c6868401000002  mov     byte ptr [rsi+184h],2
fffff803`d9919a33 488bd7          mov     rdx,rdi
fffff803`d9919a36 488bcd          mov     rcx,rbp
fffff803`d9919a39 c6878302000020  mov     byte ptr [rdi+283h],20h
fffff803`d9919a40 4488b786010000  mov     byte ptr [rdi+186h],r14b
fffff803`d9919a47 e8b400ffff      call    nt!KiQueueReadyThread (fffff803`d9909b00)
fffff803`d9919a4c 450fb6c6        movzx   r8d,r14b
fffff803`d9919a50 488bd6          mov     rdx,rsi
fffff803`d9919a53 488bcf          mov     rcx,rdi
fffff803`d9919a56 e8d505fcff      call    nt!KiSwapContext (fffff803`d98da030)
fffff803`d9919a5b 84c0            test    al,al
fffff803`d9919a5d 0f84bdfeffff    je      nt!ExQueueWorkItem+0x250 (fffff803`d9919920)

nt!ExQueueWorkItem+0x393:
fffff803`d9919a63 b801000000      mov     eax,1
fffff803`d9919a68 440f22c0        mov     cr8,rax
fffff803`d9919a6c 816774fffeffff  and     dword ptr [rdi+74h],0FFFFFEFFh
fffff803`d9919a73 4533c0          xor     r8d,r8d
fffff803`d9919a76 33d2            xor     edx,edx
fffff803`d9919a78 33c9            xor     ecx,ecx
fffff803`d9919a7a e891bb0300      call    nt!KiDeliverApc (fffff803`d9955610)
fffff803`d9919a7f e99cfeffff      jmp     nt!ExQueueWorkItem+0x250 (fffff803`d9919920)

nt!ExQueueWorkItem+0x3c0:
fffff803`d9919a85 41ffc6          inc     r14d
fffff803`d9919a88 448535bd492c00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],r14d
fffff803`d9919a8f 0f845bbf1600    je      nt! ?? ::FNODOBFM::`string'+0x4d3c1 (fffff803`d9a859f0)

nt!ExQueueWorkItem+0x3d0:
fffff803`d9919a95 f390            pause

nt!ExQueueWorkItem+0x3d2:
fffff803`d9919a97 8b03            mov     eax,dword ptr [rbx]
fffff803`d9919a99 84c0            test    al,al
fffff803`d9919a9b 78e8            js      nt!ExQueueWorkItem+0x3c0 (fffff803`d9919a85)

nt!ExQueueWorkItem+0x3d8:
fffff803`d9919a9d f00fba2b07      lock bts dword ptr [rbx],7
fffff803`d9919aa2 0f8338fdffff    jae     nt!ExQueueWorkItem+0x110 (fffff803`d99197e0)

nt!ExQueueWorkItem+0x3e3:
fffff803`d9919aa8 ebdb            jmp     nt!ExQueueWorkItem+0x3c0 (fffff803`d9919a85)

nt!ExQueueWorkItem+0x3e5:
fffff803`d9919aaa 488b4f68        mov     rcx,qword ptr [rdi+68h]
fffff803`d9919aae 4885c9          test    rcx,rcx
fffff803`d9919ab1 7579            jne     nt!ExQueueWorkItem+0x46e (fffff803`d9919b2c)

nt!ExQueueWorkItem+0x3f2:
fffff803`d9919ab3 f6470208        test    byte ptr [rdi+2],8
fffff803`d9919ab7 7421            je      nt!ExQueueWorkItem+0x419 (fffff803`d9919ada)

nt!ExQueueWorkItem+0x3f8:
fffff803`d9919ab9 488b9738020000  mov     rdx,qword ptr [rdi+238h]
fffff803`d9919ac0 488b8538530000  mov     rax,qword ptr [rbp+5338h]
fffff803`d9919ac7 488b4850        mov     rcx,qword ptr [rax+50h]
fffff803`d9919acb 4823d1          and     rdx,rcx
fffff803`d9919ace 483bd1          cmp     rdx,rcx
fffff803`d9919ad1 7407            je      nt!ExQueueWorkItem+0x419 (fffff803`d9919ada)

nt!ExQueueWorkItem+0x412:
fffff803`d9919ad3 4c018550530000  add     qword ptr [rbp+5350h],r8

nt!ExQueueWorkItem+0x419:
fffff803`d9919ada 4c39a768010000  cmp     qword ptr [rdi+168h],r12
fffff803`d9919ae1 0f8431ffffff    je      nt!ExQueueWorkItem+0x348 (fffff803`d9919a18)

nt!ExQueueWorkItem+0x426:
fffff803`d9919ae7 e9b3c01600      jmp     nt! ?? ::FNODOBFM::`string'+0x4d580 (fffff803`d9a85b9f)

nt!ExQueueWorkItem+0x430:
fffff803`d9919aed ffc6            inc     esi
fffff803`d9919aef 853557492c00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],esi
fffff803`d9919af5 0f8489c01600    je      nt! ?? ::FNODOBFM::`string'+0x4d565 (fffff803`d9a85b84)

nt!ExQueueWorkItem+0x43e:
fffff803`d9919afb f390            pause

nt!ExQueueWorkItem+0x440:
fffff803`d9919afd 488b4530        mov     rax,qword ptr [rbp+30h]
fffff803`d9919b01 4885c0          test    rax,rax
fffff803`d9919b04 75e7            jne     nt!ExQueueWorkItem+0x430 (fffff803`d9919aed)

nt!ExQueueWorkItem+0x449:
fffff803`d9919b06 e9b1feffff      jmp     nt!ExQueueWorkItem+0x2ec (fffff803`d99199bc)

nt!ExQueueWorkItem+0x44e:
fffff803`d9919b0c 410fb74544      movzx   eax,word ptr [r13+44h]
fffff803`d9919b11 4c63ca          movsxd  r9,edx
fffff803`d9919b14 4c8bc7          mov     r8,rdi
fffff803`d9919b17 ba05000000      mov     edx,5
fffff803`d9919b1c b9e4000000      mov     ecx,0E4h
fffff803`d9919b21 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9919b26 e81569fcff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9919b2b cc              int     3

nt!ExQueueWorkItem+0x46e:
fffff803`d9919b2c 8b851c530000    mov     eax,dword ptr [rbp+531Ch]
fffff803`d9919b32 4803c1          add     rax,rcx
fffff803`d9919b35 0f8478ffffff    je      nt!ExQueueWorkItem+0x3f2 (fffff803`d9919ab3)

nt!ExQueueWorkItem+0x47d:
fffff803`d9919b3b 4c0100          add     qword ptr [rax],r8
fffff803`d9919b3e e970ffffff      jmp     nt!ExQueueWorkItem+0x3f2 (fffff803`d9919ab3)

nt!ExQueueWorkItem+0x485:
fffff803`d9919b43 b903000000      mov     ecx,3
fffff803`d9919b48 cd29            int     29h

nt!ExQueueWorkItem+0x48c:
fffff803`d9919b4a 4885c0          test    rax,rax
fffff803`d9919b4d 0f857afdffff    jne     nt!ExQueueWorkItem+0x1fd (fffff803`d99198cd)

nt!ExQueueWorkItem+0x495:
fffff803`d9919b53 e9fbbf1600      jmp     nt! ?? ::FNODOBFM::`string'+0x4d534 (fffff803`d9a85b53)

nt!ExQueueWorkItem+0x49a:
fffff803`d9919b58 f390            pause
fffff803`d9919b5a e900bf1600      jmp     nt! ?? ::FNODOBFM::`string'+0x4d434 (fffff803`d9a85a5f)

nt!ExQueueWorkItem+0x4a1:
fffff803`d9919b5f f390            pause
fffff803`d9919b61 e98dbf1600      jmp     nt! ?? ::FNODOBFM::`string'+0x4d4d0 (fffff803`d9a85af3)

nt!ExQueueWorkItem+0x4a8:
fffff803`d9919b66 488bc8          mov     rcx,rax
fffff803`d9919b69 e99dfeffff      jmp     nt!ExQueueWorkItem+0x33b (fffff803`d9919a0b)

nt!ExQueueWorkItem+0x4b0:
fffff803`d9919b6e c6450601        mov     byte ptr [rbp+6],1
fffff803`d9919b72 e9b5fdffff      jmp     nt!ExQueueWorkItem+0x25c (fffff803`d991992c)

nt! ?? ::FNODOBFM::`string'+0x4d2de:
fffff803`d9a85920 4533e4          xor     r12d,r12d
fffff803`d9a85923 4c63ca          movsxd  r9,edx
fffff803`d9a85926 4c8bc1          mov     r8,rcx
fffff803`d9a85929 418d542401      lea     edx,[r12+1]
fffff803`d9a8592e b9e4000000      mov     ecx,0E4h
fffff803`d9a85933 4c89642420      mov     qword ptr [rsp+20h],r12
fffff803`d9a85938 e803abe5ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a8593d cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4d2fc:
fffff803`d9a8593e 83fa20          cmp     edx,20h
fffff803`d9a85941 0f8fa73de9ff    jg      nt!ExQueueWorkItem+0x1e (fffff803`d99196ee)

nt! ?? ::FNODOBFM::`string'+0x4d305:
fffff803`d9a85947 4c8b4910        mov     r9,qword ptr [rcx+10h]
fffff803`d9a8594b 4533e4          xor     r12d,r12d
fffff803`d9a8594e 4c8bc1          mov     r8,rcx
fffff803`d9a85951 418d542401      lea     edx,[r12+1]
fffff803`d9a85956 b9e4000000      mov     ecx,0E4h
fffff803`d9a8595b 4c89642420      mov     qword ptr [rsp+20h],r12
fffff803`d9a85960 e8dbaae5ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a85965 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4d324:
fffff803`d9a85966 4c8bc1          mov     r8,rcx
fffff803`d9a85969 ba01000000      mov     edx,1
fffff803`d9a8596e b9e4000000      mov     ecx,0E4h
fffff803`d9a85973 4c89642420      mov     qword ptr [rsp+20h],r12
fffff803`d9a85978 e8c3aae5ff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9a8597d cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4d33c:
fffff803`d9a8597e 8d42e0          lea     eax,[rdx-20h]
fffff803`d9a85981 83f80f          cmp     eax,0Fh
fffff803`d9a85984 7e0b            jle     nt! ?? ::FNODOBFM::`string'+0x4d353 (fffff803`d9a85991)

nt! ?? ::FNODOBFM::`string'+0x4d348:
fffff803`d9a85986 41b805000000    mov     r8d,5
fffff803`d9a8598c e9903de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`d9919721)

nt! ?? ::FNODOBFM::`string'+0x4d353:
fffff803`d9a85991 83f80e          cmp     eax,0Eh
fffff803`d9a85994 7e08            jle     nt! ?? ::FNODOBFM::`string'+0x4d364 (fffff803`d9a8599e)

nt! ?? ::FNODOBFM::`string'+0x4d35c:
fffff803`d9a85996 458bc2          mov     r8d,r10d
fffff803`d9a85999 e9833de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`d9919721)

nt! ?? ::FNODOBFM::`string'+0x4d364:
fffff803`d9a8599e 83f80d          cmp     eax,0Dh
fffff803`d9a859a1 7e0b            jle     nt! ?? ::FNODOBFM::`string'+0x4d378 (fffff803`d9a859ae)

nt! ?? ::FNODOBFM::`string'+0x4d36d:
fffff803`d9a859a3 41b806000000    mov     r8d,6
fffff803`d9a859a9 e9733de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`d9919721)

nt! ?? ::FNODOBFM::`string'+0x4d378:
fffff803`d9a859ae 83f80c          cmp     eax,0Ch
fffff803`d9a859b1 7e08            jle     nt! ?? ::FNODOBFM::`string'+0x4d389 (fffff803`d9a859bb)

nt! ?? ::FNODOBFM::`string'+0x4d381:
fffff803`d9a859b3 458bc4          mov     r8d,r12d
fffff803`d9a859b6 e9663de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`d9919721)

nt! ?? ::FNODOBFM::`string'+0x4d389:
fffff803`d9a859bb 83f808          cmp     eax,8
fffff803`d9a859be 7e0b            jle     nt! ?? ::FNODOBFM::`string'+0x4d39d (fffff803`d9a859cb)

nt! ?? ::FNODOBFM::`string'+0x4d392:
fffff803`d9a859c0 41b801000000    mov     r8d,1
fffff803`d9a859c6 e9563de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`d9919721)

nt! ?? ::FNODOBFM::`string'+0x4d39d:
fffff803`d9a859cb 83f807          cmp     eax,7
fffff803`d9a859ce 458bc4          mov     r8d,r12d
fffff803`d9a859d1 410f9ec0        setle   r8b
fffff803`d9a859d5 4183c003        add     r8d,3
fffff803`d9a859d9 e9433de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`d9919721)

nt! ?? ::FNODOBFM::`string'+0x4d3b0:
fffff803`d9a859df 488bd7          mov     rdx,rdi
fffff803`d9a859e2 488bce          mov     rcx,rsi
fffff803`d9a859e5 e8960ffcff      call    nt!EtwTraceEnqueueWork (fffff803`d9a46980)
fffff803`d9a859ea 90              nop
fffff803`d9a859eb e9e23de9ff      jmp     nt!ExQueueWorkItem+0x102 (fffff803`d99197d2)

nt! ?? ::FNODOBFM::`string'+0x4d3c1:
fffff803`d9a859f0 8b057a861500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a859f6 a840            test    al,40h
fffff803`d9a859f8 0f849740e9ff    je      nt!ExQueueWorkItem+0x3d0 (fffff803`d9919a95)

nt! ?? ::FNODOBFM::`string'+0x4d3cf:
fffff803`d9a859fe 418bce          mov     ecx,r14d
fffff803`d9a85a01 e8be99f6ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a85a06 90              nop
fffff803`d9a85a07 e98b40e9ff      jmp     nt!ExQueueWorkItem+0x3d2 (fffff803`d9919a97)

nt! ?? ::FNODOBFM::`string'+0x4d3dd:
fffff803`d9a85a0c 493bf7          cmp     rsi,r15
fffff803`d9a85a0f 0f85ff3de9ff    jne     nt!ExQueueWorkItem+0x144 (fffff803`d9919814)

nt! ?? ::FNODOBFM::`string'+0x4d3e6:
fffff803`d9a85a15 e9603fe9ff      jmp     nt!ExQueueWorkItem+0x2aa (fffff803`d991997a)

nt! ?? ::FNODOBFM::`string'+0x4d3eb:
fffff803`d9a85a1a b903000000      mov     ecx,3
fffff803`d9a85a1f cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4d3f2:
fffff803`d9a85a21 488b4e20        mov     rcx,qword ptr [rsi+20h]
fffff803`d9a85a25 48894c2430      mov     qword ptr [rsp+30h],rcx
fffff803`d9a85a2a f00fba2907      lock bts dword ptr [rcx],7
fffff803`d9a85a2f 7340            jae     nt! ?? ::FNODOBFM::`string'+0x4d446 (fffff803`d9a85a71)

nt! ?? ::FNODOBFM::`string'+0x4d406:
fffff803`d9a85a31 458bec          mov     r13d,r12d

nt! ?? ::FNODOBFM::`string'+0x4d409:
fffff803`d9a85a34 41ffc5          inc     r13d
fffff803`d9a85a37 44852d0e8a1500  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],r13d
fffff803`d9a85a3e 0f851441e9ff    jne     nt!ExQueueWorkItem+0x49a (fffff803`d9919b58)

nt! ?? ::FNODOBFM::`string'+0x4d419:
fffff803`d9a85a44 8b0526861500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a85a4a a840            test    al,40h
fffff803`d9a85a4c 0f840641e9ff    je      nt!ExQueueWorkItem+0x49a (fffff803`d9919b58)

nt! ?? ::FNODOBFM::`string'+0x4d427:
fffff803`d9a85a52 418bcd          mov     ecx,r13d
fffff803`d9a85a55 e86a99f6ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a85a5a 488b4c2430      mov     rcx,qword ptr [rsp+30h]

nt! ?? ::FNODOBFM::`string'+0x4d434:
fffff803`d9a85a5f 8b01            mov     eax,dword ptr [rcx]
fffff803`d9a85a61 84c0            test    al,al
fffff803`d9a85a63 78cf            js      nt! ?? ::FNODOBFM::`string'+0x4d409 (fffff803`d9a85a34)

nt! ?? ::FNODOBFM::`string'+0x4d43a:
fffff803`d9a85a65 f00fba2907      lock bts dword ptr [rcx],7
fffff803`d9a85a6a 72c8            jb      nt! ?? ::FNODOBFM::`string'+0x4d409 (fffff803`d9a85a34)

nt! ?? ::FNODOBFM::`string'+0x4d441:
fffff803`d9a85a6c 4c8b6c2438      mov     r13,qword ptr [rsp+38h]

nt! ?? ::FNODOBFM::`string'+0x4d446:
fffff803`d9a85a71 0fb64611        movzx   eax,byte ptr [rsi+11h]
fffff803`d9a85a75 3c02            cmp     al,2
fffff803`d9a85a77 7521            jne     nt! ?? ::FNODOBFM::`string'+0x4d473 (fffff803`d9a85a9a)

nt! ?? ::FNODOBFM::`string'+0x4d452:
fffff803`d9a85a79 488b16          mov     rdx,qword ptr [rsi]
fffff803`d9a85a7c 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`d9a85a80 48397208        cmp     qword ptr [rdx+8],rsi
fffff803`d9a85a84 0f85f3000000    jne     nt! ?? ::FNODOBFM::`string'+0x4d55e (fffff803`d9a85b7d)

nt! ?? ::FNODOBFM::`string'+0x4d463:
fffff803`d9a85a8a 483930          cmp     qword ptr [rax],rsi
fffff803`d9a85a8d 0f85ea000000    jne     nt! ?? ::FNODOBFM::`string'+0x4d55e (fffff803`d9a85b7d)

nt! ?? ::FNODOBFM::`string'+0x4d46c:
fffff803`d9a85a93 488910          mov     qword ptr [rax],rdx
fffff803`d9a85a96 48894208        mov     qword ptr [rdx+8],rax

nt! ?? ::FNODOBFM::`string'+0x4d473:
fffff803`d9a85a9a f081217fffffff  lock and dword ptr [rcx],0FFFFFF7Fh
fffff803`d9a85aa1 e9ef3de9ff      jmp     nt!ExQueueWorkItem+0x1c5 (fffff803`d9919895)

nt! ?? ::FNODOBFM::`string'+0x4d47f:
fffff803`d9a85aa6 4533c9          xor     r9d,r9d
fffff803`d9a85aa9 4533c0          xor     r8d,r8d
fffff803`d9a85aac b201            mov     dl,1
fffff803`d9a85aae 488bcf          mov     rcx,rdi
fffff803`d9a85ab1 e8ca0dfcff      call    nt!EtwTraceReadyThread (fffff803`d9a46880)
fffff803`d9a85ab6 90              nop
fffff803`d9a85ab7 e9fb3de9ff      jmp     nt!ExQueueWorkItem+0x1e7 (fffff803`d99198b7)

nt! ?? ::FNODOBFM::`string'+0x4d495:
fffff803`d9a85abc 488bb7b8000000  mov     rsi,qword ptr [rdi+0B8h]
fffff803`d9a85ac3 458bfc          mov     r15d,r12d
fffff803`d9a85ac6 f00fba2e07      lock bts dword ptr [rsi],7
fffff803`d9a85acb 7333            jae     nt! ?? ::FNODOBFM::`string'+0x4d4dd (fffff803`d9a85b00)

nt! ?? ::FNODOBFM::`string'+0x4d4aa:
fffff803`d9a85acd 41ffc7          inc     r15d
fffff803`d9a85ad0 44853d75891500  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],r15d
fffff803`d9a85ad7 0f858240e9ff    jne     nt!ExQueueWorkItem+0x4a1 (fffff803`d9919b5f)

nt! ?? ::FNODOBFM::`string'+0x4d4ba:
fffff803`d9a85add 8b058d851500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a85ae3 a840            test    al,40h
fffff803`d9a85ae5 0f847440e9ff    je      nt!ExQueueWorkItem+0x4a1 (fffff803`d9919b5f)

nt! ?? ::FNODOBFM::`string'+0x4d4c8:
fffff803`d9a85aeb 418bcf          mov     ecx,r15d
fffff803`d9a85aee e8d198f6ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)

nt! ?? ::FNODOBFM::`string'+0x4d4d0:
fffff803`d9a85af3 8b06            mov     eax,dword ptr [rsi]
fffff803`d9a85af5 84c0            test    al,al
fffff803`d9a85af7 78d4            js      nt! ?? ::FNODOBFM::`string'+0x4d4aa (fffff803`d9a85acd)

nt! ?? ::FNODOBFM::`string'+0x4d4d6:
fffff803`d9a85af9 f00fba2e07      lock bts dword ptr [rsi],7
fffff803`d9a85afe 72cd            jb      nt! ?? ::FNODOBFM::`string'+0x4d4aa (fffff803`d9a85acd)

nt! ?? ::FNODOBFM::`string'+0x4d4dd:
fffff803`d9a85b00 8b8634020000    mov     eax,dword ptr [rsi+234h]
fffff803`d9a85b06 a807            test    al,7
fffff803`d9a85b08 7562            jne     nt! ?? ::FNODOBFM::`string'+0x4d54d (fffff803`d9a85b6c)

nt! ?? ::FNODOBFM::`string'+0x4d4eb:
fffff803`d9a85b0a b808000000      mov     eax,8
fffff803`d9a85b0f f00fc18634020000 lock xadd dword ptr [rsi+234h],eax
fffff803`d9a85b17 f081267fffffff  lock and dword ptr [rsi],0FFFFFF7Fh
fffff803`d9a85b1e c6878401000006  mov     byte ptr [rdi+184h],6
fffff803`d9a85b25 4881c7d8000000  add     rdi,0D8h
fffff803`d9a85b2c 0f0d0d75420d00  prefetchw [nt!KiStackInSwapListHead (fffff803`d9b59da8)]
fffff803`d9a85b33 488b056e420d00  mov     rax,qword ptr [nt!KiStackInSwapListHead (fffff803`d9b59da8)]

nt! ?? ::FNODOBFM::`string'+0x4d51b:
fffff803`d9a85b3a 488907          mov     qword ptr [rdi],rax
fffff803`d9a85b3d 488bc8          mov     rcx,rax
fffff803`d9a85b40 f0480fb13d5f420d00 lock cmpxchg qword ptr [nt!KiStackInSwapListHead (fffff803`d9b59da8)],rdi
fffff803`d9a85b49 483bc1          cmp     rax,rcx
fffff803`d9a85b4c 75ec            jne     nt! ?? ::FNODOBFM::`string'+0x4d51b (fffff803`d9a85b3a)

nt! ?? ::FNODOBFM::`string'+0x4d52f:
fffff803`d9a85b4e e9f73fe9ff      jmp     nt!ExQueueWorkItem+0x48c (fffff803`d9919b4a)

nt! ?? ::FNODOBFM::`string'+0x4d534:
fffff803`d9a85b53 4533c0          xor     r8d,r8d
fffff803`d9a85b56 488d0d23420d00  lea     rcx,[nt!KiSwapEvent (fffff803`d9b59d80)]
fffff803`d9a85b5d 418d500a        lea     edx,[r8+0Ah]
fffff803`d9a85b61 e81a73e9ff      call    nt!KeSetEvent (fffff803`d991ce80)
fffff803`d9a85b66 90              nop
fffff803`d9a85b67 e9613de9ff      jmp     nt!ExQueueWorkItem+0x1fd (fffff803`d99198cd)

nt! ?? ::FNODOBFM::`string'+0x4d54d:
fffff803`d9a85b6c 488bd6          mov     rdx,rsi
fffff803`d9a85b6f 488bcf          mov     rcx,rdi
fffff803`d9a85b72 e85979e1ff      call    nt!KiRequestProcessInSwap (fffff803`d989d4d0)
fffff803`d9a85b77 90              nop
fffff803`d9a85b78 e9503de9ff      jmp     nt!ExQueueWorkItem+0x1fd (fffff803`d99198cd)

nt! ?? ::FNODOBFM::`string'+0x4d55e:
fffff803`d9a85b7d b903000000      mov     ecx,3
fffff803`d9a85b82 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4d565:
fffff803`d9a85b84 8b05e6841500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a85b8a a840            test    al,40h
fffff803`d9a85b8c 0f84693fe9ff    je      nt!ExQueueWorkItem+0x43e (fffff803`d9919afb)

nt! ?? ::FNODOBFM::`string'+0x4d573:
fffff803`d9a85b92 8bce            mov     ecx,esi
fffff803`d9a85b94 e82b98f6ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a85b99 90              nop
fffff803`d9a85b9a e95e3fe9ff      jmp     nt!ExQueueWorkItem+0x440 (fffff803`d9919afd)

nt! ?? ::FNODOBFM::`string'+0x4d580:
fffff803`d9a85b9f 488bcf          mov     rcx,rdi
fffff803`d9a85ba2 e899f0f7ff      call    nt!KiEndCounterAccumulation (fffff803`d9a04c40)
fffff803`d9a85ba7 90              nop
fffff803`d9a85ba8 e96b3ee9ff      jmp     nt!ExQueueWorkItem+0x348 (fffff803`d9919a18)
