
        org 	100h

	section	.text

        xor AX, AX
        xor BX, BX
        xor CX, CX
        xor DX, DX
        




;parte 1        
        xor AX, AX
        mov AX, 47h
        xor BX, BX
	mov BX, 41h
        xor CX, CX
	mov CX, 53h
        xor DX, DX
        mov DX, 42h

	mov [200h], AX
	mov [201h], BX
	mov [202h], CX
	mov [203h], DX

;parte 2

        

;copiar el valor de 200h a AX diraccionamiento directo
        mov AX, [200h] 

;copiar el valor de 201h a CX diraccionamiento indirecto por registro
        
        mov BX, 201h 
        mov CX, [BX]

;copiar el valor de 202h a DX diraccionamiento indirecto base mas indice
        xor BX, BX
        mov BX, 200h
        mov DI, 2h
        mov DX, [BX+DI]

;copiar el valor de 203h a DI diraccionamiento indirecto relativo por registro
        xor BX, BX
        mov BX, 3h
        mov DI, [BX+200h]

	int 20h