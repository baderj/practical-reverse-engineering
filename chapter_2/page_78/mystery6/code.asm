mystery6
2D E9 18 48    PUSH.W {R3,R4,R11,LR}
0D F2 08 0B    ADDW R11, SP, #8
04 68          LDR R4, [R0]
00 22          MOVS R2, #0
00 2C          CMP R4, #0
06 DD          BLE loc_103B3B6
loc_103B3A8
50 F8 04 3F    LDR.W R3, [R0,#4]!
8B 42          CMP R3, R1
06 D0          BEQ loc_103B3BE
01 32          ADDS R2, #1
A2 42          CMP R2, R4
F8 DB          BLT loc_103B3A8
loc_103B3B6
00 20          MOVS R0, #0
00 21          MOVS R1, #0
locret_103B3BA
BD E8 18 88    POP.W {R3,R4,R11,PC}
loc_103B3BE
B2 F1 20 03    SUBS.W R3, R2, #0X20
01 21          MOVS R1, #1
99 40          LSLS R1, R3
01 23          MOVS R3, #1
13 FA 02 F0    LSLS.W R0, R3, R2
F5 E7          B locret_103B3BA
; End of function mystery6
