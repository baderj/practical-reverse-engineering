nt!ExQueueWorkItem:
fffff803`21d056d0 fff7            push    rdi
fffff803`21d056d2 4154            push    r12
fffff803`21d056d4 4883ec68        sub     rsp,68h
fffff803`21d056d8 48833900        cmp     qword ptr [rcx],0
fffff803`21d056dc 488bf9          mov     rdi,rcx
fffff803`21d056df 0f853bc21600    jne     nt! ?? ::FNODOBFM::`string'+0x4d2de (fffff803`21e71920)

nt!ExQueueWorkItem+0x15:
fffff803`21d056e5 83fa07          cmp     edx,7
fffff803`21d056e8 0f8d50c21600    jge     nt! ?? ::FNODOBFM::`string'+0x4d2fc (fffff803`21e7193e)

nt!ExQueueWorkItem+0x1e:
fffff803`21d056ee 83fa40          cmp     edx,40h
fffff803`21d056f1 0f8d50c21600    jge     nt! ?? ::FNODOBFM::`string'+0x4d305 (fffff803`21e71947)

nt!ExQueueWorkItem+0x27:
fffff803`21d056f7 4c8b4910        mov     r9,qword ptr [rcx+10h]
fffff803`21d056fb 4533e4          xor     r12d,r12d
fffff803`21d056fe 4c3b0dfb482c00  cmp     r9,qword ptr [nt!MmUserProbeAddress (fffff803`21fca000)]
fffff803`21d05705 0f865bc21600    jbe     nt! ?? ::FNODOBFM::`string'+0x4d324 (fffff803`21e71966)

nt!ExQueueWorkItem+0x3b:
fffff803`21d0570b 4c896c2450      mov     qword ptr [rsp+50h],r13
fffff803`21d05710 458d542402      lea     r10d,[r12+2]
fffff803`21d05715 83fa07          cmp     edx,7
fffff803`21d05718 0f8d60c21600    jge     nt! ?? ::FNODOBFM::`string'+0x4d33c (fffff803`21e7197e)

nt!ExQueueWorkItem+0x4e:
fffff803`21d0571e 448bc2          mov     r8d,edx

nt!ExQueueWorkItem+0x51:
fffff803`21d05721 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`21d0572a 4c8d0d8f2c1f00  lea     r9,[nt!KiNodeInit (fffff803`21ef83c0)]
fffff803`21d05731 4c8ba838530000  mov     r13,qword ptr [rax+5338h]
fffff803`21d05738 4c896c2438      mov     qword ptr [rsp+38h],r13
fffff803`21d0573d 410fb74544      movzx   eax,word ptr [r13+44h]
fffff803`21d05742 8bc8            mov     ecx,eax
fffff803`21d05744 488d0440        lea     rax,[rax+rax*2]
fffff803`21d05748 48c1e006        shl     rax,6
fffff803`21d0574c 4903c1          add     rax,r9
fffff803`21d0574f 4c8d0d2ae12b00  lea     r9,[nt!KeNodeBlock (fffff803`21fc3880)]
fffff803`21d05756 493904c9        cmp     qword ptr [r9+rcx*8],rax
fffff803`21d0575a 0f84ac030000    je      nt!ExQueueWorkItem+0x44e (fffff803`21d05b0c)

nt!ExQueueWorkItem+0x90:
fffff803`21d05760 418b8514030000  mov     eax,dword ptr [r13+314h]
fffff803`21d05767 4184c2          test    r10b,al
fffff803`21d0576a 0f849c030000    je      nt!ExQueueWorkItem+0x44e (fffff803`21d05b0c)

nt!ExQueueWorkItem+0xa0:
fffff803`21d05770 48899c2488000000 mov     qword ptr [rsp+88h],rbx
fffff803`21d05778 48896c2460      mov     qword ptr [rsp+60h],rbp
fffff803`21d0577d 4889742458      mov     qword ptr [rsp+58h],rsi
fffff803`21d05782 4963c0          movsxd  rax,r8d
fffff803`21d05785 498d9dc0000000  lea     rbx,[r13+0C0h]
fffff803`21d0578c 4c89742448      mov     qword ptr [rsp+48h],r14
fffff803`21d05791 488d0c80        lea     rcx,[rax+rax*4]
fffff803`21d05795 4c897c2440      mov     qword ptr [rsp+40h],r15
fffff803`21d0579a 48c1e104        shl     rcx,4
fffff803`21d0579e 4803d9          add     rbx,rcx
fffff803`21d057a1 4c8d7b08        lea     r15,[rbx+8]
fffff803`21d057a5 440f20c0        mov     rax,cr8
fffff803`21d057a9 4889842498000000 mov     qword ptr [rsp+98h],rax
fffff803`21d057b1 450f22c2        mov     cr8,r10
fffff803`21d057b5 65488b2c2520000000 mov   rbp,qword ptr gs:[20h]
fffff803`21d057be f705bc482c0000000001 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],1000000h
fffff803`21d057c8 488b7508        mov     rsi,qword ptr [rbp+8]
fffff803`21d057cc 0f850dc21600    jne     nt! ?? ::FNODOBFM::`string'+0x4d3b0 (fffff803`21e719df)

nt!ExQueueWorkItem+0x102:
fffff803`21d057d2 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21d057d7 458bf4          mov     r14d,r12d
fffff803`21d057da 0f82a5020000    jb      nt!ExQueueWorkItem+0x3c0 (fffff803`21d05a85)

nt!ExQueueWorkItem+0x110:
fffff803`21d057e0 8b4304          mov     eax,dword ptr [rbx+4]
fffff803`21d057e3 89842490000000  mov     dword ptr [rsp+90h],eax
fffff803`21d057ea 4d397f08        cmp     qword ptr [r15+8],r15
fffff803`21d057ee 0f8486010000    je      nt!ExQueueWorkItem+0x2aa (fffff803`21d0597a)

nt!ExQueueWorkItem+0x124:
fffff803`21d057f4 8b4328          mov     eax,dword ptr [rbx+28h]
fffff803`21d057f7 3b432c          cmp     eax,dword ptr [rbx+2Ch]
fffff803`21d057fa 0f837a010000    jae     nt!ExQueueWorkItem+0x2aa (fffff803`21d0597a)

nt!ExQueueWorkItem+0x130:
fffff803`21d05800 488b86e8000000  mov     rax,qword ptr [rsi+0E8h]
fffff803`21d05807 483bc3          cmp     rax,rbx
fffff803`21d0580a 0f845d010000    je      nt!ExQueueWorkItem+0x29d (fffff803`21d0596d)

nt!ExQueueWorkItem+0x140:
fffff803`21d05810 488b7310        mov     rsi,qword ptr [rbx+10h]

nt!ExQueueWorkItem+0x144:
fffff803`21d05814 488bd6          mov     rdx,rsi
fffff803`21d05817 488b7608        mov     rsi,qword ptr [rsi+8]
fffff803`21d0581b 4c8b02          mov     r8,qword ptr [rdx]
fffff803`21d0581e 49395008        cmp     qword ptr [r8+8],rdx
fffff803`21d05822 0f851b030000    jne     nt!ExQueueWorkItem+0x485 (fffff803`21d05b43)

nt!ExQueueWorkItem+0x158:
fffff803`21d05828 483916          cmp     qword ptr [rsi],rdx
fffff803`21d0582b 0f8512030000    jne     nt!ExQueueWorkItem+0x485 (fffff803`21d05b43)

nt!ExQueueWorkItem+0x161:
fffff803`21d05831 4c8906          mov     qword ptr [rsi],r8
fffff803`21d05834 49897008        mov     qword ptr [r8+8],rsi
fffff803`21d05838 4533c9          xor     r9d,r9d
fffff803`21d0583b 4c8bc7          mov     r8,rdi
fffff803`21d0583e 488bcd          mov     rcx,rbp
fffff803`21d05841 e85aaa0000      call    nt!KiTryUnwaitThread (fffff803`21d102a0)
fffff803`21d05846 84c0            test    al,al
fffff803`21d05848 0f84bec11600    je      nt! ?? ::FNODOBFM::`string'+0x4d3dd (fffff803`21e71a0c)

nt!ExQueueWorkItem+0x17e:
fffff803`21d0584e f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`21d05855 4c8bb5882c0000  mov     r14,qword ptr [rbp+2C88h]
fffff803`21d0585c 4d85f6          test    r14,r14
fffff803`21d0585f 7475            je      nt!ExQueueWorkItem+0x206 (fffff803`21d058d6)

nt!ExQueueWorkItem+0x191:
fffff803`21d05861 4c89a5882c0000  mov     qword ptr [rbp+2C88h],r12

nt!ExQueueWorkItem+0x198:
fffff803`21d05868 410fb6866b010000 movzx   eax,byte ptr [r14+16Bh]
fffff803`21d05870 498b76f8        mov     rsi,qword ptr [r14-8]
fffff803`21d05874 498dbe28ffffff  lea     rdi,[r14-0D8h]
fffff803`21d0587b 4d8b36          mov     r14,qword ptr [r14]
fffff803`21d0587e 4c8d3c40        lea     r15,[rax+rax*2]
fffff803`21d05882 49c1e704        shl     r15,4
fffff803`21d05886 4c03fe          add     r15,rsi

nt!ExQueueWorkItem+0x1b9:
fffff803`21d05889 0fb64611        movzx   eax,byte ptr [rsi+11h]
fffff803`21d0588d 3c03            cmp     al,3
fffff803`21d0588f 0f828cc11600    jb      nt! ?? ::FNODOBFM::`string'+0x4d3f2 (fffff803`21e71a21)

nt!ExQueueWorkItem+0x1c5:
fffff803`21d05895 4883c630        add     rsi,30h
fffff803`21d05899 493bf7          cmp     rsi,r15
fffff803`21d0589c 75eb            jne     nt!ExQueueWorkItem+0x1b9 (fffff803`21d05889)

nt!ExQueueWorkItem+0x1ce:
fffff803`21d0589e 66c787360200000100 mov   word ptr [rdi+236h],1
fffff803`21d058a7 f705d3472c0000020000 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],200h
fffff803`21d058b1 0f85efc11600    jne     nt! ?? ::FNODOBFM::`string'+0x4d47f (fffff803`21e71aa6)

nt!ExQueueWorkItem+0x1e7:
fffff803`21d058b7 8b4774          mov     eax,dword ptr [rdi+74h]
fffff803`21d058ba a801            test    al,1
fffff803`21d058bc 0f84fac11600    je      nt! ?? ::FNODOBFM::`string'+0x4d495 (fffff803`21e71abc)

nt!ExQueueWorkItem+0x1f2:
fffff803`21d058c2 488bd7          mov     rdx,rdi
fffff803`21d058c5 488bcd          mov     rcx,rbp
fffff803`21d058c8 e88365ffff      call    nt!KiDeferredReadyThread (fffff803`21cfbe50)

nt!ExQueueWorkItem+0x1fd:
fffff803`21d058cd 4d85f6          test    r14,r14
fffff803`21d058d0 7596            jne     nt!ExQueueWorkItem+0x198 (fffff803`21d05868)

nt!ExQueueWorkItem+0x202:
fffff803`21d058d2 4c8d7b08        lea     r15,[rbx+8]

nt!ExQueueWorkItem+0x206:
fffff803`21d058d6 80bc249800000002 cmp     byte ptr [rsp+98h],2
fffff803`21d058de 7225            jb      nt!ExQueueWorkItem+0x235 (fffff803`21d05905)

nt!ExQueueWorkItem+0x210:
fffff803`21d058e0 4c396510        cmp     qword ptr [rbp+10h],r12
fffff803`21d058e4 7446            je      nt!ExQueueWorkItem+0x25c (fffff803`21d0592c)

nt!ExQueueWorkItem+0x216:
fffff803`21d058e6 0fb685da2d0000  movzx   eax,byte ptr [rbp+2DDAh]
fffff803`21d058ed 84c0            test    al,al
fffff803`21d058ef 753b            jne     nt!ExQueueWorkItem+0x25c (fffff803`21d0592c)

nt!ExQueueWorkItem+0x221:
fffff803`21d058f1 44386520        cmp     byte ptr [rbp+20h],r12b
fffff803`21d058f5 0f8573020000    jne     nt!ExQueueWorkItem+0x4b0 (fffff803`21d05b6e)

nt!ExQueueWorkItem+0x22b:
fffff803`21d058fb b102            mov     cl,2
fffff803`21d058fd ff15cdaa2b00    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`21fc03d0)]
fffff803`21d05903 eb27            jmp     nt!ExQueueWorkItem+0x25c (fffff803`21d0592c)

nt!ExQueueWorkItem+0x235:
fffff803`21d05905 488b7d08        mov     rdi,qword ptr [rbp+8]
fffff803`21d05909 4c396510        cmp     qword ptr [rbp+10h],r12
fffff803`21d0590d 0f85a6000000    jne     nt!ExQueueWorkItem+0x2e9 (fffff803`21d059b9)

nt!ExQueueWorkItem+0x243:
fffff803`21d05913 f7477400010000  test    dword ptr [rdi+74h],100h
fffff803`21d0591a 0f8543010000    jne     nt!ExQueueWorkItem+0x393 (fffff803`21d05a63)

nt!ExQueueWorkItem+0x250:
fffff803`21d05920 0fb6842498000000 movzx   eax,byte ptr [rsp+98h]
fffff803`21d05928 440f22c0        mov     cr8,rax

nt!ExQueueWorkItem+0x25c:
fffff803`21d0592c 8b4348          mov     eax,dword ptr [rbx+48h]
fffff803`21d0592f 3d00020000      cmp     eax,200h
fffff803`21d05934 7d0e            jge     nt!ExQueueWorkItem+0x274 (fffff803`21d05944)

nt!ExQueueWorkItem+0x266:
fffff803`21d05936 44396304        cmp     dword ptr [rbx+4],r12d
fffff803`21d0593a 7565            jne     nt!ExQueueWorkItem+0x2d1 (fffff803`21d059a1)

nt!ExQueueWorkItem+0x26c:
fffff803`21d0593c 0fb6434c        movzx   eax,byte ptr [rbx+4Ch]
fffff803`21d05940 84c0            test    al,al
fffff803`21d05942 7562            jne     nt!ExQueueWorkItem+0x2d6 (fffff803`21d059a6)

nt!ExQueueWorkItem+0x274:
fffff803`21d05944 4c8b742448      mov     r14,qword ptr [rsp+48h]
fffff803`21d05949 488b9c2488000000 mov     rbx,qword ptr [rsp+88h]
fffff803`21d05951 488b742458      mov     rsi,qword ptr [rsp+58h]
fffff803`21d05956 488b6c2460      mov     rbp,qword ptr [rsp+60h]
fffff803`21d0595b 4c8b7c2440      mov     r15,qword ptr [rsp+40h]
fffff803`21d05960 4c8b6c2450      mov     r13,qword ptr [rsp+50h]
fffff803`21d05965 4883c468        add     rsp,68h
fffff803`21d05969 415c            pop     r12
fffff803`21d0596b 5f              pop     rdi
fffff803`21d0596c c3              ret

nt!ExQueueWorkItem+0x29d:
fffff803`21d0596d 80be830200000f  cmp     byte ptr [rsi+283h],0Fh
fffff803`21d05974 0f8596feffff    jne     nt!ExQueueWorkItem+0x140 (fffff803`21d05810)

nt!ExQueueWorkItem+0x2aa:
fffff803`21d0597a ff4304          inc     dword ptr [rbx+4]
fffff803`21d0597d 488b4b20        mov     rcx,qword ptr [rbx+20h]
fffff803`21d05981 488d4318        lea     rax,[rbx+18h]
fffff803`21d05985 48894f08        mov     qword ptr [rdi+8],rcx
fffff803`21d05989 488907          mov     qword ptr [rdi],rax
fffff803`21d0598c 483901          cmp     qword ptr [rcx],rax
fffff803`21d0598f 0f8585c01600    jne     nt! ?? ::FNODOBFM::`string'+0x4d3eb (fffff803`21e71a1a)

nt!ExQueueWorkItem+0x2c5:
fffff803`21d05995 488939          mov     qword ptr [rcx],rdi
fffff803`21d05998 48897808        mov     qword ptr [rax+8],rdi
fffff803`21d0599c e9adfeffff      jmp     nt!ExQueueWorkItem+0x17e (fffff803`21d0584e)

nt!ExQueueWorkItem+0x2d1:
fffff803`21d059a1 4d393f          cmp     qword ptr [r15],r15
fffff803`21d059a4 7596            jne     nt!ExQueueWorkItem+0x26c (fffff803`21d0593c)

nt!ExQueueWorkItem+0x2d6:
fffff803`21d059a6 498d8df0020000  lea     rcx,[r13+2F0h]
fffff803`21d059ad 4533c0          xor     r8d,r8d
fffff803`21d059b0 33d2            xor     edx,edx
fffff803`21d059b2 e8c9340000      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21d059b7 eb8b            jmp     nt!ExQueueWorkItem+0x274 (fffff803`21d05944)

nt!ExQueueWorkItem+0x2e9:
fffff803`21d059b9 418bf4          mov     esi,r12d

nt!ExQueueWorkItem+0x2ec:
fffff803`21d059bc f0480fba6d3000  lock bts qword ptr [rbp+30h],0
fffff803`21d059c3 0f8224010000    jb      nt!ExQueueWorkItem+0x430 (fffff803`21d05aed)

nt!ExQueueWorkItem+0x2f9:
fffff803`21d059c9 488b7510        mov     rsi,qword ptr [rbp+10h]
fffff803`21d059cd 4c896510        mov     qword ptr [rbp+10h],r12
fffff803`21d059d1 fa              cli
fffff803`21d059d2 c6452001        mov     byte ptr [rbp+20h],1
fffff803`21d059d6 0f31            rdtsc
fffff803`21d059d8 48c1e220        shl     rdx,20h
fffff803`21d059dc 480bc2          or      rax,rdx
fffff803`21d059df 488b5748        mov     rdx,qword ptr [rdi+48h]
fffff803`21d059e3 8b4f50          mov     ecx,dword ptr [rdi+50h]
fffff803`21d059e6 4c8bc0          mov     r8,rax
fffff803`21d059e9 4c8bf0          mov     r14,rax
fffff803`21d059ec b8ffffffff      mov     eax,0FFFFFFFFh
fffff803`21d059f1 4c2b8540530000  sub     r8,qword ptr [rbp+5340h]
fffff803`21d059f8 4903d0          add     rdx,r8
fffff803`21d059fb 4903c8          add     rcx,r8
fffff803`21d059fe 48895748        mov     qword ptr [rdi+48h],rdx
fffff803`21d05a02 483bc8          cmp     rcx,rax
fffff803`21d05a05 0f875b010000    ja      nt!ExQueueWorkItem+0x4a8 (fffff803`21d05b66)

nt!ExQueueWorkItem+0x33b:
fffff803`21d05a0b f647020e        test    byte ptr [rdi+2],0Eh
fffff803`21d05a0f 894f50          mov     dword ptr [rdi+50h],ecx
fffff803`21d05a12 0f8592000000    jne     nt!ExQueueWorkItem+0x3e5 (fffff803`21d05aaa)

nt!ExQueueWorkItem+0x348:
fffff803`21d05a18 4c89b540530000  mov     qword ptr [rbp+5340h],r14
fffff803`21d05a1f fb              sti
fffff803`21d05a20 4c8bb42498000000 mov     r14,qword ptr [rsp+98h]
fffff803`21d05a28 48897508        mov     qword ptr [rbp+8],rsi
fffff803`21d05a2c c6868401000002  mov     byte ptr [rsi+184h],2
fffff803`21d05a33 488bd7          mov     rdx,rdi
fffff803`21d05a36 488bcd          mov     rcx,rbp
fffff803`21d05a39 c6878302000020  mov     byte ptr [rdi+283h],20h
fffff803`21d05a40 4488b786010000  mov     byte ptr [rdi+186h],r14b
fffff803`21d05a47 e8b400ffff      call    nt!KiQueueReadyThread (fffff803`21cf5b00)
fffff803`21d05a4c 450fb6c6        movzx   r8d,r14b
fffff803`21d05a50 488bd6          mov     rdx,rsi
fffff803`21d05a53 488bcf          mov     rcx,rdi
fffff803`21d05a56 e8d505fcff      call    nt!KiSwapContext (fffff803`21cc6030)
fffff803`21d05a5b 84c0            test    al,al
fffff803`21d05a5d 0f84bdfeffff    je      nt!ExQueueWorkItem+0x250 (fffff803`21d05920)

nt!ExQueueWorkItem+0x393:
fffff803`21d05a63 b801000000      mov     eax,1
fffff803`21d05a68 440f22c0        mov     cr8,rax
fffff803`21d05a6c 816774fffeffff  and     dword ptr [rdi+74h],0FFFFFEFFh
fffff803`21d05a73 4533c0          xor     r8d,r8d
fffff803`21d05a76 33d2            xor     edx,edx
fffff803`21d05a78 33c9            xor     ecx,ecx
fffff803`21d05a7a e891bb0300      call    nt!KiDeliverApc (fffff803`21d41610)
fffff803`21d05a7f e99cfeffff      jmp     nt!ExQueueWorkItem+0x250 (fffff803`21d05920)

nt!ExQueueWorkItem+0x3c0:
fffff803`21d05a85 41ffc6          inc     r14d
fffff803`21d05a88 448535bd492c00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r14d
fffff803`21d05a8f 0f845bbf1600    je      nt! ?? ::FNODOBFM::`string'+0x4d3c1 (fffff803`21e719f0)

nt!ExQueueWorkItem+0x3d0:
fffff803`21d05a95 f390            pause

nt!ExQueueWorkItem+0x3d2:
fffff803`21d05a97 8b03            mov     eax,dword ptr [rbx]
fffff803`21d05a99 84c0            test    al,al
fffff803`21d05a9b 78e8            js      nt!ExQueueWorkItem+0x3c0 (fffff803`21d05a85)

nt!ExQueueWorkItem+0x3d8:
fffff803`21d05a9d f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21d05aa2 0f8338fdffff    jae     nt!ExQueueWorkItem+0x110 (fffff803`21d057e0)

nt!ExQueueWorkItem+0x3e3:
fffff803`21d05aa8 ebdb            jmp     nt!ExQueueWorkItem+0x3c0 (fffff803`21d05a85)

nt!ExQueueWorkItem+0x3e5:
fffff803`21d05aaa 488b4f68        mov     rcx,qword ptr [rdi+68h]
fffff803`21d05aae 4885c9          test    rcx,rcx
fffff803`21d05ab1 7579            jne     nt!ExQueueWorkItem+0x46e (fffff803`21d05b2c)

nt!ExQueueWorkItem+0x3f2:
fffff803`21d05ab3 f6470208        test    byte ptr [rdi+2],8
fffff803`21d05ab7 7421            je      nt!ExQueueWorkItem+0x419 (fffff803`21d05ada)

nt!ExQueueWorkItem+0x3f8:
fffff803`21d05ab9 488b9738020000  mov     rdx,qword ptr [rdi+238h]
fffff803`21d05ac0 488b8538530000  mov     rax,qword ptr [rbp+5338h]
fffff803`21d05ac7 488b4850        mov     rcx,qword ptr [rax+50h]
fffff803`21d05acb 4823d1          and     rdx,rcx
fffff803`21d05ace 483bd1          cmp     rdx,rcx
fffff803`21d05ad1 7407            je      nt!ExQueueWorkItem+0x419 (fffff803`21d05ada)

nt!ExQueueWorkItem+0x412:
fffff803`21d05ad3 4c018550530000  add     qword ptr [rbp+5350h],r8

nt!ExQueueWorkItem+0x419:
fffff803`21d05ada 4c39a768010000  cmp     qword ptr [rdi+168h],r12
fffff803`21d05ae1 0f8431ffffff    je      nt!ExQueueWorkItem+0x348 (fffff803`21d05a18)

nt!ExQueueWorkItem+0x426:
fffff803`21d05ae7 e9b3c01600      jmp     nt! ?? ::FNODOBFM::`string'+0x4d580 (fffff803`21e71b9f)

nt!ExQueueWorkItem+0x430:
fffff803`21d05aed ffc6            inc     esi
fffff803`21d05aef 853557492c00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21d05af5 0f8489c01600    je      nt! ?? ::FNODOBFM::`string'+0x4d565 (fffff803`21e71b84)

nt!ExQueueWorkItem+0x43e:
fffff803`21d05afb f390            pause

nt!ExQueueWorkItem+0x440:
fffff803`21d05afd 488b4530        mov     rax,qword ptr [rbp+30h]
fffff803`21d05b01 4885c0          test    rax,rax
fffff803`21d05b04 75e7            jne     nt!ExQueueWorkItem+0x430 (fffff803`21d05aed)

nt!ExQueueWorkItem+0x449:
fffff803`21d05b06 e9b1feffff      jmp     nt!ExQueueWorkItem+0x2ec (fffff803`21d059bc)

nt!ExQueueWorkItem+0x44e:
fffff803`21d05b0c 410fb74544      movzx   eax,word ptr [r13+44h]
fffff803`21d05b11 4c63ca          movsxd  r9,edx
fffff803`21d05b14 4c8bc7          mov     r8,rdi
fffff803`21d05b17 ba05000000      mov     edx,5
fffff803`21d05b1c b9e4000000      mov     ecx,0E4h
fffff803`21d05b21 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21d05b26 e81569fcff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21d05b2b cc              int     3

nt!ExQueueWorkItem+0x46e:
fffff803`21d05b2c 8b851c530000    mov     eax,dword ptr [rbp+531Ch]
fffff803`21d05b32 4803c1          add     rax,rcx
fffff803`21d05b35 0f8478ffffff    je      nt!ExQueueWorkItem+0x3f2 (fffff803`21d05ab3)

nt!ExQueueWorkItem+0x47d:
fffff803`21d05b3b 4c0100          add     qword ptr [rax],r8
fffff803`21d05b3e e970ffffff      jmp     nt!ExQueueWorkItem+0x3f2 (fffff803`21d05ab3)

nt!ExQueueWorkItem+0x485:
fffff803`21d05b43 b903000000      mov     ecx,3
fffff803`21d05b48 cd29            int     29h

nt!ExQueueWorkItem+0x48c:
fffff803`21d05b4a 4885c0          test    rax,rax
fffff803`21d05b4d 0f857afdffff    jne     nt!ExQueueWorkItem+0x1fd (fffff803`21d058cd)

nt!ExQueueWorkItem+0x495:
fffff803`21d05b53 e9fbbf1600      jmp     nt! ?? ::FNODOBFM::`string'+0x4d534 (fffff803`21e71b53)

nt!ExQueueWorkItem+0x49a:
fffff803`21d05b58 f390            pause
fffff803`21d05b5a e900bf1600      jmp     nt! ?? ::FNODOBFM::`string'+0x4d434 (fffff803`21e71a5f)

nt!ExQueueWorkItem+0x4a1:
fffff803`21d05b5f f390            pause
fffff803`21d05b61 e98dbf1600      jmp     nt! ?? ::FNODOBFM::`string'+0x4d4d0 (fffff803`21e71af3)

nt!ExQueueWorkItem+0x4a8:
fffff803`21d05b66 488bc8          mov     rcx,rax
fffff803`21d05b69 e99dfeffff      jmp     nt!ExQueueWorkItem+0x33b (fffff803`21d05a0b)

nt!ExQueueWorkItem+0x4b0:
fffff803`21d05b6e c6450601        mov     byte ptr [rbp+6],1
fffff803`21d05b72 e9b5fdffff      jmp     nt!ExQueueWorkItem+0x25c (fffff803`21d0592c)

nt! ?? ::FNODOBFM::`string'+0x4d2de:
fffff803`21e71920 4533e4          xor     r12d,r12d
fffff803`21e71923 4c63ca          movsxd  r9,edx
fffff803`21e71926 4c8bc1          mov     r8,rcx
fffff803`21e71929 418d542401      lea     edx,[r12+1]
fffff803`21e7192e b9e4000000      mov     ecx,0E4h
fffff803`21e71933 4c89642420      mov     qword ptr [rsp+20h],r12
fffff803`21e71938 e803abe5ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e7193d cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4d2fc:
fffff803`21e7193e 83fa20          cmp     edx,20h
fffff803`21e71941 0f8fa73de9ff    jg      nt!ExQueueWorkItem+0x1e (fffff803`21d056ee)

nt! ?? ::FNODOBFM::`string'+0x4d305:
fffff803`21e71947 4c8b4910        mov     r9,qword ptr [rcx+10h]
fffff803`21e7194b 4533e4          xor     r12d,r12d
fffff803`21e7194e 4c8bc1          mov     r8,rcx
fffff803`21e71951 418d542401      lea     edx,[r12+1]
fffff803`21e71956 b9e4000000      mov     ecx,0E4h
fffff803`21e7195b 4c89642420      mov     qword ptr [rsp+20h],r12
fffff803`21e71960 e8dbaae5ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e71965 cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4d324:
fffff803`21e71966 4c8bc1          mov     r8,rcx
fffff803`21e71969 ba01000000      mov     edx,1
fffff803`21e7196e b9e4000000      mov     ecx,0E4h
fffff803`21e71973 4c89642420      mov     qword ptr [rsp+20h],r12
fffff803`21e71978 e8c3aae5ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e7197d cc              int     3

nt! ?? ::FNODOBFM::`string'+0x4d33c:
fffff803`21e7197e 8d42e0          lea     eax,[rdx-20h]
fffff803`21e71981 83f80f          cmp     eax,0Fh
fffff803`21e71984 7e0b            jle     nt! ?? ::FNODOBFM::`string'+0x4d353 (fffff803`21e71991)

nt! ?? ::FNODOBFM::`string'+0x4d348:
fffff803`21e71986 41b805000000    mov     r8d,5
fffff803`21e7198c e9903de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`21d05721)

nt! ?? ::FNODOBFM::`string'+0x4d353:
fffff803`21e71991 83f80e          cmp     eax,0Eh
fffff803`21e71994 7e08            jle     nt! ?? ::FNODOBFM::`string'+0x4d364 (fffff803`21e7199e)

nt! ?? ::FNODOBFM::`string'+0x4d35c:
fffff803`21e71996 458bc2          mov     r8d,r10d
fffff803`21e71999 e9833de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`21d05721)

nt! ?? ::FNODOBFM::`string'+0x4d364:
fffff803`21e7199e 83f80d          cmp     eax,0Dh
fffff803`21e719a1 7e0b            jle     nt! ?? ::FNODOBFM::`string'+0x4d378 (fffff803`21e719ae)

nt! ?? ::FNODOBFM::`string'+0x4d36d:
fffff803`21e719a3 41b806000000    mov     r8d,6
fffff803`21e719a9 e9733de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`21d05721)

nt! ?? ::FNODOBFM::`string'+0x4d378:
fffff803`21e719ae 83f80c          cmp     eax,0Ch
fffff803`21e719b1 7e08            jle     nt! ?? ::FNODOBFM::`string'+0x4d389 (fffff803`21e719bb)

nt! ?? ::FNODOBFM::`string'+0x4d381:
fffff803`21e719b3 458bc4          mov     r8d,r12d
fffff803`21e719b6 e9663de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`21d05721)

nt! ?? ::FNODOBFM::`string'+0x4d389:
fffff803`21e719bb 83f808          cmp     eax,8
fffff803`21e719be 7e0b            jle     nt! ?? ::FNODOBFM::`string'+0x4d39d (fffff803`21e719cb)

nt! ?? ::FNODOBFM::`string'+0x4d392:
fffff803`21e719c0 41b801000000    mov     r8d,1
fffff803`21e719c6 e9563de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`21d05721)

nt! ?? ::FNODOBFM::`string'+0x4d39d:
fffff803`21e719cb 83f807          cmp     eax,7
fffff803`21e719ce 458bc4          mov     r8d,r12d
fffff803`21e719d1 410f9ec0        setle   r8b
fffff803`21e719d5 4183c003        add     r8d,3
fffff803`21e719d9 e9433de9ff      jmp     nt!ExQueueWorkItem+0x51 (fffff803`21d05721)

nt! ?? ::FNODOBFM::`string'+0x4d3b0:
fffff803`21e719df 488bd7          mov     rdx,rdi
fffff803`21e719e2 488bce          mov     rcx,rsi
fffff803`21e719e5 e8960ffcff      call    nt!EtwTraceEnqueueWork (fffff803`21e32980)
fffff803`21e719ea 90              nop
fffff803`21e719eb e9e23de9ff      jmp     nt!ExQueueWorkItem+0x102 (fffff803`21d057d2)

nt! ?? ::FNODOBFM::`string'+0x4d3c1:
fffff803`21e719f0 8b057a861500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e719f6 a840            test    al,40h
fffff803`21e719f8 0f849740e9ff    je      nt!ExQueueWorkItem+0x3d0 (fffff803`21d05a95)

nt! ?? ::FNODOBFM::`string'+0x4d3cf:
fffff803`21e719fe 418bce          mov     ecx,r14d
fffff803`21e71a01 e8be99f6ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e71a06 90              nop
fffff803`21e71a07 e98b40e9ff      jmp     nt!ExQueueWorkItem+0x3d2 (fffff803`21d05a97)

nt! ?? ::FNODOBFM::`string'+0x4d3dd:
fffff803`21e71a0c 493bf7          cmp     rsi,r15
fffff803`21e71a0f 0f85ff3de9ff    jne     nt!ExQueueWorkItem+0x144 (fffff803`21d05814)

nt! ?? ::FNODOBFM::`string'+0x4d3e6:
fffff803`21e71a15 e9603fe9ff      jmp     nt!ExQueueWorkItem+0x2aa (fffff803`21d0597a)

nt! ?? ::FNODOBFM::`string'+0x4d3eb:
fffff803`21e71a1a b903000000      mov     ecx,3
fffff803`21e71a1f cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4d3f2:
fffff803`21e71a21 488b4e20        mov     rcx,qword ptr [rsi+20h]
fffff803`21e71a25 48894c2430      mov     qword ptr [rsp+30h],rcx
fffff803`21e71a2a f00fba2907      lock bts dword ptr [rcx],7
fffff803`21e71a2f 7340            jae     nt! ?? ::FNODOBFM::`string'+0x4d446 (fffff803`21e71a71)

nt! ?? ::FNODOBFM::`string'+0x4d406:
fffff803`21e71a31 458bec          mov     r13d,r12d

nt! ?? ::FNODOBFM::`string'+0x4d409:
fffff803`21e71a34 41ffc5          inc     r13d
fffff803`21e71a37 44852d0e8a1500  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r13d
fffff803`21e71a3e 0f851441e9ff    jne     nt!ExQueueWorkItem+0x49a (fffff803`21d05b58)

nt! ?? ::FNODOBFM::`string'+0x4d419:
fffff803`21e71a44 8b0526861500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e71a4a a840            test    al,40h
fffff803`21e71a4c 0f840641e9ff    je      nt!ExQueueWorkItem+0x49a (fffff803`21d05b58)

nt! ?? ::FNODOBFM::`string'+0x4d427:
fffff803`21e71a52 418bcd          mov     ecx,r13d
fffff803`21e71a55 e86a99f6ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e71a5a 488b4c2430      mov     rcx,qword ptr [rsp+30h]

nt! ?? ::FNODOBFM::`string'+0x4d434:
fffff803`21e71a5f 8b01            mov     eax,dword ptr [rcx]
fffff803`21e71a61 84c0            test    al,al
fffff803`21e71a63 78cf            js      nt! ?? ::FNODOBFM::`string'+0x4d409 (fffff803`21e71a34)

nt! ?? ::FNODOBFM::`string'+0x4d43a:
fffff803`21e71a65 f00fba2907      lock bts dword ptr [rcx],7
fffff803`21e71a6a 72c8            jb      nt! ?? ::FNODOBFM::`string'+0x4d409 (fffff803`21e71a34)

nt! ?? ::FNODOBFM::`string'+0x4d441:
fffff803`21e71a6c 4c8b6c2438      mov     r13,qword ptr [rsp+38h]

nt! ?? ::FNODOBFM::`string'+0x4d446:
fffff803`21e71a71 0fb64611        movzx   eax,byte ptr [rsi+11h]
fffff803`21e71a75 3c02            cmp     al,2
fffff803`21e71a77 7521            jne     nt! ?? ::FNODOBFM::`string'+0x4d473 (fffff803`21e71a9a)

nt! ?? ::FNODOBFM::`string'+0x4d452:
fffff803`21e71a79 488b16          mov     rdx,qword ptr [rsi]
fffff803`21e71a7c 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`21e71a80 48397208        cmp     qword ptr [rdx+8],rsi
fffff803`21e71a84 0f85f3000000    jne     nt! ?? ::FNODOBFM::`string'+0x4d55e (fffff803`21e71b7d)

nt! ?? ::FNODOBFM::`string'+0x4d463:
fffff803`21e71a8a 483930          cmp     qword ptr [rax],rsi
fffff803`21e71a8d 0f85ea000000    jne     nt! ?? ::FNODOBFM::`string'+0x4d55e (fffff803`21e71b7d)

nt! ?? ::FNODOBFM::`string'+0x4d46c:
fffff803`21e71a93 488910          mov     qword ptr [rax],rdx
fffff803`21e71a96 48894208        mov     qword ptr [rdx+8],rax

nt! ?? ::FNODOBFM::`string'+0x4d473:
fffff803`21e71a9a f081217fffffff  lock and dword ptr [rcx],0FFFFFF7Fh
fffff803`21e71aa1 e9ef3de9ff      jmp     nt!ExQueueWorkItem+0x1c5 (fffff803`21d05895)

nt! ?? ::FNODOBFM::`string'+0x4d47f:
fffff803`21e71aa6 4533c9          xor     r9d,r9d
fffff803`21e71aa9 4533c0          xor     r8d,r8d
fffff803`21e71aac b201            mov     dl,1
fffff803`21e71aae 488bcf          mov     rcx,rdi
fffff803`21e71ab1 e8ca0dfcff      call    nt!EtwTraceReadyThread (fffff803`21e32880)
fffff803`21e71ab6 90              nop
fffff803`21e71ab7 e9fb3de9ff      jmp     nt!ExQueueWorkItem+0x1e7 (fffff803`21d058b7)

nt! ?? ::FNODOBFM::`string'+0x4d495:
fffff803`21e71abc 488bb7b8000000  mov     rsi,qword ptr [rdi+0B8h]
fffff803`21e71ac3 458bfc          mov     r15d,r12d
fffff803`21e71ac6 f00fba2e07      lock bts dword ptr [rsi],7
fffff803`21e71acb 7333            jae     nt! ?? ::FNODOBFM::`string'+0x4d4dd (fffff803`21e71b00)

nt! ?? ::FNODOBFM::`string'+0x4d4aa:
fffff803`21e71acd 41ffc7          inc     r15d
fffff803`21e71ad0 44853d75891500  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r15d
fffff803`21e71ad7 0f858240e9ff    jne     nt!ExQueueWorkItem+0x4a1 (fffff803`21d05b5f)

nt! ?? ::FNODOBFM::`string'+0x4d4ba:
fffff803`21e71add 8b058d851500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e71ae3 a840            test    al,40h
fffff803`21e71ae5 0f847440e9ff    je      nt!ExQueueWorkItem+0x4a1 (fffff803`21d05b5f)

nt! ?? ::FNODOBFM::`string'+0x4d4c8:
fffff803`21e71aeb 418bcf          mov     ecx,r15d
fffff803`21e71aee e8d198f6ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x4d4d0:
fffff803`21e71af3 8b06            mov     eax,dword ptr [rsi]
fffff803`21e71af5 84c0            test    al,al
fffff803`21e71af7 78d4            js      nt! ?? ::FNODOBFM::`string'+0x4d4aa (fffff803`21e71acd)

nt! ?? ::FNODOBFM::`string'+0x4d4d6:
fffff803`21e71af9 f00fba2e07      lock bts dword ptr [rsi],7
fffff803`21e71afe 72cd            jb      nt! ?? ::FNODOBFM::`string'+0x4d4aa (fffff803`21e71acd)

nt! ?? ::FNODOBFM::`string'+0x4d4dd:
fffff803`21e71b00 8b8634020000    mov     eax,dword ptr [rsi+234h]
fffff803`21e71b06 a807            test    al,7
fffff803`21e71b08 7562            jne     nt! ?? ::FNODOBFM::`string'+0x4d54d (fffff803`21e71b6c)

nt! ?? ::FNODOBFM::`string'+0x4d4eb:
fffff803`21e71b0a b808000000      mov     eax,8
fffff803`21e71b0f f00fc18634020000 lock xadd dword ptr [rsi+234h],eax
fffff803`21e71b17 f081267fffffff  lock and dword ptr [rsi],0FFFFFF7Fh
fffff803`21e71b1e c6878401000006  mov     byte ptr [rdi+184h],6
fffff803`21e71b25 4881c7d8000000  add     rdi,0D8h
fffff803`21e71b2c 0f0d0d75420d00  prefetchw [nt!KiStackInSwapListHead (fffff803`21f45da8)]
fffff803`21e71b33 488b056e420d00  mov     rax,qword ptr [nt!KiStackInSwapListHead (fffff803`21f45da8)]

nt! ?? ::FNODOBFM::`string'+0x4d51b:
fffff803`21e71b3a 488907          mov     qword ptr [rdi],rax
fffff803`21e71b3d 488bc8          mov     rcx,rax
fffff803`21e71b40 f0480fb13d5f420d00 lock cmpxchg qword ptr [nt!KiStackInSwapListHead (fffff803`21f45da8)],rdi
fffff803`21e71b49 483bc1          cmp     rax,rcx
fffff803`21e71b4c 75ec            jne     nt! ?? ::FNODOBFM::`string'+0x4d51b (fffff803`21e71b3a)

nt! ?? ::FNODOBFM::`string'+0x4d52f:
fffff803`21e71b4e e9f73fe9ff      jmp     nt!ExQueueWorkItem+0x48c (fffff803`21d05b4a)

nt! ?? ::FNODOBFM::`string'+0x4d534:
fffff803`21e71b53 4533c0          xor     r8d,r8d
fffff803`21e71b56 488d0d23420d00  lea     rcx,[nt!KiSwapEvent (fffff803`21f45d80)]
fffff803`21e71b5d 418d500a        lea     edx,[r8+0Ah]
fffff803`21e71b61 e81a73e9ff      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21e71b66 90              nop
fffff803`21e71b67 e9613de9ff      jmp     nt!ExQueueWorkItem+0x1fd (fffff803`21d058cd)

nt! ?? ::FNODOBFM::`string'+0x4d54d:
fffff803`21e71b6c 488bd6          mov     rdx,rsi
fffff803`21e71b6f 488bcf          mov     rcx,rdi
fffff803`21e71b72 e85979e1ff      call    nt!KiRequestProcessInSwap (fffff803`21c894d0)
fffff803`21e71b77 90              nop
fffff803`21e71b78 e9503de9ff      jmp     nt!ExQueueWorkItem+0x1fd (fffff803`21d058cd)

nt! ?? ::FNODOBFM::`string'+0x4d55e:
fffff803`21e71b7d b903000000      mov     ecx,3
fffff803`21e71b82 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x4d565:
fffff803`21e71b84 8b05e6841500    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21e71b8a a840            test    al,40h
fffff803`21e71b8c 0f84693fe9ff    je      nt!ExQueueWorkItem+0x43e (fffff803`21d05afb)

nt! ?? ::FNODOBFM::`string'+0x4d573:
fffff803`21e71b92 8bce            mov     ecx,esi
fffff803`21e71b94 e82b98f6ff      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21e71b99 90              nop
fffff803`21e71b9a e95e3fe9ff      jmp     nt!ExQueueWorkItem+0x440 (fffff803`21d05afd)

nt! ?? ::FNODOBFM::`string'+0x4d580:
fffff803`21e71b9f 488bcf          mov     rcx,rdi
fffff803`21e71ba2 e899f0f7ff      call    nt!KiEndCounterAccumulation (fffff803`21df0c40)
fffff803`21e71ba7 90              nop
fffff803`21e71ba8 e96b3ee9ff      jmp     nt!ExQueueWorkItem+0x348 (fffff803`21d05a18)
