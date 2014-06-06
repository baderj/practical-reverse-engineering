mystery9
2D E9 30 48      PUSH.W {R4,R5,R11,LR}
0D F2 08 0B      ADDW R11, SP, #8
09 4D            LDR R5, =byteArray
06 E0            B loc_100E312
loc_100E304
0B 78            LDRB R3, [R1]
5A 5D            LDRB R2, [R3,R5]
63 5D            LDRB R3, [R4,R5]
93 42            CMP R3, R2
04 D1            BNE loc_100E318
01 30            ADDS R0, #1
01 31            ADDS R1, #1
loc_100E312
04 78            LDRB R4, [R0]
00 2C            CMP R4, #0
F5 D1            BNE loc_100E304
loc_100E318
0B 78            LDRB R3, [R1]
5A 5D            LDRB R2, [R3,R5]
03 78            LDRB R3, [R0]
5B 5D            LDRB R3, [R3,R5]
98 1A            SUBS R0, R3, R2
BD E8 30 88      POP.W {R4,R5,R11,PC}
; End of function mystery9
