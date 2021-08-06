;16BIT_DATA_TRANSFER
;Transferring 16 bit of data

		AREA	DATATRANSFER, CODE, READONLY
		ENTRY
		
		LDR	 	R1, Value			;load the value to be moved
		STR 	R1, Result			;store it back in a different location
		SWI 	&11
		
Value	DCW		0xABCD
		ALIGN						;need to do this because working with 16 bit data
Result	DCW		0					;storage space

		END
			
//DCW = Data Constant Word; one word = 2 bytes = 16 bits
//open memory window and type 0x00000000, the given input is stored at 0x0000000C