
        org     100h
        section .text

        mov     BX, 8a4Fh
        mov     BX, 8a4Fh
        mov     BX, 8a4Fh
        mov     [200h], AX

        
        mov     byte [230h], 11d
        mov     byte [240h], "B"
        

        int     20h 
        
        
        