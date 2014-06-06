mystery8
2D E9 78 48      PUSH.W {R3–R6,R11,LR}
0D F2 10 0B      ADDW R11, SP, #0x10
0C 4E            LDR R6, =byteArray
09 E0            B loc_100E34C
loc_100E338
05 78            LDRB R5, [R0]
01 3A            SUBS R2, #1
4D B1            CBZ R5, loc_100E352
0B 78            LDRB R3, [R1]
9C 5D            LDRB R4, [R3,R6]
AB 5D            LDRB R3, [R5,R6]
A3 42            CMP R3, R4
04 D1            BNE loc_100E352
01 30            ADDS R0, #1
01 31            ADDS R1, #1
loc_100E34C
00 2A            CMP R2, #0
F3 DC            BGT loc_100E338
01 3A            SUBS R2, #1
loc_100E352
00 2A            CMP R2, #0
01 DA            BGE loc_100E35A
00 20            MOVS R0, #0
04 E0            B locret_100E364
loc_100E35A
0B 78            LDRB R3, [R1]
9A 5D            LDRB R2, [R3,R6]
03 78            LDRB R3, [R0]
9B 5D            LDRB R3, [R3,R6]
98 1A            SUBS R0, R3, R2
locret_100E364
BD E8 78 88      POP.W {R3–R6,R11,PC}
; End of function mystery8
