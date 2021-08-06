;Program for multiple register transfer

		AREA	MULREGTRANS, CODE, READONLY
ENTRY
		MOV		R0, #0x40000000		;memory pointer
		LDMIA	R0!, {R1-R2}		;get data to R1, R2 simultaneously
		MOV		R0, #0x4000001C		;memory pointer for result
		STMIA	R0!, {R1-R2}		;R1, R2 to memory
		
		END