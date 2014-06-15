kd> uf KeReadyThread
nt!KeReadyThread:
81a5bf06 8bff            mov     edi,edi
81a5bf08 55              push    ebp
81a5bf09 8bec            mov     ebp,esp
81a5bf0b 53              push    ebx
81a5bf0c 33c9            xor     ecx,ecx
81a5bf0e ff1568e0a181    call    dword ptr [nt!_imp_KeAcquireQueuedSpinLockRaiseToSynch (81a1e068)]
81a5bf14 8b4d08          mov     ecx,dword ptr [ebp+8]
81a5bf17 8ad8            mov     bl,al
81a5bf19 e88b860600      call    nt!KiReadyThread (81ac45a9)
81a5bf1e 648b0d20000000  mov     ecx,dword ptr fs:[20h]
81a5bf25 81c118040000    add     ecx,418h
81a5bf2b e88c7b0600      call    nt!KeReleaseQueuedSpinLockFromDpcLevel (81ac3ab
c)
81a5bf30 8acb            mov     cl,bl
81a5bf32 e8fd8f0600      call    nt!KiExitDispatcher (81ac4f34)
81a5bf37 5b              pop     ebx
81a5bf38 5d              pop     ebp
81a5bf39 c20400          ret     4