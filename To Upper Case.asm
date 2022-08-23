
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV SI, 0
MOV CX, 18
dongu:
    MOV AL, cumle+SI
    SUB AL, 32
    MOV buyuk+SI, AL
    INC SI
    LOOP dongu

ret
cumle db "buyukharfyazilacak"
buyuk db 18 dup(?)




