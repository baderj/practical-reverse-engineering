Flow analysis was incomplete, some code may be missing
nt!IopInitializeBootDrivers:
fffff803`d9f7e100 0010            add     byte ptr [rax],dl
fffff803`d9f7e102 0000            add     byte ptr [rax],al
fffff803`d9f7e104 0000            add     byte ptr [rax],al
fffff803`d9f7e106 0000            add     byte ptr [rax],al
fffff803`d9f7e108 01c0            add     eax,eax
fffff803`d9f7e10a b209            mov     dl,9
fffff803`d9f7e10c a0f8ffff4d6d537401 mov   al,byte ptr [0174536D4DFFFFF8h]
fffff803`d9f7e115 0000            add     byte ptr [rax],al
fffff803`d9f7e117 800010          add     byte ptr [rax],10h
fffff803`d9f7e11a 0000            add     byte ptr [rax],al
fffff803`d9f7e11c 0000            add     byte ptr [rax],al
fffff803`d9f7e11e 0000            add     byte ptr [rax],al
fffff803`d9f7e120 0100            add     dword ptr [rax],eax
fffff803`d9f7e122 0000            add     byte ptr [rax],al
fffff803`d9f7e124 0000            add     byte ptr [rax],al
fffff803`d9f7e126 0000            add     byte ptr [rax],al
fffff803`d9f7e128 0000            add     byte ptr [rax],al
fffff803`d9f7e12a 0000            add     byte ptr [rax],al
fffff803`d9f7e12c 0000            add     byte ptr [rax],al
fffff803`d9f7e12e 0000            add     byte ptr [rax],al
fffff803`d9f7e130 0000            add     byte ptr [rax],al
fffff803`d9f7e132 0000            add     byte ptr [rax],al
fffff803`d9f7e134 0000            add     byte ptr [rax],al
fffff803`d9f7e136 0000            add     byte ptr [rax],al
fffff803`d9f7e138 0130            add     dword ptr [rax],esi
fffff803`d9f7e13a fb              sti
fffff803`d9f7e13b 19a0f8ffff43    sbb     dword ptr [rax+43FFFFF8h],esp
fffff803`d9f7e141 4d3136          xor     qword ptr [r14],r14
fffff803`d9f7e144 0500000000      add     eax,0
fffff803`d9f7e149 1000            adc     byte ptr [rax],al
fffff803`d9f7e14b 0000            add     byte ptr [rax],al
fffff803`d9f7e14d 0000            add     byte ptr [rax],al
fffff803`d9f7e14f 0001            add     byte ptr [rcx],al
fffff803`d9f7e151 f0240e          lock and al,0Eh
fffff803`d9f7e154 a0f8ffff4f624e6d09 mov   al,byte ptr [096D4E624FFFFFF8h]
fffff803`d9f7e15d 0000            add     byte ptr [rax],al
fffff803`d9f7e15f 0020            add     byte ptr [rax],ah
fffff803`d9f7e161 2000            and     byte ptr [rax],al
fffff803`d9f7e163 0000            add     byte ptr [rax],al
fffff803`d9f7e165 0000            add     byte ptr [rax],al
fffff803`d9f7e167 0001            add     byte ptr [rcx],al
fffff803`d9f7e169 0000            add     byte ptr [rax],al
fffff803`d9f7e16b 0000            add     byte ptr [rax],al
fffff803`d9f7e16d 0000            add     byte ptr [rax],al
fffff803`d9f7e16f 0000            add     byte ptr [rax],al
fffff803`d9f7e171 0000            add     byte ptr [rax],al
fffff803`d9f7e173 0000            add     byte ptr [rax],al
fffff803`d9f7e175 0000            add     byte ptr [rax],al
fffff803`d9f7e177 0000            add     byte ptr [rax],al
fffff803`d9f7e179 0000            add     byte ptr [rax],al
fffff803`d9f7e17b 0000            add     byte ptr [rax],al
fffff803`d9f7e17d 0000            add     byte ptr [rax],al
fffff803`d9f7e17f 0000            add     byte ptr [rax],al
fffff803`d9f7e181 107106          adc     byte ptr [rcx+6],dh
fffff803`d9f7e184 a0f8ffff434d333105 mov   al,byte ptr [0531334D43FFFFF8h]
fffff803`d9f7e18d 0000            add     byte ptr [rax],al
fffff803`d9f7e18f 0000            add     byte ptr [rax],al
fffff803`d9f7e191 1000            adc     byte ptr [rax],al
fffff803`d9f7e193 0000            add     byte ptr [rax],al
fffff803`d9f7e195 0000            add     byte ptr [rax],al
fffff803`d9f7e197 0001            add     byte ptr [rcx],al
fffff803`d9f7e199 209712a0f8ff    and     byte ptr [rdi-75FEEh],dl
fffff803`d9f7e19f ff434d          inc     dword ptr [rbx+4Dh]
fffff803`d9f7e1a2 3136            xor     dword ptr [rsi],esi
fffff803`d9f7e1a4 0500000000      add     eax,0
fffff803`d9f7e1a9 1000            adc     byte ptr [rax],al
fffff803`d9f7e1ab 0000            add     byte ptr [rax],al
fffff803`d9f7e1ad 0000            add     byte ptr [rax],al
fffff803`d9f7e1af 0001            add     byte ptr [rcx],al
fffff803`d9f7e1b1 008915a0f8ff    add     byte ptr [rcx-75FEBh],cl
fffff803`d9f7e1b7 ff434d          inc     dword ptr [rbx+4Dh]
fffff803`d9f7e1ba 3331            xor     esi,dword ptr [rcx]
fffff803`d9f7e1bc 0500000000      add     eax,0
fffff803`d9f7e1c1 1000            adc     byte ptr [rax],al
fffff803`d9f7e1c3 0000            add     byte ptr [rax],al
fffff803`d9f7e1c5 0000            add     byte ptr [rax],al
fffff803`d9f7e1c7 0001            add     byte ptr [rcx],al
fffff803`d9f7e1c9 40e30a          jrcxz   nt!IopInitializeBootDrivers+0xd6 (fffff803`d9f7e1d6)

nt!IopInitializeBootDrivers+0xcc:
fffff803`d9f7e1cc a0f8ffff434d416c01 mov   al,byte ptr [016C414D43FFFFF8h]
fffff803`d9f7e1d5 0000            add     byte ptr [rax],al

nt!IopInitializeBootDrivers+0xd6:
fffff803`d9f7e1d6 0000            add     byte ptr [rax],al

nt!IopInitializeBootDrivers+0xd7:
fffff803`d9f7e1d7 0000            add     byte ptr [rax],al
fffff803`d9f7e1d9 1000            adc     byte ptr [rax],al
fffff803`d9f7e1db 0000            add     byte ptr [rax],al
fffff803`d9f7e1dd 0000            add     byte ptr [rax],al
fffff803`d9f7e1df 0001            add     byte ptr [rcx],al
fffff803`d9f7e1e1 0000            add     byte ptr [rax],al
fffff803`d9f7e1e3 0000            add     byte ptr [rax],al
fffff803`d9f7e1e5 0000            add     byte ptr [rax],al
fffff803`d9f7e1e7 0000            add     byte ptr [rax],al
fffff803`d9f7e1e9 0000            add     byte ptr [rax],al
fffff803`d9f7e1eb 0000            add     byte ptr [rax],al
fffff803`d9f7e1ed 0000            add     byte ptr [rax],al
fffff803`d9f7e1ef 0000            add     byte ptr [rax],al
fffff803`d9f7e1f1 0000            add     byte ptr [rax],al
fffff803`d9f7e1f3 0000            add     byte ptr [rax],al
fffff803`d9f7e1f5 0000            add     byte ptr [rax],al
fffff803`d9f7e1f7 0001            add     byte ptr [rcx],al
fffff803`d9f7e1f9 b0ca            mov     al,0CAh
fffff803`d9f7e1fb 18a0f8ffff43    sbb     byte ptr [rax+43FFFFF8h],ah
