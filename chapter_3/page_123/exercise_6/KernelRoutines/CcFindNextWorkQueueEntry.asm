nt!CcFindNextWorkQueueEntry:
fffff803`21cf9c70 488b11          mov     rdx,qword ptr [rcx]
fffff803`21cf9c73 4533d2          xor     r10d,r10d
fffff803`21cf9c76 458bc2          mov     r8d,r10d
fffff803`21cf9c79 483bd1          cmp     rdx,rcx
fffff803`21cf9c7c 7441            je      nt!CcFindNextWorkQueueEntry+0x4f (fffff803`21cf9cbf)

nt!CcFindNextWorkQueueEntry+0xe:
fffff803`21cf9c7e 8a4218          mov     al,byte ptr [rdx+18h]
fffff803`21cf9c81 4c8bc2          mov     r8,rdx
fffff803`21cf9c84 3c04            cmp     al,4
fffff803`21cf9c86 744d            je      nt!CcFindNextWorkQueueEntry+0x65 (fffff803`21cf9cd5)

nt!CcFindNextWorkQueueEntry+0x18:
fffff803`21cf9c88 3c02            cmp     al,2
fffff803`21cf9c8a 7537            jne     nt!CcFindNextWorkQueueEntry+0x53 (fffff803`21cf9cc3)

nt!CcFindNextWorkQueueEntry+0x1c:
fffff803`21cf9c8c 488b4210        mov     rax,qword ptr [rdx+10h]
fffff803`21cf9c90 4c8990f0010000  mov     qword ptr [rax+1F0h],r10

nt!CcFindNextWorkQueueEntry+0x27:
fffff803`21cf9c97 488b0a          mov     rcx,qword ptr [rdx]
fffff803`21cf9c9a 488b4208        mov     rax,qword ptr [rdx+8]
fffff803`21cf9c9e 48395108        cmp     qword ptr [rcx+8],rdx
fffff803`21cf9ca2 0f85d4591400    jne     nt! ?? ::FNODOBFM::`string'+0x3372 (fffff803`21e3f67c)

nt!CcFindNextWorkQueueEntry+0x38:
fffff803`21cf9ca8 483910          cmp     qword ptr [rax],rdx
fffff803`21cf9cab 0f85cb591400    jne     nt! ?? ::FNODOBFM::`string'+0x3372 (fffff803`21e3f67c)

nt!CcFindNextWorkQueueEntry+0x41:
fffff803`21cf9cb1 488908          mov     qword ptr [rax],rcx
fffff803`21cf9cb4 48894108        mov     qword ptr [rcx+8],rax
fffff803`21cf9cb8 4c895208        mov     qword ptr [rdx+8],r10
fffff803`21cf9cbc 4c8912          mov     qword ptr [rdx],r10

nt!CcFindNextWorkQueueEntry+0x4f:
fffff803`21cf9cbf 498bc0          mov     rax,r8
fffff803`21cf9cc2 c3              ret

nt!CcFindNextWorkQueueEntry+0x53:
fffff803`21cf9cc3 3c01            cmp     al,1
fffff803`21cf9cc5 75d0            jne     nt!CcFindNextWorkQueueEntry+0x27 (fffff803`21cf9c97)

nt!CcFindNextWorkQueueEntry+0x57:
fffff803`21cf9cc7 488b4210        mov     rax,qword ptr [rdx+10h]
fffff803`21cf9ccb 488b4830        mov     rcx,qword ptr [rax+30h]
fffff803`21cf9ccf 4c895170        mov     qword ptr [rcx+70h],r10
fffff803`21cf9cd3 ebc2            jmp     nt!CcFindNextWorkQueueEntry+0x27 (fffff803`21cf9c97)

nt!CcFindNextWorkQueueEntry+0x65:
fffff803`21cf9cd5 448b0d34a01f00  mov     r9d,dword ptr [nt!CcNumberActiveWorkerThreads (fffff803`21ef3d10)]
fffff803`21cf9cdc 8b0d32a01f00    mov     ecx,dword ptr [nt!CcActiveExtraWriteBehindThreads (fffff803`21ef3d14)]
fffff803`21cf9ce2 4183f901        cmp     r9d,1
fffff803`21cf9ce6 7615            jbe     nt!CcFindNextWorkQueueEntry+0x8d (fffff803`21cf9cfd)

nt!CcFindNextWorkQueueEntry+0x78:
fffff803`21cf9ce8 443815de9d1f00  cmp     byte ptr [nt!CcQueueThrottle (fffff803`21ef3acd)],r10b
fffff803`21cf9cef 7413            je      nt!CcFindNextWorkQueueEntry+0x94 (fffff803`21cf9d04)

nt!CcFindNextWorkQueueEntry+0x81:
fffff803`21cf9cf1 c605d59d1f0001  mov     byte ptr [nt!CcQueueThrottle (fffff803`21ef3acd)],1
fffff803`21cf9cf8 4d8bc2          mov     r8,r10
fffff803`21cf9cfb ebc2            jmp     nt!CcFindNextWorkQueueEntry+0x4f (fffff803`21cf9cbf)

nt!CcFindNextWorkQueueEntry+0x8d:
fffff803`21cf9cfd 83f901          cmp     ecx,1
fffff803`21cf9d00 7686            jbe     nt!CcFindNextWorkQueueEntry+0x18 (fffff803`21cf9c88)

nt!CcFindNextWorkQueueEntry+0x92:
fffff803`21cf9d02 ebe4            jmp     nt!CcFindNextWorkQueueEntry+0x78 (fffff803`21cf9ce8)

nt!CcFindNextWorkQueueEntry+0x94:
fffff803`21cf9d04 44890dc99d1f00  mov     dword ptr [nt!CcThreadsActiveBeforeThrottle (fffff803`21ef3ad4)],r9d
fffff803`21cf9d0b 890dbf9d1f00    mov     dword ptr [nt!CcExtraWBThreadsActiveBeforeThrottle (fffff803`21ef3ad0)],ecx
fffff803`21cf9d11 ebde            jmp     nt!CcFindNextWorkQueueEntry+0x81 (fffff803`21cf9cf1)

nt!CcNotifyWriteBehind+0x1a:
fffff803`21d73cba f6c302          test    bl,2
fffff803`21d73cbd 752a            jne     nt!CcNotifyWriteBehind+0x49 (fffff803`21d73ce9)

nt!CcNotifyWriteBehind+0x1f:
fffff803`21d73cbf f6c304          test    bl,4
fffff803`21d73cc2 7411            je      nt!CcNotifyWriteBehind+0x35 (fffff803`21d73cd5)

nt!CcNotifyWriteBehind+0x24:
fffff803`21d73cc4 488d0d15711e00  lea     rcx,[nt!CcPeriodicEvent (fffff803`21f5ade0)]
fffff803`21d73ccb 4533c0          xor     r8d,r8d
fffff803`21d73cce 33d2            xor     edx,edx
fffff803`21d73cd0 e8ab51f9ff      call    nt!KeSetEvent (fffff803`21d08e80)

nt!CcNotifyWriteBehind+0x35:
fffff803`21d73cd5 f6c308          test    bl,8
fffff803`21d73cd8 7522            jne     nt!CcNotifyWriteBehind+0x5c (fffff803`21d73cfc)

nt!CcNotifyWriteBehind+0x3a:
fffff803`21d73cda f6c310          test    bl,10h
fffff803`21d73cdd 0f85b8b90c00    jne     nt! ?? ::FNODOBFM::`string'+0x36fd (fffff803`21e3f69b)

nt!CcNotifyWriteBehind+0x43:
fffff803`21d73ce3 4883c420        add     rsp,20h
fffff803`21d73ce7 5b              pop     rbx
fffff803`21d73ce8 c3              ret

nt!CcNotifyWriteBehind+0x49:
fffff803`21d73ce9 488d0dd0701e00  lea     rcx,[nt!CcPowerEvent (fffff803`21f5adc0)]
fffff803`21d73cf0 4533c0          xor     r8d,r8d
fffff803`21d73cf3 33d2            xor     edx,edx
fffff803`21d73cf5 e88651f9ff      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21d73cfa ebc3            jmp     nt!CcNotifyWriteBehind+0x1f (fffff803`21d73cbf)

nt!CcNotifyWriteBehind+0x5c:
fffff803`21d73cfc 488d0dfd701e00  lea     rcx,[nt!CcWaitingForTeardownEvent (fffff803`21f5ae00)]
fffff803`21d73d03 4533c0          xor     r8d,r8d
fffff803`21d73d06 33d2            xor     edx,edx
fffff803`21d73d08 e87351f9ff      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21d73d0d ebcb            jmp     nt!CcNotifyWriteBehind+0x3a (fffff803`21d73cda)

nt! ?? ::FNODOBFM::`string'+0x3372:
fffff803`21e3f67c b903000000      mov     ecx,3
fffff803`21e3f681 cd29            int     29h
fffff803`21e3f683 90              nop
fffff803`21e3f684 488d0d15b71100  lea     rcx,[nt!CcLowMemoryEvent (fffff803`21f5ada0)]
fffff803`21e3f68b 4533c0          xor     r8d,r8d
fffff803`21e3f68e 33d2            xor     edx,edx
fffff803`21e3f690 e8eb97ecff      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21e3f695 90              nop
fffff803`21e3f696 e91f46f3ff      jmp     nt!CcNotifyWriteBehind+0x1a (fffff803`21d73cba)

nt! ?? ::FNODOBFM::`string'+0x36fd:
fffff803`21e3f69b 488d0d7eb71100  lea     rcx,[nt!CcCoalescingFlushEvent (fffff803`21f5ae20)]
fffff803`21e3f6a2 4533c0          xor     r8d,r8d
fffff803`21e3f6a5 33d2            xor     edx,edx
fffff803`21e3f6a7 e8d497ecff      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21e3f6ac 90              nop
fffff803`21e3f6ad e93146f3ff      jmp     nt!CcNotifyWriteBehind+0x43 (fffff803`21d73ce3)
