;ARM_MODE_TO_THUMB_AND_THUMB_MODE_TO_ARM
;This example shows a small code fragment that uses both ARM and Thumb versions of the BX instruction.
;You can see that the branch address Thumb has the lowest bit set
;This sets the T bit in the cpsr to Thumb state
;	Courtesy : ARM System Developer's guide : Andrew N Sloss
;	Page No 91 and example 4.1

		AREA	ARM_MODE_TO_THUMB_AND_THUMB_MODE_TO_ARM, CODE, READONLY
ENTRY

;ARM CODE
		
		; CODE32						; word aligned
		LDR		R0, =thumbCode+1		; +1 to enter Thumb state
		MOV		lr, pc					; set the return address
		BX		R0						; branch to Thumb code and mode
		
		;continue here

;Thumb code
		; CODE16						; halfword aligned
		
thumbCode
		
		ADD		R1, #1
		BX		lr						; return to ARM code and state
		
		SWI		0x11
		END