;Program to count for negative number
		AREA	NEGATIVE, CODE, READONLY
ENTRY
		MOV 	R1,#06		; N=6 Counter
		MOV		R5,#00		; result (number of negative numbers)
		MOV		R2,#0x40000000
		
LOOP	LDR		R3, [R2]
		ANDS	R3,R3,#01<<31
		BHI		FOUND
		B		LOOP1
		
FOUND	
		ADD		R5,R5,#01
	
LOOP1
		ADD		R2,R2,#04
		SUBS	R1,R1,#01
		CMP		R1, #00
		BNE		LOOP
		
		SWI		&11
		END

;Input 099,033,044,0AA,0BB,0CC in memory windows
;In this example 99000000, AA000000, BB000000, CC0000000 are negative numbers so result = 4
;33000000 and 440000000 are positive numbers, therefore R5 = 4