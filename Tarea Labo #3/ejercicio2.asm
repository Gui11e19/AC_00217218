org 100h

section .text
        XOR AX, AX
        MOV AX, 1d
        MOV word CX, 5d
        CMP CX, 0d
        JE save
        JMP fact
fact:
        MUL CX
        LOOP fact
save:
        
        MOV word [20Bh], AX         
exit:
        int 20h
    




