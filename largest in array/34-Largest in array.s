;Program to find largest of a number

		AREA	LARGE, CODE, READONLY
ENTRY
		MOV		R5, #06			;counter value e.g 7 numbers
		MOV		R1, #0x40000000	;start of data memory
		MOV		R2, #0x4000001C ; result location
		LDR		R3, [R1]		; get first data
LOOP	ADD		R1,R1,#04		; memory pointer update for next number
		LDR		R4, [R1]		; get first number
		CMP		R3, R4			; compare first with second number
		BHI		LOOP1			;if first no. greater than second, loop1
		MOV		R3, R4			; result
		
LOOP1	SUBS	R5,R5,#01		;counter decrement
		CMP		R5, #00
		BNE		LOOP			;All numbers checked?
		STR		R3, [R2]		;result in R3
		
		SWI		0x11
		END