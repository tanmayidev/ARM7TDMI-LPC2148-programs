;Program for multiple register data exchange using memory
		AREA	MULREG_XCHG, CODE, READONLY
ENTRY
		MOV		R0, #0x40000000			;Memory pointer
		LDMIA	R0!, {R1-R5}			;Get data to R1, R2, R3
		
		MOV		R0, #0x40000038
		STMIA	R0!, {R1-R5}
		
		MOV		R0, #0x4000001C
		LDMIA	R0!, {R1-R5}
		
		MOV		R0, #0x40000000
		STMIA	R0!, {R1-R5}
		
		MOV		R0, #0x40000038
		LDMIA	R0!, {R1-R5}
		
		MOV		R0, #0x4000001C
		STMIA	R0!, {R1-R5}			;R1, R2, R3, R4 AND R5 to memory
		
		END