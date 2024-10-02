; This test program result in "Invalid coordinates" being output
; to Minecraft chat, since Y_START > Y_END.

.ORIG x3000
LD R0, X_START
LD R1, Y_START
LD R2, Z_START
LD R3, X_END
LD R4, Y_END
LD R5, Z_END
TRAP 0x37
HALT
X_START .FILL #-8
Y_START .FILL #10
Z_START .FILL #-5
X_END .FILL #2
Y_END .FILL #-10
Z_END .FILL #-3
.END
