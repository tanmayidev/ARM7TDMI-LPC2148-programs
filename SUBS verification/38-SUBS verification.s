; Program to verify suffix S Substraction
; PRE cpsr = nzcvqiFt_USER

		AREA	SUBSTRACTION, CODE, READONLY
ENTRY
		MOV		R1, #0x00000001
		SUBS	R1, R1, #1
		
		END
;POST cpsr = nZCvqIFt_USER