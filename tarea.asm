
        org 	100h

	    section	.text

;parte 1
        mov	AX, "G"
	    mov	BX, "A"
	    mov	CX, "S"
        mov DX, "B"

	    mov [200h], AX
	    mov [201h], BX
	    mov [202h], CX
	    mov [203h], DX

;parte 2


;copiar el valor de 200h a AX diraccionamiento directo
        mov AX, [200h] 

;copiar el valor de 201h a CX diraccionamiento indirecto por registro
        mov BX, 201h 
        mov	CX, [BX]

;copiar el valor de 202h a DX diraccionamiento indirecto base mas indice
        mov BX, 200h
        mov DI, 2h
        mov	DX, [BX+DI]

;copiar el valor de 203h a DI diraccionamiento indirecto relativo por registro
        mov BX, 3h
        mov	DI, [BX+200h]

	    int	20h