.ORIG x3000
TRAP 0x31
TRAP 0x36
ADD R0, R0, #4
TRAP 0x36
LD R3, BLOCK_ID
TRAP 0x35
ADD R1, R1 #1
TRAP 0x34
TRAP 0x36
HALT
BLOCK_ID .FILL #41
.END