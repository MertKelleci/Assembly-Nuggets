
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
MOV SI, 0
MOV DL, 4

dongu:
     MOV AL, sayilar+SI
     ADD AL, 2
     MOV sayilar+SI, AL
     DEC DL
     INC SI
     CMP DL, 0
     JE exit
     JNE dongu 

exit:
ret
sayilar db 2, 5, 4, -9 




