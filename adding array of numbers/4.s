;ADD_ARRAY-OF_16-BIT_NUMBERS
;Program to find the  sum of an array of 16-bit numbers; store the 32-bit result in internal RAM.
;Program to add array of 16-bit numbers
		AREA	ADDARRAY, CODE, READONLY
		ENTRY
		
		MOV		R5, #06              ;Counter initialize seven numbers
		MOV		R0, #00
		MOV		R6, #0x40000000
		LDRH	R1, [R6]			 ;start address of data for 16-bit data; LDRH means load half i.e., 16-bit data

LOOP	ADD 	R6, R6, #04
		LDRH	R2, [R6]
		ADD		R1, R2
		SUBS	R5, R5, #01
		CMP		R5, #00            ; is R5==0 ?
		BNE		LOOP
		
		MOV		R4, #0x4000001C
		STR		R1, [R4]
		SWI		&11
		
		END
			
// give the inputs at memory locations 0x40000000, 0x40000004, ..., 0x40000018
// notice that only the MSB and its corresponding bit is read as its 16-bit data
// You can store the result at any location , here we have chosen 0x4000001C