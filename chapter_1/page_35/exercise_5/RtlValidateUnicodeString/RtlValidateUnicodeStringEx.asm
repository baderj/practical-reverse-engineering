kd> uf 77bd48c4
Flow analysis was incomplete, some code may be missing
ntdll!RtlUnicodeStringValidateEx:
77bd48c4 8bff            mov     edi,edi
77bd48c6 55              push    ebp
77bd48c7 8bec            mov     ebp,esp
77bd48c9 f7450c00e0ffff  test    dword ptr [ebp+0Ch],0FFFFE000h
77bd48d0 0f857d7a0300    jne     ntdll!RtlUnicodeStringValidateEx+0xe (77c0c353)


ntdll!RtlUnicodeStringValidateEx+0x15:
77bd48d6 ff750c          push    dword ptr [ebp+0Ch]
77bd48d9 8b4d08          mov     ecx,dword ptr [ebp+8]
77bd48dc 68ff7f0000      push    7FFFh
77bd48e1 e809000000      call    ntdll!RtlUnlockMemoryZone+0x6a (77bd48ef)
77bd48e6 5d              pop     ebp
77bd48e7 c20800          ret     8