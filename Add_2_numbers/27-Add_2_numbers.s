;Program to add two numbers

		AREA	ADDITION, CODE, READONLY
ENTRY
		MOV		R0, #0009		; R0 = 09
		MOV		R1, #005		; R1 = 05
		ADD		R2, R1, R0		; R2 = R1+R0
		
		SWI		&11
		
		END