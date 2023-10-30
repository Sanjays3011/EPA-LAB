;Program to count the number of 1's and 0's
;given 32 bit number
;write an example for such qns
	AREA COUNT_ZEROES_ONES,CODE,READONLY
	ENTRY
MAIN
	LDR R0,=0x4BCD001;LSB=F,MSB=0
	MOV R3,#0x1F;Load a counter for 32 bit...using MOV we can load only upto 255(decimal), so use LDR(hexadecimal)
HERE	
	MOVS R0,R0,LSR #1; logical shift right by 1
	ADDCS R4,R4,#1;CS=carry set i.e, if carry flag is set to 1 R4 is incremented else move to next condition
	ADDCC R5,R5,#1;CC=carry clear i.e, if carry flag is 0 R5 is incremented...CC,CS are condition codes
	SUB R3,R3,#1;reduce counter by 1
	CMP R3,#00
	BNE HERE; Branchnot equal
;LOOP B LOOP ...not must
	END
