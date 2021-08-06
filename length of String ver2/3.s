;ARM_LENGTH_OF_A_STRING
;Program to find length of a string

		AREA	STRING, CODE, READONLY
		ENTRY
		
		MOV		R0, #00            ;Result
		LDR		R1, =TEXT
		
BACK	LDRB	R2, [R1], #01
		CMP		R2, #'$'           ; $ indicate end of string
		BEQ		STOP
		ADD		R0, R0, #01
		B		BACK
STOP
		MOV		R3, #0x40000000    ; Result location, open a memory window and verify the answer
		STR		R0, [R3]
		SWI		&11
TEXT	DCB		"COMPUTER SCIENCE AND ENGINEERING$"     ;Total 32 characters in text 32dec = 20hex
		END