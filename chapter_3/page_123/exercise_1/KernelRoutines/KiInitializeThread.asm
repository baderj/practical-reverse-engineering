0: kd> uf KiInitializeThread
nt!KiInitializeThread:
fffff800`11fdcc24 488bc4          mov     rax,rsp
fffff800`11fdcc27 48895808        mov     qword ptr [rax+8],rbx
fffff800`11fdcc2b 48896810        mov     qword ptr [rax+10h],rbp
fffff800`11fdcc2f 48897018        mov     qword ptr [rax+18h],rsi
fffff800`11fdcc33 57              push    rdi
fffff800`11fdcc34 4883ec50        sub     rsp,50h
fffff800`11fdcc38 8360e800        and     dword ptr [rax-18h],0
fffff800`11fdcc3c 4c8940e0        mov     qword ptr [rax-20h],r8
fffff800`11fdcc40 488360d800      and     qword ptr [rax-28h],0
fffff800`11fdcc45 488360d000      and     qword ptr [rax-30h],0
fffff800`11fdcc4a 488360c800      and     qword ptr [rax-38h],0
fffff800`11fdcc4f 498bf1          mov     rsi,r9
fffff800`11fdcc52 498bf8          mov     rdi,r8
fffff800`11fdcc55 488d2d54edd1ff  lea     rbp,[nt!KiIdleLoop (fffff800`11cfb9b0)]
fffff800`11fdcc5c 4533c9          xor     r9d,r9d
fffff800`11fdcc5f 4c8bc5          mov     r8,rbp
fffff800`11fdcc62 488bd9          mov     rbx,rcx
fffff800`11fdcc65 e8c6a6ffff      call    nt!KeInitThread (fffff800`11fd7330)
fffff800`11fdcc6a 0fba737410      btr     dword ptr [rbx+74h],10h
fffff800`11fdcc6f 4533c9          xor     r9d,r9d
fffff800`11fdcc72 4533c0          xor     r8d,r8d
fffff800`11fdcc75 33d2            xor     edx,edx
fffff800`11fdcc77 488bcb          mov     rcx,rbx
fffff800`11fdcc7a e859e7d7ff      call    nt!KeStartThread (fffff800`11d5b3d8)
fffff800`11fdcc7f 8b4624          mov     eax,dword ptr [rsi+24h]
fffff800`11fdcc82 c683c30000001f  mov     byte ptr [rbx+0C3h],1Fh
fffff800`11fdcc89 898318020000    mov     dword ptr [rbx+218h],eax
fffff800`11fdcc8f c6838401000002  mov     byte ptr [rbx+184h],2
fffff800`11fdcc96 0fb78658060000  movzx   eax,word ptr [rsi+658h]
fffff800`11fdcc9d 66898330020000  mov     word ptr [rbx+230h],ax
fffff800`11fdcca4 488b8660060000  mov     rax,qword ptr [rsi+660h]
fffff800`11fdccab 41b801000000    mov     r8d,1
fffff800`11fdccb1 48898328020000  mov     qword ptr [rbx+228h],rax
fffff800`11fdccb8 8b4624          mov     eax,dword ptr [rsi+24h]
fffff800`11fdccbb 488d15aed9feff  lea     rdx,[nt!KiInitialProcess+0x470 (fffff800`11fca670)]
fffff800`11fdccc2 8983c4000000    mov     dword ptr [rbx+0C4h],eax
fffff800`11fdccc8 0fb78330020000  movzx   eax,word ptr [rbx+230h]
fffff800`11fdcccf 66898340020000  mov     word ptr [rbx+240h],ax
fffff800`11fdccd6 488b8328020000  mov     rax,qword ptr [rbx+228h]
fffff800`11fdccdd 48898338020000  mov     qword ptr [rbx+238h],rax
fffff800`11fdcce4 8b83c4000000    mov     eax,dword ptr [rbx+0C4h]
fffff800`11fdccea 44884371        mov     byte ptr [rbx+71h],r8b
fffff800`11fdccee c6838601000002  mov     byte ptr [rbx+186h],2
fffff800`11fdccf5 4889ab70030000  mov     qword ptr [rbx+370h],rbp
fffff800`11fdccfc 4889abf0030000  mov     qword ptr [rbx+3F0h],rbp
fffff800`11fdcd03 898344020000    mov     dword ptr [rbx+244h],eax
fffff800`11fdcd09 837e2400        cmp     dword ptr [rsi+24h],0
fffff800`11fdcd0d 745d            je      nt!KiInitializeThread+0x148 (fffff800`11fdcd6c)

nt!KiInitializeThread+0xeb:
fffff800`11fdcd0f 488b0562d9feff  mov     rax,qword ptr [nt!KiInitialProcess+0x478 (fffff800`11fca678)]

nt!KiInitializeThread+0xf2:
fffff800`11fdcd16 488d8b00040000  lea     rcx,[rbx+400h]
fffff800`11fdcd1d 488911          mov     qword ptr [rcx],rdx
fffff800`11fdcd20 48894108        mov     qword ptr [rcx+8],rax
fffff800`11fdcd24 483910          cmp     qword ptr [rax],rdx
fffff800`11fdcd27 7556            jne     nt!KiInitializeThread+0x15b (fffff800`11fdcd7f)

nt!KiInitializeThread+0x105:
fffff800`11fdcd29 488908          mov     qword ptr [rax],rcx
fffff800`11fdcd2c 48890d45d9feff  mov     qword ptr [nt!KiInitialProcess+0x478 (fffff800`11fca678)],rcx
fffff800`11fdcd33 8b4624          mov     eax,dword ptr [rsi+24h]
fffff800`11fdcd36 488d0d4360ffff  lea     rcx,[nt!KiProcessorIndexToNumberMappingTable (fffff800`11fd2d80)]
fffff800`11fdcd3d 8b1481          mov     edx,dword ptr [rcx+rax*4]
fffff800`11fdcd40 8bca            mov     ecx,edx
fffff800`11fdcd42 8bc2            mov     eax,edx
fffff800`11fdcd44 83e13f          and     ecx,3Fh
fffff800`11fdcd47 48c1e806        shr     rax,6
fffff800`11fdcd4b 49d3e0          shl     r8,cl
fffff800`11fdcd4e f04c0984c710010000 lock or qword ptr [rdi+rax*8+110h],r8
fffff800`11fdcd57 488b5c2460      mov     rbx,qword ptr [rsp+60h]
fffff800`11fdcd5c 488b6c2468      mov     rbp,qword ptr [rsp+68h]
fffff800`11fdcd61 488b742470      mov     rsi,qword ptr [rsp+70h]
fffff800`11fdcd66 4883c450        add     rsp,50h
fffff800`11fdcd6a 5f              pop     rdi
fffff800`11fdcd6b c3              ret

nt!KiInitializeThread+0x148:
fffff800`11fdcd6c 488bc2          mov     rax,rdx
fffff800`11fdcd6f 48891502d9feff  mov     qword ptr [nt!KiInitialProcess+0x478 (fffff800`11fca678)],rdx
fffff800`11fdcd76 488915f3d8feff  mov     qword ptr [nt!KiInitialProcess+0x470 (fffff800`11fca670)],rdx
fffff800`11fdcd7d eb97            jmp     nt!KiInitializeThread+0xf2 (fffff800`11fdcd16)

nt!KiInitializeThread+0x15b:
fffff800`11fdcd7f b903000000      mov     ecx,3
fffff800`11fdcd84 cd29            int     29h
fffff800`11fdcd86 90              nop
fffff800`11fdcd87 90              nop
fffff800`11fdcd88 90              nop
fffff800`11fdcd89 90              nop
fffff800`11fdcd8a 90              nop
fffff800`11fdcd8b 90              nop
fffff800`11fdcd8c 4883ec28        sub     rsp,28h
fffff800`11fdcd90 e8fbc8ddff      call    nt!KiGetCurrentGroupCount (fffff800`11db9690)
fffff800`11fdcd95 668905c432ffff  mov     word ptr [nt!KiActiveGroups (fffff800`11fd0060)],ax
fffff800`11fdcd9c fa              cli
fffff800`11fdcd9d 8bc1            mov     eax,ecx
fffff800`11fdcd9f 4c8d1d5ab2c9ff  lea     r11,[nt!`string' <PERF> (nt+0x0) (fffff800`11c78000)]
fffff800`11fdcda6 41ba01000000    mov     r10d,1
fffff800`11fdcdac 4401155932ffff  add     dword ptr [nt!KeNumberProcessors (fffff800`11fd000c)],r10d
fffff800`11fdcdb3 418b8c8380ad3500 mov     ecx,dword ptr [r11+rax*4+35AD80h]
fffff800`11fdcdbb 0fb705de38ffff  movzx   eax,word ptr [nt!KeActiveProcessors (fffff800`11fd06a0)]
fffff800`11fdcdc2 448bc1          mov     r8d,ecx
fffff800`11fdcdc5 83e13f          and     ecx,3Fh
fffff800`11fdcdc8 41c1e806        shr     r8d,6
fffff800`11fdcdcc 413bc0          cmp     eax,r8d
fffff800`11fdcdcf 764b            jbe     nt!KiUpdateProcessorCount+0x90 (fffff800`11fdce1c)

nt!KiUpdateProcessorCount+0x45:
fffff800`11fdcdd1 498bc2          mov     rax,r10
fffff800`11fdcdd4 48d3e0          shl     rax,cl
fffff800`11fdcdd7 4b0984c3a8863500 or      qword ptr [r11+r8*8+3586A8h],rax
fffff800`11fdcddf fb              sti
fffff800`11fdcde0 85d2            test    edx,edx
fffff800`11fdcde2 750f            jne     nt!KiUpdateProcessorCount+0x67 (fffff800`11fdcdf3)

nt!KiUpdateProcessorCount+0x58:
fffff800`11fdcde4 8a05d933ffff    mov     al,byte ptr [nt!KeNumberProcessorsGroup0 (fffff800`11fd01c3)]
fffff800`11fdcdea 4103c2          add     eax,r10d
fffff800`11fdcded 8805d033ffff    mov     byte ptr [nt!KeNumberProcessorsGroup0 (fffff800`11fd01c3)],al

nt!KiUpdateProcessorCount+0x67:
fffff800`11fdcdf3 a1c003000080f7ffff mov   eax,dword ptr [FFFFF780000003C0h]
fffff800`11fdcdfc 4103c2          add     eax,r10d
fffff800`11fdcdff a3c003000080f7ffff mov   dword ptr [FFFFF780000003C0h],eax
fffff800`11fdce08 8a055232ffff    mov     al,byte ptr [nt!KiActiveGroups (fffff800`11fd0060)]
fffff800`11fdce0e a2c403000080f7ffff mov   byte ptr [FFFFF780000003C4h],al
fffff800`11fdce17 4883c428        add     rsp,28h
fffff800`11fdce1b c3              ret

nt!KiUpdateProcessorCount+0x90:
fffff800`11fdce1c 438d0402        lea     eax,[r10+r8]
fffff800`11fdce20 6689057938ffff  mov     word ptr [nt!KeActiveProcessors (fffff800`11fd06a0)],ax
fffff800`11fdce27 eba8            jmp     nt!KiUpdateProcessorCount+0x45 (fffff800`11fdcdd1)
