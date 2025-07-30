.MODEL SMALL
.STACK 100H
.DATA
    VAR DB 0
    
    
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,01H
    INT 21H
    
    MOV BL,AL
    

MAIN ENDP
END MAIN


