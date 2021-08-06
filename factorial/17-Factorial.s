;Program to find factorial of a number
		AREA	FACTORIAL, CODE, READONLY
ENTRY
		MOV		R0, #08			;GIVEN NUMBER
		MOV		R1, R0
		CMP		R0, #02
		MOV		R2, #01
		BLT		STOP			;Stop, if the number is less than 1
		
REPEAT	SUBS 	R1,R1,#01
		CMP		R1, #01
		BEQ		STOP
		MUL		R2,R0,R1
		MOV		R0,R2			; R0 = 8*7*6*5*4*3*2*1 = 40320 IN DEC = 9D80 IN HEX
		B 		REPEAT
STOP
		SWI		&11
		END