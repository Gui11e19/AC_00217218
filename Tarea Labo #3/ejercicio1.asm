
    org 100h

section .text 
    XOR AX, AX
    XOR BX, BX
    XOR DI, DI

    carnet DB 0,0,2,1,7,2,1,8

    mov cx, 8

    suma:
        MOV byte BL, [carnet+DI]
        ADD, AL, BL
        INC DI
        loop suma

        
    

