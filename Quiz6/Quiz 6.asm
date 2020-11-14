	#include<p18F4550.inc>
	
		org	0x00
		goto start
		org	0x08
		retfie
		org	0x18
		retfie
		
n		equ D'33'
lp_cnt	set	0x20

		
start	movlw	n

		movwf 	lp_cnt,A

		movlw	0x0A

		LFSR	FSR0, 0x30
			
loop	ADDWF POSTINC0,A
		
		decfsz 	lp_cnt,F, A	
		
		goto 	loop
		
		LFSR	FSR0, 0x30
		
		LFSR	FSR1, 0x3F
		
		MOVFF	POSTINC0, POSTDEC1
		
		MOVFF	POSTINC0, POSTDEC1
		
		MOVFF	POSTINC0, POSTDEC1
		
		MOVFF	POSTINC0, POSTDEC1
		
		MOVFF	POSTINC0, POSTDEC1
		
		end
	