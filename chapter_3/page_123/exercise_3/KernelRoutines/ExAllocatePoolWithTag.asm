0: kd> uf ExAllocatePoolWithTag
nt!ExAllocatePoolWithTag:
fffff803`d9af6010 fff3            push    rbx
fffff803`d9af6012 56              push    rsi
fffff803`d9af6013 57              push    rdi
fffff803`d9af6014 4154            push    r12
fffff803`d9af6016 4157            push    r15
fffff803`d9af6018 4881eca0000000  sub     rsp,0A0h
fffff803`d9af601f 8bc1            mov     eax,ecx
fffff803`d9af6021 458bf8          mov     r15d,r8d
fffff803`d9af6024 488bf2          mov     rsi,rdx
fffff803`d9af6027 83e044          and     eax,44h
fffff803`d9af602a 8bf9            mov     edi,ecx
fffff803`d9af602c 3c44            cmp     al,44h
fffff803`d9af602e 0f84cb0b0000    je      nt!ExAllocatePoolWithTag+0xbe9 (fffff803`d9af6bff)

nt!ExAllocatePoolWithTag+0x24:
fffff803`d9af6034 448b2565800e00  mov     r12d,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]
fffff803`d9af603b 8bdf            mov     ebx,edi
fffff803`d9af603d 4889ac24d8000000 mov     qword ptr [rsp+0D8h],rbp
fffff803`d9af6045 83e301          and     ebx,1
fffff803`d9af6048 4c8d05b1ffd8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af604f 40f6c720        test    dil,20h
fffff803`d9af6053 0f85d8060000    jne     nt!ExAllocatePoolWithTag+0x720 (fffff803`d9af6731)

nt!ExAllocatePoolWithTag+0x49:
fffff803`d9af6059 4863c3          movsxd  rax,ebx
fffff803`d9af605c 498bacc0c0843500 mov     rbp,qword ptr [r8+rax*8+3584C0h]

nt!ExAllocatePoolWithTag+0x54:
fffff803`d9af6064 85db            test    ebx,ebx
fffff803`d9af6066 750a            jne     nt!ExAllocatePoolWithTag+0x62 (fffff803`d9af6072)

nt!ExAllocatePoolWithTag+0x58:
fffff803`d9af6068 0fbae709        bt      edi,9
fffff803`d9af606c 0f8397090000    jae     nt!ExAllocatePoolWithTag+0x9f6 (fffff803`d9af6a09)

nt!ExAllocatePoolWithTag+0x62:
fffff803`d9af6072 41f6c408        test    r12b,8
fffff803`d9af6076 0f857d210000    jne     nt!ExFreePool+0x6b (fffff803`d9af81f9)

nt!ExAllocatePoolWithTag+0x6c:
fffff803`d9af607c 833d81800e0000  cmp     dword ptr [nt!MmSpecialPoolTag (fffff803`d9bde104)],0
fffff803`d9af6083 4c89ac2498000000 mov     qword ptr [rsp+98h],r13
fffff803`d9af608b ba02000000      mov     edx,2
fffff803`d9af6090 4c89b42490000000 mov     qword ptr [rsp+90h],r14
fffff803`d9af6098 0f8590210000    jne     nt!ExFreePool+0xa3 (fffff803`d9af822e)

nt!ExAllocatePoolWithTag+0x8e:
fffff803`d9af609e 4881fee00f0000  cmp     rsi,0FE0h
fffff803`d9af60a5 0f8762070000    ja      nt!ExAllocatePoolWithTag+0x7fb (fffff803`d9af680d)

nt!ExAllocatePoolWithTag+0x9b:
fffff803`d9af60ab 41b901000000    mov     r9d,1
fffff803`d9af60b1 4885f6          test    rsi,rsi
fffff803`d9af60b4 0f845b0b0000    je      nt!ExAllocatePoolWithTag+0xbfe (fffff803`d9af6c15)

nt!ExAllocatePoolWithTag+0xaa:
fffff803`d9af60ba 448d761f        lea     r14d,[rsi+1Fh]
fffff803`d9af60be 40f6c704        test    dil,4
fffff803`d9af60c2 0f85ef040000    jne     nt!ExAllocatePoolWithTag+0x5a7 (fffff803`d9af65b7)

nt!ExAllocatePoolWithTag+0xb8:
fffff803`d9af60c8 41c1ee04        shr     r14d,4
fffff803`d9af60cc 85db            test    ebx,ebx
fffff803`d9af60ce 0f85e1000000    jne     nt!ExAllocatePoolWithTag+0x1a5 (fffff803`d9af61b5)

nt!ExAllocatePoolWithTag+0xc4:
fffff803`d9af60d4 4183fe20        cmp     r14d,20h
fffff803`d9af60d8 774e            ja      nt!ExAllocatePoolWithTag+0x118 (fffff803`d9af6128)

nt!ExAllocatePoolWithTag+0xca:
fffff803`d9af60da 65488b142520000000 mov   rdx,qword ptr gs:[20h]
fffff803`d9af60e3 418d46ff        lea     eax,[r14-1]
fffff803`d9af60e7 488d0440        lea     rax,[rax+rax*2]
fffff803`d9af60eb 48c1e005        shl     rax,5
fffff803`d9af60ef 0fbae709        bt      edi,9
fffff803`d9af60f3 0f8328090000    jae     nt!ExAllocatePoolWithTag+0xa0d (fffff803`d9af6a21)

nt!ExAllocatePoolWithTag+0xe9:
fffff803`d9af60f9 488db280080000  lea     rsi,[rdx+880h]

nt!ExAllocatePoolWithTag+0xf0:
fffff803`d9af6100 4803f0          add     rsi,rax
fffff803`d9af6103 488bce          mov     rcx,rsi
fffff803`d9af6106 ff4614          inc     dword ptr [rsi+14h]
fffff803`d9af6109 e8424cdeff      call    nt!ExpInterlockedPopEntrySList (fffff803`d98dad50)
fffff803`d9af610e 488bd8          mov     rbx,rax
fffff803`d9af6111 4885c0          test    rax,rax
fffff803`d9af6114 0f85fc000000    jne     nt!ExAllocatePoolWithTag+0x206 (fffff803`d9af6216)

nt!ExAllocatePoolWithTag+0x10a:
fffff803`d9af611a 4c8d05dffed8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af6121 8d5002          lea     edx,[rax+2]
fffff803`d9af6124 448d4801        lea     r9d,[rax+1]

nt!ExAllocatePoolWithTag+0x118:
fffff803`d9af6128 833d817f0e0001  cmp     dword ptr [nt!ExpNumberOfNonPagedPools (fffff803`d9bde0b0)],1
fffff803`d9af612f 0f862d050000    jbe     nt!ExAllocatePoolWithTag+0x652 (fffff803`d9af6662)

nt!ExAllocatePoolWithTag+0x125:
fffff803`d9af6135 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`d9af613e 488b8838530000  mov     rcx,qword ptr [rax+5338h]
fffff803`d9af6145 8b05657f0e00    mov     eax,dword ptr [nt!ExpNumberOfNonPagedPools (fffff803`d9bde0b0)]
fffff803`d9af614b 440fb76144      movzx   r12d,word ptr [rcx+44h]
fffff803`d9af6150 4489a424d0000000 mov     dword ptr [rsp+0D0h],r12d
fffff803`d9af6158 443be0          cmp     r12d,eax
fffff803`d9af615b 0f8329230000    jae     nt!ExFreePool+0x332 (fffff803`d9af848a)

nt!ExAllocatePoolWithTag+0x151:
fffff803`d9af6161 4b8bace0d0a33500 mov     rbp,qword ptr [r8+r12*8+35A3D0h]
fffff803`d9af6169 0fbae709        bt      edi,9
fffff803`d9af616d 0f83c5090000    jae     nt!ExAllocatePoolWithTag+0xb24 (fffff803`d9af6b38)

nt!ExAllocatePoolWithTag+0x163:
fffff803`d9af6173 8bc7            mov     eax,edi
fffff803`d9af6175 c744243800000000 mov     dword ptr [rsp+38h],0
fffff803`d9af617d be00100000      mov     esi,1000h
fffff803`d9af6182 83e001          and     eax,1
fffff803`d9af6185 4c63e0          movsxd  r12,eax
fffff803`d9af6188 898424e8000000  mov     dword ptr [rsp+0E8h],eax
fffff803`d9af618f 4c89642430      mov     qword ptr [rsp+30h],r12
fffff803`d9af6194 458d66ff        lea     r12d,[r14-1]
fffff803`d9af6198 4983c414        add     r12,14h
fffff803`d9af619c 49c1e404        shl     r12,4
fffff803`d9af61a0 4c03e5          add     r12,rbp
fffff803`d9af61a3 4c89642458      mov     qword ptr [rsp+58h],r12

nt!ExAllocatePoolWithTag+0x198:
fffff803`d9af61a8 498bdc          mov     rbx,r12
fffff803`d9af61ab 4c8b642430      mov     r12,qword ptr [rsp+30h]
fffff803`d9af61b0 e999010000      jmp     nt!ExAllocatePoolWithTag+0x346 (fffff803`d9af634e)

nt!ExAllocatePoolWithTag+0x1a5:
fffff803`d9af61b5 40f6c720        test    dil,20h
fffff803`d9af61b9 0f8533050000    jne     nt!ExAllocatePoolWithTag+0x6e2 (fffff803`d9af66f2)

nt!ExAllocatePoolWithTag+0x1af:
fffff803`d9af61bf 85ff            test    edi,edi
fffff803`d9af61c1 0f889b040000    js      nt!ExAllocatePoolWithTag+0x652 (fffff803`d9af6662)

nt!ExAllocatePoolWithTag+0x1b7:
fffff803`d9af61c7 41bd00010000    mov     r13d,100h
fffff803`d9af61cd 4183fe20        cmp     r14d,20h
fffff803`d9af61d1 0f87a1050000    ja      nt!ExAllocatePoolWithTag+0x766 (fffff803`d9af6778)

nt!ExAllocatePoolWithTag+0x1c7:
fffff803`d9af61d7 4585e5          test    r13d,r12d
fffff803`d9af61da 0f8504080000    jne     nt!ExAllocatePoolWithTag+0x9d2 (fffff803`d9af69e4)

nt!ExAllocatePoolWithTag+0x1d0:
fffff803`d9af61e0 65488b142520000000 mov   rdx,qword ptr gs:[20h]
fffff803`d9af61e9 418d46ff        lea     eax,[r14-1]
fffff803`d9af61ed 488d3440        lea     rsi,[rax+rax*2]
fffff803`d9af61f1 4881c280200000  add     rdx,2080h
fffff803`d9af61f8 48c1e605        shl     rsi,5
fffff803`d9af61fc 4803f2          add     rsi,rdx
fffff803`d9af61ff 488bce          mov     rcx,rsi
fffff803`d9af6202 ff4614          inc     dword ptr [rsi+14h]
fffff803`d9af6205 e8464bdeff      call    nt!ExpInterlockedPopEntrySList (fffff803`d98dad50)
fffff803`d9af620a 488bd8          mov     rbx,rax
fffff803`d9af620d 4885c0          test    rax,rax
fffff803`d9af6210 0f844b050000    je      nt!ExAllocatePoolWithTag+0x74f (fffff803`d9af6761)

nt!ExAllocatePoolWithTag+0x206:
fffff803`d9af6216 488b05b3820e00  mov     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff803`d9bde4d0)]
fffff803`d9af621d 4c8b4bf8        mov     r9,qword ptr [rbx-8]
fffff803`d9af6221 4883eb10        sub     rbx,10h
fffff803`d9af6225 4833c3          xor     rax,rbx
fffff803`d9af6228 4c3bc8          cmp     r9,rax
fffff803`d9af622b 0f856a220000    jne     nt!ExFreePool+0x343 (fffff803`d9af849b)

nt!ExAllocatePoolWithTag+0x221:
fffff803`d9af6231 ff4618          inc     dword ptr [rsi+18h]
fffff803`d9af6234 400fb6c7        movzx   eax,dil
fffff803`d9af6238 246d            and     al,6Dh
fffff803`d9af623a 0c02            or      al,2
fffff803`d9af623c 884303          mov     byte ptr [rbx+3],al

nt!ExAllocatePoolWithTag+0x22f:
fffff803`d9af623f 0fb66b02        movzx   ebp,byte ptr [rbx+2]
fffff803`d9af6243 44897b04        mov     dword ptr [rbx+4],r15d
fffff803`d9af6247 410fbaf71f      btr     r15d,1Fh
fffff803`d9af624c 48c1e504        shl     rbp,4
fffff803`d9af6250 443b3df57f0e00  cmp     r15d,dword ptr [nt!PoolHitTag (fffff803`d9bde24c)]
fffff803`d9af6257 0f84c7090000    je      nt!ExAllocatePoolWithTag+0xc0d (fffff803`d9af6c24)

nt!ExAllocatePoolWithTag+0x24d:
fffff803`d9af625d 8b05217e0e00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)]
fffff803`d9af6263 a841            test    al,41h
fffff803`d9af6265 0f8565230000    jne     nt!ExFreePool+0x481 (fffff803`d9af85d0)

nt!ExAllocatePoolWithTag+0x25b:
fffff803`d9af626b 448be7          mov     r12d,edi
fffff803`d9af626e 4183e420        and     r12d,20h
fffff803`d9af6272 0f85cf040000    jne     nt!ExAllocatePoolWithTag+0x735 (fffff803`d9af6747)

nt!ExAllocatePoolWithTag+0x268:
fffff803`d9af6278 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`d9af6280 488b15a1320200  mov     rdx,qword ptr [nt!PoolTrackTableMask (fffff803`d9b19528)]
fffff803`d9af6287 4c8b154a1e0200  mov     r10,qword ptr [nt!PoolTrackTableSize (fffff803`d9b180d8)]
fffff803`d9af628e 4c8d056bfdd8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af6295 4d8b84c020212900 mov     r8,qword ptr [r8+rax*8+292120h]

nt!ExAllocatePoolWithTag+0x28d:
fffff803`d9af629d 418bc7          mov     eax,r15d
fffff803`d9af62a0 4c89542438      mov     qword ptr [rsp+38h],r10
fffff803`d9af62a5 48899424e8000000 mov     qword ptr [rsp+0E8h],rdx
fffff803`d9af62ad 4c89442430      mov     qword ptr [rsp+30h],r8
fffff803`d9af62b2 4869c05f9e0000  imul    rax,rax,9E5Fh
fffff803`d9af62b9 488bf0          mov     rsi,rax
fffff803`d9af62bc 48c1ee20        shr     rsi,20h
fffff803`d9af62c0 33f0            xor     esi,eax
fffff803`d9af62c2 23f2            and     esi,edx
fffff803`d9af62c4 448bce          mov     r9d,esi
fffff803`d9af62c7 89b424d0000000  mov     dword ptr [rsp+0D0h],esi
fffff803`d9af62ce 8bce            mov     ecx,esi
fffff803`d9af62d0 488d04b6        lea     rax,[rsi+rsi*4]
fffff803`d9af62d4 4c8d2cc500000000 lea     r13,[rax*8]
fffff803`d9af62dc 438b0428        mov     eax,dword ptr [r8+r13]
fffff803`d9af62e0 4f8d3428        lea     r14,[r8+r13]
fffff803`d9af62e4 413bc7          cmp     eax,r15d
fffff803`d9af62e7 0f8503020000    jne     nt!ExAllocatePoolWithTag+0x4e0 (fffff803`d9af64f0)

nt!ExAllocatePoolWithTag+0x2dd:
fffff803`d9af62ed 40f6c701        test    dil,1
fffff803`d9af62f1 7547            jne     nt!ExAllocatePoolWithTag+0x32a (fffff803`d9af633a)

nt!ExAllocatePoolWithTag+0x2e3:
fffff803`d9af62f3 f041ff4604      lock inc dword ptr [r14+4]
fffff803`d9af62f8 f0490fc16e10    lock xadd qword ptr [r14+10h],rbp

nt!ExAllocatePoolWithTag+0x2ee:
fffff803`d9af62fe 40f6c704        test    dil,4
fffff803`d9af6302 0f85e4020000    jne     nt!ExAllocatePoolWithTag+0x5dc (fffff803`d9af65ec)

nt!ExAllocatePoolWithTag+0x2f8:
fffff803`d9af6308 488d4310        lea     rax,[rbx+10h]
fffff803`d9af630c 48c70000000000  mov     qword ptr [rax],0

nt!ExAllocatePoolWithTag+0x303:
fffff803`d9af6313 4c8bac2498000000 mov     r13,qword ptr [rsp+98h]
fffff803`d9af631b 4c8bb42490000000 mov     r14,qword ptr [rsp+90h]

nt!ExAllocatePoolWithTag+0x313:
fffff803`d9af6323 488bac24d8000000 mov     rbp,qword ptr [rsp+0D8h]
fffff803`d9af632b 4881c4a0000000  add     rsp,0A0h
fffff803`d9af6332 415f            pop     r15
fffff803`d9af6334 415c            pop     r12
fffff803`d9af6336 5f              pop     rdi
fffff803`d9af6337 5e              pop     rsi
fffff803`d9af6338 5b              pop     rbx
fffff803`d9af6339 c3              ret

nt!ExAllocatePoolWithTag+0x32a:
fffff803`d9af633a f041ff4618      lock inc dword ptr [r14+18h]
fffff803`d9af633f f0490fc16e20    lock xadd qword ptr [r14+20h],rbp
fffff803`d9af6345 ebb7            jmp     nt!ExAllocatePoolWithTag+0x2ee (fffff803`d9af62fe)

nt!ExAllocatePoolWithTag+0x340:
fffff803`d9af6348 41b901000000    mov     r9d,1

nt!ExAllocatePoolWithTag+0x346:
fffff803`d9af634e 48391b          cmp     qword ptr [rbx],rbx
fffff803`d9af6351 0f859f000000    jne     nt!ExAllocatePoolWithTag+0x3ee (fffff803`d9af63f6)

nt!ExAllocatePoolWithTag+0x34f:
fffff803`d9af6357 488d8540110000  lea     rax,[rbp+1140h]
fffff803`d9af635e 4883c310        add     rbx,10h
fffff803`d9af6362 ba02000000      mov     edx,2
fffff803`d9af6367 483bd8          cmp     rbx,rax
fffff803`d9af636a 75dc            jne     nt!ExAllocatePoolWithTag+0x340 (fffff803`d9af6348)

nt!ExAllocatePoolWithTag+0x364:
fffff803`d9af636c 8bcf            mov     ecx,edi
fffff803`d9af636e 488bd6          mov     rdx,rsi
fffff803`d9af6371 81e121020080    and     ecx,80000221h
fffff803`d9af6377 e88456e4ff      call    nt!MiAllocatePoolPages (fffff803`d993ba00)
fffff803`d9af637c 488bd8          mov     rbx,rax
fffff803`d9af637f 4885c0          test    rax,rax
fffff803`d9af6382 0f843c210000    je      nt!ExFreePool+0x36c (fffff803`d9af84c4)

nt!ExAllocatePoolWithTag+0x380:
fffff803`d9af6388 85ff            test    edi,edi
fffff803`d9af638a 0f8830070000    js      nt!ExAllocatePoolWithTag+0xaac (fffff803`d9af6ac0)

nt!ExAllocatePoolWithTag+0x388:
fffff803`d9af6390 8b8c24d0000000  mov     ecx,dword ptr [rsp+0D0h]
fffff803`d9af6397 4533e4          xor     r12d,r12d
fffff803`d9af639a 400fb6c7        movzx   eax,dil
fffff803`d9af639e 448923          mov     dword ptr [rbx],r12d
fffff803`d9af63a1 884b01          mov     byte ptr [rbx+1],cl
fffff803`d9af63a4 44887302        mov     byte ptr [rbx+2],r14b
fffff803`d9af63a8 246d            and     al,6Dh
fffff803`d9af63aa 418bf6          mov     esi,r14d
fffff803`d9af63ad 41bd00010000    mov     r13d,100h
fffff803`d9af63b3 48c1e604        shl     rsi,4
fffff803`d9af63b7 0c02            or      al,2
fffff803`d9af63b9 4803f3          add     rsi,rbx
fffff803`d9af63bc 884303          mov     byte ptr [rbx+3],al
fffff803`d9af63bf 452bee          sub     r13d,r14d
fffff803`d9af63c2 448926          mov     dword ptr [rsi],r12d
fffff803`d9af63c5 44886e02        mov     byte ptr [rsi+2],r13b
fffff803`d9af63c9 448836          mov     byte ptr [rsi],r14b
fffff803`d9af63cc 884e01          mov     byte ptr [rsi+1],cl
fffff803`d9af63cf f0ff85c0000000  lock inc dword ptr [rbp+0C0h]
fffff803`d9af63d6 41c1e604        shl     r14d,4
fffff803`d9af63da 418bc6          mov     eax,r14d
fffff803`d9af63dd f0480fc14550    lock xadd qword ptr [rbp+50h],rax
fffff803`d9af63e3 807e0201        cmp     byte ptr [rsi+2],1
fffff803`d9af63e7 0f852e050000    jne     nt!ExAllocatePoolWithTag+0x909 (fffff803`d9af691b)

nt!ExAllocatePoolWithTag+0x3e5:
fffff803`d9af63ed f0ff4540        lock inc dword ptr [rbp+40h]
fffff803`d9af63f1 e949feffff      jmp     nt!ExAllocatePoolWithTag+0x22f (fffff803`d9af623f)

nt!ExAllocatePoolWithTag+0x3ee:
fffff803`d9af63f6 4c8d6d08        lea     r13,[rbp+8]
fffff803`d9af63fa 4d85e4          test    r12,r12
fffff803`d9af63fd 0f856f020000    jne     nt!ExAllocatePoolWithTag+0x662 (fffff803`d9af6672)

nt!ExAllocatePoolWithTag+0x3fb:
fffff803`d9af6403 4c896c2448      mov     qword ptr [rsp+48h],r13
fffff803`d9af6408 4c89642440      mov     qword ptr [rsp+40h],r12
fffff803`d9af640d 440f20c0        mov     rax,cr8
fffff803`d9af6411 440f22c2        mov     cr8,rdx
fffff803`d9af6415 f705657c0e0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d9af641f 88442450        mov     byte ptr [rsp+50h],al
fffff803`d9af6423 0f8588200000    jne     nt!ExFreePool+0x359 (fffff803`d9af84b1)

nt!ExAllocatePoolWithTag+0x421:
fffff803`d9af6429 488d542440      lea     rdx,[rsp+40h]
fffff803`d9af642e 49875500        xchg    rdx,qword ptr [r13]
fffff803`d9af6432 4885d2          test    rdx,rdx
fffff803`d9af6435 0f85c3030000    jne     nt!ExAllocatePoolWithTag+0x7ec (fffff803`d9af67fe)

nt!ExAllocatePoolWithTag+0x433:
fffff803`d9af643b 48391b          cmp     qword ptr [rbx],rbx
fffff803`d9af643e 0f8464060000    je      nt!ExAllocatePoolWithTag+0xa94 (fffff803`d9af6aa8)

nt!ExAllocatePoolWithTag+0x43c:
fffff803`d9af6444 4c8b03          mov     r8,qword ptr [rbx]
fffff803`d9af6447 498b00          mov     rax,qword ptr [r8]
fffff803`d9af644a 4c8b4808        mov     r9,qword ptr [rax+8]
fffff803`d9af644e 4d3bc8          cmp     r9,r8
fffff803`d9af6451 0f85cc200000    jne     nt!ExFreePool+0x3d3 (fffff803`d9af8523)

nt!ExAllocatePoolWithTag+0x44f:
fffff803`d9af6457 498b4008        mov     rax,qword ptr [r8+8]
fffff803`d9af645b 4c3900          cmp     qword ptr [rax],r8
fffff803`d9af645e 0f85bf200000    jne     nt!ExFreePool+0x3d3 (fffff803`d9af8523)

nt!ExAllocatePoolWithTag+0x45c:
fffff803`d9af6464 498b00          mov     rax,qword ptr [r8]
fffff803`d9af6467 49395808        cmp     qword ptr [r8+8],rbx
fffff803`d9af646b 0f85ab200000    jne     nt!ExFreePool+0x3cc (fffff803`d9af851c)

nt!ExAllocatePoolWithTag+0x469:
fffff803`d9af6471 4c394008        cmp     qword ptr [rax+8],r8
fffff803`d9af6475 0f85a1200000    jne     nt!ExFreePool+0x3cc (fffff803`d9af851c)

nt!ExAllocatePoolWithTag+0x473:
fffff803`d9af647b 448ba424d0000000 mov     r12d,dword ptr [rsp+0D0h]
fffff803`d9af6483 488903          mov     qword ptr [rbx],rax
fffff803`d9af6486 48895808        mov     qword ptr [rax+8],rbx
fffff803`d9af648a 410fb640f1      movzx   eax,byte ptr [r8-0Fh]
fffff803`d9af648f 498d58f0        lea     rbx,[r8-10h]
fffff803`d9af6493 413bc4          cmp     eax,r12d
fffff803`d9af6496 0f8560200000    jne     nt!ExFreePool+0x3ac (fffff803`d9af84fc)

nt!ExAllocatePoolWithTag+0x494:
fffff803`d9af649c 0fb64b02        movzx   ecx,byte ptr [rbx+2]
fffff803`d9af64a0 413bce          cmp     ecx,r14d
fffff803`d9af64a3 0f857f000000    jne     nt!ExAllocatePoolWithTag+0x518 (fffff803`d9af6528)

nt!ExAllocatePoolWithTag+0x49d:
fffff803`d9af64a9 400fb6c7        movzx   eax,dil
fffff803`d9af64ad 246d            and     al,6Dh
fffff803`d9af64af 0c02            or      al,2
fffff803`d9af64b1 884303          mov     byte ptr [rbx+3],al
fffff803`d9af64b4 85ff            test    edi,edi
fffff803`d9af64b6 0f88cf050000    js      nt!ExAllocatePoolWithTag+0xa77 (fffff803`d9af6a8b)

nt!ExAllocatePoolWithTag+0x4b0:
fffff803`d9af64bc 83bc24e800000000 cmp     dword ptr [rsp+0E8h],0
fffff803`d9af64c4 0f85eb010000    jne     nt!ExAllocatePoolWithTag+0x6a5 (fffff803`d9af66b5)

nt!ExAllocatePoolWithTag+0x4be:
fffff803`d9af64ca 488d4c2440      lea     rcx,[rsp+40h]
fffff803`d9af64cf e85c2ce2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`d9919130)

nt!ExAllocatePoolWithTag+0x4c8:
fffff803`d9af64d4 f0ff4540        lock inc dword ptr [rbp+40h]
fffff803`d9af64d8 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff803`d9af64dc 48c1e004        shl     rax,4
fffff803`d9af64e0 f0480fc14550    lock xadd qword ptr [rbp+50h],rax
fffff803`d9af64e6 e954fdffff      jmp     nt!ExAllocatePoolWithTag+0x22f (fffff803`d9af623f)

nt!ExAllocatePoolWithTag+0x4e0:
fffff803`d9af64f0 85c0            test    eax,eax
fffff803`d9af64f2 0f8465030000    je      nt!ExAllocatePoolWithTag+0x84b (fffff803`d9af685d)

nt!ExAllocatePoolWithTag+0x4e8:
fffff803`d9af64f8 8d4601          lea     eax,[rsi+1]
fffff803`d9af64fb 23c2            and     eax,edx
fffff803`d9af64fd 8bf0            mov     esi,eax
fffff803`d9af64ff 413bc1          cmp     eax,r9d
fffff803`d9af6502 0f8400040000    je      nt!ExAllocatePoolWithTag+0x8f6 (fffff803`d9af6908)

nt!ExAllocatePoolWithTag+0x4f8:
fffff803`d9af6508 8bce            mov     ecx,esi
fffff803`d9af650a 488d0489        lea     rax,[rcx+rcx*4]
fffff803`d9af650e 4c8d2cc500000000 lea     r13,[rax*8]
fffff803`d9af6516 438b0428        mov     eax,dword ptr [r8+r13]
fffff803`d9af651a 4f8d3428        lea     r14,[r8+r13]
fffff803`d9af651e 413bc7          cmp     eax,r15d
fffff803`d9af6521 75cd            jne     nt!ExAllocatePoolWithTag+0x4e0 (fffff803`d9af64f0)

nt!ExAllocatePoolWithTag+0x513:
fffff803`d9af6523 e9c5fdffff      jmp     nt!ExAllocatePoolWithTag+0x2dd (fffff803`d9af62ed)

nt!ExAllocatePoolWithTag+0x518:
fffff803`d9af6528 8b03            mov     eax,dword ptr [rbx]
fffff803`d9af652a 412ace          sub     cl,r14b
fffff803`d9af652d 84c0            test    al,al
fffff803`d9af652f 0f84f5020000    je      nt!ExAllocatePoolWithTag+0x818 (fffff803`d9af682a)

nt!ExAllocatePoolWithTag+0x525:
fffff803`d9af6535 0fb6c1          movzx   eax,cl
fffff803`d9af6538 488bd3          mov     rdx,rbx
fffff803`d9af653b 884302          mov     byte ptr [rbx+2],al
fffff803`d9af653e 48c1e004        shl     rax,4
fffff803`d9af6542 4803d8          add     rbx,rax
fffff803`d9af6545 0fb64202        movzx   eax,byte ptr [rdx+2]
fffff803`d9af6549 8803            mov     byte ptr [rbx],al
fffff803`d9af654b 418bc6          mov     eax,r14d
fffff803`d9af654e 48c1e004        shl     rax,4
fffff803`d9af6552 4803c3          add     rax,rbx
fffff803`d9af6555 48a9ff0f0000    test    rax,0FFFh
fffff803`d9af655b 7403            je      nt!ExAllocatePoolWithTag+0x550 (fffff803`d9af6560)

nt!ExAllocatePoolWithTag+0x54d:
fffff803`d9af655d 448830          mov     byte ptr [rax],r14b

nt!ExAllocatePoolWithTag+0x550:
fffff803`d9af6560 44887302        mov     byte ptr [rbx+2],r14b
fffff803`d9af6564 44886301        mov     byte ptr [rbx+1],r12b
fffff803`d9af6568 0fb64202        movzx   eax,byte ptr [rdx+2]
fffff803`d9af656c c6420300        mov     byte ptr [rdx+3],0
fffff803`d9af6570 c7420446726565  mov     dword ptr [rdx+4],65657246h
fffff803`d9af6577 44886201        mov     byte ptr [rdx+1],r12b
fffff803`d9af657b 3c01            cmp     al,1
fffff803`d9af657d 0f8426ffffff    je      nt!ExAllocatePoolWithTag+0x49d (fffff803`d9af64a9)

nt!ExAllocatePoolWithTag+0x573:
fffff803`d9af6583 0fb6c8          movzx   ecx,al
fffff803`d9af6586 4883c210        add     rdx,10h
fffff803`d9af658a ffc9            dec     ecx
fffff803`d9af658c 4883c114        add     rcx,14h
fffff803`d9af6590 48c1e104        shl     rcx,4
fffff803`d9af6594 4803cd          add     rcx,rbp
fffff803`d9af6597 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`d9af659b 48890a          mov     qword ptr [rdx],rcx
fffff803`d9af659e 48894208        mov     qword ptr [rdx+8],rax
fffff803`d9af65a2 483908          cmp     qword ptr [rax],rcx
fffff803`d9af65a5 0f856a1f0000    jne     nt!ExFreePool+0x3c5 (fffff803`d9af8515)

nt!ExAllocatePoolWithTag+0x59b:
fffff803`d9af65ab 488910          mov     qword ptr [rax],rdx
fffff803`d9af65ae 48895108        mov     qword ptr [rcx+8],rdx
fffff803`d9af65b2 e9f2feffff      jmp     nt!ExAllocatePoolWithTag+0x49d (fffff803`d9af64a9)

nt!ExAllocatePoolWithTag+0x5a7:
fffff803`d9af65b7 8b0d837b0e00    mov     ecx,dword ptr [nt!ExpCacheLineSize (fffff803`d9bde140)]
fffff803`d9af65bd 488d461f        lea     rax,[rsi+1Fh]
fffff803`d9af65c1 83e0f0          and     eax,0FFFFFFF0h
fffff803`d9af65c4 ffc8            dec     eax
fffff803`d9af65c6 03c1            add     eax,ecx
fffff803`d9af65c8 83f940          cmp     ecx,40h
fffff803`d9af65cb 0f85ab1e0000    jne     nt!ExFreePool+0x324 (fffff803`d9af847c)

nt!ExAllocatePoolWithTag+0x5c1:
fffff803`d9af65d1 c1e806          shr     eax,6

nt!ExAllocatePoolWithTag+0x5c4:
fffff803`d9af65d4 ffc0            inc     eax
fffff803`d9af65d6 0fafc1          imul    eax,ecx
fffff803`d9af65d9 3de00f0000      cmp     eax,0FE0h
fffff803`d9af65de 0f8705060000    ja      nt!ExAllocatePoolWithTag+0xbd5 (fffff803`d9af6be9)

nt!ExAllocatePoolWithTag+0x5d4:
fffff803`d9af65e4 448bf0          mov     r14d,eax
fffff803`d9af65e7 e9dcfaffff      jmp     nt!ExAllocatePoolWithTag+0xb8 (fffff803`d9af60c8)

nt!ExAllocatePoolWithTag+0x5dc:
fffff803`d9af65ec 0fb64303        movzx   eax,byte ptr [rbx+3]
fffff803`d9af65f0 b9f0ffffff      mov     ecx,0FFFFFFF0h
fffff803`d9af65f5 24fb            and     al,0FBh
fffff803`d9af65f7 2bcb            sub     ecx,ebx
fffff803`d9af65f9 884303          mov     byte ptr [rbx+3],al
fffff803`d9af65fc 8b053e7b0e00    mov     eax,dword ptr [nt!ExpCacheLineSize (fffff803`d9bde140)]
fffff803`d9af6602 ffc8            dec     eax
fffff803`d9af6604 23c8            and     ecx,eax
fffff803`d9af6606 0f84fcfcffff    je      nt!ExAllocatePoolWithTag+0x2f8 (fffff803`d9af6308)

nt!ExAllocatePoolWithTag+0x5fc:
fffff803`d9af660c 8bd1            mov     edx,ecx
fffff803`d9af660e 4803d3          add     rdx,rbx
fffff803`d9af6611 488bca          mov     rcx,rdx
fffff803`d9af6614 482bcb          sub     rcx,rbx
fffff803`d9af6617 48c1f904        sar     rcx,4
fffff803`d9af661b 880a            mov     byte ptr [rdx],cl
fffff803`d9af661d 0fb64302        movzx   eax,byte ptr [rbx+2]
fffff803`d9af6621 2ac1            sub     al,cl
fffff803`d9af6623 884202          mov     byte ptr [rdx+2],al
fffff803`d9af6626 8b03            mov     eax,dword ptr [rbx]
fffff803`d9af6628 c1e808          shr     eax,8
fffff803`d9af662b 884201          mov     byte ptr [rdx+1],al
fffff803`d9af662e 0fb64303        movzx   eax,byte ptr [rbx+3]
fffff803`d9af6632 0c04            or      al,4
fffff803`d9af6634 884203          mov     byte ptr [rdx+3],al
fffff803`d9af6637 8b4304          mov     eax,dword ptr [rbx+4]
fffff803`d9af663a 894204          mov     dword ptr [rdx+4],eax
fffff803`d9af663d 8b02            mov     eax,dword ptr [rdx]
fffff803`d9af663f 3c01            cmp     al,1
fffff803`d9af6641 760e            jbe     nt!ExAllocatePoolWithTag+0x641 (fffff803`d9af6651)

nt!ExAllocatePoolWithTag+0x633:
fffff803`d9af6643 488bc2          mov     rax,rdx
fffff803`d9af6646 483305837e0e00  xor     rax,qword ptr [nt!ExpPoolQuotaCookie (fffff803`d9bde4d0)]
fffff803`d9af664d 48894310        mov     qword ptr [rbx+10h],rax

nt!ExAllocatePoolWithTag+0x641:
fffff803`d9af6651 488bda          mov     rbx,rdx
fffff803`d9af6654 e9affcffff      jmp     nt!ExAllocatePoolWithTag+0x2f8 (fffff803`d9af6308)

nt!ExAllocatePoolWithTag+0x649:
fffff803`d9af6659 ba02000000      mov     edx,2
fffff803`d9af665e 448d4aff        lea     r9d,[rdx-1]

nt!ExAllocatePoolWithTag+0x652:
fffff803`d9af6662 c78424d000000000000000 mov dword ptr [rsp+0D0h],0
fffff803`d9af666d e901fbffff      jmp     nt!ExAllocatePoolWithTag+0x163 (fffff803`d9af6173)

nt!ExAllocatePoolWithTag+0x662:
fffff803`d9af6672 450f20c4        mov     r12,cr8
fffff803`d9af6676 450f22c1        mov     cr8,r9
fffff803`d9af667a f0410fba750000  lock btr dword ptr [r13],0
fffff803`d9af6681 0f8387040000    jae     nt!ExAllocatePoolWithTag+0xafa (fffff803`d9af6b0e)

nt!ExAllocatePoolWithTag+0x677:
fffff803`d9af6687 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af6690 49894508        mov     qword ptr [r13+8],rax
fffff803`d9af6694 410fb6c4        movzx   eax,r12b
fffff803`d9af6698 4c8b642430      mov     r12,qword ptr [rsp+30h]
fffff803`d9af669d 41894530        mov     dword ptr [r13+30h],eax
fffff803`d9af66a1 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af66aa fe8037040000    inc     byte ptr [rax+437h]
fffff803`d9af66b0 e986fdffff      jmp     nt!ExAllocatePoolWithTag+0x433 (fffff803`d9af643b)

nt!ExAllocatePoolWithTag+0x6a5:
fffff803`d9af66b5 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af66be 488d4d08        lea     rcx,[rbp+8]
fffff803`d9af66c2 ba01000000      mov     edx,1
fffff803`d9af66c7 fe8837040000    dec     byte ptr [rax+437h]
fffff803`d9af66cd 0fb67130        movzx   esi,byte ptr [rcx+30h]
fffff803`d9af66d1 48c7410800000000 mov     qword ptr [rcx+8],0
fffff803`d9af66d9 33c0            xor     eax,eax
fffff803`d9af66db f00fb111        lock cmpxchg dword ptr [rcx],edx
fffff803`d9af66df 0f85f6030000    jne     nt!ExAllocatePoolWithTag+0xac7 (fffff803`d9af6adb)

nt!ExAllocatePoolWithTag+0x6d5:
fffff803`d9af66e5 400fb6c6        movzx   eax,sil
fffff803`d9af66e9 440f22c0        mov     cr8,rax
fffff803`d9af66ed e9e2fdffff      jmp     nt!ExAllocatePoolWithTag+0x4c8 (fffff803`d9af64d4)

nt!ExAllocatePoolWithTag+0x6e2:
fffff803`d9af66f2 443b356b7c0e00  cmp     r14d,dword ptr [nt!ExpSessionPoolSmallLists (fffff803`d9bde364)]
fffff803`d9af66f9 0f8763ffffff    ja      nt!ExAllocatePoolWithTag+0x652 (fffff803`d9af6662)

nt!ExAllocatePoolWithTag+0x6ef:
fffff803`d9af66ff 488b35a27e0e00  mov     rsi,qword ptr [nt!ExpSessionPoolLookaside (fffff803`d9bde5a8)]
fffff803`d9af6706 418bce          mov     ecx,r14d
fffff803`d9af6709 48c1e107        shl     rcx,7
fffff803`d9af670d 4883c680        add     rsi,0FFFFFFFFFFFFFF80h
fffff803`d9af6711 4803f1          add     rsi,rcx
fffff803`d9af6714 488bce          mov     rcx,rsi
fffff803`d9af6717 ff4614          inc     dword ptr [rsi+14h]
fffff803`d9af671a e83146deff      call    nt!ExpInterlockedPopEntrySList (fffff803`d98dad50)
fffff803`d9af671f 488bd8          mov     rbx,rax
fffff803`d9af6722 4885c0          test    rax,rax
fffff803`d9af6725 0f85ebfaffff    jne     nt!ExAllocatePoolWithTag+0x206 (fffff803`d9af6216)

nt!ExAllocatePoolWithTag+0x71b:
fffff803`d9af672b e929ffffff      jmp     nt!ExAllocatePoolWithTag+0x649 (fffff803`d9af6659)

nt!ExAllocatePoolWithTag+0x720:
fffff803`d9af6731 85db            test    ebx,ebx
fffff803`d9af6733 0f84b9040000    je      nt!ExAllocatePoolWithTag+0xbdd (fffff803`d9af6bf2)

nt!ExAllocatePoolWithTag+0x728:
fffff803`d9af6739 e892e91c00      call    nt!MiSessionPoolVector (fffff803`d9cc50d0)
fffff803`d9af673e 488be8          mov     rbp,rax
fffff803`d9af6741 e91ef9ffff      jmp     nt!ExAllocatePoolWithTag+0x54 (fffff803`d9af6064)

nt!ExAllocatePoolWithTag+0x735:
fffff803`d9af6747 4c8b05a2190200  mov     r8,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`d9b180f0)]
fffff803`d9af674e 488b1593190200  mov     rdx,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`d9b180e8)]
fffff803`d9af6755 4c8b159c190200  mov     r10,qword ptr [nt!ExpSessionPoolTrackTableSize (fffff803`d9b180f8)]
fffff803`d9af675c e93cfbffff      jmp     nt!ExAllocatePoolWithTag+0x28d (fffff803`d9af629d)

nt!ExAllocatePoolWithTag+0x74f:
fffff803`d9af6761 448b2538790e00  mov     r12d,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]
fffff803`d9af6768 ba02000000      mov     edx,2
fffff803`d9af676d 4c8d058cf8d8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af6774 448d4aff        lea     r9d,[rdx-1]

nt!ExAllocatePoolWithTag+0x766:
fffff803`d9af6778 4585e5          test    r13d,r12d
fffff803`d9af677b 0f8563020000    jne     nt!ExAllocatePoolWithTag+0x9d2 (fffff803`d9af69e4)

nt!ExAllocatePoolWithTag+0x76f:
fffff803`d9af6781 66833d7f780e0001 cmp     word ptr [nt!KeNumberNodes (fffff803`d9bde008)],1
fffff803`d9af6789 0f873d010000    ja      nt!ExAllocatePoolWithTag+0x8ba (fffff803`d9af68cc)

nt!ExAllocatePoolWithTag+0x77d:
fffff803`d9af678f 8b0513790e00    mov     eax,dword ptr [nt!ExpNumberOfPagedPools (fffff803`d9bde0a8)]

nt!ExAllocatePoolWithTag+0x783:
fffff803`d9af6795 458be1          mov     r12d,r9d
fffff803`d9af6798 44898c24d0000000 mov     dword ptr [rsp+0D0h],r9d
fffff803`d9af67a0 83f801          cmp     eax,1
fffff803`d9af67a3 7449            je      nt!ExAllocatePoolWithTag+0x7dc (fffff803`d9af67ee)

nt!ExAllocatePoolWithTag+0x793:
fffff803`d9af67a5 448b254c8b0000  mov     r12d,dword ptr [nt!ExpPoolIndex (fffff803`d9aff2f8)]
fffff803`d9af67ac 8b0df6780e00    mov     ecx,dword ptr [nt!ExpNumberOfPagedPools (fffff803`d9bde0a8)]
fffff803`d9af67b2 41ffc4          inc     r12d
fffff803`d9af67b5 443be1          cmp     r12d,ecx
fffff803`d9af67b8 450f47e1        cmova   r12d,r9d
fffff803`d9af67bc 4489a424d0000000 mov     dword ptr [rsp+0D0h],r12d
fffff803`d9af67c4 4489252d8b0000  mov     dword ptr [nt!ExpPoolIndex (fffff803`d9aff2f8)],r12d
fffff803`d9af67cb 418bd4          mov     edx,r12d

nt!ExAllocatePoolWithTag+0x7bc:
fffff803`d9af67ce 4b8b84e0c0a13500 mov     rax,qword ptr [r8+r12*8+35A1C0h]
fffff803`d9af67d6 4883781000      cmp     qword ptr [rax+10h],0
fffff803`d9af67db 0f85d7030000    jne     nt!ExAllocatePoolWithTag+0xba4 (fffff803`d9af6bb8)

nt!ExAllocatePoolWithTag+0x7cf:
fffff803`d9af67e1 ba02000000      mov     edx,2
fffff803`d9af67e6 4489a424d0000000 mov     dword ptr [rsp+0D0h],r12d

nt!ExAllocatePoolWithTag+0x7dc:
fffff803`d9af67ee 418bc4          mov     eax,r12d
fffff803`d9af67f1 498bacc0c0a13500 mov     rbp,qword ptr [r8+rax*8+35A1C0h]
fffff803`d9af67f9 e975f9ffff      jmp     nt!ExAllocatePoolWithTag+0x163 (fffff803`d9af6173)

nt!ExAllocatePoolWithTag+0x7ec:
fffff803`d9af67fe 488d4c2440      lea     rcx,[rsp+40h]
fffff803`d9af6803 e8d839e3ff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d9af6808 e92efcffff      jmp     nt!ExAllocatePoolWithTag+0x433 (fffff803`d9af643b)

nt!ExAllocatePoolWithTag+0x7fb:
fffff803`d9af680d 458bcf          mov     r9d,r15d
fffff803`d9af6810 4c8bc6          mov     r8,rsi
fffff803`d9af6813 8bd7            mov     edx,edi
fffff803`d9af6815 33c9            xor     ecx,ecx
fffff803`d9af6817 e8241de3ff      call    nt!ExpAllocateBigPool (fffff803`d9928540)
fffff803`d9af681c 4885c0          test    rax,rax
fffff803`d9af681f 0f85eefaffff    jne     nt!ExAllocatePoolWithTag+0x303 (fffff803`d9af6313)

nt!ExAllocatePoolWithTag+0x813:
fffff803`d9af6825 e9161d0000      jmp     nt!ExFreePool+0x3ed (fffff803`d9af8540)

nt!ExAllocatePoolWithTag+0x818:
fffff803`d9af682a 418bd6          mov     edx,r14d
fffff803`d9af682d 440fb6c1        movzx   r8d,cl
fffff803`d9af6831 48c1e204        shl     rdx,4
fffff803`d9af6835 49c1e004        shl     r8,4
fffff803`d9af6839 4803d3          add     rdx,rbx
fffff803`d9af683c 4c03c2          add     r8,rdx
fffff803`d9af683f 884a02          mov     byte ptr [rdx+2],cl
fffff803`d9af6842 448832          mov     byte ptr [rdx],r14b
fffff803`d9af6845 49f7c0ff0f0000  test    r8,0FFFh
fffff803`d9af684c 0f840efdffff    je      nt!ExAllocatePoolWithTag+0x550 (fffff803`d9af6560)

nt!ExAllocatePoolWithTag+0x840:
fffff803`d9af6852 0fb6c1          movzx   eax,cl
fffff803`d9af6855 418808          mov     byte ptr [r8],cl
fffff803`d9af6858 e903fdffff      jmp     nt!ExAllocatePoolWithTag+0x550 (fffff803`d9af6560)

nt!ExAllocatePoolWithTag+0x84b:
fffff803`d9af685d 4585e4          test    r12d,r12d
fffff803`d9af6860 0f84b5020000    je      nt!ExAllocatePoolWithTag+0xb07 (fffff803`d9af6b1b)

nt!ExAllocatePoolWithTag+0x854:
fffff803`d9af6866 498d42ff        lea     rax,[r10-1]
fffff803`d9af686a 483bc8          cmp     rcx,rax
fffff803`d9af686d 0f8485fcffff    je      nt!ExAllocatePoolWithTag+0x4e8 (fffff803`d9af64f8)

nt!ExAllocatePoolWithTag+0x861:
fffff803`d9af6873 4585e4          test    r12d,r12d
fffff803`d9af6876 0f8554030000    jne     nt!ExAllocatePoolWithTag+0xbbc (fffff803`d9af6bd0)

nt!ExAllocatePoolWithTag+0x86a:
fffff803`d9af687c 488d542478      lea     rdx,[rsp+78h]
fffff803`d9af6881 488d0dd02c0200  lea     rcx,[nt!ExpTaggedPoolLock (fffff803`d9b19558)]
fffff803`d9af6888 e8639ee4ff      call    nt!KeAcquireInStackQueuedSpinLock (fffff803`d99406f0)
fffff803`d9af688d 4c8b1d4c180200  mov     r11,qword ptr [nt!PoolTrackTable (fffff803`d9b180e0)]
fffff803`d9af6894 4739641d00      cmp     dword ptr [r13+r11],r12d
fffff803`d9af6899 7508            jne     nt!ExAllocatePoolWithTag+0x891 (fffff803`d9af68a3)

nt!ExAllocatePoolWithTag+0x889:
fffff803`d9af689b 47897c1d00      mov     dword ptr [r13+r11],r15d
fffff803`d9af68a0 45893e          mov     dword ptr [r14],r15d

nt!ExAllocatePoolWithTag+0x891:
fffff803`d9af68a3 488d4c2478      lea     rcx,[rsp+78h]
fffff803`d9af68a8 e88328e2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`d9919130)
fffff803`d9af68ad 488b9424e8000000 mov     rdx,qword ptr [rsp+0E8h]
fffff803`d9af68b5 4c8b442430      mov     r8,qword ptr [rsp+30h]
fffff803`d9af68ba 448b8c24d0000000 mov     r9d,dword ptr [rsp+0D0h]
fffff803`d9af68c2 4c8b542438      mov     r10,qword ptr [rsp+38h]
fffff803`d9af68c7 e93cfcffff      jmp     nt!ExAllocatePoolWithTag+0x4f8 (fffff803`d9af6508)

nt!ExAllocatePoolWithTag+0x8ba:
fffff803`d9af68cc 65488b042520000000 mov   rax,qword ptr gs:[20h]
fffff803`d9af68d5 488b8838530000  mov     rcx,qword ptr [rax+5338h]
fffff803`d9af68dc 8b05c6770e00    mov     eax,dword ptr [nt!ExpNumberOfPagedPools (fffff803`d9bde0a8)]
fffff803`d9af68e2 440fb76144      movzx   r12d,word ptr [rcx+44h]
fffff803`d9af68e7 443be0          cmp     r12d,eax
fffff803`d9af68ea 0f83a5feffff    jae     nt!ExAllocatePoolWithTag+0x783 (fffff803`d9af6795)

nt!ExAllocatePoolWithTag+0x8de:
fffff803`d9af68f0 41ffc4          inc     r12d
fffff803`d9af68f3 4489a424d0000000 mov     dword ptr [rsp+0D0h],r12d
fffff803`d9af68fb 4b8bace0c0a13500 mov     rbp,qword ptr [r8+r12*8+35A1C0h]
fffff803`d9af6903 e96bf8ffff      jmp     nt!ExAllocatePoolWithTag+0x163 (fffff803`d9af6173)

nt!ExAllocatePoolWithTag+0x8f6:
fffff803`d9af6908 448bc7          mov     r8d,edi
fffff803`d9af690b 488bd5          mov     rdx,rbp
fffff803`d9af690e 418bcf          mov     ecx,r15d
fffff803`d9af6911 e8fae6e4ff      call    nt!ExpInsertPoolTrackerExpansion (fffff803`d9945010)
fffff803`d9af6916 e9e3f9ffff      jmp     nt!ExAllocatePoolWithTag+0x2ee (fffff803`d9af62fe)

nt!ExAllocatePoolWithTag+0x909:
fffff803`d9af691b 4c8d7508        lea     r14,[rbp+8]
fffff803`d9af691f 4439a424e8000000 cmp     dword ptr [rsp+0E8h],r12d
fffff803`d9af6927 0f8413010000    je      nt!ExAllocatePoolWithTag+0xa2c (fffff803`d9af6a40)

nt!ExAllocatePoolWithTag+0x91b:
fffff803`d9af692d 450f20c4        mov     r12,cr8
fffff803`d9af6931 b801000000      mov     eax,1
fffff803`d9af6936 440f22c0        mov     cr8,rax
fffff803`d9af693a f0410fba3600    lock btr dword ptr [r14],0
fffff803`d9af6940 0f8396020000    jae     nt!ExAllocatePoolWithTag+0xbc8 (fffff803`d9af6bdc)

nt!ExAllocatePoolWithTag+0x934:
fffff803`d9af6946 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af694f 49894608        mov     qword ptr [r14+8],rax
fffff803`d9af6953 410fb6c4        movzx   eax,r12b
fffff803`d9af6957 41894630        mov     dword ptr [r14+30h],eax
fffff803`d9af695b 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af6964 fe8037040000    inc     byte ptr [rax+437h]
fffff803`d9af696a 4533e4          xor     r12d,r12d

nt!ExAllocatePoolWithTag+0x95b:
fffff803`d9af696d 4883c610        add     rsi,10h
fffff803`d9af6971 418d4dff        lea     ecx,[r13-1]
fffff803`d9af6975 4883c114        add     rcx,14h
fffff803`d9af6979 48c1e104        shl     rcx,4
fffff803`d9af697d 4803cd          add     rcx,rbp
fffff803`d9af6980 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`d9af6984 48890e          mov     qword ptr [rsi],rcx
fffff803`d9af6987 48894608        mov     qword ptr [rsi+8],rax
fffff803`d9af698b 483908          cmp     qword ptr [rax],rcx
fffff803`d9af698e 0f85351c0000    jne     nt!ExFreePool+0x47a (fffff803`d9af85c9)

nt!ExAllocatePoolWithTag+0x982:
fffff803`d9af6994 83bc24e800000000 cmp     dword ptr [rsp+0E8h],0
fffff803`d9af699c 488930          mov     qword ptr [rax],rsi
fffff803`d9af699f 48897108        mov     qword ptr [rcx+8],rsi
fffff803`d9af69a3 0f8484000000    je      nt!ExAllocatePoolWithTag+0xa19 (fffff803`d9af6a2d)

nt!ExAllocatePoolWithTag+0x997:
fffff803`d9af69a9 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af69b2 b901000000      mov     ecx,1
fffff803`d9af69b7 fe8837040000    dec     byte ptr [rax+437h]
fffff803`d9af69bd 410fb67630      movzx   esi,byte ptr [r14+30h]
fffff803`d9af69c2 4d896608        mov     qword ptr [r14+8],r12
fffff803`d9af69c6 33c0            xor     eax,eax
fffff803`d9af69c8 f0410fb10e      lock cmpxchg dword ptr [r14],ecx
fffff803`d9af69cd 0f85ae010000    jne     nt!ExAllocatePoolWithTag+0xb6d (fffff803`d9af6b81)

nt!ExAllocatePoolWithTag+0x9c1:
fffff803`d9af69d3 400fb6c6        movzx   eax,sil
fffff803`d9af69d7 440f22c0        mov     cr8,rax
fffff803`d9af69db f0ff4540        lock inc dword ptr [rbp+40h]
fffff803`d9af69df e95bf8ffff      jmp     nt!ExAllocatePoolWithTag+0x22f (fffff803`d9af623f)

nt!ExAllocatePoolWithTag+0x9d2:
fffff803`d9af69e4 4185fd          test    r13d,edi
fffff803`d9af69e7 0f8502010000    jne     nt!ExAllocatePoolWithTag+0xadb (fffff803`d9af6aef)

nt!ExAllocatePoolWithTag+0x9db:
fffff803`d9af69ed 418bc1          mov     eax,r9d
fffff803`d9af69f0 458be1          mov     r12d,r9d
fffff803`d9af69f3 44898c24d0000000 mov     dword ptr [rsp+0D0h],r9d
fffff803`d9af69fb 498bacc0c0a13500 mov     rbp,qword ptr [r8+rax*8+35A1C0h]
fffff803`d9af6a03 e96bf7ffff      jmp     nt!ExAllocatePoolWithTag+0x163 (fffff803`d9af6173)

nt!ExAllocatePoolWithTag+0x9f6:
fffff803`d9af6a09 410fbae40b      bt      r12d,0Bh
fffff803`d9af6a0e 0f82dc170000    jb      nt!ExFreePool+0x62 (fffff803`d9af81f0)

nt!ExAllocatePoolWithTag+0xa01:
fffff803`d9af6a14 4881c540110000  add     rbp,1140h
fffff803`d9af6a1b e952f6ffff      jmp     nt!ExAllocatePoolWithTag+0x62 (fffff803`d9af6072)

nt!ExAllocatePoolWithTag+0xa0d:
fffff803`d9af6a21 488db280140000  lea     rsi,[rdx+1480h]
fffff803`d9af6a28 e9d3f6ffff      jmp     nt!ExAllocatePoolWithTag+0xf0 (fffff803`d9af6100)

nt!ExAllocatePoolWithTag+0xa19:
fffff803`d9af6a2d 488d4c2440      lea     rcx,[rsp+40h]
fffff803`d9af6a32 e8f926e2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`d9919130)
fffff803`d9af6a37 f0ff4540        lock inc dword ptr [rbp+40h]
fffff803`d9af6a3b e9fff7ffff      jmp     nt!ExAllocatePoolWithTag+0x22f (fffff803`d9af623f)

nt!ExAllocatePoolWithTag+0xa2c:
fffff803`d9af6a40 4c89742448      mov     qword ptr [rsp+48h],r14
fffff803`d9af6a45 4c89642440      mov     qword ptr [rsp+40h],r12
fffff803`d9af6a4a 440f20c0        mov     rax,cr8
fffff803`d9af6a4e b902000000      mov     ecx,2
fffff803`d9af6a53 440f22c1        mov     cr8,rcx
fffff803`d9af6a57 f70523760e0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)],210000h
fffff803`d9af6a61 88442450        mov     byte ptr [rsp+50h],al
fffff803`d9af6a65 0f854b1b0000    jne     nt!ExFreePool+0x467 (fffff803`d9af85b6)

nt!ExAllocatePoolWithTag+0xa57:
fffff803`d9af6a6b 488d542440      lea     rdx,[rsp+40h]
fffff803`d9af6a70 498716          xchg    rdx,qword ptr [r14]
fffff803`d9af6a73 4885d2          test    rdx,rdx
fffff803`d9af6a76 0f84f1feffff    je      nt!ExAllocatePoolWithTag+0x95b (fffff803`d9af696d)

nt!ExAllocatePoolWithTag+0xa68:
fffff803`d9af6a7c 488d4c2440      lea     rcx,[rsp+40h]
fffff803`d9af6a81 e85a37e3ff      call    nt!KxWaitForLockOwnerShip (fffff803`d992a1e0)
fffff803`d9af6a86 e9e2feffff      jmp     nt!ExAllocatePoolWithTag+0x95b (fffff803`d9af696d)

nt!ExAllocatePoolWithTag+0xa77:
fffff803`d9af6a8b 440fb64302      movzx   r8d,byte ptr [rbx+2]
fffff803`d9af6a90 488d4b10        lea     rcx,[rbx+10h]
fffff803`d9af6a94 33d2            xor     edx,edx
fffff803`d9af6a96 49c1e004        shl     r8,4
fffff803`d9af6a9a 4983e810        sub     r8,10h
fffff803`d9af6a9e e81df0e0ff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9af6aa3 e914faffff      jmp     nt!ExAllocatePoolWithTag+0x4b0 (fffff803`d9af64bc)

nt!ExAllocatePoolWithTag+0xa94:
fffff803`d9af6aa8 4d85e4          test    r12,r12
fffff803`d9af6aab 0f8593000000    jne     nt!ExAllocatePoolWithTag+0xb30 (fffff803`d9af6b44)

nt!ExAllocatePoolWithTag+0xa9d:
fffff803`d9af6ab1 488d4c2440      lea     rcx,[rsp+40h]
fffff803`d9af6ab6 e87526e2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`d9919130)
fffff803`d9af6abb e997f8ffff      jmp     nt!ExAllocatePoolWithTag+0x34f (fffff803`d9af6357)

nt!ExAllocatePoolWithTag+0xaac:
fffff803`d9af6ac0 458bc6          mov     r8d,r14d
fffff803`d9af6ac3 488d4810        lea     rcx,[rax+10h]
fffff803`d9af6ac7 33d2            xor     edx,edx
fffff803`d9af6ac9 41c1e004        shl     r8d,4
fffff803`d9af6acd 4183c0f0        add     r8d,0FFFFFFF0h
fffff803`d9af6ad1 e8eaefe0ff      call    nt!memset (fffff803`d9905ac0)
fffff803`d9af6ad6 e9b5f8ffff      jmp     nt!ExAllocatePoolWithTag+0x388 (fffff803`d9af6390)

nt!ExAllocatePoolWithTag+0xac7:
fffff803`d9af6adb 8bd0            mov     edx,eax
fffff803`d9af6add e84a05e9ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9af6ae2 400fb6c6        movzx   eax,sil
fffff803`d9af6ae6 440f22c0        mov     cr8,rax
fffff803`d9af6aea e9e5f9ffff      jmp     nt!ExAllocatePoolWithTag+0x4c8 (fffff803`d9af64d4)

nt!ExAllocatePoolWithTag+0xadb:
fffff803`d9af6aef 448b25b2750e00  mov     r12d,dword ptr [nt!ExpNumberOfPagedPools (fffff803`d9bde0a8)]
fffff803`d9af6af6 418bc4          mov     eax,r12d
fffff803`d9af6af9 4489a424d0000000 mov     dword ptr [rsp+0D0h],r12d
fffff803`d9af6b01 498bacc0c0a13500 mov     rbp,qword ptr [r8+rax*8+35A1C0h]
fffff803`d9af6b09 e965f6ffff      jmp     nt!ExAllocatePoolWithTag+0x163 (fffff803`d9af6173)

nt!ExAllocatePoolWithTag+0xafa:
fffff803`d9af6b0e 498bcd          mov     rcx,r13
fffff803`d9af6b11 e80a0fe9ff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)
fffff803`d9af6b16 e96cfbffff      jmp     nt!ExAllocatePoolWithTag+0x677 (fffff803`d9af6687)

nt!ExAllocatePoolWithTag+0xb07:
fffff803`d9af6b1b 488b05be150200  mov     rax,qword ptr [nt!PoolTrackTable (fffff803`d9b180e0)]
fffff803`d9af6b22 458b5c0500      mov     r11d,dword ptr [r13+rax]
fffff803`d9af6b27 4585db          test    r11d,r11d
fffff803`d9af6b2a 0f8436fdffff    je      nt!ExAllocatePoolWithTag+0x854 (fffff803`d9af6866)

nt!ExAllocatePoolWithTag+0xb1c:
fffff803`d9af6b30 45891e          mov     dword ptr [r14],r11d
fffff803`d9af6b33 e9d0f9ffff      jmp     nt!ExAllocatePoolWithTag+0x4f8 (fffff803`d9af6508)

nt!ExAllocatePoolWithTag+0xb24:
fffff803`d9af6b38 4881c540110000  add     rbp,1140h
fffff803`d9af6b3f e92ff6ffff      jmp     nt!ExAllocatePoolWithTag+0x163 (fffff803`d9af6173)

nt!ExAllocatePoolWithTag+0xb30:
fffff803`d9af6b44 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`d9af6b4d ba01000000      mov     edx,1
fffff803`d9af6b52 fe8837040000    dec     byte ptr [rax+437h]
fffff803`d9af6b58 450fb66530      movzx   r12d,byte ptr [r13+30h]
fffff803`d9af6b5d 49c7450800000000 mov     qword ptr [r13+8],0
fffff803`d9af6b65 33c0            xor     eax,eax
fffff803`d9af6b67 f0410fb15500    lock cmpxchg dword ptr [r13],edx
fffff803`d9af6b6d 752d            jne     nt!ExAllocatePoolWithTag+0xb88 (fffff803`d9af6b9c)

nt!ExAllocatePoolWithTag+0xb5b:
fffff803`d9af6b6f 410fb6c4        movzx   eax,r12b
fffff803`d9af6b73 440f22c0        mov     cr8,rax
fffff803`d9af6b77 4c8b642430      mov     r12,qword ptr [rsp+30h]
fffff803`d9af6b7c e9d6f7ffff      jmp     nt!ExAllocatePoolWithTag+0x34f (fffff803`d9af6357)

nt!ExAllocatePoolWithTag+0xb6d:
fffff803`d9af6b81 8bd0            mov     edx,eax
fffff803`d9af6b83 498bce          mov     rcx,r14
fffff803`d9af6b86 e8a104e9ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9af6b8b 400fb6c6        movzx   eax,sil
fffff803`d9af6b8f 440f22c0        mov     cr8,rax
fffff803`d9af6b93 f0ff4540        lock inc dword ptr [rbp+40h]
fffff803`d9af6b97 e9a3f6ffff      jmp     nt!ExAllocatePoolWithTag+0x22f (fffff803`d9af623f)

nt!ExAllocatePoolWithTag+0xb88:
fffff803`d9af6b9c 8bd0            mov     edx,eax
fffff803`d9af6b9e 498bcd          mov     rcx,r13
fffff803`d9af6ba1 e88604e9ff      call    nt!ExpReleaseFastMutexContended (fffff803`d998702c)
fffff803`d9af6ba6 410fb6c4        movzx   eax,r12b
fffff803`d9af6baa 440f22c0        mov     cr8,rax
fffff803`d9af6bae 4c8b642430      mov     r12,qword ptr [rsp+30h]
fffff803`d9af6bb3 e99ff7ffff      jmp     nt!ExAllocatePoolWithTag+0x34f (fffff803`d9af6357)

nt!ExAllocatePoolWithTag+0xba4:
fffff803`d9af6bb8 41ffc4          inc     r12d
fffff803`d9af6bbb 443be1          cmp     r12d,ecx
fffff803`d9af6bbe 450f47e1        cmova   r12d,r9d
fffff803`d9af6bc2 443be2          cmp     r12d,edx
fffff803`d9af6bc5 0f8503fcffff    jne     nt!ExAllocatePoolWithTag+0x7bc (fffff803`d9af67ce)

nt!ExAllocatePoolWithTag+0xbb7:
fffff803`d9af6bcb e911fcffff      jmp     nt!ExAllocatePoolWithTag+0x7cf (fffff803`d9af67e1)

nt!ExAllocatePoolWithTag+0xbbc:
fffff803`d9af6bd0 33c0            xor     eax,eax
fffff803`d9af6bd2 f0450fb13e      lock cmpxchg dword ptr [r14],r15d
fffff803`d9af6bd7 e92cf9ffff      jmp     nt!ExAllocatePoolWithTag+0x4f8 (fffff803`d9af6508)

nt!ExAllocatePoolWithTag+0xbc8:
fffff803`d9af6bdc 498bce          mov     rcx,r14
fffff803`d9af6bdf e83c0ee9ff      call    nt!ExpAcquireFastMutexContended (fffff803`d9987a20)
fffff803`d9af6be4 e95dfdffff      jmp     nt!ExAllocatePoolWithTag+0x934 (fffff803`d9af6946)

nt!ExAllocatePoolWithTag+0xbd5:
fffff803`d9af6be9 83e7fb          and     edi,0FFFFFFFBh
fffff803`d9af6bec e9d7f4ffff      jmp     nt!ExAllocatePoolWithTag+0xb8 (fffff803`d9af60c8)

nt!ExAllocatePoolWithTag+0xbdd:
fffff803`d9af6bf2 488b2dc7780e00  mov     rbp,qword ptr [nt!PoolVector (fffff803`d9bde4c0)]
fffff803`d9af6bf9 e96af4ffff      jmp     nt!ExAllocatePoolWithTag+0x58 (fffff803`d9af6068)

nt!ExAllocatePoolWithTag+0xbe9:
fffff803`d9af6bff 83e7fb          and     edi,0FFFFFFFBh
fffff803`d9af6c02 e92df4ffff      jmp     nt!ExAllocatePoolWithTag+0x24 (fffff803`d9af6034)

nt!ExAllocatePoolWithTag+0xbf1:
fffff803`d9af6c08 448b8424d0000000 mov     r8d,dword ptr [rsp+0D0h]
fffff803`d9af6c10 e9a4170000      jmp     nt!ExFreePool+0x255 (fffff803`d9af83b9)

nt!ExAllocatePoolWithTag+0xbfe:
fffff803`d9af6c15 498bf1          mov     rsi,r9
fffff803`d9af6c18 e99df4ffff      jmp     nt!ExAllocatePoolWithTag+0xaa (fffff803`d9af60ba)

nt!ExAllocatePoolWithTag+0xc06:
fffff803`d9af6c1d 33c0            xor     eax,eax
fffff803`d9af6c1f e9eff6ffff      jmp     nt!ExAllocatePoolWithTag+0x303 (fffff803`d9af6313)

nt!ExAllocatePoolWithTag+0xc0d:
fffff803`d9af6c24 cc              int     3
fffff803`d9af6c25 e933f6ffff      jmp     nt!ExAllocatePoolWithTag+0x24d (fffff803`d9af625d)

nt!ExFreePool+0x62:
fffff803`d9af81f0 0fbaef09        bts     edi,9
fffff803`d9af81f4 e979deffff      jmp     nt!ExAllocatePoolWithTag+0x62 (fffff803`d9af6072)

nt!ExFreePool+0x6b:
fffff803`d9af81f9 f7c780000080    test    edi,80000080h
fffff803`d9af81ff 7523            jne     nt!ExFreePool+0x9a (fffff803`d9af8224)

nt!ExFreePool+0x77:
fffff803`d9af8201 488b8424c8000000 mov     rax,qword ptr [rsp+0C8h]
fffff803`d9af8209 41b920000000    mov     r9d,20h
fffff803`d9af820f 458bc7          mov     r8d,r15d
fffff803`d9af8212 8bcf            mov     ecx,edi
fffff803`d9af8214 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9af8219 e85ef53c00      call    nt!VeAllocatePoolWithTagPriority (fffff803`d9ec777c)
fffff803`d9af821e 90              nop
fffff803`d9af821f e9ffe0ffff      jmp     nt!ExAllocatePoolWithTag+0x313 (fffff803`d9af6323)

nt!ExFreePool+0x9a:
fffff803`d9af8224 0fbaf707        btr     edi,7
fffff803`d9af8228 e94fdeffff      jmp     nt!ExAllocatePoolWithTag+0x6c (fffff803`d9af607c)

nt!ExFreePool+0xa3:
fffff803`d9af822e 418bd7          mov     edx,r15d
fffff803`d9af8231 488bce          mov     rcx,rsi
fffff803`d9af8234 e82b09f5ff      call    nt!ExpUseSpecialPool (fffff803`d9a48b64)
fffff803`d9af8239 85c0            test    eax,eax
fffff803`d9af823b 0f842a020000    je      nt!ExFreePool+0x313 (fffff803`d9af846b)

nt!ExFreePool+0xb6:
fffff803`d9af8241 448bf7          mov     r14d,edi
fffff803`d9af8244 40f6c720        test    dil,20h
fffff803`d9af8248 740a            je      nt!ExFreePool+0xd1 (fffff803`d9af8254)

nt!ExFreePool+0xc3:
fffff803`d9af824a 40f6c701        test    dil,1
fffff803`d9af824e 7504            jne     nt!ExFreePool+0xd1 (fffff803`d9af8254)

nt!ExFreePool+0xcd:
fffff803`d9af8250 4183e6df        and     r14d,0FFFFFFDFh

nt!ExFreePool+0xd1:
fffff803`d9af8254 41b902000000    mov     r9d,2
fffff803`d9af825a 458bc6          mov     r8d,r14d
fffff803`d9af825d 418bd7          mov     edx,r15d
fffff803`d9af8260 488bce          mov     rcx,rsi
fffff803`d9af8263 e8c8abf1ff      call    nt!MmAllocateSpecialPool (fffff803`d9a12e30)
fffff803`d9af8268 4c8be8          mov     r13,rax
fffff803`d9af826b 4885c0          test    rax,rax
fffff803`d9af826e 0f84f0010000    je      nt!ExFreePool+0x30c (fffff803`d9af8464)

nt!ExFreePool+0xf1:
fffff803`d9af8274 40f6c740        test    dil,40h
fffff803`d9af8278 7404            je      nt!ExFreePool+0xff (fffff803`d9af827e)

nt!ExFreePool+0xfb:
fffff803`d9af827a 4883ee08        sub     rsi,8

nt!ExFreePool+0xff:
fffff803`d9af827e 85ff            test    edi,edi
fffff803`d9af8280 790d            jns     nt!ExFreePool+0x114 (fffff803`d9af828f)

nt!ExFreePool+0x107:
fffff803`d9af8282 4c8bc6          mov     r8,rsi
fffff803`d9af8285 33d2            xor     edx,edx
fffff803`d9af8287 488bc8          mov     rcx,rax
fffff803`d9af828a e831d8e0ff      call    nt!memset (fffff803`d9905ac0)

nt!ExFreePool+0x114:
fffff803`d9af828f 410fbaf71f      btr     r15d,1Fh
fffff803`d9af8294 443b3db15f0e00  cmp     r15d,dword ptr [nt!PoolHitTag (fffff803`d9bde24c)]
fffff803`d9af829b 7501            jne     nt!ExFreePool+0x127 (fffff803`d9af829e)

nt!ExFreePool+0x126:
fffff803`d9af829d cc              int     3

nt!ExFreePool+0x127:
fffff803`d9af829e 8b05e05d0e00    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`d9bde084)]
fffff803`d9af82a4 a841            test    al,41h
fffff803`d9af82a6 7418            je      nt!ExFreePool+0x14d (fffff803`d9af82c0)

nt!ExFreePool+0x135:
fffff803`d9af82a8 b9200e0000      mov     ecx,0E20h
fffff803`d9af82ad 4d8bcd          mov     r9,r13
fffff803`d9af82b0 458bc7          mov     r8d,r15d
fffff803`d9af82b3 418bd6          mov     edx,r14d
fffff803`d9af82b6 4889742420      mov     qword ptr [rsp+20h],rsi
fffff803`d9af82bb e898d0f4ff      call    nt!EtwTracePool (fffff803`d9a45358)

nt!ExFreePool+0x14d:
fffff803`d9af82c0 418bee          mov     ebp,r14d
fffff803`d9af82c3 83e520          and     ebp,20h
fffff803`d9af82c6 7527            jne     nt!ExFreePool+0x183 (fffff803`d9af82ef)

nt!ExFreePool+0x159:
fffff803`d9af82c8 658b0425a4010000 mov     eax,dword ptr gs:[1A4h]
fffff803`d9af82d0 488b1551120200  mov     rdx,qword ptr [nt!PoolTrackTableMask (fffff803`d9b19528)]
fffff803`d9af82d7 4c8b15fafd0100  mov     r10,qword ptr [nt!PoolTrackTableSize (fffff803`d9b180d8)]
fffff803`d9af82de 4c8d051bddd8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af82e5 4d8b8cc020212900 mov     r9,qword ptr [r8+rax*8+292120h]
fffff803`d9af82ed eb15            jmp     nt!ExFreePool+0x198 (fffff803`d9af8304)

nt!ExFreePool+0x183:
fffff803`d9af82ef 4c8b0dfafd0100  mov     r9,qword ptr [nt!ExpSessionPoolTrackTable (fffff803`d9b180f0)]
fffff803`d9af82f6 488b15ebfd0100  mov     rdx,qword ptr [nt!ExpSessionPoolTrackTableMask (fffff803`d9b180e8)]
fffff803`d9af82fd 4c8b15f4fd0100  mov     r10,qword ptr [nt!ExpSessionPoolTrackTableSize (fffff803`d9b180f8)]

nt!ExFreePool+0x198:
fffff803`d9af8304 418bc7          mov     eax,r15d
fffff803`d9af8307 4c89542438      mov     qword ptr [rsp+38h],r10
fffff803`d9af830c 48899424e8000000 mov     qword ptr [rsp+0E8h],rdx
fffff803`d9af8314 4c894c2430      mov     qword ptr [rsp+30h],r9
fffff803`d9af8319 4869c05f9e0000  imul    rax,rax,9E5Fh
fffff803`d9af8320 488bf8          mov     rdi,rax
fffff803`d9af8323 48c1ef20        shr     rdi,20h
fffff803`d9af8327 33f8            xor     edi,eax
fffff803`d9af8329 23fa            and     edi,edx
fffff803`d9af832b 448bc7          mov     r8d,edi
fffff803`d9af832e 89bc24d0000000  mov     dword ptr [rsp+0D0h],edi
fffff803`d9af8335 8bcf            mov     ecx,edi
fffff803`d9af8337 488d04bf        lea     rax,[rdi+rdi*4]
fffff803`d9af833b 4c8d24c500000000 lea     r12,[rax*8]
fffff803`d9af8343 438b040c        mov     eax,dword ptr [r12+r9]
fffff803`d9af8347 4b8d1c0c        lea     rbx,[r12+r9]
fffff803`d9af834b 413bc7          cmp     eax,r15d
fffff803`d9af834e 7446            je      nt!ExFreePool+0x232 (fffff803`d9af8396)

nt!ExFreePool+0x1e8:
fffff803`d9af8350 85c0            test    eax,eax
fffff803`d9af8352 0f85c6000000    jne     nt!ExFreePool+0x2c6 (fffff803`d9af841e)

nt!ExFreePool+0x1f0:
fffff803`d9af8358 85ed            test    ebp,ebp
fffff803`d9af835a 755d            jne     nt!ExFreePool+0x255 (fffff803`d9af83b9)

nt!ExFreePool+0x1f8:
fffff803`d9af835c 488b057dfd0100  mov     rax,qword ptr [nt!PoolTrackTable (fffff803`d9b180e0)]
fffff803`d9af8363 458b0404        mov     r8d,dword ptr [r12+rax]
fffff803`d9af8367 4585c0          test    r8d,r8d
fffff803`d9af836a 0f8498e8ffff    je      nt!ExAllocatePoolWithTag+0xbf1 (fffff803`d9af6c08)

nt!ExFreePool+0x20c:
fffff803`d9af8370 448903          mov     dword ptr [rbx],r8d
fffff803`d9af8373 448b8424d0000000 mov     r8d,dword ptr [rsp+0D0h]

nt!ExFreePool+0x217:
fffff803`d9af837b 8bcf            mov     ecx,edi
fffff803`d9af837d 488d0489        lea     rax,[rcx+rcx*4]
fffff803`d9af8381 4c8d24c500000000 lea     r12,[rax*8]
fffff803`d9af8389 438b040c        mov     eax,dword ptr [r12+r9]
fffff803`d9af838d 4b8d1c0c        lea     rbx,[r12+r9]
fffff803`d9af8391 413bc7          cmp     eax,r15d
fffff803`d9af8394 75ba            jne     nt!ExFreePool+0x1e8 (fffff803`d9af8350)

nt!ExFreePool+0x232:
fffff803`d9af8396 41f6c601        test    r14b,1
fffff803`d9af839a 0f85ab000000    jne     nt!ExFreePool+0x2f3 (fffff803`d9af844b)

nt!ExFreePool+0x23c:
fffff803`d9af83a0 f0ff4304        lock inc dword ptr [rbx+4]
fffff803`d9af83a4 f0480fc17310    lock xadd qword ptr [rbx+10h],rsi
fffff803`d9af83aa f0ff0553fd0100  lock inc dword ptr [nt!ExpSpecialAllocations (fffff803`d9b18104)]
fffff803`d9af83b1 498bc5          mov     rax,r13
fffff803`d9af83b4 e95adfffff      jmp     nt!ExAllocatePoolWithTag+0x303 (fffff803`d9af6313)

nt!ExFreePool+0x255:
fffff803`d9af83b9 498d42ff        lea     rax,[r10-1]
fffff803`d9af83bd 483bc8          cmp     rcx,rax
fffff803`d9af83c0 745c            je      nt!ExFreePool+0x2c6 (fffff803`d9af841e)

nt!ExFreePool+0x262:
fffff803`d9af83c2 85ed            test    ebp,ebp
fffff803`d9af83c4 7409            je      nt!ExFreePool+0x273 (fffff803`d9af83cf)

nt!ExFreePool+0x26a:
fffff803`d9af83c6 33c0            xor     eax,eax
fffff803`d9af83c8 f0440fb13b      lock cmpxchg dword ptr [rbx],r15d
fffff803`d9af83cd ebac            jmp     nt!ExFreePool+0x217 (fffff803`d9af837b)

nt!ExFreePool+0x273:
fffff803`d9af83cf 488d542460      lea     rdx,[rsp+60h]
fffff803`d9af83d4 488d0d7d110200  lea     rcx,[nt!ExpTaggedPoolLock (fffff803`d9b19558)]
fffff803`d9af83db e81083e4ff      call    nt!KeAcquireInStackQueuedSpinLock (fffff803`d99406f0)
fffff803`d9af83e0 4c8b1df9fc0100  mov     r11,qword ptr [nt!PoolTrackTable (fffff803`d9b180e0)]
fffff803`d9af83e7 43833c1c00      cmp     dword ptr [r12+r11],0
fffff803`d9af83ec 7507            jne     nt!ExFreePool+0x29d (fffff803`d9af83f5)

nt!ExFreePool+0x296:
fffff803`d9af83ee 47893c1c        mov     dword ptr [r12+r11],r15d
fffff803`d9af83f2 44893b          mov     dword ptr [rbx],r15d

nt!ExFreePool+0x29d:
fffff803`d9af83f5 488d4c2460      lea     rcx,[rsp+60h]
fffff803`d9af83fa e8310de2ff      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`d9919130)
fffff803`d9af83ff 488b9424e8000000 mov     rdx,qword ptr [rsp+0E8h]
fffff803`d9af8407 4c8b4c2430      mov     r9,qword ptr [rsp+30h]
fffff803`d9af840c 4c8b542438      mov     r10,qword ptr [rsp+38h]
fffff803`d9af8411 448b8424d0000000 mov     r8d,dword ptr [rsp+0D0h]
fffff803`d9af8419 e95dffffff      jmp     nt!ExFreePool+0x217 (fffff803`d9af837b)

nt!ExFreePool+0x2c6:
fffff803`d9af841e 8d4701          lea     eax,[rdi+1]
fffff803`d9af8421 23c2            and     eax,edx
fffff803`d9af8423 8bf8            mov     edi,eax
fffff803`d9af8425 413bc0          cmp     eax,r8d
fffff803`d9af8428 0f854dffffff    jne     nt!ExFreePool+0x217 (fffff803`d9af837b)

nt!ExFreePool+0x2d6:
fffff803`d9af842e 458bc6          mov     r8d,r14d
fffff803`d9af8431 488bd6          mov     rdx,rsi
fffff803`d9af8434 418bcf          mov     ecx,r15d
fffff803`d9af8437 e8d4cbe4ff      call    nt!ExpInsertPoolTrackerExpansion (fffff803`d9945010)
fffff803`d9af843c f0ff05c1fc0100  lock inc dword ptr [nt!ExpSpecialAllocations (fffff803`d9b18104)]
fffff803`d9af8443 498bc5          mov     rax,r13
fffff803`d9af8446 e9c8deffff      jmp     nt!ExAllocatePoolWithTag+0x303 (fffff803`d9af6313)

nt!ExFreePool+0x2f3:
fffff803`d9af844b f0ff4318        lock inc dword ptr [rbx+18h]
fffff803`d9af844f f0480fc17320    lock xadd qword ptr [rbx+20h],rsi
fffff803`d9af8455 f0ff05a8fc0100  lock inc dword ptr [nt!ExpSpecialAllocations (fffff803`d9b18104)]
fffff803`d9af845c 498bc5          mov     rax,r13
fffff803`d9af845f e9afdeffff      jmp     nt!ExAllocatePoolWithTag+0x303 (fffff803`d9af6313)

nt!ExFreePool+0x30c:
fffff803`d9af8464 448b25355c0e00  mov     r12d,dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)]

nt!ExFreePool+0x313:
fffff803`d9af846b ba02000000      mov     edx,2
fffff803`d9af8470 4c8d0589dbd8ff  lea     r8,[nt!`string' <PERF> (nt+0x0) (fffff803`d9886000)]
fffff803`d9af8477 e922dcffff      jmp     nt!ExAllocatePoolWithTag+0x8e (fffff803`d9af609e)

nt!ExFreePool+0x324:
fffff803`d9af847c 33d2            xor     edx,edx
fffff803`d9af847e f7f1            div     eax,ecx
fffff803`d9af8480 ba02000000      mov     edx,2
fffff803`d9af8485 e94ae1ffff      jmp     nt!ExAllocatePoolWithTag+0x5c4 (fffff803`d9af65d4)

nt!ExFreePool+0x332:
fffff803`d9af848a 448d60ff        lea     r12d,[rax-1]
fffff803`d9af848e 4489a424d0000000 mov     dword ptr [rsp+0D0h],r12d
fffff803`d9af8496 e9c6dcffff      jmp     nt!ExAllocatePoolWithTag+0x151 (fffff803`d9af6161)

nt!ExFreePool+0x343:
fffff803`d9af849b ba0e000000      mov     edx,0Eh
fffff803`d9af84a0 4c8bc3          mov     r8,rbx
fffff803`d9af84a3 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`d9af84a8 8d4a0b          lea     ecx,[rdx+0Bh]
fffff803`d9af84ab e8907fdeff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af84b0 cc              int     3

nt!ExFreePool+0x359:
fffff803`d9af84b1 488d4c2440      lea     rcx,[rsp+40h]
fffff803`d9af84b6 498bd5          mov     rdx,r13
fffff803`d9af84b9 e83292f0ff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9af84be 90              nop
fffff803`d9af84bf e977dfffff      jmp     nt!ExAllocatePoolWithTag+0x433 (fffff803`d9af643b)

nt!ExFreePool+0x36c:
fffff803`d9af84c4 8b442438        mov     eax,dword ptr [rsp+38h]
fffff803`d9af84c8 ffc0            inc     eax
fffff803`d9af84ca 89442438        mov     dword ptr [rsp+38h],eax
fffff803`d9af84ce 83f801          cmp     eax,1
fffff803`d9af84d1 756d            jne     nt!ExFreePool+0x3ed (fffff803`d9af8540)

nt!ExFreePool+0x37f:
fffff803`d9af84d3 f705c35b0e0000020000 test dword ptr [nt!ExpPoolFlags (fffff803`d9bde0a0)],200h
fffff803`d9af84dd 7461            je      nt!ExFreePool+0x3ed (fffff803`d9af8540)

nt!ExFreePool+0x38f:
fffff803`d9af84df 33d2            xor     edx,edx
fffff803`d9af84e1 488bcd          mov     rcx,rbp
fffff803`d9af84e4 e857e7ffff      call    nt!ExDeferredFreePool (fffff803`d9af6c40)
fffff803`d9af84e9 4c8b642458      mov     r12,qword ptr [rsp+58h]
fffff803`d9af84ee ba02000000      mov     edx,2
fffff803`d9af84f3 448d4aff        lea     r9d,[rdx-1]
fffff803`d9af84f7 e9acdcffff      jmp     nt!ExAllocatePoolWithTag+0x198 (fffff803`d9af61a8)

nt!ExFreePool+0x3ac:
fffff803`d9af84fc ba23000000      mov     edx,23h
fffff803`d9af8501 4d8bcc          mov     r9,r12
fffff803`d9af8504 4c8bc0          mov     r8,rax
fffff803`d9af8507 8d4af6          lea     ecx,[rdx-0Ah]
fffff803`d9af850a 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`d9af850f e82c7fdeff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af8514 cc              int     3

nt!ExFreePool+0x3c5:
fffff803`d9af8515 b903000000      mov     ecx,3
fffff803`d9af851a cd29            int     29h

nt!ExFreePool+0x3cc:
fffff803`d9af851c b903000000      mov     ecx,3
fffff803`d9af8521 cd29            int     29h

nt!ExFreePool+0x3d3:
fffff803`d9af8523 498b4008        mov     rax,qword ptr [r8+8]
fffff803`d9af8527 ba03000000      mov     edx,3
fffff803`d9af852c 488b08          mov     rcx,qword ptr [rax]
fffff803`d9af852f 48894c2420      mov     qword ptr [rsp+20h],rcx
fffff803`d9af8534 8d4a16          lea     ecx,[rdx+16h]
fffff803`d9af8537 e8047fdeff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af853c cc              int     3
fffff803`d9af853d 90              nop
fffff803`d9af853e 90              nop
fffff803`d9af853f 90              nop

nt!ExFreePool+0x3ed:
fffff803`d9af8540 ff05fa0f0200    inc     dword ptr [nt!ExPoolFailures (fffff803`d9b19540)]
fffff803`d9af8546 40f6c702        test    dil,2
fffff803`d9af854a 7455            je      nt!ExFreePool+0x452 (fffff803`d9af85a1)

nt!ExFreePool+0x3fd:
fffff803`d9af854c 81e700020000    and     edi,200h
fffff803`d9af8552 488d0d6fa50100  lea     rcx,[nt!NonPagedPoolDescriptor+0x48 (fffff803`d9b12ac8)]
fffff803`d9af8559 b800000000      mov     eax,0
fffff803`d9af855e 0f94c0          sete    al
fffff803`d9af8561 33d2            xor     edx,edx
fffff803`d9af8563 85ff            test    edi,edi
fffff803`d9af8565 0f94c2          sete    dl
fffff803`d9af8568 4898            cdqe
fffff803`d9af856a 48c744242000000000 mov   qword ptr [rsp+20h],0
fffff803`d9af8573 4869c040110000  imul    rax,rax,1140h
fffff803`d9af857a 4c630c08        movsxd  r9,dword ptr [rax+rcx]
fffff803`d9af857e 4863c2          movsxd  rax,edx
fffff803`d9af8581 488d15b8a50100  lea     rdx,[nt!NonPagedPoolDescriptor+0xc0 (fffff803`d9b12b40)]
fffff803`d9af8588 4869c040110000  imul    rax,rax,1140h
fffff803`d9af858f 4c630410        movsxd  r8,dword ptr [rax+rdx]
fffff803`d9af8593 b941000000      mov     ecx,41h
fffff803`d9af8598 488bd6          mov     rdx,rsi
fffff803`d9af859b e8a07edeff      call    nt!KeBugCheckEx (fffff803`d98e0440)
fffff803`d9af85a0 cc              int     3

nt!ExFreePool+0x452:
fffff803`d9af85a1 40f6c710        test    dil,10h
fffff803`d9af85a5 0f8472e6ffff    je      nt!ExAllocatePoolWithTag+0xc06 (fffff803`d9af6c1d)

nt!ExFreePool+0x45c:
fffff803`d9af85ab b99a0000c0      mov     ecx,0C000009Ah
fffff803`d9af85b0 e88bc5e7ff      call    nt!RtlRaiseStatus (fffff803`d9974b40)
fffff803`d9af85b5 cc              int     3

nt!ExFreePool+0x467:
fffff803`d9af85b6 488d4c2440      lea     rcx,[rsp+40h]
fffff803`d9af85bb 498bd6          mov     rdx,r14
fffff803`d9af85be e82d91f0ff      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`d9a016f0)
fffff803`d9af85c3 90              nop
fffff803`d9af85c4 e9a4e3ffff      jmp     nt!ExAllocatePoolWithTag+0x95b (fffff803`d9af696d)

nt!ExFreePool+0x47a:
fffff803`d9af85c9 b903000000      mov     ecx,3
fffff803`d9af85ce cd29            int     29h

nt!ExFreePool+0x481:
fffff803`d9af85d0 4c8d4b10        lea     r9,[rbx+10h]
fffff803`d9af85d4 b9200e0000      mov     ecx,0E20h
fffff803`d9af85d9 458bc7          mov     r8d,r15d
fffff803`d9af85dc 8bd7            mov     edx,edi
fffff803`d9af85de 48896c2420      mov     qword ptr [rsp+20h],rbp
fffff803`d9af85e3 e870cdf4ff      call    nt!EtwTracePool (fffff803`d9a45358)
fffff803`d9af85e8 90              nop
fffff803`d9af85e9 e97ddcffff      jmp     nt!ExAllocatePoolWithTag+0x25b (fffff803`d9af626b)
