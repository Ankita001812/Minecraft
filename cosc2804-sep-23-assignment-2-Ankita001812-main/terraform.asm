.ORIG x3000
TRAP 0x31

TRAP 0x35

AND R3, R3, #0

; STROED PLAYER'S HEIGHT R3
ADD R1, R1, #-1
ADD R3, R3, R1
NOT R3, R3

; ONE CORNER HEIGHT
TRAP 0x31

ADD R0, R0, #1
TRAP 0x35

ADD R1, R1, R3
BRp REDUCE

ADD R1, R1, #0

REDUCE
ADD R1, R1, #-1
ADD R1, R1, R3
BRp REDUCE



HALT
.END