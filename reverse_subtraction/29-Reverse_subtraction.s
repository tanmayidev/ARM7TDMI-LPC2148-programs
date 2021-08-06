; Program to verify reverse substraction

		AREA	REVSUB, CODE, READONLY
ENTRY
		MOV		R0, #0x00000000		; 0000 0000 0000 0000 0000 0000 0000 0000
		MOV		R1, #0x00000077		; 0000 0000 0000 0000 0000 0000 0111 0111
		RSB		R0, R1, #0			; R0 = 0x0 - R1
									; Result is ffffff89
		END