
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
MOV CX, 4
MOV SI, 0

dongu:
    MOV AX, [sayilar+SI]
    MUL AX
    MOV DX, AX
    MOV AX, [sayilar+SI]
    MUL DX
    MOV [kup+SI], AX
    INC SI
    INC SI
    LOOP dongu    

ret
sayilar dw 2h, 4h, 6h, 3h
kup dw 4 dup(?)




