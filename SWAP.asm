;arm assembly program to swap the lower and msb nibble of a 32-bit number.
	AREA SHIFT, CODE, READONLY
	ENTRY
    LDR R0, =0xC000000F
    AND R1, R0, #0x0000000F     ;@ Extract the lower nibble
    AND R2, R0, #0xF0000000     ;@ Extract the most significant nibble
    LSL R1, R1, #28             ; Shift the lower nibble to the left
    LSR R2, R2, #28             ; Shift the most significant nibble to the right
    ORR R3, R1, R2 
	END
