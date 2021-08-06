; Program for two's complement

		AREA	TWOS_COMP, CODE, READONLY
ENTRY
		MOV		R0, #0x03		; R0 = 0x00000003
		MVN		R1, R0			; R1 = 0xFFFFFFFC
		ADD		R2, R1, #0x01	; R2 = R1 + 0x01
								; R2 = FFFFFFFD
		SWI		&11
		END