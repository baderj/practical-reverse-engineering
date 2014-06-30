0: kd> uf KeInitializeTimerEx
nt!KeInitializeTimerEx:
fffff800`11d2e5b0 4533c0          xor     r8d,r8d
fffff800`11d2e5b3 488d4108        lea     rax,[rcx+8]
fffff800`11d2e5b7 80c208          add     dl,8
fffff800`11d2e5ba 4c8901          mov     qword ptr [rcx],r8
fffff800`11d2e5bd 8811            mov     byte ptr [rcx],dl
fffff800`11d2e5bf 48894008        mov     qword ptr [rax+8],rax
fffff800`11d2e5c3 488900          mov     qword ptr [rax],rax
fffff800`11d2e5c6 4c894118        mov     qword ptr [rcx+18h],r8
fffff800`11d2e5ca 4c894138        mov     qword ptr [rcx+38h],r8
fffff800`11d2e5ce c3              ret
