	AREA ADD, CODE, READONLY
	ENTRY
RESULT EQU  R0
    LDR R1, =ARRAY_DATA   ; Load the address of the array into R1
	MOV R2, #0            ; Initialize the sum in R2 to 0
    MOV R4, #5            ; Initialize R4 with the array length
SUM_LOOP
	LDRH R3, [R1], #2      ; Load the next element into R3
    ADD R2, R2, R3        ; Add R3 to the sum in R2
    SUBS R4, R4, #1       ; Decrement the loop counter
    BNE SUM_LOOP          ; Branch if not equal (loop until R4 is 0)

HERE B HERE

	AREA ARRAY_DATA, DATA,READONLY
	DCW 1, 2, 3, 4, 5
	END
