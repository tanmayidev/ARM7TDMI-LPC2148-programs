;Multiply two 16 bit numbers

		AREA	BITMUL, CODE, READONLY
ENTRY
		MOV		R0, #0x40000000		; Move the address 0x40000000 to r0
		LDRH	R2, [R0]			; Move address content (16 bit data) of r0 to r2
		
		MOV		R1, #0x40000006		; Move the address 0x40000006 to r1
		LDRH	R3, [R1]			; Move the address content of r1 to r3
		
		MUL		R5, R2, R3			; Multiplication r5 = r2*r3
		
		MOV		R4, #0x4000001C		; Move the address 0x4000001C to r4
		
		STR 	R5, [R4]			; content of r5 now moved to address location 0x4000001C
		
		SWI		0x11				;Terminating the program
		END
			
			; input and output
			; 0x40000000: AA BB 00 00
			; 0x40000004: 00 00 DD CC
			; ..........
			; 0x4000001C: C2 79 2D 96