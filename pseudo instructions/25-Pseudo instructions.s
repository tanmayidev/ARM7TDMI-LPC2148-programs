; Loading constants
; Loading the constant 0xff00ffff using a MVN instruction

		AREA	PSEUDO_INSTRUCTION, CODE, READONLY
ENTRY
		MVN		R0, #0x00FF0000
		SWI		0x11
		
		END