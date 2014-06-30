0: kd> uf KeInitializeMutex
nt!KeInitializeMutex:
fffff800`11cb6cec 488d4108        lea     rax,[rcx+8]
fffff800`11cb6cf0 c60102          mov     byte ptr [rcx],2
fffff800`11cb6cf3 66c741020e00    mov     word ptr [rcx+2],0Eh
fffff800`11cb6cf9 c7410401000000  mov     dword ptr [rcx+4],1
fffff800`11cb6d00 33d2            xor     edx,edx
fffff800`11cb6d02 48895128        mov     qword ptr [rcx+28h],rdx
fffff800`11cb6d06 48894008        mov     qword ptr [rax+8],rax
fffff800`11cb6d0a 488900          mov     qword ptr [rax],rax
fffff800`11cb6d0d 66c741300001    mov     word ptr [rcx+30h],100h
fffff800`11cb6d13 c3              ret
