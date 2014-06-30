0: kd> uf MiInitializePrefetchHead
nt!MiInitializePrefetchHead:
fffff800`11db2bc4 488d4108        lea     rax,[rcx+8]
fffff800`11db2bc8 48894008        mov     qword ptr [rax+8],rax
fffff800`11db2bcc 488900          mov     qword ptr [rax],rax
fffff800`11db2bcf 488d4118        lea     rax,[rcx+18h]
fffff800`11db2bd3 48894008        mov     qword ptr [rax+8],rax
fffff800`11db2bd7 488900          mov     qword ptr [rax],rax
fffff800`11db2bda 488d4128        lea     rax,[rcx+28h]
fffff800`11db2bde 48894008        mov     qword ptr [rax+8],rax
fffff800`11db2be2 488900          mov     qword ptr [rax],rax
fffff800`11db2be5 33c0            xor     eax,eax
fffff800`11db2be7 448809          mov     byte ptr [rcx],r9b
fffff800`11db2bea 48895138        mov     qword ptr [rcx+38h],rdx
fffff800`11db2bee 4c894148        mov     qword ptr [rcx+48h],r8
fffff800`11db2bf2 884101          mov     byte ptr [rcx+1],al
fffff800`11db2bf5 48894158        mov     qword ptr [rcx+58h],rax
fffff800`11db2bf9 894170          mov     dword ptr [rcx+70h],eax
fffff800`11db2bfc 48894140        mov     qword ptr [rcx+40h],rax
fffff800`11db2c00 48894150        mov     qword ptr [rcx+50h],rax
fffff800`11db2c04 48894160        mov     qword ptr [rcx+60h],rax
fffff800`11db2c08 488b05a1d52100  mov     rax,qword ptr [nt!MmBadPointer (fffff800`11fd01b0)]
fffff800`11db2c0f 48894168        mov     qword ptr [rcx+68h],rax
fffff800`11db2c13 c3              ret
