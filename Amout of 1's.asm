
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
MOV CX, 8
MOV AH, 1
MOV AL, sayi
MOV DL, 0

dongu:
    AND AH, AL
    CMP AH, 1
    JE bir
    JNE sifir
    
bir:
    INC DL
    
sifir:
    SHR sayi,1
    MOV AL, sayi
    MOV AH, 01b
    LOOP dongu
    
MOV birsayi, dl


son:            
    
ret
sayi db 11001000b
birsayi db 0b



