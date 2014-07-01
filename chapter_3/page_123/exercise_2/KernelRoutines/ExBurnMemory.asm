0: kd> uf ExBurnMemory
nt!ExBurnMemory:
fffff803`d9f8b588 4c8bca          mov     r9,rdx
fffff803`d9f8b58b 488bc2          mov     rax,rdx
fffff803`d9f8b58e 488d5120        lea     rdx,[rcx+20h]
fffff803`d9f8b592 4c8b4208        mov     r8,qword ptr [rdx+8]
fffff803`d9f8b596 41ba06000000    mov     r10d,6

nt!ExBurnMemory+0x14:
fffff803`d9f8b59c 418b4810        mov     ecx,dword ptr [r8+10h]
fffff803`d9f8b5a0 83f902          cmp     ecx,2
fffff803`d9f8b5a3 7405            je      nt!ExBurnMemory+0x22 (fffff803`d9f8b5aa)

nt!ExBurnMemory+0x1d:
fffff803`d9f8b5a5 83f905          cmp     ecx,5
fffff803`d9f8b5a8 7517            jne     nt!ExBurnMemory+0x39 (fffff803`d9f8b5c1)

nt!ExBurnMemory+0x22:
fffff803`d9f8b5aa 498b4820        mov     rcx,qword ptr [r8+20h]
fffff803`d9f8b5ae 4885c9          test    rcx,rcx
fffff803`d9f8b5b1 740e            je      nt!ExBurnMemory+0x39 (fffff803`d9f8b5c1)

nt!ExBurnMemory+0x2b:
fffff803`d9f8b5b3 483bc8          cmp     rcx,rax
fffff803`d9f8b5b6 7719            ja      nt!ExBurnMemory+0x49 (fffff803`d9f8b5d1)

nt!ExBurnMemory+0x30:
fffff803`d9f8b5b8 45895010        mov     dword ptr [r8+10h],r10d
fffff803`d9f8b5bc 482bc1          sub     rax,rcx
fffff803`d9f8b5bf 7409            je      nt!ExBurnMemory+0x42 (fffff803`d9f8b5ca)

nt!ExBurnMemory+0x39:
fffff803`d9f8b5c1 4d8b4008        mov     r8,qword ptr [r8+8]
fffff803`d9f8b5c5 4c3bc2          cmp     r8,rdx
fffff803`d9f8b5c8 75d2            jne     nt!ExBurnMemory+0x14 (fffff803`d9f8b59c)

nt!ExBurnMemory+0x42:
fffff803`d9f8b5ca 4c2bc8          sub     r9,rax
fffff803`d9f8b5cd 498bc1          mov     rax,r9
fffff803`d9f8b5d0 c3              ret

nt!ExBurnMemory+0x49:
fffff803`d9f8b5d1 8bd0            mov     edx,eax
fffff803`d9f8b5d3 49295020        sub     qword ptr [r8+20h],rdx
fffff803`d9f8b5d7 498b4820        mov     rcx,qword ptr [r8+20h]
fffff803`d9f8b5db 49034818        add     rcx,qword ptr [r8+18h]
fffff803`d9f8b5df 4889155a3cbeff  mov     qword ptr [nt!BurnMemoryDescriptor+0x20 (fffff803`d9b6f240)],rdx
fffff803`d9f8b5e6 448915433cbeff  mov     dword ptr [nt!BurnMemoryDescriptor+0x10 (fffff803`d9b6f230)],r10d
fffff803`d9f8b5ed 48890d443cbeff  mov     qword ptr [nt!BurnMemoryDescriptor+0x18 (fffff803`d9b6f238)],rcx
fffff803`d9f8b5f4 498b00          mov     rax,qword ptr [r8]
fffff803`d9f8b5f7 4c89052a3cbeff  mov     qword ptr [nt!BurnMemoryDescriptor+0x8 (fffff803`d9b6f228)],r8
fffff803`d9f8b5fe 4889051b3cbeff  mov     qword ptr [nt!BurnMemoryDescriptor (fffff803`d9b6f220)],rax
fffff803`d9f8b605 4c394008        cmp     qword ptr [rax+8],r8
fffff803`d9f8b609 7512            jne     nt!ExBurnMemory+0x95 (fffff803`d9f8b61d)

nt!ExBurnMemory+0x83:
fffff803`d9f8b60b 488d0d0e3cbeff  lea     rcx,[nt!BurnMemoryDescriptor (fffff803`d9b6f220)]
fffff803`d9f8b612 48894808        mov     qword ptr [rax+8],rcx
fffff803`d9f8b616 498908          mov     qword ptr [r8],rcx
fffff803`d9f8b619 33c0            xor     eax,eax
fffff803`d9f8b61b ebad            jmp     nt!ExBurnMemory+0x42 (fffff803`d9f8b5ca)

nt!ExBurnMemory+0x95:
fffff803`d9f8b61d b903000000      mov     ecx,3
fffff803`d9f8b622 cd29            int     29h
fffff803`d9f8b624 90              nop
fffff803`d9f8b625 90              nop
fffff803`d9f8b626 90              nop
fffff803`d9f8b627 90              nop
fffff803`d9f8b628 90              nop
fffff803`d9f8b629 90              nop
fffff803`d9f8b62a 90              nop
fffff803`d9f8b62b 90              nop
fffff803`d9f8b62c 4c8bdc          mov     r11,rsp
fffff803`d9f8b62f 49895b08        mov     qword ptr [r11+8],rbx
fffff803`d9f8b633 56              push    rsi
fffff803`d9f8b634 4883ec70        sub     rsp,70h
fffff803`d9f8b638 c744244030000000 mov     dword ptr [rsp+40h],30h
fffff803`d9f8b640 498363d000      and     qword ptr [r11-30h],0
fffff803`d9f8b645 c744245840000000 mov     dword ptr [rsp+58h],40h
fffff803`d9f8b64d 498363e800      and     qword ptr [r11-18h],0
fffff803`d9f8b652 498363f000      and     qword ptr [r11-10h],0
fffff803`d9f8b657 488d05321efbff  lea     rax,[nt!CmpCurrentControlSetControlPxePathString (fffff803`d9f3d490)]
fffff803`d9f8b65e 498943d8        mov     qword ptr [r11-28h],rax
fffff803`d9f8b662 498d4310        lea     rax,[r11+10h]
fffff803`d9f8b666 488bf1          mov     rsi,rcx
fffff803`d9f8b669 498943b8        mov     qword ptr [r11-48h],rax
fffff803`d9f8b66d 8364242800      and     dword ptr [rsp+28h],0
fffff803`d9f8b672 498363a800      and     qword ptr [r11-58h],0
fffff803`d9f8b677 4d8d43c8        lea     r8,[r11-38h]
fffff803`d9f8b67b 498d4b18        lea     rcx,[r11+18h]
fffff803`d9f8b67f 4533c9          xor     r9d,r9d
fffff803`d9f8b682 ba3f000f00      mov     edx,0F003Fh
fffff803`d9f8b687 e8f49fcfff      call    nt!NtCreateKey (fffff803`d9c85680)
fffff803`d9f8b68c 8bd8            mov     ebx,eax
fffff803`d9f8b68e 85c0            test    eax,eax
fffff803`d9f8b690 7867            js      nt!CmpSetNetworkValue+0xcd (fffff803`d9f8b6f9)

nt!CmpSetNetworkValue+0x66:
fffff803`d9f8b692 8b4608          mov     eax,dword ptr [rsi+8]
fffff803`d9f8b695 488b8c2490000000 mov     rcx,qword ptr [rsp+90h]
fffff803`d9f8b69d 488d15fc1dfbff  lea     rdx,[nt!CmpDhcpServerAckString (fffff803`d9f3d4a0)]
fffff803`d9f8b6a4 89442428        mov     dword ptr [rsp+28h],eax
fffff803`d9f8b6a8 488b06          mov     rax,qword ptr [rsi]
fffff803`d9f8b6ab 41b903000000    mov     r9d,3
fffff803`d9f8b6b1 4533c0          xor     r8d,r8d
fffff803`d9f8b6b4 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9f8b6b9 e8f2abcfff      call    nt!NtSetValueKey (fffff803`d9c862b0)
fffff803`d9f8b6be 8bd8            mov     ebx,eax
fffff803`d9f8b6c0 85c0            test    eax,eax
fffff803`d9f8b6c2 7835            js      nt!CmpSetNetworkValue+0xcd (fffff803`d9f8b6f9)

nt!CmpSetNetworkValue+0x98:
fffff803`d9f8b6c4 8b4618          mov     eax,dword ptr [rsi+18h]
fffff803`d9f8b6c7 488b8c2490000000 mov     rcx,qword ptr [rsp+90h]
fffff803`d9f8b6cf 488d156a1dfbff  lea     rdx,[nt!CmpBootServerReplyString (fffff803`d9f3d440)]
fffff803`d9f8b6d6 89442428        mov     dword ptr [rsp+28h],eax
fffff803`d9f8b6da 488b4610        mov     rax,qword ptr [rsi+10h]
fffff803`d9f8b6de 41b903000000    mov     r9d,3
fffff803`d9f8b6e4 4533c0          xor     r8d,r8d
fffff803`d9f8b6e7 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9f8b6ec e8bfabcfff      call    nt!NtSetValueKey (fffff803`d9c862b0)
fffff803`d9f8b6f1 8bd8            mov     ebx,eax
fffff803`d9f8b6f3 85c0            test    eax,eax
fffff803`d9f8b6f5 7802            js      nt!CmpSetNetworkValue+0xcd (fffff803`d9f8b6f9)

nt!CmpSetNetworkValue+0xcb:
fffff803`d9f8b6f7 33db            xor     ebx,ebx

nt!CmpSetNetworkValue+0xcd:
fffff803`d9f8b6f9 488b8c2490000000 mov     rcx,qword ptr [rsp+90h]
fffff803`d9f8b701 e83adcd2ff      call    nt!NtClose (fffff803`d9cb9340)
fffff803`d9f8b706 8bc3            mov     eax,ebx
fffff803`d9f8b708 488b9c2480000000 mov     rbx,qword ptr [rsp+80h]
fffff803`d9f8b710 4883c470        add     rsp,70h
fffff803`d9f8b714 5e              pop     rsi
fffff803`d9f8b715 c3              ret
