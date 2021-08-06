; Program for 1's complement

		AREA	ONESCOMP, CODE, READONLY
ENTRY
		MOV		R0, #0x09
		MVN		R1, R0		;one's complement of r0
							; 0x 0000 0000 0000 0000 0000 0000 0000 1001
							;	 1111 1111 1111 1111 1111 1111 1111 0110
							;	  f    f    f     f    f    f    f    6
		SWI 	&11
		END