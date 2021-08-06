;Program for smallest number in array

		AREA	LARGE, CODE, READONLY
ENTRY
		MOV		R5, #06			;counter value e.g 7 numbers
		MOV		R1, #0x40000000
		MOV		R2, #0x4000001C ; result location
		LDR		R3, [R1]
LOOP	ADD		R1,R1,#04
		LDR		R4, [R1]
		CMP		R3, R4
		BLS		LOOP1			;if first no. lesser than second
		MOV		R3, R4			; result
		
LOOP1	SUBS	R5,R5,#01		;counter decrement
		CMP		R5, #00
		BNE		LOOP			;All numbers checked?
		STR		R3, [R2]		;result store
		
		SWI		0x11
		END
			
	; Given input was 09, 0A, 08, 02, 0B, 0F, 0E
	; Result is in 0x4000001C is 0x02