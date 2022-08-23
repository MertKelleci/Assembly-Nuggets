
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA BX, dizi1
LEA BP, dizi2
MOV CX, 4  
MOV SI, 0

dongu1:
    MOV AL,[BX+SI]
    MOV [BP+SI], AL
    INC SI
    LOOP dongu1

ret
dizi1 db 10h, 12h, 14h, 16h
dizi2 db 4 dup(?)



