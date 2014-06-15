kd> uf KiInitializeTSS
nt!KiInitializeTSS:
81a16eea 8bff            mov     edi,edi
81a16eec 55              push    ebp
81a16eed 8bec            mov     ebp,esp
81a16eef 8b4508          mov     eax,dword ptr [ebp+8]
81a16ef2 6683606400      and     word ptr [eax+64h],0
81a16ef7 6683606000      and     word ptr [eax+60h],0
81a16efc 66c74066ac20    mov     word ptr [eax+66h],20ACh
81a16f02 66c740081000    mov     word ptr [eax+8],10h
81a16f08 5d              pop     ebp
81a16f09 c20400          ret     4
