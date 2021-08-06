;Program to compute 6x^2 - 9x +2 for a given x.

		AREA	QUADRATIC, CODE, READONLY
ENTRY
		MOV		R0, #7				; X = 7
		MUL		R1, R0, R0			; R1 = X^2 = 49 DECIMAL = 31 IN HEX
		MOV		R2, #6				; R2 = 6
		MUL		R3, R1, R2			; 6x^2 = 6*49 = 249 in dec = 126 in hex
		MOV		R4, #9				; R4 = 9
		MUL		R5, R4, R0			; R5 = 9X = 9*7 = 63 in dec = 3F in hex
		SUB		R6, R3, R5			; R6 = R3-R5 = 6X^2-9X = 126-3F = E7
		ADD		R7, R6, #2			; R7 = 6X^2-9X+2 = E9
		ALIGN
			
STOP	B		STOP
		SWI 	0x11
		END			;End of program