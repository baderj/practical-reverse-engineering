nt!KiProcessDisconnectList:
fffff803`d9a05618 fff3            push    rbx
fffff803`d9a0561a 4883ec20        sub     rsp,20h
fffff803`d9a0561e 488bd9          mov     rbx,rcx

nt!KiProcessDisconnectList+0x9:
fffff803`d9a05621 488b03          mov     rax,qword ptr [rbx]
fffff803`d9a05624 483bc3          cmp     rax,rbx
fffff803`d9a05627 7435            je      nt!KiProcessDisconnectList+0x46 (fffff803`d9a0565e)

nt!KiProcessDisconnectList+0x11:
fffff803`d9a05629 488b08          mov     rcx,qword ptr [rax]
fffff803`d9a0562c 48395808        cmp     qword ptr [rax+8],rbx
fffff803`d9a05630 7525            jne     nt!KiProcessDisconnectList+0x3f (fffff803`d9a05657)

nt!KiProcessDisconnectList+0x1a:
fffff803`d9a05632 48394108        cmp     qword ptr [rcx+8],rax
fffff803`d9a05636 751f            jne     nt!KiProcessDisconnectList+0x3f (fffff803`d9a05657)

nt!KiProcessDisconnectList+0x20:
fffff803`d9a05638 48890b          mov     qword ptr [rbx],rcx
fffff803`d9a0563b 48895908        mov     qword ptr [rcx+8],rbx
fffff803`d9a0563f 488b8098000000  mov     rax,qword ptr [rax+98h]
fffff803`d9a05646 488b08          mov     rcx,qword ptr [rax]
fffff803`d9a05649 4885c9          test    rcx,rcx
fffff803`d9a0564c 74d3            je      nt!KiProcessDisconnectList+0x9 (fffff803`d9a05621)

nt!KiProcessDisconnectList+0x36:
fffff803`d9a0564e 33d2            xor     edx,edx
fffff803`d9a05650 e85bf8ffff      call    nt!KiSignalWaitDisconnectLock (fffff803`d9a04eb0)
fffff803`d9a05655 ebca            jmp     nt!KiProcessDisconnectList+0x9 (fffff803`d9a05621)

nt!KiProcessDisconnectList+0x3f:
fffff803`d9a05657 b903000000      mov     ecx,3
fffff803`d9a0565c cd29            int     29h

nt!KiProcessDisconnectList+0x46:
fffff803`d9a0565e 4883c420        add     rsp,20h
fffff803`d9a05662 5b              pop     rbx
fffff803`d9a05663 c3              ret
