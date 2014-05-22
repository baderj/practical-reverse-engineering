.text:00013842 ; =============== S U B R O U T I N E =======================================
.text:00013842
.text:00013842
.text:00013842 sub_13842       proc near               ; CODE XREF: sub_1386E+2E8p
.text:00013842                                         ; sub_13BE2+84p ...
.text:00013842                 mov     eax, [ecx+60h]
.text:00013845                 push    esi
.text:00013846                 mov     esi, [edx+8]
.text:00013849                 dec     byte ptr [ecx+23h]
.text:0001384C                 sub     eax, 24h
.text:0001384F                 mov     [ecx+60h], eax
.text:00013852                 mov     [eax+14h], edx
.text:00013855                 movzx   eax, byte ptr [eax]
.text:00013858                 push    ecx
.text:00013859                 push    edx
.text:0001385A                 call    dword ptr [esi+eax*4+38h]
.text:0001385E                 pop     esi
.text:0001385F                 retn
.text:0001385F sub_13842       endp
