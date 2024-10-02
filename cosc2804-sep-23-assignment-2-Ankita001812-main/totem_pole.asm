.ORIG x3000
TRAP 0x31

ADD R2, R2, #2

; getting the height
TRAP 0x35
ADD R1, R1 #1


AND R3, R3, #0
ADD R3, R3, #1
LD R5, HEIGHT

L
TRAP 0x34
ADD R3, R3, #1
ADD R1, R1, #1
ADD R5, R5, #-1
BRp L


HALT
HEIGHT .FILL #20 ; Note: Please do not change the name of this constant
.END