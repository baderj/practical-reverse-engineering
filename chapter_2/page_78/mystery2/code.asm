01: mystery2
02: 28             B1 CBZ R0, loc_C672
03: 90 F8 63 00    LDRB.W R0, [R0,#0x63]
04: 00 38          SUBS R0, #0
05: 18 BF          IT NE
06: 01 20          MOVNE R0, #1
07: 70 47          BX LR
08: loc_C672
09: 01 20 MOVS R0, #1
10: 70 47 BX LR
11: ; End of function mystery2
