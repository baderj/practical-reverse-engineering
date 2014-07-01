0: kd> uf KiInsertQueueApc
nt!KiInsertQueueApc:
fffff803`d9959360 48895c2418      mov     qword ptr [rsp+18h],rbx
fffff803`d9959365 57              push    rdi
fffff803`d9959366 4883ec20        sub     rsp,20h
fffff803`d995936a 807a5003        cmp     byte ptr [rdx+50h],3
fffff803`d995936e 488b5a08        mov     rbx,qword ptr [rdx+8]
fffff803`d9959372 450fb6d0        movzx   r10d,r8b
fffff803`d9959376 488bf9          mov     rdi,rcx
fffff803`d9959379 0f849e030000    je      nt!KiInsertQueueApc+0x3ab (fffff803`d995971d)

nt!KiInsertQueueApc+0x1f:
fffff803`d995937f 48837a3000      cmp     qword ptr [rdx+30h],0
fffff803`d9959384 480fbe4250      movsx   rax,byte ptr [rdx+50h]
fffff803`d9959389 440fb64a51      movzx   r9d,byte ptr [rdx+51h]
fffff803`d995938e 488b8cc348020000 mov     rcx,qword ptr [rbx+rax*8+248h]
fffff803`d9959396 0f8585010000    jne     nt!KiInsertQueueApc+0x1c1 (fffff803`d9959521)

nt!KiInsertQueueApc+0x3c:
fffff803`d995939c 490fbec1        movsx   rax,r9b
fffff803`d99593a0 4532db          xor     r11b,r11b
fffff803`d99593a3 48c1e004        shl     rax,4
fffff803`d99593a7 4803c8          add     rcx,rax
fffff803`d99593aa 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`d99593ae 483bc1          cmp     rax,rcx
fffff803`d99593b1 0f850a030000    jne     nt!KiInsertQueueApc+0x355 (fffff803`d99596c1)

nt!KiInsertQueueApc+0x57:
fffff803`d99593b7 4c8b00          mov     r8,qword ptr [rax]
fffff803`d99593ba 488d4a10        lea     rcx,[rdx+10h]
fffff803`d99593be 4c8901          mov     qword ptr [rcx],r8
fffff803`d99593c1 48894108        mov     qword ptr [rcx+8],rax
fffff803`d99593c5 49394008        cmp     qword ptr [r8+8],rax
fffff803`d99593c9 0f853f701000    jne     nt! ?? ::FNODOBFM::`string'+0x14f4e (fffff803`d9a6040e)

nt!KiInsertQueueApc+0x6f:
fffff803`d99593cf 49894808        mov     qword ptr [r8+8],rcx
fffff803`d99593d3 488908          mov     qword ptr [rax],rcx

nt!KiInsertQueueApc+0x76:
fffff803`d99593d6 0fb68b42020000  movzx   ecx,byte ptr [rbx+242h]
fffff803`d99593dd 0fbe4250        movsx   eax,byte ptr [rdx+50h]
fffff803`d99593e1 3bc1            cmp     eax,ecx
fffff803`d99593e3 0f852d010000    jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x89:
fffff803`d99593e9 483b5f08        cmp     rbx,qword ptr [rdi+8]
fffff803`d99593ed 0f8474010000    je      nt!KiInsertQueueApc+0x205 (fffff803`d9959567)

nt!KiInsertQueueApc+0x93:
fffff803`d99593f3 4584c9          test    r9b,r9b
fffff803`d99593f6 0f852d020000    jne     nt!KiInsertQueueApc+0x2c1 (fffff803`d9959629)

nt!KiInsertQueueApc+0x9c:
fffff803`d99593fc c683c100000001  mov     byte ptr [rbx+0C1h],1
fffff803`d9959403 f0830c2400      lock or dword ptr [rsp],0
fffff803`d9959408 0fb68384010000  movzx   eax,byte ptr [rbx+184h]
fffff803`d995940f 83f802          cmp     eax,2
fffff803`d9959412 0f846a020000    je      nt!KiInsertQueueApc+0x31a (fffff803`d9959682)

nt!KiInsertQueueApc+0xb8:
fffff803`d9959418 83f805          cmp     eax,5
fffff803`d995941b 0f85f5000000    jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0xc1:
fffff803`d9959421 44388b86010000  cmp     byte ptr [rbx+186h],r9b
fffff803`d9959428 0f85e8000000    jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0xce:
fffff803`d995942e 6683bbe601000000 cmp     word ptr [rbx+1E6h],0
fffff803`d9959436 0f85da000000    jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0xdc:
fffff803`d995943c 48837a3000      cmp     qword ptr [rdx+30h],0
fffff803`d9959441 0f855c010000    jne     nt!KiInsertQueueApc+0x241 (fffff803`d99595a3)

nt!KiInsertQueueApc+0xe7:
fffff803`d9959447 0fb64370        movzx   eax,byte ptr [rbx+70h]
fffff803`d995944b 4889742438      mov     qword ptr [rsp+38h],rsi
fffff803`d9959450 2403            and     al,3
fffff803`d9959452 3c01            cmp     al,1
fffff803`d9959454 0f85b3000000    jne     nt!KiInsertQueueApc+0x1ad (fffff803`d995950d)

nt!KiInsertQueueApc+0xfa:
fffff803`d995945a 488b83e8000000  mov     rax,qword ptr [rbx+0E8h]
fffff803`d9959461 4885c0          test    rax,rax
fffff803`d9959464 0f85f3000000    jne     nt!KiInsertQueueApc+0x1fc (fffff803`d995955d)

nt!KiInsertQueueApc+0x10a:
fffff803`d995946a 488bb3c8020000  mov     rsi,qword ptr [rbx+2C8h]
fffff803`d9959471 4885f6          test    rsi,rsi
fffff803`d9959474 7464            je      nt!KiInsertQueueApc+0x17a (fffff803`d99594da)

nt!KiInsertQueueApc+0x116:
fffff803`d9959476 48896c2430      mov     qword ptr [rsp+30h],rbp
fffff803`d995947b 33ed            xor     ebp,ebp

nt!KiInsertQueueApc+0x11d:
fffff803`d995947d f0480fbaae9050000000 lock bts qword ptr [rsi+5090h],0
fffff803`d9959487 0f8253020000    jb      nt!KiInsertQueueApc+0x370 (fffff803`d99596e0)

nt!KiInsertQueueApc+0x12d:
fffff803`d995948d 488b83c8020000  mov     rax,qword ptr [rbx+2C8h]
fffff803`d9959494 488b6c2430      mov     rbp,qword ptr [rsp+30h]
fffff803`d9959499 4885c0          test    rax,rax
fffff803`d995949c 7433            je      nt!KiInsertQueueApc+0x171 (fffff803`d99594d1)

nt!KiInsertQueueApc+0x13e:
fffff803`d995949e 488d83d8000000  lea     rax,[rbx+0D8h]
fffff803`d99594a5 488b10          mov     rdx,qword ptr [rax]
fffff803`d99594a8 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`d99594ac 48394208        cmp     qword ptr [rdx+8],rax
fffff803`d99594b0 0f8560020000    jne     nt!KiInsertQueueApc+0x3a4 (fffff803`d9959716)

nt!KiInsertQueueApc+0x156:
fffff803`d99594b6 483901          cmp     qword ptr [rcx],rax
fffff803`d99594b9 0f8557020000    jne     nt!KiInsertQueueApc+0x3a4 (fffff803`d9959716)

nt!KiInsertQueueApc+0x15f:
fffff803`d99594bf 488911          mov     qword ptr [rcx],rdx
fffff803`d99594c2 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`d99594c6 48c783c802000000000000 mov qword ptr [rbx+2C8h],0

nt!KiInsertQueueApc+0x171:
fffff803`d99594d1 f04883a69050000000 lock and qword ptr [rsi+5090h],0

nt!KiInsertQueueApc+0x17a:
fffff803`d99594da 8b4724          mov     eax,dword ptr [rdi+24h]
fffff803`d99594dd 488d8bd8000000  lea     rcx,[rbx+0D8h]
fffff803`d99594e4 89831c020000    mov     dword ptr [rbx+21Ch],eax
fffff803`d99594ea c6838401000007  mov     byte ptr [rbx+184h],7
fffff803`d99594f1 488b87882c0000  mov     rax,qword ptr [rdi+2C88h]
fffff803`d99594f8 488901          mov     qword ptr [rcx],rax
fffff803`d99594fb 48898f882c0000  mov     qword ptr [rdi+2C88h],rcx
fffff803`d9959502 48c783c800000000010000 mov qword ptr [rbx+0C8h],100h

nt!KiInsertQueueApc+0x1ad:
fffff803`d995950d 804b7010        or      byte ptr [rbx+70h],10h
fffff803`d9959511 488b742438      mov     rsi,qword ptr [rsp+38h]

nt!KiInsertQueueApc+0x1b6:
fffff803`d9959516 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d995951b 4883c420        add     rsp,20h
fffff803`d995951f 5f              pop     rdi
fffff803`d9959520 c3              ret

nt!KiInsertQueueApc+0x1c1:
fffff803`d9959521 41b301          mov     r11b,1
fffff803`d9959524 4584c9          test    r9b,r9b
fffff803`d9959527 0f859c000000    jne     nt!KiInsertQueueApc+0x267 (fffff803`d99595c9)

nt!KiInsertQueueApc+0x1cd:
fffff803`d995952d 4c8d4210        lea     r8,[rdx+10h]
fffff803`d9959531 490fbec1        movsx   rax,r9b
fffff803`d9959535 48c1e004        shl     rax,4
fffff803`d9959539 4803c8          add     rcx,rax
fffff803`d995953c 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`d9959540 498908          mov     qword ptr [r8],rcx
fffff803`d9959543 49894008        mov     qword ptr [r8+8],rax
fffff803`d9959547 483908          cmp     qword ptr [rax],rcx
fffff803`d995954a 0f85b76e1000    jne     nt! ?? ::FNODOBFM::`string'+0x14f47 (fffff803`d9a60407)

nt!KiInsertQueueApc+0x1f0:
fffff803`d9959550 4c8900          mov     qword ptr [rax],r8
fffff803`d9959553 4c894108        mov     qword ptr [rcx+8],r8
fffff803`d9959557 e97afeffff      jmp     nt!KiInsertQueueApc+0x76 (fffff803`d99593d6)

nt!KiInsertQueueApc+0x1fc:
fffff803`d995955d f0ff4028        lock inc dword ptr [rax+28h]
fffff803`d9959561 e904ffffff      jmp     nt!KiInsertQueueApc+0x10a (fffff803`d995946a)

nt!KiInsertQueueApc+0x205:
fffff803`d9959567 4584c9          test    r9b,r9b
fffff803`d995956a 75aa            jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x20a:
fffff803`d995956c 83bbe401000000  cmp     dword ptr [rbx+1E4h],0
fffff803`d9959573 740f            je      nt!KiInsertQueueApc+0x222 (fffff803`d9959584)

nt!KiInsertQueueApc+0x213:
fffff803`d9959575 4584db          test    r11b,r11b
fffff803`d9959578 759c            jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x218:
fffff803`d995957a 6683bbe601000000 cmp     word ptr [rbx+1E6h],0
fffff803`d9959582 7592            jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x222:
fffff803`d9959584 c683c100000001  mov     byte ptr [rbx+0C1h],1
fffff803`d995958b 4180fa01        cmp     r10b,1
fffff803`d995958f 737f            jae     nt!KiInsertQueueApc+0x2ae (fffff803`d9959610)

nt!KiInsertQueueApc+0x22f:
fffff803`d9959591 814b7400010000  or      dword ptr [rbx+74h],100h
fffff803`d9959598 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d995959d 4883c420        add     rsp,20h
fffff803`d99595a1 5f              pop     rdi
fffff803`d99595a2 c3              ret

nt!KiInsertQueueApc+0x241:
fffff803`d99595a3 6683bbe401000000 cmp     word ptr [rbx+1E4h],0
fffff803`d99595ab 0f8565ffffff    jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x24f:
fffff803`d99595b1 80bbc000000000  cmp     byte ptr [rbx+0C0h],0
fffff803`d99595b8 0f8489feffff    je      nt!KiInsertQueueApc+0xe7 (fffff803`d9959447)

nt!KiInsertQueueApc+0x25c:
fffff803`d99595be 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d99595c3 4883c420        add     rsp,20h
fffff803`d99595c7 5f              pop     rdi
fffff803`d99595c8 c3              ret

nt!KiInsertQueueApc+0x267:
fffff803`d99595c9 488d054c473c00  lea     rax,[nt!PsExitSpecialApc (fffff803`d9d1dd1c)]
fffff803`d99595d0 48394220        cmp     qword ptr [rdx+20h],rax
fffff803`d99595d4 0f8553ffffff    jne     nt!KiInsertQueueApc+0x1cd (fffff803`d995952d)

nt!KiInsertQueueApc+0x278:
fffff803`d99595da c683c200000001  mov     byte ptr [rbx+0C2h],1
fffff803`d99595e1 4c8d4210        lea     r8,[rdx+10h]
fffff803`d99595e5 490fbec1        movsx   rax,r9b
fffff803`d99595e9 48c1e004        shl     rax,4
fffff803`d99595ed 4803c8          add     rcx,rax
fffff803`d99595f0 488b01          mov     rax,qword ptr [rcx]
fffff803`d99595f3 49894808        mov     qword ptr [r8+8],rcx
fffff803`d99595f7 498900          mov     qword ptr [r8],rax
fffff803`d99595fa 48394808        cmp     qword ptr [rax+8],rcx
fffff803`d99595fe 0f85fc6d1000    jne     nt! ?? ::FNODOBFM::`string'+0x14f40 (fffff803`d9a60400)

nt!KiInsertQueueApc+0x2a2:
fffff803`d9959604 4c894008        mov     qword ptr [rax+8],r8
fffff803`d9959608 4c8901          mov     qword ptr [rcx],r8
fffff803`d995960b e9c6fdffff      jmp     nt!KiInsertQueueApc+0x76 (fffff803`d99593d6)

nt!KiInsertQueueApc+0x2ae:
fffff803`d9959610 b101            mov     cl,1
fffff803`d9959612 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d9959617 4883c420        add     rsp,20h
fffff803`d995961b 5f              pop     rdi
fffff803`d995961c 48ff25adad2700  jmp     qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`d9bd43d0)]

nt!KiInsertQueueApc+0x2c1:
fffff803`d9959629 0fb68384010000  movzx   eax,byte ptr [rbx+184h]
fffff803`d9959630 3c05            cmp     al,5
fffff803`d9959632 0f85defeffff    jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x2d0:
fffff803`d9959638 80bb8701000001  cmp     byte ptr [rbx+187h],1
fffff803`d995963f 0f85d1feffff    jne     nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x2dd:
fffff803`d9959645 8b4374          mov     eax,dword ptr [rbx+74h]
fffff803`d9959648 a820            test    al,20h
fffff803`d995964a 0f84b3000000    je      nt!KiInsertQueueApc+0x392 (fffff803`d9959703)

nt!KiInsertQueueApc+0x2e8:
fffff803`d9959650 804b7020        or      byte ptr [rbx+70h],20h
fffff803`d9959654 4533c9          xor     r9d,r9d
fffff803`d9959657 41b8c0000000    mov     r8d,0C0h
fffff803`d995965d 488bd3          mov     rdx,rbx
fffff803`d9959660 488bcf          mov     rcx,rdi
fffff803`d9959663 e898a7feff      call    nt!KiSignalThread (fffff803`d9943e00)
fffff803`d9959668 84c0            test    al,al
fffff803`d995966a 0f84a6feffff    je      nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x308:
fffff803`d9959670 c683c200000001  mov     byte ptr [rbx+0C2h],1
fffff803`d9959677 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d995967c 4883c420        add     rsp,20h
fffff803`d9959680 5f              pop     rdi
fffff803`d9959681 c3              ret

nt!KiInsertQueueApc+0x31a:
fffff803`d9959682 658b0c25a4010000 mov     ecx,dword ptr gs:[1A4h]
fffff803`d995968a 8b8318020000    mov     eax,dword ptr [rbx+218h]
fffff803`d9959690 3bc8            cmp     ecx,eax
fffff803`d9959692 0f8478ffffff    je      nt!KiInsertQueueApc+0x2ae (fffff803`d9959610)

nt!KiInsertQueueApc+0x32c:
fffff803`d9959698 8b8b18020000    mov     ecx,dword ptr [rbx+218h]
fffff803`d995969e b201            mov     dl,1
fffff803`d99596a0 ff1512ad2700    call    qword ptr [nt!_imp_HalSendSoftwareInterrupt (fffff803`d9bd43b8)]
fffff803`d99596a6 654c8b1c2520000000 mov   r11,qword ptr gs:[20h]
fffff803`d99596af 488b5c2440      mov     rbx,qword ptr [rsp+40h]
fffff803`d99596b4 41ff8394580000  inc     dword ptr [r11+5894h]
fffff803`d99596bb 4883c420        add     rsp,20h
fffff803`d99596bf 5f              pop     rdi
fffff803`d99596c0 c3              ret

nt!KiInsertQueueApc+0x355:
fffff803`d99596c1 4883782000      cmp     qword ptr [rax+20h],0
fffff803`d99596c6 0f84ebfcffff    je      nt!KiInsertQueueApc+0x57 (fffff803`d99593b7)

nt!KiInsertQueueApc+0x360:
fffff803`d99596cc 488b4008        mov     rax,qword ptr [rax+8]
fffff803`d99596d0 483bc1          cmp     rax,rcx
fffff803`d99596d3 0f84defcffff    je      nt!KiInsertQueueApc+0x57 (fffff803`d99593b7)

nt!KiInsertQueueApc+0x36d:
fffff803`d99596d9 ebe6            jmp     nt!KiInsertQueueApc+0x355 (fffff803`d99596c1)

nt!KiInsertQueueApc+0x370:
fffff803`d99596e0 ffc5            inc     ebp
fffff803`d99596e2 852d644d2800    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`d9bde44c)],ebp
fffff803`d99596e8 0f84276d1000    je      nt! ?? ::FNODOBFM::`string'+0x14f55 (fffff803`d9a60415)

nt!KiInsertQueueApc+0x37e:
fffff803`d99596ee f390            pause

nt!KiInsertQueueApc+0x380:
fffff803`d99596f0 488b8690500000  mov     rax,qword ptr [rsi+5090h]
fffff803`d99596f7 4885c0          test    rax,rax
fffff803`d99596fa 0f847dfdffff    je      nt!KiInsertQueueApc+0x11d (fffff803`d995947d)

nt!KiInsertQueueApc+0x390:
fffff803`d9959700 ebde            jmp     nt!KiInsertQueueApc+0x370 (fffff803`d99596e0)

nt!KiInsertQueueApc+0x392:
fffff803`d9959703 80bbc200000000  cmp     byte ptr [rbx+0C2h],0
fffff803`d995970a 0f8406feffff    je      nt!KiInsertQueueApc+0x1b6 (fffff803`d9959516)

nt!KiInsertQueueApc+0x39f:
fffff803`d9959710 e93bffffff      jmp     nt!KiInsertQueueApc+0x2e8 (fffff803`d9959650)

nt!KiInsertQueueApc+0x3a4:
fffff803`d9959716 b903000000      mov     ecx,3
fffff803`d995971b cd29            int     29h

nt!KiInsertQueueApc+0x3ab:
fffff803`d995971d 0fb68342020000  movzx   eax,byte ptr [rbx+242h]
fffff803`d9959724 884250          mov     byte ptr [rdx+50h],al
fffff803`d9959727 e953fcffff      jmp     nt!KiInsertQueueApc+0x1f (fffff803`d995937f)

nt! ?? ::FNODOBFM::`string'+0x14f40:
fffff803`d9a60400 b903000000      mov     ecx,3
fffff803`d9a60405 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x14f47:
fffff803`d9a60407 b903000000      mov     ecx,3
fffff803`d9a6040c cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x14f4e:
fffff803`d9a6040e b903000000      mov     ecx,3
fffff803`d9a60413 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x14f55:
fffff803`d9a60415 8b0555dc1700    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`d9bde070)]
fffff803`d9a6041b a840            test    al,40h
fffff803`d9a6041d 0f84cb92efff    je      nt!KiInsertQueueApc+0x37e (fffff803`d99596ee)

nt! ?? ::FNODOBFM::`string'+0x14f63:
fffff803`d9a60423 8bcd            mov     ecx,ebp
fffff803`d9a60425 e89aeff8ff      call    nt!HvlNotifyLongSpinWait (fffff803`d99ef3c4)
fffff803`d9a6042a 90              nop
fffff803`d9a6042b e9c092efff      jmp     nt!KiInsertQueueApc+0x380 (fffff803`d99596f0)

nt!_imp_HalRequestSoftwareInterrupt:
fffff803`d9bd43d0 5c              pop     rsp
fffff803`d9bd43d1 cb              retf
