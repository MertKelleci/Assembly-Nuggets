; multi-segment executable file template.

data segment; DS:SI
    metin db "mikroislemci dersi"
    
ends

extra segment; ES:DI
    metin1 db 12 dup(?)
    metin2 db 5 dup(?)
                 
ends    

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:

    MOV AX, data
    MOV DS, AX
    MOV AX, extra
    MOV ES, AX
    
    LEA SI, metin
    LEA DI, metin1
    
    CLD
    MOV CX,12
    REP MOVSB
    
    ADD SI,1
    LEA DI, metin2
    
    CLD
    MOV CX, 5
    REP MOVSB
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
