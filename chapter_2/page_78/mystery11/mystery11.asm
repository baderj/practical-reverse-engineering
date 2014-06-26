mystery11
2D E9 F8 4F    PUSH.W {R3–R11,LR}
0D F2 20 0B    ADDW R11, SP, #0x20
B0 F9 5A 30    LDRSH.W R3, [R0,#0x5A]
07 46          MOV R7, R0
90 46          MOV R8, R2
00 EB 83 03    ADD.W R3, R0, R3,LSL#2
D3 F8 84 A0    LDR.W R10, [R3,#0x84]
7B 8F          LDRH R3, [R7,#0x3A]
89 46          MOV R9, R1
CB B9          CBNZ R3, loc_1018602
B0 F9 5A 40    LDRSH.W R4, [R0,#0x5A]
17 F1 20 02    ADDS.W R2, R7, #0x20
00 EB 44 03    ADD.W R3, R0, R4,LSL#1
B3 F8 5C 50    LDRH.W R5, [R3,#0x5C]
00 EB 84 03    ADD.W R3, R0, R4,LSL#2
D3 F8 84 00    LDR.W R0, [R3,#0x84]
83 89          LDRH R3, [R0,#0xC]
06 6C          LDR R6, [R0,#0x40]
03 EB 45 03    ADD.W R3, R3, R5,LSL#1
9B 19          ADDS R3, R3, R6
1C 78          LDRB R4, [R3]
5B 78          LDRB R3, [R3,#1]
43 EA 04 24    ORR.W R4, R3, R4,LSL#8
43 8A          LDRH R3, [R0,#0x12]
23 40          ANDS R3, R4
99 19          ADDS R1, R3, R6
FD F7 8D FF    BL sub_101651C
loc_1018602
BA 8E          LDRH R2, [R7,#0x34]
BB 6A          LDR R3, [R7,#0x28]
D0 18          ADDS R0, R2, R3
9A F8 02 30    LDRB.W R3, [R10,#2]
0B B1          CBZ R3, loc_1018612
00 22          MOVS R2, #0
00 E0          B loc_1018614
loc_1018612
3A 6A          LDR R2, [R7,#0x20]
loc_1018614
FB 8E          LDRH R3, [R7,#0x36]
B8 F1 00 0F    CMP.W R8, #0
01 D0          BEQ loc_1018620
80 18          ADDS R0, R0, R2
9B 1A          SUBS R3, R3, R2
loc_1018620
C9 F8 00 30    STR.W R3, [R9]
BD E8 F8 8F    POP.W {R3–R11,PC}
; End of function mystery11
