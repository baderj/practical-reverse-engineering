0: kd> uf ExCreateCallback
nt!ExCreateCallback:
fffff800`12137f00 488bc4          mov     rax,rsp
fffff800`12137f03 48895808        mov     qword ptr [rax+8],rbx
fffff800`12137f07 48897018        mov     qword ptr [rax+18h],rsi
fffff800`12137f0b 48897820        mov     qword ptr [rax+20h],rdi
fffff800`12137f0f 55              push    rbp
fffff800`12137f10 4156            push    r14
fffff800`12137f12 4157            push    r15
fffff800`12137f14 488d68a1        lea     rbp,[rax-5Fh]
fffff800`12137f18 4881ec90000000  sub     rsp,90h
fffff800`12137f1f 488bf1          mov     rsi,rcx
fffff800`12137f22 418af8          mov     dil,r8b
fffff800`12137f25 488d4d0f        lea     rcx,[rbp+0Fh]
fffff800`12137f29 41b830000000    mov     r8d,30h
fffff800`12137f2f 458af1          mov     r14b,r9b
fffff800`12137f32 e8c952b9ff      call    nt!memcpy (fffff800`11ccd200)
fffff800`12137f37 0fba6d2709      bts     dword ptr [rbp+27h],9
fffff800`12137f3c 4533ff          xor     r15d,r15d
fffff800`12137f3f 4c897d6f        mov     qword ptr [rbp+6Fh],r15
fffff800`12137f43 4c897d07        mov     qword ptr [rbp+7],r15
fffff800`12137f47 4c397d1f        cmp     qword ptr [rbp+1Fh],r15
fffff800`12137f4b 0f8416010000    je      nt!ExCreateCallback+0x167 (fffff800`12138067)

nt!ExCreateCallback+0x51:
fffff800`12137f51 488b15c81dddff  mov     rdx,qword ptr [nt!ExCallbackObjectType (fffff800`11f09d20)]
fffff800`12137f58 488d456f        lea     rax,[rbp+6Fh]
fffff800`12137f5c 488d4d0f        lea     rcx,[rbp+0Fh]
fffff800`12137f60 4889442430      mov     qword ptr [rsp+30h],rax
fffff800`12137f65 4533c9          xor     r9d,r9d
fffff800`12137f68 4533c0          xor     r8d,r8d
fffff800`12137f6b 4c897c2428      mov     qword ptr [rsp+28h],r15
fffff800`12137f70 44897c2420      mov     dword ptr [rsp+20h],r15d
fffff800`12137f75 e87692f7ff      call    nt!ObOpenObjectByName (fffff800`120b11f0)
fffff800`12137f7a 8bd8            mov     ebx,eax

nt!ExCreateCallback+0x7c:
fffff800`12137f7c 85db            test    ebx,ebx
fffff800`12137f7e 7928            jns     nt!ExCreateCallback+0xa8 (fffff800`12137fa8)

nt!ExCreateCallback+0x80:
fffff800`12137f80 4084ff          test    dil,dil
fffff800`12137f83 755e            jne     nt!ExCreateCallback+0xe3 (fffff800`12137fe3)

nt!ExCreateCallback+0x85:
fffff800`12137f85 85db            test    ebx,ebx
fffff800`12137f87 791f            jns     nt!ExCreateCallback+0xa8 (fffff800`12137fa8)

nt!ExCreateCallback+0x89:
fffff800`12137f89 4c8d9c2490000000 lea     r11,[rsp+90h]
fffff800`12137f91 8bc3            mov     eax,ebx
fffff800`12137f93 498b5b20        mov     rbx,qword ptr [r11+20h]
fffff800`12137f97 498b7330        mov     rsi,qword ptr [r11+30h]
fffff800`12137f9b 498b7b38        mov     rdi,qword ptr [r11+38h]
fffff800`12137f9f 498be3          mov     rsp,r11
fffff800`12137fa2 415f            pop     r15
fffff800`12137fa4 415e            pop     r14
fffff800`12137fa6 5d              pop     rbp
fffff800`12137fa7 c3              ret

nt!ExCreateCallback+0xa8:
fffff800`12137fa8 4c8b05711dddff  mov     r8,qword ptr [nt!ExCallbackObjectType (fffff800`11f09d20)]
fffff800`12137faf 488b4d6f        mov     rcx,qword ptr [rbp+6Fh]
fffff800`12137fb3 488d4507        lea     rax,[rbp+7]
fffff800`12137fb7 4533c9          xor     r9d,r9d
fffff800`12137fba 33d2            xor     edx,edx
fffff800`12137fbc 4c897c2428      mov     qword ptr [rsp+28h],r15
fffff800`12137fc1 4889442420      mov     qword ptr [rsp+20h],rax
fffff800`12137fc6 e8e52ef7ff      call    nt!ObReferenceObjectByHandle (fffff800`120aaeb0)
fffff800`12137fcb 488b4d6f        mov     rcx,qword ptr [rbp+6Fh]
fffff800`12137fcf 8bd8            mov     ebx,eax
fffff800`12137fd1 e80ab2b9ff      call    nt!ZwClose (fffff800`11cd31e0)
fffff800`12137fd6 85db            test    ebx,ebx
fffff800`12137fd8 78af            js      nt!ExCreateCallback+0x89 (fffff800`12137f89)

nt!ExCreateCallback+0xda:
fffff800`12137fda 488b4507        mov     rax,qword ptr [rbp+7]
fffff800`12137fde 488906          mov     qword ptr [rsi],rax
fffff800`12137fe1 eba6            jmp     nt!ExCreateCallback+0x89 (fffff800`12137f89)

nt!ExCreateCallback+0xe3:
fffff800`12137fe3 488b15361dddff  mov     rdx,qword ptr [nt!ExCallbackObjectType (fffff800`11f09d20)]
fffff800`12137fea 488d4507        lea     rax,[rbp+7]
fffff800`12137fee 4c8d450f        lea     r8,[rbp+0Fh]
fffff800`12137ff2 4889442440      mov     qword ptr [rsp+40h],rax
fffff800`12137ff7 44897c2438      mov     dword ptr [rsp+38h],r15d
fffff800`12137ffc 44897c2430      mov     dword ptr [rsp+30h],r15d
fffff800`12138001 4533c9          xor     r9d,r9d
fffff800`12138004 33c9            xor     ecx,ecx
fffff800`12138006 c744242828000000 mov     dword ptr [rsp+28h],28h
fffff800`1213800e 4c897c2420      mov     qword ptr [rsp+20h],r15
fffff800`12138013 e8e83ef7ff      call    nt!ObCreateObject (fffff800`120abf00)
fffff800`12138018 8bd8            mov     ebx,eax
fffff800`1213801a 85c0            test    eax,eax
fffff800`1213801c 0f8867ffffff    js      nt!ExCreateCallback+0x89 (fffff800`12137f89)

nt!ExCreateCallback+0x122:
fffff800`12138022 488b4d07        mov     rcx,qword ptr [rbp+7]
fffff800`12138026 4533c9          xor     r9d,r9d
fffff800`12138029 33d2            xor     edx,edx
fffff800`1213802b c70143616c6c    mov     dword ptr [rcx],6C6C6143h
fffff800`12138031 488d4110        lea     rax,[rcx+10h]
fffff800`12138035 44887120        mov     byte ptr [rcx+20h],r14b
fffff800`12138039 48894008        mov     qword ptr [rax+8],rax
fffff800`1213803d 488900          mov     qword ptr [rax],rax
fffff800`12138040 488d456f        lea     rax,[rbp+6Fh]
fffff800`12138044 4889442430      mov     qword ptr [rsp+30h],rax
fffff800`12138049 458d4101        lea     r8d,[r9+1]
fffff800`1213804d 4c897c2428      mov     qword ptr [rsp+28h],r15
fffff800`12138052 44897c2420      mov     dword ptr [rsp+20h],r15d
fffff800`12138057 4c897908        mov     qword ptr [rcx+8],r15
fffff800`1213805b e8509bfaff      call    nt!ObInsertObjectEx (fffff800`120e1bb0)
fffff800`12138060 8bd8            mov     ebx,eax
fffff800`12138062 e91effffff      jmp     nt!ExCreateCallback+0x85 (fffff800`12137f85)

nt!ExCreateCallback+0x167:
fffff800`12138067 bb010000c0      mov     ebx,0C0000001h
fffff800`1213806c e90bffffff      jmp     nt!ExCreateCallback+0x7c (fffff800`12137f7c)
