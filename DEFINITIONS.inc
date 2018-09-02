    LIST   P=PIC18F4550

;<editor-fold defaultstate="collapsed" desc="BITS DE CONFIGURACION PARA LOS FUSIBLES">   
; PIC18F4550 Configuration Bit Settings
; Assembly source line config statements
#include "p18f4550.inc"
; CONFIG1L
  CONFIG  PLLDIV = 5            ; PLL Prescaler Selection bits (Divide by 5 (20 MHz oscillator input))
  CONFIG  CPUDIV = OSC1_PLL2    ; System Clock Postscaler Selection bits ([Primary Oscillator Src: /1][96 MHz PLL Src: /2])
  CONFIG  USBDIV = 1            ; USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1) (USB clock source comes directly from the primary oscillator block with no postscale)
; CONFIG1H
  CONFIG  FOSC = HSPLL_HS       ; Oscillator Selection bits (HS oscillator, PLL enabled (HSPLL))
  CONFIG  FCMEN = OFF            ; Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor enabled)
  CONFIG  IESO = OFF            ; Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)
; CONFIG2L
  CONFIG  PWRT = OFF            ; Power-up Timer Enable bit (PWRT disabled)
  CONFIG  BOR = OFF              ; Brown-out Reset Enable bits (Brown-out Reset enabled in hardware only (SBOREN is disabled))
  CONFIG  BORV = 3              ; Brown-out Reset Voltage bits (Minimum setting 2.05V)
  CONFIG  VREGEN = OFF          ; USB Voltage Regulator Enable bit (USB voltage regulator disabled)
; CONFIG2H
  CONFIG  WDT = OFF             ; Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
  CONFIG  WDTPS = 32768         ; Watchdog Timer Postscale Select bits (1:32768)
; CONFIG3H
  CONFIG  CCP2MX = OFF           ; CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
  CONFIG  PBADEN = OFF           ; PORTB A/D Enable bit (PORTB<4:0> pins are configured as analog input channels on Reset)
  CONFIG  LPT1OSC = OFF         ; Low-Power Timer 1 Oscillator Enable bit (Timer1 configured for higher power operation)
  CONFIG  MCLRE = ON            ; MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)
; CONFIG4L
  CONFIG  STVREN = ON           ; Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
  CONFIG  LVP = OFF              ; Single-Supply ICSP Enable bit (Single-Supply ICSP enabled)
  CONFIG  ICPRT = OFF           ; Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit (ICPORT disabled)
  CONFIG  XINST = OFF           ; Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))
; CONFIG5L
  CONFIG  CP0 = OFF             ; Code Protection bit (Block 0 (000800-001FFFh) is not code-protected)
  CONFIG  CP1 = OFF             ; Code Protection bit (Block 1 (002000-003FFFh) is not code-protected)
  CONFIG  CP2 = OFF             ; Code Protection bit (Block 2 (004000-005FFFh) is not code-protected)
  CONFIG  CP3 = OFF             ; Code Protection bit (Block 3 (006000-007FFFh) is not code-protected)
; CONFIG5H
  CONFIG  CPB = OFF             ; Boot Block Code Protection bit (Boot block (000000-0007FFh) is not code-protected)
  CONFIG  CPD = OFF             ; Data EEPROM Code Protection bit (Data EEPROM is not code-protected)
; CONFIG6L
  CONFIG  WRT0 = OFF            ; Write Protection bit (Block 0 (000800-001FFFh) is not write-protected)
  CONFIG  WRT1 = OFF            ; Write Protection bit (Block 1 (002000-003FFFh) is not write-protected)
  CONFIG  WRT2 = OFF            ; Write Protection bit (Block 2 (004000-005FFFh) is not write-protected)
  CONFIG  WRT3 = OFF            ; Write Protection bit (Block 3 (006000-007FFFh) is not write-protected)
; CONFIG6H
  CONFIG  WRTC = OFF            ; Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) are not write-protected)
  CONFIG  WRTB = OFF            ; Boot Block Write Protection bit (Boot block (000000-0007FFh) is not write-protected)
  CONFIG  WRTD = OFF            ; Data EEPROM Write Protection bit (Data EEPROM is not write-protected)
; CONFIG7L
  CONFIG  EBTR0 = OFF           ; Table Read Protection bit (Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR1 = OFF           ; Table Read Protection bit (Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR2 = OFF           ; Table Read Protection bit (Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks)
  CONFIG  EBTR3 = OFF           ; Table Read Protection bit (Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks)
; CONFIG7H
  CONFIG  EBTRB = OFF           ; Boot Block Table Read Protection bit (Boot block (000000-0007FFh) is not protected from table reads executed in other blocks)
;</editor-fold>

; = = = = = = = = = = = = = = = = = = = = =
;   MACROS PARA SUMAR
; = = = = = = = = = = = = = = = = = = = = =
BSR_BYTE_ADD MACRO F0,F1,F2
    MOVF	F0,W,1	;Cargar el contenido de F0 en W
    MOVWF	F2,1	;Cargar el valor en F2
    MOVF	F1,W,1	;Cargar el contenido de F1 en W
    ADDWF	F2,F,1	;Sumar y almacenar en F2
    ENDM
BSR_BYTE_ADD_WCARRY MACRO F0,F1,F2
    MOVF	F0,W,1	;Cargar el contenido de F0 en W
    MOVWF	F2,1	;Cargar el valor en F2
    MOVF	F1,W,1	;Cargar el contenido de F1 en W
    ADDWFC	F2,F,1	;Sumar junto con CARRY y almacenar en F2
    ENDM
; = = = = = = = = = = = = = = = = = = = = =
;   VARIABLES GLOBALES
; = = = = = = = = = = = = = = = = = = = = =
;OPERADORES UDATA_ACS
;OPERA RES 2
;OPERB RES 2
;OPERC RES 2
;OPERADORES_PTR UDATA_ACS
;PTR RES 1
; = = = = = = = = = = = = = = = = = = = = =
;   FUNCIONES
; = = = = = = = = = = = = = = = = = = = = =
 
    EXTERN ERROR_SYS
    EXTERN POR_SYS
    EXTERN SYSTEM_INIT
    
    EXTERN TIMER0_PRECHARGE
    EXTERN TIMER0_INIT
    EXTERN TIMER0_WR
    EXTERN TIMER0_START
    EXTERN TIMER0_STOP
    
    ;	UART VARS
    EXTERN UART_TX_COUNTER
    EXTERN UART_TX_STATUS
    EXTERN UART_TX
    EXTERN UART_RX_COUNTER
    EXTERN UART_RX_STATUS
    EXTERN UART_RX
    ;	UART FUNCTIONS
    EXTERN UART_INIT
    EXTERN UART_START
    EXTERN UART_STOP
    EXTERN UART_TRANSMIT
    EXTERN UART_CANCEL_TRANSMIT
    EXTERN UART_RECEIVE
    EXTERN UART_CANCEL_RECEIVE