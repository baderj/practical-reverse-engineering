nt!AuthzBasepRemoveSecurityAttributeFromLists:
fffff803`22141f74 4183cbff        or      r11d,0FFFFFFFFh
fffff803`22141f78 458ad0          mov     r10b,r8b
fffff803`22141f7b 4584c9          test    r9b,r9b
fffff803`22141f7e 7431            je      nt!AuthzBasepRemoveSecurityAttributeFromLists+0x3d (fffff803`22141fb1)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0xc:
fffff803`22141f80 8b4238          mov     eax,dword ptr [rdx+38h]
fffff803`22141f83 a802            test    al,2
fffff803`22141f85 742a            je      nt!AuthzBasepRemoveSecurityAttributeFromLists+0x3d (fffff803`22141fb1)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x13:
fffff803`22141f87 488d4210        lea     rax,[rdx+10h]
fffff803`22141f8b 4c8b08          mov     r9,qword ptr [rax]
fffff803`22141f8e 4c8b4008        mov     r8,qword ptr [rax+8]
fffff803`22141f92 49394108        cmp     qword ptr [r9+8],rax
fffff803`22141f96 754b            jne     nt!AuthzBasepRemoveSecurityAttributeFromLists+0x6f (fffff803`22141fe3)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x24:
fffff803`22141f98 493900          cmp     qword ptr [r8],rax
fffff803`22141f9b 7546            jne     nt!AuthzBasepRemoveSecurityAttributeFromLists+0x6f (fffff803`22141fe3)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x29:
fffff803`22141f9d 4d8908          mov     qword ptr [r8],r9
fffff803`22141fa0 4d894108        mov     qword ptr [r9+8],r8
fffff803`22141fa4 836238fd        and     dword ptr [rdx+38h],0FFFFFFFDh
fffff803`22141fa8 4885c9          test    rcx,rcx
fffff803`22141fab 7404            je      nt!AuthzBasepRemoveSecurityAttributeFromLists+0x3d (fffff803`22141fb1)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x39:
fffff803`22141fad 44015918        add     dword ptr [rcx+18h],r11d

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x3d:
fffff803`22141fb1 4584d2          test    r10b,r10b
fffff803`22141fb4 742c            je      nt!AuthzBasepRemoveSecurityAttributeFromLists+0x6e (fffff803`22141fe2)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x42:
fffff803`22141fb6 8b4238          mov     eax,dword ptr [rdx+38h]
fffff803`22141fb9 a801            test    al,1
fffff803`22141fbb 7425            je      nt!AuthzBasepRemoveSecurityAttributeFromLists+0x6e (fffff803`22141fe2)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x49:
fffff803`22141fbd 4c8b02          mov     r8,qword ptr [rdx]
fffff803`22141fc0 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`22141fc4 49395008        cmp     qword ptr [r8+8],rdx
fffff803`22141fc8 7520            jne     nt!AuthzBasepRemoveSecurityAttributeFromLists+0x76 (fffff803`22141fea)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x56:
fffff803`22141fca 483910          cmp     qword ptr [rax],rdx
fffff803`22141fcd 751b            jne     nt!AuthzBasepRemoveSecurityAttributeFromLists+0x76 (fffff803`22141fea)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x5b:
fffff803`22141fcf 4c8900          mov     qword ptr [rax],r8
fffff803`22141fd2 49894008        mov     qword ptr [r8+8],rax
fffff803`22141fd6 836238fe        and     dword ptr [rdx+38h],0FFFFFFFEh
fffff803`22141fda 4885c9          test    rcx,rcx
fffff803`22141fdd 7403            je      nt!AuthzBasepRemoveSecurityAttributeFromLists+0x6e (fffff803`22141fe2)

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x6b:
fffff803`22141fdf 440119          add     dword ptr [rcx],r11d

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x6e:
fffff803`22141fe2 c3              ret

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x6f:
fffff803`22141fe3 b903000000      mov     ecx,3
fffff803`22141fe8 cd29            int     29h

nt!AuthzBasepRemoveSecurityAttributeFromLists+0x76:
fffff803`22141fea b903000000      mov     ecx,3
fffff803`22141fef cd29            int     29h
fffff803`22141ff1 90              nop
fffff803`22141ff2 90              nop
fffff803`22141ff3 90              nop
fffff803`22141ff4 90              nop
fffff803`22141ff5 90              nop
fffff803`22141ff6 90              nop
fffff803`22141ff7 90              nop
fffff803`22141ff8 458ad0          mov     r10b,r8b
fffff803`22141ffb 4584c9          test    r9b,r9b
fffff803`22141ffe 7434            je      nt!AuthzBasepAddSecurityAttributeToLists+0x3c (fffff803`22142034)

nt!AuthzBasepAddSecurityAttributeToLists+0x8:
fffff803`22142000 8b4238          mov     eax,dword ptr [rdx+38h]
fffff803`22142003 a802            test    al,2
fffff803`22142005 752d            jne     nt!AuthzBasepAddSecurityAttributeToLists+0x3c (fffff803`22142034)

nt!AuthzBasepAddSecurityAttributeToLists+0xf:
fffff803`22142007 4c8d4120        lea     r8,[rcx+20h]
fffff803`2214200b 488d4210        lea     rax,[rdx+10h]
fffff803`2214200f 4d8b4808        mov     r9,qword ptr [r8+8]
fffff803`22142013 4c8900          mov     qword ptr [rax],r8
fffff803`22142016 4c894808        mov     qword ptr [rax+8],r9
fffff803`2214201a 4d3901          cmp     qword ptr [r9],r8
fffff803`2214201d 7407            je      nt!AuthzBasepAddSecurityAttributeToLists+0x2e (fffff803`22142026)

nt!AuthzBasepAddSecurityAttributeToLists+0x27:
fffff803`2214201f b903000000      mov     ecx,3
fffff803`22142024 cd29            int     29h

nt!AuthzBasepAddSecurityAttributeToLists+0x2e:
fffff803`22142026 498901          mov     qword ptr [r9],rax
fffff803`22142029 49894008        mov     qword ptr [r8+8],rax
fffff803`2214202d 834a3802        or      dword ptr [rdx+38h],2
fffff803`22142031 ff4118          inc     dword ptr [rcx+18h]

nt!AuthzBasepAddSecurityAttributeToLists+0x3c:
fffff803`22142034 4584d2          test    r10b,r10b
fffff803`22142037 742f            je      nt!AuthzBasepAddSecurityAttributeToLists+0x70 (fffff803`22142068)

nt!AuthzBasepAddSecurityAttributeToLists+0x41:
fffff803`22142039 8b4238          mov     eax,dword ptr [rdx+38h]
fffff803`2214203c a801            test    al,1
fffff803`2214203e 7528            jne     nt!AuthzBasepAddSecurityAttributeToLists+0x70 (fffff803`22142068)

nt!AuthzBasepAddSecurityAttributeToLists+0x48:
fffff803`22142040 488d4108        lea     rax,[rcx+8]
fffff803`22142044 4c8b4008        mov     r8,qword ptr [rax+8]
fffff803`22142048 488902          mov     qword ptr [rdx],rax
fffff803`2214204b 4c894208        mov     qword ptr [rdx+8],r8
fffff803`2214204f 493900          cmp     qword ptr [r8],rax
fffff803`22142052 7407            je      nt!AuthzBasepAddSecurityAttributeToLists+0x63 (fffff803`2214205b)

nt!AuthzBasepAddSecurityAttributeToLists+0x5c:
fffff803`22142054 b903000000      mov     ecx,3
fffff803`22142059 cd29            int     29h

nt!AuthzBasepAddSecurityAttributeToLists+0x63:
fffff803`2214205b 498910          mov     qword ptr [r8],rdx
fffff803`2214205e 48895008        mov     qword ptr [rax+8],rdx
fffff803`22142062 834a3801        or      dword ptr [rdx+38h],1
fffff803`22142066 ff01            inc     dword ptr [rcx]

nt!AuthzBasepAddSecurityAttributeToLists+0x70:
fffff803`22142068 c3              ret
