nt!KeInitializeQueue:
81a3c346 8bff            mov     edi,edi
81a3c348 55              push    ebp
81a3c349 8bec            mov     ebp,esp
81a3c34b 8b4508          mov     eax,dword ptr [ebp+8]
81a3c34e c60004          mov     byte ptr [eax],4
81a3c351 33d2            xor     edx,edx
81a3c353 885001          mov     byte ptr [eax+1],dl
81a3c356 c640020a        mov     byte ptr [eax+2],0Ah
81a3c35a 895004          mov     dword ptr [eax+4],edx
81a3c35d 8d4808          lea     ecx,[eax+8]
81a3c360 894904          mov     dword ptr [ecx+4],ecx
81a3c363 8909            mov     dword ptr [ecx],ecx
81a3c365 8d4810          lea     ecx,[eax+10h]
81a3c368 894904          mov     dword ptr [ecx+4],ecx
81a3c36b 8909            mov     dword ptr [ecx],ecx
81a3c36d 8d4820          lea     ecx,[eax+20h]
81a3c370 894904          mov     dword ptr [ecx+4],ecx
81a3c373 8909            mov     dword ptr [ecx],ecx
81a3c375 8b4d0c          mov     ecx,dword ptr [ebp+0Ch]
81a3c378 3bca            cmp     ecx,edx
81a3c37a 895018          mov     dword ptr [eax+18h],edx
81a3c37d 7509            jne     nt!KeInitializeQueue+0x42 (81a3c388)

nt!KeInitializeQueue+0x39:
81a3c37f 8a0dee49b581    mov     cl,byte ptr [nt!KeNumberProcessors (81b549ee)]
81a3c385 0fbec9          movsx   ecx,cl

nt!KeInitializeQueue+0x42:
81a3c388 89481c          mov     dword ptr [eax+1Ch],ecx
81a3c38b 5d              pop     ebp
81a3c38c c20800          ret     8