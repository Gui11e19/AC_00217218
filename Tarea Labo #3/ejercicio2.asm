org 100h


.data:
    res db 1

.code:
    MOV DX seg @data
    mov ds, dx

    mov cx, 5

    ciclo:
        mov al, res
        mov bl, cl
        mul bl
        mov res, al 
    loop ciclo

    mov al, res
    mov res, 20Bh

    int 21h

    .exit

end