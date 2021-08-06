;Shift Right data using LSR Instruction
		AREA	SRIGHT, CODE, READONLY
ENTRY
		MOV		R0, #0x00000040		; Load the data 0000 0000 0000 0000 0000 0000 0100 0000 to R0
		LSR		R1, R0, #0x03		; Shift Right one position
									; 0000 0000 0000 0000 0000 0000 0010 0000 = 0020
									; Shift Right two position
									; 0000 0000 0000 0000 0000 0000 0001 0000 = 0010
									; Shift Right three position
									; 0000 0000 0000 0000 0000 0000 0000 1000 = 0008
		SWI 	0x11
		END