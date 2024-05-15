; **** Marckuss****
	list p=16F84A
#include P16F84A.inc
	__CONFIG _CP_OFF & _WDT_ON & _PWRTE_ON & _XT_OSC
w  equ 0
f   equ 1
PDel0   equ     0C
PDel1   equ     0D
conta equ 10
izq equ 0  ;  Motor giro izquierdo
der equ 1 ; Motor giro derecho
Lok equ 2  ; led de encendido y intermitente para los ultimos 5 seg.
Par equ 0 ; switch arriba
paba equ 1 ; switch abajo
pok  equ 2 ; confirmacion/stop
Lamp equ 6 ; lampara 
resi equ 7 ; calentador resistencia
Sens equ 3 ; sensor de tope de cabezal
Reset org 0x00 ; Aqui comienza el MC y se configuran los puertos
 goto Inicio
 org 0x05 ; Origen del codigo
trisa	equ	0x05	     ; registros indicando la posición
trisb	equ	0x06	     ; en la que se encuentran 
estado	equ	0x03
Inicio	bsf	estado,5  	     ; pongo rp0 a 1 y paso al banco1
	movlw	b'11111'	     ; cargo W con 11111
	movwf	trisa	     ; y paso el valor a trisa
	movlw	b'00000000'    ; cargo W con 00000000
	movwf	trisb	     ; y paso el valor a trisb
	bcf	estado,5  	     ; pongo rp0 a 0 y regreso al banco0
 bcf PORTB,Lamp
 bcf PORTB,resi
 bcf PORTB,der
 bcf PORTB,izq
    CALL demora
Bucle btfsc PORTA,Par ; condicion de pulsador para arriba
 goto Apagar ; Si esta en 1 logico, se apaga el led
 bsf PORTB,izq ; Si esta en 0 logico, se enciende el led y va hacia abajo
 goto Bucle ; se verifica la condicion del Pulsador.-
Apagar bcf PORTB,izq ; Se apagar el led
    CALL demora
    CALL demora
Buclee btfsc PORTA,paba ; condicion de pulsador para abajo
 goto Apagarr ; Si esta en 1 logico, se apaga el led
 bsf PORTB,der ; Si esta en 0 logico, se enciende el led y va hacia arriba
 goto Bucle ; se verifica la condicion del Pulsador.-
Apagarr bcf PORTB,der 
    CALL demora
    CALL demora
    bcf PORTB,der ; Detener marcha hacia arriba
	btfsc PORTA,pok ; condicion de pulsador para encender la resistencia
	goto Bucle
 bcf PORTB,izq
 bcf PORTB,der
 bsf PORTB,Lok
 bsf PORTB,resi ; prendo resistencia
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
    nop
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
    nop
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
    nop
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
    bsf PORTB,Lamp
    bsf PORTB,Lamp
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
    nop
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
    nop
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
    nop
	bcf PORTB,resi
	bcf PORTB,Lamp
    bcf PORTB,der
    bcf PORTB,izq
    nop
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
	bsf PORTB,Lok
	CALL demora
	CALL apagado
	bcf PORTB,Lok
	CALL demora
	CALL apagado
fin	bsf PORTB,paba
    btfss PORTA,Sens
	goto fin
	bsf PORTB,Lok
    goto Inicio
vue bsf PORTB,resi ; prendo resistencia
	bsf PORTB,Lamp ; prendo lampara
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
	CALL demora
finn	bsf PORTB,paba
    btfss PORTA,Sens
    goto finn
	bsf PORTB,Lok
	goto Inicio
;   lamada de demora
demora  movlw     .239      ; 1 set numero de repeticion  (B)
        movwf     PDel0     ; 1 |
PLoop1  movlw     .232      ; 1 set numero de repeticion  (A)
        movwf     PDel1     ; 1 |
PLoop2  clrwdt              ; 1 clear watchdog
PDelL1  goto PDelL2         ; 2 ciclos delay
PDelL2  goto PDelL3         ; 2 ciclos delay
PDelL3  clrwdt              ; 1 ciclo delay
        decfsz    PDel1, 1  ; 1 + (1) es el tiempo 0  ? (A)
        goto      PLoop2    ; 2 no, loop
        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (B)
        goto      PLoop1    ; 2 no, loop
PDelL4  goto PDelL5         ; 2 ciclos delay
PDelL5  goto PDelL6         ; 2 ciclos delay
PDelL6  goto PDelL7         ; 2 ciclos delay
PDelL7  clrwdt              ; 1 ciclo delay
        return              ; 2+2 Fin.
	
apagado bsf PORTB,Lok
	btfsc PORTA,pok
	return
	goto vue
	end