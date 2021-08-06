;ARM ALP PART-XVIII SWAP INSTRUCTION
;SWAP
;Use of swap operation

		AREA	XCHANGE, CODE, READONLY
ENTRY
		MOV		R0, #0x40000000		;Menory Pointer
		
		LDR		R1, [R0]			;Get first number to R1
		
		ADD		R0, R0, #08			;update memory pointer to 0x40000008
		
		SWP		R1, R1, [R0]		;Exchange R1 with memory 0x40000008
		
		MOV		R2, R1				;Result in R2
		
		SUB		R0, R0, #08			;Pointer to 0x40000000
		
		SWP		R2, R2, [R0]		;Exchange R2 with 0x40000000
		
		END