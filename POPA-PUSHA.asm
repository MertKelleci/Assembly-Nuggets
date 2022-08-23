org 100h
MOV AX,2323H
;PUSH AX
MOV BX,0BCD2H
MOV CX,4543H
MOV DX,1234H
MOV SI,1215H
MOV DI,6463H
PUSHA
;MOV AX,4646H
POPA
POP AX; burda Stack islemi yapildigi icin SP konumunun degistigi gozlemlenebilir
ret