0: kd> uf IoInitializeIrp
nt!IoInitializeIrp:
fffff800`11ca06e0 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`11ca06e5 4889742410      mov     qword ptr [rsp+10h],rsi
fffff800`11ca06ea 57              push    rdi
fffff800`11ca06eb 4883ec20        sub     rsp,20h
fffff800`11ca06ef 48833d59f0260000 cmp     qword ptr [nt!ViVerifierDriverAddedThunkListHead (fffff800`11f0f750)],0
fffff800`11ca06f7 418af8          mov     dil,r8b
fffff800`11ca06fa 0fb7f2          movzx   esi,dx
fffff800`11ca06fd 488bd9          mov     rbx,rcx
fffff800`11ca0700 0f85a2b01a00    jne     nt! ?? ::FNODOBFM::`string'+0xac86 (fffff800`11e4b7a8)

nt!IoInitializeIrp+0x26:
fffff800`11ca0706 440fb7c6        movzx   r8d,si
fffff800`11ca070a 33d2            xor     edx,edx
fffff800`11ca070c 488bcb          mov     rcx,rbx
fffff800`11ca070f e8ac730500      call    nt!memset (fffff800`11cf7ac0)
fffff800`11ca0714 66897302        mov     word ptr [rbx+2],si
fffff800`11ca0718 488b742438      mov     rsi,qword ptr [rsp+38h]
fffff800`11ca071d 40887b42        mov     byte ptr [rbx+42h],dil
fffff800`11ca0721 8d4701          lea     eax,[rdi+1]
fffff800`11ca0724 41bb06000000    mov     r11d,6
fffff800`11ca072a 884343          mov     byte ptr [rbx+43h],al
fffff800`11ca072d 6644891b        mov     word ptr [rbx],r11w
fffff800`11ca0731 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff800`11ca073a 8a8842020000    mov     cl,byte ptr [rax+242h]
fffff800`11ca0740 488d4320        lea     rax,[rbx+20h]
fffff800`11ca0744 884b46          mov     byte ptr [rbx+46h],cl
fffff800`11ca0747 48894008        mov     qword ptr [rax+8],rax
fffff800`11ca074b 488900          mov     qword ptr [rax],rax
fffff800`11ca074e 480fbec7        movsx   rax,dil
fffff800`11ca0752 488d04c0        lea     rax,[rax+rax*8]
fffff800`11ca0756 4883c01a        add     rax,1Ah
fffff800`11ca075a 488d04c3        lea     rax,[rbx+rax*8]
fffff800`11ca075e 488983b8000000  mov     qword ptr [rbx+0B8h],rax
fffff800`11ca0765 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff800`11ca076a 4883c420        add     rsp,20h
fffff800`11ca076e 5f              pop     rdi
fffff800`11ca076f c3              ret

nt! ?? ::FNODOBFM::`string'+0xac86:
fffff800`11e4b7a8 e883cf4600      call    nt!IovInitializeIrp (fffff800`122b8730)
fffff800`11e4b7ad 90              nop
fffff800`11e4b7ae e9534fe5ff      jmp     nt!IoInitializeIrp+0x26 (fffff800`11ca0706)
