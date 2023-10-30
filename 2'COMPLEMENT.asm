AREA comp, CODE, READONLY
	ENTRY
    LDR R0, =0X000000001
    MVN R0, R0
	ADD R0, R0, #1
	MOV R1, R0  ; @ Halt the program
	END
