nt!CmpLazyCommitWorker:
fffff803`d9dbcf80 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9dbcf85 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`d9dbcf8a 55              push    rbp
fffff803`d9dbcf8b 57              push    rdi
fffff803`d9dbcf8c 4155            push    r13
fffff803`d9dbcf8e 4156            push    r14
fffff803`d9dbcf90 4157            push    r15
fffff803`d9dbcf92 488bec          mov     rbp,rsp
fffff803`d9dbcf95 4883ec40        sub     rsp,40h
fffff803`d9dbcf99 33f6            xor     esi,esi
fffff803`d9dbcf9b 488d45f0        lea     rax,[rbp-10h]
fffff803`d9dbcf9f 488945f8        mov     qword ptr [rbp-8],rax
fffff803`d9dbcfa3 488d45f0        lea     rax,[rbp-10h]
fffff803`d9dbcfa7 448d6e01        lea     r13d,[rsi+1]
fffff803`d9dbcfab 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`d9dbcfaf 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9dbcfb8 897538          mov     dword ptr [rbp+38h],esi
fffff803`d9dbcfbb 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9dbcfc2 418afd          mov     dil,r13b
fffff803`d9dbcfc5 0f0d0d8c0bdbff  prefetchw [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dbcfcc 488b05850bdbff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dbcfd3 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`d9dbcfd7 488d4802        lea     rcx,[rax+2]
fffff803`d9dbcfdb f0480fb10d740bdbff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)],rcx
fffff803`d9dbcfe4 7461            je      nt!CmpLazyCommitWorker+0xc7 (fffff803`d9dbd047)

nt!CmpLazyCommitWorker+0x66:
fffff803`d9dbcfe6 488d0d6b0bdbff  lea     rcx,[nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dbcfed e8de32b8ff      call    nt!ExfAcquireRundownProtection (fffff803`d99402d0)
fffff803`d9dbcff2 84c0            test    al,al
fffff803`d9dbcff4 7551            jne     nt!CmpLazyCommitWorker+0xc7 (fffff803`d9dbd047)

nt!CmpLazyCommitWorker+0x76:
fffff803`d9dbcff6 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dbcfff 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dbd006 ffc0            inc     eax
fffff803`d9dbd008 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dbd00f 6685c0          test    ax,ax
fffff803`d9dbd012 751a            jne     nt!CmpLazyCommitWorker+0xae (fffff803`d9dbd02e)

nt!CmpLazyCommitWorker+0x94:
fffff803`d9dbd014 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9dbd01b 483900          cmp     qword ptr [rax],rax
fffff803`d9dbd01e 740e            je      nt!CmpLazyCommitWorker+0xae (fffff803`d9dbd02e)

nt!CmpLazyCommitWorker+0xa0:
fffff803`d9dbd020 6639b1e6010000  cmp     word ptr [rcx+1E6h],si
fffff803`d9dbd027 7505            jne     nt!CmpLazyCommitWorker+0xae (fffff803`d9dbd02e)

nt!CmpLazyCommitWorker+0xa9:
fffff803`d9dbd029 e8d207bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmpLazyCommitWorker+0xae:
fffff803`d9dbd02e 4c8d5c2440      lea     r11,[rsp+40h]
fffff803`d9dbd033 498b5b30        mov     rbx,qword ptr [r11+30h]
fffff803`d9dbd037 498b7348        mov     rsi,qword ptr [r11+48h]
fffff803`d9dbd03b 498be3          mov     rsp,r11
fffff803`d9dbd03e 415f            pop     r15
fffff803`d9dbd040 415e            pop     r14
fffff803`d9dbd042 415d            pop     r13
fffff803`d9dbd044 5f              pop     rdi
fffff803`d9dbd045 5d              pop     rbp
fffff803`d9dbd046 c3              ret

nt!CmpLazyCommitWorker+0xc7:
fffff803`d9dbd047 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9dbd050 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9dbd057 b911000000      mov     ecx,11h
fffff803`d9dbd05c 33c0            xor     eax,eax
fffff803`d9dbd05e f0480fb10d4919dbff lock cmpxchg qword ptr [nt!CmpShutdownLock (fffff803`d9b6e9b0)],rcx
fffff803`d9dbd067 740c            je      nt!CmpLazyCommitWorker+0xf5 (fffff803`d9dbd075)

nt!CmpLazyCommitWorker+0xe9:
fffff803`d9dbd069 488d0d4019dbff  lea     rcx,[nt!CmpShutdownLock (fffff803`d9b6e9b0)]
fffff803`d9dbd070 e8cb47b7ff      call    nt!ExfAcquirePushLockShared (fffff803`d9931840)

nt!CmpLazyCommitWorker+0xf5:
fffff803`d9dbd075 e8daf8e8ff      call    nt!LOCK_HIVE_LOAD (fffff803`d9c4c954)
fffff803`d9dbd07a 4c8d35ff05dbff  lea     r14,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9dbd081 4c8d3d5806dbff  lea     r15,[nt!CmpLazyCommitListHead (fffff803`d9b6d6e0)]

nt!CmpLazyCommitWorker+0x108:
fffff803`d9dbd088 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9dbd091 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9dbd098 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`d9dbd0a1 f0410fba3600    lock btr dword ptr [r14],0
fffff803`d9dbd0a7 7208            jb      nt!CmpLazyCommitWorker+0x131 (fffff803`d9dbd0b1)

nt!CmpLazyCommitWorker+0x129:
fffff803`d9dbd0a9 498bce          mov     rcx,r14
fffff803`d9dbd0ac e86fa9bcff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)

nt!CmpLazyCommitWorker+0x131:
fffff803`d9dbd0b1 48891dd005dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],rbx
fffff803`d9dbd0b8 488b1d2106dbff  mov     rbx,qword ptr [nt!CmpLazyCommitListHead (fffff803`d9b6d6e0)]
fffff803`d9dbd0bf 488b03          mov     rax,qword ptr [rbx]
fffff803`d9dbd0c2 4c397b08        cmp     qword ptr [rbx+8],r15
fffff803`d9dbd0c6 0f850c030000    jne     nt!CmpLazyCommitWorker+0x458 (fffff803`d9dbd3d8)

nt!CmpLazyCommitWorker+0x14c:
fffff803`d9dbd0cc 48395808        cmp     qword ptr [rax+8],rbx
fffff803`d9dbd0d0 0f8502030000    jne     nt!CmpLazyCommitWorker+0x458 (fffff803`d9dbd3d8)

nt!CmpLazyCommitWorker+0x156:
fffff803`d9dbd0d6 4889050306dbff  mov     qword ptr [nt!CmpLazyCommitListHead (fffff803`d9b6d6e0)],rax
fffff803`d9dbd0dd 4c897808        mov     qword ptr [rax+8],r15
fffff803`d9dbd0e1 488935a005dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],rsi
fffff803`d9dbd0e8 493bdf          cmp     rbx,r15
fffff803`d9dbd0eb 0f84ab000000    je      nt!CmpLazyCommitWorker+0x21c (fffff803`d9dbd19c)

nt!CmpLazyCommitWorker+0x171:
fffff803`d9dbd0f1 33c0            xor     eax,eax
fffff803`d9dbd0f3 f0440fb12d8405dbff lock cmpxchg dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],r13d
fffff803`d9dbd0fc 740a            je      nt!CmpLazyCommitWorker+0x188 (fffff803`d9dbd108)

nt!CmpLazyCommitWorker+0x17e:
fffff803`d9dbd0fe 8bd0            mov     edx,eax
fffff803`d9dbd100 498bce          mov     rcx,r14
fffff803`d9dbd103 e8249fbcff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!CmpLazyCommitWorker+0x188:
fffff803`d9dbd108 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dbd111 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dbd118 ffc0            inc     eax
fffff803`d9dbd11a 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dbd121 6685c0          test    ax,ax
fffff803`d9dbd124 751a            jne     nt!CmpLazyCommitWorker+0x1c0 (fffff803`d9dbd140)

nt!CmpLazyCommitWorker+0x1a6:
fffff803`d9dbd126 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9dbd12d 483900          cmp     qword ptr [rax],rax
fffff803`d9dbd130 740e            je      nt!CmpLazyCommitWorker+0x1c0 (fffff803`d9dbd140)

nt!CmpLazyCommitWorker+0x1b2:
fffff803`d9dbd132 6639b1e6010000  cmp     word ptr [rcx+1E6h],si
fffff803`d9dbd139 7505            jne     nt!CmpLazyCommitWorker+0x1c0 (fffff803`d9dbd140)

nt!CmpLazyCommitWorker+0x1bb:
fffff803`d9dbd13b e8c006bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmpLazyCommitWorker+0x1c0:
fffff803`d9dbd140 488b4b18        mov     rcx,qword ptr [rbx+18h]
fffff803`d9dbd144 4c8d4538        lea     r8,[rbp+38h]
fffff803`d9dbd148 488d53e0        lea     rdx,[rbx-20h]
fffff803`d9dbd14c e8bff1e6ff      call    nt!CmpTransMgrCommit (fffff803`d9c2c310)
fffff803`d9dbd151 85c0            test    eax,eax
fffff803`d9dbd153 7819            js      nt!CmpLazyCommitWorker+0x1ee (fffff803`d9dbd16e)

nt!CmpLazyCommitWorker+0x1d5:
fffff803`d9dbd155 488b4b18        mov     rcx,qword ptr [rbx+18h]
fffff803`d9dbd159 4533c9          xor     r9d,r9d
fffff803`d9dbd15c 488d53e0        lea     rdx,[rbx-20h]
fffff803`d9dbd160 458d4104        lea     r8d,[r9+4]
fffff803`d9dbd164 e8cbc5e6ff      call    nt!CmpCleanupTransactionState (fffff803`d9c29734)
fffff803`d9dbd169 e91affffff      jmp     nt!CmpLazyCommitWorker+0x108 (fffff803`d9dbd088)

nt!CmpLazyCommitWorker+0x1ee:
fffff803`d9dbd16e 488b4df8        mov     rcx,qword ptr [rbp-8]
fffff803`d9dbd172 488d55f0        lea     rdx,[rbp-10h]
fffff803`d9dbd176 488913          mov     qword ptr [rbx],rdx
fffff803`d9dbd179 488d55f0        lea     rdx,[rbp-10h]
fffff803`d9dbd17d 48894b08        mov     qword ptr [rbx+8],rcx
fffff803`d9dbd181 483911          cmp     qword ptr [rcx],rdx
fffff803`d9dbd184 750f            jne     nt!CmpLazyCommitWorker+0x215 (fffff803`d9dbd195)

nt!CmpLazyCommitWorker+0x206:
fffff803`d9dbd186 488919          mov     qword ptr [rcx],rbx
fffff803`d9dbd189 408afe          mov     dil,sil
fffff803`d9dbd18c 48895df8        mov     qword ptr [rbp-8],rbx
fffff803`d9dbd190 e9f3feffff      jmp     nt!CmpLazyCommitWorker+0x108 (fffff803`d9dbd088)

nt!CmpLazyCommitWorker+0x215:
fffff803`d9dbd195 b903000000      mov     ecx,3
fffff803`d9dbd19a cd29            int     29h

nt!CmpLazyCommitWorker+0x21c:
fffff803`d9dbd19c 4084ff          test    dil,dil
fffff803`d9dbd19f 0f9405be2edbff  sete    byte ptr [nt!CmpLazyCommitWorkItemActive (fffff803`d9b70064)]
fffff803`d9dbd1a6 33c0            xor     eax,eax
fffff803`d9dbd1a8 f0440fb12dcf04dbff lock cmpxchg dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],r13d
fffff803`d9dbd1b1 740a            je      nt!CmpLazyCommitWorker+0x23d (fffff803`d9dbd1bd)

nt!CmpLazyCommitWorker+0x233:
fffff803`d9dbd1b3 8bd0            mov     edx,eax
fffff803`d9dbd1b5 498bce          mov     rcx,r14
fffff803`d9dbd1b8 e86f9ebcff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!CmpLazyCommitWorker+0x23d:
fffff803`d9dbd1bd 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dbd1c6 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dbd1cd ffc0            inc     eax
fffff803`d9dbd1cf 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dbd1d6 6685c0          test    ax,ax
fffff803`d9dbd1d9 751a            jne     nt!CmpLazyCommitWorker+0x275 (fffff803`d9dbd1f5)

nt!CmpLazyCommitWorker+0x25b:
fffff803`d9dbd1db 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9dbd1e2 483900          cmp     qword ptr [rax],rax
fffff803`d9dbd1e5 740e            je      nt!CmpLazyCommitWorker+0x275 (fffff803`d9dbd1f5)

nt!CmpLazyCommitWorker+0x267:
fffff803`d9dbd1e7 6639b1e6010000  cmp     word ptr [rcx+1E6h],si
fffff803`d9dbd1ee 7505            jne     nt!CmpLazyCommitWorker+0x275 (fffff803`d9dbd1f5)

nt!CmpLazyCommitWorker+0x270:
fffff803`d9dbd1f0 e80b06bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmpLazyCommitWorker+0x275:
fffff803`d9dbd1f5 4084ff          test    dil,dil
fffff803`d9dbd1f8 0f8505010000    jne     nt!CmpLazyCommitWorker+0x383 (fffff803`d9dbd303)

nt!CmpLazyCommitWorker+0x27e:
fffff803`d9dbd1fe 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9dbd207 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9dbd20e 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`d9dbd217 f0410fba3600    lock btr dword ptr [r14],0
fffff803`d9dbd21d 7208            jb      nt!CmpLazyCommitWorker+0x2a7 (fffff803`d9dbd227)

nt!CmpLazyCommitWorker+0x29f:
fffff803`d9dbd21f 498bce          mov     rcx,r14
fffff803`d9dbd222 e8f9a7bcff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)

nt!CmpLazyCommitWorker+0x2a7:
fffff803`d9dbd227 48891d5a04dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],rbx

nt!CmpLazyCommitWorker+0x2ae:
fffff803`d9dbd22e 488b45f0        mov     rax,qword ptr [rbp-10h]
fffff803`d9dbd232 488d55f0        lea     rdx,[rbp-10h]
fffff803`d9dbd236 488b08          mov     rcx,qword ptr [rax]
fffff803`d9dbd239 48395008        cmp     qword ptr [rax+8],rdx
fffff803`d9dbd23d 0f858e010000    jne     nt!CmpLazyCommitWorker+0x451 (fffff803`d9dbd3d1)

nt!CmpLazyCommitWorker+0x2c3:
fffff803`d9dbd243 48394108        cmp     qword ptr [rcx+8],rax
fffff803`d9dbd247 0f8584010000    jne     nt!CmpLazyCommitWorker+0x451 (fffff803`d9dbd3d1)

nt!CmpLazyCommitWorker+0x2cd:
fffff803`d9dbd24d 48894df0        mov     qword ptr [rbp-10h],rcx
fffff803`d9dbd251 488d55f0        lea     rdx,[rbp-10h]
fffff803`d9dbd255 48895108        mov     qword ptr [rcx+8],rdx
fffff803`d9dbd259 488d4df0        lea     rcx,[rbp-10h]
fffff803`d9dbd25d 483bc1          cmp     rax,rcx
fffff803`d9dbd260 7426            je      nt!CmpLazyCommitWorker+0x308 (fffff803`d9dbd288)

nt!CmpLazyCommitWorker+0x2e2:
fffff803`d9dbd262 488b0d7f04dbff  mov     rcx,qword ptr [nt!CmpLazyCommitListHead+0x8 (fffff803`d9b6d6e8)]
fffff803`d9dbd269 4c8938          mov     qword ptr [rax],r15
fffff803`d9dbd26c 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9dbd270 4c3939          cmp     qword ptr [rcx],r15
fffff803`d9dbd273 750c            jne     nt!CmpLazyCommitWorker+0x301 (fffff803`d9dbd281)

nt!CmpLazyCommitWorker+0x2f5:
fffff803`d9dbd275 488901          mov     qword ptr [rcx],rax
fffff803`d9dbd278 4889056904dbff  mov     qword ptr [nt!CmpLazyCommitListHead+0x8 (fffff803`d9b6d6e8)],rax
fffff803`d9dbd27f ebad            jmp     nt!CmpLazyCommitWorker+0x2ae (fffff803`d9dbd22e)

nt!CmpLazyCommitWorker+0x301:
fffff803`d9dbd281 b903000000      mov     ecx,3
fffff803`d9dbd286 cd29            int     29h

nt!CmpLazyCommitWorker+0x308:
fffff803`d9dbd288 488935f903dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],rsi
fffff803`d9dbd28f 33c0            xor     eax,eax
fffff803`d9dbd291 f0440fb12de603dbff lock cmpxchg dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],r13d
fffff803`d9dbd29a 740a            je      nt!CmpLazyCommitWorker+0x326 (fffff803`d9dbd2a6)

nt!CmpLazyCommitWorker+0x31c:
fffff803`d9dbd29c 8bd0            mov     edx,eax
fffff803`d9dbd29e 498bce          mov     rcx,r14
fffff803`d9dbd2a1 e8869dbcff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!CmpLazyCommitWorker+0x326:
fffff803`d9dbd2a6 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dbd2af 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dbd2b6 ffc0            inc     eax
fffff803`d9dbd2b8 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dbd2bf 6685c0          test    ax,ax
fffff803`d9dbd2c2 751a            jne     nt!CmpLazyCommitWorker+0x35e (fffff803`d9dbd2de)

nt!CmpLazyCommitWorker+0x344:
fffff803`d9dbd2c4 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9dbd2cb 483900          cmp     qword ptr [rax],rax
fffff803`d9dbd2ce 740e            je      nt!CmpLazyCommitWorker+0x35e (fffff803`d9dbd2de)

nt!CmpLazyCommitWorker+0x350:
fffff803`d9dbd2d0 6639b1e6010000  cmp     word ptr [rcx+1E6h],si
fffff803`d9dbd2d7 7505            jne     nt!CmpLazyCommitWorker+0x35e (fffff803`d9dbd2de)

nt!CmpLazyCommitWorker+0x359:
fffff803`d9dbd2d9 e82205bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmpLazyCommitWorker+0x35e:
fffff803`d9dbd2de 488d055b04dbff  lea     rax,[nt!CmpLazyCommitDpc (fffff803`d9b6d740)]
fffff803`d9dbd2e5 488d0d1404dbff  lea     rcx,[nt!CmpLazyCommitTimer (fffff803`d9b6d700)]
fffff803`d9dbd2ec 4533c9          xor     r9d,r9d
fffff803`d9dbd2ef 4533c0          xor     r8d,r8d
fffff803`d9dbd2f2 48c7c2005d1eee  mov     rdx,0FFFFFFFFEE1E5D00h
fffff803`d9dbd2f9 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9dbd2fe e85dceb4ff      call    nt!KiSetTimerEx (fffff803`d990a160)

nt!CmpLazyCommitWorker+0x383:
fffff803`d9dbd303 e8b8f5e8ff      call    nt!UNLOCK_HIVE_LOAD (fffff803`d9c4c8c0)
fffff803`d9dbd308 0f0d0da116dbff  prefetchw [nt!CmpShutdownLock (fffff803`d9b6e9b0)]
fffff803`d9dbd30f 488b059a16dbff  mov     rax,qword ptr [nt!CmpShutdownLock (fffff803`d9b6e9b0)]
fffff803`d9dbd316 488bc8          mov     rcx,rax
fffff803`d9dbd319 4883e1f0        and     rcx,0FFFFFFFFFFFFFFF0h
fffff803`d9dbd31d 4883f910        cmp     rcx,10h
fffff803`d9dbd321 488d48f0        lea     rcx,[rax-10h]
fffff803`d9dbd325 7703            ja      nt!CmpLazyCommitWorker+0x3aa (fffff803`d9dbd32a)

nt!CmpLazyCommitWorker+0x3a7:
fffff803`d9dbd327 488bce          mov     rcx,rsi

nt!CmpLazyCommitWorker+0x3aa:
fffff803`d9dbd32a a802            test    al,2
fffff803`d9dbd32c 750b            jne     nt!CmpLazyCommitWorker+0x3b9 (fffff803`d9dbd339)

nt!CmpLazyCommitWorker+0x3ae:
fffff803`d9dbd32e f0480fb10d7916dbff lock cmpxchg qword ptr [nt!CmpShutdownLock (fffff803`d9b6e9b0)],rcx
fffff803`d9dbd337 740c            je      nt!CmpLazyCommitWorker+0x3c5 (fffff803`d9dbd345)

nt!CmpLazyCommitWorker+0x3b9:
fffff803`d9dbd339 488d0d7016dbff  lea     rcx,[nt!CmpShutdownLock (fffff803`d9b6e9b0)]
fffff803`d9dbd340 e8a730b8ff      call    nt!ExfReleasePushLock (fffff803`d99403ec)

nt!CmpLazyCommitWorker+0x3c5:
fffff803`d9dbd345 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dbd34e 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dbd355 ffc0            inc     eax
fffff803`d9dbd357 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dbd35e 6685c0          test    ax,ax
fffff803`d9dbd361 751a            jne     nt!CmpLazyCommitWorker+0x3fd (fffff803`d9dbd37d)

nt!CmpLazyCommitWorker+0x3e3:
fffff803`d9dbd363 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9dbd36a 483900          cmp     qword ptr [rax],rax
fffff803`d9dbd36d 740e            je      nt!CmpLazyCommitWorker+0x3fd (fffff803`d9dbd37d)

nt!CmpLazyCommitWorker+0x3ef:
fffff803`d9dbd36f 6639b1e6010000  cmp     word ptr [rcx+1E6h],si
fffff803`d9dbd376 7505            jne     nt!CmpLazyCommitWorker+0x3fd (fffff803`d9dbd37d)

nt!CmpLazyCommitWorker+0x3f8:
fffff803`d9dbd378 e88304bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmpLazyCommitWorker+0x3fd:
fffff803`d9dbd37d 0f0d0dd407dbff  prefetchw [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dbd384 488b05cd07dbff  mov     rax,qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dbd38b 4883e0fe        and     rax,0FFFFFFFFFFFFFFFEh
fffff803`d9dbd38f 488d50fe        lea     rdx,[rax-2]
fffff803`d9dbd393 f0480fb115bc07dbff lock cmpxchg qword ptr [nt!CmpShutdownRundown (fffff803`d9b6db58)],rdx
fffff803`d9dbd39c 740c            je      nt!CmpLazyCommitWorker+0x42a (fffff803`d9dbd3aa)

nt!CmpLazyCommitWorker+0x41e:
fffff803`d9dbd39e 488d0db307dbff  lea     rcx,[nt!CmpShutdownRundown (fffff803`d9b6db58)]
fffff803`d9dbd3a5 e8c6dfb6ff      call    nt!ExfReleaseRundownProtection (fffff803`d992b370)

nt!CmpLazyCommitWorker+0x42a:
fffff803`d9dbd3aa 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dbd3b3 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dbd3ba ffc0            inc     eax
fffff803`d9dbd3bc 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dbd3c3 6685c0          test    ax,ax
fffff803`d9dbd3c6 0f8562fcffff    jne     nt!CmpLazyCommitWorker+0xae (fffff803`d9dbd02e)

nt!CmpLazyCommitWorker+0x44c:
fffff803`d9dbd3cc e943fcffff      jmp     nt!CmpLazyCommitWorker+0x94 (fffff803`d9dbd014)

nt!CmpLazyCommitWorker+0x451:
fffff803`d9dbd3d1 b903000000      mov     ecx,3
fffff803`d9dbd3d6 cd29            int     29h

nt!CmpLazyCommitWorker+0x458:
fffff803`d9dbd3d8 b903000000      mov     ecx,3
fffff803`d9dbd3dd cd29            int     29h
fffff803`d9dbd3df 90              nop
fffff803`d9dbd3e0 90              nop
fffff803`d9dbd3e1 90              nop
fffff803`d9dbd3e2 90              nop
fffff803`d9dbd3e3 90              nop
fffff803`d9dbd3e4 90              nop
fffff803`d9dbd3e5 90              nop
fffff803`d9dbd3e6 90              nop
fffff803`d9dbd3e7 90              nop
fffff803`d9dbd3e8 48895c2408      mov     qword ptr [rsp+8],rbx
fffff803`d9dbd3ed 48897c2410      mov     qword ptr [rsp+10h],rdi
fffff803`d9dbd3f2 55              push    rbp
fffff803`d9dbd3f3 488bec          mov     rbp,rsp
fffff803`d9dbd3f6 4883ec30        sub     rsp,30h
fffff803`d9dbd3fa 488d45f0        lea     rax,[rbp-10h]
fffff803`d9dbd3fe 488bf9          mov     rdi,rcx
fffff803`d9dbd401 488945f8        mov     qword ptr [rbp-8],rax
fffff803`d9dbd405 488d45f0        lea     rax,[rbp-10h]
fffff803`d9dbd409 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`d9dbd40d 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9dbd416 66ff88e4010000  dec     word ptr [rax+1E4h]
fffff803`d9dbd41d 65488b1c2588010000 mov   rbx,qword ptr gs:[188h]
fffff803`d9dbd426 f00fba355102dbff00 lock btr dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],0
fffff803`d9dbd42f 720c            jb      nt!CmObliterateRMTxArray+0x55 (fffff803`d9dbd43d)

nt!CmObliterateRMTxArray+0x49:
fffff803`d9dbd431 488d0d4802dbff  lea     rcx,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9dbd438 e8e3a5bcff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)

nt!CmObliterateRMTxArray+0x55:
fffff803`d9dbd43d 488b0d9c02dbff  mov     rcx,qword ptr [nt!CmpLazyCommitListHead (fffff803`d9b6d6e0)]
fffff803`d9dbd444 48891d3d02dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],rbx
fffff803`d9dbd44b 4c8d0d8e02dbff  lea     r9,[nt!CmpLazyCommitListHead (fffff803`d9b6d6e0)]
fffff803`d9dbd452 eb55            jmp     nt!CmObliterateRMTxArray+0xc1 (fffff803`d9dbd4a9)

nt!CmObliterateRMTxArray+0x6c:
fffff803`d9dbd454 488d41e0        lea     rax,[rcx-20h]
fffff803`d9dbd458 488b09          mov     rcx,qword ptr [rcx]
fffff803`d9dbd45b 48397838        cmp     qword ptr [rax+38h],rdi
fffff803`d9dbd45f 7548            jne     nt!CmObliterateRMTxArray+0xc1 (fffff803`d9dbd4a9)

nt!CmObliterateRMTxArray+0x79:
fffff803`d9dbd461 488b5028        mov     rdx,qword ptr [rax+28h]
fffff803`d9dbd465 4883c020        add     rax,20h
fffff803`d9dbd469 4c8b00          mov     r8,qword ptr [rax]
fffff803`d9dbd46c 49394008        cmp     qword ptr [r8+8],rax
fffff803`d9dbd470 0f85de000000    jne     nt!CmObliterateRMTxArray+0x16c (fffff803`d9dbd554)

nt!CmObliterateRMTxArray+0x8e:
fffff803`d9dbd476 483902          cmp     qword ptr [rdx],rax
fffff803`d9dbd479 0f85d5000000    jne     nt!CmObliterateRMTxArray+0x16c (fffff803`d9dbd554)

nt!CmObliterateRMTxArray+0x97:
fffff803`d9dbd47f 4c8902          mov     qword ptr [rdx],r8
fffff803`d9dbd482 49895008        mov     qword ptr [r8+8],rdx
fffff803`d9dbd486 488b55f8        mov     rdx,qword ptr [rbp-8]
fffff803`d9dbd48a 4c8d45f0        lea     r8,[rbp-10h]
fffff803`d9dbd48e 48895008        mov     qword ptr [rax+8],rdx
fffff803`d9dbd492 4c8900          mov     qword ptr [rax],r8
fffff803`d9dbd495 4c8d45f0        lea     r8,[rbp-10h]
fffff803`d9dbd499 4c3902          cmp     qword ptr [rdx],r8
fffff803`d9dbd49c 0f85ab000000    jne     nt!CmObliterateRMTxArray+0x165 (fffff803`d9dbd54d)

nt!CmObliterateRMTxArray+0xba:
fffff803`d9dbd4a2 488902          mov     qword ptr [rdx],rax
fffff803`d9dbd4a5 488945f8        mov     qword ptr [rbp-8],rax

nt!CmObliterateRMTxArray+0xc1:
fffff803`d9dbd4a9 493bc9          cmp     rcx,r9
fffff803`d9dbd4ac 75a6            jne     nt!CmObliterateRMTxArray+0x6c (fffff803`d9dbd454)

nt!CmObliterateRMTxArray+0xc6:
fffff803`d9dbd4ae 33db            xor     ebx,ebx
fffff803`d9dbd4b0 33c0            xor     eax,eax
fffff803`d9dbd4b2 8d5301          lea     edx,[rbx+1]
fffff803`d9dbd4b5 48891dcc01dbff  mov     qword ptr [nt!CmpTransactionListLock+0x8 (fffff803`d9b6d688)],rbx
fffff803`d9dbd4bc f00fb115bc01dbff lock cmpxchg dword ptr [nt!CmpTransactionListLock (fffff803`d9b6d680)],edx
fffff803`d9dbd4c4 740e            je      nt!CmObliterateRMTxArray+0xec (fffff803`d9dbd4d4)

nt!CmObliterateRMTxArray+0xde:
fffff803`d9dbd4c6 488d0db301dbff  lea     rcx,[nt!CmpTransactionListLock (fffff803`d9b6d680)]
fffff803`d9dbd4cd 8bd0            mov     edx,eax
fffff803`d9dbd4cf e8589bbcff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)

nt!CmObliterateRMTxArray+0xec:
fffff803`d9dbd4d4 65488b0c2588010000 mov   rcx,qword ptr gs:[188h]
fffff803`d9dbd4dd 0fbf81e4010000  movsx   eax,word ptr [rcx+1E4h]
fffff803`d9dbd4e4 ffc0            inc     eax
fffff803`d9dbd4e6 668981e4010000  mov     word ptr [rcx+1E4h],ax
fffff803`d9dbd4ed 6685c0          test    ax,ax
fffff803`d9dbd4f0 751a            jne     nt!CmObliterateRMTxArray+0x124 (fffff803`d9dbd50c)

nt!CmObliterateRMTxArray+0x10a:
fffff803`d9dbd4f2 488d8198000000  lea     rax,[rcx+98h]
fffff803`d9dbd4f9 483900          cmp     qword ptr [rax],rax
fffff803`d9dbd4fc 740e            je      nt!CmObliterateRMTxArray+0x124 (fffff803`d9dbd50c)

nt!CmObliterateRMTxArray+0x116:
fffff803`d9dbd4fe 663999e6010000  cmp     word ptr [rcx+1E6h],bx
fffff803`d9dbd505 7505            jne     nt!CmObliterateRMTxArray+0x124 (fffff803`d9dbd50c)

nt!CmObliterateRMTxArray+0x11f:
fffff803`d9dbd507 e8f402bcff      call    nt!KiCheckForKernelApcDelivery (fffff803`d997d800)

nt!CmObliterateRMTxArray+0x124:
fffff803`d9dbd50c 488b55f0        mov     rdx,qword ptr [rbp-10h]
fffff803`d9dbd510 488d4df0        lea     rcx,[rbp-10h]
fffff803`d9dbd514 488b02          mov     rax,qword ptr [rdx]
fffff803`d9dbd517 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`d9dbd51b 753e            jne     nt!CmObliterateRMTxArray+0x173 (fffff803`d9dbd55b)

nt!CmObliterateRMTxArray+0x135:
fffff803`d9dbd51d 48395008        cmp     qword ptr [rax+8],rdx
fffff803`d9dbd521 7538            jne     nt!CmObliterateRMTxArray+0x173 (fffff803`d9dbd55b)

nt!CmObliterateRMTxArray+0x13b:
fffff803`d9dbd523 488945f0        mov     qword ptr [rbp-10h],rax
fffff803`d9dbd527 488d4df0        lea     rcx,[rbp-10h]
fffff803`d9dbd52b 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9dbd52f 488d45f0        lea     rax,[rbp-10h]
fffff803`d9dbd533 483bd0          cmp     rdx,rax
fffff803`d9dbd536 742a            je      nt!CmObliterateRMTxArray+0x17a (fffff803`d9dbd562)

nt!CmObliterateRMTxArray+0x150:
fffff803`d9dbd538 4533c9          xor     r9d,r9d
fffff803`d9dbd53b 4883c2e0        add     rdx,0FFFFFFFFFFFFFFE0h
fffff803`d9dbd53f 488bcf          mov     rcx,rdi
fffff803`d9dbd542 458d4108        lea     r8d,[r9+8]
fffff803`d9dbd546 e8e9c1e6ff      call    nt!CmpCleanupTransactionState (fffff803`d9c29734)
fffff803`d9dbd54b ebbf            jmp     nt!CmObliterateRMTxArray+0x124 (fffff803`d9dbd50c)

nt!CmObliterateRMTxArray+0x165:
fffff803`d9dbd54d b903000000      mov     ecx,3
fffff803`d9dbd552 cd29            int     29h

nt!CmObliterateRMTxArray+0x16c:
fffff803`d9dbd554 b903000000      mov     ecx,3
fffff803`d9dbd559 cd29            int     29h

nt!CmObliterateRMTxArray+0x173:
fffff803`d9dbd55b b903000000      mov     ecx,3
fffff803`d9dbd560 cd29            int     29h

nt!CmObliterateRMTxArray+0x17a:
fffff803`d9dbd562 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d9dbd567 488b7c2448      mov     rdi,qword ptr [rsp+48h]
fffff803`d9dbd56c 4883c430        add     rsp,30h
fffff803`d9dbd570 5d              pop     rbp
fffff803`d9dbd571 c3              ret
