;Program to convert hex to ascii

		AREA	CONVERT, CODE, READONLY
ENTRY

MAIN	LDR		R0, =VALUE		;load the address of value i.e., 30
		LDR		R1, [R0]		;fetch the data from location
		MOV		R2, R1			;move data in R1 to R2
		CMP		R1, #0x09		; compare r1 with 0x09
		BHI		GREAT			;if value is greater then go to LABEL GREAT
		
		ADD		R1, R1, #0X30	;add 30 if data is <9
		
		BL		NEXT			;branch with link to NEXT
	
GREAT
		ADD		R1, R1, #0x37	;add 37th if data is 0C > 9, 0C+37 =
		
NEXT
		LDR		R4, =0x40000000	;Address pointer for result
		STR		R1, [R4]		;Store the content of r1 to r4 address
		
STOP	B		STOP

		AREA	DATA, CODE
VALUE	DCD		&0C
		END