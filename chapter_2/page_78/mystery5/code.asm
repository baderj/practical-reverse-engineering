01: mystery5
02: 03 46          MOV R3, R0
03: 06 2B          CMP R3, #6
04: 0D D0          BEQ loc_1032596
05: 07 2B          CMP R3, #7
06: 09 D0          BEQ loc_1032592
07: 08 2B          CMP R3, #8
08: 05 D0          BEQ loc_103258E
09: 09 2B          CMP R3, #9
10: 01 D0          BEQ loc_103258A
11: 09 48          LDR R0, =aA ; "A"
12: 70 47          BX LR
13: loc_103258A
14: 07 48          LDR R0, =aB ; "B"
15: 70 47          BX LR
16: loc_103258E
17: 05 48          LDR R0, =ac ; "C"
18: 70 47          BX LR
19: loc_1032592
20: 03 48          LDR R0, =aD ; "D"
21: 70 47          BX LR
22: loc_1032596
23: 01 48          LDR R0, =aE ; "E"
24: 70 47          BX LR
25: ; End of function mystery5
