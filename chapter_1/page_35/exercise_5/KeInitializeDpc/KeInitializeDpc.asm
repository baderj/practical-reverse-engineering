81a41776 8bff            mov     edi,edi
81a41778 55              push    ebp
81a41779 8bec            mov     ebp,esp
81a4177b 8b4508          mov     eax,dword ptr [ebp+8]
81a4177e 8b4d0c          mov     ecx,dword ptr [ebp+0Ch]
81a41781 83601c00        and     dword ptr [eax+1Ch],0
81a41785 89480c          mov     dword ptr [eax+0Ch],ecx
81a41788 8b4d10          mov     ecx,dword ptr [ebp+10h]
81a4178b c60013          mov     byte ptr [eax],13h
81a4178e c6400101        mov     byte ptr [eax+1],1
81a41792 66c740020000    mov     word ptr [eax+2],0
81a41798 894810          mov     dword ptr [eax+10h],ecx
81a4179b 5d              pop     ebp
81a4179c c20c00          ret     0Ch
