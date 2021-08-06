;Post index
;LDR r0, [r1],#4 - Updates the address register after address is used , r1 for
; referring to the memory and after access to the memory, modify r1 and load modifies value r1 back to r1.


		AREA	POST_INDEX, CODE, READONLY
ENTRY
		MOV		R0, #0x00000000
		MOV		R1, #0x40000000
									; mem32[0x40000000] = 0x01010101
									; mem32[0x40000004] = 0x02020202
		LDR		R0, [R1], #4
		
		
		SWI		0x11
		END