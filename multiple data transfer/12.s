;MULTIPLE_DATA_TRANSFER
		AREA	MULREGISTERS, CODE, READONLY
ENTRY
		MOV		R0, #0x40000000		;Load the Resgister r0 with memory location 0x40000000
		LDMIA	R0!, {R1-R3}		;R0! is the base address of the memory
									; (R1-R3) is the range of registers R1, R2 and R3
		MOV		R0, #0x4000001C		; Load the memory location for storing back to the memory
		STMIA	R0!, {R1-R3}		;R0! base register, (R1-R3) content of R1, R2 and R3
									;transferring back to the base address of the memory
		END