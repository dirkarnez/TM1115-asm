#include <P18F4520.INC>
	cblock 0x00
	Counter_01
	Counter_02
endc

ORG 0x0000
goto Main

Main:
	movlw 0xF0
	movwf TRISB
	movlw 0x10
	movwf TRISA
Loop:
	movlw 0x08
	movwf PORTB
	movlw 0xFF
	movwf Counter_01
	movlw 0xFF
	movwf Counter_02
	call Delay

	movlw 0x04
	movwf PORTB
	movlw 0xFF
	movwf Counter_01
	movlw 0xFF
	movwf Counter_02
	call Delay

	movlw 0x02
	movwf PORTB
	movlw 0xFF
	movwf Counter_01
	movlw 0xFF
	movwf Counter_02
	call Delay

	movlw 0x01
	movwf PORTB
	movlw 0xFF
	movwf Counter_01
	movlw 0xFF
	movwf Counter_02
	call Delay




;
;
;	movlw 0x08
;	movwf PORTB
;	movlw 0xFF
;	movwf Counter_01
;	movlw 0xFF
;	movwf Counter_02
;	call Delay
;
;	movlw 0x04
;	movwf PORTB
;	movlw 0xFF
;	movwf Counter_01
;	movlw 0xFF
;	movwf Counter_02
;	call Delay
;
;	movlw 0x02
;	movwf PORTB
;	movlw 0xFF
;	movwf Counter_01
;	movlw 0xFF
;	movwf Counter_02
;	call Delay
;
;	movlw 0x01
;	movwf PORTB
;	movlw 0xFF
;	movwf Counter_01
;	movlw 0xFF
;	movwf Counter_02
;	call Delay
;
;	movlw 0x02
;	movwf PORTB
;	movlw 0xFF
;	movwf Counter_01
;	movlw 0xFF
;	movwf Counter_02
;	call Delay
;
;	movlw 0x04
;	movwf PORTB
;	movlw 0xFF
;	movwf Counter_01
;	movlw 0xFF
;	movwf Counter_02
;	call Delay
;

;	btfss PORTA, 4
;	call OPEN
;	bcf PORTB, 1
;	goto Loop
;
;OPEN: 
;	movlw 0x00
;	movwf PORTB
;	movlw 0xFF
;	movwf Counter_01
;	movlw 0xFF
;	movwf Counter_02
;	call Delay
;
;	movlw 0x02
;	movwf PORTB
;	movlw 0xFF
;	movwf Counter_01
;	movlw 0xFF
;	movwf Counter_02
;	call Delay
;	return;

Delay:
	decfsz Counter_01
	goto Delay
	decfsz Counter_02
	goto Delay
	return
END


