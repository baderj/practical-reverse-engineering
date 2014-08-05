nt!CmUnRegisterCallback:
fffff803`22187890 48894c2408      mov     qword ptr [rsp+8],rcx
fffff803`22187895 4c8bdc          mov     r11,rsp
fffff803`22187898 53              push    rbx
fffff803`22187899 56              push    rsi
fffff803`2218789a 57              push    rdi
fffff803`2218789b 4154            push    r12
fffff803`2218789d 4155            push    r13
fffff803`2218789f 4156            push    r14
fffff803`221878a1 4157            push    r15
fffff803`221878a3 4881ec80000000  sub     rsp,80h
fffff803`221878aa 41be0d0000c0    mov     r14d,0C000000Dh
fffff803`221878b0 4489b424d8000000 mov     dword ptr [rsp+0D8h],r14d
fffff803`221878b8 33db            xor     ebx,ebx
fffff803`221878ba 49895ba8        mov     qword ptr [r11-58h],rbx
fffff803`221878be 33c0            xor     eax,eax
fffff803`221878c0 498943b0        mov     qword ptr [r11-50h],rax
fffff803`221878c4 498943b8        mov     qword ptr [r11-48h],rax
fffff803`221878c8 49895b80        mov     qword ptr [r11-80h],rbx
fffff803`221878cc 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`221878d5 4183cdff        or      r13d,0FFFFFFFFh
fffff803`221878d9 664401a8e4010000 add     word ptr [rax+1E4h],r13w
fffff803`221878e1 4c8d3d8822ddff  lea     r15,[nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`221878e8 f0490fba2f00    lock bts qword ptr [r15],0
fffff803`221878ee 0f82349f0b00    jb      nt! ?? ::NNGAKEGL::`string'+0x5074 (fffff803`22241828)

nt!CmUnRegisterCallback+0x64:
fffff803`221878f4 41bc00000080    mov     r12d,80000000h

nt!CmUnRegisterCallback+0x6a:
fffff803`221878fa 4533c0          xor     r8d,r8d
fffff803`221878fd 488d542438      lea     rdx,[rsp+38h]
fffff803`22187902 488d0d7722ddff  lea     rcx,[nt!CallbackListHead (fffff803`21f59b80)]
fffff803`22187909 e8dad2e9ff      call    nt!CmListGetNextElement (fffff803`22024be8)
fffff803`2218790e 488bf8          mov     rdi,rax
fffff803`22187911 4889442440      mov     qword ptr [rsp+40h],rax
fffff803`22187916 4885c0          test    rax,rax
fffff803`22187919 0f84dda00b00    je      nt! ?? ::NNGAKEGL::`string'+0x5248 (fffff803`222419fc)

nt!CmUnRegisterCallback+0x8f:
fffff803`2218791f 488b8424c0000000 mov     rax,qword ptr [rsp+0C0h]
fffff803`22187927 48394718        cmp     qword ptr [rdi+18h],rax
fffff803`2218792b 75cd            jne     nt!CmUnRegisterCallback+0x6a (fffff803`221878fa)

nt!CmUnRegisterCallback+0x9d:
fffff803`2218792d 8b4710          mov     eax,dword ptr [rdi+10h]
fffff803`22187930 898424d0000000  mov     dword ptr [rsp+0D0h],eax
fffff803`22187937 3bc3            cmp     eax,ebx
fffff803`22187939 0f85f79e0b00    jne     nt! ?? ::NNGAKEGL::`string'+0x5082 (fffff803`22241836)

nt!CmUnRegisterCallback+0xaf:
fffff803`2218793f 488b0f          mov     rcx,qword ptr [rdi]
fffff803`22187942 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`22187946 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`2218794a 0f85a5a00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x5241 (fffff803`222419f5)

nt!CmUnRegisterCallback+0xc0:
fffff803`22187950 483938          cmp     qword ptr [rax],rdi
fffff803`22187953 0f859ca00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x5241 (fffff803`222419f5)

nt!CmUnRegisterCallback+0xc9:
fffff803`22187959 488908          mov     qword ptr [rax],rcx
fffff803`2218795c 48894108        mov     qword ptr [rcx+8],rax
fffff803`22187960 0f0d0d0922ddff  prefetchw [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`22187967 488b050222ddff  mov     rax,qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2218796e 488bc8          mov     rcx,rax
fffff803`22187971 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`22187975 4883f910        cmp     rcx,10h
fffff803`22187979 488d48f0        lea     rcx,[rax-10h]
fffff803`2218797d 7703            ja      nt!CmUnRegisterCallback+0xf2 (fffff803`22187982)

nt!CmUnRegisterCallback+0xef:
fffff803`2218797f 488bcb          mov     rcx,rbx

nt!CmUnRegisterCallback+0xf2:
fffff803`22187982 a802            test    al,2
fffff803`22187984 0f8545a00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x521b (fffff803`222419cf)

nt!CmUnRegisterCallback+0xfa:
fffff803`2218798a f0480fb10ddd21ddff lock cmpxchg qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)],rcx
fffff803`22187993 0f8536a00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x521b (fffff803`222419cf)

nt!CmUnRegisterCallback+0x109:
fffff803`22187999 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`221879a2 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`221879a9 ffc0            inc     eax
fffff803`221879ab 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`221879b2 6685c0          test    ax,ax
fffff803`221879b5 7510            jne     nt!CmUnRegisterCallback+0x137 (fffff803`221879c7)

nt!CmUnRegisterCallback+0x127:
fffff803`221879b7 488d8198000000  lea     rax,[rcx+98h]
fffff803`221879be 483900          cmp     qword ptr [rax],rax
fffff803`221879c1 0f8516a00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x5229 (fffff803`222419dd)

nt!CmUnRegisterCallback+0x137:
fffff803`221879c7 448bf3          mov     r14d,ebx
fffff803`221879ca 899c24d8000000  mov     dword ptr [rsp+0D8h],ebx

nt!CmUnRegisterCallback+0x141:
fffff803`221879d1 488d442450      lea     rax,[rsp+50h]
fffff803`221879d6 4889442458      mov     qword ptr [rsp+58h],rax
fffff803`221879db 488d442450      lea     rax,[rsp+50h]
fffff803`221879e0 4889442450      mov     qword ptr [rsp+50h],rax
fffff803`221879e5 448afb          mov     r15b,bl
fffff803`221879e8 889c24c8000000  mov     byte ptr [rsp+0C8h],bl
fffff803`221879ef 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`221879f8 664401a8e4010000 add     word ptr [rax+1E4h],r13w
fffff803`22187a00 f0480fba2d6e21ddff00 lock bts qword ptr [nt!CmpContextListLock (fffff803`21f59b78)],0
fffff803`22187a0a 0f8278a00b00    jb      nt! ?? ::NNGAKEGL::`string'+0x52d4 (fffff803`22241a88)

nt!CmUnRegisterCallback+0x180:
fffff803`22187a10 4c8d6740        lea     r12,[rdi+40h]
fffff803`22187a14 498b3424        mov     rsi,qword ptr [r12]
fffff803`22187a18 4889742430      mov     qword ptr [rsp+30h],rsi
fffff803`22187a1d 493bf4          cmp     rsi,r12
fffff803`22187a20 0f8574a00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x52e6 (fffff803`22241a9a)

nt!CmUnRegisterCallback+0x196:
fffff803`22187a26 0f0d0d4b21ddff  prefetchw [nt!CmpContextListLock (fffff803`21f59b78)]
fffff803`22187a2d 488b054421ddff  mov     rax,qword ptr [nt!CmpContextListLock (fffff803`21f59b78)]
fffff803`22187a34 488bc8          mov     rcx,rax
fffff803`22187a37 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`22187a3b 4883f910        cmp     rcx,10h
fffff803`22187a3f 488d48f0        lea     rcx,[rax-10h]
fffff803`22187a43 7703            ja      nt!CmUnRegisterCallback+0x1b8 (fffff803`22187a48)

nt!CmUnRegisterCallback+0x1b5:
fffff803`22187a45 488bcb          mov     rcx,rbx

nt!CmUnRegisterCallback+0x1b8:
fffff803`22187a48 a802            test    al,2
fffff803`22187a4a 0f8503a10b00    jne     nt! ?? ::NNGAKEGL::`string'+0x53ab (fffff803`22241b53)

nt!CmUnRegisterCallback+0x1c0:
fffff803`22187a50 f0480fb10d1f21ddff lock cmpxchg qword ptr [nt!CmpContextListLock (fffff803`21f59b78)],rcx
fffff803`22187a59 0f85f4a00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x53ab (fffff803`22241b53)

nt!CmUnRegisterCallback+0x1cf:
fffff803`22187a5f 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`22187a68 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22187a6f ffc0            inc     eax
fffff803`22187a71 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`22187a78 6685c0          test    ax,ax
fffff803`22187a7b 7510            jne     nt!CmUnRegisterCallback+0x1fd (fffff803`22187a8d)

nt!CmUnRegisterCallback+0x1ed:
fffff803`22187a7d 488d8198000000  lea     rax,[rcx+98h]
fffff803`22187a84 483900          cmp     qword ptr [rax],rax
fffff803`22187a87 0f85d8a00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x53bd (fffff803`22241b65)

nt!CmUnRegisterCallback+0x1fd:
fffff803`22187a8d 488d4c2450      lea     rcx,[rsp+50h]
fffff803`22187a92 488b442450      mov     rax,qword ptr [rsp+50h]
fffff803`22187a97 483bc1          cmp     rax,rcx
fffff803`22187a9a 0f85dda00b00    jne     nt! ?? ::NNGAKEGL::`string'+0x53d5 (fffff803`22241b7d)

nt!CmUnRegisterCallback+0x210:
fffff803`22187aa0 4584ff          test    r15b,r15b
fffff803`22187aa3 7552            jne     nt!CmUnRegisterCallback+0x267 (fffff803`22187af7)

nt!CmUnRegisterCallback+0x215:
fffff803`22187aa5 418bc5          mov     eax,r13d
fffff803`22187aa8 f00fc10580c2d6ff lock xadd dword ptr [nt!CmpCallBackCount (fffff803`21ef3d30)],eax
fffff803`22187ab0 4103c5          add     eax,r13d
fffff803`22187ab3 0f843ca20b00    je      nt! ?? ::NNGAKEGL::`string'+0x554e (fffff803`22241cf5)

nt!CmUnRegisterCallback+0x229:
fffff803`22187ab9 488b4f38        mov     rcx,qword ptr [rdi+38h]
fffff803`22187abd 4885c9          test    rcx,rcx
fffff803`22187ac0 7407            je      nt!CmUnRegisterCallback+0x239 (fffff803`22187ac9)

nt!CmUnRegisterCallback+0x232:
fffff803`22187ac2 33d2            xor     edx,edx
fffff803`22187ac4 e897b6d5ff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)

nt!CmUnRegisterCallback+0x239:
fffff803`22187ac9 33d2            xor     edx,edx
fffff803`22187acb 488bcf          mov     rcx,rdi
fffff803`22187ace e88db6d5ff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)

nt!CmUnRegisterCallback+0x243:
fffff803`22187ad3 418bc6          mov     eax,r14d
fffff803`22187ad6 4881c480000000  add     rsp,80h
fffff803`22187add 415f            pop     r15
fffff803`22187adf 415e            pop     r14
fffff803`22187ae1 415d            pop     r13
fffff803`22187ae3 415c            pop     r12
fffff803`22187ae5 5f              pop     rdi
fffff803`22187ae6 5e              pop     rsi
fffff803`22187ae7 5b              pop     rbx
fffff803`22187ae8 c3              ret

nt!CmUnRegisterCallback+0x259:
fffff803`22187ae9 8b06            mov     eax,dword ptr [rsi]
fffff803`22187aeb 898424d0000000  mov     dword ptr [rsp+0D0h],eax
fffff803`22187af2 e9089e0b00      jmp     nt! ?? ::NNGAKEGL::`string'+0x514b (fffff803`222418ff)

nt!CmUnRegisterCallback+0x267:
fffff803`22187af7 488d7740        lea     rsi,[rdi+40h]
fffff803`22187afb e917a10b00      jmp     nt! ?? ::NNGAKEGL::`string'+0x5470 (fffff803`22241c17)

nt!CmUnRegisterCallback+0x270:
fffff803`22187b00 448afb          mov     r15b,bl
fffff803`22187b03 e9dfa10b00      jmp     nt! ?? ::NNGAKEGL::`string'+0x5540 (fffff803`22241ce7)

nt! ?? ::NNGAKEGL::`string'+0x5074:
fffff803`22241828 498bcf          mov     rcx,r15
fffff803`2224182b e8d0fbb0ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`22241830 90              nop
fffff803`22241831 e9be60f4ff      jmp     nt!CmUnRegisterCallback+0x64 (fffff803`221878f4)

nt! ?? ::NNGAKEGL::`string'+0x5082:
fffff803`22241836 4485a424d0000000 test    dword ptr [rsp+0D0h],r12d
fffff803`2224183e 0f85b660f4ff    jne     nt!CmUnRegisterCallback+0x6a (fffff803`221878fa)

nt! ?? ::NNGAKEGL::`string'+0x5090:
fffff803`22241844 488d7710        lea     rsi,[rdi+10h]
fffff803`22241848 f0810e00000080  lock or dword ptr [rsi],80000000h
fffff803`2224184f 0f0d0d1a83d1ff  prefetchw [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`22241856 488b051383d1ff  mov     rax,qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`2224185d 488bc8          mov     rcx,rax
fffff803`22241860 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`22241864 4883f910        cmp     rcx,10h
fffff803`22241868 488d48f0        lea     rcx,[rax-10h]
fffff803`2224186c 7703            ja      nt! ?? ::NNGAKEGL::`string'+0x50bd (fffff803`22241871)

nt! ?? ::NNGAKEGL::`string'+0x50ba:
fffff803`2224186e 488bcb          mov     rcx,rbx

nt! ?? ::NNGAKEGL::`string'+0x50bd:
fffff803`22241871 a802            test    al,2
fffff803`22241873 750b            jne     nt! ?? ::NNGAKEGL::`string'+0x50cc (fffff803`22241880)

nt! ?? ::NNGAKEGL::`string'+0x50c1:
fffff803`22241875 f0480fb10df282d1ff lock cmpxchg qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)],rcx
fffff803`2224187e 7408            je      nt! ?? ::NNGAKEGL::`string'+0x50d4 (fffff803`22241888)

nt! ?? ::NNGAKEGL::`string'+0x50cc:
fffff803`22241880 498bcf          mov     rcx,r15
fffff803`22241883 e864abaeff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt! ?? ::NNGAKEGL::`string'+0x50d4:
fffff803`22241888 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`22241891 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22241898 ffc0            inc     eax
fffff803`2224189a 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`222418a1 6685c0          test    ax,ax
fffff803`222418a4 0f853f62f4ff    jne     nt!CmUnRegisterCallback+0x259 (fffff803`22187ae9)

nt! ?? ::NNGAKEGL::`string'+0x50f6:
fffff803`222418aa 488d8198000000  lea     rax,[rcx+98h]
fffff803`222418b1 483900          cmp     qword ptr [rax],rax
fffff803`222418b4 0f842f62f4ff    je      nt!CmUnRegisterCallback+0x259 (fffff803`22187ae9)

nt! ?? ::NNGAKEGL::`string'+0x5106:
fffff803`222418ba 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`222418c1 0f852262f4ff    jne     nt!CmUnRegisterCallback+0x259 (fffff803`22187ae9)

nt! ?? ::NNGAKEGL::`string'+0x5113:
fffff803`222418c7 e8347fb2ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`222418cc 90              nop
fffff803`222418cd e91762f4ff      jmp     nt!CmUnRegisterCallback+0x259 (fffff803`22187ae9)

nt! ?? ::NNGAKEGL::`string'+0x511e:
fffff803`222418d2 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`222418d7 41b904000000    mov     r9d,4
fffff803`222418dd 4c8d8424d0000000 lea     r8,[rsp+0D0h]
fffff803`222418e5 488bd6          mov     rdx,rsi
fffff803`222418e8 488d0da182d1ff  lea     rcx,[nt!CallbackListDeleteEvent (fffff803`21f59b90)]
fffff803`222418ef e8b873a4ff      call    nt!ExBlockOnAddressPushLock (fffff803`21c88cac)
fffff803`222418f4 448b1e          mov     r11d,dword ptr [rsi]
fffff803`222418f7 44899c24d0000000 mov     dword ptr [rsp+0D0h],r11d

nt! ?? ::NNGAKEGL::`string'+0x514b:
fffff803`222418ff 4439a424d0000000 cmp     dword ptr [rsp+0D0h],r12d
fffff803`22241907 75c9            jne     nt! ?? ::NNGAKEGL::`string'+0x511e (fffff803`222418d2)

nt! ?? ::NNGAKEGL::`string'+0x5155:
fffff803`22241909 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`22241912 664401a8e4010000 add     word ptr [rax+1E4h],r13w
fffff803`2224191a f0490fba2f00    lock bts qword ptr [r15],0
fffff803`22241920 7308            jae     nt! ?? ::NNGAKEGL::`string'+0x5176 (fffff803`2224192a)

nt! ?? ::NNGAKEGL::`string'+0x516e:
fffff803`22241922 498bcf          mov     rcx,r15
fffff803`22241925 e8d6fab0ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)

nt! ?? ::NNGAKEGL::`string'+0x5176:
fffff803`2224192a 488b0f          mov     rcx,qword ptr [rdi]
fffff803`2224192d 488b4708        mov     rax,qword ptr [rdi+8]
fffff803`22241931 48397908        cmp     qword ptr [rcx+8],rdi
fffff803`22241935 0f858d000000    jne     nt! ?? ::NNGAKEGL::`string'+0x5214 (fffff803`222419c8)

nt! ?? ::NNGAKEGL::`string'+0x5187:
fffff803`2224193b 483938          cmp     qword ptr [rax],rdi
fffff803`2224193e 0f8584000000    jne     nt! ?? ::NNGAKEGL::`string'+0x5214 (fffff803`222419c8)

nt! ?? ::NNGAKEGL::`string'+0x5190:
fffff803`22241944 488908          mov     qword ptr [rax],rcx
fffff803`22241947 48894108        mov     qword ptr [rcx+8],rax
fffff803`2224194b 0f0d0d1e82d1ff  prefetchw [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`22241952 488b051782d1ff  mov     rax,qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`22241959 488bc8          mov     rcx,rax
fffff803`2224195c 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`22241960 4883f910        cmp     rcx,10h
fffff803`22241964 488d48f0        lea     rcx,[rax-10h]
fffff803`22241968 7703            ja      nt! ?? ::NNGAKEGL::`string'+0x51b9 (fffff803`2224196d)

nt! ?? ::NNGAKEGL::`string'+0x51b6:
fffff803`2224196a 488bcb          mov     rcx,rbx

nt! ?? ::NNGAKEGL::`string'+0x51b9:
fffff803`2224196d a802            test    al,2
fffff803`2224196f 750b            jne     nt! ?? ::NNGAKEGL::`string'+0x51c8 (fffff803`2224197c)

nt! ?? ::NNGAKEGL::`string'+0x51bd:
fffff803`22241971 f0480fb10df681d1ff lock cmpxchg qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)],rcx
fffff803`2224197a 7408            je      nt! ?? ::NNGAKEGL::`string'+0x51d0 (fffff803`22241984)

nt! ?? ::NNGAKEGL::`string'+0x51c8:
fffff803`2224197c 498bcf          mov     rcx,r15
fffff803`2224197f e868aaaeff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt! ?? ::NNGAKEGL::`string'+0x51d0:
fffff803`22241984 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`2224198d 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22241994 ffc0            inc     eax
fffff803`22241996 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`2224199d 6685c0          test    ax,ax
fffff803`222419a0 751a            jne     nt! ?? ::NNGAKEGL::`string'+0x5208 (fffff803`222419bc)

nt! ?? ::NNGAKEGL::`string'+0x51ee:
fffff803`222419a2 488d8198000000  lea     rax,[rcx+98h]
fffff803`222419a9 483900          cmp     qword ptr [rax],rax
fffff803`222419ac 740e            je      nt! ?? ::NNGAKEGL::`string'+0x5208 (fffff803`222419bc)

nt! ?? ::NNGAKEGL::`string'+0x51fa:
fffff803`222419ae 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`222419b5 7505            jne     nt! ?? ::NNGAKEGL::`string'+0x5208 (fffff803`222419bc)

nt! ?? ::NNGAKEGL::`string'+0x5203:
fffff803`222419b7 e8447eb2ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt! ?? ::NNGAKEGL::`string'+0x5208:
fffff803`222419bc 448bf3          mov     r14d,ebx
fffff803`222419bf 899c24d8000000  mov     dword ptr [rsp+0D8h],ebx
fffff803`222419c6 eb34            jmp     nt! ?? ::NNGAKEGL::`string'+0x5248 (fffff803`222419fc)

nt! ?? ::NNGAKEGL::`string'+0x5214:
fffff803`222419c8 b903000000      mov     ecx,3
fffff803`222419cd cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x521b:
fffff803`222419cf 498bcf          mov     rcx,r15
fffff803`222419d2 e815aaaeff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)
fffff803`222419d7 90              nop
fffff803`222419d8 e9bc5ff4ff      jmp     nt!CmUnRegisterCallback+0x109 (fffff803`22187999)

nt! ?? ::NNGAKEGL::`string'+0x5229:
fffff803`222419dd 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`222419e4 0f85dd5ff4ff    jne     nt!CmUnRegisterCallback+0x137 (fffff803`221879c7)

nt! ?? ::NNGAKEGL::`string'+0x5236:
fffff803`222419ea e8117eb2ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`222419ef 90              nop
fffff803`222419f0 e9d25ff4ff      jmp     nt!CmUnRegisterCallback+0x137 (fffff803`221879c7)

nt! ?? ::NNGAKEGL::`string'+0x5241:
fffff803`222419f5 b903000000      mov     ecx,3
fffff803`222419fa cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x5248:
fffff803`222419fc 4585f6          test    r14d,r14d
fffff803`222419ff 0f89cc5ff4ff    jns     nt!CmUnRegisterCallback+0x141 (fffff803`221879d1)

nt! ?? ::NNGAKEGL::`string'+0x5251:
fffff803`22241a05 0f0d0d6481d1ff  prefetchw [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`22241a0c 488b055d81d1ff  mov     rax,qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)]
fffff803`22241a13 488bc8          mov     rcx,rax
fffff803`22241a16 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`22241a1a 4883f910        cmp     rcx,10h
fffff803`22241a1e 488d48f0        lea     rcx,[rax-10h]
fffff803`22241a22 7703            ja      nt! ?? ::NNGAKEGL::`string'+0x5273 (fffff803`22241a27)

nt! ?? ::NNGAKEGL::`string'+0x5270:
fffff803`22241a24 488bcb          mov     rcx,rbx

nt! ?? ::NNGAKEGL::`string'+0x5273:
fffff803`22241a27 a802            test    al,2
fffff803`22241a29 750b            jne     nt! ?? ::NNGAKEGL::`string'+0x5282 (fffff803`22241a36)

nt! ?? ::NNGAKEGL::`string'+0x5277:
fffff803`22241a2b f0480fb10d3c81d1ff lock cmpxchg qword ptr [nt!CmpCallbackListLock (fffff803`21f59b70)],rcx
fffff803`22241a34 7408            je      nt! ?? ::NNGAKEGL::`string'+0x528a (fffff803`22241a3e)

nt! ?? ::NNGAKEGL::`string'+0x5282:
fffff803`22241a36 498bcf          mov     rcx,r15
fffff803`22241a39 e8aea9aeff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt! ?? ::NNGAKEGL::`string'+0x528a:
fffff803`22241a3e 65488b142588010000 mov   rdx,qword ptr gs:[188h]
fffff803`22241a47 0fbf82e4010000  movsx   eax,word ptr [rdx+1E4h]
fffff803`22241a4e ffc0            inc     eax
fffff803`22241a50 668982e4010000  mov     word ptr [rdx+1E4h],ax
fffff803`22241a57 6685c0          test    ax,ax
fffff803`22241a5a 0f857360f4ff    jne     nt!CmUnRegisterCallback+0x243 (fffff803`22187ad3)

nt! ?? ::NNGAKEGL::`string'+0x52ac:
fffff803`22241a60 488d8a98000000  lea     rcx,[rdx+98h]
fffff803`22241a67 483909          cmp     qword ptr [rcx],rcx
fffff803`22241a6a 0f846360f4ff    je      nt!CmUnRegisterCallback+0x243 (fffff803`22187ad3)

nt! ?? ::NNGAKEGL::`string'+0x52bc:
fffff803`22241a70 66399ae6010000  cmp     word ptr [rdx+1E6h],bx
fffff803`22241a77 0f855660f4ff    jne     nt!CmUnRegisterCallback+0x243 (fffff803`22187ad3)

nt! ?? ::NNGAKEGL::`string'+0x52c9:
fffff803`22241a7d e87e7db2ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`22241a82 90              nop
fffff803`22241a83 e94b60f4ff      jmp     nt!CmUnRegisterCallback+0x243 (fffff803`22187ad3)

nt! ?? ::NNGAKEGL::`string'+0x52d4:
fffff803`22241a88 488d0de980d1ff  lea     rcx,[nt!CmpContextListLock (fffff803`21f59b78)]
fffff803`22241a8f e86cf9b0ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`22241a94 90              nop
fffff803`22241a95 e9765ff4ff      jmp     nt!CmUnRegisterCallback+0x180 (fffff803`22187a10)

nt! ?? ::NNGAKEGL::`string'+0x52e6:
fffff803`22241a9a 4c8b2e          mov     r13,qword ptr [rsi]
fffff803`22241a9d 4c8d7ef0        lea     r15,[rsi-10h]
fffff803`22241aa1 498b4f30        mov     rcx,qword ptr [r15+30h]
fffff803`22241aa5 e876aaacff      call    nt!ObReferenceObjectSafe (fffff803`21d0c520)
fffff803`22241aaa 84c0            test    al,al
fffff803`22241aac 746b            je      nt! ?? ::NNGAKEGL::`string'+0x5371 (fffff803`22241b19)

nt! ?? ::NNGAKEGL::`string'+0x52fe:
fffff803`22241aae 498d4710        lea     rax,[r15+10h]
fffff803`22241ab2 488b10          mov     rdx,qword ptr [rax]
fffff803`22241ab5 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`22241ab9 48394208        cmp     qword ptr [rdx+8],rax
fffff803`22241abd 0f8589000000    jne     nt! ?? ::NNGAKEGL::`string'+0x53a4 (fffff803`22241b4c)

nt! ?? ::NNGAKEGL::`string'+0x5313:
fffff803`22241ac3 483901          cmp     qword ptr [rcx],rax
fffff803`22241ac6 0f8580000000    jne     nt! ?? ::NNGAKEGL::`string'+0x53a4 (fffff803`22241b4c)

nt! ?? ::NNGAKEGL::`string'+0x531c:
fffff803`22241acc 488911          mov     qword ptr [rcx],rdx
fffff803`22241acf 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`22241ad3 498b0f          mov     rcx,qword ptr [r15]
fffff803`22241ad6 498b4708        mov     rax,qword ptr [r15+8]
fffff803`22241ada 4c397908        cmp     qword ptr [rcx+8],r15
fffff803`22241ade 7565            jne     nt! ?? ::NNGAKEGL::`string'+0x539d (fffff803`22241b45)

nt! ?? ::NNGAKEGL::`string'+0x5334:
fffff803`22241ae0 4c3938          cmp     qword ptr [rax],r15
fffff803`22241ae3 7560            jne     nt! ?? ::NNGAKEGL::`string'+0x539d (fffff803`22241b45)

nt! ?? ::NNGAKEGL::`string'+0x533d:
fffff803`22241ae5 488908          mov     qword ptr [rax],rcx
fffff803`22241ae8 48894108        mov     qword ptr [rcx+8],rax
fffff803`22241aec 488b442458      mov     rax,qword ptr [rsp+58h]
fffff803`22241af1 488d4c2450      lea     rcx,[rsp+50h]
fffff803`22241af6 48890e          mov     qword ptr [rsi],rcx
fffff803`22241af9 48894608        mov     qword ptr [rsi+8],rax
fffff803`22241afd 488d4c2450      lea     rcx,[rsp+50h]
fffff803`22241b02 483908          cmp     qword ptr [rax],rcx
fffff803`22241b05 7537            jne     nt! ?? ::NNGAKEGL::`string'+0x5396 (fffff803`22241b3e)

nt! ?? ::NNGAKEGL::`string'+0x535f:
fffff803`22241b07 488930          mov     qword ptr [rax],rsi
fffff803`22241b0a 4889742458      mov     qword ptr [rsp+58h],rsi
fffff803`22241b0f 448abc24c8000000 mov     r15b,byte ptr [rsp+0C8h]
fffff803`22241b17 eb0b            jmp     nt! ?? ::NNGAKEGL::`string'+0x537c (fffff803`22241b24)

nt! ?? ::NNGAKEGL::`string'+0x5371:
fffff803`22241b19 41b701          mov     r15b,1
fffff803`22241b1c 4488bc24c8000000 mov     byte ptr [rsp+0C8h],r15b

nt! ?? ::NNGAKEGL::`string'+0x537c:
fffff803`22241b24 498bf5          mov     rsi,r13
fffff803`22241b27 4c896c2430      mov     qword ptr [rsp+30h],r13
fffff803`22241b2c 4d3bec          cmp     r13,r12
fffff803`22241b2f 0f8565ffffff    jne     nt! ?? ::NNGAKEGL::`string'+0x52e6 (fffff803`22241a9a)

nt! ?? ::NNGAKEGL::`string'+0x538d:
fffff803`22241b35 4183cdff        or      r13d,0FFFFFFFFh
fffff803`22241b39 e9e85ef4ff      jmp     nt!CmUnRegisterCallback+0x196 (fffff803`22187a26)

nt! ?? ::NNGAKEGL::`string'+0x5396:
fffff803`22241b3e b903000000      mov     ecx,3
fffff803`22241b43 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x539d:
fffff803`22241b45 b903000000      mov     ecx,3
fffff803`22241b4a cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x53a4:
fffff803`22241b4c b903000000      mov     ecx,3
fffff803`22241b51 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x53ab:
fffff803`22241b53 488d0d1e80d1ff  lea     rcx,[nt!CmpContextListLock (fffff803`21f59b78)]
fffff803`22241b5a e88da8aeff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)
fffff803`22241b5f 90              nop
fffff803`22241b60 e9fa5ef4ff      jmp     nt!CmUnRegisterCallback+0x1cf (fffff803`22187a5f)

nt! ?? ::NNGAKEGL::`string'+0x53bd:
fffff803`22241b65 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`22241b6c 0f851b5ff4ff    jne     nt!CmUnRegisterCallback+0x1fd (fffff803`22187a8d)

nt! ?? ::NNGAKEGL::`string'+0x53ca:
fffff803`22241b72 e8897cb2ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)
fffff803`22241b77 90              nop
fffff803`22241b78 e9105ff4ff      jmp     nt!CmUnRegisterCallback+0x1fd (fffff803`22187a8d)

nt! ?? ::NNGAKEGL::`string'+0x53d5:
fffff803`22241b7d 488b08          mov     rcx,qword ptr [rax]
fffff803`22241b80 488d542450      lea     rdx,[rsp+50h]
fffff803`22241b85 48395008        cmp     qword ptr [rax+8],rdx
fffff803`22241b89 0f8581000000    jne     nt! ?? ::NNGAKEGL::`string'+0x5469 (fffff803`22241c10)

nt! ?? ::NNGAKEGL::`string'+0x53e7:
fffff803`22241b8f 48394108        cmp     qword ptr [rcx+8],rax
fffff803`22241b93 757b            jne     nt! ?? ::NNGAKEGL::`string'+0x5469 (fffff803`22241c10)

nt! ?? ::NNGAKEGL::`string'+0x53f1:
fffff803`22241b95 48894c2450      mov     qword ptr [rsp+50h],rcx
fffff803`22241b9a 488d542450      lea     rdx,[rsp+50h]
fffff803`22241b9f 48895108        mov     qword ptr [rcx+8],rdx
fffff803`22241ba3 488d70f0        lea     rsi,[rax-10h]
fffff803`22241ba7 4889742448      mov     qword ptr [rsp+48h],rsi
fffff803`22241bac 488b4630        mov     rax,qword ptr [rsi+30h]
fffff803`22241bb0 4889442460      mov     qword ptr [rsp+60h],rax
fffff803`22241bb5 488b4638        mov     rax,qword ptr [rsi+38h]
fffff803`22241bb9 4889442468      mov     qword ptr [rsp+68h],rax
fffff803`22241bbe 4c8d442460      lea     r8,[rsp+60h]
fffff803`22241bc3 ba28000000      mov     edx,28h
fffff803`22241bc8 488b4f20        mov     rcx,qword ptr [rdi+20h]
fffff803`22241bcc ff5728          call    qword ptr [rdi+28h]
fffff803`22241bcf eb23            jmp     nt! ?? ::NNGAKEGL::`string'+0x544d (fffff803`22241bf4)

nt! ?? ::NNGAKEGL::`string'+0x544d:
fffff803`22241bf4 488b4e30        mov     rcx,qword ptr [rsi+30h]
fffff803`22241bf8 e8e3efacff      call    nt!ObfDereferenceObject (fffff803`21d10be0)
fffff803`22241bfd ba434d6363      mov     edx,63634D43h
fffff803`22241c02 488bce          mov     rcx,rsi
fffff803`22241c05 e85615caff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`22241c0a 90              nop
fffff803`22241c0b e97d5ef4ff      jmp     nt!CmUnRegisterCallback+0x1fd (fffff803`22187a8d)

nt! ?? ::NNGAKEGL::`string'+0x5469:
fffff803`22241c10 b903000000      mov     ecx,3
fffff803`22241c15 cd29            int     29h

nt! ?? ::NNGAKEGL::`string'+0x5470:
fffff803`22241c17 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`22241c20 664401a8e4010000 add     word ptr [rax+1E4h],r13w
fffff803`22241c28 f0480fba2d467fd1ff00 lock bts qword ptr [nt!CmpContextListLock (fffff803`21f59b78)],0
fffff803`22241c32 730c            jae     nt! ?? ::NNGAKEGL::`string'+0x5499 (fffff803`22241c40)

nt! ?? ::NNGAKEGL::`string'+0x548d:
fffff803`22241c34 488d0d3d7fd1ff  lea     rcx,[nt!CmpContextListLock (fffff803`21f59b78)]
fffff803`22241c3b e8c0f7b0ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)

nt! ?? ::NNGAKEGL::`string'+0x5499:
fffff803`22241c40 488b06          mov     rax,qword ptr [rsi]
fffff803`22241c43 4889442430      mov     qword ptr [rsp+30h],rax
fffff803`22241c48 0f0d0d297fd1ff  prefetchw [nt!CmpContextListLock (fffff803`21f59b78)]
fffff803`22241c4f 488b05227fd1ff  mov     rax,qword ptr [nt!CmpContextListLock (fffff803`21f59b78)]
fffff803`22241c56 488bc8          mov     rcx,rax
fffff803`22241c59 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`22241c5d 4883f910        cmp     rcx,10h
fffff803`22241c61 488d48f0        lea     rcx,[rax-10h]
fffff803`22241c65 7703            ja      nt! ?? ::NNGAKEGL::`string'+0x54c3 (fffff803`22241c6a)

nt! ?? ::NNGAKEGL::`string'+0x54c0:
fffff803`22241c67 488bcb          mov     rcx,rbx

nt! ?? ::NNGAKEGL::`string'+0x54c3:
fffff803`22241c6a a802            test    al,2
fffff803`22241c6c 750b            jne     nt! ?? ::NNGAKEGL::`string'+0x54d2 (fffff803`22241c79)

nt! ?? ::NNGAKEGL::`string'+0x54c7:
fffff803`22241c6e f0480fb10d017fd1ff lock cmpxchg qword ptr [nt!CmpContextListLock (fffff803`21f59b78)],rcx
fffff803`22241c77 740c            je      nt! ?? ::NNGAKEGL::`string'+0x54de (fffff803`22241c85)

nt! ?? ::NNGAKEGL::`string'+0x54d2:
fffff803`22241c79 488d0df87ed1ff  lea     rcx,[nt!CmpContextListLock (fffff803`21f59b78)]
fffff803`22241c80 e867a7aeff      call    nt!ExfReleasePushLock (fffff803`21d2c3ec)

nt! ?? ::NNGAKEGL::`string'+0x54de:
fffff803`22241c85 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`22241c8e 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`22241c95 ffc0            inc     eax
fffff803`22241c97 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`22241c9e 6685c0          test    ax,ax
fffff803`22241ca1 751a            jne     nt! ?? ::NNGAKEGL::`string'+0x5516 (fffff803`22241cbd)

nt! ?? ::NNGAKEGL::`string'+0x54fc:
fffff803`22241ca3 488d8198000000  lea     rax,[rcx+98h]
fffff803`22241caa 483900          cmp     qword ptr [rax],rax
fffff803`22241cad 740e            je      nt! ?? ::NNGAKEGL::`string'+0x5516 (fffff803`22241cbd)

nt! ?? ::NNGAKEGL::`string'+0x5508:
fffff803`22241caf 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`22241cb6 7505            jne     nt! ?? ::NNGAKEGL::`string'+0x5516 (fffff803`22241cbd)

nt! ?? ::NNGAKEGL::`string'+0x5511:
fffff803`22241cb8 e8437bb2ff      call    nt!KiCheckForKernelApcDelivery (fffff803`21d69800)

nt! ?? ::NNGAKEGL::`string'+0x5516:
fffff803`22241cbd 4839742430      cmp     qword ptr [rsp+30h],rsi
fffff803`22241cc2 0f84385ef4ff    je      nt!CmUnRegisterCallback+0x270 (fffff803`22187b00)

nt! ?? ::NNGAKEGL::`string'+0x5521:
fffff803`22241cc8 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`22241ccd 41b908000000    mov     r9d,8
fffff803`22241cd3 4c8d442430      lea     r8,[rsp+30h]
fffff803`22241cd8 488bd6          mov     rdx,rsi
fffff803`22241cdb 488d0dae7ed1ff  lea     rcx,[nt!CallbackListDeleteEvent (fffff803`21f59b90)]
fffff803`22241ce2 e8c56fa4ff      call    nt!ExBlockOnAddressPushLock (fffff803`21c88cac)

nt! ?? ::NNGAKEGL::`string'+0x5540:
fffff803`22241ce7 4584ff          test    r15b,r15b
fffff803`22241cea 0f8527ffffff    jne     nt! ?? ::NNGAKEGL::`string'+0x5470 (fffff803`22241c17)

nt! ?? ::NNGAKEGL::`string'+0x5549:
fffff803`22241cf0 e9b05df4ff      jmp     nt!CmUnRegisterCallback+0x215 (fffff803`22187aa5)

nt! ?? ::NNGAKEGL::`string'+0x554e:
fffff803`22241cf5 488d0d4420cbff  lea     rcx,[nt!CmpCallbackContextSList (fffff803`21ef3d40)]
fffff803`22241cfc e86f51a8ff      call    nt!ExpInterlockedFlushSList (fffff803`21cc6e70)
fffff803`22241d01 488bf0          mov     rsi,rax
fffff803`22241d04 4885c0          test    rax,rax
fffff803`22241d07 0f84ac5df4ff    je      nt!CmUnRegisterCallback+0x229 (fffff803`22187ab9)

nt! ?? ::NNGAKEGL::`string'+0x5566:
fffff803`22241d0d 488bce          mov     rcx,rsi
fffff803`22241d10 488b36          mov     rsi,qword ptr [rsi]
fffff803`22241d13 33d2            xor     edx,edx
fffff803`22241d15 e84614caff      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`22241d1a 4885f6          test    rsi,rsi
fffff803`22241d1d 75ee            jne     nt! ?? ::NNGAKEGL::`string'+0x5566 (fffff803`22241d0d)

nt! ?? ::NNGAKEGL::`string'+0x5578:
fffff803`22241d1f e9955df4ff      jmp     nt!CmUnRegisterCallback+0x229 (fffff803`22187ab9)
