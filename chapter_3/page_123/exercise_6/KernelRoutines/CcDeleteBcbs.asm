nt!CcDeleteBcbs:
fffff803`21c782f0 488bc4          mov     rax,rsp
fffff803`21c782f3 48895808        mov     qword ptr [rax+8],rbx
fffff803`21c782f7 48896810        mov     qword ptr [rax+10h],rbp
fffff803`21c782fb 48897018        mov     qword ptr [rax+18h],rsi
fffff803`21c782ff 48897820        mov     qword ptr [rax+20h],rdi
fffff803`21c78303 4156            push    r14
fffff803`21c78305 4883ec30        sub     rsp,30h
fffff803`21c78309 4c8d7110        lea     r14,[rcx+10h]
fffff803`21c7830d 488bf9          mov     rdi,rcx
fffff803`21c78310 498b36          mov     rsi,qword ptr [r14]
fffff803`21c78313 493bf6          cmp     rsi,r14
fffff803`21c78316 7420            je      nt!CcDeleteBcbs+0x48 (fffff803`21c78338)

nt!CcDeleteBcbs+0x28:
fffff803`21c78318 33ed            xor     ebp,ebp

nt!CcDeleteBcbs+0x2a:
fffff803`21c7831a 488d5ef0        lea     rbx,[rsi-10h]
fffff803`21c7831e b9fd020000      mov     ecx,2FDh
fffff803`21c78323 488d4310        lea     rax,[rbx+10h]
fffff803`21c78327 488b30          mov     rsi,qword ptr [rax]
fffff803`21c7832a 66390b          cmp     word ptr [rbx],cx
fffff803`21c7832d 0f84e16c1c00    je      nt! ?? ::FNODOBFM::`string'+0x2a82 (fffff803`21e3f014)

nt!CcDeleteBcbs+0x43:
fffff803`21c78333 493bf6          cmp     rsi,r14
fffff803`21c78336 75e2            jne     nt!CcDeleteBcbs+0x2a (fffff803`21c7831a)

nt!CcDeleteBcbs+0x48:
fffff803`21c78338 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21c7833d 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`21c78342 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`21c78347 488b7c2458      mov     rdi,qword ptr [rsp+58h]
fffff803`21c7834c 4883c430        add     rsp,30h
fffff803`21c78350 415e            pop     r14
fffff803`21c78352 c3              ret

nt!CcChangeBackingFileObject+0x31:
fffff803`21c86831 41bf05000000    mov     r15d,5
fffff803`21c86837 418bcf          mov     ecx,r15d
fffff803`21c8683a e881b00900      call    nt!KeAcquireQueuedSpinLock (fffff803`21d218c0)
fffff803`21c8683f 408ae8          mov     bpl,al
fffff803`21c86842 4885db          test    rbx,rbx
fffff803`21c86845 0f8513891b00    jne     nt! ?? ::FNODOBFM::`string'+0x2bbe (fffff803`21e3f15e)

nt!CcChangeBackingFileObject+0x4b:
fffff803`21c8684b 488b4628        mov     rax,qword ptr [rsi+28h]
fffff803`21c8684f 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21c86853 f7819800000000001000 test dword ptr [rcx+98h],100000h
fffff803`21c8685d 0f853f891b00    jne     nt! ?? ::FNODOBFM::`string'+0x2c02 (fffff803`21e3f1a2)

nt!CcChangeBackingFileObject+0x63:
fffff803`21c86863 4883c160        add     rcx,60h
fffff803`21c86867 488b39          mov     rdi,qword ptr [rcx]
fffff803`21c8686a 4883e7f0        and     rdi,0FFFFFFFFFFFFFFF0h
fffff803`21c8686e 4885db          test    rbx,rbx
fffff803`21c86871 0f8561891b00    jne     nt! ?? ::FNODOBFM::`string'+0x2c38 (fffff803`21e3f1d8)

nt!CcChangeBackingFileObject+0x77:
fffff803`21c86877 488bd6          mov     rdx,rsi
fffff803`21c8687a e8b18c0c00      call    nt!ObFastReplaceObject (fffff803`21d4f530)
fffff803`21c8687f 408ad5          mov     dl,bpl
fffff803`21c86882 498bcf          mov     rcx,r15
fffff803`21c86885 e8a67b0a00      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21c8688a 4983cbff        or      r11,0FFFFFFFFFFFFFFFFh
fffff803`21c8688e f04c0fc11de1452d00 lock xadd qword ptr [nt!CcChangeSharedCacheMapFileLock (fffff803`21f5ae78)],r11
fffff803`21c86897 41f6c302        test    r11b,2
fffff803`21c8689b 0f857a891b00    jne     nt! ?? ::FNODOBFM::`string'+0x2c7b (fffff803`21e3f21b)

nt!CcChangeBackingFileObject+0xa1:
fffff803`21c868a1 bb44666c74      mov     ebx,746C6644h
fffff803`21c868a6 488bce          mov     rcx,rsi
fffff803`21c868a9 8bd3            mov     edx,ebx
fffff803`21c868ab e838fd0b00      call    nt!ObfReferenceObjectWithTag (fffff803`21d465e8)
fffff803`21c868b0 8bd3            mov     edx,ebx
fffff803`21c868b2 488bcf          mov     rcx,rdi
fffff803`21c868b5 e8b6dc0900      call    nt!ObDereferenceObjectDeferDeleteWithTag (fffff803`21d24570)

nt!CcChangeBackingFileObject+0xba:
fffff803`21c868ba 33c0            xor     eax,eax

nt!CcChangeBackingFileObject+0xbc:
fffff803`21c868bc 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`21c868c1 488b6c2448      mov     rbp,qword ptr [rsp+48h]
fffff803`21c868c6 488b742450      mov     rsi,qword ptr [rsp+50h]
fffff803`21c868cb 4883c420        add     rsp,20h
fffff803`21c868cf 415f            pop     r15
fffff803`21c868d1 415e            pop     r14
fffff803`21c868d3 5f              pop     rdi
fffff803`21c868d4 c3              ret

nt! ?? ::FNODOBFM::`string'+0x2a82:
fffff803`21e3f014 396b40          cmp     dword ptr [rbx+40h],ebp
fffff803`21e3f017 0f8507010000    jne     nt! ?? ::FNODOBFM::`string'+0x2b92 (fffff803`21e3f124)

nt! ?? ::FNODOBFM::`string'+0x2a8b:
fffff803`21e3f01d 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21e3f021 48394608        cmp     qword ptr [rsi+8],rax
fffff803`21e3f025 0f85f2000000    jne     nt! ?? ::FNODOBFM::`string'+0x2b8b (fffff803`21e3f11d)

nt! ?? ::FNODOBFM::`string'+0x2a99:
fffff803`21e3f02b 483901          cmp     qword ptr [rcx],rax
fffff803`21e3f02e 0f85e9000000    jne     nt! ?? ::FNODOBFM::`string'+0x2b8b (fffff803`21e3f11d)

nt! ?? ::FNODOBFM::`string'+0x2aa2:
fffff803`21e3f034 488931          mov     qword ptr [rcx],rsi
fffff803`21e3f037 48894e08        mov     qword ptr [rsi+8],rcx
fffff803`21e3f03b 48817f2000000002 cmp     qword ptr [rdi+20h],2000000h
fffff803`21e3f043 7e1c            jle     nt! ?? ::FNODOBFM::`string'+0x2acf (fffff803`21e3f061)

nt! ?? ::FNODOBFM::`string'+0x2ab3:
fffff803`21e3f045 f7879800000000020000 test dword ptr [rdi+98h],200h
fffff803`21e3f04f 7410            je      nt! ?? ::FNODOBFM::`string'+0x2acf (fffff803`21e3f061)

nt! ?? ::FNODOBFM::`string'+0x2abf:
fffff803`21e3f051 488b5308        mov     rdx,qword ptr [rbx+8]
fffff803`21e3f055 4183c8ff        or      r8d,0FFFFFFFFh
fffff803`21e3f059 488bcf          mov     rcx,rdi
fffff803`21e3f05c e8f3c0efff      call    nt!CcAdjustVacbLevelLockCount (fffff803`21d3b154)

nt! ?? ::FNODOBFM::`string'+0x2acf:
fffff803`21e3f061 4839abb8000000  cmp     qword ptr [rbx+0B8h],rbp
fffff803`21e3f068 742d            je      nt! ?? ::FNODOBFM::`string'+0x2b05 (fffff803`21e3f097)

nt! ?? ::FNODOBFM::`string'+0x2ad8:
fffff803`21e3f06a 488b4338        mov     rax,qword ptr [rbx+38h]
fffff803`21e3f06e 83c9ff          or      ecx,0FFFFFFFFh
fffff803`21e3f071 488b5008        mov     rdx,qword ptr [rax+8]
fffff803`21e3f075 f00fc14810      lock xadd dword ptr [rax+10h],ecx
fffff803`21e3f07a ffc9            dec     ecx
fffff803`21e3f07c 6685c9          test    cx,cx
fffff803`21e3f07f 7516            jne     nt! ?? ::FNODOBFM::`string'+0x2b05 (fffff803`21e3f097)

nt! ?? ::FNODOBFM::`string'+0x2aef:
fffff803`21e3f081 488b8ab8000000  mov     rcx,qword ptr [rdx+0B8h]
fffff803`21e3f088 4885c9          test    rcx,rcx
fffff803`21e3f08b 740a            je      nt! ?? ::FNODOBFM::`string'+0x2b05 (fffff803`21e3f097)

nt! ?? ::FNODOBFM::`string'+0x2afb:
fffff803`21e3f08d 4533c0          xor     r8d,r8d
fffff803`21e3f090 33d2            xor     edx,edx
fffff803`21e3f092 e8e99decff      call    nt!KeSetEvent (fffff803`21d08e80)

nt! ?? ::FNODOBFM::`string'+0x2b05:
fffff803`21e3f097 b905000000      mov     ecx,5
fffff803`21e3f09c e81f28eeff      call    nt!KeAcquireQueuedSpinLock (fffff803`21d218c0)
fffff803`21e3f0a1 448ad8          mov     r11b,al
fffff803`21e3f0a4 40386b02        cmp     byte ptr [rbx+2],bpl
fffff803`21e3f0a8 743a            je      nt! ?? ::FNODOBFM::`string'+0x2b52 (fffff803`21e3f0e4)

nt! ?? ::FNODOBFM::`string'+0x2b18:
fffff803`21e3f0aa 8b4b04          mov     ecx,dword ptr [rbx+4]
fffff803`21e3f0ad c1e90c          shr     ecx,0Ch
fffff803`21e3f0b0 448bc1          mov     r8d,ecx
fffff803`21e3f0b3 4c2905a6ba1100  sub     qword ptr [nt!CcGlobalDirtyPageStatistics (fffff803`21f5ab60)],r8
fffff803`21e3f0ba 83f9ff          cmp     ecx,0FFFFFFFFh
fffff803`21e3f0bd 7340            jae     nt! ?? ::FNODOBFM::`string'+0x2b6d (fffff803`21e3f0ff)

nt! ?? ::FNODOBFM::`string'+0x2b2d:
fffff803`21e3f0bf 294f70          sub     dword ptr [rdi+70h],ecx
fffff803`21e3f0c2 488b97f8010000  mov     rdx,qword ptr [rdi+1F8h]
fffff803`21e3f0c9 4c294220        sub     qword ptr [rdx+20h],r8
fffff803`21e3f0cd f7879800000000000001 test dword ptr [rdi+98h],1000000h
fffff803`21e3f0d7 740b            je      nt! ?? ::FNODOBFM::`string'+0x2b52 (fffff803`21e3f0e4)

nt! ?? ::FNODOBFM::`string'+0x2b47:
fffff803`21e3f0d9 488b87f0000000  mov     rax,qword ptr [rdi+0F0h]
fffff803`21e3f0e0 4c294018        sub     qword ptr [rax+18h],r8

nt! ?? ::FNODOBFM::`string'+0x2b52:
fffff803`21e3f0e4 418ad3          mov     dl,r11b
fffff803`21e3f0e7 b905000000      mov     ecx,5
fffff803`21e3f0ec e83ff3eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21e3f0f1 488bcb          mov     rcx,rbx
fffff803`21e3f0f4 e88762f9ff      call    nt!CcDeallocateBcb (fffff803`21dd5380)
fffff803`21e3f0f9 90              nop
fffff803`21e3f0fa e93492e3ff      jmp     nt!CcDeleteBcbs+0x43 (fffff803`21c78333)

nt! ?? ::FNODOBFM::`string'+0x2b6d:
fffff803`21e3f0ff 4533c9          xor     r9d,r9d
fffff803`21e3f102 ba870f0000      mov     edx,0F87h
fffff803`21e3f107 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`21e3f10e 418d4934        lea     ecx,[r9+34h]
fffff803`21e3f112 48896c2420      mov     qword ptr [rsp+20h],rbp
fffff803`21e3f117 e824d3e8ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e3f11c cc              int     3

nt! ?? ::FNODOBFM::`string'+0x2b8b:
fffff803`21e3f11d b903000000      mov     ecx,3
fffff803`21e3f122 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x2b92:
fffff803`21e3f124 4533c9          xor     r9d,r9d
fffff803`21e3f127 bafb0a0000      mov     edx,0AFBh
fffff803`21e3f12c 49c7c0200400c0  mov     r8,0FFFFFFFFC0000420h
fffff803`21e3f133 418d4934        lea     ecx,[r9+34h]
fffff803`21e3f137 48896c2420      mov     qword ptr [rsp+20h],rbp
fffff803`21e3f13c e8ffd2e8ff      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21e3f141 cc              int     3
fffff803`21e3f142 90              nop
fffff803`21e3f143 90              nop
fffff803`21e3f144 90              nop
fffff803`21e3f145 90              nop
fffff803`21e3f146 90              nop
fffff803`21e3f147 90              nop
fffff803`21e3f148 90              nop
fffff803`21e3f149 90              nop
fffff803`21e3f14a 90              nop
fffff803`21e3f14b 90              nop
fffff803`21e3f14c 90              nop
fffff803`21e3f14d 90              nop
fffff803`21e3f14e 90              nop
fffff803`21e3f14f 90              nop
fffff803`21e3f150 498bce          mov     rcx,r14
fffff803`21e3f153 e8a822f1ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`21e3f158 90              nop
fffff803`21e3f159 e9d376e4ff      jmp     nt!CcChangeBackingFileObject+0x31 (fffff803`21c86831)

nt! ?? ::FNODOBFM::`string'+0x2bbe:
fffff803`21e3f15e 488b5628        mov     rdx,qword ptr [rsi+28h]
fffff803`21e3f162 48395328        cmp     qword ptr [rbx+28h],rdx
fffff803`21e3f166 0f84df76e4ff    je      nt!CcChangeBackingFileObject+0x4b (fffff803`21c8684b)

nt! ?? ::FNODOBFM::`string'+0x2bcc:
fffff803`21e3f16c 408ad5          mov     dl,bpl
fffff803`21e3f16f 498bcf          mov     rcx,r15
fffff803`21e3f172 e8b9f2eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21e3f177 4983cbff        or      r11,0FFFFFFFFFFFFFFFFh
fffff803`21e3f17b f04c0fc11df4bc1100 lock xadd qword ptr [nt!CcChangeSharedCacheMapFileLock (fffff803`21f5ae78)],r11
fffff803`21e3f184 41f6c302        test    r11b,2
fffff803`21e3f188 740e            je      nt! ?? ::FNODOBFM::`string'+0x2bf8 (fffff803`21e3f198)

nt! ?? ::FNODOBFM::`string'+0x2bea:
fffff803`21e3f18a 41f6c304        test    r11b,4
fffff803`21e3f18e 7508            jne     nt! ?? ::FNODOBFM::`string'+0x2bf8 (fffff803`21e3f198)

nt! ?? ::FNODOBFM::`string'+0x2bf0:
fffff803`21e3f190 498bce          mov     rcx,r14
fffff803`21e3f193 e87c5ef1ff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)

nt! ?? ::FNODOBFM::`string'+0x2bf8:
fffff803`21e3f198 b8f00000c0      mov     eax,0C00000F0h
fffff803`21e3f19d e91a77e4ff      jmp     nt!CcChangeBackingFileObject+0xbc (fffff803`21c868bc)

nt! ?? ::FNODOBFM::`string'+0x2c02:
fffff803`21e3f1a2 408ad5          mov     dl,bpl
fffff803`21e3f1a5 498bcf          mov     rcx,r15
fffff803`21e3f1a8 e883f2eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21e3f1ad 4983cbff        or      r11,0FFFFFFFFFFFFFFFFh
fffff803`21e3f1b1 f04c0fc11dbebc1100 lock xadd qword ptr [nt!CcChangeSharedCacheMapFileLock (fffff803`21f5ae78)],r11
fffff803`21e3f1ba 41f6c302        test    r11b,2
fffff803`21e3f1be 740e            je      nt! ?? ::FNODOBFM::`string'+0x2c2e (fffff803`21e3f1ce)

nt! ?? ::FNODOBFM::`string'+0x2c20:
fffff803`21e3f1c0 41f6c304        test    r11b,4
fffff803`21e3f1c4 7508            jne     nt! ?? ::FNODOBFM::`string'+0x2c2e (fffff803`21e3f1ce)

nt! ?? ::FNODOBFM::`string'+0x2c26:
fffff803`21e3f1c6 498bce          mov     rcx,r14
fffff803`21e3f1c9 e8465ef1ff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)

nt! ?? ::FNODOBFM::`string'+0x2c2e:
fffff803`21e3f1ce b8bb0000c0      mov     eax,0C00000BBh
fffff803`21e3f1d3 e9e476e4ff      jmp     nt!CcChangeBackingFileObject+0xbc (fffff803`21c868bc)

nt! ?? ::FNODOBFM::`string'+0x2c38:
fffff803`21e3f1d8 483bfb          cmp     rdi,rbx
fffff803`21e3f1db 0f849676e4ff    je      nt!CcChangeBackingFileObject+0x77 (fffff803`21c86877)

nt! ?? ::FNODOBFM::`string'+0x2c41:
fffff803`21e3f1e1 408ad5          mov     dl,bpl
fffff803`21e3f1e4 498bcf          mov     rcx,r15
fffff803`21e3f1e7 e844f2eeff      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21e3f1ec 4983cbff        or      r11,0FFFFFFFFFFFFFFFFh
fffff803`21e3f1f0 f04c0fc11d7fbc1100 lock xadd qword ptr [nt!CcChangeSharedCacheMapFileLock (fffff803`21f5ae78)],r11
fffff803`21e3f1f9 41f6c302        test    r11b,2
fffff803`21e3f1fd 0f84b776e4ff    je      nt!CcChangeBackingFileObject+0xba (fffff803`21c868ba)

nt! ?? ::FNODOBFM::`string'+0x2c63:
fffff803`21e3f203 41f6c304        test    r11b,4
fffff803`21e3f207 0f85ad76e4ff    jne     nt!CcChangeBackingFileObject+0xba (fffff803`21c868ba)

nt! ?? ::FNODOBFM::`string'+0x2c6d:
fffff803`21e3f20d 498bce          mov     rcx,r14
fffff803`21e3f210 e8ff5df1ff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)
fffff803`21e3f215 90              nop
fffff803`21e3f216 e99f76e4ff      jmp     nt!CcChangeBackingFileObject+0xba (fffff803`21c868ba)

nt! ?? ::FNODOBFM::`string'+0x2c7b:
fffff803`21e3f21b 41f6c304        test    r11b,4
fffff803`21e3f21f 0f857c76e4ff    jne     nt!CcChangeBackingFileObject+0xa1 (fffff803`21c868a1)

nt! ?? ::FNODOBFM::`string'+0x2c85:
fffff803`21e3f225 498bce          mov     rcx,r14
fffff803`21e3f228 e8e75df1ff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)
fffff803`21e3f22d 90              nop
fffff803`21e3f22e e96e76e4ff      jmp     nt!CcChangeBackingFileObject+0xa1 (fffff803`21c868a1)
