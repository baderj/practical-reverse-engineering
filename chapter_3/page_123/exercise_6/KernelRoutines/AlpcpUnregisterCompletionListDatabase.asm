nt!AlpcpUnregisterCompletionListDatabase:
fffff803`21ffb81c fff3            push    rbx
fffff803`21ffb81e 4883ec20        sub     rsp,20h
fffff803`21ffb822 f0480fba2dd43bf4ff00 lock bts qword ptr [nt!AlpcpCompletionListDatabase (fffff803`21f3f400)],0
fffff803`21ffb82c 488bd9          mov     rbx,rcx
fffff803`21ffb82f 723a            jb      nt!AlpcpUnregisterCompletionListDatabase+0x4f (fffff803`21ffb86b)

nt!AlpcpUnregisterCompletionListDatabase+0x15:
fffff803`21ffb831 488b13          mov     rdx,qword ptr [rbx]
fffff803`21ffb834 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`21ffb838 48395a08        cmp     qword ptr [rdx+8],rbx
fffff803`21ffb83c 753b            jne     nt!AlpcpUnregisterCompletionListDatabase+0x5d (fffff803`21ffb879)

nt!AlpcpUnregisterCompletionListDatabase+0x22:
fffff803`21ffb83e 483918          cmp     qword ptr [rax],rbx
fffff803`21ffb841 7536            jne     nt!AlpcpUnregisterCompletionListDatabase+0x5d (fffff803`21ffb879)

nt!AlpcpUnregisterCompletionListDatabase+0x27:
fffff803`21ffb843 488910          mov     qword ptr [rax],rdx
fffff803`21ffb846 48894208        mov     qword ptr [rdx+8],rax
fffff803`21ffb84a ff0db83bf4ff    dec     dword ptr [nt!AlpcpCompletionListDatabase+0x8 (fffff803`21f3f408)]
fffff803`21ffb850 4883c8ff        or      rax,0FFFFFFFFFFFFFFFFh
fffff803`21ffb854 f0480fc105a33bf4ff lock xadd qword ptr [nt!AlpcpCompletionListDatabase (fffff803`21f3f400)],rax
fffff803`21ffb85d a802            test    al,2
fffff803`21ffb85f 0f8517d32600    jne     nt! ?? ::NNGAKEGL::`string'+0x3303a (fffff803`22268b7c)

nt!AlpcpUnregisterCompletionListDatabase+0x49:
fffff803`21ffb865 4883c420        add     rsp,20h
fffff803`21ffb869 5b              pop     rbx
fffff803`21ffb86a c3              ret

nt!AlpcpUnregisterCompletionListDatabase+0x4f:
fffff803`21ffb86b 488d0d8e3bf4ff  lea     rcx,[nt!AlpcpCompletionListDatabase (fffff803`21f3f400)]
fffff803`21ffb872 e8895bd5ff      call    nt!ExfAcquirePushLockExclusive (fffff803`21d51400)
fffff803`21ffb877 ebb8            jmp     nt!AlpcpUnregisterCompletionListDatabase+0x15 (fffff803`21ffb831)

nt!AlpcpUnregisterCompletionListDatabase+0x5d:
fffff803`21ffb879 b903000000      mov     ecx,3
fffff803`21ffb87e cd29            int     29h
fffff803`21ffb880 e963f91700      jmp     nt!ExQueryBootEntropyInformation (fffff803`2217b1e8)

nt!ExQueryBootEntropyInformation:
fffff803`2217b1e8 48894c2408      mov     qword ptr [rsp+8],rcx
fffff803`2217b1ed 4883ec28        sub     rsp,28h
fffff803`2217b1f1 4c8d442430      lea     r8,[rsp+30h]
fffff803`2217b1f6 488d15872afeff  lea     rdx,[nt!ExpInitBootEntropyInformation (fffff803`2215dc84)]
fffff803`2217b1fd 488d0da4ca1700  lea     rcx,[nt!ExpBootEntropyInit (fffff803`222f7ca8)]
fffff803`2217b204 4533c9          xor     r9d,r9d
fffff803`2217b207 e8d0b30000      call    nt!RtlRunOnceExecuteOnce (fffff803`221865dc)
fffff803`2217b20c 85c0            test    eax,eax
fffff803`2217b20e 780e            js      nt!ExQueryBootEntropyInformation+0x36 (fffff803`2217b21e)

nt!ExQueryBootEntropyInformation+0x28:
fffff803`2217b210 48837c2430ff    cmp     qword ptr [rsp+30h],0FFFFFFFFFFFFFFFFh
fffff803`2217b216 b9010000c0      mov     ecx,0C0000001h
fffff803`2217b21b 0f45c1          cmovne  eax,ecx

nt!ExQueryBootEntropyInformation+0x36:
fffff803`2217b21e 4883c428        add     rsp,28h
fffff803`2217b222 c3              ret

nt! ?? ::NNGAKEGL::`string'+0x3303a:
fffff803`22268b7c a804            test    al,4
fffff803`22268b7e 0f85e12cd9ff    jne     nt!AlpcpUnregisterCompletionListDatabase+0x49 (fffff803`21ffb865)

nt! ?? ::NNGAKEGL::`string'+0x33042:
fffff803`22268b84 488d0d7568cdff  lea     rcx,[nt!AlpcpCompletionListDatabase (fffff803`21f3f400)]
fffff803`22268b8b e884c4aeff      call    nt!ExfTryToWakePushLock (fffff803`21d55014)
fffff803`22268b90 90              nop
fffff803`22268b91 e9cf2cd9ff      jmp     nt!AlpcpUnregisterCompletionListDatabase+0x49 (fffff803`21ffb865)
