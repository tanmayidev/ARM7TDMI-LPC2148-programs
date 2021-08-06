;64BIT_ADDITION
;Addition of 64 bit numbers
		AREA	SIXTYBIT, CODE, READONLY
ENTRY
		LDR		R0, =0x11111111    ;Most significant 32 bits of fisrt number
		LDR		R1, =0x22222222    ;Least significant 32 bits of first number
;0x 0001 0001 0001 0001 0001 0001 0001 0001 0010 0010 0010 0010 0010 0010 0010 0010
		
		LDR		R2, =0x33333333    ;Most significant 32 bits of second number
		LDR		R3, =0x44444444    ;Least significant 32 bits of second number
;0x 0011 0011 0011 0011 0011 0011 0011 0011 0100 0100 0100 0100 0100 0100 0100 0100
		
		ADDS	R4, R1, R3         ;LS Result
		ADC		R5, R0, R2         ;MS Result
		SWI		&11
		END