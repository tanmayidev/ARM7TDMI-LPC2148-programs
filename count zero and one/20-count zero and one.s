;Program to count number of 0's and 1's
		AREA	ZEROONE, CODE, READONLY
ENTRY	
		MOV		R2, #00		;counter for ones
		MOV 	R3, #00		;counter for zeroS
		MOV		R7, #01
		LDR		R6, =VALUE
		
LOOP1	MOV		R1, #32
		LDR		R0, [R6]
		
LOOP2	MOVS	R0,R0,ROR #01
		BHI		ONES
		ADD		R3, R3, #01
		B		LOOP3
		
ONES	ADD		R2, R2, #01

LOOP3	SUBS	R1, R1, #01
		BNE		LOOP2
		SUBS	R7, R7, #01
		CMP		R7, #00
		BNE 	LOOP1
		NOP
		NOP
		NOP
		SWI		&11
		
VALUE	DCD		0x0000000F
	END
		
		; In this example input is 0x0000000F, it means 28 zero's and 4 one's
		; R3 = 1C (28 in decimal) and R2 = 4