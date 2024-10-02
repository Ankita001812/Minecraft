.ORIG x3000
TRAP 0x31
; GETTING THE ID OF THE POSITION OF PLAYER TILE
ADD R1, R1, #-1
TRAP 0x33
TRAP 0x36
; CHECKING ODD OR EVEN

AND R4, R3, #1
BRz EV

ADD R5, R3, #-10
BRnz OD

LEA R0, GREATER
TRAP 0x30
HALT

EV
LEA R0, EVEN_MSG
TRAP 0x30
HALT


OD
LEA R0, ODD_MSG
TRAP 0x30
HALT

EVEN_MSG .STRINGZ "The block beneath the player tile is even-numbered"
ODD_MSG .STRINGZ	"The block beneath the player tile is odd-numbered and less than 10"
GREATER .STRINGZ	"The block beneath the player tile is odd-numbered and greater than 10"
.END