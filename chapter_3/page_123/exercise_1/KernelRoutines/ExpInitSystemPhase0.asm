0: kd> uf ExpInitSystemPhase0
nt!ExpInitSystemPhase0:
fffff800`12344150 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`12344155 4889742410      mov     qword ptr [rsp+10h],rsi
fffff800`1234415a 57              push    rdi
fffff800`1234415b 4883ec20        sub     rsp,20h
fffff800`1234415f 33db            xor     ebx,ebx
fffff800`12344161 488d05b859bcff  lea     rax,[nt!ExpSystemResourcesList (fffff800`11f09b20)]
fffff800`12344168 488d0d0959bcff  lea     rcx,[nt!ExpEnvironmentLock+0x18 (fffff800`11f09a78)]
fffff800`1234416f 8d5301          lea     edx,[rbx+1]
fffff800`12344172 4533c0          xor     r8d,r8d
fffff800`12344175 48c7059859bcff00a69dfd mov qword ptr [nt!ExpTimeout (fffff800`11f09b18)],0FFFFFFFFFD9DA600h
fffff800`12344180 488905a159bcff  mov     qword ptr [nt!ExpSystemResourcesList+0x8 (fffff800`11f09b28)],rax
fffff800`12344187 4889059259bcff  mov     qword ptr [nt!ExpSystemResourcesList (fffff800`11f09b20)],rax
fffff800`1234418e c705c858bcff01000000 mov dword ptr [nt!ExpEnvironmentLock (fffff800`11f09a60)],1
fffff800`12344198 48891dc958bcff  mov     qword ptr [nt!ExpEnvironmentLock+0x8 (fffff800`11f09a68)],rbx
fffff800`1234419f 891dcb58bcff    mov     dword ptr [nt!ExpEnvironmentLock+0x10 (fffff800`11f09a70)],ebx
fffff800`123441a5 e8e61c9eff      call    nt!KeInitializeEvent (fffff800`11d25e90)
fffff800`123441aa 488d05ff58bcff  lea     rax,[nt!ExPagedLookasideListHead (fffff800`11f09ab0)]
fffff800`123441b1 488d15e858bcff  lea     rdx,[nt!ExNPagedLookasideListHead (fffff800`11f09aa0)]
fffff800`123441b8 488d0d8159bcff  lea     rcx,[nt!ExpFirmwareTableResource (fffff800`11f09b40)]
fffff800`123441bf 488905f258bcff  mov     qword ptr [nt!ExPagedLookasideListHead+0x8 (fffff800`11f09ab8)],rax
fffff800`123441c6 488905e358bcff  mov     qword ptr [nt!ExPagedLookasideListHead (fffff800`11f09ab0)],rax
fffff800`123441cd 488d05dc59bcff  lea     rax,[nt!ExpFirmwareTableProviderListHead (fffff800`11f09bb0)]
fffff800`123441d4 488915cd58bcff  mov     qword ptr [nt!ExNPagedLookasideListHead+0x8 (fffff800`11f09aa8)],rdx
fffff800`123441db 488915be58bcff  mov     qword ptr [nt!ExNPagedLookasideListHead (fffff800`11f09aa0)],rdx
fffff800`123441e2 48891dd758bcff  mov     qword ptr [nt!ExNPagedLookasideLock (fffff800`11f09ac0)],rbx
fffff800`123441e9 488905c859bcff  mov     qword ptr [nt!ExpFirmwareTableProviderListHead+0x8 (fffff800`11f09bb8)],rax
fffff800`123441f0 488905b959bcff  mov     qword ptr [nt!ExpFirmwareTableProviderListHead (fffff800`11f09bb0)],rax
fffff800`123441f7 48891de258bcff  mov     qword ptr [nt!ExPagedLookasideLock (fffff800`11f09ae0)],rbx
fffff800`123441fe e8cdd49eff      call    nt!ExInitializeResourceLite (fffff800`11d316d0)
fffff800`12344203 833de67efdff07  cmp     dword ptr [nt!CmSuiteBufferType (fffff800`1231c0f0)],7
fffff800`1234420a 48891d2750bcff  mov     qword ptr [nt!ExpHotpatchQueryLock (fffff800`11f09238)],rbx
fffff800`12344211 48891da859bcff  mov     qword ptr [nt!ExpConDrvLoadLock (fffff800`11f09bc0)],rbx
fffff800`12344218 48891dc173bcff  mov     qword ptr [nt!ExpBootFinishedTimer+0x40 (fffff800`11f0b5e0)],rbx
fffff800`1234421f 48891dd273bcff  mov     qword ptr [nt!ExpFastCacheUpdateLock+0x8 (fffff800`11f0b5f8)],rbx
fffff800`12344226 0f8510010000    jne     nt!ExpInitSystemPhase0+0x1ec (fffff800`1234433c)

nt!ExpInitSystemPhase0+0xdc:
fffff800`1234422c 66391d0d8dfdff  cmp     word ptr [nt!CmSuiteBuffer (fffff800`1231cf40)],bx
fffff800`12344233 0f8403010000    je      nt!ExpInitSystemPhase0+0x1ec (fffff800`1234433c)

nt!ExpInitSystemPhase0+0xe9:
fffff800`12344239 8b05152fbcff    mov     eax,dword ptr [nt!NtVhdBootFile+0x17c (fffff800`11f07154)]
fffff800`1234423f 4c8d05fa8cfdff  lea     r8,[nt!CmSuiteBuffer (fffff800`1231cf40)]
fffff800`12344246 448d5b0f        lea     r11d,[rbx+0Fh]
fffff800`1234424a 4983c9ff        or      r9,0FFFFFFFFFFFFFFFFh
fffff800`1234424e 448d530b        lea     r10d,[rbx+0Bh]

nt!ExpInitSystemPhase0+0x102:
fffff800`12344252 488d3d87a5d5ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e7e0)]
fffff800`12344259 33d2            xor     edx,edx
fffff800`1234425b 498bf0          mov     rsi,r8
fffff800`1234425e 498bcb          mov     rcx,r11
fffff800`12344261 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`12344264 7405            je      nt!ExpInitSystemPhase0+0x11b (fffff800`1234426b)

nt!ExpInitSystemPhase0+0x116:
fffff800`12344266 1bd2            sbb     edx,edx
fffff800`12344268 411bd1          sbb     edx,r9d

nt!ExpInitSystemPhase0+0x11b:
fffff800`1234426b 85d2            test    edx,edx
fffff800`1234426d 0f84e7000000    je      nt!ExpInitSystemPhase0+0x20a (fffff800`1234435a)

nt!ExpInitSystemPhase0+0x123:
fffff800`12344273 33d2            xor     edx,edx
fffff800`12344275 488d3de4a5d5ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e860)]
fffff800`1234427c 498bf0          mov     rsi,r8
fffff800`1234427f 8d4a1b          lea     ecx,[rdx+1Bh]
fffff800`12344282 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`12344285 7405            je      nt!ExpInitSystemPhase0+0x13c (fffff800`1234428c)

nt!ExpInitSystemPhase0+0x137:
fffff800`12344287 1bd2            sbb     edx,edx
fffff800`12344289 411bd1          sbb     edx,r9d

nt!ExpInitSystemPhase0+0x13c:
fffff800`1234428c 85d2            test    edx,edx
fffff800`1234428e 0f84cb000000    je      nt!ExpInitSystemPhase0+0x20f (fffff800`1234435f)

nt!ExpInitSystemPhase0+0x144:
fffff800`12344294 488d3dada5d5ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e848)]
fffff800`1234429b 33d2            xor     edx,edx
fffff800`1234429d 498bf0          mov     rsi,r8
fffff800`123442a0 498bca          mov     rcx,r10
fffff800`123442a3 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`123442a6 7405            je      nt!ExpInitSystemPhase0+0x15d (fffff800`123442ad)

nt!ExpInitSystemPhase0+0x158:
fffff800`123442a8 1bd2            sbb     edx,edx
fffff800`123442aa 411bd1          sbb     edx,r9d

nt!ExpInitSystemPhase0+0x15d:
fffff800`123442ad 85d2            test    edx,edx
fffff800`123442af 0f84af000000    je      nt!ExpInitSystemPhase0+0x214 (fffff800`12344364)

nt!ExpInitSystemPhase0+0x165:
fffff800`123442b5 33d2            xor     edx,edx
fffff800`123442b7 488d3d62a5d5ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e820)]
fffff800`123442be 498bf0          mov     rsi,r8
fffff800`123442c1 8d4a14          lea     ecx,[rdx+14h]
fffff800`123442c4 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`123442c7 7405            je      nt!ExpInitSystemPhase0+0x17e (fffff800`123442ce)

nt!ExpInitSystemPhase0+0x179:
fffff800`123442c9 1bd2            sbb     edx,edx
fffff800`123442cb 411bd1          sbb     edx,r9d

nt!ExpInitSystemPhase0+0x17e:
fffff800`123442ce 85d2            test    edx,edx
fffff800`123442d0 0f8493000000    je      nt!ExpInitSystemPhase0+0x219 (fffff800`12344369)

nt!ExpInitSystemPhase0+0x186:
fffff800`123442d6 488d3dbba5d5ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e898)]
fffff800`123442dd 33d2            xor     edx,edx
fffff800`123442df 498bf0          mov     rsi,r8
fffff800`123442e2 498bca          mov     rcx,r10
fffff800`123442e5 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`123442e8 7405            je      nt!ExpInitSystemPhase0+0x19f (fffff800`123442ef)

nt!ExpInitSystemPhase0+0x19a:
fffff800`123442ea 1bd2            sbb     edx,edx
fffff800`123442ec 411bd1          sbb     edx,r9d

nt!ExpInitSystemPhase0+0x19f:
fffff800`123442ef 85d2            test    edx,edx
fffff800`123442f1 747b            je      nt!ExpInitSystemPhase0+0x21e (fffff800`1234436e)

nt!ExpInitSystemPhase0+0x1a3:
fffff800`123442f3 33d2            xor     edx,edx
fffff800`123442f5 488d3dcca5d5ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e8c8)]
fffff800`123442fc 498bf0          mov     rsi,r8
fffff800`123442ff 8d4a10          lea     ecx,[rdx+10h]
fffff800`12344302 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`12344305 7405            je      nt!ExpInitSystemPhase0+0x1bc (fffff800`1234430c)

nt!ExpInitSystemPhase0+0x1b7:
fffff800`12344307 1bd2            sbb     edx,edx
fffff800`12344309 411bd1          sbb     edx,r9d

nt!ExpInitSystemPhase0+0x1bc:
fffff800`1234430c 85d2            test    edx,edx
fffff800`1234430e 0f85f4680400    jne     nt! ?? ::PBOPGDP::`string'+0xa9f8 (fffff800`1238ac08)

nt!ExpInitSystemPhase0+0x1c4:
fffff800`12344314 83c810          or      eax,10h

nt!ExpInitSystemPhase0+0x1c7:
fffff800`12344317 8905372ebcff    mov     dword ptr [nt!NtVhdBootFile+0x17c (fffff800`11f07154)],eax

nt!ExpInitSystemPhase0+0x1cd:
fffff800`1234431d 498bc9          mov     rcx,r9

nt!ExpInitSystemPhase0+0x1d0:
fffff800`12344320 48ffc1          inc     rcx
fffff800`12344323 6641391c48      cmp     word ptr [r8+rcx*2],bx
fffff800`12344328 75f6            jne     nt!ExpInitSystemPhase0+0x1d0 (fffff800`12344320)

nt!ExpInitSystemPhase0+0x1da:
fffff800`1234432a 4d8d0448        lea     r8,[r8+rcx*2]
fffff800`1234432e 4983c002        add     r8,2
fffff800`12344332 66413918        cmp     word ptr [r8],bx
fffff800`12344336 0f8516ffffff    jne     nt!ExpInitSystemPhase0+0x102 (fffff800`12344252)

nt!ExpInitSystemPhase0+0x1ec:
fffff800`1234433c 33c9            xor     ecx,ecx
fffff800`1234433e e83d540200      call    nt!ExpUpdateProductSuiteType (fffff800`12369780)
fffff800`12344343 e834000000      call    nt!ExpRngInitializeSystem (fffff800`1234437c)
fffff800`12344348 488b5c2430      mov     rbx,qword ptr [rsp+30h]
fffff800`1234434d 488b742438      mov     rsi,qword ptr [rsp+38h]
fffff800`12344352 b001            mov     al,1
fffff800`12344354 4883c420        add     rsp,20h
fffff800`12344358 5f              pop     rdi
fffff800`12344359 c3              ret

nt!ExpInitSystemPhase0+0x20a:
fffff800`1234435a 83c801          or      eax,1
fffff800`1234435d ebb8            jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt!ExpInitSystemPhase0+0x20f:
fffff800`1234435f 83c820          or      eax,20h
fffff800`12344362 ebb3            jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt!ExpInitSystemPhase0+0x214:
fffff800`12344364 83c802          or      eax,2
fffff800`12344367 ebae            jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt!ExpInitSystemPhase0+0x219:
fffff800`12344369 83c808          or      eax,8
fffff800`1234436c eba9            jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt!ExpInitSystemPhase0+0x21e:
fffff800`1234436e 83c804          or      eax,4
fffff800`12344371 eba4            jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xa9f8:
fffff800`1238ac08 488d3da13cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e8b0)]
fffff800`1238ac0f 33d2            xor     edx,edx
fffff800`1238ac11 498bf0          mov     rsi,r8
fffff800`1238ac14 498bca          mov     rcx,r10
fffff800`1238ac17 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238ac1a 7405            je      nt! ?? ::PBOPGDP::`string'+0xaa11 (fffff800`1238ac21)

nt! ?? ::PBOPGDP::`string'+0xaa0c:
fffff800`1238ac1c 1bd2            sbb     edx,edx
fffff800`1238ac1e 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xaa11:
fffff800`1238ac21 85d2            test    edx,edx
fffff800`1238ac23 7508            jne     nt! ?? ::PBOPGDP::`string'+0xaa1d (fffff800`1238ac2d)

nt! ?? ::PBOPGDP::`string'+0xaa15:
fffff800`1238ac25 83c840          or      eax,40h
fffff800`1238ac28 e9ea96fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xaa1d:
fffff800`1238ac2d 488d3dcc3cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e900)]
fffff800`1238ac34 33d2            xor     edx,edx
fffff800`1238ac36 498bf0          mov     rsi,r8
fffff800`1238ac39 498bca          mov     rcx,r10
fffff800`1238ac3c 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238ac3f 7405            je      nt! ?? ::PBOPGDP::`string'+0xaa36 (fffff800`1238ac46)

nt! ?? ::PBOPGDP::`string'+0xaa31:
fffff800`1238ac41 1bd2            sbb     edx,edx
fffff800`1238ac43 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xaa36:
fffff800`1238ac46 85d2            test    edx,edx
fffff800`1238ac48 7509            jne     nt! ?? ::PBOPGDP::`string'+0xaa43 (fffff800`1238ac53)

nt! ?? ::PBOPGDP::`string'+0xaa3a:
fffff800`1238ac4a 0fbae807        bts     eax,7
fffff800`1238ac4e e9c496fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xaa43:
fffff800`1238ac53 33d2            xor     edx,edx
fffff800`1238ac55 488d3d8c3cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e8e8)]
fffff800`1238ac5c 498bf0          mov     rsi,r8
fffff800`1238ac5f 8d4a09          lea     ecx,[rdx+9]
fffff800`1238ac62 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238ac65 7405            je      nt! ?? ::PBOPGDP::`string'+0xaa5c (fffff800`1238ac6c)

nt! ?? ::PBOPGDP::`string'+0xaa57:
fffff800`1238ac67 1bd2            sbb     edx,edx
fffff800`1238ac69 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xaa5c:
fffff800`1238ac6c 85d2            test    edx,edx
fffff800`1238ac6e 7509            jne     nt! ?? ::PBOPGDP::`string'+0xaa69 (fffff800`1238ac79)

nt! ?? ::PBOPGDP::`string'+0xaa60:
fffff800`1238ac70 0fbae809        bts     eax,9
fffff800`1238ac74 e99e96fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xaa69:
fffff800`1238ac79 33d2            xor     edx,edx
fffff800`1238ac7b 488d3dc63cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e948)]
fffff800`1238ac82 498bf0          mov     rsi,r8
fffff800`1238ac85 8d4a06          lea     ecx,[rdx+6]
fffff800`1238ac88 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238ac8b 7405            je      nt! ?? ::PBOPGDP::`string'+0xaa82 (fffff800`1238ac92)

nt! ?? ::PBOPGDP::`string'+0xaa7d:
fffff800`1238ac8d 1bd2            sbb     edx,edx
fffff800`1238ac8f 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xaa82:
fffff800`1238ac92 85d2            test    edx,edx
fffff800`1238ac94 7509            jne     nt! ?? ::PBOPGDP::`string'+0xaa8f (fffff800`1238ac9f)

nt! ?? ::PBOPGDP::`string'+0xaa86:
fffff800`1238ac96 0fbae80a        bts     eax,0Ah
fffff800`1238ac9a e97896fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xaa8f:
fffff800`1238ac9f 33d2            xor     edx,edx
fffff800`1238aca1 488d3d703cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e918)]
fffff800`1238aca8 498bf0          mov     rsi,r8
fffff800`1238acab 8d4a15          lea     ecx,[rdx+15h]
fffff800`1238acae 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238acb1 7405            je      nt! ?? ::PBOPGDP::`string'+0xaaa8 (fffff800`1238acb8)

nt! ?? ::PBOPGDP::`string'+0xaaa3:
fffff800`1238acb3 1bd2            sbb     edx,edx
fffff800`1238acb5 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xaaa8:
fffff800`1238acb8 85d2            test    edx,edx
fffff800`1238acba 7509            jne     nt! ?? ::PBOPGDP::`string'+0xaab5 (fffff800`1238acc5)

nt! ?? ::PBOPGDP::`string'+0xaaac:
fffff800`1238acbc 0fbae80b        bts     eax,0Bh
fffff800`1238acc0 e95296fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xaab5:
fffff800`1238acc5 33d2            xor     edx,edx
fffff800`1238acc7 488d3daa3cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e978)]
fffff800`1238acce 498bf0          mov     rsi,r8
fffff800`1238acd1 8d4a13          lea     ecx,[rdx+13h]
fffff800`1238acd4 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238acd7 7405            je      nt! ?? ::PBOPGDP::`string'+0xaace (fffff800`1238acde)

nt! ?? ::PBOPGDP::`string'+0xaac9:
fffff800`1238acd9 1bd2            sbb     edx,edx
fffff800`1238acdb 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xaace:
fffff800`1238acde 85d2            test    edx,edx
fffff800`1238ace0 7509            jne     nt! ?? ::PBOPGDP::`string'+0xaadb (fffff800`1238aceb)

nt! ?? ::PBOPGDP::`string'+0xaad2:
fffff800`1238ace2 0fbae80c        bts     eax,0Ch
fffff800`1238ace6 e92c96fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xaadb:
fffff800`1238aceb 488d3d663cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e958)]
fffff800`1238acf2 33d2            xor     edx,edx
fffff800`1238acf4 498bf0          mov     rsi,r8
fffff800`1238acf7 498bcb          mov     rcx,r11
fffff800`1238acfa 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238acfd 7405            je      nt! ?? ::PBOPGDP::`string'+0xaaf4 (fffff800`1238ad04)

nt! ?? ::PBOPGDP::`string'+0xaaef:
fffff800`1238acff 1bd2            sbb     edx,edx
fffff800`1238ad01 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xaaf4:
fffff800`1238ad04 85d2            test    edx,edx
fffff800`1238ad06 7509            jne     nt! ?? ::PBOPGDP::`string'+0xab01 (fffff800`1238ad11)

nt! ?? ::PBOPGDP::`string'+0xaaf8:
fffff800`1238ad08 0fbae80d        bts     eax,0Dh
fffff800`1238ad0c e90696fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xab01:
fffff800`1238ad11 488d3da03cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e9b8)]
fffff800`1238ad18 33d2            xor     edx,edx
fffff800`1238ad1a 498bf0          mov     rsi,r8
fffff800`1238ad1d 498bcb          mov     rcx,r11
fffff800`1238ad20 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238ad23 7405            je      nt! ?? ::PBOPGDP::`string'+0xab1a (fffff800`1238ad2a)

nt! ?? ::PBOPGDP::`string'+0xab15:
fffff800`1238ad25 1bd2            sbb     edx,edx
fffff800`1238ad27 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xab1a:
fffff800`1238ad2a 85d2            test    edx,edx
fffff800`1238ad2c 7509            jne     nt! ?? ::PBOPGDP::`string'+0xab27 (fffff800`1238ad37)

nt! ?? ::PBOPGDP::`string'+0xab1e:
fffff800`1238ad2e 0fbae80e        bts     eax,0Eh
fffff800`1238ad32 e9e095fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xab27:
fffff800`1238ad37 33d2            xor     edx,edx
fffff800`1238ad39 488d3d603cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e9a0)]
fffff800`1238ad40 498bf0          mov     rsi,r8
fffff800`1238ad43 8d4a0a          lea     ecx,[rdx+0Ah]
fffff800`1238ad46 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238ad49 7405            je      nt! ?? ::PBOPGDP::`string'+0xab40 (fffff800`1238ad50)

nt! ?? ::PBOPGDP::`string'+0xab3b:
fffff800`1238ad4b 1bd2            sbb     edx,edx
fffff800`1238ad4d 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xab40:
fffff800`1238ad50 85d2            test    edx,edx
fffff800`1238ad52 7509            jne     nt! ?? ::PBOPGDP::`string'+0xab4d (fffff800`1238ad5d)

nt! ?? ::PBOPGDP::`string'+0xab44:
fffff800`1238ad54 0fbae80f        bts     eax,0Fh
fffff800`1238ad58 e9ba95fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)

nt! ?? ::PBOPGDP::`string'+0xab4d:
fffff800`1238ad5d 33d2            xor     edx,edx
fffff800`1238ad5f 488d3d723cd1ff  lea     rdi,[nt! ?? ::LBKOJDO::`string' (fffff800`1209e9d8)]
fffff800`1238ad66 498bf0          mov     rsi,r8
fffff800`1238ad69 8d4a08          lea     ecx,[rdx+8]
fffff800`1238ad6c 66f3a7          repe cmps word ptr [rsi],word ptr [rdi]
fffff800`1238ad6f 7405            je      nt! ?? ::PBOPGDP::`string'+0xab66 (fffff800`1238ad76)

nt! ?? ::PBOPGDP::`string'+0xab61:
fffff800`1238ad71 1bd2            sbb     edx,edx
fffff800`1238ad73 411bd1          sbb     edx,r9d

nt! ?? ::PBOPGDP::`string'+0xab66:
fffff800`1238ad76 85d2            test    edx,edx
fffff800`1238ad78 0f859f95fbff    jne     nt!ExpInitSystemPhase0+0x1cd (fffff800`1234431d)

nt! ?? ::PBOPGDP::`string'+0xab6e:
fffff800`1238ad7e 0fbae810        bts     eax,10h
fffff800`1238ad82 e99095fbff      jmp     nt!ExpInitSystemPhase0+0x1c7 (fffff800`12344317)
