nt! ?? ::FNODOBFM::`string'+0xacda:
fffff803`21c840f1 488b555f        mov     rdx,qword ptr [rbp+5Fh]
fffff803`21c840f5 488d8e98040000  lea     rcx,[rsi+498h]
fffff803`21c840fc e89b831600      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21c84101 90              nop
fffff803`21c84102 e97ea50700      jmp     nt!IopfCompleteRequest+0xb85 (fffff803`21cfe685)

nt! ?? ::FNODOBFM::`string'+0xacf0:
fffff803`21c84107 41ffc4          inc     r12d
fffff803`21c8410a 4485253b633400  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r12d
fffff803`21c84111 0f85b2ad0700    jne     nt!IopfCompleteRequest+0x13e3 (fffff803`21cfeec9)

nt! ?? ::FNODOBFM::`string'+0xad00:
fffff803`21c84117 8b05535f3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c8411d a840            test    al,40h
fffff803`21c8411f 0f84a4ad0700    je      nt!IopfCompleteRequest+0x13e3 (fffff803`21cfeec9)

nt! ?? ::FNODOBFM::`string'+0xad0e:
fffff803`21c84125 418bcc          mov     ecx,r12d
fffff803`21c84128 e897721500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0xad16:
fffff803`21c8412d 8b06            mov     eax,dword ptr [rsi]
fffff803`21c8412f 84c0            test    al,al
fffff803`21c84131 78d4            js      nt! ?? ::FNODOBFM::`string'+0xacf0 (fffff803`21c84107)

nt! ?? ::FNODOBFM::`string'+0xad1c:
fffff803`21c84133 f00fba2e07      lock bts dword ptr [rsi],7
fffff803`21c84138 72cd            jb      nt! ?? ::FNODOBFM::`string'+0xacf0 (fffff803`21c84107)

nt! ?? ::FNODOBFM::`string'+0xad23:
fffff803`21c8413a 4c8b657f        mov     r12,qword ptr [rbp+7Fh]
fffff803`21c8413e 8b4d6f          mov     ecx,dword ptr [rbp+6Fh]
fffff803`21c84141 e95d9f0700      jmp     nt!IopfCompleteRequest+0x5a5 (fffff803`21cfe0a3)

nt! ?? ::FNODOBFM::`string'+0xad2f:
fffff803`21c84146 488bc8          mov     rcx,rax
fffff803`21c84149 488b00          mov     rax,qword ptr [rax]
fffff803`21c8414c 488b11          mov     rdx,qword ptr [rcx]
fffff803`21c8414f 48894567        mov     qword ptr [rbp+67h],rax
fffff803`21c84153 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`21c84157 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`21c8415b 7576            jne     nt! ?? ::FNODOBFM::`string'+0xadd6 (fffff803`21c841d3)

nt! ?? ::FNODOBFM::`string'+0xad4a:
fffff803`21c8415d 483908          cmp     qword ptr [rax],rcx
fffff803`21c84160 7571            jne     nt! ?? ::FNODOBFM::`string'+0xadd6 (fffff803`21c841d3)

nt! ?? ::FNODOBFM::`string'+0xad53:
fffff803`21c84162 488910          mov     qword ptr [rax],rdx
fffff803`21c84165 48894208        mov     qword ptr [rdx+8],rax
fffff803`21c84169 0fb64110        movzx   eax,byte ptr [rcx+10h]
fffff803`21c8416d 488bd1          mov     rdx,rcx
fffff803`21c84170 413ac7          cmp     al,r15b
fffff803`21c84173 751f            jne     nt! ?? ::FNODOBFM::`string'+0xad90 (fffff803`21c84194)

nt! ?? ::FNODOBFM::`string'+0xad6a:
fffff803`21c84175 440fb74112      movzx   r8d,word ptr [rcx+12h]
fffff803`21c8417a 4533c9          xor     r9d,r9d
fffff803`21c8417d 498bce          mov     rcx,r14
fffff803`21c84180 e81bc10800      call    nt!KiTryUnwaitThread (fffff803`21d102a0)
fffff803`21c84185 84c0            test    al,al
fffff803`21c84187 7438            je      nt! ?? ::FNODOBFM::`string'+0xadc4 (fffff803`21c841c1)

nt! ?? ::FNODOBFM::`string'+0xad82:
fffff803`21c84189 ff4e04          dec     dword ptr [rsi+4]
fffff803`21c8418c 0f843ead0700    je      nt!IopfCompleteRequest+0x13ea (fffff803`21cfeed0)

nt! ?? ::FNODOBFM::`string'+0xad8b:
fffff803`21c84192 eb2d            jmp     nt! ?? ::FNODOBFM::`string'+0xadc4 (fffff803`21c841c1)

nt! ?? ::FNODOBFM::`string'+0xad90:
fffff803`21c84194 3c02            cmp     al,2
fffff803`21c84196 7518            jne     nt! ?? ::FNODOBFM::`string'+0xadb3 (fffff803`21c841b0)

nt! ?? ::FNODOBFM::`string'+0xad98:
fffff803`21c84198 c6411103        mov     byte ptr [rcx+11h],3
fffff803`21c8419c 488b4918        mov     rcx,qword ptr [rcx+18h]
fffff803`21c841a0 e807300f00      call    nt!KiInsertQueueInternal (fffff803`21d771ac)
fffff803`21c841a5 ff4e04          dec     dword ptr [rsi+4]
fffff803`21c841a8 0f8422ad0700    je      nt!IopfCompleteRequest+0x13ea (fffff803`21cfeed0)

nt! ?? ::FNODOBFM::`string'+0xadae:
fffff803`21c841ae eb11            jmp     nt! ?? ::FNODOBFM::`string'+0xadc4 (fffff803`21c841c1)

nt! ?? ::FNODOBFM::`string'+0xadb3:
fffff803`21c841b0 4533c9          xor     r9d,r9d
fffff803`21c841b3 41b800010000    mov     r8d,100h
fffff803`21c841b9 498bce          mov     rcx,r14
fffff803`21c841bc e8dfc00800      call    nt!KiTryUnwaitThread (fffff803`21d102a0)

nt! ?? ::FNODOBFM::`string'+0xadc4:
fffff803`21c841c1 488b4567        mov     rax,qword ptr [rbp+67h]
fffff803`21c841c5 493bc5          cmp     rax,r13
fffff803`21c841c8 0f8578ffffff    jne     nt! ?? ::FNODOBFM::`string'+0xad2f (fffff803`21c84146)

nt! ?? ::FNODOBFM::`string'+0xadd1:
fffff803`21c841ce e9fdac0700      jmp     nt!IopfCompleteRequest+0x13ea (fffff803`21cfeed0)

nt! ?? ::FNODOBFM::`string'+0xadd6:
fffff803`21c841d3 b903000000      mov     ecx,3
fffff803`21c841d8 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xaddd:
fffff803`21c841da 80fa02          cmp     dl,2
fffff803`21c841dd 7516            jne     nt! ?? ::FNODOBFM::`string'+0xadfc (fffff803`21c841f5)

nt! ?? ::FNODOBFM::`string'+0xade6:
fffff803`21c841df c6411103        mov     byte ptr [rcx+11h],3
fffff803`21c841e3 488bd1          mov     rdx,rcx
fffff803`21c841e6 488b4918        mov     rcx,qword ptr [rcx+18h]
fffff803`21c841ea e8bd2f0f00      call    nt!KiInsertQueueInternal (fffff803`21d771ac)
fffff803`21c841ef 90              nop
fffff803`21c841f0 e955a50700      jmp     nt!IopfCompleteRequest+0xc4a (fffff803`21cfe74a)

nt! ?? ::FNODOBFM::`string'+0xadfc:
fffff803`21c841f5 41b800010000    mov     r8d,100h
fffff803`21c841fb e93ca50700      jmp     nt!IopfCompleteRequest+0xc3c (fffff803`21cfe73c)

nt! ?? ::FNODOBFM::`string'+0xae07:
fffff803`21c84200 8b056a5e3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c84206 a840            test    al,40h
fffff803`21c84208 0f8428ac0700    je      nt!IopfCompleteRequest+0x1350 (fffff803`21cfee36)

nt! ?? ::FNODOBFM::`string'+0xae15:
fffff803`21c8420e 418bcd          mov     ecx,r13d
fffff803`21c84211 e8ae711500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c84216 90              nop
fffff803`21c84217 e91cac0700      jmp     nt!IopfCompleteRequest+0x1352 (fffff803`21cfee38)

nt! ?? ::FNODOBFM::`string'+0xae23:
fffff803`21c8421c 418b861c530000  mov     eax,dword ptr [r14+531Ch]
fffff803`21c84223 4803c1          add     rax,rcx
fffff803`21c84226 0f8441ab0700    je      nt!IopfCompleteRequest+0x127d (fffff803`21cfed6d)

nt! ?? ::FNODOBFM::`string'+0xae33:
fffff803`21c8422c 4c0100          add     qword ptr [rax],r8
fffff803`21c8422f e939ab0700      jmp     nt!IopfCompleteRequest+0x127d (fffff803`21cfed6d)

nt! ?? ::FNODOBFM::`string'+0xae3b:
fffff803`21c84234 488bce          mov     rcx,rsi
fffff803`21c84237 e804ca1600      call    nt!KiEndCounterAccumulation (fffff803`21df0c40)
fffff803`21c8423c 90              nop
fffff803`21c8423d e9d1a80700      jmp     nt!IopfCompleteRequest+0x101d (fffff803`21cfeb13)

nt! ?? ::FNODOBFM::`string'+0xae49:
fffff803`21c84242 450f22c7        mov     cr8,r15
fffff803`21c84246 816674fffeffff  and     dword ptr [rsi+74h],0FFFFFEFFh
fffff803`21c8424d 4533c0          xor     r8d,r8d
fffff803`21c84250 33d2            xor     edx,edx
fffff803`21c84252 33c9            xor     ecx,ecx
fffff803`21c84254 e8b7d30b00      call    nt!KiDeliverApc (fffff803`21d41610)
fffff803`21c84259 90              nop
fffff803`21c8425a e9a49e0700      jmp     nt!IopfCompleteRequest+0x605 (fffff803`21cfe103)

nt! ?? ::FNODOBFM::`string'+0xae66:
fffff803`21c8425f 41807e2000      cmp     byte ptr [r14+20h],0
fffff803`21c84264 7409            je      nt! ?? ::FNODOBFM::`string'+0xae7a (fffff803`21c8426f)

nt! ?? ::FNODOBFM::`string'+0xae71:
fffff803`21c84266 45887e06        mov     byte ptr [r14+6],r15b
fffff803`21c8426a e99c9e0700      jmp     nt!IopfCompleteRequest+0x60d (fffff803`21cfe10b)

nt! ?? ::FNODOBFM::`string'+0xae7a:
fffff803`21c8426f b102            mov     cl,2
fffff803`21c84271 ff1559c13300    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`21fc03d0)]
fffff803`21c84277 90              nop
fffff803`21c84278 e98e9e0700      jmp     nt!IopfCompleteRequest+0x60d (fffff803`21cfe10b)

nt! ?? ::FNODOBFM::`string'+0xae88:
fffff803`21c8427d 488bd1          mov     rdx,rcx
fffff803`21c84280 488d4de7        lea     rcx,[rbp-19h]
fffff803`21c84284 e867941600      call    nt!KiAcquireQueuedSpinLockInstrumented (fffff803`21ded6f0)
fffff803`21c84289 90              nop
fffff803`21c8428a e97d9f0700      jmp     nt!IopfCompleteRequest+0x70e (fffff803`21cfe20c)

nt! ?? ::FNODOBFM::`string'+0xae9a:
fffff803`21c8428f 498bd2          mov     rdx,r10
fffff803`21c84292 488bce          mov     rcx,rsi
fffff803`21c84295 e8e6e61a00      call    nt!EtwTraceEnqueueWork (fffff803`21e32980)
fffff803`21c8429a 4c8b5d7f        mov     r11,qword ptr [rbp+7Fh]
fffff803`21c8429e 4c8d4f08        lea     r9,[rdi+8]
fffff803`21c842a2 4c8d93a8000000  lea     r10,[rbx+0A8h]
fffff803`21c842a9 e9aa9f0700      jmp     nt!IopfCompleteRequest+0x75a (fffff803`21cfe258)

nt! ?? ::FNODOBFM::`string'+0xaeb9:
fffff803`21c842ae 8b05bc5d3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c842b4 a840            test    al,40h
fffff803`21c842b6 0f8464a50700    je      nt!IopfCompleteRequest+0xd20 (fffff803`21cfe820)

nt! ?? ::FNODOBFM::`string'+0xaec7:
fffff803`21c842bc 418bce          mov     ecx,r14d
fffff803`21c842bf e800711500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c842c4 90              nop
fffff803`21c842c5 e958a50700      jmp     nt!IopfCompleteRequest+0xd22 (fffff803`21cfe822)

nt! ?? ::FNODOBFM::`string'+0xaed5:
fffff803`21c842ca 8b05a05d3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c842d0 a840            test    al,40h
fffff803`21c842d2 0f84c0a40700    je      nt!IopfCompleteRequest+0xca0 (fffff803`21cfe798)

nt! ?? ::FNODOBFM::`string'+0xaee3:
fffff803`21c842d8 418bcd          mov     ecx,r13d
fffff803`21c842db e8e4701500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c842e0 90              nop
fffff803`21c842e1 e9b4a40700      jmp     nt!IopfCompleteRequest+0xca2 (fffff803`21cfe79a)

nt! ?? ::FNODOBFM::`string'+0xaef1:
fffff803`21c842e6 8b05845d3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c842ec a840            test    al,40h
fffff803`21c842ee 0f8482a60700    je      nt!IopfCompleteRequest+0xe80 (fffff803`21cfe976)

nt! ?? ::FNODOBFM::`string'+0xaeff:
fffff803`21c842f4 418bcd          mov     ecx,r13d
fffff803`21c842f7 e8c8701500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c842fc 90              nop
fffff803`21c842fd e976a60700      jmp     nt!IopfCompleteRequest+0xe82 (fffff803`21cfe978)

nt! ?? ::FNODOBFM::`string'+0xaf0d:
fffff803`21c84302 b903000000      mov     ecx,3
fffff803`21c84307 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xaf14:
fffff803`21c84309 488b4e20        mov     rcx,qword ptr [rsi+20h]
fffff803`21c8430d c7456f00000000  mov     dword ptr [rbp+6Fh],0
fffff803`21c84314 f00fba2907      lock bts dword ptr [rcx],7
fffff803`21c84319 48894dd7        mov     qword ptr [rbp-29h],rcx
fffff803`21c8431d 7342            jae     nt! ?? ::FNODOBFM::`string'+0xaf70 (fffff803`21c84361)

nt! ?? ::FNODOBFM::`string'+0xaf2e:
fffff803`21c8431f 448b6d6f        mov     r13d,dword ptr [rbp+6Fh]

nt! ?? ::FNODOBFM::`string'+0xaf32:
fffff803`21c84323 41ffc5          inc     r13d
fffff803`21c84326 44852d1f613400  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r13d
fffff803`21c8432d 0f85adab0700    jne     nt!IopfCompleteRequest+0x13fa (fffff803`21cfeee0)

nt! ?? ::FNODOBFM::`string'+0xaf42:
fffff803`21c84333 8b05375d3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c84339 a840            test    al,40h
fffff803`21c8433b 0f849fab0700    je      nt!IopfCompleteRequest+0x13fa (fffff803`21cfeee0)

nt! ?? ::FNODOBFM::`string'+0xaf50:
fffff803`21c84341 418bcd          mov     ecx,r13d
fffff803`21c84344 e87b701500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c84349 488b4dd7        mov     rcx,qword ptr [rbp-29h]

nt! ?? ::FNODOBFM::`string'+0xaf5c:
fffff803`21c8434d 8b01            mov     eax,dword ptr [rcx]
fffff803`21c8434f 84c0            test    al,al
fffff803`21c84351 78d0            js      nt! ?? ::FNODOBFM::`string'+0xaf32 (fffff803`21c84323)

nt! ?? ::FNODOBFM::`string'+0xaf62:
fffff803`21c84353 f00fba2907      lock bts dword ptr [rcx],7
fffff803`21c84358 72c9            jb      nt! ?? ::FNODOBFM::`string'+0xaf32 (fffff803`21c84323)

nt! ?? ::FNODOBFM::`string'+0xaf69:
fffff803`21c8435a 4c8dabc0000000  lea     r13,[rbx+0C0h]

nt! ?? ::FNODOBFM::`string'+0xaf70:
fffff803`21c84361 0fb64611        movzx   eax,byte ptr [rsi+11h]
fffff803`21c84365 3c02            cmp     al,2
fffff803`21c84367 7519            jne     nt! ?? ::FNODOBFM::`string'+0xaf9d (fffff803`21c84382)

nt! ?? ::FNODOBFM::`string'+0xaf7c:
fffff803`21c84369 488b16          mov     rdx,qword ptr [rsi]
fffff803`21c8436c 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`21c84370 48397208        cmp     qword ptr [rdx+8],rsi
fffff803`21c84374 7567            jne     nt! ?? ::FNODOBFM::`string'+0xaff8 (fffff803`21c843dd)

nt! ?? ::FNODOBFM::`string'+0xaf8d:
fffff803`21c84376 483930          cmp     qword ptr [rax],rsi
fffff803`21c84379 7562            jne     nt! ?? ::FNODOBFM::`string'+0xaff8 (fffff803`21c843dd)

nt! ?? ::FNODOBFM::`string'+0xaf96:
fffff803`21c8437b 488910          mov     qword ptr [rax],rdx
fffff803`21c8437e 48894208        mov     qword ptr [rdx+8],rax

nt! ?? ::FNODOBFM::`string'+0xaf9d:
fffff803`21c84382 f081217fffffff  lock and dword ptr [rcx],0FFFFFF7Fh
fffff803`21c84389 e99ba00700      jmp     nt!IopfCompleteRequest+0x92b (fffff803`21cfe429)

nt! ?? ::FNODOBFM::`string'+0xafa9:
fffff803`21c8438e 440fb6c1        movzx   r8d,cl
fffff803`21c84392 4533c9          xor     r9d,r9d
fffff803`21c84395 b201            mov     dl,1
fffff803`21c84397 488bcf          mov     rcx,rdi
fffff803`21c8439a e8e1e41a00      call    nt!EtwTraceReadyThread (fffff803`21e32880)
fffff803`21c8439f 90              nop
fffff803`21c843a0 e9ada00700      jmp     nt!IopfCompleteRequest+0x954 (fffff803`21cfe452)

nt! ?? ::FNODOBFM::`string'+0xafc0:
fffff803`21c843a5 41ffc4          inc     r12d
fffff803`21c843a8 4485259d603400  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r12d
fffff803`21c843af 0f8532ab0700    jne     nt!IopfCompleteRequest+0x1401 (fffff803`21cfeee7)

nt! ?? ::FNODOBFM::`string'+0xafd0:
fffff803`21c843b5 8b05b55c3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c843bb a840            test    al,40h
fffff803`21c843bd 0f8424ab0700    je      nt!IopfCompleteRequest+0x1401 (fffff803`21cfeee7)

nt! ?? ::FNODOBFM::`string'+0xafde:
fffff803`21c843c3 418bcc          mov     ecx,r12d
fffff803`21c843c6 e8f96f1500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0xafe6:
fffff803`21c843cb 8b06            mov     eax,dword ptr [rsi]
fffff803`21c843cd 84c0            test    al,al
fffff803`21c843cf 78d4            js      nt! ?? ::FNODOBFM::`string'+0xafc0 (fffff803`21c843a5)

nt! ?? ::FNODOBFM::`string'+0xafec:
fffff803`21c843d1 f00fba2e07      lock bts dword ptr [rsi],7
fffff803`21c843d6 72cd            jb      nt! ?? ::FNODOBFM::`string'+0xafc0 (fffff803`21c843a5)

nt! ?? ::FNODOBFM::`string'+0xaff3:
fffff803`21c843d8 e9b9a70700      jmp     nt!IopfCompleteRequest+0x109e (fffff803`21cfeb96)

nt! ?? ::FNODOBFM::`string'+0xaff8:
fffff803`21c843dd b903000000      mov     ecx,3
fffff803`21c843e2 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xafff:
fffff803`21c843e4 49837f1000      cmp     qword ptr [r15+10h],0
fffff803`21c843e9 498b7f08        mov     rdi,qword ptr [r15+8]
fffff803`21c843ed 0f8428010000    je      nt! ?? ::FNODOBFM::`string'+0xb151 (fffff803`21c8451b)

nt! ?? ::FNODOBFM::`string'+0xb00e:
fffff803`21c843f3 33f6            xor     esi,esi

nt! ?? ::FNODOBFM::`string'+0xb010:
fffff803`21c843f5 f0490fba6f3000  lock bts qword ptr [r15+30h],0
fffff803`21c843fc 0f82e8000000    jb      nt! ?? ::FNODOBFM::`string'+0xb120 (fffff803`21c844ea)

nt! ?? ::FNODOBFM::`string'+0xb01d:
fffff803`21c84402 498b7710        mov     rsi,qword ptr [r15+10h]
fffff803`21c84406 49c7471000000000 mov     qword ptr [r15+10h],0
fffff803`21c8440e fa              cli
fffff803`21c8440f 41c6472001      mov     byte ptr [r15+20h],1
fffff803`21c84414 0f31            rdtsc
fffff803`21c84416 48c1e220        shl     rdx,20h
fffff803`21c8441a 480bc2          or      rax,rdx
fffff803`21c8441d 488b5748        mov     rdx,qword ptr [rdi+48h]
fffff803`21c84421 8b4f50          mov     ecx,dword ptr [rdi+50h]
fffff803`21c84424 4c8bc0          mov     r8,rax
fffff803`21c84427 4c8bf0          mov     r14,rax
fffff803`21c8442a 4d2b8740530000  sub     r8,qword ptr [r15+5340h]
fffff803`21c84431 4903d0          add     rdx,r8
fffff803`21c84434 4903c8          add     rcx,r8
fffff803`21c84437 48895748        mov     qword ptr [rdi+48h],rdx
fffff803`21c8443b baffffffff      mov     edx,0FFFFFFFFh
fffff803`21c84440 483bca          cmp     rcx,rdx
fffff803`21c84443 480f47ca        cmova   rcx,rdx
fffff803`21c84447 f647020e        test    byte ptr [rdi+2],0Eh
fffff803`21c8444b 894f50          mov     dword ptr [rdi+50h],ecx
fffff803`21c8444e 7451            je      nt! ?? ::FNODOBFM::`string'+0xb0d4 (fffff803`21c844a1)

nt! ?? ::FNODOBFM::`string'+0xb06f:
fffff803`21c84450 488b4f68        mov     rcx,qword ptr [rdi+68h]
fffff803`21c84454 4885c9          test    rcx,rcx
fffff803`21c84457 740f            je      nt! ?? ::FNODOBFM::`string'+0xb08f (fffff803`21c84468)

nt! ?? ::FNODOBFM::`string'+0xb07c:
fffff803`21c84459 418b871c530000  mov     eax,dword ptr [r15+531Ch]
fffff803`21c84460 4803c1          add     rax,rcx
fffff803`21c84463 7403            je      nt! ?? ::FNODOBFM::`string'+0xb08f (fffff803`21c84468)

nt! ?? ::FNODOBFM::`string'+0xb08c:
fffff803`21c84465 4c0100          add     qword ptr [rax],r8

nt! ?? ::FNODOBFM::`string'+0xb08f:
fffff803`21c84468 f6470208        test    byte ptr [rdi+2],8
fffff803`21c8446c 7421            je      nt! ?? ::FNODOBFM::`string'+0xb0be (fffff803`21c8448f)

nt! ?? ::FNODOBFM::`string'+0xb099:
fffff803`21c8446e 488b9738020000  mov     rdx,qword ptr [rdi+238h]
fffff803`21c84475 498b8738530000  mov     rax,qword ptr [r15+5338h]
fffff803`21c8447c 488b4850        mov     rcx,qword ptr [rax+50h]
fffff803`21c84480 4823d1          and     rdx,rcx
fffff803`21c84483 483bd1          cmp     rdx,rcx
fffff803`21c84486 7407            je      nt! ?? ::FNODOBFM::`string'+0xb0be (fffff803`21c8448f)

nt! ?? ::FNODOBFM::`string'+0xb0b7:
fffff803`21c84488 4d018750530000  add     qword ptr [r15+5350h],r8

nt! ?? ::FNODOBFM::`string'+0xb0be:
fffff803`21c8448f 4883bf6801000000 cmp     qword ptr [rdi+168h],0
fffff803`21c84497 7408            je      nt! ?? ::FNODOBFM::`string'+0xb0d4 (fffff803`21c844a1)

nt! ?? ::FNODOBFM::`string'+0xb0cc:
fffff803`21c84499 488bcf          mov     rcx,rdi
fffff803`21c8449c e89fc71600      call    nt!KiEndCounterAccumulation (fffff803`21df0c40)

nt! ?? ::FNODOBFM::`string'+0xb0d4:
fffff803`21c844a1 4d89b740530000  mov     qword ptr [r15+5340h],r14
fffff803`21c844a8 fb              sti
fffff803`21c844a9 4c8b757f        mov     r14,qword ptr [rbp+7Fh]
fffff803`21c844ad 49897708        mov     qword ptr [r15+8],rsi
fffff803`21c844b1 c6868401000002  mov     byte ptr [rsi+184h],2
fffff803`21c844b8 488bd7          mov     rdx,rdi
fffff803`21c844bb 498bcf          mov     rcx,r15
fffff803`21c844be c6878302000020  mov     byte ptr [rdi+283h],20h
fffff803`21c844c5 4488b786010000  mov     byte ptr [rdi+186h],r14b
fffff803`21c844cc e82f160700      call    nt!KiQueueReadyThread (fffff803`21cf5b00)
fffff803`21c844d1 450fb6c6        movzx   r8d,r14b
fffff803`21c844d5 488bd6          mov     rdx,rsi
fffff803`21c844d8 488bcf          mov     rcx,rdi
fffff803`21c844db e8501b0400      call    nt!KiSwapContext (fffff803`21cc6030)
fffff803`21c844e0 84c0            test    al,al
fffff803`21c844e2 0f840daa0700    je      nt!IopfCompleteRequest+0x140f (fffff803`21cfeef5)

nt! ?? ::FNODOBFM::`string'+0xb11b:
fffff803`21c844e8 eb3a            jmp     nt! ?? ::FNODOBFM::`string'+0xb15e (fffff803`21c84524)

nt! ?? ::FNODOBFM::`string'+0xb120:
fffff803`21c844ea ffc6            inc     esi
fffff803`21c844ec 85355a5f3400    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21c844f2 0f85f6a90700    jne     nt!IopfCompleteRequest+0x1408 (fffff803`21cfeeee)

nt! ?? ::FNODOBFM::`string'+0xb12e:
fffff803`21c844f8 8b05725b3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c844fe a840            test    al,40h
fffff803`21c84500 0f84e8a90700    je      nt!IopfCompleteRequest+0x1408 (fffff803`21cfeeee)

nt! ?? ::FNODOBFM::`string'+0xb13c:
fffff803`21c84506 8bce            mov     ecx,esi
fffff803`21c84508 e8b76e1500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0xb143:
fffff803`21c8450d 498b4730        mov     rax,qword ptr [r15+30h]
fffff803`21c84511 4885c0          test    rax,rax
fffff803`21c84514 75d4            jne     nt! ?? ::FNODOBFM::`string'+0xb120 (fffff803`21c844ea)

nt! ?? ::FNODOBFM::`string'+0xb14c:
fffff803`21c84516 e9dafeffff      jmp     nt! ?? ::FNODOBFM::`string'+0xb010 (fffff803`21c843f5)

nt! ?? ::FNODOBFM::`string'+0xb151:
fffff803`21c8451b f7477400010000  test    dword ptr [rdi+74h],100h
fffff803`21c84522 7423            je      nt! ?? ::FNODOBFM::`string'+0xb181 (fffff803`21c84547)

nt! ?? ::FNODOBFM::`string'+0xb15e:
fffff803`21c84524 41bf01000000    mov     r15d,1
fffff803`21c8452a 450f22c7        mov     cr8,r15
fffff803`21c8452e 816774fffeffff  and     dword ptr [rdi+74h],0FFFFFEFFh
fffff803`21c84535 4533c0          xor     r8d,r8d
fffff803`21c84538 33d2            xor     edx,edx
fffff803`21c8453a 33c9            xor     ecx,ecx
fffff803`21c8453c e8cfd00b00      call    nt!KiDeliverApc (fffff803`21d41610)
fffff803`21c84541 90              nop
fffff803`21c84542 e9aea90700      jmp     nt!IopfCompleteRequest+0x140f (fffff803`21cfeef5)

nt! ?? ::FNODOBFM::`string'+0xb181:
fffff803`21c84547 410fb6c3        movzx   eax,r11b
fffff803`21c8454b 440f22c0        mov     cr8,rax
fffff803`21c8454f e9329f0700      jmp     nt!IopfCompleteRequest+0x988 (fffff803`21cfe486)

nt! ?? ::FNODOBFM::`string'+0xb18e:
fffff803`21c84554 488d45df        lea     rax,[rbp-21h]
fffff803`21c84558 488d4b78        lea     rcx,[rbx+78h]
fffff803`21c8455c 4c8d45df        lea     r8,[rbp-21h]
fffff803`21c84560 488d5507        lea     rdx,[rbp+7]
fffff803`21c84564 4d8bcd          mov     r9,r13
fffff803`21c84567 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21c8456c e87fec0800      call    nt!IopCompleteRequest (fffff803`21d131f0)
fffff803`21c84571 90              nop
fffff803`21c84572 e9d4990700      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt! ?? ::FNODOBFM::`string'+0xb1b1:
fffff803`21c84577 498bcf          mov     rcx,r15
fffff803`21c8457a e8417f1600      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21c8457f 90              nop
fffff803`21c84580 e963970700      jmp     nt!IopfCompleteRequest+0x1e8 (fffff803`21cfdce8)

nt! ?? ::FNODOBFM::`string'+0xb1bf:
fffff803`21c84585 488b555f        mov     rdx,qword ptr [rbp+5Fh]
fffff803`21c84589 498bcf          mov     rcx,r15
fffff803`21c8458c e80b7f1600      call    nt!KiReleaseSpinLockInstrumented (fffff803`21dec49c)
fffff803`21c84591 90              nop
fffff803`21c84592 e96a970700      jmp     nt!IopfCompleteRequest+0x201 (fffff803`21cfdd01)

nt! ?? ::FNODOBFM::`string'+0xb1d1:
fffff803`21c84597 8b05d35a3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c8459d a840            test    al,40h
fffff803`21c8459f 0f84fba60700    je      nt!IopfCompleteRequest+0x11b0 (fffff803`21cfeca0)

nt! ?? ::FNODOBFM::`string'+0xb1df:
fffff803`21c845a5 418bce          mov     ecx,r14d
fffff803`21c845a8 e8176e1500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c845ad 90              nop
fffff803`21c845ae e9efa60700      jmp     nt!IopfCompleteRequest+0x11b2 (fffff803`21cfeca2)

nt! ?? ::FNODOBFM::`string'+0xb1ed:
fffff803`21c845b3 8b05b75a3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c845b9 a840            test    al,40h
fffff803`21c845bb 0f840da80700    je      nt!IopfCompleteRequest+0x12de (fffff803`21cfedce)

nt! ?? ::FNODOBFM::`string'+0xb1fb:
fffff803`21c845c1 418bcd          mov     ecx,r13d
fffff803`21c845c4 e8fb6d1500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c845c9 90              nop
fffff803`21c845ca e901a80700      jmp     nt!IopfCompleteRequest+0x12e0 (fffff803`21cfedd0)

nt! ?? ::FNODOBFM::`string'+0xb209:
fffff803`21c845cf 440fb6c2        movzx   r8d,dl
fffff803`21c845d3 4533c9          xor     r9d,r9d
fffff803`21c845d6 488bcf          mov     rcx,rdi
fffff803`21c845d9 b201            mov     dl,1
fffff803`21c845db e8a0e21a00      call    nt!EtwTraceReadyThread (fffff803`21e32880)
fffff803`21c845e0 90              nop
fffff803`21c845e1 e9bd980700      jmp     nt!IopfCompleteRequest+0x3a3 (fffff803`21cfdea3)

nt! ?? ::FNODOBFM::`string'+0xb220:
fffff803`21c845e6 41ffc7          inc     r15d
fffff803`21c845e9 44853d5c5e3400  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r15d
fffff803`21c845f0 0f8512a90700    jne     nt!IopfCompleteRequest+0x1422 (fffff803`21cfef08)

nt! ?? ::FNODOBFM::`string'+0xb230:
fffff803`21c845f6 8b05745a3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c845fc a840            test    al,40h
fffff803`21c845fe 0f8404a90700    je      nt!IopfCompleteRequest+0x1422 (fffff803`21cfef08)

nt! ?? ::FNODOBFM::`string'+0xb23e:
fffff803`21c84604 418bcf          mov     ecx,r15d
fffff803`21c84607 e8b86d1500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0xb246:
fffff803`21c8460c 8b03            mov     eax,dword ptr [rbx]
fffff803`21c8460e 84c0            test    al,al
fffff803`21c84610 78d4            js      nt! ?? ::FNODOBFM::`string'+0xb220 (fffff803`21c845e6)

nt! ?? ::FNODOBFM::`string'+0xb24c:
fffff803`21c84612 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21c84617 72cd            jb      nt! ?? ::FNODOBFM::`string'+0xb220 (fffff803`21c845e6)

nt! ?? ::FNODOBFM::`string'+0xb253:
fffff803`21c84619 e9ffa50700      jmp     nt!IopfCompleteRequest+0x1125 (fffff803`21cfec1d)

nt! ?? ::FNODOBFM::`string'+0xb258:
fffff803`21c8461e 8b054c5a3400    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21c84624 a840            test    al,40h
fffff803`21c84626 0f84d2a60700    je      nt!IopfCompleteRequest+0x120e (fffff803`21cfecfe)

nt! ?? ::FNODOBFM::`string'+0xb266:
fffff803`21c8462c 8bcf            mov     ecx,edi
fffff803`21c8462e e8916d1500      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)
fffff803`21c84633 90              nop
fffff803`21c84634 e9c7a60700      jmp     nt!IopfCompleteRequest+0x1210 (fffff803`21cfed00)

nt! ?? ::FNODOBFM::`string'+0xb273:
fffff803`21c84639 8b861c530000    mov     eax,dword ptr [rsi+531Ch]
fffff803`21c8463f 4803c1          add     rax,rcx
fffff803`21c84642 0f840ca80700    je      nt!IopfCompleteRequest+0x136e (fffff803`21cfee54)

nt! ?? ::FNODOBFM::`string'+0xb282:
fffff803`21c84648 4c0100          add     qword ptr [rax],r8
fffff803`21c8464b e904a80700      jmp     nt!IopfCompleteRequest+0x136e (fffff803`21cfee54)

nt! ?? ::FNODOBFM::`string'+0xb28a:
fffff803`21c84650 c6460601        mov     byte ptr [rsi+6],1
fffff803`21c84654 e9f2980700      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt! ?? ::FNODOBFM::`string'+0xb293:
fffff803`21c84659 4c8d41e0        lea     r8,[rcx-20h]
fffff803`21c8465d 4c3bc3          cmp     r8,rbx
fffff803`21c84660 740d            je      nt! ?? ::FNODOBFM::`string'+0xb2ad (fffff803`21c8466f)

nt! ?? ::FNODOBFM::`string'+0xb2a0:
fffff803`21c84662 488b09          mov     rcx,qword ptr [rcx]
fffff803`21c84665 483bc8          cmp     rcx,rax
fffff803`21c84668 75ef            jne     nt! ?? ::FNODOBFM::`string'+0xb293 (fffff803`21c84659)

nt! ?? ::FNODOBFM::`string'+0xb2a8:
fffff803`21c8466a e954a30700      jmp     nt!IopfCompleteRequest+0xecd (fffff803`21cfe9c3)

nt! ?? ::FNODOBFM::`string'+0xb2ad:
fffff803`21c8466f 488b11          mov     rdx,qword ptr [rcx]
fffff803`21c84672 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`21c84676 48394a08        cmp     qword ptr [rdx+8],rcx
fffff803`21c8467a 7535            jne     nt! ?? ::FNODOBFM::`string'+0xb2f7 (fffff803`21c846b1)

nt! ?? ::FNODOBFM::`string'+0xb2be:
fffff803`21c8467c 483908          cmp     qword ptr [rax],rcx
fffff803`21c8467f 7530            jne     nt! ?? ::FNODOBFM::`string'+0xb2f7 (fffff803`21c846b1)

nt! ?? ::FNODOBFM::`string'+0xb2c7:
fffff803`21c84681 488910          mov     qword ptr [rax],rdx
fffff803`21c84684 48894208        mov     qword ptr [rdx+8],rax
fffff803`21c84688 498d4020        lea     rax,[r8+20h]
fffff803`21c8468c 498bca          mov     rcx,r10
fffff803`21c8468f 48894008        mov     qword ptr [rax+8],rax
fffff803`21c84693 488900          mov     qword ptr [rax],rax
fffff803`21c84696 e845c50800      call    nt!ObfDereferenceObject (fffff803`21d10be0)

nt! ?? ::FNODOBFM::`string'+0xb2e1:
fffff803`21c8469b 410fb6d6        movzx   edx,r14b
fffff803`21c8469f b90b000000      mov     ecx,0Bh
fffff803`21c846a4 e8879d0a00      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21c846a9 488bd6          mov     rdx,rsi
fffff803`21c846ac e9ee9d0700      jmp     nt!IopfCompleteRequest+0x9a1 (fffff803`21cfe49f)

nt! ?? ::FNODOBFM::`string'+0xb2f7:
fffff803`21c846b1 b903000000      mov     ecx,3
fffff803`21c846b6 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0xb2fe:
fffff803`21c846b8 4533c9          xor     r9d,r9d
fffff803`21c846bb 41b87a0f0000    mov     r8d,0F7Ah
fffff803`21c846c1 488bd3          mov     rdx,rbx
fffff803`21c846c4 418d4944        lea     ecx,[r9+44h]
fffff803`21c846c8 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff803`21c846cd e86e7d0400      call    nt!KeBugCheckEx (fffff803`21ccc440)
fffff803`21c846d2 cc              int     3
fffff803`21c846d3 90              nop
fffff803`21c846d4 90              nop
fffff803`21c846d5 90              nop
fffff803`21c846d6 90              nop
fffff803`21c846d7 90              nop
fffff803`21c846d8 90              nop
fffff803`21c846d9 90              nop
fffff803`21c846da 90              nop
fffff803`21c846db 90              nop
fffff803`21c846dc 48895c2420      mov     qword ptr [rsp+20h],rbx
fffff803`21c846e1 55              push    rbp
fffff803`21c846e2 56              push    rsi
fffff803`21c846e3 57              push    rdi
fffff803`21c846e4 4154            push    r12
fffff803`21c846e6 4155            push    r13
fffff803`21c846e8 4156            push    r14
fffff803`21c846ea 4157            push    r15
fffff803`21c846ec 4883ec20        sub     rsp,20h
fffff803`21c846f0 8b9198500000    mov     edx,dword ptr [rcx+5098h]
fffff803`21c846f6 488bd9          mov     rbx,rcx
fffff803`21c846f9 bf01000000      mov     edi,1
fffff803`21c846fe 81e2fe7f0000    and     edx,7FFEh
fffff803`21c84704 0f84c8000000    je      nt!KiScanReadyThreads+0xf6 (fffff803`21c847d2)

nt!KiScanReadyThreads+0x2e:
fffff803`21c8470a a12003000080f7ffff mov   eax,dword ptr [FFFFF78000000320h]
fffff803`21c84713 448ba99c500000  mov     r13d,dword ptr [rcx+509Ch]
fffff803`21c8471a 448d7f09        lea     r15d,[rdi+9]
fffff803`21c8471e 418bcd          mov     ecx,r13d
fffff803`21c84721 4533f6          xor     r14d,r14d
fffff803`21c84724 44897c2468      mov     dword ptr [rsp+68h],r15d
fffff803`21c84729 448d670f        lea     r12d,[rdi+0Fh]
fffff803`21c8472d 8bf0            mov     esi,eax
fffff803`21c8472f d3ca            ror     edx,cl

nt!KiScanReadyThreads+0x55:
fffff803`21c84731 0fbcca          bsf     ecx,edx
fffff803`21c84734 8bc7            mov     eax,edi
fffff803`21c84736 d3e0            shl     eax,cl
fffff803`21c84738 428d2c29        lea     ebp,[rcx+r13]
fffff803`21c8473c 894c2470        mov     dword ptr [rsp+70h],ecx
fffff803`21c84740 83e51f          and     ebp,1Fh
fffff803`21c84743 33d0            xor     edx,eax
fffff803`21c84745 448bcd          mov     r9d,ebp
fffff803`21c84748 4981c110050000  add     r9,510h
fffff803`21c8474f 49c1e104        shl     r9,4
fffff803`21c84753 4c03cb          add     r9,rbx
fffff803`21c84756 4d8b19          mov     r11,qword ptr [r9]

nt!KiScanReadyThreads+0x7d:
fffff803`21c84759 4d8d9328ffffff  lea     r10,[r11-0D8h]
fffff803`21c84760 4d8b1b          mov     r11,qword ptr [r11]
fffff803`21c84763 8d86d4feffff    lea     eax,[rsi-12Ch]
fffff803`21c84769 412b82b4010000  sub     eax,dword ptr [r10+1B4h]
fffff803`21c84770 85c0            test    eax,eax
fffff803`21c84772 7f66            jg      nt!KiScanReadyThreads+0xfe (fffff803`21c847da)

nt!KiScanReadyThreads+0x98:
fffff803`21c84774 41ffcc          dec     r12d
fffff803`21c84777 4d3bd9          cmp     r11,r9
fffff803`21c8477a 753a            jne     nt!KiScanReadyThreads+0xda (fffff803`21c847b6)

nt!KiScanReadyThreads+0xa0:
fffff803`21c8477c 85d2            test    edx,edx
fffff803`21c8477e 7542            jne     nt!KiScanReadyThreads+0xe6 (fffff803`21c847c2)

nt!KiScanReadyThreads+0xa4:
fffff803`21c84780 4d85f6          test    r14,r14
fffff803`21c84783 0f85b5000000    jne     nt!KiScanReadyThreads+0x162 (fffff803`21c8483e)

nt!KiScanReadyThreads+0xad:
fffff803`21c84789 4585e4          test    r12d,r12d
fffff803`21c8478c 0f84d6bd1300    je      nt! ?? ::FNODOBFM::`string'+0x18b8a (fffff803`21dc0568)

nt!KiScanReadyThreads+0xb6:
fffff803`21c84792 4585ff          test    r15d,r15d
fffff803`21c84795 0f84cdbd1300    je      nt! ?? ::FNODOBFM::`string'+0x18b8a (fffff803`21dc0568)

nt!KiScanReadyThreads+0xbf:
fffff803`21c8479b 89bb9c500000    mov     dword ptr [rbx+509Ch],edi

nt!KiScanReadyThreads+0xc5:
fffff803`21c847a1 488b5c2478      mov     rbx,qword ptr [rsp+78h]
fffff803`21c847a6 4883c420        add     rsp,20h
fffff803`21c847aa 415f            pop     r15
fffff803`21c847ac 415e            pop     r14
fffff803`21c847ae 415d            pop     r13
fffff803`21c847b0 415c            pop     r12
fffff803`21c847b2 5f              pop     rdi
fffff803`21c847b3 5e              pop     rsi
fffff803`21c847b4 5d              pop     rbp
fffff803`21c847b5 c3              ret

nt!KiScanReadyThreads+0xda:
fffff803`21c847b6 4585ff          test    r15d,r15d
fffff803`21c847b9 74c1            je      nt!KiScanReadyThreads+0xa0 (fffff803`21c8477c)

nt!KiScanReadyThreads+0xdf:
fffff803`21c847bb 4585e4          test    r12d,r12d
fffff803`21c847be 7599            jne     nt!KiScanReadyThreads+0x7d (fffff803`21c84759)

nt!KiScanReadyThreads+0xe4:
fffff803`21c847c0 ebba            jmp     nt!KiScanReadyThreads+0xa0 (fffff803`21c8477c)

nt!KiScanReadyThreads+0xe6:
fffff803`21c847c2 4585ff          test    r15d,r15d
fffff803`21c847c5 74b9            je      nt!KiScanReadyThreads+0xa4 (fffff803`21c84780)

nt!KiScanReadyThreads+0xeb:
fffff803`21c847c7 4585e4          test    r12d,r12d
fffff803`21c847ca 0f8561ffffff    jne     nt!KiScanReadyThreads+0x55 (fffff803`21c84731)

nt!KiScanReadyThreads+0xf4:
fffff803`21c847d0 ebae            jmp     nt!KiScanReadyThreads+0xa4 (fffff803`21c84780)

nt!KiScanReadyThreads+0xf6:
fffff803`21c847d2 89b99c500000    mov     dword ptr [rcx+509Ch],edi
fffff803`21c847d8 ebc7            jmp     nt!KiScanReadyThreads+0xc5 (fffff803`21c847a1)

nt!KiScanReadyThreads+0xfe:
fffff803`21c847da 4d8d82d8000000  lea     r8,[r10+0D8h]
fffff803`21c847e1 498b08          mov     rcx,qword ptr [r8]
fffff803`21c847e4 498b4008        mov     rax,qword ptr [r8+8]
fffff803`21c847e8 4c394108        cmp     qword ptr [rcx+8],r8
fffff803`21c847ec 0f850abd1300    jne     nt! ?? ::FNODOBFM::`string'+0x18b1e (fffff803`21dc04fc)

nt!KiScanReadyThreads+0x116:
fffff803`21c847f2 4c3900          cmp     qword ptr [rax],r8
fffff803`21c847f5 0f8501bd1300    jne     nt! ?? ::FNODOBFM::`string'+0x18b1e (fffff803`21dc04fc)

nt!KiScanReadyThreads+0x11f:
fffff803`21c847fb 488908          mov     qword ptr [rax],rcx
fffff803`21c847fe 48894108        mov     qword ptr [rcx+8],rax
fffff803`21c84802 483bc1          cmp     rax,rcx
fffff803`21c84805 750c            jne     nt!KiScanReadyThreads+0x137 (fffff803`21c84813)

nt!KiScanReadyThreads+0x12b:
fffff803`21c84807 8bcd            mov     ecx,ebp
fffff803`21c84809 8bc7            mov     eax,edi
fffff803`21c8480b d3e0            shl     eax,cl
fffff803`21c8480d 318398500000    xor     dword ptr [rbx+5098h],eax

nt!KiScanReadyThreads+0x137:
fffff803`21c84813 29aba0500000    sub     dword ptr [rbx+50A0h],ebp
fffff803`21c84819 8b4324          mov     eax,dword ptr [rbx+24h]
fffff803`21c8481c 41ffcf          dec     r15d
fffff803`21c8481f 4189821c020000  mov     dword ptr [r10+21Ch],eax
fffff803`21c84826 41c6828401000007 mov     byte ptr [r10+184h],7
fffff803`21c8482e 4d8930          mov     qword ptr [r8],r14
fffff803`21c84831 4d8bf0          mov     r14,r8
fffff803`21c84834 44897c2468      mov     dword ptr [rsp+68h],r15d
fffff803`21c84839 e936ffffff      jmp     nt!KiScanReadyThreads+0x98 (fffff803`21c84774)

nt!KiScanReadyThreads+0x162:
fffff803`21c8483e f04883633000    lock and qword ptr [rbx+30h],0

nt!KiScanReadyThreads+0x168:
fffff803`21c84844 498db628ffffff  lea     rsi,[r14-0D8h]
fffff803`21c8484b 4d8b36          mov     r14,qword ptr [r14]
fffff803`21c8484e c644246000      mov     byte ptr [rsp+60h],0
fffff803`21c84853 4c8b6e48        mov     r13,qword ptr [rsi+48h]
fffff803`21c84857 4533ff          xor     r15d,r15d

nt!KiScanReadyThreads+0x17e:
fffff803`21c8485a f0480fba6e4000  lock bts qword ptr [rsi+40h],0
fffff803`21c84861 0f829cbc1300    jb      nt! ?? ::FNODOBFM::`string'+0x18b25 (fffff803`21dc0503)

nt!KiScanReadyThreads+0x18b:
fffff803`21c84867 0fbe8ec3000000  movsx   ecx,byte ptr [rsi+0C3h]
fffff803`21c8486e 448bc1          mov     r8d,ecx
fffff803`21c84871 83f90f          cmp     ecx,0Fh
fffff803`21c84874 7d45            jge     nt!KiScanReadyThreads+0x1df (fffff803`21c848bb)

nt!KiScanReadyThreads+0x19a:
fffff803`21c84876 b80f000000      mov     eax,0Fh
fffff803`21c8487b 40887c2460      mov     byte ptr [rsp+60h],dil
fffff803`21c84880 c686c30000000f  mov     byte ptr [rsi+0C3h],0Fh
fffff803`21c84887 2ac1            sub     al,cl
fffff803`21c84889 8a8e34020000    mov     cl,byte ptr [rsi+234h]
fffff803`21c8488f 8ad1            mov     dl,cl
fffff803`21c84891 80e10f          and     cl,0Fh
fffff803`21c84894 c0e004          shl     al,4
fffff803`21c84897 80e2f0          and     dl,0F0h
fffff803`21c8489a 02d0            add     dl,al
fffff803`21c8489c 32d1            xor     dl,cl
fffff803`21c8489e 488b4e20        mov     rcx,qword ptr [rsi+20h]
fffff803`21c848a2 889634020000    mov     byte ptr [rsi+234h],dl
fffff803`21c848a8 8b158e5b3400    mov     edx,dword ptr [nt!KiLockQuantumTarget (fffff803`21fca43c)]
fffff803`21c848ae 4c3be9          cmp     r13,rcx
fffff803`21c848b1 7756            ja      nt!KiScanReadyThreads+0x22d (fffff803`21c84909)

nt!KiScanReadyThreads+0x1d7:
fffff803`21c848b3 492bcd          sub     rcx,r13
fffff803`21c848b6 483bca          cmp     rcx,rdx
fffff803`21c848b9 724e            jb      nt!KiScanReadyThreads+0x22d (fffff803`21c84909)

nt!KiScanReadyThreads+0x1df:
fffff803`21c848bb 807c246000      cmp     byte ptr [rsp+60h],0
fffff803`21c848c0 48c7464000000000 mov     qword ptr [rsi+40h],0
fffff803`21c848c8 740b            je      nt!KiScanReadyThreads+0x1f9 (fffff803`21c848d5)

nt!KiScanReadyThreads+0x1ee:
fffff803`21c848ca 8b05b8573400    mov     eax,dword ptr [nt!PerfGlobalGroupMask+0x8 (fffff803`21fca088)]
fffff803`21c848d0 4084c7          test    dil,al
fffff803`21c848d3 753e            jne     nt!KiScanReadyThreads+0x237 (fffff803`21c84913)

nt!KiScanReadyThreads+0x1f9:
fffff803`21c848d5 488bd6          mov     rdx,rsi
fffff803`21c848d8 488bcb          mov     rcx,rbx
fffff803`21c848db e870750700      call    nt!KiDeferredReadyThread (fffff803`21cfbe50)
fffff803`21c848e0 4d85f6          test    r14,r14
fffff803`21c848e3 0f855bffffff    jne     nt!KiScanReadyThreads+0x168 (fffff803`21c84844)

nt!KiScanReadyThreads+0x20d:
fffff803`21c848e9 33f6            xor     esi,esi

nt!KiScanReadyThreads+0x20f:
fffff803`21c848eb f0480fba6b3000  lock bts qword ptr [rbx+30h],0
fffff803`21c848f2 0f823fbc1300    jb      nt! ?? ::FNODOBFM::`string'+0x18b59 (fffff803`21dc0537)

nt!KiScanReadyThreads+0x21c:
fffff803`21c848f8 448b7c2468      mov     r15d,dword ptr [rsp+68h]
fffff803`21c848fd e987feffff      jmp     nt!KiScanReadyThreads+0xad (fffff803`21c84789)

nt!KiScanReadyThreads+0x226:
fffff803`21c84902 f390            pause
fffff803`21c84904 e920bc1300      jmp     nt! ?? ::FNODOBFM::`string'+0x18b4b (fffff803`21dc0529)

nt!KiScanReadyThreads+0x22d:
fffff803`21c84909 4a8d042a        lea     rax,[rdx+r13]
fffff803`21c8490d 48894620        mov     qword ptr [rsi+20h],rax
fffff803`21c84911 eba8            jmp     nt!KiScanReadyThreads+0x1df (fffff803`21c848bb)

nt!KiScanReadyThreads+0x237:
fffff803`21c84913 418bd0          mov     edx,r8d
fffff803`21c84916 488bce          mov     rcx,rsi
fffff803`21c84919 e892de1a00      call    nt!EtwTraceAntiStarvationBoost (fffff803`21e327b0)
fffff803`21c8491e ebb5            jmp     nt!KiScanReadyThreads+0x1f9 (fffff803`21c848d5)

nt!KiScanReadyThreads+0x244:
fffff803`21c84920 f390            pause
fffff803`21c84922 e933bc1300      jmp     nt! ?? ::FNODOBFM::`string'+0x18b7c (fffff803`21dc055a)

nt!IopfCompleteRequest:
fffff803`21cfdb00 4c8bdc          mov     r11,rsp
fffff803`21cfdb03 55              push    rbp
fffff803`21cfdb04 53              push    rbx
fffff803`21cfdb05 4155            push    r13
fffff803`21cfdb07 4157            push    r15
fffff803`21cfdb09 498d6ba1        lea     rbp,[r11-5Fh]
fffff803`21cfdb0d 4881ecb8000000  sub     rsp,0B8h
fffff803`21cfdb14 488bd9          mov     rbx,rcx
fffff803`21cfdb17 0fb64942        movzx   ecx,byte ptr [rcx+42h]
fffff803`21cfdb1b 4533ed          xor     r13d,r13d
fffff803`21cfdb1e 440fb64343      movzx   r8d,byte ptr [rbx+43h]
fffff803`21cfdb23 8d4101          lea     eax,[rcx+1]
fffff803`21cfdb26 440fb6fa        movzx   r15d,dl
fffff803`21cfdb2a 88556f          mov     byte ptr [rbp+6Fh],dl
fffff803`21cfdb2d 4c896dcf        mov     qword ptr [rbp-31h],r13
fffff803`21cfdb31 443ac0          cmp     r8b,al
fffff803`21cfdb34 0f8f7e6bf8ff    jg      nt! ?? ::FNODOBFM::`string'+0xb2fe (fffff803`21c846b8)

nt!IopfCompleteRequest+0x3a:
fffff803`21cfdb3a 66833b06        cmp     word ptr [rbx],6
fffff803`21cfdb3e 0f85746bf8ff    jne     nt! ?? ::FNODOBFM::`string'+0xb2fe (fffff803`21c846b8)

nt!IopfCompleteRequest+0x44:
fffff803`21cfdb44 498973d8        mov     qword ptr [r11-28h],rsi
fffff803`21cfdb48 49897bd0        mov     qword ptr [r11-30h],rdi
fffff803`21cfdb4c 488bbbb8000000  mov     rdi,qword ptr [rbx+0B8h]
fffff803`21cfdb53 443ac1          cmp     r8b,cl
fffff803`21cfdb56 7f09            jg      nt!IopfCompleteRequest+0x61 (fffff803`21cfdb61)

nt!IopfCompleteRequest+0x58:
fffff803`21cfdb58 803f16          cmp     byte ptr [rdi],16h
fffff803`21cfdb5b 0f8400100000    je      nt!IopfCompleteRequest+0x106a (fffff803`21cfeb61)

nt!IopfCompleteRequest+0x61:
fffff803`21cfdb61 4032f6          xor     sil,sil

nt!IopfCompleteRequest+0x64:
fffff803`21cfdb64 f683d300000002  test    byte ptr [rbx+0D3h],2
fffff803`21cfdb6b 4c89a424a0000000 mov     qword ptr [rsp+0A0h],r12
fffff803`21cfdb73 0f85f1090000    jne     nt!IopfCompleteRequest+0xa6b (fffff803`21cfe56a)

nt!IopfCompleteRequest+0x79:
fffff803`21cfdb79 458be5          mov     r12d,r13d

nt!IopfCompleteRequest+0x7c:
fffff803`21cfdb7c 0fb64342        movzx   eax,byte ptr [rbx+42h]
fffff803`21cfdb80 fe4343          inc     byte ptr [rbx+43h]
fffff803`21cfdb83 488383b800000048 add     qword ptr [rbx+0B8h],48h
fffff803`21cfdb8b fec0            inc     al
fffff803`21cfdb8d 4c89b42498000000 mov     qword ptr [rsp+98h],r14
fffff803`21cfdb95 384343          cmp     byte ptr [rbx+43h],al
fffff803`21cfdb98 7f77            jg      nt!IopfCompleteRequest+0x111 (fffff803`21cfdc11)

nt!IopfCompleteRequest+0x9a:
fffff803`21cfdb9a 4883c703        add     rdi,3

nt!IopfCompleteRequest+0x9e:
fffff803`21cfdb9e 0fb607          movzx   eax,byte ptr [rdi]
fffff803`21cfdba1 2401            and     al,1
fffff803`21cfdba3 884341          mov     byte ptr [rbx+41h],al
fffff803`21cfdba6 48634330        movsxd  rax,dword ptr [rbx+30h]
fffff803`21cfdbaa 85c0            test    eax,eax
fffff803`21cfdbac 0f886f050000    js      nt!IopfCompleteRequest+0x623 (fffff803`21cfe121)

nt!IopfCompleteRequest+0xb2:
fffff803`21cfdbb2 0fb607          movzx   eax,byte ptr [rdi]
fffff803`21cfdbb5 a840            test    al,40h
fffff803`21cfdbb7 0f8535030000    jne     nt!IopfCompleteRequest+0x3f2 (fffff803`21cfdef2)

nt!IopfCompleteRequest+0xbd:
fffff803`21cfdbbd 44386b44        cmp     byte ptr [rbx+44h],r13b
fffff803`21cfdbc1 0f85c30d0000    jne     nt!IopfCompleteRequest+0xe94 (fffff803`21cfe98a)

nt!IopfCompleteRequest+0xc7:
fffff803`21cfdbc7 44386b41        cmp     byte ptr [rbx+41h],r13b
fffff803`21cfdbcb 740d            je      nt!IopfCompleteRequest+0xda (fffff803`21cfdbda)

nt!IopfCompleteRequest+0xcd:
fffff803`21cfdbcd 0fb64342        movzx   eax,byte ptr [rbx+42h]
fffff803`21cfdbd1 384343          cmp     byte ptr [rbx+43h],al
fffff803`21cfdbd4 0f8ef7080000    jle     nt!IopfCompleteRequest+0x9d3 (fffff803`21cfe4d1)

nt!IopfCompleteRequest+0xda:
fffff803`21cfdbda 802702          and     byte ptr [rdi],2
fffff803`21cfdbdd 6644896ffe      mov     word ptr [rdi-2],r13w
fffff803`21cfdbe2 4c896f05        mov     qword ptr [rdi+5],r13
fffff803`21cfdbe6 4c896f0d        mov     qword ptr [rdi+0Dh],r13
fffff803`21cfdbea 4c896f15        mov     qword ptr [rdi+15h],r13
fffff803`21cfdbee 4c896f2d        mov     qword ptr [rdi+2Dh],r13

nt!IopfCompleteRequest+0xf2:
fffff803`21cfdbf2 fe4343          inc     byte ptr [rbx+43h]
fffff803`21cfdbf5 488383b800000048 add     qword ptr [rbx+0B8h],48h
fffff803`21cfdbfd 0fb64342        movzx   eax,byte ptr [rbx+42h]
fffff803`21cfdc01 fec0            inc     al
fffff803`21cfdc03 4883c748        add     rdi,48h
fffff803`21cfdc07 384343          cmp     byte ptr [rbx+43h],al
fffff803`21cfdc0a 7e92            jle     nt!IopfCompleteRequest+0x9e (fffff803`21cfdb9e)

nt!IopfCompleteRequest+0x10c:
fffff803`21cfdc0c 440fb67d6f      movzx   r15d,byte ptr [rbp+6Fh]

nt!IopfCompleteRequest+0x111:
fffff803`21cfdc11 8b5310          mov     edx,dword ptr [rbx+10h]
fffff803`21cfdc14 f6c208          test    dl,8
fffff803`21cfdc17 0f85f50c0000    jne     nt!IopfCompleteRequest+0xe12 (fffff803`21cfe912)

nt!IopfCompleteRequest+0x11d:
fffff803`21cfdc1d 817b3004010000  cmp     dword ptr [rbx+30h],104h
fffff803`21cfdc24 be030000a0      mov     esi,0A0000003h
fffff803`21cfdc29 41bc0c0000a0    mov     r12d,0A000000Ch
fffff803`21cfdc2f 0f84f6100000    je      nt!IopfCompleteRequest+0x123b (fffff803`21cfed2b)

nt!IopfCompleteRequest+0x135:
fffff803`21cfdc35 4584ff          test    r15b,r15b
fffff803`21cfdc38 0f843b030000    je      nt!IopfCompleteRequest+0x479 (fffff803`21cfdf79)

nt!IopfCompleteRequest+0x13e:
fffff803`21cfdc3e 488b8ba0000000  mov     rcx,qword ptr [rbx+0A0h]
fffff803`21cfdc45 4885c9          test    rcx,rcx
fffff803`21cfdc48 0f858d090000    jne     nt!IopfCompleteRequest+0xadb (fffff803`21cfe5db)

nt!IopfCompleteRequest+0x14e:
fffff803`21cfdc4e f6434740        test    byte ptr [rbx+47h],40h
fffff803`21cfdc52 0f85a4110000    jne     nt!IopfCompleteRequest+0x130c (fffff803`21cfedfc)

nt!IopfCompleteRequest+0x158:
fffff803`21cfdc58 8b7b10          mov     edi,dword ptr [rbx+10h]
fffff803`21cfdc5b f7c702040000    test    edi,402h
fffff803`21cfdc61 0f85cd030000    jne     nt!IopfCompleteRequest+0x536 (fffff803`21cfe034)

nt!IopfCompleteRequest+0x167:
fffff803`21cfdc67 488b7b08        mov     rdi,qword ptr [rbx+8]
fffff803`21cfdc6b 4885ff          test    rdi,rdi
fffff803`21cfdc6e 0f85aa030000    jne     nt!IopfCompleteRequest+0x520 (fffff803`21cfe01e)

nt!IopfCompleteRequest+0x174:
fffff803`21cfdc74 f7431000200000  test    dword ptr [rbx+10h],2000h
fffff803`21cfdc7b 0f8502050000    jne     nt!IopfCompleteRequest+0x685 (fffff803`21cfe183)

nt!IopfCompleteRequest+0x181:
fffff803`21cfdc81 8b4310          mov     eax,dword ptr [rbx+10h]
fffff803`21cfdc84 0fbae00b        bt      eax,0Bh
fffff803`21cfdc88 0f825b030000    jb      nt!IopfCompleteRequest+0x4e9 (fffff803`21cfdfe9)

nt!IopfCompleteRequest+0x18e:
fffff803`21cfdc8e 488bbb98000000  mov     rdi,qword ptr [rbx+98h]
fffff803`21cfdc95 4c8dabc0000000  lea     r13,[rbx+0C0h]
fffff803`21cfdc9c 498b7500        mov     rsi,qword ptr [r13]
fffff803`21cfdca0 488975c7        mov     qword ptr [rbp-39h],rsi
fffff803`21cfdca4 0fbae00d        bt      eax,0Dh
fffff803`21cfdca8 0f82e6040000    jb      nt!IopfCompleteRequest+0x696 (fffff803`21cfe194)

nt!IopfCompleteRequest+0x1ae:
fffff803`21cfdcae 41be02000000    mov     r14d,2
fffff803`21cfdcb4 4885ff          test    rdi,rdi
fffff803`21cfdcb7 7450            je      nt!IopfCompleteRequest+0x209 (fffff803`21cfdd09)

nt!IopfCompleteRequest+0x1b9:
fffff803`21cfdcb9 4c8dbf98040000  lea     r15,[rdi+498h]
fffff803`21cfdcc0 450f20c4        mov     r12,cr8
fffff803`21cfdcc4 450f22c6        mov     cr8,r14
fffff803`21cfdcc8 f705b2c32c0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21cfdcd2 0f859f68f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xb1b1 (fffff803`21c84577)

nt!IopfCompleteRequest+0x1d8:
fffff803`21cfdcd8 f0490fba2f00    lock bts qword ptr [r15],0
fffff803`21cfdcde 0f823a100000    jb      nt!IopfCompleteRequest+0x122e (fffff803`21cfed1e)

nt!IopfCompleteRequest+0x1e4:
fffff803`21cfdce4 488b75c7        mov     rsi,qword ptr [rbp-39h]

nt!IopfCompleteRequest+0x1e8:
fffff803`21cfdce8 f70592c32c0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21cfdcf2 0f858d68f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xb1bf (fffff803`21c84585)

nt!IopfCompleteRequest+0x1f8:
fffff803`21cfdcf8 f049832700      lock and qword ptr [r15],0
fffff803`21cfdcfd 488b75c7        mov     rsi,qword ptr [rbp-39h]

nt!IopfCompleteRequest+0x201:
fffff803`21cfdd01 410fb6c4        movzx   eax,r12b
fffff803`21cfdd05 440f22c0        mov     cr8,rax

nt!IopfCompleteRequest+0x209:
fffff803`21cfdd09 807b4400        cmp     byte ptr [rbx+44h],0
fffff803`21cfdd0d 0f85840c0000    jne     nt!IopfCompleteRequest+0xea1 (fffff803`21cfe997)

nt!IopfCompleteRequest+0x213:
fffff803`21cfdd13 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21cfdd1c 483bf8          cmp     rdi,rax
fffff803`21cfdd1f 0f84ce070000    je      nt!IopfCompleteRequest+0x9f5 (fffff803`21cfe4f3)

nt!IopfCompleteRequest+0x225:
fffff803`21cfdd25 0fbe4346        movsx   eax,byte ptr [rbx+46h]
fffff803`21cfdd29 c6437812        mov     byte ptr [rbx+78h],12h
fffff803`21cfdd2d c6437a58        mov     byte ptr [rbx+7Ah],58h
fffff803`21cfdd31 413bc6          cmp     eax,r14d
fffff803`21cfdd34 0f84760f0000    je      nt!IopfCompleteRequest+0x11c0 (fffff803`21cfecb0)

nt!IopfCompleteRequest+0x23a:
fffff803`21cfdd3a 8883c8000000    mov     byte ptr [rbx+0C8h],al
fffff803`21cfdd40 4c8d0da9540100  lea     r9,[nt!IopCompleteRequest (fffff803`21d131f0)]
fffff803`21cfdd47 488d0576fc4b00  lea     rax,[nt!IopAbortRequest (fffff803`221bd9c4)]
fffff803`21cfdd4e 4889bb80000000  mov     qword ptr [rbx+80h],rdi
fffff803`21cfdd55 48c783a800000000000000 mov qword ptr [rbx+0A8h],0
fffff803`21cfdd60 66c783c90000000000 mov   word ptr [rbx+0C9h],0
fffff803`21cfdd69 488983a0000000  mov     qword ptr [rbx+0A0h],rax
fffff803`21cfdd70 4c898b98000000  mov     qword ptr [rbx+98h],r9
fffff803`21cfdd77 48c783b000000000000000 mov qword ptr [rbx+0B0h],0
fffff803`21cfdd82 450f20c5        mov     r13,cr8
fffff803`21cfdd86 4c896d7f        mov     qword ptr [rbp+7Fh],r13
fffff803`21cfdd8a 450f22c6        mov     cr8,r14
fffff803`21cfdd8e 65488b342520000000 mov   rsi,qword ptr gs:[20h]
fffff803`21cfdd97 4533f6          xor     r14d,r14d

nt!IopfCompleteRequest+0x29a:
fffff803`21cfdd9a f0480fba6f4000  lock bts qword ptr [rdi+40h],0
fffff803`21cfdda1 0f82e90e0000    jb      nt!IopfCompleteRequest+0x11a0 (fffff803`21cfec90)

nt!IopfCompleteRequest+0x2a7:
fffff803`21cfdda7 f6477601        test    byte ptr [rdi+76h],1
fffff803`21cfddab 7436            je      nt!IopfCompleteRequest+0x2e3 (fffff803`21cfdde3)

nt!IopfCompleteRequest+0x2ad:
fffff803`21cfddad 80bbca00000000  cmp     byte ptr [rbx+0CAh],0
fffff803`21cfddb4 752d            jne     nt!IopfCompleteRequest+0x2e3 (fffff803`21cfdde3)

nt!IopfCompleteRequest+0x2b6:
fffff803`21cfddb6 488b45c7        mov     rax,qword ptr [rbp-39h]
fffff803`21cfddba 488d5378        lea     rdx,[rbx+78h]
fffff803`21cfddbe 450fb6c5        movzx   r8d,r13b
fffff803`21cfddc2 488983b8000000  mov     qword ptr [rbx+0B8h],rax
fffff803`21cfddc9 488b45cf        mov     rax,qword ptr [rbp-31h]
fffff803`21cfddcd 488bce          mov     rcx,rsi
fffff803`21cfddd0 488983c0000000  mov     qword ptr [rbx+0C0h],rax
fffff803`21cfddd7 c683ca00000001  mov     byte ptr [rbx+0CAh],1
fffff803`21cfddde e87d750400      call    nt!KiInsertQueueApc (fffff803`21d45360)

nt!IopfCompleteRequest+0x2e3:
fffff803`21cfdde3 48c7474000000000 mov     qword ptr [rdi+40h],0
fffff803`21cfddeb 4c8bb6882c0000  mov     r14,qword ptr [rsi+2C88h]
fffff803`21cfddf2 4d85f6          test    r14,r14
fffff803`21cfddf5 0f84c7000000    je      nt!IopfCompleteRequest+0x3c2 (fffff803`21cfdec2)

nt!IopfCompleteRequest+0x2fb:
fffff803`21cfddfb 48c786882c000000000000 mov qword ptr [rsi+2C88h],0

nt!IopfCompleteRequest+0x306:
fffff803`21cfde06 410fb6866b010000 movzx   eax,byte ptr [r14+16Bh]
fffff803`21cfde0e 498b5ef8        mov     rbx,qword ptr [r14-8]
fffff803`21cfde12 498dbe28ffffff  lea     rdi,[r14-0D8h]
fffff803`21cfde19 4d8b36          mov     r14,qword ptr [r14]
fffff803`21cfde1c 4c8d3c40        lea     r15,[rax+rax*2]
fffff803`21cfde20 49c1e704        shl     r15,4
fffff803`21cfde24 4c03fb          add     r15,rbx

nt!IopfCompleteRequest+0x327:
fffff803`21cfde27 0fb64311        movzx   eax,byte ptr [rbx+11h]
fffff803`21cfde2b 3c03            cmp     al,3
fffff803`21cfde2d 734a            jae     nt!IopfCompleteRequest+0x379 (fffff803`21cfde79)

nt!IopfCompleteRequest+0x32f:
fffff803`21cfde2f 4c8b6320        mov     r12,qword ptr [rbx+20h]
fffff803`21cfde33 c7456700000000  mov     dword ptr [rbp+67h],0
fffff803`21cfde3a f0410fba2c2407  lock bts dword ptr [r12],7
fffff803`21cfde41 0f82730f0000    jb      nt!IopfCompleteRequest+0x12ca (fffff803`21cfedba)

nt!IopfCompleteRequest+0x347:
fffff803`21cfde47 0fb64311        movzx   eax,byte ptr [rbx+11h]
fffff803`21cfde4b 3c02            cmp     al,2
fffff803`21cfde4d 7521            jne     nt!IopfCompleteRequest+0x370 (fffff803`21cfde70)

nt!IopfCompleteRequest+0x34f:
fffff803`21cfde4f 488b0b          mov     rcx,qword ptr [rbx]
fffff803`21cfde52 488b4308        mov     rax,qword ptr [rbx+8]
fffff803`21cfde56 48395908        cmp     qword ptr [rcx+8],rbx
fffff803`21cfde5a 0f855c0e0000    jne     nt!IopfCompleteRequest+0x11cc (fffff803`21cfecbc)

nt!IopfCompleteRequest+0x360:
fffff803`21cfde60 483918          cmp     qword ptr [rax],rbx
fffff803`21cfde63 0f85530e0000    jne     nt!IopfCompleteRequest+0x11cc (fffff803`21cfecbc)

nt!IopfCompleteRequest+0x369:
fffff803`21cfde69 488908          mov     qword ptr [rax],rcx
fffff803`21cfde6c 48894108        mov     qword ptr [rcx+8],rax

nt!IopfCompleteRequest+0x370:
fffff803`21cfde70 f0418124247fffffff lock and dword ptr [r12],0FFFFFF7Fh

nt!IopfCompleteRequest+0x379:
fffff803`21cfde79 4883c330        add     rbx,30h
fffff803`21cfde7d 493bdf          cmp     rbx,r15
fffff803`21cfde80 75a5            jne     nt!IopfCompleteRequest+0x327 (fffff803`21cfde27)

nt!IopfCompleteRequest+0x382:
fffff803`21cfde82 0fb6556f        movzx   edx,byte ptr [rbp+6Fh]
fffff803`21cfde86 c6873602000001  mov     byte ptr [rdi+236h],1
fffff803`21cfde8d 889737020000    mov     byte ptr [rdi+237h],dl
fffff803`21cfde93 f705e7c12c0000020000 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],200h
fffff803`21cfde9d 0f852c67f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xb209 (fffff803`21c845cf)

nt!IopfCompleteRequest+0x3a3:
fffff803`21cfdea3 8b4774          mov     eax,dword ptr [rdi+74h]
fffff803`21cfdea6 a801            test    al,1
fffff803`21cfdea8 0f845a0d0000    je      nt!IopfCompleteRequest+0x1110 (fffff803`21cfec08)

nt!IopfCompleteRequest+0x3ae:
fffff803`21cfdeae 488bd7          mov     rdx,rdi
fffff803`21cfdeb1 488bce          mov     rcx,rsi
fffff803`21cfdeb4 e897dfffff      call    nt!KiDeferredReadyThread (fffff803`21cfbe50)

nt!IopfCompleteRequest+0x3b9:
fffff803`21cfdeb9 4d85f6          test    r14,r14
fffff803`21cfdebc 0f8544ffffff    jne     nt!IopfCompleteRequest+0x306 (fffff803`21cfde06)

nt!IopfCompleteRequest+0x3c2:
fffff803`21cfdec2 4180fd02        cmp     r13b,2
fffff803`21cfdec6 0f830b090000    jae     nt!IopfCompleteRequest+0xcdf (fffff803`21cfe7d7)

nt!IopfCompleteRequest+0x3cc:
fffff803`21cfdecc 48837e1000      cmp     qword ptr [rsi+10h],0
fffff803`21cfded1 488b5e08        mov     rbx,qword ptr [rsi+8]
fffff803`21cfded5 0f8568090000    jne     nt!IopfCompleteRequest+0xd43 (fffff803`21cfe843)

nt!IopfCompleteRequest+0x3db:
fffff803`21cfdedb f7437400010000  test    dword ptr [rbx+74h],100h
fffff803`21cfdee2 0f85000a0000    jne     nt!IopfCompleteRequest+0xde8 (fffff803`21cfe8e8)

nt!IopfCompleteRequest+0x3e8:
fffff803`21cfdee8 410fb6c5        movzx   eax,r13b
fffff803`21cfdeec 440f22c0        mov     cr8,rax
fffff803`21cfdef0 eb59            jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x3f2:
fffff803`21cfdef2 440fb67ffe      movzx   r15d,byte ptr [rdi-2]
fffff803`21cfdef7 2402            and     al,2
fffff803`21cfdef9 4c896f05        mov     qword ptr [rdi+5],r13
fffff803`21cfdefd 8807            mov     byte ptr [rdi],al
fffff803`21cfdeff 6644896ffe      mov     word ptr [rdi-2],r13w
fffff803`21cfdf04 4c896f0d        mov     qword ptr [rdi+0Dh],r13
fffff803`21cfdf08 4c896f15        mov     qword ptr [rdi+15h],r13
fffff803`21cfdf0c 4c896f2d        mov     qword ptr [rdi+2Dh],r13
fffff803`21cfdf10 0fb64342        movzx   eax,byte ptr [rbx+42h]
fffff803`21cfdf14 fec0            inc     al
fffff803`21cfdf16 384343          cmp     byte ptr [rbx+43h],al
fffff803`21cfdf19 0f84aa050000    je      nt!IopfCompleteRequest+0x9cb (fffff803`21cfe4c9)

nt!IopfCompleteRequest+0x41f:
fffff803`21cfdf1f 488b83b8000000  mov     rax,qword ptr [rbx+0B8h]
fffff803`21cfdf26 4c8b7028        mov     r14,qword ptr [rax+28h]

nt!IopfCompleteRequest+0x42a:
fffff803`21cfdf2a 4084f6          test    sil,sil
fffff803`21cfdf2d 0f85680b0000    jne     nt!IopfCompleteRequest+0xfa5 (fffff803`21cfea9b)

nt!IopfCompleteRequest+0x433:
fffff803`21cfdf33 4c8b473d        mov     r8,qword ptr [rdi+3Dh]
fffff803`21cfdf37 488bd3          mov     rdx,rbx
fffff803`21cfdf3a 498bce          mov     rcx,r14
fffff803`21cfdf3d ff5735          call    qword ptr [rdi+35h]
fffff803`21cfdf40 3d160000c0      cmp     eax,0C0000016h
fffff803`21cfdf45 0f8561050000    jne     nt!IopfCompleteRequest+0x9ae (fffff803`21cfe4ac)

nt!IopfCompleteRequest+0x44b:
fffff803`21cfdf4b 4c8bb42498000000 mov     r14,qword ptr [rsp+98h]
fffff803`21cfdf53 4c8ba424a0000000 mov     r12,qword ptr [rsp+0A0h]
fffff803`21cfdf5b 488bb424b0000000 mov     rsi,qword ptr [rsp+0B0h]
fffff803`21cfdf63 488bbc24a8000000 mov     rdi,qword ptr [rsp+0A8h]
fffff803`21cfdf6b 4881c4b8000000  add     rsp,0B8h
fffff803`21cfdf72 415f            pop     r15
fffff803`21cfdf74 415d            pop     r13
fffff803`21cfdf76 5b              pop     rbx
fffff803`21cfdf77 5d              pop     rbp
fffff803`21cfdf78 c3              ret

nt!IopfCompleteRequest+0x479:
fffff803`21cfdf79 488b8bc0000000  mov     rcx,qword ptr [rbx+0C0h]
fffff803`21cfdf80 4885c9          test    rcx,rcx
fffff803`21cfdf83 0f84b5fcffff    je      nt!IopfCompleteRequest+0x13e (fffff803`21cfdc3e)

nt!IopfCompleteRequest+0x489:
fffff803`21cfdf89 0fbae20a        bt      edx,0Ah
fffff803`21cfdf8d 0f82abfcffff    jb      nt!IopfCompleteRequest+0x13e (fffff803`21cfdc3e)

nt!IopfCompleteRequest+0x493:
fffff803`21cfdf93 488b7910        mov     rdi,qword ptr [rcx+10h]
fffff803`21cfdf97 4885ff          test    rdi,rdi
fffff803`21cfdf9a 0f8541050000    jne     nt!IopfCompleteRequest+0x9e3 (fffff803`21cfe4e1)

nt!IopfCompleteRequest+0x4a0:
fffff803`21cfdfa0 f7415000080000  test    dword ptr [rcx+50h],800h
fffff803`21cfdfa7 7511            jne     nt!IopfCompleteRequest+0x4ba (fffff803`21cfdfba)

nt!IopfCompleteRequest+0x4a9:
fffff803`21cfdfa9 488b4108        mov     rax,qword ptr [rcx+8]
fffff803`21cfdfad 488b7838        mov     rdi,qword ptr [rax+38h]
fffff803`21cfdfb1 4885ff          test    rdi,rdi
fffff803`21cfdfb4 0f85bd050000    jne     nt!IopfCompleteRequest+0xa77 (fffff803`21cfe577)

nt!IopfCompleteRequest+0x4ba:
fffff803`21cfdfba 488b7908        mov     rdi,qword ptr [rcx+8]

nt!IopfCompleteRequest+0x4be:
fffff803`21cfdfbe 4c396f18        cmp     qword ptr [rdi+18h],r13
fffff803`21cfdfc2 0f858c010000    jne     nt!IopfCompleteRequest+0x656 (fffff803`21cfe154)

nt!IopfCompleteRequest+0x4c8:
fffff803`21cfdfc8 4c8bf7          mov     r14,rdi

nt!IopfCompleteRequest+0x4cb:
fffff803`21cfdfcb 418b4648        mov     eax,dword ptr [r14+48h]
fffff803`21cfdfcf 83f808          cmp     eax,8
fffff803`21cfdfd2 7409            je      nt!IopfCompleteRequest+0x4dd (fffff803`21cfdfdd)

nt!IopfCompleteRequest+0x4d4:
fffff803`21cfdfd4 83f814          cmp     eax,14h
fffff803`21cfdfd7 0f8561fcffff    jne     nt!IopfCompleteRequest+0x13e (fffff803`21cfdc3e)

nt!IopfCompleteRequest+0x4dd:
fffff803`21cfdfdd 41b701          mov     r15b,1
fffff803`21cfdfe0 44887d6f        mov     byte ptr [rbp+6Fh],r15b
fffff803`21cfdfe4 e955fcffff      jmp     nt!IopfCompleteRequest+0x13e (fffff803`21cfdc3e)

nt!IopfCompleteRequest+0x4e9:
fffff803`21cfdfe9 44386b41        cmp     byte ptr [rbx+41h],r13b
fffff803`21cfdfed 0f859bfcffff    jne     nt!IopfCompleteRequest+0x18e (fffff803`21cfdc8e)

nt!IopfCompleteRequest+0x4f3:
fffff803`21cfdff3 817b3004010000  cmp     dword ptr [rbx+30h],104h
fffff803`21cfdffa 0f854bffffff    jne     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x500:
fffff803`21cfe000 488b4338        mov     rax,qword ptr [rbx+38h]
fffff803`21cfe004 483bc6          cmp     rax,rsi
fffff803`21cfe007 0f85ff0d0000    jne     nt!IopfCompleteRequest+0x131c (fffff803`21cfee0c)

nt!IopfCompleteRequest+0x50d:
fffff803`21cfe00d 488b45cf        mov     rax,qword ptr [rbp-31h]
fffff803`21cfe011 488983a0000000  mov     qword ptr [rbx+0A0h],rax
fffff803`21cfe018 e92effffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x520:
fffff803`21cfe01e 488bcf          mov     rcx,rdi
fffff803`21cfe021 e8bac40000      call    nt!MmUnlockPages (fffff803`21d0a4e0)
fffff803`21cfe026 488b3f          mov     rdi,qword ptr [rdi]
fffff803`21cfe029 4885ff          test    rdi,rdi
fffff803`21cfe02c 0f8442fcffff    je      nt!IopfCompleteRequest+0x174 (fffff803`21cfdc74)

nt!IopfCompleteRequest+0x534:
fffff803`21cfe032 ebea            jmp     nt!IopfCompleteRequest+0x520 (fffff803`21cfe01e)

nt!IopfCompleteRequest+0x536:
fffff803`21cfe034 f7c740040000    test    edi,440h
fffff803`21cfe03a 0f84ef090000    je      nt!IopfCompleteRequest+0xf39 (fffff803`21cfea2f)

nt!IopfCompleteRequest+0x542:
fffff803`21cfe040 488b4330        mov     rax,qword ptr [rbx+30h]
fffff803`21cfe044 488b4b48        mov     rcx,qword ptr [rbx+48h]
fffff803`21cfe048 41be02000000    mov     r14d,2
fffff803`21cfe04e 488901          mov     qword ptr [rcx],rax
fffff803`21cfe051 488b4338        mov     rax,qword ptr [rbx+38h]
fffff803`21cfe055 48894108        mov     qword ptr [rcx+8],rax
fffff803`21cfe059 83e742          and     edi,42h
fffff803`21cfe05c 0f859b050000    jne     nt!IopfCompleteRequest+0xafd (fffff803`21cfe5fd)

nt!IopfCompleteRequest+0x564:
fffff803`21cfe062 488b7350        mov     rsi,qword ptr [rbx+50h]
fffff803`21cfe066 410fb6cf        movzx   ecx,r15b
fffff803`21cfe06a 41bf01000000    mov     r15d,1
fffff803`21cfe070 f6067f          test    byte ptr [rsi],7Fh
fffff803`21cfe073 894d6f          mov     dword ptr [rbp+6Fh],ecx
fffff803`21cfe076 0f842c060000    je      nt!IopfCompleteRequest+0xba8 (fffff803`21cfe6a8)

nt!IopfCompleteRequest+0x57e:
fffff803`21cfe07c 450f20c4        mov     r12,cr8
fffff803`21cfe080 4c89657f        mov     qword ptr [rbp+7Fh],r12
fffff803`21cfe084 450f22c6        mov     cr8,r14
fffff803`21cfe088 654c8b342520000000 mov   r14,qword ptr gs:[20h]
fffff803`21cfe091 f00fba2e07      lock bts dword ptr [rsi],7
fffff803`21cfe096 c7456700000000  mov     dword ptr [rbp+67h],0
fffff803`21cfe09d 0f821d0e0000    jb      nt!IopfCompleteRequest+0x13da (fffff803`21cfeec0)

nt!IopfCompleteRequest+0x5a5:
fffff803`21cfe0a3 8b4604          mov     eax,dword ptr [rsi+4]
fffff803`21cfe0a6 44897e04        mov     dword ptr [rsi+4],r15d
fffff803`21cfe0aa 85c0            test    eax,eax
fffff803`21cfe0ac 751a            jne     nt!IopfCompleteRequest+0x5ca (fffff803`21cfe0c8)

nt!IopfCompleteRequest+0x5b0:
fffff803`21cfe0ae 488b4608        mov     rax,qword ptr [rsi+8]
fffff803`21cfe0b2 4585ed          test    r13d,r13d
fffff803`21cfe0b5 4c8d6e08        lea     r13,[rsi+8]
fffff803`21cfe0b9 0f85d3050000    jne     nt!IopfCompleteRequest+0xb92 (fffff803`21cfe692)

nt!IopfCompleteRequest+0x5c1:
fffff803`21cfe0bf 493bc5          cmp     rax,r13
fffff803`21cfe0c2 0f857e60f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xad2f (fffff803`21c84146)

nt!IopfCompleteRequest+0x5ca:
fffff803`21cfe0c8 f081267fffffff  lock and dword ptr [rsi],0FFFFFF7Fh
fffff803`21cfe0cf 4983be882c000000 cmp     qword ptr [r14+2C88h],0
fffff803`21cfe0d7 0f8586060000    jne     nt!IopfCompleteRequest+0xc63 (fffff803`21cfe763)

nt!IopfCompleteRequest+0x5df:
fffff803`21cfe0dd 4180fc02        cmp     r12b,2
fffff803`21cfe0e1 0f8317060000    jae     nt!IopfCompleteRequest+0xbfe (fffff803`21cfe6fe)

nt!IopfCompleteRequest+0x5e9:
fffff803`21cfe0e7 49837e1000      cmp     qword ptr [r14+10h],0
fffff803`21cfe0ec 498b7608        mov     rsi,qword ptr [r14+8]
fffff803`21cfe0f0 0f85b9090000    jne     nt!IopfCompleteRequest+0xfb9 (fffff803`21cfeaaf)

nt!IopfCompleteRequest+0x5f8:
fffff803`21cfe0f6 f7467400010000  test    dword ptr [rsi+74h],100h
fffff803`21cfe0fd 0f853f61f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xae49 (fffff803`21c84242)

nt!IopfCompleteRequest+0x605:
fffff803`21cfe103 410fb6c4        movzx   eax,r12b
fffff803`21cfe107 440f22c0        mov     cr8,rax

nt!IopfCompleteRequest+0x60d:
fffff803`21cfe10b 85ff            test    edi,edi
fffff803`21cfe10d 0f8438feffff    je      nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x615:
fffff803`21cfe113 488bcb          mov     rcx,rbx
fffff803`21cfe116 ff151cc42c00    call    qword ptr [nt!pIoFreeIrp (fffff803`21fca538)]
fffff803`21cfe11c e92afeffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x623:
fffff803`21cfe121 413bc4          cmp     eax,r12d
fffff803`21cfe124 7414            je      nt!IopfCompleteRequest+0x63c (fffff803`21cfe13a)

nt!IopfCompleteRequest+0x628:
fffff803`21cfe126 800f02          or      byte ptr [rdi],2
fffff803`21cfe129 808bd300000002  or      byte ptr [rbx+0D3h],2
fffff803`21cfe130 4c8be0          mov     r12,rax
fffff803`21cfe133 488983f0000000  mov     qword ptr [rbx+0F0h],rax

nt!IopfCompleteRequest+0x63c:
fffff803`21cfe13a 44396b30        cmp     dword ptr [rbx+30h],r13d
fffff803`21cfe13e 0f8d6efaffff    jge     nt!IopfCompleteRequest+0xb2 (fffff803`21cfdbb2)

nt!IopfCompleteRequest+0x646:
fffff803`21cfe144 0fb607          movzx   eax,byte ptr [rdi]
fffff803`21cfe147 84c0            test    al,al
fffff803`21cfe149 0f896efaffff    jns     nt!IopfCompleteRequest+0xbd (fffff803`21cfdbbd)

nt!IopfCompleteRequest+0x651:
fffff803`21cfe14f e99efdffff      jmp     nt!IopfCompleteRequest+0x3f2 (fffff803`21cfdef2)

nt!IopfCompleteRequest+0x656:
fffff803`21cfe154 488b81d0000000  mov     rax,qword ptr [rcx+0D0h]
fffff803`21cfe15b 4885c0          test    rax,rax
fffff803`21cfe15e 0f8556050000    jne     nt!IopfCompleteRequest+0xbba (fffff803`21cfe6ba)

nt!IopfCompleteRequest+0x666:
fffff803`21cfe164 488b4718        mov     rax,qword ptr [rdi+18h]
fffff803`21cfe168 4885c0          test    rax,rax
fffff803`21cfe16b 0f8457feffff    je      nt!IopfCompleteRequest+0x4c8 (fffff803`21cfdfc8)

nt!IopfCompleteRequest+0x673:
fffff803`21cfe171 488bf8          mov     rdi,rax
fffff803`21cfe174 488b4018        mov     rax,qword ptr [rax+18h]
fffff803`21cfe178 4885c0          test    rax,rax
fffff803`21cfe17b 0f8447feffff    je      nt!IopfCompleteRequest+0x4c8 (fffff803`21cfdfc8)

nt!IopfCompleteRequest+0x683:
fffff803`21cfe181 ebee            jmp     nt!IopfCompleteRequest+0x673 (fffff803`21cfe171)

nt!IopfCompleteRequest+0x685:
fffff803`21cfe183 488b8b98000000  mov     rcx,qword ptr [rbx+98h]
fffff803`21cfe18a e8512a0100      call    nt!ObfDereferenceObject (fffff803`21d10be0)
fffff803`21cfe18f e9edfaffff      jmp     nt!IopfCompleteRequest+0x181 (fffff803`21cfdc81)

nt!IopfCompleteRequest+0x696:
fffff803`21cfe194 807b4100        cmp     byte ptr [rbx+41h],0
fffff803`21cfe198 48c745df00000000 mov     qword ptr [rbp-21h],0
fffff803`21cfe1a0 0f8402060000    je      nt!IopfCompleteRequest+0xcb0 (fffff803`21cfe7a8)

nt!IopfCompleteRequest+0x6a8:
fffff803`21cfe1a6 488b86b0000000  mov     rax,qword ptr [rsi+0B0h]
fffff803`21cfe1ad 4885c0          test    rax,rax
fffff803`21cfe1b0 0f849e63f8ff    je      nt! ?? ::FNODOBFM::`string'+0xb18e (fffff803`21c84554)

nt!IopfCompleteRequest+0x6b8:
fffff803`21cfe1b6 488b38          mov     rdi,qword ptr [rax]
fffff803`21cfe1b9 488b4008        mov     rax,qword ptr [rax+8]
fffff803`21cfe1bd c783b800000000000000 mov dword ptr [rbx+0B8h],0
fffff803`21cfe1c7 488d4f40        lea     rcx,[rdi+40h]
fffff803`21cfe1cb 48894378        mov     qword ptr [rbx+78h],rax
fffff803`21cfe1cf 48c745e700000000 mov     qword ptr [rbp-19h],0
fffff803`21cfe1d7 48894def        mov     qword ptr [rbp-11h],rcx
fffff803`21cfe1db 440f20c0        mov     rax,cr8
fffff803`21cfe1df 41be02000000    mov     r14d,2
fffff803`21cfe1e5 450f22c6        mov     cr8,r14
fffff803`21cfe1e9 f70591be2c0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21cfe1f3 8845f7          mov     byte ptr [rbp-9],al
fffff803`21cfe1f6 0f858160f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xae88 (fffff803`21c8427d)

nt!IopfCompleteRequest+0x6fe:
fffff803`21cfe1fc 488d55e7        lea     rdx,[rbp-19h]
fffff803`21cfe200 488711          xchg    rdx,qword ptr [rcx]
fffff803`21cfe203 4885d2          test    rdx,rdx
fffff803`21cfe206 0f856d050000    jne     nt!IopfCompleteRequest+0xc79 (fffff803`21cfe779)

nt!IopfCompleteRequest+0x70e:
fffff803`21cfe20c 814b1000000100  or      dword ptr [rbx+10h],10000h
fffff803`21cfe213 807f4800        cmp     byte ptr [rdi+48h],0
fffff803`21cfe217 0f85bb0c0000    jne     nt!IopfCompleteRequest+0x13f2 (fffff803`21cfeed8)

nt!IopfCompleteRequest+0x71f:
fffff803`21cfe21d 410fbec7        movsx   eax,r15b
fffff803`21cfe221 4c8d93a8000000  lea     r10,[rbx+0A8h]
fffff803`21cfe228 4c8d4f08        lea     r9,[rdi+8]
fffff803`21cfe22c 894567          mov     dword ptr [rbp+67h],eax
fffff803`21cfe22f 450f20c3        mov     r11,cr8
fffff803`21cfe233 4c895d7f        mov     qword ptr [rbp+7Fh],r11
fffff803`21cfe237 450f22c6        mov     cr8,r14
fffff803`21cfe23b 654c8b3c2520000000 mov   r15,qword ptr gs:[20h]
fffff803`21cfe244 f70536be2c0000000001 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],1000000h
fffff803`21cfe24e 498b7708        mov     rsi,qword ptr [r15+8]
fffff803`21cfe252 0f853760f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xae9a (fffff803`21c8428f)

nt!IopfCompleteRequest+0x75a:
fffff803`21cfe258 4533f6          xor     r14d,r14d
fffff803`21cfe25b f00fba2f07      lock bts dword ptr [rdi],7
fffff803`21cfe260 0f82aa050000    jb      nt!IopfCompleteRequest+0xd10 (fffff803`21cfe810)

nt!IopfCompleteRequest+0x768:
fffff803`21cfe266 8b4704          mov     eax,dword ptr [rdi+4]
fffff803`21cfe269 894577          mov     dword ptr [rbp+77h],eax
fffff803`21cfe26c 4d394908        cmp     qword ptr [r9+8],r9
fffff803`21cfe270 0f843e030000    je      nt!IopfCompleteRequest+0xab4 (fffff803`21cfe5b4)

nt!IopfCompleteRequest+0x778:
fffff803`21cfe276 8b4728          mov     eax,dword ptr [rdi+28h]
fffff803`21cfe279 3b472c          cmp     eax,dword ptr [rdi+2Ch]
fffff803`21cfe27c 0f8332030000    jae     nt!IopfCompleteRequest+0xab4 (fffff803`21cfe5b4)

nt!IopfCompleteRequest+0x784:
fffff803`21cfe282 488b86e8000000  mov     rax,qword ptr [rsi+0E8h]
fffff803`21cfe289 483bc7          cmp     rax,rdi
fffff803`21cfe28c 0f845c030000    je      nt!IopfCompleteRequest+0xaee (fffff803`21cfe5ee)

nt!IopfCompleteRequest+0x794:
fffff803`21cfe292 4c8b4710        mov     r8,qword ptr [rdi+10h]

nt!IopfCompleteRequest+0x798:
fffff803`21cfe296 498b10          mov     rdx,qword ptr [r8]
fffff803`21cfe299 498b4808        mov     rcx,qword ptr [r8+8]
fffff803`21cfe29d 4d8be0          mov     r12,r8
fffff803`21cfe2a0 48894dd7        mov     qword ptr [rbp-29h],rcx
fffff803`21cfe2a4 4c394208        cmp     qword ptr [rdx+8],r8
fffff803`21cfe2a8 0f85d0070000    jne     nt!IopfCompleteRequest+0xf88 (fffff803`21cfea7e)

nt!IopfCompleteRequest+0x7b0:
fffff803`21cfe2ae 4c3901          cmp     qword ptr [rcx],r8
fffff803`21cfe2b1 0f85c7070000    jne     nt!IopfCompleteRequest+0xf88 (fffff803`21cfea7e)

nt!IopfCompleteRequest+0x7b9:
fffff803`21cfe2b7 488911          mov     qword ptr [rcx],rdx
fffff803`21cfe2ba 4532f6          xor     r14b,r14b
fffff803`21cfe2bd 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21cfe2c1 498b7018        mov     rsi,qword ptr [r8+18h]
fffff803`21cfe2c5 4533ed          xor     r13d,r13d

nt!IopfCompleteRequest+0x7ca:
fffff803`21cfe2c8 f0480fba6e4000  lock bts qword ptr [rsi+40h],0
fffff803`21cfe2cf 0f82b3040000    jb      nt!IopfCompleteRequest+0xc90 (fffff803`21cfe788)

nt!IopfCompleteRequest+0x7d7:
fffff803`21cfe2d5 0fb68684010000  movzx   eax,byte ptr [rsi+184h]
fffff803`21cfe2dc 4c8dabc0000000  lea     r13,[rbx+0C0h]
fffff803`21cfe2e3 3c05            cmp     al,5
fffff803`21cfe2e5 0f856e060000    jne     nt!IopfCompleteRequest+0xe59 (fffff803`21cfe959)

nt!IopfCompleteRequest+0x7ed:
fffff803`21cfe2eb 0fb64e70        movzx   ecx,byte ptr [rsi+70h]
fffff803`21cfe2ef 4532f6          xor     r14b,r14b
fffff803`21cfe2f2 8bc1            mov     eax,ecx
fffff803`21cfe2f4 83e003          and     eax,3
fffff803`21cfe2f7 83f801          cmp     eax,1
fffff803`21cfe2fa 0f85c3090000    jne     nt!IopfCompleteRequest+0x11d3 (fffff803`21cfecc3)

nt!IopfCompleteRequest+0x802:
fffff803`21cfe300 488b86e8000000  mov     rax,qword ptr [rsi+0E8h]
fffff803`21cfe307 4885c0          test    rax,rax
fffff803`21cfe30a 7404            je      nt!IopfCompleteRequest+0x812 (fffff803`21cfe310)

nt!IopfCompleteRequest+0x80e:
fffff803`21cfe30c f0ff4028        lock inc dword ptr [rax+28h]

nt!IopfCompleteRequest+0x812:
fffff803`21cfe310 4c8bb6c8020000  mov     r14,qword ptr [rsi+2C8h]
fffff803`21cfe317 4d85f6          test    r14,r14
fffff803`21cfe31a 7462            je      nt!IopfCompleteRequest+0x880 (fffff803`21cfe37e)

nt!IopfCompleteRequest+0x81e:
fffff803`21cfe31c 4533ed          xor     r13d,r13d

nt!IopfCompleteRequest+0x821:
fffff803`21cfe31f f0490fbaae9050000000 lock bts qword ptr [r14+5090h],0
fffff803`21cfe329 0f8237060000    jb      nt!IopfCompleteRequest+0xe70 (fffff803`21cfe966)

nt!IopfCompleteRequest+0x831:
fffff803`21cfe32f 488b86c8020000  mov     rax,qword ptr [rsi+2C8h]
fffff803`21cfe336 4c8dabc0000000  lea     r13,[rbx+0C0h]
fffff803`21cfe33d 4885c0          test    rax,rax
fffff803`21cfe340 7433            je      nt!IopfCompleteRequest+0x877 (fffff803`21cfe375)

nt!IopfCompleteRequest+0x844:
fffff803`21cfe342 488d86d8000000  lea     rax,[rsi+0D8h]
fffff803`21cfe349 488b10          mov     rdx,qword ptr [rax]
fffff803`21cfe34c 488b4808        mov     rcx,qword ptr [rax+8]
fffff803`21cfe350 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21cfe354 0f8520080000    jne     nt!IopfCompleteRequest+0x1082 (fffff803`21cfeb7a)

nt!IopfCompleteRequest+0x85c:
fffff803`21cfe35a 483901          cmp     qword ptr [rcx],rax
fffff803`21cfe35d 0f8517080000    jne     nt!IopfCompleteRequest+0x1082 (fffff803`21cfeb7a)

nt!IopfCompleteRequest+0x865:
fffff803`21cfe363 488911          mov     qword ptr [rcx],rdx
fffff803`21cfe366 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21cfe36a 48c786c802000000000000 mov qword ptr [rsi+2C8h],0

nt!IopfCompleteRequest+0x877:
fffff803`21cfe375 f04983a69050000000 lock and qword ptr [r14+5090h],0

nt!IopfCompleteRequest+0x880:
fffff803`21cfe37e 418b4724        mov     eax,dword ptr [r15+24h]
fffff803`21cfe382 488d8ed8000000  lea     rcx,[rsi+0D8h]
fffff803`21cfe389 4c8d93a8000000  lea     r10,[rbx+0A8h]
fffff803`21cfe390 89861c020000    mov     dword ptr [rsi+21Ch],eax
fffff803`21cfe396 c6868401000007  mov     byte ptr [rsi+184h],7
fffff803`21cfe39d 498b87882c0000  mov     rax,qword ptr [r15+2C88h]
fffff803`21cfe3a4 488901          mov     qword ptr [rcx],rax
fffff803`21cfe3a7 49898f882c0000  mov     qword ptr [r15+2C88h],rcx
fffff803`21cfe3ae 4c8996c8000000  mov     qword ptr [rsi+0C8h],r10
fffff803`21cfe3b5 41b601          mov     r14b,1

nt!IopfCompleteRequest+0x8ba:
fffff803`21cfe3b8 48c7464000000000 mov     qword ptr [rsi+40h],0
fffff803`21cfe3c0 410fb64c2411    movzx   ecx,byte ptr [r12+11h]
fffff803`21cfe3c6 ffc1            inc     ecx
fffff803`21cfe3c8 41884c2411      mov     byte ptr [r12+11h],cl
fffff803`21cfe3cd 4584f6          test    r14b,r14b
fffff803`21cfe3d0 0f84af060000    je      nt!IopfCompleteRequest+0xf8f (fffff803`21cfea85)

nt!IopfCompleteRequest+0x8d8:
fffff803`21cfe3d6 4c8b5d7f        mov     r11,qword ptr [rbp+7Fh]

nt!IopfCompleteRequest+0x8dc:
fffff803`21cfe3da f081277fffffff  lock and dword ptr [rdi],0FFFFFF7Fh
fffff803`21cfe3e1 4d8bb7882c0000  mov     r14,qword ptr [r15+2C88h]
fffff803`21cfe3e8 4d85f6          test    r14,r14
fffff803`21cfe3eb 0f8480000000    je      nt!IopfCompleteRequest+0x973 (fffff803`21cfe471)

nt!IopfCompleteRequest+0x8f3:
fffff803`21cfe3f1 49c787882c000000000000 mov qword ptr [r15+2C88h],0

nt!IopfCompleteRequest+0x8fe:
fffff803`21cfe3fc 410fb6866b010000 movzx   eax,byte ptr [r14+16Bh]
fffff803`21cfe404 498b76f8        mov     rsi,qword ptr [r14-8]
fffff803`21cfe408 498dbe28ffffff  lea     rdi,[r14-0D8h]
fffff803`21cfe40f 4d8b36          mov     r14,qword ptr [r14]
fffff803`21cfe412 4c8d2440        lea     r12,[rax+rax*2]
fffff803`21cfe416 49c1e404        shl     r12,4
fffff803`21cfe41a 4c03e6          add     r12,rsi

nt!IopfCompleteRequest+0x91f:
fffff803`21cfe41d 0fb64611        movzx   eax,byte ptr [rsi+11h]
fffff803`21cfe421 3c03            cmp     al,3
fffff803`21cfe423 0f82e05ef8ff    jb      nt! ?? ::FNODOBFM::`string'+0xaf14 (fffff803`21c84309)

nt!IopfCompleteRequest+0x92b:
fffff803`21cfe429 4883c630        add     rsi,30h
fffff803`21cfe42d 493bf4          cmp     rsi,r12
fffff803`21cfe430 75eb            jne     nt!IopfCompleteRequest+0x91f (fffff803`21cfe41d)

nt!IopfCompleteRequest+0x934:
fffff803`21cfe432 8b4d67          mov     ecx,dword ptr [rbp+67h]
fffff803`21cfe435 c6873602000001  mov     byte ptr [rdi+236h],1
fffff803`21cfe43c 888f37020000    mov     byte ptr [rdi+237h],cl
fffff803`21cfe442 f70538bc2c0000020000 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],200h
fffff803`21cfe44c 0f853c5ff8ff    jne     nt! ?? ::FNODOBFM::`string'+0xafa9 (fffff803`21c8438e)

nt!IopfCompleteRequest+0x954:
fffff803`21cfe452 8b4774          mov     eax,dword ptr [rdi+74h]
fffff803`21cfe455 a801            test    al,1
fffff803`21cfe457 0f8424070000    je      nt!IopfCompleteRequest+0x1089 (fffff803`21cfeb81)

nt!IopfCompleteRequest+0x95f:
fffff803`21cfe45d 488bd7          mov     rdx,rdi
fffff803`21cfe460 498bcf          mov     rcx,r15
fffff803`21cfe463 e8e8d9ffff      call    nt!KiDeferredReadyThread (fffff803`21cfbe50)

nt!IopfCompleteRequest+0x96a:
fffff803`21cfe468 4d85f6          test    r14,r14
fffff803`21cfe46b 758f            jne     nt!IopfCompleteRequest+0x8fe (fffff803`21cfe3fc)

nt!IopfCompleteRequest+0x96f:
fffff803`21cfe46d 4c8b5d7f        mov     r11,qword ptr [rbp+7Fh]

nt!IopfCompleteRequest+0x973:
fffff803`21cfe471 4180fb02        cmp     r11b,2
fffff803`21cfe475 0f82695ff8ff    jb      nt! ?? ::FNODOBFM::`string'+0xafff (fffff803`21c843e4)

nt!IopfCompleteRequest+0x97d:
fffff803`21cfe47b 49837f1000      cmp     qword ptr [r15+10h],0
fffff803`21cfe480 0f8503010000    jne     nt!IopfCompleteRequest+0xa89 (fffff803`21cfe589)

nt!IopfCompleteRequest+0x988:
fffff803`21cfe486 4032ff          xor     dil,dil

nt!IopfCompleteRequest+0x98b:
fffff803`21cfe489 488d4de7        lea     rcx,[rbp-19h]
fffff803`21cfe48d e89e6c0000      call    nt!KeReleaseInStackQueuedSpinLock (fffff803`21d05130)
fffff803`21cfe492 4084ff          test    dil,dil
fffff803`21cfe495 0f84b0faffff    je      nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x99d:
fffff803`21cfe49b 498b5500        mov     rdx,qword ptr [r13]

nt!IopfCompleteRequest+0x9a1:
fffff803`21cfe49f 488bcb          mov     rcx,rbx
fffff803`21cfe4a2 e80dd8f7ff      call    nt!IopDropIrp (fffff803`21c7bcb4)
fffff803`21cfe4a7 e99ffaffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x9ae:
fffff803`21cfe4ac 4084f6          test    sil,sil
fffff803`21cfe4af 0f843df7ffff    je      nt!IopfCompleteRequest+0xf2 (fffff803`21cfdbf2)

nt!IopfCompleteRequest+0x9b7:
fffff803`21cfe4b5 4d8bc6          mov     r8,r14
fffff803`21cfe4b8 410fb6d7        movzx   edx,r15b
fffff803`21cfe4bc 488bcb          mov     rcx,rbx
fffff803`21cfe4bf e84cc50a00      call    nt!PoDeviceReleaseIrp (fffff803`21daaa10)
fffff803`21cfe4c4 e929f7ffff      jmp     nt!IopfCompleteRequest+0xf2 (fffff803`21cfdbf2)

nt!IopfCompleteRequest+0x9cb:
fffff803`21cfe4c9 4d8bf5          mov     r14,r13
fffff803`21cfe4cc e959faffff      jmp     nt!IopfCompleteRequest+0x42a (fffff803`21cfdf2a)

nt!IopfCompleteRequest+0x9d3:
fffff803`21cfe4d1 488b83b8000000  mov     rax,qword ptr [rbx+0B8h]
fffff803`21cfe4d8 80480301        or      byte ptr [rax+3],1
fffff803`21cfe4dc e9f9f6ffff      jmp     nt!IopfCompleteRequest+0xda (fffff803`21cfdbda)

nt!IopfCompleteRequest+0x9e3:
fffff803`21cfe4e1 488b7f08        mov     rdi,qword ptr [rdi+8]
fffff803`21cfe4e5 4885ff          test    rdi,rdi
fffff803`21cfe4e8 0f85d0faffff    jne     nt!IopfCompleteRequest+0x4be (fffff803`21cfdfbe)

nt!IopfCompleteRequest+0x9f0:
fffff803`21cfe4ee e9adfaffff      jmp     nt!IopfCompleteRequest+0x4a0 (fffff803`21cfdfa0)

nt!IopfCompleteRequest+0x9f5:
fffff803`21cfe4f3 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21cfe4fc 6683b8e601000000 cmp     word ptr [rax+1E6h],0
fffff803`21cfe504 0f851bf8ffff    jne     nt!IopfCompleteRequest+0x225 (fffff803`21cfdd25)

nt!IopfCompleteRequest+0xa0c:
fffff803`21cfe50a 440f20c0        mov     rax,cr8
fffff803`21cfe50e 3c01            cmp     al,1
fffff803`21cfe510 0f830ff8ffff    jae     nt!IopfCompleteRequest+0x225 (fffff803`21cfdd25)

nt!IopfCompleteRequest+0xa18:
fffff803`21cfe516 65488b042588010000 mov   rax,qword ptr gs:[188h]
fffff803`21cfe51f 80b84202000001  cmp     byte ptr [rax+242h],1
fffff803`21cfe526 0f84f9f7ffff    je      nt!IopfCompleteRequest+0x225 (fffff803`21cfdd25)

nt!IopfCompleteRequest+0xa2e:
fffff803`21cfe52c 41bf01000000    mov     r15d,1
fffff803`21cfe532 4c897dff        mov     qword ptr [rbp-1],r15
fffff803`21cfe536 440f20c7        mov     rdi,cr8
fffff803`21cfe53a 450f22c7        mov     cr8,r15
fffff803`21cfe53e 488d45cf        lea     rax,[rbp-31h]
fffff803`21cfe542 488d4b78        lea     rcx,[rbx+78h]
fffff803`21cfe546 4c8d4dc7        lea     r9,[rbp-39h]
fffff803`21cfe54a 4c8d45ff        lea     r8,[rbp-1]
fffff803`21cfe54e 488d550f        lea     rdx,[rbp+0Fh]
fffff803`21cfe552 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21cfe557 e8944c0100      call    nt!IopCompleteRequest (fffff803`21d131f0)
fffff803`21cfe55c 440fb6df        movzx   r11d,dil
fffff803`21cfe560 450f22c3        mov     cr8,r11
fffff803`21cfe564 e9e2f9ffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xa6b:
fffff803`21cfe56a 448ba3f0000000  mov     r12d,dword ptr [rbx+0F0h]
fffff803`21cfe571 e906f6ffff      jmp     nt!IopfCompleteRequest+0x7c (fffff803`21cfdb7c)

nt!IopfCompleteRequest+0xa77:
fffff803`21cfe577 488b7f08        mov     rdi,qword ptr [rdi+8]
fffff803`21cfe57b 4885ff          test    rdi,rdi
fffff803`21cfe57e 0f853afaffff    jne     nt!IopfCompleteRequest+0x4be (fffff803`21cfdfbe)

nt!IopfCompleteRequest+0xa84:
fffff803`21cfe584 e931faffff      jmp     nt!IopfCompleteRequest+0x4ba (fffff803`21cfdfba)

nt!IopfCompleteRequest+0xa89:
fffff803`21cfe589 410fb687da2d0000 movzx   eax,byte ptr [r15+2DDAh]
fffff803`21cfe591 84c0            test    al,al
fffff803`21cfe593 0f85edfeffff    jne     nt!IopfCompleteRequest+0x988 (fffff803`21cfe486)

nt!IopfCompleteRequest+0xa99:
fffff803`21cfe599 41384720        cmp     byte ptr [r15+20h],al
fffff803`21cfe59d 0f855b090000    jne     nt!IopfCompleteRequest+0x1418 (fffff803`21cfeefe)

nt!IopfCompleteRequest+0xaa3:
fffff803`21cfe5a3 b102            mov     cl,2
fffff803`21cfe5a5 ff15251e2c00    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`21fc03d0)]
fffff803`21cfe5ab e9d6feffff      jmp     nt!IopfCompleteRequest+0x988 (fffff803`21cfe486)

nt!IopfCompleteRequest+0xab0:
fffff803`21cfe5b0 4c8b5d7f        mov     r11,qword ptr [rbp+7Fh]

nt!IopfCompleteRequest+0xab4:
fffff803`21cfe5b4 ff4704          inc     dword ptr [rdi+4]
fffff803`21cfe5b7 488b4f20        mov     rcx,qword ptr [rdi+20h]
fffff803`21cfe5bb 488d4718        lea     rax,[rdi+18h]
fffff803`21cfe5bf 49894a08        mov     qword ptr [r10+8],rcx
fffff803`21cfe5c3 498902          mov     qword ptr [r10],rax
fffff803`21cfe5c6 483901          cmp     qword ptr [rcx],rax
fffff803`21cfe5c9 0f85335df8ff    jne     nt! ?? ::FNODOBFM::`string'+0xaf0d (fffff803`21c84302)

nt!IopfCompleteRequest+0xacf:
fffff803`21cfe5cf 4c8911          mov     qword ptr [rcx],r10
fffff803`21cfe5d2 4c895008        mov     qword ptr [rax+8],r10
fffff803`21cfe5d6 e9fffdffff      jmp     nt!IopfCompleteRequest+0x8dc (fffff803`21cfe3da)

nt!IopfCompleteRequest+0xadb:
fffff803`21cfe5db 33d2            xor     edx,edx
fffff803`21cfe5dd e87e4b1e00      call    nt!ExFreePoolWithTag (fffff803`21ee3160)
fffff803`21cfe5e2 4c89aba0000000  mov     qword ptr [rbx+0A0h],r13
fffff803`21cfe5e9 e960f6ffff      jmp     nt!IopfCompleteRequest+0x14e (fffff803`21cfdc4e)

nt!IopfCompleteRequest+0xaee:
fffff803`21cfe5ee 80be830200000f  cmp     byte ptr [rsi+283h],0Fh
fffff803`21cfe5f5 0f8597fcffff    jne     nt!IopfCompleteRequest+0x794 (fffff803`21cfe292)

nt!IopfCompleteRequest+0xafb:
fffff803`21cfe5fb ebb7            jmp     nt!IopfCompleteRequest+0xab4 (fffff803`21cfe5b4)

nt!IopfCompleteRequest+0xafd:
fffff803`21cfe5fd 488bb398000000  mov     rsi,qword ptr [rbx+98h]
fffff803`21cfe604 4532e4          xor     r12b,r12b
fffff803`21cfe607 4885f6          test    rsi,rsi
fffff803`21cfe60a 742b            je      nt!IopfCompleteRequest+0xb37 (fffff803`21cfe637)

nt!IopfCompleteRequest+0xb0c:
fffff803`21cfe60c 488d8e98040000  lea     rcx,[rsi+498h]
fffff803`21cfe613 450f20c4        mov     r12,cr8
fffff803`21cfe617 450f22c6        mov     cr8,r14
fffff803`21cfe61b f7055fba2c0000002100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],210000h
fffff803`21cfe625 0f858b080000    jne     nt!IopfCompleteRequest+0x13d0 (fffff803`21cfeeb6)

nt!IopfCompleteRequest+0xb2b:
fffff803`21cfe62b f0480fba2900    lock bts qword ptr [rcx],0
fffff803`21cfe631 0f82b3070000    jb      nt!IopfCompleteRequest+0x12fa (fffff803`21cfedea)

nt!IopfCompleteRequest+0xb37:
fffff803`21cfe637 488b5320        mov     rdx,qword ptr [rbx+20h]
fffff803`21cfe63b 488b4b28        mov     rcx,qword ptr [rbx+28h]
fffff803`21cfe63f 488d4320        lea     rax,[rbx+20h]
fffff803`21cfe643 48394208        cmp     qword ptr [rdx+8],rax
fffff803`21cfe647 0f850c070000    jne     nt!IopfCompleteRequest+0x1269 (fffff803`21cfed59)

nt!IopfCompleteRequest+0xb4d:
fffff803`21cfe64d 483901          cmp     qword ptr [rcx],rax
fffff803`21cfe650 0f8503070000    jne     nt!IopfCompleteRequest+0x1269 (fffff803`21cfed59)

nt!IopfCompleteRequest+0xb56:
fffff803`21cfe656 488911          mov     qword ptr [rcx],rdx
fffff803`21cfe659 48894a08        mov     qword ptr [rdx+8],rcx
fffff803`21cfe65d 48894008        mov     qword ptr [rax+8],rax
fffff803`21cfe661 488900          mov     qword ptr [rax],rax
fffff803`21cfe664 4885f6          test    rsi,rsi
fffff803`21cfe667 0f84f5f9ffff    je      nt!IopfCompleteRequest+0x564 (fffff803`21cfe062)

nt!IopfCompleteRequest+0xb6d:
fffff803`21cfe66d f7050dba2c0000000100 test dword ptr [nt!PerfGlobalGroupMask+0x4 (fffff803`21fca084)],10000h
fffff803`21cfe677 0f85745af8ff    jne     nt! ?? ::FNODOBFM::`string'+0xacda (fffff803`21c840f1)

nt!IopfCompleteRequest+0xb7d:
fffff803`21cfe67d f04c21ae98040000 lock and qword ptr [rsi+498h],r13

nt!IopfCompleteRequest+0xb85:
fffff803`21cfe685 410fb6c4        movzx   eax,r12b
fffff803`21cfe689 440f22c0        mov     cr8,rax
fffff803`21cfe68d e9d0f9ffff      jmp     nt!IopfCompleteRequest+0x564 (fffff803`21cfe062)

nt!IopfCompleteRequest+0xb92:
fffff803`21cfe692 493bc5          cmp     rax,r13
fffff803`21cfe695 0f8585000000    jne     nt!IopfCompleteRequest+0xc20 (fffff803`21cfe720)

nt!IopfCompleteRequest+0xb9b:
fffff803`21cfe69b 4d896d08        mov     qword ptr [r13+8],r13
fffff803`21cfe69f 4d896d00        mov     qword ptr [r13],r13
fffff803`21cfe6a3 e920faffff      jmp     nt!IopfCompleteRequest+0x5ca (fffff803`21cfe0c8)

nt!IopfCompleteRequest+0xba8:
fffff803`21cfe6a8 44397e04        cmp     dword ptr [rsi+4],r15d
fffff803`21cfe6ac 0f8459faffff    je      nt!IopfCompleteRequest+0x60d (fffff803`21cfe10b)

nt!IopfCompleteRequest+0xbb2:
fffff803`21cfe6b2 458bef          mov     r13d,r15d
fffff803`21cfe6b5 e9c2f9ffff      jmp     nt!IopfCompleteRequest+0x57e (fffff803`21cfe07c)

nt!IopfCompleteRequest+0xbba:
fffff803`21cfe6ba 488d0d3fe32400  lea     rcx,[nt!IopStaticRevocationExtension (fffff803`21f4ca00)]
fffff803`21cfe6c1 483bc1          cmp     rax,rcx
fffff803`21cfe6c4 0f849afaffff    je      nt!IopfCompleteRequest+0x666 (fffff803`21cfe164)

nt!IopfCompleteRequest+0xbca:
fffff803`21cfe6ca 4c8b7010        mov     r14,qword ptr [rax+10h]
fffff803`21cfe6ce 4d85f6          test    r14,r14
fffff803`21cfe6d1 0f848dfaffff    je      nt!IopfCompleteRequest+0x666 (fffff803`21cfe164)

nt!IopfCompleteRequest+0xbd7:
fffff803`21cfe6d7 4d8b36          mov     r14,qword ptr [r14]
fffff803`21cfe6da 4d85f6          test    r14,r14
fffff803`21cfe6dd 0f8481faffff    je      nt!IopfCompleteRequest+0x666 (fffff803`21cfe164)

nt!IopfCompleteRequest+0xbe3:
fffff803`21cfe6e3 4533c0          xor     r8d,r8d
fffff803`21cfe6e6 498bd6          mov     rdx,r14
fffff803`21cfe6e9 488bcf          mov     rcx,rdi
fffff803`21cfe6ec e833050600      call    nt!IopVerifyDeviceObjectOnStack (fffff803`21d5ec24)
fffff803`21cfe6f1 84c0            test    al,al
fffff803`21cfe6f3 0f85d2f8ffff    jne     nt!IopfCompleteRequest+0x4cb (fffff803`21cfdfcb)

nt!IopfCompleteRequest+0xbf9:
fffff803`21cfe6f9 e966faffff      jmp     nt!IopfCompleteRequest+0x666 (fffff803`21cfe164)

nt!IopfCompleteRequest+0xbfe:
fffff803`21cfe6fe 49837e1000      cmp     qword ptr [r14+10h],0
fffff803`21cfe703 0f8402faffff    je      nt!IopfCompleteRequest+0x60d (fffff803`21cfe10b)

nt!IopfCompleteRequest+0xc09:
fffff803`21cfe709 410fb686da2d0000 movzx   eax,byte ptr [r14+2DDAh]
fffff803`21cfe711 84c0            test    al,al
fffff803`21cfe713 0f85f2f9ffff    jne     nt!IopfCompleteRequest+0x60d (fffff803`21cfe10b)

nt!IopfCompleteRequest+0xc19:
fffff803`21cfe719 e9415bf8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xae66 (fffff803`21c8425f)

nt!IopfCompleteRequest+0xc20:
fffff803`21cfe720 488bc8          mov     rcx,rax
fffff803`21cfe723 488b00          mov     rax,qword ptr [rax]
fffff803`21cfe726 0fb65110        movzx   edx,byte ptr [rcx+10h]
fffff803`21cfe72a 48894567        mov     qword ptr [rbp+67h],rax
fffff803`21cfe72e 413ad7          cmp     dl,r15b
fffff803`21cfe731 0f85a35af8ff    jne     nt! ?? ::FNODOBFM::`string'+0xaddd (fffff803`21c841da)

nt!IopfCompleteRequest+0xc37:
fffff803`21cfe737 440fb74112      movzx   r8d,word ptr [rcx+12h]

nt!IopfCompleteRequest+0xc3c:
fffff803`21cfe73c 488bd1          mov     rdx,rcx
fffff803`21cfe73f 4533c9          xor     r9d,r9d
fffff803`21cfe742 498bce          mov     rcx,r14
fffff803`21cfe745 e8561b0100      call    nt!KiTryUnwaitThread (fffff803`21d102a0)

nt!IopfCompleteRequest+0xc4a:
fffff803`21cfe74a 488b4567        mov     rax,qword ptr [rbp+67h]
fffff803`21cfe74e 493bc5          cmp     rax,r13
fffff803`21cfe751 75cd            jne     nt!IopfCompleteRequest+0xc20 (fffff803`21cfe720)

nt!IopfCompleteRequest+0xc53:
fffff803`21cfe753 8b4d6f          mov     ecx,dword ptr [rbp+6Fh]
fffff803`21cfe756 4d896d08        mov     qword ptr [r13+8],r13
fffff803`21cfe75a 4d896d00        mov     qword ptr [r13],r13
fffff803`21cfe75e e965f9ffff      jmp     nt!IopfCompleteRequest+0x5ca (fffff803`21cfe0c8)

nt!IopfCompleteRequest+0xc63:
fffff803`21cfe763 448bc1          mov     r8d,ecx
fffff803`21cfe766 4533c9          xor     r9d,r9d
fffff803`21cfe769 418bd7          mov     edx,r15d
fffff803`21cfe76c 498bce          mov     rcx,r14
fffff803`21cfe76f e824030400      call    nt!KiProcessThreadWaitList (fffff803`21d3ea98)
fffff803`21cfe774 e964f9ffff      jmp     nt!IopfCompleteRequest+0x5df (fffff803`21cfe0dd)

nt!IopfCompleteRequest+0xc79:
fffff803`21cfe779 488d4de7        lea     rcx,[rbp-19h]
fffff803`21cfe77d e85e7a0100      call    nt!KxWaitForLockOwnerShip (fffff803`21d161e0)
fffff803`21cfe782 e985faffff      jmp     nt!IopfCompleteRequest+0x70e (fffff803`21cfe20c)

nt!IopfCompleteRequest+0xc90:
fffff803`21cfe788 41ffc5          inc     r13d
fffff803`21cfe78b 44852dbabc2c00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r13d
fffff803`21cfe792 0f84325bf8ff    je      nt! ?? ::FNODOBFM::`string'+0xaed5 (fffff803`21c842ca)

nt!IopfCompleteRequest+0xca0:
fffff803`21cfe798 f390            pause

nt!IopfCompleteRequest+0xca2:
fffff803`21cfe79a 488b4640        mov     rax,qword ptr [rsi+40h]
fffff803`21cfe79e 4885c0          test    rax,rax
fffff803`21cfe7a1 75e5            jne     nt!IopfCompleteRequest+0xc90 (fffff803`21cfe788)

nt!IopfCompleteRequest+0xcab:
fffff803`21cfe7a3 e920fbffff      jmp     nt!IopfCompleteRequest+0x7ca (fffff803`21cfe2c8)

nt!IopfCompleteRequest+0xcb0:
fffff803`21cfe7a8 8b4b30          mov     ecx,dword ptr [rbx+30h]
fffff803`21cfe7ab 8bc1            mov     eax,ecx
fffff803`21cfe7ad 25000000c0      and     eax,0C0000000h
fffff803`21cfe7b2 3d000000c0      cmp     eax,0C0000000h
fffff803`21cfe7b7 0f84f1f4ffff    je      nt!IopfCompleteRequest+0x1ae (fffff803`21cfdcae)

nt!IopfCompleteRequest+0xcc5:
fffff803`21cfe7bd f7465000000002  test    dword ptr [rsi+50h],2000000h
fffff803`21cfe7c4 0f84dcf9ffff    je      nt!IopfCompleteRequest+0x6a8 (fffff803`21cfe1a6)

nt!IopfCompleteRequest+0xcd2:
fffff803`21cfe7ca 85c9            test    ecx,ecx
fffff803`21cfe7cc 0f89dcf4ffff    jns     nt!IopfCompleteRequest+0x1ae (fffff803`21cfdcae)

nt!IopfCompleteRequest+0xcda:
fffff803`21cfe7d2 e9cff9ffff      jmp     nt!IopfCompleteRequest+0x6a8 (fffff803`21cfe1a6)

nt!IopfCompleteRequest+0xcdf:
fffff803`21cfe7d7 48837e1000      cmp     qword ptr [rsi+10h],0
fffff803`21cfe7dc 0f8469f7ffff    je      nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xcea:
fffff803`21cfe7e2 0fb686da2d0000  movzx   eax,byte ptr [rsi+2DDAh]
fffff803`21cfe7e9 84c0            test    al,al
fffff803`21cfe7eb 0f855af7ffff    jne     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xcf9:
fffff803`21cfe7f1 384620          cmp     byte ptr [rsi+20h],al
fffff803`21cfe7f4 0f85565ef8ff    jne     nt! ?? ::FNODOBFM::`string'+0xb28a (fffff803`21c84650)

nt!IopfCompleteRequest+0xd02:
fffff803`21cfe7fa b102            mov     cl,2
fffff803`21cfe7fc ff15ce1b2c00    call    qword ptr [nt!_imp_HalRequestSoftwareInterrupt (fffff803`21fc03d0)]
fffff803`21cfe802 e944f7ffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xd10:
fffff803`21cfe810 41ffc6          inc     r14d
fffff803`21cfe813 44853532bc2c00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r14d
fffff803`21cfe81a 0f848e5af8ff    je      nt! ?? ::FNODOBFM::`string'+0xaeb9 (fffff803`21c842ae)

nt!IopfCompleteRequest+0xd20:
fffff803`21cfe820 f390            pause

nt!IopfCompleteRequest+0xd22:
fffff803`21cfe822 8b07            mov     eax,dword ptr [rdi]
fffff803`21cfe824 84c0            test    al,al
fffff803`21cfe826 78e8            js      nt!IopfCompleteRequest+0xd10 (fffff803`21cfe810)

nt!IopfCompleteRequest+0xd28:
fffff803`21cfe828 f00fba2f07      lock bts dword ptr [rdi],7
fffff803`21cfe82d 72e1            jb      nt!IopfCompleteRequest+0xd10 (fffff803`21cfe810)

nt!IopfCompleteRequest+0xd2f:
fffff803`21cfe82f 4c8b5d7f        mov     r11,qword ptr [rbp+7Fh]
fffff803`21cfe833 4c8d4f08        lea     r9,[rdi+8]
fffff803`21cfe837 4c8d93a8000000  lea     r10,[rbx+0A8h]
fffff803`21cfe83e e923faffff      jmp     nt!IopfCompleteRequest+0x768 (fffff803`21cfe266)

nt!IopfCompleteRequest+0xd43:
fffff803`21cfe843 33ff            xor     edi,edi

nt!IopfCompleteRequest+0xd45:
fffff803`21cfe845 f0480fba6e3000  lock bts qword ptr [rsi+30h],0
fffff803`21cfe84c 0f829e040000    jb      nt!IopfCompleteRequest+0x1200 (fffff803`21cfecf0)

nt!IopfCompleteRequest+0xd52:
fffff803`21cfe852 488b7e10        mov     rdi,qword ptr [rsi+10h]
fffff803`21cfe856 48c7461000000000 mov     qword ptr [rsi+10h],0
fffff803`21cfe85e fa              cli
fffff803`21cfe85f c6462001        mov     byte ptr [rsi+20h],1
fffff803`21cfe863 0f31            rdtsc
fffff803`21cfe865 48c1e220        shl     rdx,20h
fffff803`21cfe869 480bc2          or      rax,rdx
fffff803`21cfe86c 488b5348        mov     rdx,qword ptr [rbx+48h]
fffff803`21cfe870 8b4b50          mov     ecx,dword ptr [rbx+50h]
fffff803`21cfe873 4c8bc0          mov     r8,rax
fffff803`21cfe876 4c8bf0          mov     r14,rax
fffff803`21cfe879 4c2b8640530000  sub     r8,qword ptr [rsi+5340h]
fffff803`21cfe880 4903d0          add     rdx,r8
fffff803`21cfe883 4903c8          add     rcx,r8
fffff803`21cfe886 48895348        mov     qword ptr [rbx+48h],rdx
fffff803`21cfe88a baffffffff      mov     edx,0FFFFFFFFh
fffff803`21cfe88f 483bca          cmp     rcx,rdx
fffff803`21cfe892 0f875c050000    ja      nt!IopfCompleteRequest+0x1304 (fffff803`21cfedf4)

nt!IopfCompleteRequest+0xd98:
fffff803`21cfe898 f643020e        test    byte ptr [rbx+2],0Eh
fffff803`21cfe89c 894b50          mov     dword ptr [rbx+50h],ecx
fffff803`21cfe89f 0f85a2050000    jne     nt!IopfCompleteRequest+0x1361 (fffff803`21cfee47)

nt!IopfCompleteRequest+0xda5:
fffff803`21cfe8a5 4c89b640530000  mov     qword ptr [rsi+5340h],r14
fffff803`21cfe8ac fb              sti
fffff803`21cfe8ad 48897e08        mov     qword ptr [rsi+8],rdi
fffff803`21cfe8b1 c6878401000002  mov     byte ptr [rdi+184h],2
fffff803`21cfe8b8 488bd3          mov     rdx,rbx
fffff803`21cfe8bb 488bce          mov     rcx,rsi
fffff803`21cfe8be c6838302000020  mov     byte ptr [rbx+283h],20h
fffff803`21cfe8c5 4488ab86010000  mov     byte ptr [rbx+186h],r13b
fffff803`21cfe8cc e82f72ffff      call    nt!KiQueueReadyThread (fffff803`21cf5b00)
fffff803`21cfe8d1 450fb6c5        movzx   r8d,r13b
fffff803`21cfe8d5 488bd7          mov     rdx,rdi
fffff803`21cfe8d8 488bcb          mov     rcx,rbx
fffff803`21cfe8db e85077fcff      call    nt!KiSwapContext (fffff803`21cc6030)
fffff803`21cfe8e0 84c0            test    al,al
fffff803`21cfe8e2 0f8400f6ffff    je      nt!IopfCompleteRequest+0x3e8 (fffff803`21cfdee8)

nt!IopfCompleteRequest+0xde8:
fffff803`21cfe8e8 41bf01000000    mov     r15d,1
fffff803`21cfe8ee 450f22c7        mov     cr8,r15
fffff803`21cfe8f2 816374fffeffff  and     dword ptr [rbx+74h],0FFFFFEFFh
fffff803`21cfe8f9 4533c0          xor     r8d,r8d
fffff803`21cfe8fc 33d2            xor     edx,edx
fffff803`21cfe8fe 33c9            xor     ecx,ecx
fffff803`21cfe900 e80b2d0400      call    nt!KiDeliverApc (fffff803`21d41610)
fffff803`21cfe905 410fb6c5        movzx   eax,r13b
fffff803`21cfe909 440f22c0        mov     cr8,rax
fffff803`21cfe90d e939f6ffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xe12:
fffff803`21cfe912 488b4b08        mov     rcx,qword ptr [rbx+8]
fffff803`21cfe916 488b7318        mov     rsi,qword ptr [rbx+18h]
fffff803`21cfe91a 4885c9          test    rcx,rcx
fffff803`21cfe91d 7410            je      nt!IopfCompleteRequest+0xe2f (fffff803`21cfe92f)

nt!IopfCompleteRequest+0xe1f:
fffff803`21cfe91f 488b39          mov     rdi,qword ptr [rcx]
fffff803`21cfe922 e8695a0200      call    nt!IoFreeMdl (fffff803`21d24390)
fffff803`21cfe927 488bcf          mov     rcx,rdi
fffff803`21cfe92a 4885ff          test    rdi,rdi
fffff803`21cfe92d 75f0            jne     nt!IopfCompleteRequest+0xe1f (fffff803`21cfe91f)

nt!IopfCompleteRequest+0xe2f:
fffff803`21cfe92f 488bcb          mov     rcx,rbx
fffff803`21cfe932 ff1500bc2c00    call    qword ptr [nt!pIoFreeIrp (fffff803`21fca538)]
fffff803`21cfe938 83caff          or      edx,0FFFFFFFFh
fffff803`21cfe93b f00fc15618      lock xadd dword ptr [rsi+18h],edx
fffff803`21cfe940 ffca            dec     edx
fffff803`21cfe942 0f8503f6ffff    jne     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xe48:
fffff803`21cfe948 410fb6d7        movzx   edx,r15b
fffff803`21cfe94c 488bce          mov     rcx,rsi
fffff803`21cfe94f e87c450000      call    nt!IoCompleteRequest (fffff803`21d02ed0)
fffff803`21cfe954 e9f2f5ffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xe59:
fffff803`21cfe959 4c8d93a8000000  lea     r10,[rbx+0A8h]
fffff803`21cfe960 e953faffff      jmp     nt!IopfCompleteRequest+0x8ba (fffff803`21cfe3b8)

nt!IopfCompleteRequest+0xe70:
fffff803`21cfe966 41ffc5          inc     r13d
fffff803`21cfe969 44852ddcba2c00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r13d
fffff803`21cfe970 0f847059f8ff    je      nt! ?? ::FNODOBFM::`string'+0xaef1 (fffff803`21c842e6)

nt!IopfCompleteRequest+0xe80:
fffff803`21cfe976 f390            pause

nt!IopfCompleteRequest+0xe82:
fffff803`21cfe978 498b8690500000  mov     rax,qword ptr [r14+5090h]
fffff803`21cfe97f 4885c0          test    rax,rax
fffff803`21cfe982 0f8497f9ffff    je      nt!IopfCompleteRequest+0x821 (fffff803`21cfe31f)

nt!IopfCompleteRequest+0xe92:
fffff803`21cfe988 ebdc            jmp     nt!IopfCompleteRequest+0xe70 (fffff803`21cfe966)

nt!IopfCompleteRequest+0xe94:
fffff803`21cfe98a a820            test    al,20h
fffff803`21cfe98c 0f8435f2ffff    je      nt!IopfCompleteRequest+0xc7 (fffff803`21cfdbc7)

nt!IopfCompleteRequest+0xe9c:
fffff803`21cfe992 e95bf5ffff      jmp     nt!IopfCompleteRequest+0x3f2 (fffff803`21cfdef2)

nt!IopfCompleteRequest+0xea1:
fffff803`21cfe997 b90b000000      mov     ecx,0Bh
fffff803`21cfe99c e81f2f0200      call    nt!KeAcquireQueuedSpinLock (fffff803`21d218c0)
fffff803`21cfe9a1 488b0d18de2400  mov     rcx,qword ptr [nt!IopDeadIrps (fffff803`21f4c7c0)]
fffff803`21cfe9a8 4c8b9398000000  mov     r10,qword ptr [rbx+98h]
fffff803`21cfe9af 440fb6f0        movzx   r14d,al
fffff803`21cfe9b3 488d0506de2400  lea     rax,[nt!IopDeadIrps (fffff803`21f4c7c0)]
fffff803`21cfe9ba 483bc8          cmp     rcx,rax
fffff803`21cfe9bd 0f85965cf8ff    jne     nt! ?? ::FNODOBFM::`string'+0xb293 (fffff803`21c84659)

nt!IopfCompleteRequest+0xecd:
fffff803`21cfe9c3 4d85d2          test    r10,r10
fffff803`21cfe9c6 0f84cf5cf8ff    je      nt! ?? ::FNODOBFM::`string'+0xb2e1 (fffff803`21c8469b)

nt!IopfCompleteRequest+0xed6:
fffff803`21cfe9cc 440fbe4346      movsx   r8d,byte ptr [rbx+46h]
fffff803`21cfe9d1 48c744243800000000 mov   qword ptr [rsp+38h],0
fffff803`21cfe9da 488d05e3ef4b00  lea     rax,[nt!IopAbortRequest (fffff803`221bd9c4)]
fffff803`21cfe9e1 c644243000      mov     byte ptr [rsp+30h],0
fffff803`21cfe9e6 4c8d0d03480100  lea     r9,[nt!IopCompleteRequest (fffff803`21d131f0)]
fffff803`21cfe9ed 488d4b78        lea     rcx,[rbx+78h]
fffff803`21cfe9f1 498bd2          mov     rdx,r10
fffff803`21cfe9f4 48c744242800000000 mov   qword ptr [rsp+28h],0
fffff803`21cfe9fd 4889442420      mov     qword ptr [rsp+20h],rax
fffff803`21cfea02 e855220400      call    nt!KeInitializeApc (fffff803`21d40c5c)
fffff803`21cfea07 440fb64d6f      movzx   r9d,byte ptr [rbp+6Fh]
fffff803`21cfea0c 4c8b45cf        mov     r8,qword ptr [rbp-31h]
fffff803`21cfea10 488d4b78        lea     rcx,[rbx+78h]
fffff803`21cfea14 488bd6          mov     rdx,rsi
fffff803`21cfea17 e890070500      call    nt!KeInsertQueueApc (fffff803`21d4f1ac)
fffff803`21cfea1c 410fb6d6        movzx   edx,r14b
fffff803`21cfea20 b90b000000      mov     ecx,0Bh
fffff803`21cfea25 e806fa0200      call    nt!KeReleaseQueuedSpinLock (fffff803`21d2e430)
fffff803`21cfea2a e91cf5ffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xf39:
fffff803`21cfea2f 488bcb          mov     rcx,rbx
fffff803`21cfea32 e839e50000      call    nt!IopDequeueIrpFromThread (fffff803`21d0cf70)
fffff803`21cfea37 440fbe4346      movsx   r8d,byte ptr [rbx+46h]
fffff803`21cfea3c 488b9398000000  mov     rdx,qword ptr [rbx+98h]
fffff803`21cfea43 4c896c2438      mov     qword ptr [rsp+38h],r13
fffff803`21cfea48 44886c2430      mov     byte ptr [rsp+30h],r13b
fffff803`21cfea4d 4c8d0d54bbfaff  lea     r9,[nt!IopCompletePageWrite (fffff803`21caa5a8)]
fffff803`21cfea54 488d4b78        lea     rcx,[rbx+78h]
fffff803`21cfea58 4c896c2428      mov     qword ptr [rsp+28h],r13
fffff803`21cfea5d 4c896c2420      mov     qword ptr [rsp+20h],r13
fffff803`21cfea62 e8f5210400      call    nt!KeInitializeApc (fffff803`21d40c5c)
fffff803`21cfea67 488d4b78        lea     rcx,[rbx+78h]
fffff803`21cfea6b 450fb6cf        movzx   r9d,r15b
fffff803`21cfea6f 4533c0          xor     r8d,r8d
fffff803`21cfea72 33d2            xor     edx,edx
fffff803`21cfea74 e833070500      call    nt!KeInsertQueueApc (fffff803`21d4f1ac)
fffff803`21cfea79 e9cdf4ffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0xf88:
fffff803`21cfea7e b903000000      mov     ecx,3
fffff803`21cfea83 cd29            int     29h

nt!IopfCompleteRequest+0xf8f:
fffff803`21cfea85 4c8b45d7        mov     r8,qword ptr [rbp-29h]
fffff803`21cfea89 488d4708        lea     rax,[rdi+8]
fffff803`21cfea8d 4c3bc0          cmp     r8,rax
fffff803`21cfea90 0f8500f8ffff    jne     nt!IopfCompleteRequest+0x798 (fffff803`21cfe296)

nt!IopfCompleteRequest+0xfa0:
fffff803`21cfea96 e915fbffff      jmp     nt!IopfCompleteRequest+0xab0 (fffff803`21cfe5b0)

nt!IopfCompleteRequest+0xfa5:
fffff803`21cfea9b 4d8bc6          mov     r8,r14
fffff803`21cfea9e 410fb6d7        movzx   edx,r15b
fffff803`21cfeaa2 488bcb          mov     rcx,rbx
fffff803`21cfeaa5 e8a6bf0a00      call    nt!PoDeviceAcquireIrp (fffff803`21daaa50)
fffff803`21cfeaaa e984f4ffff      jmp     nt!IopfCompleteRequest+0x433 (fffff803`21cfdf33)

nt!IopfCompleteRequest+0xfb9:
fffff803`21cfeaaf 4533ed          xor     r13d,r13d

nt!IopfCompleteRequest+0xfbc:
fffff803`21cfeab2 f0490fba6e3000  lock bts qword ptr [r14+30h],0
fffff803`21cfeab9 0f8267030000    jb      nt!IopfCompleteRequest+0x1340 (fffff803`21cfee26)

nt!IopfCompleteRequest+0xfc9:
fffff803`21cfeabf 4d8b6e10        mov     r13,qword ptr [r14+10h]
fffff803`21cfeac3 49c7461000000000 mov     qword ptr [r14+10h],0
fffff803`21cfeacb fa              cli
fffff803`21cfeacc 45887e20        mov     byte ptr [r14+20h],r15b
fffff803`21cfead0 0f31            rdtsc
fffff803`21cfead2 48c1e220        shl     rdx,20h
fffff803`21cfead6 480bc2          or      rax,rdx
fffff803`21cfead9 488b5648        mov     rdx,qword ptr [rsi+48h]
fffff803`21cfeadd 8b4e50          mov     ecx,dword ptr [rsi+50h]
fffff803`21cfeae0 4c8bc0          mov     r8,rax
fffff803`21cfeae3 48894567        mov     qword ptr [rbp+67h],rax
fffff803`21cfeae7 4d2b8640530000  sub     r8,qword ptr [r14+5340h]
fffff803`21cfeaee 4903d0          add     rdx,r8
fffff803`21cfeaf1 4903c8          add     rcx,r8
fffff803`21cfeaf4 48895648        mov     qword ptr [rsi+48h],rdx
fffff803`21cfeaf8 baffffffff      mov     edx,0FFFFFFFFh
fffff803`21cfeafd 483bca          cmp     rcx,rdx
fffff803`21cfeb00 0f87a8030000    ja      nt!IopfCompleteRequest+0x13c8 (fffff803`21cfeeae)

nt!IopfCompleteRequest+0x1010:
fffff803`21cfeb06 f646020e        test    byte ptr [rsi+2],0Eh
fffff803`21cfeb0a 894e50          mov     dword ptr [rsi+50h],ecx
fffff803`21cfeb0d 0f854d020000    jne     nt!IopfCompleteRequest+0x1270 (fffff803`21cfed60)

nt!IopfCompleteRequest+0x101d:
fffff803`21cfeb13 488b4567        mov     rax,qword ptr [rbp+67h]
fffff803`21cfeb17 49898640530000  mov     qword ptr [r14+5340h],rax
fffff803`21cfeb1e fb              sti
fffff803`21cfeb1f 4d896e08        mov     qword ptr [r14+8],r13
fffff803`21cfeb23 41c6858401000002 mov     byte ptr [r13+184h],2
fffff803`21cfeb2b 488bd6          mov     rdx,rsi
fffff803`21cfeb2e 498bce          mov     rcx,r14
fffff803`21cfeb31 c6868302000020  mov     byte ptr [rsi+283h],20h
fffff803`21cfeb38 4488a686010000  mov     byte ptr [rsi+186h],r12b
fffff803`21cfeb3f e8bc6fffff      call    nt!KiQueueReadyThread (fffff803`21cf5b00)
fffff803`21cfeb44 450fb6c4        movzx   r8d,r12b
fffff803`21cfeb48 498bd5          mov     rdx,r13
fffff803`21cfeb4b 488bce          mov     rcx,rsi
fffff803`21cfeb4e e8dd74fcff      call    nt!KiSwapContext (fffff803`21cc6030)
fffff803`21cfeb53 84c0            test    al,al
fffff803`21cfeb55 0f84a8f5ffff    je      nt!IopfCompleteRequest+0x605 (fffff803`21cfe103)

nt!IopfCompleteRequest+0x1065:
fffff803`21cfeb5b e9e256f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xae49 (fffff803`21c84242)

nt!IopfCompleteRequest+0x106a:
fffff803`21cfeb61 4c8b4728        mov     r8,qword ptr [rdi+28h]
fffff803`21cfeb65 0fb65701        movzx   edx,byte ptr [rdi+1]
fffff803`21cfeb69 488bcb          mov     rcx,rbx
fffff803`21cfeb6c 40b601          mov     sil,1
fffff803`21cfeb6f e89cbe0a00      call    nt!PoDeviceReleaseIrp (fffff803`21daaa10)
fffff803`21cfeb74 e9ebefffff      jmp     nt!IopfCompleteRequest+0x64 (fffff803`21cfdb64)

nt!IopfCompleteRequest+0x1082:
fffff803`21cfeb7a b903000000      mov     ecx,3
fffff803`21cfeb7f cd29            int     29h

nt!IopfCompleteRequest+0x1089:
fffff803`21cfeb81 488bb7b8000000  mov     rsi,qword ptr [rdi+0B8h]
fffff803`21cfeb88 4533e4          xor     r12d,r12d
fffff803`21cfeb8b f00fba2e07      lock bts dword ptr [rsi],7
fffff803`21cfeb90 0f820f58f8ff    jb      nt! ?? ::FNODOBFM::`string'+0xafc0 (fffff803`21c843a5)

nt!IopfCompleteRequest+0x109e:
fffff803`21cfeb96 8b8634020000    mov     eax,dword ptr [rsi+234h]
fffff803`21cfeb9c a807            test    al,7
fffff803`21cfeb9e 0f8506020000    jne     nt!IopfCompleteRequest+0x12ba (fffff803`21cfedaa)

nt!IopfCompleteRequest+0x10ac:
fffff803`21cfeba4 b808000000      mov     eax,8
fffff803`21cfeba9 f00fc18634020000 lock xadd dword ptr [rsi+234h],eax
fffff803`21cfebb1 f081267fffffff  lock and dword ptr [rsi],0FFFFFF7Fh
fffff803`21cfebb8 c6878401000006  mov     byte ptr [rdi+184h],6
fffff803`21cfebbf 4881c7d8000000  add     rdi,0D8h
fffff803`21cfebc6 0f0d0ddb712400  prefetchw [nt!KiStackInSwapListHead (fffff803`21f45da8)]
fffff803`21cfebcd 488b05d4712400  mov     rax,qword ptr [nt!KiStackInSwapListHead (fffff803`21f45da8)]

nt!IopfCompleteRequest+0x10dc:
fffff803`21cfebd4 488907          mov     qword ptr [rdi],rax
fffff803`21cfebd7 488bc8          mov     rcx,rax
fffff803`21cfebda f0480fb13dc5712400 lock cmpxchg qword ptr [nt!KiStackInSwapListHead (fffff803`21f45da8)],rdi
fffff803`21cfebe3 483bc1          cmp     rax,rcx
fffff803`21cfebe6 75ec            jne     nt!IopfCompleteRequest+0x10dc (fffff803`21cfebd4)

nt!IopfCompleteRequest+0x10f0:
fffff803`21cfebe8 4885c0          test    rax,rax
fffff803`21cfebeb 0f8577f8ffff    jne     nt!IopfCompleteRequest+0x96a (fffff803`21cfe468)

nt!IopfCompleteRequest+0x10f9:
fffff803`21cfebf1 8d500a          lea     edx,[rax+0Ah]
fffff803`21cfebf4 488d0d85712400  lea     rcx,[nt!KiSwapEvent (fffff803`21f45d80)]
fffff803`21cfebfb 4533c0          xor     r8d,r8d
fffff803`21cfebfe e87da20000      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21cfec03 e960f8ffff      jmp     nt!IopfCompleteRequest+0x96a (fffff803`21cfe468)

nt!IopfCompleteRequest+0x1110:
fffff803`21cfec08 488b9fb8000000  mov     rbx,qword ptr [rdi+0B8h]
fffff803`21cfec0f 4533ff          xor     r15d,r15d
fffff803`21cfec12 f00fba2b07      lock bts dword ptr [rbx],7
fffff803`21cfec17 0f82c959f8ff    jb      nt! ?? ::FNODOBFM::`string'+0xb220 (fffff803`21c845e6)

nt!IopfCompleteRequest+0x1125:
fffff803`21cfec1d 8b8334020000    mov     eax,dword ptr [rbx+234h]
fffff803`21cfec23 a807            test    al,7
fffff803`21cfec25 0f85e3000000    jne     nt!IopfCompleteRequest+0x121e (fffff803`21cfed0e)

nt!IopfCompleteRequest+0x1133:
fffff803`21cfec2b b808000000      mov     eax,8
fffff803`21cfec30 f00fc18334020000 lock xadd dword ptr [rbx+234h],eax
fffff803`21cfec38 f081237fffffff  lock and dword ptr [rbx],0FFFFFF7Fh
fffff803`21cfec3f c6878401000006  mov     byte ptr [rdi+184h],6
fffff803`21cfec46 4881c7d8000000  add     rdi,0D8h
fffff803`21cfec4d 0f0d0d54712400  prefetchw [nt!KiStackInSwapListHead (fffff803`21f45da8)]
fffff803`21cfec54 488b054d712400  mov     rax,qword ptr [nt!KiStackInSwapListHead (fffff803`21f45da8)]

nt!IopfCompleteRequest+0x1163:
fffff803`21cfec5b 488907          mov     qword ptr [rdi],rax
fffff803`21cfec5e 488bc8          mov     rcx,rax
fffff803`21cfec61 f0480fb13d3e712400 lock cmpxchg qword ptr [nt!KiStackInSwapListHead (fffff803`21f45da8)],rdi
fffff803`21cfec6a 483bc1          cmp     rax,rcx
fffff803`21cfec6d 75ec            jne     nt!IopfCompleteRequest+0x1163 (fffff803`21cfec5b)

nt!IopfCompleteRequest+0x1177:
fffff803`21cfec6f 4885c0          test    rax,rax
fffff803`21cfec72 0f8541f2ffff    jne     nt!IopfCompleteRequest+0x3b9 (fffff803`21cfdeb9)

nt!IopfCompleteRequest+0x1180:
fffff803`21cfec78 8d500a          lea     edx,[rax+0Ah]
fffff803`21cfec7b 488d0dfe702400  lea     rcx,[nt!KiSwapEvent (fffff803`21f45d80)]
fffff803`21cfec82 4533c0          xor     r8d,r8d
fffff803`21cfec85 e8f6a10000      call    nt!KeSetEvent (fffff803`21d08e80)
fffff803`21cfec8a e92af2ffff      jmp     nt!IopfCompleteRequest+0x3b9 (fffff803`21cfdeb9)

nt!IopfCompleteRequest+0x11a0:
fffff803`21cfec90 41ffc6          inc     r14d
fffff803`21cfec93 448535b2b72c00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r14d
fffff803`21cfec9a 0f84f758f8ff    je      nt! ?? ::FNODOBFM::`string'+0xb1d1 (fffff803`21c84597)

nt!IopfCompleteRequest+0x11b0:
fffff803`21cfeca0 f390            pause

nt!IopfCompleteRequest+0x11b2:
fffff803`21cfeca2 488b4740        mov     rax,qword ptr [rdi+40h]
fffff803`21cfeca6 4885c0          test    rax,rax
fffff803`21cfeca9 75e5            jne     nt!IopfCompleteRequest+0x11a0 (fffff803`21cfec90)

nt!IopfCompleteRequest+0x11bb:
fffff803`21cfecab e9eaf0ffff      jmp     nt!IopfCompleteRequest+0x29a (fffff803`21cfdd9a)

nt!IopfCompleteRequest+0x11c0:
fffff803`21cfecb0 0fb68742020000  movzx   eax,byte ptr [rdi+242h]
fffff803`21cfecb7 e97ef0ffff      jmp     nt!IopfCompleteRequest+0x23a (fffff803`21cfdd3a)

nt!IopfCompleteRequest+0x11cc:
fffff803`21cfecbc b903000000      mov     ecx,3
fffff803`21cfecc1 cd29            int     29h

nt!IopfCompleteRequest+0x11d3:
fffff803`21cfecc3 4c8d93a8000000  lea     r10,[rbx+0A8h]
fffff803`21cfecca 85c0            test    eax,eax
fffff803`21cfeccc 0f85e6f6ffff    jne     nt!IopfCompleteRequest+0x8ba (fffff803`21cfe3b8)

nt!IopfCompleteRequest+0x11e2:
fffff803`21cfecd2 80e1fe          and     cl,0FEh
fffff803`21cfecd5 41b601          mov     r14b,1
fffff803`21cfecd8 80c902          or      cl,2
fffff803`21cfecdb 884e70          mov     byte ptr [rsi+70h],cl
fffff803`21cfecde 4c8996c8000000  mov     qword ptr [rsi+0C8h],r10
fffff803`21cfece5 4188442411      mov     byte ptr [r12+11h],al
fffff803`21cfecea e9c9f6ffff      jmp     nt!IopfCompleteRequest+0x8ba (fffff803`21cfe3b8)

nt!IopfCompleteRequest+0x1200:
fffff803`21cfecf0 ffc7            inc     edi
fffff803`21cfecf2 853d54b72c00    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],edi
fffff803`21cfecf8 0f842059f8ff    je      nt! ?? ::FNODOBFM::`string'+0xb258 (fffff803`21c8461e)

nt!IopfCompleteRequest+0x120e:
fffff803`21cfecfe f390            pause

nt!IopfCompleteRequest+0x1210:
fffff803`21cfed00 488b4630        mov     rax,qword ptr [rsi+30h]
fffff803`21cfed04 4885c0          test    rax,rax
fffff803`21cfed07 75e7            jne     nt!IopfCompleteRequest+0x1200 (fffff803`21cfecf0)

nt!IopfCompleteRequest+0x1219:
fffff803`21cfed09 e937fbffff      jmp     nt!IopfCompleteRequest+0xd45 (fffff803`21cfe845)

nt!IopfCompleteRequest+0x121e:
fffff803`21cfed0e 488bd3          mov     rdx,rbx
fffff803`21cfed11 488bcf          mov     rcx,rdi
fffff803`21cfed14 e8b7a7f8ff      call    nt!KiRequestProcessInSwap (fffff803`21c894d0)
fffff803`21cfed19 e99bf1ffff      jmp     nt!IopfCompleteRequest+0x3b9 (fffff803`21cfdeb9)

nt!IopfCompleteRequest+0x122e:
fffff803`21cfed1e 498bcf          mov     rcx,r15
fffff803`21cfed21 e89ae5faff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21cfed26 e9b9efffff      jmp     nt!IopfCompleteRequest+0x1e4 (fffff803`21cfdce4)

nt!IopfCompleteRequest+0x123b:
fffff803`21cfed2b 488b4338        mov     rax,qword ptr [rbx+38h]
fffff803`21cfed2f 4883f801        cmp     rax,1
fffff803`21cfed33 0f86fceeffff    jbe     nt!IopfCompleteRequest+0x135 (fffff803`21cfdc35)

nt!IopfCompleteRequest+0x1249:
fffff803`21cfed39 483bc6          cmp     rax,rsi
fffff803`21cfed3c 0f8557010000    jne     nt!IopfCompleteRequest+0x13b3 (fffff803`21cfee99)

nt!IopfCompleteRequest+0x1252:
fffff803`21cfed42 488b83a0000000  mov     rax,qword ptr [rbx+0A0h]
fffff803`21cfed49 4c89aba0000000  mov     qword ptr [rbx+0A0h],r13
fffff803`21cfed50 488945cf        mov     qword ptr [rbp-31h],rax
fffff803`21cfed54 e9dceeffff      jmp     nt!IopfCompleteRequest+0x135 (fffff803`21cfdc35)

nt!IopfCompleteRequest+0x1269:
fffff803`21cfed59 b903000000      mov     ecx,3
fffff803`21cfed5e cd29            int     29h

nt!IopfCompleteRequest+0x1270:
fffff803`21cfed60 488b4e68        mov     rcx,qword ptr [rsi+68h]
fffff803`21cfed64 4885c9          test    rcx,rcx
fffff803`21cfed67 0f85af54f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xae23 (fffff803`21c8421c)

nt!IopfCompleteRequest+0x127d:
fffff803`21cfed6d f6460208        test    byte ptr [rsi+2],8
fffff803`21cfed71 7424            je      nt!IopfCompleteRequest+0x12a7 (fffff803`21cfed97)

nt!IopfCompleteRequest+0x1283:
fffff803`21cfed73 498b8638530000  mov     rax,qword ptr [r14+5338h]
fffff803`21cfed7a 488b8e38020000  mov     rcx,qword ptr [rsi+238h]
fffff803`21cfed81 488b5050        mov     rdx,qword ptr [rax+50h]
fffff803`21cfed85 488bc2          mov     rax,rdx
fffff803`21cfed88 4823c1          and     rax,rcx
fffff803`21cfed8b 483bc2          cmp     rax,rdx
fffff803`21cfed8e 7407            je      nt!IopfCompleteRequest+0x12a7 (fffff803`21cfed97)

nt!IopfCompleteRequest+0x12a0:
fffff803`21cfed90 4d018650530000  add     qword ptr [r14+5350h],r8

nt!IopfCompleteRequest+0x12a7:
fffff803`21cfed97 4883be6801000000 cmp     qword ptr [rsi+168h],0
fffff803`21cfed9f 0f846efdffff    je      nt!IopfCompleteRequest+0x101d (fffff803`21cfeb13)

nt!IopfCompleteRequest+0x12b5:
fffff803`21cfeda5 e98a54f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xae3b (fffff803`21c84234)

nt!IopfCompleteRequest+0x12ba:
fffff803`21cfedaa 488bd6          mov     rdx,rsi
fffff803`21cfedad 488bcf          mov     rcx,rdi
fffff803`21cfedb0 e81ba7f8ff      call    nt!KiRequestProcessInSwap (fffff803`21c894d0)
fffff803`21cfedb5 e9aef6ffff      jmp     nt!IopfCompleteRequest+0x96a (fffff803`21cfe468)

nt!IopfCompleteRequest+0x12ca:
fffff803`21cfedba 448b6d67        mov     r13d,dword ptr [rbp+67h]

nt!IopfCompleteRequest+0x12ce:
fffff803`21cfedbe 41ffc5          inc     r13d
fffff803`21cfedc1 44852d84b62c00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r13d
fffff803`21cfedc8 0f84e557f8ff    je      nt! ?? ::FNODOBFM::`string'+0xb1ed (fffff803`21c845b3)

nt!IopfCompleteRequest+0x12de:
fffff803`21cfedce f390            pause

nt!IopfCompleteRequest+0x12e0:
fffff803`21cfedd0 418b0424        mov     eax,dword ptr [r12]
fffff803`21cfedd4 84c0            test    al,al
fffff803`21cfedd6 78e6            js      nt!IopfCompleteRequest+0x12ce (fffff803`21cfedbe)

nt!IopfCompleteRequest+0x12e8:
fffff803`21cfedd8 f0410fba2c2407  lock bts dword ptr [r12],7
fffff803`21cfeddf 72dd            jb      nt!IopfCompleteRequest+0x12ce (fffff803`21cfedbe)

nt!IopfCompleteRequest+0x12f1:
fffff803`21cfede1 4c8b6d7f        mov     r13,qword ptr [rbp+7Fh]
fffff803`21cfede5 e95df0ffff      jmp     nt!IopfCompleteRequest+0x347 (fffff803`21cfde47)

nt!IopfCompleteRequest+0x12fa:
fffff803`21cfedea e8d1e4faff      call    nt!KxWaitForSpinLockAndAcquire (fffff803`21cad2c0)
fffff803`21cfedef e943f8ffff      jmp     nt!IopfCompleteRequest+0xb37 (fffff803`21cfe637)

nt!IopfCompleteRequest+0x1304:
fffff803`21cfedf4 488bca          mov     rcx,rdx
fffff803`21cfedf7 e99cfaffff      jmp     nt!IopfCompleteRequest+0xd98 (fffff803`21cfe898)

nt!IopfCompleteRequest+0x130c:
fffff803`21cfedfc 83caff          or      edx,0FFFFFFFFh
fffff803`21cfedff 488bcb          mov     rcx,rbx
fffff803`21cfee02 e8e9480900      call    nt!IopFreeIrpExtension (fffff803`21d936f0)
fffff803`21cfee07 e94ceeffff      jmp     nt!IopfCompleteRequest+0x158 (fffff803`21cfdc58)

nt!IopfCompleteRequest+0x131c:
fffff803`21cfee0c 493bc4          cmp     rax,r12
fffff803`21cfee0f 0f8536f1ffff    jne     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x1325:
fffff803`21cfee15 488b45cf        mov     rax,qword ptr [rbp-31h]
fffff803`21cfee19 488983a0000000  mov     qword ptr [rbx+0A0h],rax
fffff803`21cfee20 e926f1ffff      jmp     nt!IopfCompleteRequest+0x44b (fffff803`21cfdf4b)

nt!IopfCompleteRequest+0x1340:
fffff803`21cfee26 41ffc5          inc     r13d
fffff803`21cfee29 44852d1cb62c00  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r13d
fffff803`21cfee30 0f84ca53f8ff    je      nt! ?? ::FNODOBFM::`string'+0xae07 (fffff803`21c84200)

nt!IopfCompleteRequest+0x1350:
fffff803`21cfee36 f390            pause

nt!IopfCompleteRequest+0x1352:
fffff803`21cfee38 498b4630        mov     rax,qword ptr [r14+30h]
fffff803`21cfee3c 4885c0          test    rax,rax
fffff803`21cfee3f 0f846dfcffff    je      nt!IopfCompleteRequest+0xfbc (fffff803`21cfeab2)

nt!IopfCompleteRequest+0x135f:
fffff803`21cfee45 ebdf            jmp     nt!IopfCompleteRequest+0x1340 (fffff803`21cfee26)

nt!IopfCompleteRequest+0x1361:
fffff803`21cfee47 488b4b68        mov     rcx,qword ptr [rbx+68h]
fffff803`21cfee4b 4885c9          test    rcx,rcx
fffff803`21cfee4e 0f85e557f8ff    jne     nt! ?? ::FNODOBFM::`string'+0xb273 (fffff803`21c84639)

nt!IopfCompleteRequest+0x136e:
fffff803`21cfee54 f6430208        test    byte ptr [rbx+2],8
fffff803`21cfee58 7424            je      nt!IopfCompleteRequest+0x1398 (fffff803`21cfee7e)

nt!IopfCompleteRequest+0x1374:
fffff803`21cfee5a 488b8638530000  mov     rax,qword ptr [rsi+5338h]
fffff803`21cfee61 488b8b38020000  mov     rcx,qword ptr [rbx+238h]
fffff803`21cfee68 488b5050        mov     rdx,qword ptr [rax+50h]
fffff803`21cfee6c 488bc2          mov     rax,rdx
fffff803`21cfee6f 4823c1          and     rax,rcx
fffff803`21cfee72 483bc2          cmp     rax,rdx
fffff803`21cfee75 7407            je      nt!IopfCompleteRequest+0x1398 (fffff803`21cfee7e)

nt!IopfCompleteRequest+0x1391:
fffff803`21cfee77 4c018650530000  add     qword ptr [rsi+5350h],r8

nt!IopfCompleteRequest+0x1398:
fffff803`21cfee7e 4883bb6801000000 cmp     qword ptr [rbx+168h],0
fffff803`21cfee86 0f8419faffff    je      nt!IopfCompleteRequest+0xda5 (fffff803`21cfe8a5)

nt!IopfCompleteRequest+0x13a6:
fffff803`21cfee8c 488bcb          mov     rcx,rbx
fffff803`21cfee8f e8ac1d0f00      call    nt!KiEndCounterAccumulation (fffff803`21df0c40)
fffff803`21cfee94 e90cfaffff      jmp     nt!IopfCompleteRequest+0xda5 (fffff803`21cfe8a5)

nt!IopfCompleteRequest+0x13b3:
fffff803`21cfee99 493bc4          cmp     rax,r12
fffff803`21cfee9c 0f84a0feffff    je      nt!IopfCompleteRequest+0x1252 (fffff803`21cfed42)

nt!IopfCompleteRequest+0x13bc:
fffff803`21cfeea2 c74330790200c0  mov     dword ptr [rbx+30h],0C0000279h
fffff803`21cfeea9 e987edffff      jmp     nt!IopfCompleteRequest+0x135 (fffff803`21cfdc35)

nt!IopfCompleteRequest+0x13c8:
fffff803`21cfeeae 488bca          mov     rcx,rdx
fffff803`21cfeeb1 e950fcffff      jmp     nt!IopfCompleteRequest+0x1010 (fffff803`21cfeb06)

nt!IopfCompleteRequest+0x13d0:
fffff803`21cfeeb6 e805d60e00      call    nt!KiAcquireSpinLockInstrumented (fffff803`21dec4c0)
fffff803`21cfeebb e977f7ffff      jmp     nt!IopfCompleteRequest+0xb37 (fffff803`21cfe637)

nt!IopfCompleteRequest+0x13da:
fffff803`21cfeec0 448b6567        mov     r12d,dword ptr [rbp+67h]
fffff803`21cfeec4 e93e52f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xacf0 (fffff803`21c84107)

nt!IopfCompleteRequest+0x13e3:
fffff803`21cfeec9 f390            pause
fffff803`21cfeecb e95d52f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xad16 (fffff803`21c8412d)

nt!IopfCompleteRequest+0x13ea:
fffff803`21cfeed0 8b4d6f          mov     ecx,dword ptr [rbp+6Fh]
fffff803`21cfeed3 e9f0f1ffff      jmp     nt!IopfCompleteRequest+0x5ca (fffff803`21cfe0c8)

nt!IopfCompleteRequest+0x13f2:
fffff803`21cfeed8 40b701          mov     dil,1
fffff803`21cfeedb e9a9f5ffff      jmp     nt!IopfCompleteRequest+0x98b (fffff803`21cfe489)

nt!IopfCompleteRequest+0x13fa:
fffff803`21cfeee0 f390            pause
fffff803`21cfeee2 e96654f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xaf5c (fffff803`21c8434d)

nt!IopfCompleteRequest+0x1401:
fffff803`21cfeee7 f390            pause
fffff803`21cfeee9 e9dd54f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xafe6 (fffff803`21c843cb)

nt!IopfCompleteRequest+0x1408:
fffff803`21cfeeee f390            pause
fffff803`21cfeef0 e91856f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xb143 (fffff803`21c8450d)

nt!IopfCompleteRequest+0x140f:
fffff803`21cfeef5 4c8b5d7f        mov     r11,qword ptr [rbp+7Fh]
fffff803`21cfeef9 e94956f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xb181 (fffff803`21c84547)

nt!IopfCompleteRequest+0x1418:
fffff803`21cfeefe 41c6470601      mov     byte ptr [r15+6],1
fffff803`21cfef03 e97ef5ffff      jmp     nt!IopfCompleteRequest+0x988 (fffff803`21cfe486)

nt!IopfCompleteRequest+0x1422:
fffff803`21cfef08 f390            pause
fffff803`21cfef0a e9fd56f8ff      jmp     nt! ?? ::FNODOBFM::`string'+0xb246 (fffff803`21c8460c)

nt! ?? ::FNODOBFM::`string'+0x18b1e:
fffff803`21dc04fc b903000000      mov     ecx,3
fffff803`21dc0501 cd29            int     29h

nt! ?? ::FNODOBFM::`string'+0x18b25:
fffff803`21dc0503 4403ff          add     r15d,edi
fffff803`21dc0506 44853d3f9f2000  test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],r15d
fffff803`21dc050d 0f85ef43ecff    jne     nt!KiScanReadyThreads+0x226 (fffff803`21c84902)

nt! ?? ::FNODOBFM::`string'+0x18b35:
fffff803`21dc0513 8b05579b2000    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21dc0519 a840            test    al,40h
fffff803`21dc051b 0f84e143ecff    je      nt!KiScanReadyThreads+0x226 (fffff803`21c84902)

nt! ?? ::FNODOBFM::`string'+0x18b43:
fffff803`21dc0521 418bcf          mov     ecx,r15d
fffff803`21dc0524 e89bae0100      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x18b4b:
fffff803`21dc0529 488b4640        mov     rax,qword ptr [rsi+40h]
fffff803`21dc052d 4885c0          test    rax,rax
fffff803`21dc0530 75d1            jne     nt! ?? ::FNODOBFM::`string'+0x18b25 (fffff803`21dc0503)

nt! ?? ::FNODOBFM::`string'+0x18b54:
fffff803`21dc0532 e92343ecff      jmp     nt!KiScanReadyThreads+0x17e (fffff803`21c8485a)

nt! ?? ::FNODOBFM::`string'+0x18b59:
fffff803`21dc0537 03f7            add     esi,edi
fffff803`21dc0539 85350d9f2000    test    dword ptr [nt!HvlLongSpinCountMask (fffff803`21fca44c)],esi
fffff803`21dc053f 0f85db43ecff    jne     nt!KiScanReadyThreads+0x244 (fffff803`21c84920)

nt! ?? ::FNODOBFM::`string'+0x18b67:
fffff803`21dc0545 8b05259b2000    mov     eax,dword ptr [nt!HvlEnlightenments (fffff803`21fca070)]
fffff803`21dc054b a840            test    al,40h
fffff803`21dc054d 0f84cd43ecff    je      nt!KiScanReadyThreads+0x244 (fffff803`21c84920)

nt! ?? ::FNODOBFM::`string'+0x18b75:
fffff803`21dc0553 8bce            mov     ecx,esi
fffff803`21dc0555 e86aae0100      call    nt!HvlNotifyLongSpinWait (fffff803`21ddb3c4)

nt! ?? ::FNODOBFM::`string'+0x18b7c:
fffff803`21dc055a 488b4330        mov     rax,qword ptr [rbx+30h]
fffff803`21dc055e 4885c0          test    rax,rax
fffff803`21dc0561 75d4            jne     nt! ?? ::FNODOBFM::`string'+0x18b59 (fffff803`21dc0537)

nt! ?? ::FNODOBFM::`string'+0x18b85:
fffff803`21dc0563 e98343ecff      jmp     nt!KiScanReadyThreads+0x20f (fffff803`21c848eb)

nt! ?? ::FNODOBFM::`string'+0x18b8a:
fffff803`21dc0568 03ef            add     ebp,edi
fffff803`21dc056a 83fd0e          cmp     ebp,0Eh
fffff803`21dc056d 0f47ef          cmova   ebp,edi
fffff803`21dc0570 89ab9c500000    mov     dword ptr [rbx+509Ch],ebp
fffff803`21dc0576 e92642ecff      jmp     nt!KiScanReadyThreads+0xc5 (fffff803`21c847a1)
