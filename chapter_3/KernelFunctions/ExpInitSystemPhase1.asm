0: kd> uf ExpInitSystemPhase1
nt!ExpInitSystemPhase1:
fffff800`123695d0 488bc4          mov     rax,rsp
fffff800`123695d3 48895808        mov     qword ptr [rax+8],rbx
fffff800`123695d7 48896810        mov     qword ptr [rax+10h],rbp
fffff800`123695db 48897018        mov     qword ptr [rax+18h],rsi
fffff800`123695df 48897820        mov     qword ptr [rax+20h],rdi
fffff800`123695e3 4156            push    r14
fffff800`123695e5 4883ec50        sub     rsp,50h
fffff800`123695e9 41be01000000    mov     r14d,1
fffff800`123695ef e89cc3dfff      call    nt!RtlInitializeAtomPackage (fffff800`12165990)
fffff800`123695f4 e8bfe5fcff      call    nt!ExpInitializePushLocks (fffff800`12337bb8)
fffff800`123695f9 488d053003baff  lea     rax,[nt!ExpHostList (fffff800`11f09930)]
fffff800`12369600 33ed            xor     ebp,ebp
fffff800`12369602 4889052f03baff  mov     qword ptr [nt!ExpHostList+0x8 (fffff800`11f09938)],rax
fffff800`12369609 4889052003baff  mov     qword ptr [nt!ExpHostList (fffff800`11f09930)],rax
fffff800`12369610 48892d0903baff  mov     qword ptr [nt!ExpHostListLock (fffff800`11f09920)],rbp
fffff800`12369617 48892d2a06baff  mov     qword ptr [nt!ExpKeyManipLock (fffff800`11f09c48)],rbp
fffff800`1236961e 48892da305baff  mov     qword ptr [nt!ExpPlatformBinaryLock (fffff800`11f09bc8)],rbp
fffff800`12369625 e83630fdff      call    nt!ExpWorkerInitialization (fffff800`1233c660)
fffff800`1236962a 85c0            test    eax,eax
fffff800`1236962c 8b05da69c6ff    mov     eax,dword ptr [nt!KeNumberProcessors (fffff800`11fd000c)]
fffff800`12369632 410fb6f6        movzx   esi,r14b
fffff800`12369636 0f48f5          cmovs   esi,ebp
fffff800`12369639 8bfd            mov     edi,ebp
fffff800`1236963b 85c0            test    eax,eax
fffff800`1236963d 7422            je      nt!ExpInitSystemPhase1+0x91 (fffff800`12369661)

nt!ExpInitSystemPhase1+0x6f:
fffff800`1236963f 488d1d3a76c6ff  lea     rbx,[nt!KiProcessorBlock (fffff800`11fd0c80)]

nt!ExpInitSystemPhase1+0x76:
fffff800`12369646 488b0b          mov     rcx,qword ptr [rbx]
fffff800`12369649 33d2            xor     edx,edx
fffff800`1236964b e8c004a5ff      call    nt!ExInitializeProcessor (fffff800`11db9b10)
fffff800`12369650 8b05b669c6ff    mov     eax,dword ptr [nt!KeNumberProcessors (fffff800`11fd000c)]
fffff800`12369656 4103fe          add     edi,r14d
fffff800`12369659 4883c308        add     rbx,8
fffff800`1236965d 3bf8            cmp     edi,eax
fffff800`1236965f 72e5            jb      nt!ExpInitSystemPhase1+0x76 (fffff800`12369646)

nt!ExpInitSystemPhase1+0x91:
fffff800`12369661 e8bae4fcff      call    nt!ExpEventInitialization (fffff800`12337b20)
fffff800`12369666 f6d8            neg     al
fffff800`12369668 1adb            sbb     bl,bl
fffff800`1236966a 4022de          and     bl,sil
fffff800`1236966d e83668fdff      call    nt!ExpEventPairInitialization (fffff800`1233fea8)
fffff800`12369672 f6d8            neg     al
fffff800`12369674 401aff          sbb     dil,dil
fffff800`12369677 4022fb          and     dil,bl
fffff800`1236967a e8d9e3fcff      call    nt!ExpMutantInitialization (fffff800`12337a58)
fffff800`1236967f f6d8            neg     al
fffff800`12369681 1adb            sbb     bl,bl
fffff800`12369683 4022df          and     bl,dil
fffff800`12369686 e835defcff      call    nt!ExpInitializeCallbacks (fffff800`123374c0)
fffff800`1236968b f6d8            neg     al
fffff800`1236968d 401aff          sbb     dil,dil
fffff800`12369690 4022fb          and     dil,bl
fffff800`12369693 e828e3fcff      call    nt!ExpSemaphoreInitialization (fffff800`123379c0)
fffff800`12369698 f6d8            neg     al
fffff800`1236969a 1adb            sbb     bl,bl
fffff800`1236969c 4022df          and     bl,dil
fffff800`1236969f e888effcff      call    nt!ExpTimerInitialization (fffff800`1233862c)
fffff800`123696a4 f6d8            neg     al
fffff800`123696a6 401aff          sbb     dil,dil
fffff800`123696a9 4022fb          and     dil,bl
fffff800`123696ac e863e2fcff      call    nt!ExpProfileInitialization (fffff800`12337914)
fffff800`123696b1 48892d6002baff  mov     qword ptr [nt!ExpUuidLock (fffff800`11f09918)],rbp
fffff800`123696b8 f6d8            neg     al
fffff800`123696ba 48b81400000080f7ffff mov rax,0FFFFF78000000014h
fffff800`123696c4 488b00          mov     rax,qword ptr [rax]
fffff800`123696c7 1adb            sbb     bl,bl
fffff800`123696c9 488905983ef9ff  mov     qword ptr [nt!ExpUuidLastTimeAllocated (fffff800`122fd568)],rax
fffff800`123696d0 4022df          and     bl,dil
fffff800`123696d3 e80441fdff      call    nt!ExpKeyedEventInitialization (fffff800`1233d7dc)
fffff800`123696d8 85c0            test    eax,eax
fffff800`123696da 0fb6fb          movzx   edi,bl
fffff800`123696dd 0f48fd          cmovs   edi,ebp
fffff800`123696e0 e803eafcff      call    nt!ExpWin32Initialization (fffff800`123380e8)
fffff800`123696e5 f6d8            neg     al
fffff800`123696e7 1adb            sbb     bl,bl
fffff800`123696e9 4022df          and     bl,dil
fffff800`123696ec e8ff59fdff      call    nt!ExpWorkerFactoryInitialization (fffff800`1233f0f0)
fffff800`123696f1 418bce          mov     ecx,r14d
fffff800`123696f4 85c0            test    eax,eax
fffff800`123696f6 0f48dd          cmovs   ebx,ebp
fffff800`123696f9 e8b6e0fcff      call    nt!ExpMicrocodeInitialization (fffff800`123377b4)
fffff800`123696fe 418bce          mov     ecx,r14d
fffff800`12369701 85c0            test    eax,eax
fffff800`12369703 0f48dd          cmovs   ebx,ebp
fffff800`12369706 e875000000      call    nt!ExpUpdateProductSuiteType (fffff800`12369780)
fffff800`1236970b b805000000      mov     eax,5
fffff800`12369710 6689442424      mov     word ptr [rsp+24h],ax
fffff800`12369715 488d053c67dfff  lea     rax,[nt!ExpPcwHostCallback (fffff800`1215fe58)]
fffff800`1236971c 488d542420      lea     rdx,[rsp+20h]
fffff800`12369721 488d0de001baff  lea     rcx,[nt!ExpPcwExtensionHost (fffff800`11f09908)]
fffff800`12369728 c744242001000100 mov     dword ptr [rsp+20h],10001h
fffff800`12369730 4489742428      mov     dword ptr [rsp+28h],r14d
fffff800`12369735 4889442438      mov     qword ptr [rsp+38h],rax
fffff800`1236973a 48896c2430      mov     qword ptr [rsp+30h],rbp
fffff800`1236973f 48896c2440      mov     qword ptr [rsp+40h],rbp
fffff800`12369744 e8471ae0ff      call    nt!ExRegisterHost (fffff800`1216b190)
fffff800`12369749 85c0            test    eax,eax
fffff800`1236974b 0f883f0e0200    js      nt! ?? ::PBOPGDP::`string'+0xa380 (fffff800`1238a590)

nt!ExpInitSystemPhase1+0x181:
fffff800`12369751 488b6c2468      mov     rbp,qword ptr [rsp+68h]
fffff800`12369756 488b742470      mov     rsi,qword ptr [rsp+70h]
fffff800`1236975b 488b7c2478      mov     rdi,qword ptr [rsp+78h]
fffff800`12369760 8ac3            mov     al,bl
fffff800`12369762 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff800`12369767 4883c450        add     rsp,50h
fffff800`1236976b 415e            pop     r14
fffff800`1236976d c3              ret

nt! ?? ::PBOPGDP::`string'+0xa380:
fffff800`1238a590 48892d71f3b7ff  mov     qword ptr [nt!ExpPcwExtensionHost (fffff800`11f09908)],rbp
fffff800`1238a597 e9b5f1fdff      jmp     nt!ExpInitSystemPhase1+0x181 (fffff800`12369751)
