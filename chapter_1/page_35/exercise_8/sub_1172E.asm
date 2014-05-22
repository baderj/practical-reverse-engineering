; =============== S U B R O U T I N E =======================================
.text:0001172E
.text:0001172E
.text:0001172E sub_1172E       proc near               ; CODE XREF: sub_11798+115p
.text:0001172E                                         ; sub_11798+157p
.text:0001172E
.text:0001172E arg_0           = dword ptr  4
.text:0001172E
.text:0001172E                 push    esi
.text:0001172F                 mov     esi, [esp+4+arg_0]
.text:00011733                 dec     esi
.text:00011734                 jz      short loc_1175F
.text:00011736                 dec     esi
.text:00011737                 jz      short loc_11755
.text:00011739                 dec     esi
.text:0001173A                 jz      short loc_1174B
.text:0001173C                 sub     esi, 9
.text:0001173F                 jnz     short loc_1176B
.text:00011741                 mov     esi, [eax+8]
.text:00011744                 shr     esi, 1
.text:00011746                 add     eax, 0Ch
.text:00011749                 jmp     short loc_11767
.text:0001174B ; ---------------------------------------------------------------------------
.text:0001174B
.text:0001174B loc_1174B:                              ; CODE XREF: sub_1172E+Cj
.text:0001174B                 mov     esi, [eax+3Ch]
.text:0001174E                 shr     esi, 1
.text:00011750                 add     eax, 5Eh
.text:00011753                 jmp     short loc_11767
.text:00011755 ; ---------------------------------------------------------------------------
.text:00011755
.text:00011755 loc_11755:                              ; CODE XREF: sub_1172E+9j
.text:00011755                 mov     esi, [eax+3Ch]
.text:00011758                 shr     esi, 1
.text:0001175A                 add     eax, 44h
.text:0001175D                 jmp     short loc_11767
.text:0001175F ; ---------------------------------------------------------------------------
.text:0001175F
.text:0001175F loc_1175F:                              ; CODE XREF: sub_1172E+6j
.text:0001175F                 mov     esi, [eax+3Ch]
.text:00011762                 shr     esi, 1
.text:00011764                 add     eax, 40h
.text:00011767
.text:00011767 loc_11767:                              ; CODE XREF: sub_1172E+1Bj
.text:00011767                                         ; sub_1172E+25j ...
.text:00011767                 mov     [ecx], esi
.text:00011769                 mov     [edx], eax
.text:0001176B
.text:0001176B loc_1176B:                              ; CODE XREF: sub_1172E+11j
.text:0001176B                 pop     esi
.text:0001176C                 retn    4
.text:0001176C sub_1172E       endp
