;ARM_NULL_STRING
;Program to find length of a string
		AREA	STRING, CODE, READONLY
		ENTRY
		
		MOV		R0, #00
		LDR		R1, =TEXT
		
BACK	LDRB	R2, [R1], #01
		CMP		R2, #'0'            ; 0 indicate end of string
		BEQ		STOP
		ADD		R0, R0, #01
		B		BACK
STOP
		MOV		R3, #0x40000000      ;Result location
		STR		R0, [R3]
		SWI		&11
TEXT	DCB		"ELECTRONICS 0"      ;12 including space in HEX it's 0C
		END
		