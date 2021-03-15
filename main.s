#include "xc.inc"
; CONFIG
    CONFIG WDTE = OFF, CP = OFF, MCLRE = OFF
    ORG 0x0000H
INIT:
    MOVLW not(1 << GP1)
    TRIS GPIO
    BSF GPIO,GP1
LOOP:
    GOTO LOOP
END     