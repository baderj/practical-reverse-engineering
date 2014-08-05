0: kd> uf KeStartThread
nt!KeStartThread:
fffff803`d99693d8 48895c2418      mov     qword ptr [rsp+18h],rbx
fffff803`d99693dd 55              push    rbp
fffff803`d99693de 56              push    rsi
fffff803`d99693df 57              push    rdi
fffff803`d99693e0 4154            push    r12
fffff803`d99693e2 4155            push    r13
fffff803`d99693e4 4156            push    r14
fffff803`d99693e6 4157            push    r15
fffff803`d99693e8 488bec          mov     rbp,rsp
fffff803`d99693eb 4883ec70        sub     rsp,70h
fffff803`d99693ef 488b05a2c61900  mov     rax,qword ptr [nt!_security_cookie (fffff803`d9b05a98)]
fffff803`d99693f6 4833c4          xor     rax,rsp
fffff803`d99693f9 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`d99693fd 44884db1        mov     byte ptr [rbp-4Fh],r9b
fffff803`d9969401 4d8bf0          mov     r14,r8
fffff803`d9969404 4c8945d0        mov     qword ptr [rbp-30h],r8
fffff803`d9969408 488bf2          mov     rsi,rdx
fffff803`d996940b 488bf9          mov     rdi,rcx
fffff803`d996940e b801000000      mov     eax,1
fffff803`d9969413 4d85c0          test    r8,r8
fffff803`d9969416 7509            jne     nt!KeStartThread+0x49 (fffff803`d9969421)

nt!KeStartThread+0x40:
fffff803`d9969418 4885d2          test    rdx,rdx
fffff803`d996941b 0f854f550300    jne     nt! ?? ::FNODOBFM::`string'+0xeb94 (fffff803`d999e970)

nt!KeStartThread+0x49:
fffff803`d9969421 4533ff          xor     r15d,r15d
fffff803`d9969424 8845b0          mov     byte ptr [rbp-50h],al
fffff803`d9969427 44217db4        and     dword ptr [rbp-4Ch],r15d
fffff803`d996942b 4885d2          test    rdx,rdx
fffff803`d996942e 750a            jne     nt!KeStartThread+0x62 (fffff803`d996943a)

nt!KeStartThread+0x58:
fffff803`d9969430 33c0            xor     eax,eax
fffff803`d9969432 488945e0        mov     qword ptr [rbp-20h],rax
fffff803`d9969436 488945e8        mov     qword ptr [rbp-18h],rax

nt!KeStartThread+0x62:
fffff803`d996943a 654c8b2c2588010000 mov   r13,qword ptr gs:[188h]
fffff803`d9969443 488b9fb8000000  mov     rbx,qword ptr [rdi+0B8h]
fffff803`d996944a b902000000      mov     ecx,2
fffff803`d996944f 8b83b0010000    mov     eax,dword ptr [rbx+1B0h]
fffff803`d9969455 d1f8            sar     eax,1
fffff803`d9969457 03c0            add     eax,eax
fffff803`d9969459 334778          xor     eax,dword ptr [rdi+78h]
fffff803`d996945c 23c1            and     eax,ecx
fffff803`d996945e 314778          xor     dword ptr [rdi+78h],eax
fffff803`d9969461 440f20c0        mov     rax,cr8
fffff803`d9969465 488945d8        mov     qword ptr [rbp-28h],rax
fffff803`d9969469 440f22c1        mov     cr8,rcx
fffff803`d996946d f7050d4c270000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d9969477 4c8d6340        lea     r12,[rbx+40h]
fffff803`d996947b 0f8516550300    jne     nt! ?? ::FNODOBFM::`string'+0xebbb (fffff803`d999e997)

nt!KeStartThread+0xa9:
fffff803`d9969481 4533f6          xor     r14d,r14d
fffff803`d9969484 f0410fba2c241f  lock bts dword ptr [r12],1Fh
fffff803`d996948b 0f8214550300    jb      nt! ?? ::FNODOBFM::`string'+0xebc9 (fffff803`d999e9a5)

nt!KeStartThread+0xb9:
fffff803`d9969491 418b0c24        mov     ecx,dword ptr [r12]
fffff803`d9969495 81f900000080    cmp     ecx,80000000h
fffff803`d996949b 0f8567030000    jne     nt!KeStartThread+0x430 (fffff803`d9969808)

nt!KeStartThread+0xc9:
fffff803`d99694a1 4c8b75d0        mov     r14,qword ptr [rbp-30h]

nt!KeStartThread+0xcd:
fffff803`d99694a5 8a83b4010000    mov     al,byte ptr [rbx+1B4h]
fffff803`d99694ab 41bb08000000    mov     r11d,8
fffff803`d99694b1 888733020000    mov     byte ptr [rdi+233h],al
fffff803`d99694b7 8887c3000000    mov     byte ptr [rdi+0C3h],al
fffff803`d99694bd 8b83b0010000    mov     eax,dword ptr [rbx+1B0h]
fffff803`d99694c3 c1e804          shr     eax,4
fffff803`d99694c6 1bc0            sbb     eax,eax
fffff803`d99694c8 c0e003          shl     al,3
fffff803`d99694cb 324702          xor     al,byte ptr [rdi+2]
fffff803`d99694ce 4122c3          and     al,r11b
fffff803`d99694d1 304702          xor     byte ptr [rdi+2],al
fffff803`d99694d4 4885f6          test    rsi,rsi
fffff803`d99694d7 0f859c020000    jne     nt!KeStartThread+0x3a1 (fffff803`d9969779)

nt!KeStartThread+0x105:
fffff803`d99694dd 493b9d20020000  cmp     rbx,qword ptr [r13+220h]
fffff803`d99694e4 0f8473020000    je      nt!KeStartThread+0x385 (fffff803`d996975d)

nt!KeStartThread+0x112:
fffff803`d99694ea 0fb75348        movzx   edx,word ptr [rbx+48h]
fffff803`d99694ee 4533ed          xor     r13d,r13d
fffff803`d99694f1 410fb7cd        movzx   ecx,r13w
fffff803`d99694f5 66443bea        cmp     r13w,dx
fffff803`d99694f9 7328            jae     nt!KeStartThread+0x14b (fffff803`d9969523)

nt!KeStartThread+0x123:
fffff803`d99694fb 0fb7c1          movzx   eax,cx
fffff803`d99694fe 4c396cc350      cmp     qword ptr [rbx+rax*8+50h],r13
fffff803`d9969503 0f84c8540300    je      nt! ?? ::FNODOBFM::`string'+0xebf5 (fffff803`d999e9d1)

nt!KeStartThread+0x131:
fffff803`d9969509 33c0            xor     eax,eax
fffff803`d996950b 488945e8        mov     qword ptr [rbp-18h],rax
fffff803`d996950f 488945e0        mov     qword ptr [rbp-20h],rax
fffff803`d9969513 0fb7c1          movzx   eax,cx
fffff803`d9969516 66894de8        mov     word ptr [rbp-18h],cx
fffff803`d996951a 488b4cc350      mov     rcx,qword ptr [rbx+rax*8+50h]

nt!KeStartThread+0x147:
fffff803`d996951f 48894de0        mov     qword ptr [rbp-20h],rcx

nt!KeStartThread+0x14b:
fffff803`d9969523 488d75e0        lea     rsi,[rbp-20h]

nt!KeStartThread+0x14f:
fffff803`d9969527 0fb74608        movzx   eax,word ptr [rsi+8]
fffff803`d996952b 66898740020000  mov     word ptr [rdi+240h],ax
fffff803`d9969532 488b06          mov     rax,qword ptr [rsi]
fffff803`d9969535 48898738020000  mov     qword ptr [rdi+238h],rax
fffff803`d996953c 0fb74608        movzx   eax,word ptr [rsi+8]
fffff803`d9969540 66898730020000  mov     word ptr [rdi+230h],ax
fffff803`d9969547 488b06          mov     rax,qword ptr [rsi]
fffff803`d996954a 48898728020000  mov     qword ptr [rdi+228h],rax
fffff803`d9969551 4d85f6          test    r14,r14
fffff803`d9969554 0f856d020000    jne     nt!KeStartThread+0x3ef (fffff803`d99697c7)

nt!KeStartThread+0x182:
fffff803`d996955a 4d85ff          test    r15,r15
fffff803`d996955d 7521            jne     nt!KeStartThread+0x1a8 (fffff803`d9969580)

nt!KeStartThread+0x187:
fffff803`d996955f 0fb74e08        movzx   ecx,word ptr [rsi+8]
fffff803`d9969563 4c8d3d16e32600  lea     r15,[nt!KeNodeBlock (fffff803`d9bd7880)]
fffff803`d996956a 0fb7844b08020000 movzx   eax,word ptr [rbx+rcx*2+208h]
fffff803`d9969572 4d8b3cc7        mov     r15,qword ptr [r15+rax*8]
fffff803`d9969576 8b848bb8010000  mov     eax,dword ptr [rbx+rcx*4+1B8h]
fffff803`d996957d 8945b4          mov     dword ptr [rbp-4Ch],eax

nt!KeStartThread+0x1a8:
fffff803`d9969580 498b4750        mov     rax,qword ptr [r15+50h]
fffff803`d9969584 8b55b4          mov     edx,dword ptr [rbp-4Ch]
fffff803`d9969587 4c8bc6          mov     r8,rsi
fffff803`d996958a 482106          and     qword ptr [rsi],rax
fffff803`d996958d 498bcf          mov     rcx,r15
fffff803`d9969590 e8eb020000      call    nt!KiSelectIdealProcessor (fffff803`d9969880)
fffff803`d9969595 448bd8          mov     r11d,eax
fffff803`d9969598 44386db0        cmp     byte ptr [rbp-50h],r13b
fffff803`d996959c 740b            je      nt!KeStartThread+0x1d1 (fffff803`d99695a9)

nt!KeStartThread+0x1c6:
fffff803`d996959e 0fb74e08        movzx   ecx,word ptr [rsi+8]
fffff803`d99695a2 89848bb8010000  mov     dword ptr [rbx+rcx*4+1B8h],eax

nt!KeStartThread+0x1d1:
fffff803`d99695a9 488d7330        lea     rsi,[rbx+30h]
fffff803`d99695ad 44899fc4000000  mov     dword ptr [rdi+0C4h],r11d
fffff803`d99695b4 44899f44020000  mov     dword ptr [rdi+244h],r11d
fffff803`d99695bb 41bf00000100    mov     r15d,10000h
fffff803`d99695c1 483936          cmp     qword ptr [rsi],rsi
fffff803`d99695c4 0f85aa000000    jne     nt!KeStartThread+0x29c (fffff803`d9969674)

nt!KeStartThread+0x1f2:
fffff803`d99695ca 488d052fec2600  lea     rax,[nt!KiInitialProcess (fffff803`d9bd8200)]
fffff803`d99695d1 483bd8          cmp     rbx,rax
fffff803`d99695d4 0f849a000000    je      nt!KeStartThread+0x29c (fffff803`d9969674)

nt!KeStartThread+0x202:
fffff803`d99695da f705a04a270000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d99695e4 488d1595e52600  lea     rdx,[nt!KiProcessListLock (fffff803`d9bd7b80)]
fffff803`d99695eb 4c896db8        mov     qword ptr [rbp-48h],r13
fffff803`d99695ef 488955c0        mov     qword ptr [rbp-40h],rdx
fffff803`d99695f3 0f8511540300    jne     nt! ?? ::FNODOBFM::`string'+0xec2e (fffff803`d999ea0a)

nt!KeStartThread+0x221:
fffff803`d99695f9 488d55b8        lea     rdx,[rbp-48h]
fffff803`d99695fd 4887157ce52600  xchg    rdx,qword ptr [nt!KiProcessListLock (fffff803`d9bd7b80)]
fffff803`d9969604 4885d2          test    rdx,rdx
fffff803`d9969607 0f850c540300    jne     nt! ?? ::FNODOBFM::`string'+0xec3d (fffff803`d999ea19)

nt!KeStartThread+0x235:
fffff803`d996960d 488b0db4061f00  mov     rcx,qword ptr [nt!KiProcessListHead+0x8 (fffff803`d9b59cc8)]
fffff803`d9969614 488d8338020000  lea     rax,[rbx+238h]
fffff803`d996961b 488d159e061f00  lea     rdx,[nt!KiProcessListHead (fffff803`d9b59cc0)]
fffff803`d9969622 488910          mov     qword ptr [rax],rdx
fffff803`d9969625 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9969629 483911          cmp     qword ptr [rcx],rdx
fffff803`d996962c 0f85f6530300    jne     nt! ?? ::FNODOBFM::`string'+0xec4c (fffff803`d999ea28)

nt!KeStartThread+0x25a:
fffff803`d9969632 488901          mov     qword ptr [rcx],rax
fffff803`d9969635 44853d484a2700  test    dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],r15d
fffff803`d996963c 48890585061f00  mov     qword ptr [nt!KiProcessListHead+0x8 (fffff803`d9b59cc8)],rax
fffff803`d9969643 0f85e6530300    jne     nt! ?? ::FNODOBFM::`string'+0xec53 (fffff803`d999ea2f)

nt!KeStartThread+0x271:
fffff803`d9969649 0f0d4db8        prefetchw [rbp-48h]
fffff803`d996964d 488b45b8        mov     rax,qword ptr [rbp-48h]
fffff803`d9969651 4885c0          test    rax,rax
fffff803`d9969654 0f8590010000    jne     nt!KeStartThread+0x412 (fffff803`d99697ea)

nt!KeStartThread+0x282:
fffff803`d996965a 488b4dc0        mov     rcx,qword ptr [rbp-40h]
fffff803`d996965e 488d45b8        lea     rax,[rbp-48h]
fffff803`d9969662 f04c0fb129      lock cmpxchg qword ptr [rcx],r13
fffff803`d9969667 488d4db8        lea     rcx,[rbp-48h]
fffff803`d996966b 483bc1          cmp     rax,rcx
fffff803`d996966e 0f856d010000    jne     nt!KeStartThread+0x409 (fffff803`d99697e1)

nt!KeStartThread+0x29c:
fffff803`d9969674 41b801000000    mov     r8d,1

nt!KeStartThread+0x2a2:
fffff803`d996967a 8b83b0010000    mov     eax,dword ptr [rbx+1B0h]
fffff803`d9969680 c1f802          sar     eax,2
fffff803`d9969683 c1e007          shl     eax,7
fffff803`d9969686 334778          xor     eax,dword ptr [rdi+78h]
fffff803`d9969689 2580000000      and     eax,80h
fffff803`d996968e 314778          xor     dword ptr [rdi+78h],eax
fffff803`d9969691 0fb683b5010000  movzx   eax,byte ptr [rbx+1B5h]
fffff803`d9969698 8bd0            mov     edx,eax
fffff803`d996969a 88878b020000    mov     byte ptr [rdi+28Bh],al
fffff803`d99696a0 8b4778          mov     eax,dword ptr [rdi+78h]
fffff803`d99696a3 0faf15fe4b2700  imul    edx,dword ptr [nt!KiCyclesPerClockQuantum (fffff803`d9bde2a8)]
fffff803`d99696aa a810            test    al,10h
fffff803`d99696ac 0f8590530300    jne     nt! ?? ::FNODOBFM::`string'+0xec66 (fffff803`d999ea42)

nt!KeStartThread+0x2da:
fffff803`d99696b2 48895720        mov     qword ptr [rdi+20h],rdx
fffff803`d99696b6 458bf5          mov     r14d,r13d

nt!KeStartThread+0x2e1:
fffff803`d99696b9 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`d99696be 0f8289530300    jb      nt! ?? ::FNODOBFM::`string'+0xec71 (fffff803`d999ea4d)

nt!KeStartThread+0x2ec:
fffff803`d99696c4 488b4e08        mov     rcx,qword ptr [rsi+8]
fffff803`d99696c8 488d87f8020000  lea     rax,[rdi+2F8h]
fffff803`d99696cf 488930          mov     qword ptr [rax],rsi
fffff803`d99696d2 48894808        mov     qword ptr [rax+8],rcx
fffff803`d99696d6 483931          cmp     qword ptr [rcx],rsi
fffff803`d99696d9 0f85a5530300    jne     nt! ?? ::FNODOBFM::`string'+0xeca8 (fffff803`d999ea84)

nt!KeStartThread+0x307:
fffff803`d99696df 488901          mov     qword ptr [rcx],rax
fffff803`d99696e2 48894608        mov     qword ptr [rsi+8],rax
fffff803`d99696e6 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`d99696ed 8b83b0010000    mov     eax,dword ptr [rbx+1B0h]
fffff803`d99696f3 a810            test    al,10h
fffff803`d99696f5 0f8590530300    jne     nt! ?? ::FNODOBFM::`string'+0xecaf (fffff803`d999ea8b)

nt!KeStartThread+0x323:
fffff803`d99696fb 488b8358020000  mov     rax,qword ptr [rbx+258h]
fffff803`d9969702 48894768        mov     qword ptr [rdi+68h],rax
fffff803`d9969706 4c39ab58020000  cmp     qword ptr [rbx+258h],r13
fffff803`d996970d 0f85eb000000    jne     nt!KeStartThread+0x426 (fffff803`d99697fe)

nt!KeStartThread+0x33b:
fffff803`d9969713 44853d6a492700  test    dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],r15d
fffff803`d996971a 0f8582530300    jne     nt! ?? ::FNODOBFM::`string'+0xecc6 (fffff803`d999eaa2)

nt!KeStartThread+0x348:
fffff803`d9969720 45892c24        mov     dword ptr [r12],r13d

nt!KeStartThread+0x34c:
fffff803`d9969724 0fb645d8        movzx   eax,byte ptr [rbp-28h]
fffff803`d9969728 440f22c0        mov     cr8,rax
fffff803`d996972c b808000000      mov     eax,8
fffff803`d9969731 f00fc18334020000 lock xadd dword ptr [rbx+234h],eax
fffff803`d9969739 488b4df0        mov     rcx,qword ptr [rbp-10h]
fffff803`d996973d 4833cc          xor     rcx,rsp
fffff803`d9969740 e87bddf6ff      call    nt!_security_check_cookie (fffff803`d98d74c0)
fffff803`d9969745 488b9c24c0000000 mov     rbx,qword ptr [rsp+0C0h]
fffff803`d996974d 4883c470        add     rsp,70h
fffff803`d9969751 415f            pop     r15
fffff803`d9969753 415e            pop     r14
fffff803`d9969755 415d            pop     r13
fffff803`d9969757 415c            pop     r12
fffff803`d9969759 5f              pop     rdi
fffff803`d996975a 5e              pop     rsi
fffff803`d996975b 5d              pop     rbp
fffff803`d996975c c3              ret

nt!KeStartThread+0x385:
fffff803`d996975d 410fb78530020000 movzx   eax,word ptr [r13+230h]
fffff803`d9969765 4533ed          xor     r13d,r13d
fffff803`d9969768 668945e8        mov     word ptr [rbp-18h],ax
fffff803`d996976c 0fb7c0          movzx   eax,ax
fffff803`d996976f 488b4cc350      mov     rcx,qword ptr [rbx+rax*8+50h]
fffff803`d9969774 e9a6fdffff      jmp     nt!KeStartThread+0x147 (fffff803`d996951f)

nt!KeStartThread+0x3a1:
fffff803`d9969779 440fb74608      movzx   r8d,word ptr [rsi+8]
fffff803`d996977e 4533ed          xor     r13d,r13d
fffff803`d9969781 4a8b54c350      mov     rdx,qword ptr [rbx+r8*8+50h]
fffff803`d9969786 4885d2          test    rdx,rdx
fffff803`d9969789 0f8453520300    je      nt! ?? ::FNODOBFM::`string'+0xec06 (fffff803`d999e9e2)

nt!KeStartThread+0x3b7:
fffff803`d996978f 488b0e          mov     rcx,qword ptr [rsi]
fffff803`d9969792 488bc1          mov     rax,rcx
fffff803`d9969795 4823c2          and     rax,rdx
fffff803`d9969798 483bc1          cmp     rax,rcx
fffff803`d996979b 0f8541520300    jne     nt! ?? ::FNODOBFM::`string'+0xec06 (fffff803`d999e9e2)

nt!KeStartThread+0x3c9:
fffff803`d99697a1 488b16          mov     rdx,qword ptr [rsi]
fffff803`d99697a4 4885d2          test    rdx,rdx
fffff803`d99697a7 0f844c520300    je      nt! ?? ::FNODOBFM::`string'+0xec1d (fffff803`d999e9f9)

nt!KeStartThread+0x3d5:
fffff803`d99697ad 0fb74e08        movzx   ecx,word ptr [rsi+8]
fffff803`d99697b1 e8ba4a0000      call    nt!KiTestNodeAffinity (fffff803`d996e270)
fffff803`d99697b6 84c0            test    al,al
fffff803`d99697b8 0f8569fdffff    jne     nt!KeStartThread+0x14f (fffff803`d9969527)

nt!KeStartThread+0x3e6:
fffff803`d99697be 44085f02        or      byte ptr [rdi+2],r11b
fffff803`d99697c2 e960fdffff      jmp     nt!KeStartThread+0x14f (fffff803`d9969527)

nt!KeStartThread+0x3ef:
fffff803`d99697c7 0fb645b1        movzx   eax,byte ptr [rbp-4Fh]
fffff803`d99697cb 458b1e          mov     r11d,dword ptr [r14]
fffff803`d99697ce c1e00c          shl     eax,0Ch
fffff803`d99697d1 334778          xor     eax,dword ptr [rdi+78h]
fffff803`d99697d4 2500100000      and     eax,1000h
fffff803`d99697d9 314778          xor     dword ptr [rdi+78h],eax
fffff803`d99697dc e9c8fdffff      jmp     nt!KeStartThread+0x1d1 (fffff803`d99695a9)

nt!KeStartThread+0x409:
fffff803`d99697e1 488d4db8        lea     rcx,[rbp-48h]
fffff803`d99697e5 e886adfdff      call    nt!KxWaitForLockChainValid (fffff803`d9944570)

nt!KeStartThread+0x412:
fffff803`d99697ea 41b801000000    mov     r8d,1
fffff803`d99697f0 f04c314008      lock xor qword ptr [rax+8],r8
fffff803`d99697f5 4c896db8        mov     qword ptr [rbp-48h],r13
fffff803`d99697f9 e97cfeffff      jmp     nt!KeStartThread+0x2a2 (fffff803`d996967a)

nt!KeStartThread+0x426:
fffff803`d99697fe f00fba2f12      lock bts dword ptr [rdi],12h
fffff803`d9969803 e90bffffff      jmp     nt!KeStartThread+0x33b (fffff803`d9969713)

nt!KeStartThread+0x430:
fffff803`d9969808 8b0d3e4c2700    mov     ecx,dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)]
fffff803`d996980e 41ffc6          inc     r14d
fffff803`d9969811 4185ce          test    r14d,ecx
fffff803`d9969814 0f849b510300    je      nt! ?? ::FNODOBFM::`string'+0xebd9 (fffff803`d999e9b5)

nt!KeStartThread+0x442:
fffff803`d996981a f390            pause

nt!KeStartThread+0x444:
fffff803`d996981c 418b0424        mov     eax,dword ptr [r12]
fffff803`d9969820 3d00000080      cmp     eax,80000000h
fffff803`d9969825 75e1            jne     nt!KeStartThread+0x430 (fffff803`d9969808)

nt!KeStartThread+0x44f:
fffff803`d9969827 e975fcffff      jmp     nt!KeStartThread+0xc9 (fffff803`d99694a1)

nt!KeStartThread+0x454:
fffff803`d996982c f390            pause
fffff803`d996982e e946520300      jmp     nt! ?? ::FNODOBFM::`string'+0xec9d (fffff803`d999ea79)

nt! ?? ::FNODOBFM::`string'+0xeb94:
fffff803`d999e970 48833a00        cmp     qword ptr [rdx],0
fffff803`d999e974 0f84a7aafcff    je      nt!KeStartThread+0x49 (fffff803`d9969421)

nt! ?? ::FNODOBFM::`string'+0xeb9e:
fffff803`d999e97a 488bca          mov     rcx,rdx
fffff803`d999e97d e83a47f1ff      call    nt!KeSelectNodeForAffinity (fffff803`d98b30bc)
fffff803`d999e982 c645b000        mov     byte ptr [rbp-50h],0
fffff803`d999e986 8b8880000000    mov     ecx,dword ptr [rax+80h]
fffff803`d999e98c 4c8bf8          mov     r15,rax
fffff803`d999e98f 894db4          mov     dword ptr [rbp-4Ch],ecx
fffff803`d999e992 e9a3aafcff      jmp     nt!KeStartThread+0x62 (fffff803`d996943a)

nt! ?? ::FNODOBFM::`string'+0xebbb:
fffff803`d999e997 498bcc          mov     rcx,r12
fffff803`d999e99a e805b70a00      call    nt!ExpAcquireSpinLockExclusiveAtDpcLevelInstrumented (fffff803`d9a4a0a4)
fffff803`d999e99f 90              nop
fffff803`d999e9a0 e900abfcff      jmp     nt!KeStartThread+0xcd (fffff803`d99694a5)

nt! ?? ::FNODOBFM::`string'+0xebc9:
fffff803`d999e9a5 498bcc          mov     rcx,r12
fffff803`d999e9a8 e80f2df2ff      call    nt!ExpWaitForSpinLockExclusiveAndAcquire (fffff803`d98c16bc)
fffff803`d999e9ad 448bf0          mov     r14d,eax
fffff803`d999e9b0 e9dcaafcff      jmp     nt!KeStartThread+0xb9 (fffff803`d9969491)

nt! ?? ::FNODOBFM::`string'+0xebd9:
fffff803`d999e9b5 8b05b5f62300    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d999e9bb a840            test    al,40h
fffff803`d999e9bd 0f8457aefcff    je      nt!KeStartThread+0x442 (fffff803`d996981a)

nt! ?? ::FNODOBFM::`string'+0xebe7:
fffff803`d999e9c3 418bce          mov     ecx,r14d
fffff803`d999e9c6 e8f9090500      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d999e9cb 90              nop
fffff803`d999e9cc e94baefcff      jmp     nt!KeStartThread+0x444 (fffff803`d996981c)

nt! ?? ::FNODOBFM::`string'+0xebf5:
fffff803`d999e9d1 66ffc1          inc     cx
fffff803`d999e9d4 663bca          cmp     cx,dx
fffff803`d999e9d7 0f821eabfcff    jb      nt!KeStartThread+0x123 (fffff803`d99694fb)

nt! ?? ::FNODOBFM::`string'+0xec01:
fffff803`d999e9dd e941abfcff      jmp     nt!KeStartThread+0x14b (fffff803`d9969523)

nt! ?? ::FNODOBFM::`string'+0xec06:
fffff803`d999e9e2 410fb7d0        movzx   edx,r8w
fffff803`d999e9e6 488bcb          mov     rcx,rbx
fffff803`d999e9e9 e87e6c0600      call    nt!KiExtendProcessAffinity (fffff803`d9a0566c)
fffff803`d999e9ee 41bb08000000    mov     r11d,8
fffff803`d999e9f4 e9a8adfcff      jmp     nt!KeStartThread+0x3c9 (fffff803`d99697a1)

nt! ?? ::FNODOBFM::`string'+0xec1d:
fffff803`d999e9f9 0fb74608        movzx   eax,word ptr [rsi+8]
fffff803`d999e9fd 488b4cc350      mov     rcx,qword ptr [rbx+rax*8+50h]
fffff803`d999ea02 48890e          mov     qword ptr [rsi],rcx
fffff803`d999ea05 e91dabfcff      jmp     nt!KeStartThread+0x14f (fffff803`d9969527)

nt! ?? ::FNODOBFM::`string'+0xec2e:
fffff803`d999ea0a 488d4db8        lea     rcx,[rbp-48h]
fffff803`d999ea0e e8dd2c0600      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d999ea13 90              nop
fffff803`d999ea14 e9f4abfcff      jmp     nt!KeStartThread+0x235 (fffff803`d996960d)

nt! ?? ::FNODOBFM::`string'+0xec3d:
fffff803`d999ea19 488d4db8        lea     rcx,[rbp-48h]
fffff803`d999ea1d e8beb7f8ff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d999ea22 90              nop
fffff803`d999ea23 e9e5abfcff      jmp     nt!KeStartThread+0x235 (fffff803`d996960d)

nt! ?? ::FNODOBFM::`string'+0xec4c:
fffff803`d999ea28 b903000000      mov     ecx,3
fffff803`d999ea2d cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xec53:
fffff803`d999ea2f 488b5538        mov     rdx,qword ptr [rbp+38h]
fffff803`d999ea33 488d4db8        lea     rcx,[rbp-48h]
fffff803`d999ea37 e8942b0600      call    nt!KiReleaseQueuedSpinLockInstrumented (fffff803`d9a015d0)
fffff803`d999ea3c 90              nop
fffff803`d999ea3d e932acfcff      jmp     nt!KeStartThread+0x29c (fffff803`d9969674)

nt! ?? ::FNODOBFM::`string'+0xec66:
fffff803`d999ea42 f00fba777804    lock btr dword ptr [rdi+78h],4
fffff803`d999ea48 e965acfcff      jmp     nt!KeStartThread+0x2da (fffff803`d99696b2)

nt! ?? ::FNODOBFM::`string'+0xec71:
fffff803`d999ea4d 4503f0          add     r14d,r8d
fffff803`d999ea50 448535f5f92300  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],r14d
fffff803`d999ea57 0f85cfadfcff    jne     nt!KeStartThread+0x454 (fffff803`d996982c)

nt! ?? ::FNODOBFM::`string'+0xec81:
fffff803`d999ea5d 8b050df62300    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d999ea63 a840            test    al,40h
fffff803`d999ea65 0f84c1adfcff    je      nt!KeStartThread+0x454 (fffff803`d996982c)

nt! ?? ::FNODOBFM::`string'+0xec8f:
fffff803`d999ea6b 418bce          mov     ecx,r14d
fffff803`d999ea6e e851090500      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d999ea73 41b801000000    mov     r8d,1

nt! ?? ::FNODOBFM::`string'+0xec9d:
fffff803`d999ea79 8b03            mov     eax,dword ptr [rbx]
fffff803`d999ea7b 84c0            test    al,al
fffff803`d999ea7d 78ce            js      nt! ?? ::FNODOBFM::`string'+0xec71 (fffff803`d999ea4d)

nt! ?? ::FNODOBFM::`string'+0xeca3:
fffff803`d999ea7f e935acfcff      jmp     nt!KeStartThread+0x2e1 (fffff803`d99696b9)

nt! ?? ::FNODOBFM::`string'+0xeca8:
fffff803`d999ea84 b903000000      mov     ecx,3
fffff803`d999ea89 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xecaf:
fffff803`d999ea8b 65488b0c2520000000 mov   rcx,qword ptr gs:[20h]
fffff803`d999ea94 488bd7          mov     rdx,rdi
fffff803`d999ea97 e860110100      call    nt!KiFreezeSingleThread (fffff803`d99afbfc)
fffff803`d999ea9c 90              nop
fffff803`d999ea9d e959acfcff      jmp     nt!KeStartThread+0x323 (fffff803`d99696fb)

nt! ?? ::FNODOBFM::`string'+0xecc6:
fffff803`d999eaa2 488b5538        mov     rdx,qword ptr [rbp+38h]
fffff803`d999eaa6 498bcc          mov     rcx,r12
fffff803`d999eaa9 e8d2b50a00      call    nt!ExpReleaseSpinLockExclusiveFromDpcLevelInstrumented (fffff803`d9a4a080)
fffff803`d999eaae 90              nop
fffff803`d999eaaf e970acfcff      jmp     nt!KeStartThread+0x34c (fffff803`d9969724)
