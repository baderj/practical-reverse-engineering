0: kd> uf KiInitializeProcessor
nt!KiInitializeProcessor:
fffff800`11fdca00 48895c2408      mov     qword ptr [rsp+8],rbx
fffff800`11fdca05 4889742410      mov     qword ptr [rsp+10h],rsi
fffff800`11fdca0a 57              push    rdi
fffff800`11fdca0b 4883ec30        sub     rsp,30h
fffff800`11fdca0f 833d2e39ffff00  cmp     dword ptr [nt!KeThreadDpcEnable (fffff800`11fd0344)],0
fffff800`11fdca16 488bf1          mov     rsi,rcx
fffff800`11fdca19 742c            je      nt!KiInitializeProcessor+0x47 (fffff800`11fdca47)

nt!KiInitializeProcessor+0x1b:
fffff800`11fdca1b 4881c100500000  add     rcx,5000h
fffff800`11fdca22 e8215fcbff      call    nt!KeInitializeGate (fffff800`11c92948)
fffff800`11fdca27 488d96a02d0000  lea     rdx,[rsi+2DA0h]
fffff800`11fdca2e 48895208        mov     qword ptr [rdx+8],rdx
fffff800`11fdca32 488912          mov     qword ptr [rdx],rdx
fffff800`11fdca35 4883a6b02d000000 and     qword ptr [rsi+2DB0h],0
fffff800`11fdca3d c786b82d000000000000 mov dword ptr [rsi+2DB8h],0

nt!KiInitializeProcessor+0x47:
fffff800`11fdca47 833dfe36ffff00  cmp     dword ptr [nt!KeDpcWatchdogPeriod (fffff800`11fd014c)],0
fffff800`11fdca4e 0f8495000000    je      nt!KiInitializeProcessor+0xe9 (fffff800`11fdcae9)

nt!KiInitializeProcessor+0x54:
fffff800`11fdca54 448b4624        mov     r8d,dword ptr [rsi+24h]
fffff800`11fdca58 488dbe38560000  lea     rdi,[rsi+5638h]
fffff800`11fdca5f 488d15fe7bcdff  lea     rdx,[nt!KiDpcWatchdog (fffff800`11cb4664)]
fffff800`11fdca66 488bcf          mov     rcx,rdi
fffff800`11fdca69 e8e2c4ddff      call    nt!KeInitializeThreadedDpc (fffff800`11db8f50)
fffff800`11fdca6e 0fb74624        movzx   eax,word ptr [rsi+24h]
fffff800`11fdca72 b980020000      mov     ecx,280h
fffff800`11fdca77 6603c1          add     ax,cx
fffff800`11fdca7a 488d9e78560000  lea     rbx,[rsi+5678h]
fffff800`11fdca81 33d2            xor     edx,edx
fffff800`11fdca83 488bcb          mov     rcx,rbx
fffff800`11fdca86 6689863a560000  mov     word ptr [rsi+563Ah],ax
fffff800`11fdca8d c6863956000002  mov     byte ptr [rsi+5639h],2
fffff800`11fdca94 e8171bd5ff      call    nt!KeInitializeTimerEx (fffff800`11d2e5b0)
fffff800`11fdca99 448b057435ffff  mov     r8d,dword ptr [nt!KeMaximumIncrement (fffff800`11fd0014)]
fffff800`11fdcaa0 448b1da536ffff  mov     r11d,dword ptr [nt!KeDpcWatchdogPeriod (fffff800`11fd014c)]
fffff800`11fdcaa7 4569db10270000  imul    r11d,r11d,2710h
fffff800`11fdcaae 418d40ff        lea     eax,[r8-1]
fffff800`11fdcab2 33d2            xor     edx,edx
fffff800`11fdcab4 41b9fa000000    mov     r9d,0FAh
fffff800`11fdcaba 4103c3          add     eax,r11d
fffff800`11fdcabd 488bcb          mov     rcx,rbx
fffff800`11fdcac0 48897c2420      mov     qword ptr [rsp+20h],rdi
fffff800`11fdcac5 41f7f0          div     eax,r8d
fffff800`11fdcac8 41f7d8          neg     r8d
fffff800`11fdcacb 418bd0          mov     edx,r8d
fffff800`11fdcace 898668500000    mov     dword ptr [rsi+5068h],eax
fffff800`11fdcad4 89866c500000    mov     dword ptr [rsi+506Ch],eax
fffff800`11fdcada 448b056b36ffff  mov     r8d,dword ptr [nt!KeDpcWatchdogPeriod (fffff800`11fd014c)]
fffff800`11fdcae1 41d1e8          shr     r8d,1
fffff800`11fdcae4 e8778ed4ff      call    nt!KeSetCoalescableTimer (fffff800`11d25960)

nt!KiInitializeProcessor+0xe9:
fffff800`11fdcae9 8b05b936ffff    mov     eax,dword ptr [nt!KiDPCTimeout (fffff800`11fd01a8)]
fffff800`11fdcaef 85c0            test    eax,eax
fffff800`11fdcaf1 741a            je      nt!KiInitializeProcessor+0x10d (fffff800`11fdcb0d)

nt!KiInitializeProcessor+0xf3:
fffff800`11fdcaf3 8b0d1b35ffff    mov     ecx,dword ptr [nt!KeMaximumIncrement (fffff800`11fd0014)]
fffff800`11fdcaf9 69c010270000    imul    eax,eax,2710h
fffff800`11fdcaff 33d2            xor     edx,edx
fffff800`11fdcb01 ffc8            dec     eax
fffff800`11fdcb03 03c1            add     eax,ecx
fffff800`11fdcb05 f7f1            div     eax,ecx
fffff800`11fdcb07 898624530000    mov     dword ptr [rsi+5324h],eax

nt!KiInitializeProcessor+0x10d:
fffff800`11fdcb0d 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff800`11fdcb12 488b742448      mov     rsi,qword ptr [rsp+48h]
fffff800`11fdcb17 33c0            xor     eax,eax
fffff800`11fdcb19 4883c430        add     rsp,30h
fffff800`11fdcb1d 5f              pop     rdi
fffff800`11fdcb1e c3              ret
