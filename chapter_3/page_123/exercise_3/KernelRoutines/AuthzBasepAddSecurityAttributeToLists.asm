0: kd> uf AuthzBasepAddSecurityAttributeToLists
nt!AuthzBasepAddSecurityAttributeToLists:
fffff803`d9d55ff8 458ad0          mov     r10b,r8b
fffff803`d9d55ffb 4584c9          test    r9b,r9b
fffff803`d9d55ffe 7434            je      nt!AuthzBasepAddSecurityAttributeToLists+0x3c (fffff803`d9d56034)

nt!AuthzBasepAddSecurityAttributeToLists+0x8:
fffff803`d9d56000 8b4238          mov     eax,dword ptr [rdx+38h]
fffff803`d9d56003 a802            test    al,2
fffff803`d9d56005 752d            jne     nt!AuthzBasepAddSecurityAttributeToLists+0x3c (fffff803`d9d56034)

nt!AuthzBasepAddSecurityAttributeToLists+0xf:
fffff803`d9d56007 4c8d4120        lea     r8,[rcx+20h]
fffff803`d9d5600b 488d4210        lea     rax,[rdx+10h]
fffff803`d9d5600f 4d8b4808        mov     r9,qword ptr [r8+8]
fffff803`d9d56013 4c8900          mov     qword ptr [rax],r8
fffff803`d9d56016 4c894808        mov     qword ptr [rax+8],r9
fffff803`d9d5601a 4d3901          cmp     qword ptr [r9],r8
fffff803`d9d5601d 7407            je      nt!AuthzBasepAddSecurityAttributeToLists+0x2e (fffff803`d9d56026)

nt!AuthzBasepAddSecurityAttributeToLists+0x27:
fffff803`d9d5601f b903000000      mov     ecx,3
fffff803`d9d56024 cd29            int     29h

nt!AuthzBasepAddSecurityAttributeToLists+0x2e:
fffff803`d9d56026 498901          mov     qword ptr [r9],rax
fffff803`d9d56029 49894008        mov     qword ptr [r8+8],rax
fffff803`d9d5602d 834a3802        or      dword ptr [rdx+38h],2
fffff803`d9d56031 ff4118          inc     dword ptr [rcx+18h]

nt!AuthzBasepAddSecurityAttributeToLists+0x3c:
fffff803`d9d56034 4584d2          test    r10b,r10b
fffff803`d9d56037 742f            je      nt!AuthzBasepAddSecurityAttributeToLists+0x70 (fffff803`d9d56068)

nt!AuthzBasepAddSecurityAttributeToLists+0x41:
fffff803`d9d56039 8b4238          mov     eax,dword ptr [rdx+38h]
fffff803`d9d5603c a801            test    al,1
fffff803`d9d5603e 7528            jne     nt!AuthzBasepAddSecurityAttributeToLists+0x70 (fffff803`d9d56068)

nt!AuthzBasepAddSecurityAttributeToLists+0x48:
fffff803`d9d56040 488d4108        lea     rax,[rcx+8]
fffff803`d9d56044 4c8b4008        mov     r8,qword ptr [rax+8]
fffff803`d9d56048 488902          mov     qword ptr [rdx],rax
fffff803`d9d5604b 4c894208        mov     qword ptr [rdx+8],r8
fffff803`d9d5604f 493900          cmp     qword ptr [r8],rax
fffff803`d9d56052 7407            je      nt!AuthzBasepAddSecurityAttributeToLists+0x63 (fffff803`d9d5605b)

nt!AuthzBasepAddSecurityAttributeToLists+0x5c:
fffff803`d9d56054 b903000000      mov     ecx,3
fffff803`d9d56059 cd29            int     29h

nt!AuthzBasepAddSecurityAttributeToLists+0x63:
fffff803`d9d5605b 498910          mov     qword ptr [r8],rdx
fffff803`d9d5605e 48895008        mov     qword ptr [rax+8],rdx
fffff803`d9d56062 834a3801        or      dword ptr [rdx+38h],1
fffff803`d9d56066 ff01            inc     dword ptr [rcx]

nt!AuthzBasepAddSecurityAttributeToLists+0x70:
fffff803`d9d56068 c3              ret
