;LOGICAL_OR
; Assembly program to verify LOGICAL OR operation
; PRE R0 = 0X00000000

		AREA	LOGICALOR, CODE, READONLY
		ENTRY
		
		MOV		R0, #0x00000000			; R0 = 0000 0000 0000 0000 0000 0000 0000 0000 IN BIN = 0X00000000 IN HEX
		MOV		R1, #0x00000078			; R1 = 0000 0000 0000 0000 0000 0000 0111 1000 IN BIN = 0X00000078 IN HEX
		MOV		R2, #0x00000079			; R2 = 0000 0000 0000 0000 0000 0000 0111 1001 IN BIN = 0X00000079 IN HEX
		
		ORR		R0, R1, R2				; R0 = R1 OR R2
										; R0 = 0000 0000 0000 0000 0000 0000 0111 10010 IN BIN = 0X00000079 IN HEX
		NOP
		NOP 		; NOP is a mnemonic which means no operation and it does not execute anything but uses full pipeline
		
		;A NOP is most commonly used for timing purposes, to force memory alignment, to prevent hazards, 
		;to occupy a branch delay slot, to render void an existing instruction such as a jump, 
		;or as a place-holder to be replaced by active instructions later on in program development 
		;(or to replace removed instructions when reorganizing would be problematic or time-consuming).
		
		END
			
; POST R0 = 0X00000079