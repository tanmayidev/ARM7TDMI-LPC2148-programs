;preindex with writeback

;LDR r0,{r1,#4} : r0 is the target register and register r1 is base register which is initially loaded with 0x40000000.
;After execution of the instruction r0 is loaded with the content of mem32[0x40000004] = 0x02020202 memory location
; added 4 with r1 to access the memory location mem32[0x00009004], now r0 is loaded with r0 = 0x02020202 memory location
; and then r1 content is changed to r1 = 0x40000004.

		AREA	PREINDEX_WITH_WRITEBACK, CODE, READONLY
ENTRY
		MOV		R0, #0x00000000
		MOV		R1, #0x40000000
									; mem32[0x40000000] = 0x01010101
									; mem32[0x40000004] = 0x02020202
		LDR		R0, [R1, #4]!
		
;Preindexing with write back
		
		SWI		0x11
		END