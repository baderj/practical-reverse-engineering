    mov     eax, [esp+4]
    push    ebx
    push    esi
    mov     esi, [eax+3Ch]
    add     esi, eax
    movzx   eax, word ptr [esi+14h]
    xor     ebx, ebx
    cmp     [esi+6], bx
    push    edi
    lea     edi, [eax+esi+18h]
    jbe     short loc_0_10BEB

loc_0_10BCE:                            
    push    [esp+0Ch+8]
    push    edi
    call    ds:dword_0_169A4
    test    eax, eax
    pop     ecx
    pop     ecx
    jz      short loc_0_10BF3
    movzx   eax, word ptr [esi+6]
    add     edi, 28h
    inc     ebx
    cmp     ebx, eax
    jb      short loc_0_10BCE

loc_0_10BEB:                            
    xor     eax, eax

loc_0_10BED:                            
    pop     edi
    pop     esi
    pop     ebx
    retn    8

loc_0_10BF3:
    mov     eax, edi
    jmp     short loc_0_10BED
