81ab3956 8bff            mov     edi,edi
81ab3958 55              push    ebp
81ab3959 8bec            mov     ebp,esp
81ab395b 8b4508          mov     eax,dword ptr [ebp+8]
81ab395e 8b5510          mov     edx,dword ptr [ebp+10h]
81ab3961 83fa02          cmp     edx,2
81ab3964 8b4d0c          mov     ecx,dword ptr [ebp+0Ch]
81ab3967 c60012          mov     byte ptr [eax],12h
81ab396a c6400230        mov     byte ptr [eax+2],30h
81ab396e 7506            jne     nt!KeInitializeApc+0x20 (81ab3976)

nt!KeInitializeApc+0x1a:
81ab3970 8a9130010000    mov     dl,byte ptr [ecx+130h]

nt!KeInitializeApc+0x20:
81ab3976 894808          mov     dword ptr [eax+8],ecx
81ab3979 8b4d14          mov     ecx,dword ptr [ebp+14h]
81ab397c 894814          mov     dword ptr [eax+14h],ecx
81ab397f 8b4d18          mov     ecx,dword ptr [ebp+18h]
81ab3982 88502c          mov     byte ptr [eax+2Ch],dl
81ab3985 894818          mov     dword ptr [eax+18h],ecx
81ab3988 8b4d1c          mov     ecx,dword ptr [ebp+1Ch]
81ab398b 33d2            xor     edx,edx
81ab398d 3bca            cmp     ecx,edx
81ab398f 89481c          mov     dword ptr [eax+1Ch],ecx
81ab3992 740e            je      nt!KeInitializeApc+0x4c (81ab39a2)

nt!KeInitializeApc+0x3e:
81ab3994 8a4d20          mov     cl,byte ptr [ebp+20h]
81ab3997 88482d          mov     byte ptr [eax+2Dh],cl
81ab399a 8b4d24          mov     ecx,dword ptr [ebp+24h]
81ab399d 894820          mov     dword ptr [eax+20h],ecx
81ab39a0 eb06            jmp     nt!KeInitializeApc+0x52 (81ab39a8)

nt!KeInitializeApc+0x4c:
81ab39a2 88502d          mov     byte ptr [eax+2Dh],dl
81ab39a5 895020          mov     dword ptr [eax+20h],edx

nt!KeInitializeApc+0x52:
81ab39a8 88502e          mov     byte ptr [eax+2Eh],dl
81ab39ab 5d              pop     ebp
81ab39ac c22000          ret     20h
