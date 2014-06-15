kd> uf RtlValidateUnicodeString
Flow analysis was incomplete, some code may be missing
ntdll!RtlValidateUnicodeString:
77bd489f 8bff            mov     edi,edi
77bd48a1 55              push    ebp
77bd48a2 8bec            mov     ebp,esp
77bd48a4 837d0800        cmp     dword ptr [ebp+8],0
77bd48a8 0f85047b0300    jne     ntdll!RtlValidateUnicodeString+0xb (77c0c3b2)

ntdll!RtlValidateUnicodeString+0x12:
77bd48ae 6800010000      push    100h
77bd48b3 ff750c          push    dword ptr [ebp+0Ch]
77bd48b6 e809000000      call    ntdll!RtlUnicodeStringValidateEx (77bd48c4)
77bd48bb 5d              pop     ebp
77bd48bc c20800          ret     8


kd> u ntdll!RtlValidateUnicodeString+0xb
ntdll!RtlValidateUnicodeString+0xb:
77bd48aa 047b            add     al,7Bh
77bd48ac 0300            add     eax,dword ptr [eax]
77bd48ae 6800010000      push    100h
77bd48b3 ff750c          push    dword ptr [ebp+0Ch]
77bd48b6 e809000000      call    ntdll!RtlUnicodeStringValidateEx (77bd48c4)
77bd48bb 5d              pop     ebp
77bd48bc c20800          ret     8
