;TWO_32_BIT_ADDITION
;Add two 32-bit numbers and use of store instruction

		AREA	Program, CODE, READONLY
ENTRY
		LDR		R1, Value1			;Get the data from label 'Value1'
		LDR		R2, Value2			;Get the data from label 'Value2'
		ADD		R3, R1, R2			;Addition operation
		MOV		R4, #0X40000000		;Load the memory address to R4
		STR		R3, [R4]			;Store the result from R3 to Memory
		SWI		&11					;Termination
				
Value1	DCD		&12345678			; 32 bit integer(aligned to 4-bytes) to R1
Value2	DCD		&11111111			; 32 bit integer(aligned to 4-bytes) to R2
	
		END
		