mystery7
02 46            MOV R2, R0
08 B9            CBNZ R0, loc_100E1D8
00 20            MOVS R0, #0
70 47            BX LR
loc_100E1D8
90 F9 00 30      LDRSB.W R3, [R0]
02 E0            B loc_100E1E4
loc_100E1DE
01 32            ADDS R2, #1
92 F9 00 30      LDRSB.W R3, [R2]
loc_100E1E4
00 2B            CMP R3, #0
FA D1            BNE loc_100E1DE
10 1A            SUBS R0, R2, R0
6F F3 9F 70      BFC.W R0, #0x1E, #2
70 47            BX LR
; End of function mystery7
