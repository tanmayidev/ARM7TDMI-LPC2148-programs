;Program for BIC operation i.e., logical bit clear

		AREA	BIT_CLEAR, CODE, READONLY
ENTRY
		MOV		R1, #0x000000D3		;0X 0000 0000 0000 0000 0000 0000 1101 0011
		
		MOV		R2, #0X00000080		;0X 0000 0000 0000 0000 0000 0000 1000 0000
		
		BIC		R0, R1, R2			; Rd = Rn AND NOT(N)
									; NOT(R2) = 0X 1111 1111 1111 1111 1111 1111 0111 1111
									;			0X 0000 0000 0000 0000 0000 0000 1101 0011
									; Rd = Rn AND NOT(N)
									;			0X 0000 0000 0000 0000 0000 0000 0101 0011
									;			0X   0   0    0    0    0    0    5     3
									
		SWI		0x11
		
		END