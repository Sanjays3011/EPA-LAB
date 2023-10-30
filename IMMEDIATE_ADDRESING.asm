AREA Addressing, CODE, READONLY
	ENTRY
	
    MOV R0, #1  ; Move immediate value 01 into R0
    MOV R1, #2  ; Move immediate value 02 into R1
    MOV R2, #3  ; Move immediate value 03 into R2

    SWI 0x11   ; SWI (Software Interrupt) to halt the program

	END
