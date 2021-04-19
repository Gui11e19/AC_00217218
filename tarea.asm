
        org 	100h

	    section	.text

        mov	AX, "G"
	    mov	BX, "A"
	    mov	CL, "S"
        mov DL, "B"

	    mov	[200h], AX
	    mov	[201h], BX
	    mov	[202h], CL
	    mov	[203h], DL


	    int	20h