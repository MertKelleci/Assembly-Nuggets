
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

LEA BX, metin1
LEA BP, metin2
MOV CX, 23  
MOV SI, 0
MOV DI, 22

dongu1:
    MOV AL,[BX+SI]
    MOV [BP+DI], AL
    INC SI
    DEC DI
    LOOP dongu1

ret
metin1 db "bucumleterstenyazilacak"
metin2 db 23 dup(?)





