org 100h

lea SI,metin
mov CX, sayac - offset metin

dongu:
    PUSH CX ;metin icinde kac kez donecegimizi tutuyoruz
    
    mov AH,0Ah ; imlec karakter yazma
    MOV AL,[SI]
    MOV BH,0
    MOV CX,1 ; karakteri 1 kez yazdirma
    INC SI
    int 10h
    
    MOV AH,03h ;imlec pozisyonunu okuma
    int 10h ; DH satir DL sutun degeri var
    
    
    MOV AH,02h ; imlec pozisyonunu ayarlama
    INC DL ; yan yana yazacagi icin DL degerini arttirmak gerekiyor imleci saga kaydirarak yazdiriyoruz
    int 10h
    
    POP CX
    
LOOP dongu     

ret
metin db "ekranayazdirma"
sayac db 0