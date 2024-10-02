; This test program should create a rectangular cuboid of blocks,
; with one corner at (3, 80, 1) and another at (10, 81, 6). It
; should have an x-width of 8, a z-width of 6, and a height of 2.

.ORIG x3000
LD R0, X_START
LD R1, Y_START
LD R2, Z_START
LD R3, X_END
LD R4, Y_END
LD R5, Z_END
TRAP 0x37
HALT
X_START .FILL #3
Y_START .FILL #80
Z_START .FILL #1
X_END .FILL #10
Y_END .FILL #81
Z_END .FILL #6
.END
