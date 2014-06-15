kd> uf ObFastDereferenceObject
nt!ObFastDereferenceObject:
81aadb39 8bff            mov     edi,edi
81aadb3b 55              push    ebp
81aadb3c 8bec            mov     ebp,esp
81aadb3e 8b0a            mov     ecx,dword ptr [edx]
81aadb40 56              push    esi
81aadb41 57              push    edi
81aadb42 8bc1            mov     eax,ecx
81aadb44 eb13            jmp     nt!ObFastDereferenceObject+0x20 (81aadb59)

nt!ObFastDereferenceObject+0xd:
81aadb46 8d4101          lea     eax,[ecx+1]
81aadb49 8bf0            mov     esi,eax
81aadb4b 8bfa            mov     edi,edx
81aadb4d 8bc1            mov     eax,ecx
81aadb4f f00fb137        lock cmpxchg dword ptr [edi],esi
81aadb53 3bc1            cmp     eax,ecx
81aadb55 7412            je      nt!ObFastDereferenceObject+0x30 (81aadb69)

nt!ObFastDereferenceObject+0x1e:
81aadb57 8bc8            mov     ecx,eax

nt!ObFastDereferenceObject+0x20:
81aadb59 334508          xor     eax,dword ptr [ebp+8]
81aadb5c 83f807          cmp     eax,7
81aadb5f 72e5            jb      nt!ObFastDereferenceObject+0xd (81aadb46)

nt!ObFastDereferenceObject+0x28:
81aadb61 8b4d08          mov     ecx,dword ptr [ebp+8]
81aadb64 e8c671f9ff      call    nt!ObfDereferenceObject (81a44d2f)

nt!ObFastDereferenceObject+0x30:
81aadb69 5f              pop     edi
81aadb6a 5e              pop     esi
81aadb6b 5d              pop     ebp
81aadb6c c20400          ret     4
