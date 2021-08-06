;SHIFT OPERATION
		AREA	SHIFTOPERATION, CODE, READONLY
ENTRY
		MOV		R0, #0XFFFFFFF
		
		MOV		R0, R0, LSL #4		;Multiply r0 by 2  for each shift
									; Result is FFFFFFF0 in R0
		
		MOV		R1, R0, LSR #4		;Divide R1 by 2 for each shift(unsigned)
									;Result is 0FFFFFFF in R1
									;Related to above LSL operation
									
		MOV		R2, #0x80000030
		MOV		R3, R3, ASR #4		;Divide R2 by 2(i.e., 16 for 4) for each shift(signed). 
									; 0x80000030 = 0x 1000 0000 0000 0000 0000 0000 0011 0000
									; for first ASR shift
									; 0x 1100 0000 0000 0000 0000 0000 0001 1000
									; for second ASR shift
									; 0x 1110 0000 0000 0000 0000 0000 0000 1100
									; for third ASR shift
									; 0x 1111 0000 0000 0000 0000 0000 0000 0110
									; for fourth ASR shift
									; 0x 1111 1000 0000 0000 0000 0000 0000 0011
									; Expected answer is 0xF8000003
									
		MOV		R4, #0x80000005
		MOV		R5, R4, ROR #4		; R5 = R4 rotated right by value of 16 (rotate right by 4 bit)
									; 0x80000005 = 0x 1000 0000 0000 0000 0000 0000 0000 0101
									; For fisrt ROR Shift
									; 0x 1100 0000 0000 0000 0000 0000 0000 0010
									; For second ROR Shift
									; 0x 0110 0000 0000 0000 0000 0000 0000 0001
									; For third ROR Shift
									; 0x 1011 0000 0000 0000 0000 0000 0000 0000
									; For fourth ROR Shift
									; 0x 0101 1000 0000 0000 0000 0000 0000 0000
									; Expected answer is 0x58000000
	
		MOV 	R6, #0x80000005
		MOV		R7, R6, RRX			;0x80000005 = 0x 1000 0000 0000 0000 0000 0000 0000 0101
									; FOR RRX SHIFT
									;     C  31									    0
									; 0x  0   1000 0000 0000 0000 0000 0000 0000 0101
									; 0x  1   0100 0000 0000 0000 0000 0000 0000 0010
									;		   4    0    0    0    0    0    0     2
		MOV 	R8, R7, RRX			; R7 = 0x40000002
									;     C  31									    0
									; 0x  0   0100 0000 0000 0000 0000 0000 0000 0010
									; 0x  0   0010 0000 0000 0000 0000 0000 0000 0001
									;		   2    0    0    0    0    0    0     1
	
		SWI		&11
		END
			
			