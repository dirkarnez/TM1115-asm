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
Loop:
movlw 0x01
movwf PORTB
movlw 0xFF
movwf Counter_01
movlw 0xFF
movwf Counter_02
call Delay
movlw 0x00
movwf PORTB
movlw 0xFF
movwf Counter_01
movlw 0xFF
movwf Counter_02
call Delay
Delay
decfsz Counter_01
goto Delay
decfsz Counter_02
goto Delay
return
END