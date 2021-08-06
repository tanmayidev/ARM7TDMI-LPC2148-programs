;Program for multiple register transfer using LDMIA
;LDMIA - Load Multiple, Increment After

		AREA	MULREGTRANS, CODE, READONLY
ENTRY
		MOV		R0, #0x40000000		;Memory pointer
		
		LDMIA	R0!, {R1-R3}		;Get data to R1, R2, R3 simultaneously
		
		MOV		R0, #0x4000001C		;Memory pointer for result
		
		STMIA	R0!, {R1-R3}		;R1,R2,R3 to memory
		
		END
		
		