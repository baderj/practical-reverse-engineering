nt!CmpPostApc:
fffff803`2206ec38 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`2206ec3d 4c894c2420      mov     qword ptr [rsp+20h],r9
fffff803`2206ec42 57              push    rdi
fffff803`2206ec43 4883ec20        sub     rsp,20h
fffff803`2206ec47 498bf9          mov     rdi,r9
fffff803`2206ec4a 488b442450      mov     rax,qword ptr [rsp+50h]
fffff803`2206ec4f 488b18          mov     rbx,qword ptr [rax]
fffff803`2206ec52 48895c2450      mov     qword ptr [rsp+50h],rbx
fffff803`2206ec57 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`2206ec5b 4883c068        add     rax,68h
fffff803`2206ec5f 483900          cmp     qword ptr [rax],rax
fffff803`2206ec62 7448            je      nt!CmpPostApc+0x74 (fffff803`2206ecac)

nt!CmpPostApc+0x2c:
fffff803`2206ec64 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`2206ec6d 488b88b8000000  mov     rcx,qword ptr [rax+0B8h]
fffff803`2206ec74 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`2206ec78 4883b91804000000 cmp     qword ptr [rcx+418h],0
fffff803`2206ec80 488b4868        mov     rcx,qword ptr [rax+68h]
fffff803`2206ec84 8b07            mov     eax,dword ptr [rdi]
fffff803`2206ec86 8901            mov     dword ptr [rcx],eax
fffff803`2206ec88 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`2206ec8c 488b4868        mov     rcx,qword ptr [rax+68h]
fffff803`2206ec90 7514            jne     nt!CmpPostApc+0x6e (fffff803`2206eca6)

nt!CmpPostApc+0x5a:
fffff803`2206ec92 4883610800      and     qword ptr [rcx+8],0

nt!CmpPostApc+0x5f:
fffff803`2206ec97 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`2206ec9b 4883c068        add     rax,68h
fffff803`2206ec9f 483900          cmp     qword ptr [rax],rax
fffff803`2206eca2 7431            je      nt!CmpPostApc+0x9d (fffff803`2206ecd5)

nt!CmpPostApc+0x6c:
fffff803`2206eca4 eb56            jmp     nt!CmpPostApc+0xc4 (fffff803`2206ecfc)

nt!CmpPostApc+0x6e:
fffff803`2206eca6 83610400        and     dword ptr [rcx+4],0
fffff803`2206ecaa ebeb            jmp     nt!CmpPostApc+0x5f (fffff803`2206ec97)

nt!CmpPostApc+0x74:
fffff803`2206ecac 488b5340        mov     rdx,qword ptr [rbx+40h]
fffff803`2206ecb0 488d0d091c0500  lea     rcx,[nt! ?? ::NNGAKEGL::`string' (fffff803`220c08c0)]
fffff803`2206ecb7 e8e4c3d3ff      call    nt!DbgPrint (fffff803`21dab0a0)
fffff803`2206ecbc 448a1d7d86edff  mov     r11b,byte ptr [nt!KdDebuggerEnabled (fffff803`21f47340)]
fffff803`2206ecc3 4584db          test    r11b,r11b
fffff803`2206ecc6 749c            je      nt!CmpPostApc+0x2c (fffff803`2206ec64)

nt!CmpPostApc+0x90:
fffff803`2206ecc8 8a057386edff    mov     al,byte ptr [nt!KdDebuggerNotPresent (fffff803`21f47341)]
fffff803`2206ecce 84c0            test    al,al
fffff803`2206ecd0 7592            jne     nt!CmpPostApc+0x2c (fffff803`2206ec64)

nt!CmpPostApc+0x9a:
fffff803`2206ecd2 cc              int     3
fffff803`2206ecd3 eb8f            jmp     nt!CmpPostApc+0x2c (fffff803`2206ec64)

nt!CmpPostApc+0x9d:
fffff803`2206ecd5 488b5340        mov     rdx,qword ptr [rbx+40h]
fffff803`2206ecd9 488d0de01b0500  lea     rcx,[nt! ?? ::NNGAKEGL::`string' (fffff803`220c08c0)]
fffff803`2206ece0 e8bbc3d3ff      call    nt!DbgPrint (fffff803`21dab0a0)
fffff803`2206ece5 448a1d5486edff  mov     r11b,byte ptr [nt!KdDebuggerEnabled (fffff803`21f47340)]
fffff803`2206ecec 4584db          test    r11b,r11b
fffff803`2206ecef 740b            je      nt!CmpPostApc+0xc4 (fffff803`2206ecfc)

nt!CmpPostApc+0xb9:
fffff803`2206ecf1 8a054a86edff    mov     al,byte ptr [nt!KdDebuggerNotPresent (fffff803`21f47341)]
fffff803`2206ecf7 84c0            test    al,al
fffff803`2206ecf9 7501            jne     nt!CmpPostApc+0xc4 (fffff803`2206ecfc)

nt!CmpPostApc+0xc3:
fffff803`2206ecfb cc              int     3

nt!CmpPostApc+0xc4:
fffff803`2206ecfc eb0a            jmp     nt!CmpPostApc+0xd0 (fffff803`2206ed08)

nt!CmpPostApc+0xd0:
fffff803`2206ed08 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`2206ed0c 488b4868        mov     rcx,qword ptr [rax+68h]
fffff803`2206ed10 48890f          mov     qword ptr [rdi],rcx
fffff803`2206ed13 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`2206ed17 4883c068        add     rax,68h
fffff803`2206ed1b 483900          cmp     qword ptr [rax],rax
fffff803`2206ed1e 0f848ca41d00    je      nt! ?? ::NNGAKEGL::`string'+0xe3ce (fffff803`222491b0)

nt!CmpPostApc+0xec:
fffff803`2206ed24 488b4340        mov     rax,qword ptr [rbx+40h]
fffff803`2206ed28 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`2206ed2c 4885c9          test    rcx,rcx
fffff803`2206ed2f 7417            je      nt!CmpPostApc+0x110 (fffff803`2206ed48)

nt!CmpPostApc+0xf9:
fffff803`2206ed31 4533c0          xor     r8d,r8d
fffff803`2206ed34 33d2            xor     edx,edx
fffff803`2206ed36 e845a1c9ff      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`2206ed3b 488b4b40        mov     rcx,qword ptr [rbx+40h]
fffff803`2206ed3f 488b4908        mov     rcx,qword ptr [rcx+8]
fffff803`2206ed43 e8981ecaff      call    nt!ObfDereferenceObject (fffff803`21d10be0)

nt!CmpPostApc+0x110:
fffff803`2206ed48 488d4310        lea     rax,[rbx+10h]
fffff803`2206ed4c 488b10          mov     rdx,qword ptr [rax]
fffff803`2206ed4f 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`2206ed53 48394208        cmp     qword ptr [rdx+8],rax
fffff803`2206ed57 0f8587a41d00    jne     nt! ?? ::NNGAKEGL::`string'+0xe402 (fffff803`222491e4)

nt!CmpPostApc+0x125:
fffff803`2206ed5d 483901          cmp     qword ptr [rcx],rax
fffff803`2206ed60 0f857ea41d00    jne     nt! ?? ::NNGAKEGL::`string'+0xe402 (fffff803`222491e4)

nt!CmpPostApc+0x12e:
fffff803`2206ed66 488911          mov     qword ptr [rcx],rdx
fffff803`2206ed69 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`2206ed6d 488d4b20        lea     rcx,[rbx+20h]
fffff803`2206ed71 483909          cmp     qword ptr [rcx],rcx
fffff803`2206ed74 7513            jne     nt!CmpPostApc+0x151 (fffff803`2206ed89)

nt!CmpPostApc+0x13e:
fffff803`2206ed76 488bcb          mov     rcx,rbx
fffff803`2206ed79 e8223d0000      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`2206ed7e 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`2206ed83 4883c420        add     rsp,20h
fffff803`2206ed87 5f              pop     rdi
fffff803`2206ed88 c3              ret

nt!CmpPostApc+0x151:
fffff803`2206ed89 488b09          mov     rcx,qword ptr [rcx]
fffff803`2206ed8c 4883e920        sub     rcx,20h
fffff803`2206ed90 488d4120        lea     rax,[rcx+20h]
fffff803`2206ed94 4c8b00          mov     r8,qword ptr [rax]
fffff803`2206ed97 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`2206ed9b 49394008        cmp     qword ptr [r8+8],rax
fffff803`2206ed9f 7537            jne     nt!CmpPostApc+0x1a0 (fffff803`2206edd8)

nt!CmpPostApc+0x169:
fffff803`2206eda1 483902          cmp     qword ptr [rdx],rax
fffff803`2206eda4 7532            jne     nt!CmpPostApc+0x1a0 (fffff803`2206edd8)

nt!CmpPostApc+0x16e:
fffff803`2206eda6 4c8902          mov     qword ptr [rdx],r8
fffff803`2206eda9 49895008        mov     qword ptr [r8+8],rdx
fffff803`2206edad 488d5110        lea     rdx,[rcx+10h]
fffff803`2206edb1 4c8b02          mov     r8,qword ptr [rdx]
fffff803`2206edb4 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`2206edb8 49395008        cmp     qword ptr [r8+8],rdx
fffff803`2206edbc 7513            jne     nt!CmpPostApc+0x199 (fffff803`2206edd1)

nt!CmpPostApc+0x186:
fffff803`2206edbe 483910          cmp     qword ptr [rax],rdx
fffff803`2206edc1 750e            jne     nt!CmpPostApc+0x199 (fffff803`2206edd1)

nt!CmpPostApc+0x18b:
fffff803`2206edc3 4c8900          mov     qword ptr [rax],r8
fffff803`2206edc6 49894008        mov     qword ptr [r8+8],rax
fffff803`2206edca e8d13c0000      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`2206edcf eba5            jmp     nt!CmpPostApc+0x13e (fffff803`2206ed76)

nt!CmpPostApc+0x199:
fffff803`2206edd1 b903000000      mov     ecx,3
fffff803`2206edd6 cd29            int     29h

nt!CmpPostApc+0x1a0:
fffff803`2206edd8 b903000000      mov     ecx,3
fffff803`2206eddd cd29            int     29h
fffff803`2206eddf 90              nop
fffff803`2206ede0 90              nop
fffff803`2206ede1 90              nop
fffff803`2206ede2 90              nop
fffff803`2206ede3 90              nop
fffff803`2206ede4 90              nop
fffff803`2206ede5 90              nop
fffff803`2206ede6 90              nop
fffff803`2206ede7 90              nop
fffff803`2206ede8 488bc4          mov     rax,rsp
fffff803`2206edeb 48895808        mov     qword ptr [rax+8],rbx
fffff803`2206edef 48896818        mov     qword ptr [rax+18h],rbp
fffff803`2206edf3 48897020        mov     qword ptr [rax+20h],rsi
fffff803`2206edf7 895010          mov     dword ptr [rax+10h],edx
fffff803`2206edfa 57              push    rdi
fffff803`2206edfb 4154            push    r12
fffff803`2206edfd 4155            push    r13
fffff803`2206edff 4156            push    r14
fffff803`2206ee01 4157            push    r15
fffff803`2206ee03 8b442450        mov     eax,dword ptr [rsp+50h]
fffff803`2206ee07 4c8bd1          mov     r10,rcx
fffff803`2206ee0a 33c9            xor     ecx,ecx
fffff803`2206ee0c d1e8            shr     eax,1
fffff803`2206ee0e 380d3d822800    cmp     byte ptr [nt!NlsMbOemCodePageTag (fffff803`222f7051)],cl
fffff803`2206ee14 4d8bd8          mov     r11,r8
fffff803`2206ee17 89442450        mov     dword ptr [rsp+50h],eax
fffff803`2206ee1b 448bc2          mov     r8d,edx
fffff803`2206ee1e 0f8564082100    jne     nt! ?? ::NNGAKEGL::`string'+0x4f2d8 (fffff803`2227f688)

nt!RtlUpcaseUnicodeToOemN+0x3c:
fffff803`2206ee24 3bc2            cmp     eax,edx
fffff803`2206ee26 448bfa          mov     r15d,edx
fffff803`2206ee29 440f42f8        cmovb   r15d,eax
fffff803`2206ee2d 4d85db          test    r11,r11
fffff803`2206ee30 7403            je      nt!RtlUpcaseUnicodeToOemN+0x4d (fffff803`2206ee35)

nt!RtlUpcaseUnicodeToOemN+0x4a:
fffff803`2206ee32 45893b          mov     dword ptr [r11],r15d

nt!RtlUpcaseUnicodeToOemN+0x4d:
fffff803`2206ee35 4c8b0574832800  mov     r8,qword ptr [nt!NlsUnicodeToOemData (fffff803`222f71b0)]
fffff803`2206ee3c 488b3585822800  mov     rsi,qword ptr [nt!NlsOemToUnicodeData (fffff803`222f70c8)]
fffff803`2206ee43 4c8b1d0e822800  mov     r11,qword ptr [nt!Nls844UnicodeUpcaseTable (fffff803`222f7058)]
fffff803`2206ee4a 418bef          mov     ebp,r15d
fffff803`2206ee4d 41bd0f000000    mov     r13d,0Fh
fffff803`2206ee53 66bf7a00        mov     di,7Ah
fffff803`2206ee57 4123ed          and     ebp,r13d
fffff803`2206ee5a 41bee0ff0000    mov     r14d,0FFE0h
fffff803`2206ee60 8bc5            mov     eax,ebp
fffff803`2206ee62 498d1c69        lea     rbx,[r9+rbp*2]
fffff803`2206ee66 4c03d0          add     r10,rax

nt!RtlUpcaseUnicodeToOemN+0x81:
fffff803`2206ee69 83fd08          cmp     ebp,8
fffff803`2206ee6c 0f868f030000    jbe     nt!RtlUpcaseUnicodeToOemN+0x419 (fffff803`2206f201)

nt!RtlUpcaseUnicodeToOemN+0x8a:
fffff803`2206ee72 8bc5            mov     eax,ebp
fffff803`2206ee74 83e809          sub     eax,9
fffff803`2206ee77 0f845a010000    je      nt!RtlUpcaseUnicodeToOemN+0x1ef (fffff803`2206efd7)

nt!RtlUpcaseUnicodeToOemN+0x95:
fffff803`2206ee7d ffc8            dec     eax
fffff803`2206ee7f 0f8423010000    je      nt!RtlUpcaseUnicodeToOemN+0x1c0 (fffff803`2206efa8)

nt!RtlUpcaseUnicodeToOemN+0x9d:
fffff803`2206ee85 ffc8            dec     eax
fffff803`2206ee87 0f84f6000000    je      nt!RtlUpcaseUnicodeToOemN+0x19b (fffff803`2206ef83)

nt!RtlUpcaseUnicodeToOemN+0xa5:
fffff803`2206ee8d ffc8            dec     eax
fffff803`2206ee8f 0f84c9000000    je      nt!RtlUpcaseUnicodeToOemN+0x176 (fffff803`2206ef5e)

nt!RtlUpcaseUnicodeToOemN+0xad:
fffff803`2206ee95 ffc8            dec     eax
fffff803`2206ee97 0f8492000000    je      nt!RtlUpcaseUnicodeToOemN+0x147 (fffff803`2206ef2f)

nt!RtlUpcaseUnicodeToOemN+0xb5:
fffff803`2206ee9d ffc8            dec     eax
fffff803`2206ee9f 7469            je      nt!RtlUpcaseUnicodeToOemN+0x122 (fffff803`2206ef0a)

nt!RtlUpcaseUnicodeToOemN+0xb9:
fffff803`2206eea1 ffc8            dec     eax
fffff803`2206eea3 7436            je      nt!RtlUpcaseUnicodeToOemN+0xf3 (fffff803`2206eedb)

nt!RtlUpcaseUnicodeToOemN+0xbd:
fffff803`2206eea5 0fb703          movzx   eax,word ptr [rbx]
fffff803`2206eea8 4883c320        add     rbx,20h
fffff803`2206eeac 4983c210        add     r10,10h
fffff803`2206eeb0 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206eeb5 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206eeba 664183f961      cmp     r9w,61h
fffff803`2206eebf 720e            jb      nt!RtlUpcaseUnicodeToOemN+0xe7 (fffff803`2206eecf)

nt!RtlUpcaseUnicodeToOemN+0xd9:
fffff803`2206eec1 66443bcf        cmp     r9w,di
fffff803`2206eec5 0f87cd042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4efe8 (fffff803`2227f398)

nt!RtlUpcaseUnicodeToOemN+0xe3:
fffff803`2206eecb 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0xe7:
fffff803`2206eecf 410fb7c1        movzx   eax,r9w
fffff803`2206eed3 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206eed7 41884af0        mov     byte ptr [r10-10h],cl

nt!RtlUpcaseUnicodeToOemN+0xf3:
fffff803`2206eedb 0fb743e2        movzx   eax,word ptr [rbx-1Eh]
fffff803`2206eedf 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206eee4 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206eee9 664183f961      cmp     r9w,61h
fffff803`2206eeee 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x116 (fffff803`2206eefe)

nt!RtlUpcaseUnicodeToOemN+0x108:
fffff803`2206eef0 66443bcf        cmp     r9w,di
fffff803`2206eef4 0f87cd042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f017 (fffff803`2227f3c7)

nt!RtlUpcaseUnicodeToOemN+0x112:
fffff803`2206eefa 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x116:
fffff803`2206eefe 410fb7c1        movzx   eax,r9w
fffff803`2206ef02 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206ef06 41884af1        mov     byte ptr [r10-0Fh],cl

nt!RtlUpcaseUnicodeToOemN+0x122:
fffff803`2206ef0a 0fb743e4        movzx   eax,word ptr [rbx-1Ch]
fffff803`2206ef0e 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206ef13 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206ef18 664183f961      cmp     r9w,61h
fffff803`2206ef1d 0f83cb020000    jae     nt!RtlUpcaseUnicodeToOemN+0x406 (fffff803`2206f1ee)

nt!RtlUpcaseUnicodeToOemN+0x13b:
fffff803`2206ef23 410fb7c1        movzx   eax,r9w
fffff803`2206ef27 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206ef2b 41884af2        mov     byte ptr [r10-0Eh],cl

nt!RtlUpcaseUnicodeToOemN+0x147:
fffff803`2206ef2f 0fb743e6        movzx   eax,word ptr [rbx-1Ah]
fffff803`2206ef33 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206ef38 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206ef3d 664183f961      cmp     r9w,61h
fffff803`2206ef42 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x16a (fffff803`2206ef52)

nt!RtlUpcaseUnicodeToOemN+0x15c:
fffff803`2206ef44 66443bcf        cmp     r9w,di
fffff803`2206ef48 0f87d7042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f075 (fffff803`2227f425)

nt!RtlUpcaseUnicodeToOemN+0x166:
fffff803`2206ef4e 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x16a:
fffff803`2206ef52 410fb7c1        movzx   eax,r9w
fffff803`2206ef56 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206ef5a 41884af3        mov     byte ptr [r10-0Dh],cl

nt!RtlUpcaseUnicodeToOemN+0x176:
fffff803`2206ef5e 0fb743e8        movzx   eax,word ptr [rbx-18h]
fffff803`2206ef62 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206ef67 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206ef6c 664183f961      cmp     r9w,61h
fffff803`2206ef71 0f8351020000    jae     nt!RtlUpcaseUnicodeToOemN+0x3e0 (fffff803`2206f1c8)

nt!RtlUpcaseUnicodeToOemN+0x18f:
fffff803`2206ef77 410fb7c1        movzx   eax,r9w
fffff803`2206ef7b 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206ef7f 41884af4        mov     byte ptr [r10-0Ch],cl

nt!RtlUpcaseUnicodeToOemN+0x19b:
fffff803`2206ef83 0fb743ea        movzx   eax,word ptr [rbx-16h]
fffff803`2206ef87 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206ef8c 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206ef91 664183f961      cmp     r9w,61h
fffff803`2206ef96 0f833f020000    jae     nt!RtlUpcaseUnicodeToOemN+0x3f3 (fffff803`2206f1db)

nt!RtlUpcaseUnicodeToOemN+0x1b4:
fffff803`2206ef9c 410fb7c1        movzx   eax,r9w
fffff803`2206efa0 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206efa4 41884af5        mov     byte ptr [r10-0Bh],cl

nt!RtlUpcaseUnicodeToOemN+0x1c0:
fffff803`2206efa8 0fb743ec        movzx   eax,word ptr [rbx-14h]
fffff803`2206efac 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206efb1 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206efb6 664183f961      cmp     r9w,61h
fffff803`2206efbb 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x1e3 (fffff803`2206efcb)

nt!RtlUpcaseUnicodeToOemN+0x1d5:
fffff803`2206efbd 66443bcf        cmp     r9w,di
fffff803`2206efc1 0f87eb042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f102 (fffff803`2227f4b2)

nt!RtlUpcaseUnicodeToOemN+0x1df:
fffff803`2206efc7 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x1e3:
fffff803`2206efcb 410fb7c1        movzx   eax,r9w
fffff803`2206efcf 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206efd3 41884af6        mov     byte ptr [r10-0Ah],cl

nt!RtlUpcaseUnicodeToOemN+0x1ef:
fffff803`2206efd7 0fb743ee        movzx   eax,word ptr [rbx-12h]
fffff803`2206efdb 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206efe0 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206efe5 664183f961      cmp     r9w,61h
fffff803`2206efea 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x212 (fffff803`2206effa)

nt!RtlUpcaseUnicodeToOemN+0x204:
fffff803`2206efec 66443bcf        cmp     r9w,di
fffff803`2206eff0 0f87eb042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f131 (fffff803`2227f4e1)

nt!RtlUpcaseUnicodeToOemN+0x20e:
fffff803`2206eff6 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x212:
fffff803`2206effa 410fb7c1        movzx   eax,r9w
fffff803`2206effe 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f002 41884af7        mov     byte ptr [r10-9],cl

nt!RtlUpcaseUnicodeToOemN+0x21e:
fffff803`2206f006 0fb743f0        movzx   eax,word ptr [rbx-10h]
fffff803`2206f00a 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206f00f 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206f014 664183f961      cmp     r9w,61h
fffff803`2206f019 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x241 (fffff803`2206f029)

nt!RtlUpcaseUnicodeToOemN+0x233:
fffff803`2206f01b 66443bcf        cmp     r9w,di
fffff803`2206f01f 0f87eb042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f160 (fffff803`2227f510)

nt!RtlUpcaseUnicodeToOemN+0x23d:
fffff803`2206f025 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x241:
fffff803`2206f029 410fb7c1        movzx   eax,r9w
fffff803`2206f02d 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f031 41884af8        mov     byte ptr [r10-8],cl

nt!RtlUpcaseUnicodeToOemN+0x24d:
fffff803`2206f035 0fb743f2        movzx   eax,word ptr [rbx-0Eh]
fffff803`2206f039 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206f03e 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206f043 664183f961      cmp     r9w,61h
fffff803`2206f048 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x270 (fffff803`2206f058)

nt!RtlUpcaseUnicodeToOemN+0x262:
fffff803`2206f04a 66443bcf        cmp     r9w,di
fffff803`2206f04e 0f87eb042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f18f (fffff803`2227f53f)

nt!RtlUpcaseUnicodeToOemN+0x26c:
fffff803`2206f054 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x270:
fffff803`2206f058 410fb7c1        movzx   eax,r9w
fffff803`2206f05c 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f060 41884af9        mov     byte ptr [r10-7],cl

nt!RtlUpcaseUnicodeToOemN+0x27c:
fffff803`2206f064 0fb743f4        movzx   eax,word ptr [rbx-0Ch]
fffff803`2206f068 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206f06d 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206f072 664183f961      cmp     r9w,61h
fffff803`2206f077 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x29f (fffff803`2206f087)

nt!RtlUpcaseUnicodeToOemN+0x291:
fffff803`2206f079 66443bcf        cmp     r9w,di
fffff803`2206f07d 0f87eb042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f1be (fffff803`2227f56e)

nt!RtlUpcaseUnicodeToOemN+0x29b:
fffff803`2206f083 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x29f:
fffff803`2206f087 410fb7c1        movzx   eax,r9w
fffff803`2206f08b 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f08f 41884afa        mov     byte ptr [r10-6],cl

nt!RtlUpcaseUnicodeToOemN+0x2ab:
fffff803`2206f093 0fb743f6        movzx   eax,word ptr [rbx-0Ah]
fffff803`2206f097 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206f09c 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206f0a1 664183f961      cmp     r9w,61h
fffff803`2206f0a6 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x2ce (fffff803`2206f0b6)

nt!RtlUpcaseUnicodeToOemN+0x2c0:
fffff803`2206f0a8 66443bcf        cmp     r9w,di
fffff803`2206f0ac 0f87eb042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f1ed (fffff803`2227f59d)

nt!RtlUpcaseUnicodeToOemN+0x2ca:
fffff803`2206f0b2 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x2ce:
fffff803`2206f0b6 410fb7c1        movzx   eax,r9w
fffff803`2206f0ba 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f0be 41884afb        mov     byte ptr [r10-5],cl

nt!RtlUpcaseUnicodeToOemN+0x2da:
fffff803`2206f0c2 0fb743f8        movzx   eax,word ptr [rbx-8]
fffff803`2206f0c6 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206f0cb 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206f0d0 664183f961      cmp     r9w,61h
fffff803`2206f0d5 0f83da000000    jae     nt!RtlUpcaseUnicodeToOemN+0x3cd (fffff803`2206f1b5)

nt!RtlUpcaseUnicodeToOemN+0x2f3:
fffff803`2206f0db 410fb7c1        movzx   eax,r9w
fffff803`2206f0df 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f0e3 41884afc        mov     byte ptr [r10-4],cl

nt!RtlUpcaseUnicodeToOemN+0x2ff:
fffff803`2206f0e7 0fb743fa        movzx   eax,word ptr [rbx-6]
fffff803`2206f0eb 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206f0f0 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206f0f5 664183f961      cmp     r9w,61h
fffff803`2206f0fa 0f83a2000000    jae     nt!RtlUpcaseUnicodeToOemN+0x3ba (fffff803`2206f1a2)

nt!RtlUpcaseUnicodeToOemN+0x318:
fffff803`2206f100 410fb7c1        movzx   eax,r9w
fffff803`2206f104 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f108 41884afd        mov     byte ptr [r10-3],cl

nt!RtlUpcaseUnicodeToOemN+0x324:
fffff803`2206f10c 0fb743fc        movzx   eax,word ptr [rbx-4]
fffff803`2206f110 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206f115 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206f11a 664183f961      cmp     r9w,61h
fffff803`2206f11f 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x347 (fffff803`2206f12f)

nt!RtlUpcaseUnicodeToOemN+0x339:
fffff803`2206f121 66443bcf        cmp     r9w,di
fffff803`2206f125 0f87ff042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f27a (fffff803`2227f62a)

nt!RtlUpcaseUnicodeToOemN+0x343:
fffff803`2206f12b 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x347:
fffff803`2206f12f 410fb7c1        movzx   eax,r9w
fffff803`2206f133 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f137 41884afe        mov     byte ptr [r10-2],cl

nt!RtlUpcaseUnicodeToOemN+0x353:
fffff803`2206f13b 0fb743fe        movzx   eax,word ptr [rbx-2]
fffff803`2206f13f 420fb60c00      movzx   ecx,byte ptr [rax+r8]
fffff803`2206f144 440fb70c4e      movzx   r9d,word ptr [rsi+rcx*2]
fffff803`2206f149 664183f961      cmp     r9w,61h
fffff803`2206f14e 720e            jb      nt!RtlUpcaseUnicodeToOemN+0x376 (fffff803`2206f15e)

nt!RtlUpcaseUnicodeToOemN+0x368:
fffff803`2206f150 66443bcf        cmp     r9w,di
fffff803`2206f154 0f87ff042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f2a9 (fffff803`2227f659)

nt!RtlUpcaseUnicodeToOemN+0x372:
fffff803`2206f15a 664503ce        add     r9w,r14w

nt!RtlUpcaseUnicodeToOemN+0x376:
fffff803`2206f15e 410fb7c1        movzx   eax,r9w
fffff803`2206f162 418a0c00        mov     cl,byte ptr [r8+rax]
fffff803`2206f166 41884aff        mov     byte ptr [r10-1],cl
fffff803`2206f16a 33c9            xor     ecx,ecx

nt!RtlUpcaseUnicodeToOemN+0x384:
fffff803`2206f16c 442bfd          sub     r15d,ebp
fffff803`2206f16f bd10000000      mov     ebp,10h
fffff803`2206f174 0f85effcffff    jne     nt!RtlUpcaseUnicodeToOemN+0x81 (fffff803`2206ee69)

nt!RtlUpcaseUnicodeToOemN+0x392:
fffff803`2206f17a 8b442438        mov     eax,dword ptr [rsp+38h]
fffff803`2206f17e 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff803`2206f183 488b6c2440      mov     rbp,qword ptr [rsp+40h]
fffff803`2206f188 3b442450        cmp     eax,dword ptr [rsp+50h]
fffff803`2206f18c 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff803`2206f191 1bc0            sbb     eax,eax
fffff803`2206f193 2505000080      and     eax,80000005h
fffff803`2206f198 415f            pop     r15
fffff803`2206f19a 415e            pop     r14
fffff803`2206f19c 415d            pop     r13
fffff803`2206f19e 415c            pop     r12
fffff803`2206f1a0 5f              pop     rdi
fffff803`2206f1a1 c3              ret

nt!RtlUpcaseUnicodeToOemN+0x3ba:
fffff803`2206f1a2 66443bcf        cmp     r9w,di
fffff803`2206f1a6 0f874f042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f24b (fffff803`2227f5fb)

nt!RtlUpcaseUnicodeToOemN+0x3c4:
fffff803`2206f1ac 664503ce        add     r9w,r14w
fffff803`2206f1b0 e94bffffff      jmp     nt!RtlUpcaseUnicodeToOemN+0x318 (fffff803`2206f100)

nt!RtlUpcaseUnicodeToOemN+0x3cd:
fffff803`2206f1b5 66443bcf        cmp     r9w,di
fffff803`2206f1b9 0f870d042100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f21c (fffff803`2227f5cc)

nt!RtlUpcaseUnicodeToOemN+0x3d7:
fffff803`2206f1bf 664503ce        add     r9w,r14w
fffff803`2206f1c3 e913ffffff      jmp     nt!RtlUpcaseUnicodeToOemN+0x2f3 (fffff803`2206f0db)

nt!RtlUpcaseUnicodeToOemN+0x3e0:
fffff803`2206f1c8 66443bcf        cmp     r9w,di
fffff803`2206f1cc 0f8782022100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f0a4 (fffff803`2227f454)

nt!RtlUpcaseUnicodeToOemN+0x3ea:
fffff803`2206f1d2 664503ce        add     r9w,r14w
fffff803`2206f1d6 e99cfdffff      jmp     nt!RtlUpcaseUnicodeToOemN+0x18f (fffff803`2206ef77)

nt!RtlUpcaseUnicodeToOemN+0x3f3:
fffff803`2206f1db 66443bcf        cmp     r9w,di
fffff803`2206f1df 0f879e022100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f0d3 (fffff803`2227f483)

nt!RtlUpcaseUnicodeToOemN+0x3fd:
fffff803`2206f1e5 664503ce        add     r9w,r14w
fffff803`2206f1e9 e9aefdffff      jmp     nt!RtlUpcaseUnicodeToOemN+0x1b4 (fffff803`2206ef9c)

nt!RtlUpcaseUnicodeToOemN+0x406:
fffff803`2206f1ee 66443bcf        cmp     r9w,di
fffff803`2206f1f2 0f87fe012100    ja      nt! ?? ::NNGAKEGL::`string'+0x4f046 (fffff803`2227f3f6)

nt!RtlUpcaseUnicodeToOemN+0x410:
fffff803`2206f1f8 664503ce        add     r9w,r14w
fffff803`2206f1fc e922fdffff      jmp     nt!RtlUpcaseUnicodeToOemN+0x13b (fffff803`2206ef23)

nt!RtlUpcaseUnicodeToOemN+0x419:
fffff803`2206f201 0f84fffdffff    je      nt!RtlUpcaseUnicodeToOemN+0x21e (fffff803`2206f006)

nt!RtlUpcaseUnicodeToOemN+0x41f:
fffff803`2206f207 8bc5            mov     eax,ebp
fffff803`2206f209 85ed            test    ebp,ebp
fffff803`2206f20b 0f845bffffff    je      nt!RtlUpcaseUnicodeToOemN+0x384 (fffff803`2206f16c)

nt!RtlUpcaseUnicodeToOemN+0x429:
fffff803`2206f211 ffc8            dec     eax
fffff803`2206f213 0f8422ffffff    je      nt!RtlUpcaseUnicodeToOemN+0x353 (fffff803`2206f13b)

nt!RtlUpcaseUnicodeToOemN+0x431:
fffff803`2206f219 ffc8            dec     eax
fffff803`2206f21b 0f84ebfeffff    je      nt!RtlUpcaseUnicodeToOemN+0x324 (fffff803`2206f10c)

nt!RtlUpcaseUnicodeToOemN+0x439:
fffff803`2206f221 ffc8            dec     eax
fffff803`2206f223 0f84befeffff    je      nt!RtlUpcaseUnicodeToOemN+0x2ff (fffff803`2206f0e7)

nt!RtlUpcaseUnicodeToOemN+0x441:
fffff803`2206f229 ffc8            dec     eax
fffff803`2206f22b 0f8491feffff    je      nt!RtlUpcaseUnicodeToOemN+0x2da (fffff803`2206f0c2)

nt!RtlUpcaseUnicodeToOemN+0x449:
fffff803`2206f231 ffc8            dec     eax
fffff803`2206f233 0f845afeffff    je      nt!RtlUpcaseUnicodeToOemN+0x2ab (fffff803`2206f093)

nt!RtlUpcaseUnicodeToOemN+0x451:
fffff803`2206f239 ffc8            dec     eax
fffff803`2206f23b 0f8423feffff    je      nt!RtlUpcaseUnicodeToOemN+0x27c (fffff803`2206f064)

nt!RtlUpcaseUnicodeToOemN+0x459:
fffff803`2206f241 ffc8            dec     eax
fffff803`2206f243 0f84ecfdffff    je      nt!RtlUpcaseUnicodeToOemN+0x24d (fffff803`2206f035)

nt!RtlUpcaseUnicodeToOemN+0x461:
fffff803`2206f249 e957fcffff      jmp     nt!RtlUpcaseUnicodeToOemN+0xbd (fffff803`2206eea5)

nt!CmpNotifyChangeKey+0x12f:
fffff803`22072c6f 488b4c2458      mov     rcx,qword ptr [rsp+58h]
fffff803`22072c74 4833cc          xor     rcx,rsp
fffff803`22072c77 e84408c5ff      call    nt!_security_check_cookie (fffff803`21cc34c0)
fffff803`22072c7c 4883c460        add     rsp,60h
fffff803`22072c80 415f            pop     r15
fffff803`22072c82 415e            pop     r14
fffff803`22072c84 415c            pop     r12
fffff803`22072c86 5f              pop     rdi
fffff803`22072c87 5e              pop     rsi
fffff803`22072c88 5d              pop     rbp
fffff803`22072c89 5b              pop     rbx
fffff803`22072c8a c3              ret

nt! ?? ::NNGAKEGL::`string'+0xe3ce:
fffff803`222491b0 488b5340        mov     rdx,qword ptr [rbx+40h]
fffff803`222491b4 488d0d0577e7ff  lea     rcx,[nt! ?? ::NNGAKEGL::`string' (fffff803`220c08c0)]
fffff803`222491bb e8e01eb6ff      call    nt!DbgPrint (fffff803`21dab0a0)
fffff803`222491c0 448a1d79e1cfff  mov     r11b,byte ptr [nt!KdDebuggerEnabled (fffff803`21f47340)]
fffff803`222491c7 4584db          test    r11b,r11b
fffff803`222491ca 0f84545be2ff    je      nt!CmpPostApc+0xec (fffff803`2206ed24)

nt! ?? ::NNGAKEGL::`string'+0xe3ee:
fffff803`222491d0 8a056be1cfff    mov     al,byte ptr [nt!KdDebuggerNotPresent (fffff803`21f47341)]
fffff803`222491d6 84c0            test    al,al
fffff803`222491d8 0f85465be2ff    jne     nt!CmpPostApc+0xec (fffff803`2206ed24)

nt! ?? ::NNGAKEGL::`string'+0xe3fc:
fffff803`222491de cc              int     3
fffff803`222491df e9405be2ff      jmp     nt!CmpPostApc+0xec (fffff803`2206ed24)

nt! ?? ::NNGAKEGL::`string'+0xe402:
fffff803`222491e4 b903000000      mov     ecx,3
fffff803`222491e9 cd29            int     29h
fffff803`222491eb 90              nop
fffff803`222491ec 488bcf          mov     rcx,rdi
fffff803`222491ef e8ac98e2ff      call    nt!CmpFreePostBlock (fffff803`22072aa0)
fffff803`222491f4 8bc3            mov     eax,ebx
fffff803`222491f6 e9749ae2ff      jmp     nt!CmpNotifyChangeKey+0x12f (fffff803`22072c6f)

nt! ?? ::NNGAKEGL::`string'+0x4efe8:
fffff803`2227f398 410fb7d1        movzx   edx,r9w
fffff803`2227f39c 410fb7c1        movzx   eax,r9w
fffff803`2227f3a0 48c1e808        shr     rax,8
fffff803`2227f3a4 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f3a9 8bc2            mov     eax,edx
fffff803`2227f3ab 4123d5          and     edx,r13d
fffff803`2227f3ae c1e804          shr     eax,4
fffff803`2227f3b1 4123c5          and     eax,r13d
fffff803`2227f3b4 03c8            add     ecx,eax
fffff803`2227f3b6 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f3bb 03ca            add     ecx,edx
fffff803`2227f3bd 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f3c2 e908fbdeff      jmp     nt!RtlUpcaseUnicodeToOemN+0xe7 (fffff803`2206eecf)

nt! ?? ::NNGAKEGL::`string'+0x4f017:
fffff803`2227f3c7 410fb7d1        movzx   edx,r9w
fffff803`2227f3cb 410fb7c1        movzx   eax,r9w
fffff803`2227f3cf 48c1e808        shr     rax,8
fffff803`2227f3d3 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f3d8 8bc2            mov     eax,edx
fffff803`2227f3da 4123d5          and     edx,r13d
fffff803`2227f3dd c1e804          shr     eax,4
fffff803`2227f3e0 4123c5          and     eax,r13d
fffff803`2227f3e3 03c8            add     ecx,eax
fffff803`2227f3e5 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f3ea 03ca            add     ecx,edx
fffff803`2227f3ec 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f3f1 e908fbdeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x116 (fffff803`2206eefe)

nt! ?? ::NNGAKEGL::`string'+0x4f046:
fffff803`2227f3f6 410fb7d1        movzx   edx,r9w
fffff803`2227f3fa 410fb7c1        movzx   eax,r9w
fffff803`2227f3fe 48c1e808        shr     rax,8
fffff803`2227f402 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f407 8bc2            mov     eax,edx
fffff803`2227f409 4123d5          and     edx,r13d
fffff803`2227f40c c1e804          shr     eax,4
fffff803`2227f40f 4123c5          and     eax,r13d
fffff803`2227f412 03c8            add     ecx,eax
fffff803`2227f414 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f419 03ca            add     ecx,edx
fffff803`2227f41b 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f420 e9fefadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x13b (fffff803`2206ef23)

nt! ?? ::NNGAKEGL::`string'+0x4f075:
fffff803`2227f425 410fb7d1        movzx   edx,r9w
fffff803`2227f429 410fb7c1        movzx   eax,r9w
fffff803`2227f42d 48c1e808        shr     rax,8
fffff803`2227f431 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f436 8bc2            mov     eax,edx
fffff803`2227f438 4123d5          and     edx,r13d
fffff803`2227f43b c1e804          shr     eax,4
fffff803`2227f43e 4123c5          and     eax,r13d
fffff803`2227f441 03c8            add     ecx,eax
fffff803`2227f443 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f448 03ca            add     ecx,edx
fffff803`2227f44a 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f44f e9fefadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x16a (fffff803`2206ef52)

nt! ?? ::NNGAKEGL::`string'+0x4f0a4:
fffff803`2227f454 410fb7d1        movzx   edx,r9w
fffff803`2227f458 410fb7c1        movzx   eax,r9w
fffff803`2227f45c 48c1e808        shr     rax,8
fffff803`2227f460 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f465 8bc2            mov     eax,edx
fffff803`2227f467 4123d5          and     edx,r13d
fffff803`2227f46a c1e804          shr     eax,4
fffff803`2227f46d 4123c5          and     eax,r13d
fffff803`2227f470 03c8            add     ecx,eax
fffff803`2227f472 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f477 03ca            add     ecx,edx
fffff803`2227f479 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f47e e9f4fadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x18f (fffff803`2206ef77)

nt! ?? ::NNGAKEGL::`string'+0x4f0d3:
fffff803`2227f483 410fb7d1        movzx   edx,r9w
fffff803`2227f487 410fb7c1        movzx   eax,r9w
fffff803`2227f48b 48c1e808        shr     rax,8
fffff803`2227f48f 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f494 8bc2            mov     eax,edx
fffff803`2227f496 4123d5          and     edx,r13d
fffff803`2227f499 c1e804          shr     eax,4
fffff803`2227f49c 4123c5          and     eax,r13d
fffff803`2227f49f 03c8            add     ecx,eax
fffff803`2227f4a1 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f4a6 03ca            add     ecx,edx
fffff803`2227f4a8 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f4ad e9eafadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x1b4 (fffff803`2206ef9c)

nt! ?? ::NNGAKEGL::`string'+0x4f102:
fffff803`2227f4b2 410fb7d1        movzx   edx,r9w
fffff803`2227f4b6 410fb7c1        movzx   eax,r9w
fffff803`2227f4ba 48c1e808        shr     rax,8
fffff803`2227f4be 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f4c3 8bc2            mov     eax,edx
fffff803`2227f4c5 4123d5          and     edx,r13d
fffff803`2227f4c8 c1e804          shr     eax,4
fffff803`2227f4cb 4123c5          and     eax,r13d
fffff803`2227f4ce 03c8            add     ecx,eax
fffff803`2227f4d0 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f4d5 03ca            add     ecx,edx
fffff803`2227f4d7 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f4dc e9eafadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x1e3 (fffff803`2206efcb)

nt! ?? ::NNGAKEGL::`string'+0x4f131:
fffff803`2227f4e1 410fb7d1        movzx   edx,r9w
fffff803`2227f4e5 410fb7c1        movzx   eax,r9w
fffff803`2227f4e9 48c1e808        shr     rax,8
fffff803`2227f4ed 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f4f2 8bc2            mov     eax,edx
fffff803`2227f4f4 4123d5          and     edx,r13d
fffff803`2227f4f7 c1e804          shr     eax,4
fffff803`2227f4fa 4123c5          and     eax,r13d
fffff803`2227f4fd 03c8            add     ecx,eax
fffff803`2227f4ff 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f504 03ca            add     ecx,edx
fffff803`2227f506 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f50b e9eafadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x212 (fffff803`2206effa)

nt! ?? ::NNGAKEGL::`string'+0x4f160:
fffff803`2227f510 410fb7d1        movzx   edx,r9w
fffff803`2227f514 410fb7c1        movzx   eax,r9w
fffff803`2227f518 48c1e808        shr     rax,8
fffff803`2227f51c 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f521 8bc2            mov     eax,edx
fffff803`2227f523 4123d5          and     edx,r13d
fffff803`2227f526 c1e804          shr     eax,4
fffff803`2227f529 4123c5          and     eax,r13d
fffff803`2227f52c 03c8            add     ecx,eax
fffff803`2227f52e 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f533 03ca            add     ecx,edx
fffff803`2227f535 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f53a e9eafadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x241 (fffff803`2206f029)

nt! ?? ::NNGAKEGL::`string'+0x4f18f:
fffff803`2227f53f 410fb7d1        movzx   edx,r9w
fffff803`2227f543 410fb7c1        movzx   eax,r9w
fffff803`2227f547 48c1e808        shr     rax,8
fffff803`2227f54b 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f550 8bc2            mov     eax,edx
fffff803`2227f552 4123d5          and     edx,r13d
fffff803`2227f555 c1e804          shr     eax,4
fffff803`2227f558 4123c5          and     eax,r13d
fffff803`2227f55b 03c8            add     ecx,eax
fffff803`2227f55d 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f562 03ca            add     ecx,edx
fffff803`2227f564 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f569 e9eafadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x270 (fffff803`2206f058)

nt! ?? ::NNGAKEGL::`string'+0x4f1be:
fffff803`2227f56e 410fb7d1        movzx   edx,r9w
fffff803`2227f572 410fb7c1        movzx   eax,r9w
fffff803`2227f576 48c1e808        shr     rax,8
fffff803`2227f57a 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f57f 8bc2            mov     eax,edx
fffff803`2227f581 4123d5          and     edx,r13d
fffff803`2227f584 c1e804          shr     eax,4
fffff803`2227f587 4123c5          and     eax,r13d
fffff803`2227f58a 03c8            add     ecx,eax
fffff803`2227f58c 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f591 03ca            add     ecx,edx
fffff803`2227f593 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f598 e9eafadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x29f (fffff803`2206f087)

nt! ?? ::NNGAKEGL::`string'+0x4f1ed:
fffff803`2227f59d 410fb7d1        movzx   edx,r9w
fffff803`2227f5a1 410fb7c1        movzx   eax,r9w
fffff803`2227f5a5 48c1e808        shr     rax,8
fffff803`2227f5a9 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f5ae 8bc2            mov     eax,edx
fffff803`2227f5b0 4123d5          and     edx,r13d
fffff803`2227f5b3 c1e804          shr     eax,4
fffff803`2227f5b6 4123c5          and     eax,r13d
fffff803`2227f5b9 03c8            add     ecx,eax
fffff803`2227f5bb 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f5c0 03ca            add     ecx,edx
fffff803`2227f5c2 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f5c7 e9eafadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x2ce (fffff803`2206f0b6)

nt! ?? ::NNGAKEGL::`string'+0x4f21c:
fffff803`2227f5cc 410fb7d1        movzx   edx,r9w
fffff803`2227f5d0 410fb7c1        movzx   eax,r9w
fffff803`2227f5d4 48c1e808        shr     rax,8
fffff803`2227f5d8 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f5dd 8bc2            mov     eax,edx
fffff803`2227f5df 4123d5          and     edx,r13d
fffff803`2227f5e2 c1e804          shr     eax,4
fffff803`2227f5e5 4123c5          and     eax,r13d
fffff803`2227f5e8 03c8            add     ecx,eax
fffff803`2227f5ea 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f5ef 03ca            add     ecx,edx
fffff803`2227f5f1 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f5f6 e9e0fadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x2f3 (fffff803`2206f0db)

nt! ?? ::NNGAKEGL::`string'+0x4f24b:
fffff803`2227f5fb 410fb7d1        movzx   edx,r9w
fffff803`2227f5ff 410fb7c1        movzx   eax,r9w
fffff803`2227f603 48c1e808        shr     rax,8
fffff803`2227f607 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f60c 8bc2            mov     eax,edx
fffff803`2227f60e 4123d5          and     edx,r13d
fffff803`2227f611 c1e804          shr     eax,4
fffff803`2227f614 4123c5          and     eax,r13d
fffff803`2227f617 03c8            add     ecx,eax
fffff803`2227f619 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f61e 03ca            add     ecx,edx
fffff803`2227f620 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f625 e9d6fadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x318 (fffff803`2206f100)

nt! ?? ::NNGAKEGL::`string'+0x4f27a:
fffff803`2227f62a 410fb7d1        movzx   edx,r9w
fffff803`2227f62e 410fb7c1        movzx   eax,r9w
fffff803`2227f632 48c1e808        shr     rax,8
fffff803`2227f636 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f63b 8bc2            mov     eax,edx
fffff803`2227f63d 4123d5          and     edx,r13d
fffff803`2227f640 c1e804          shr     eax,4
fffff803`2227f643 4123c5          and     eax,r13d
fffff803`2227f646 03c8            add     ecx,eax
fffff803`2227f648 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f64d 03ca            add     ecx,edx
fffff803`2227f64f 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f654 e9d6fadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x347 (fffff803`2206f12f)

nt! ?? ::NNGAKEGL::`string'+0x4f2a9:
fffff803`2227f659 410fb7d1        movzx   edx,r9w
fffff803`2227f65d 410fb7c1        movzx   eax,r9w
fffff803`2227f661 48c1e808        shr     rax,8
fffff803`2227f665 410fb70c43      movzx   ecx,word ptr [r11+rax*2]
fffff803`2227f66a 8bc2            mov     eax,edx
fffff803`2227f66c 4123d5          and     edx,r13d
fffff803`2227f66f c1e804          shr     eax,4
fffff803`2227f672 4123c5          and     eax,r13d
fffff803`2227f675 03c8            add     ecx,eax
fffff803`2227f677 410fb70c4b      movzx   ecx,word ptr [r11+rcx*2]
fffff803`2227f67c 03ca            add     ecx,edx
fffff803`2227f67e 6645030c4b      add     r9w,word ptr [r11+rcx*2]
fffff803`2227f683 e9d6fadeff      jmp     nt!RtlUpcaseUnicodeToOemN+0x376 (fffff803`2206f15e)

nt! ?? ::NNGAKEGL::`string'+0x4f2d8:
fffff803`2227f688 498bda          mov     rbx,r10
fffff803`2227f68b 85c0            test    eax,eax
fffff803`2227f68d 0f84fc000000    je      nt! ?? ::NNGAKEGL::`string'+0x4f3f9 (fffff803`2227f78f)

nt! ?? ::NNGAKEGL::`string'+0x4f2e3:
fffff803`2227f693 4c8b3d2e7a0700  mov     r15,qword ptr [nt!NlsOemToUnicodeData (fffff803`222f70c8)]
fffff803`2227f69a 488b2db7790700  mov     rbp,qword ptr [nt!Nls844UnicodeUpcaseTable (fffff803`222f7058)]
fffff803`2227f6a1 488b35407b0700  mov     rsi,qword ptr [nt!NlsUnicodeToMbOemData (fffff803`222f71e8)]
fffff803`2227f6a8 4c8b25f17e0700  mov     r12,qword ptr [nt!NlsMbOemCodePageTables (fffff803`222f75a0)]
fffff803`2227f6af 41bd0f000000    mov     r13d,0Fh
fffff803`2227f6b5 66bf7a00        mov     di,7Ah
fffff803`2227f6b9 41bee0ff0000    mov     r14d,0FFE0h

nt! ?? ::NNGAKEGL::`string'+0x4f30f:
fffff803`2227f6bf 4585c0          test    r8d,r8d
fffff803`2227f6c2 0f84c7000000    je      nt! ?? ::NNGAKEGL::`string'+0x4f3f9 (fffff803`2227f78f)

nt! ?? ::NNGAKEGL::`string'+0x4f318:
fffff803`2227f6c8 410fb701        movzx   eax,word ptr [r9]
fffff803`2227f6cc 4983c102        add     r9,2
fffff803`2227f6d0 0fb71446        movzx   edx,word ptr [rsi+rax*2]
fffff803`2227f6d4 0fb7c2          movzx   eax,dx
fffff803`2227f6d7 66c1e808        shr     ax,8
fffff803`2227f6db 0fb6c8          movzx   ecx,al
fffff803`2227f6de 488d056b990700  lea     rax,[nt!NlsOemLeadByteInfoTable (fffff803`222f9050)]
fffff803`2227f6e5 0fb70448        movzx   eax,word ptr [rax+rcx*2]
fffff803`2227f6e9 33c9            xor     ecx,ecx
fffff803`2227f6eb 6685c0          test    ax,ax
fffff803`2227f6ee 7410            je      nt! ?? ::NNGAKEGL::`string'+0x4f357 (fffff803`2227f700)

nt! ?? ::NNGAKEGL::`string'+0x4f344:
fffff803`2227f6f0 0fb7c8          movzx   ecx,ax
fffff803`2227f6f3 0fb6c2          movzx   eax,dl
fffff803`2227f6f6 4803c8          add     rcx,rax
fffff803`2227f6f9 450fb7044c      movzx   r8d,word ptr [r12+rcx*2]
fffff803`2227f6fe eb08            jmp     nt! ?? ::NNGAKEGL::`string'+0x4f35f (fffff803`2227f708)

nt! ?? ::NNGAKEGL::`string'+0x4f357:
fffff803`2227f700 0fb6c2          movzx   eax,dl
fffff803`2227f703 450fb70447      movzx   r8d,word ptr [r15+rax*2]

nt! ?? ::NNGAKEGL::`string'+0x4f35f:
fffff803`2227f708 664183f861      cmp     r8w,61h
fffff803`2227f70d 7237            jb      nt! ?? ::NNGAKEGL::`string'+0x4f3a8 (fffff803`2227f746)

nt! ?? ::NNGAKEGL::`string'+0x4f36a:
fffff803`2227f70f 66443bc7        cmp     r8w,di
fffff803`2227f713 7706            ja      nt! ?? ::NNGAKEGL::`string'+0x4f37d (fffff803`2227f71b)

nt! ?? ::NNGAKEGL::`string'+0x4f374:
fffff803`2227f715 664503c6        add     r8w,r14w
fffff803`2227f719 eb2b            jmp     nt! ?? ::NNGAKEGL::`string'+0x4f3a8 (fffff803`2227f746)

nt! ?? ::NNGAKEGL::`string'+0x4f37d:
fffff803`2227f71b 410fb7d0        movzx   edx,r8w
fffff803`2227f71f 410fb7c0        movzx   eax,r8w
fffff803`2227f723 48c1e808        shr     rax,8
fffff803`2227f727 0fb74c4500      movzx   ecx,word ptr [rbp+rax*2]
fffff803`2227f72c 8bc2            mov     eax,edx
fffff803`2227f72e 4123d5          and     edx,r13d
fffff803`2227f731 c1e804          shr     eax,4
fffff803`2227f734 4123c5          and     eax,r13d
fffff803`2227f737 03c8            add     ecx,eax
fffff803`2227f739 0fb74c4d00      movzx   ecx,word ptr [rbp+rcx*2]
fffff803`2227f73e 03ca            add     ecx,edx
fffff803`2227f740 664403444d00    add     r8w,word ptr [rbp+rcx*2]

nt! ?? ::NNGAKEGL::`string'+0x4f3a8:
fffff803`2227f746 410fb7c0        movzx   eax,r8w
fffff803`2227f74a 448b442438      mov     r8d,dword ptr [rsp+38h]
fffff803`2227f74f 0fb71446        movzx   edx,word ptr [rsi+rax*2]
fffff803`2227f753 0fb7ca          movzx   ecx,dx
fffff803`2227f756 66c1e908        shr     cx,8
fffff803`2227f75a 84c9            test    cl,cl
fffff803`2227f75c 7416            je      nt! ?? ::NNGAKEGL::`string'+0x4f3de (fffff803`2227f774)

nt! ?? ::NNGAKEGL::`string'+0x4f3c4:
fffff803`2227f75e 418bc0          mov     eax,r8d
fffff803`2227f761 41ffc8          dec     r8d
fffff803`2227f764 4489442438      mov     dword ptr [rsp+38h],r8d
fffff803`2227f769 83f802          cmp     eax,2
fffff803`2227f76c 7221            jb      nt! ?? ::NNGAKEGL::`string'+0x4f3f9 (fffff803`2227f78f)

nt! ?? ::NNGAKEGL::`string'+0x4f3d8:
fffff803`2227f76e 41880a          mov     byte ptr [r10],cl
fffff803`2227f771 49ffc2          inc     r10

nt! ?? ::NNGAKEGL::`string'+0x4f3de:
fffff803`2227f774 83c8ff          or      eax,0FFFFFFFFh
fffff803`2227f777 418812          mov     byte ptr [r10],dl
fffff803`2227f77a 49ffc2          inc     r10
fffff803`2227f77d 4403c0          add     r8d,eax
fffff803`2227f780 01442450        add     dword ptr [rsp+50h],eax
fffff803`2227f784 4489442438      mov     dword ptr [rsp+38h],r8d
fffff803`2227f789 0f8530ffffff    jne     nt! ?? ::NNGAKEGL::`string'+0x4f30f (fffff803`2227f6bf)

nt! ?? ::NNGAKEGL::`string'+0x4f3f9:
fffff803`2227f78f 4d85db          test    r11,r11
fffff803`2227f792 0f84e2f9deff    je      nt!RtlUpcaseUnicodeToOemN+0x392 (fffff803`2206f17a)

nt! ?? ::NNGAKEGL::`string'+0x4f402:
fffff803`2227f798 442bd3          sub     r10d,ebx
fffff803`2227f79b 458913          mov     dword ptr [r11],r10d
fffff803`2227f79e e9d7f9deff      jmp     nt!RtlUpcaseUnicodeToOemN+0x392 (fffff803`2206f17a)
