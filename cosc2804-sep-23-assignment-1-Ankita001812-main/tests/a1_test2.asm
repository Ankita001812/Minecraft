; This test program should create a rectangular sheet of blocks,
; with one corner at (-8, 100, -5) and another at (2, 100, -3). It
; should have an x-width of 11, a z-width of 3, and a height of 1.

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
Y_START .FILL #100
Z_START .FILL #-5
X_END .FILL #2
Y_END .FILL #100
Z_END .FILL #-3
.END
