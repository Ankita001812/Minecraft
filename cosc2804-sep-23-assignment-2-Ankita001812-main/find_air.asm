.ORIG x3000

TRAP 0x31

ADD R1, R1, #-1


AND R6, R6, #0
AND R4, R4, #0


L
TRAP 0x33
ADD R4, R3, #0
BRz DONE
ADD R0, R0, #1
ADD R6, R6, #1
BRzp L






DONE
TRAP 0x36
HALT



HALT
.END