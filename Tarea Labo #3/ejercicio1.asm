
    org 100h

section .text 
    XOR AX, AX
    XOR BX, BX
    XOR DI, DI
    XOR CX, CX

    

    mov cx, 8d

    suma:
        MOV byte BL, [carnet+DI]
        ADD AL, BL
        INC DI
        loop suma
    
    division:
        MOV BH, 8d
        DIV BH

        MOV byte [20Ah], AL
    

section .data
    carnet DB 0,0,2,1,7,2,1,8


