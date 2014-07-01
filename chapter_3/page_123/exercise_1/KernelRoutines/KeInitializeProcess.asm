0: kd> uf KeInitializeProcess 
nt!KeInitializeGuardedMutex:
fffff800`11d605a4 c70101000000    mov     dword ptr [rcx],1
fffff800`11d605aa 33c0            xor     eax,eax
fffff800`11d605ac 48894108        mov     qword ptr [rcx+8],rax
fffff800`11d605b0 894110          mov     dword ptr [rcx+10h],eax
fffff800`11d605b3 89411c          mov     dword ptr [rcx+1Ch],eax
fffff800`11d605b6 488d4120        lea     rax,[rcx+20h]
fffff800`11d605ba 66c741180100    mov     word ptr [rcx+18h],1
fffff800`11d605c0 c6411a06        mov     byte ptr [rcx+1Ah],6
fffff800`11d605c4 48894008        mov     qword ptr [rax+8],rax
fffff800`11d605c8 488900          mov     qword ptr [rax],rax
fffff800`11d605cb c3              ret

nt!KeInitializeProcess:
fffff800`12111010 488bc4          mov     rax,rsp
fffff800`12111013 48895808        mov     qword ptr [rax+8],rbx
fffff800`12111017 48896810        mov     qword ptr [rax+10h],rbp
fffff800`1211101b 48897018        mov     qword ptr [rax+18h],rsi
fffff800`1211101f 48897820        mov     qword ptr [rax+20h],rdi
fffff800`12111023 4157            push    r15
fffff800`12111025 4883ec20        sub     rsp,20h
fffff800`12111029 c60103          mov     byte ptr [rcx],3
fffff800`1211102c c64102b2        mov     byte ptr [rcx+2],0B2h
fffff800`12111030 488d4108        lea     rax,[rcx+8]
fffff800`12111034 48894008        mov     qword ptr [rax+8],rax
fffff800`12111038 488900          mov     qword ptr [rax],rax
fffff800`1211103b 8891b4010000    mov     byte ptr [rcx+1B4h],dl
fffff800`12111041 83a10c01000000  and     dword ptr [rcx+10Ch],0
fffff800`12111048 c7810801000014001400 mov dword ptr [rcx+108h],140014h
fffff800`12111052 498bf0          mov     rsi,r8
fffff800`12111055 488bd9          mov     rbx,rcx
fffff800`12111058 33d2            xor     edx,edx
fffff800`1211105a 41b8a0000000    mov     r8d,0A0h
fffff800`12111060 4881c110010000  add     rcx,110h
fffff800`12111067 498be9          mov     rbp,r9
fffff800`1211106a e8516abeff      call    nt!memset (fffff800`11cf7ac0)
fffff800`1211106f 0fb6442458      movzx   eax,byte ptr [rsp+58h]
fffff800`12111074 bf01000000      mov     edi,1
fffff800`12111079 3383b0010000    xor     eax,dword ptr [rbx+1B0h]
fffff800`1211107f 488d4b50        lea     rcx,[rbx+50h]
fffff800`12111083 33d2            xor     edx,edx
fffff800`12111085 23c7            and     eax,edi
fffff800`12111087 41b8a0000000    mov     r8d,0A0h
fffff800`1211108d 3183b0010000    xor     dword ptr [rbx+1B0h],eax
fffff800`12111093 83634c00        and     dword ptr [rbx+4Ch],0
fffff800`12111097 c7434801001400  mov     dword ptr [rbx+48h],140001h
fffff800`1211109e e81d6abeff      call    nt!memset (fffff800`11cf7ac0)
fffff800`121110a3 0fb74e08        movzx   ecx,word ptr [rsi+8]
fffff800`121110a7 4c8b1e          mov     r11,qword ptr [rsi]
fffff800`121110aa 66394b48        cmp     word ptr [rbx+48h],cx
fffff800`121110ae 0f864c8e1500    jbe     nt! ?? ::NNGAKEGL::`string'+0x2d150 (fffff800`12269f00)

nt!KeInitializeProcess+0xa4:
fffff800`121110b4 0fb7c1          movzx   eax,cx
fffff800`121110b7 4c095cc350      or      qword ptr [rbx+rax*8+50h],r11
fffff800`121110bc 8a4e08          mov     cl,byte ptr [rsi+8]
fffff800`121110bf d3e7            shl     edi,cl
fffff800`121110c1 c1e706          shl     edi,6
fffff800`121110c4 33bbb0010000    xor     edi,dword ptr [rbx+1B0h]
fffff800`121110ca 81e7c0ffff03    and     edi,3FFFFC0h
fffff800`121110d0 31bbb0010000    xor     dword ptr [rbx+1B0h],edi
fffff800`121110d6 488b16          mov     rdx,qword ptr [rsi]
fffff800`121110d9 0fb74e08        movzx   ecx,word ptr [rsi+8]
fffff800`121110dd e88ef1c4ff      call    nt!KiTestNodeAffinity (fffff800`11d60270)
fffff800`121110e2 84c0            test    al,al
fffff800`121110e4 0f84228e1500    je      nt! ?? ::NNGAKEGL::`string'+0x2d15c (fffff800`12269f0c)

nt!KeInitializeProcess+0xda:
fffff800`121110ea 488d4318        lea     rax,[rbx+18h]
fffff800`121110ee 488bd5          mov     rdx,rbp
fffff800`121110f1 488bcb          mov     rcx,rbx
fffff800`121110f4 48894008        mov     qword ptr [rax+8],rax
fffff800`121110f8 488900          mov     qword ptr [rax],rax
fffff800`121110fb 488d83f0000000  lea     rax,[rbx+0F0h]
fffff800`12111102 48894008        mov     qword ptr [rax+8],rax
fffff800`12111106 488900          mov     qword ptr [rax],rax
fffff800`12111109 488d4330        lea     rax,[rbx+30h]
fffff800`1211110d 48894008        mov     qword ptr [rax+8],rax
fffff800`12111111 488900          mov     qword ptr [rax],rax
fffff800`12111114 83a33402000000  and     dword ptr [rbx+234h],0
fffff800`1211111b c683b501000006  mov     byte ptr [rbx+1B5h],6
fffff800`12111122 440fb74608      movzx   r8d,word ptr [rsi+8]
fffff800`12111127 e86404c5ff      call    nt!KiSetIdealNodeProcessByGroup (fffff800`11d61590)
fffff800`1211112c 440fb75e08      movzx   r11d,word ptr [rsi+8]
fffff800`12111131 488d8b88020000  lea     rcx,[rbx+288h]
fffff800`12111138 420fb7845b08020000 movzx eax,word ptr [rbx+r11*2+208h]
fffff800`12111141 66898330020000  mov     word ptr [rbx+230h],ax
fffff800`12111148 488b442450      mov     rax,qword ptr [rsp+50h]
fffff800`1211114d 48898358020000  mov     qword ptr [rbx+258h],rax
fffff800`12111154 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff800`12111159 488b6c2438      mov     rbp,qword ptr [rsp+38h]
fffff800`1211115e 488b742440      mov     rsi,qword ptr [rsp+40h]
fffff800`12111163 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff800`12111168 4883c420        add     rsp,20h
fffff800`1211116c 415f            pop     r15
fffff800`1211116e e931f4c4ff      jmp     nt!KeInitializeGuardedMutex (fffff800`11d605a4)

nt! ?? ::NNGAKEGL::`string'+0x2d150:
fffff800`12269f00 8d0439          lea     eax,[rcx+rdi]
fffff800`12269f03 66894348        mov     word ptr [rbx+48h],ax
fffff800`12269f07 e9a871eaff      jmp     nt!KeInitializeProcess+0xa4 (fffff800`121110b4)

nt! ?? ::NNGAKEGL::`string'+0x2d15c:
fffff800`12269f0c 838bb001000008  or      dword ptr [rbx+1B0h],8
fffff800`12269f13 e9d271eaff      jmp     nt!KeInitializeProcess+0xda (fffff800`121110ea)
