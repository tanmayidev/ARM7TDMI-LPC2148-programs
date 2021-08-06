;ASCENDING
;Arranging numbers in Ascending order
		AREA	DESCEND, CODE, READONLY
		ENTRY
START
		MOV		R0, #05              ; six numbers
		
LOOP3	MOV		R1, #05               ; R1 is the second counter
		MOV		R2, #0x40000000       ; data and result
		

LOOP2	LDR		R3, [R2]			  ; loads the value at address of R2 into R3
		ADD		R2, R2, #04
		LDR		R5, [R2]
		CMP		R3, R5                ; compare R3 & R5 registers
		BLT		LOOP1                 ; if LESS go to LOOP1
		STR 	R3, [R2]              ; exchange
		SUB		R2, R2, #04			  ; Point to first counter
		STR		R5, [R2]
		ADD		R2, R2, #04			  ; Point to next counter
		
LOOP1	SUB		R1, R1, #01			  ; Decrement the counter R1
		CMP		R1, #00				  ; compare with zero
		BNE		LOOP2				  ; if not equal go to LOOP2
		SUB 	R0, R0, #01			  ; Decrement the counter
		CMP		R0, #00				  ; again compare with zero
		BNE 	LOOP3				  ; if not equal to zero go to LOOP3
		SWI 	&11					  ; Terminate the program
		
		END
			
// give the input in memory windows at locations 0x40000000, 0x40000004,...,0x40000014 as we have given input as 6 numbers
// run the program and you can view the output in same memory windows
