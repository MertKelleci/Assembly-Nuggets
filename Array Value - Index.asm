
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
MOV CX, 4
MOV SI, 0h
MOV DL, 0h
LEA BX, sayilar

dongu:
    MOV AL, DL
    XLATB
    SUB AL, DL
    MOV fark+SI, AL
    INC DL
    INC SI
    LOOP dongu


ret
sayilar db 2, 4, 6, -2
fark db 4 dup(?)



