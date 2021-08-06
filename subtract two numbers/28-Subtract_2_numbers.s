;Program to subtract two numbers
	
		AREA	SUBTRACTION, CODE, READONLY
ENTRY
		MOV		R0, #009		; R0 = 09
		MOV		R1, #002		; R1 = 02
		SUB		R2, R0, R1		; R2 = R0-R1
		
		SWI		&11
		END