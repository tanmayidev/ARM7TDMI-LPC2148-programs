;Program to convert ASCII to HEX

		AREA	ASCII_TO_HEX, CODE, READONLY
ENTRY

MAIN
		LDR		R0, =VALUE1
		LDR		R1, [R0]
		MOV		R2, R1
		CMP		R1, #0x39
		BHI		GREAT
		SUB		R1, R1, #0x30		;SUB if data <39
		BL		NEXT
GREAT
		SUB		R1, R1, #0x37		;SUB 37th if data > 39
NEXT
		LDR		R4, =0x40000000
		STR		R1, [R4]
STOP	B		STOP

		AREA	DATA, CODE 
VALUE1	DCD		&35
		END
			