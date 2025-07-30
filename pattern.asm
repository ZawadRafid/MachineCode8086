.MODEL SMALL
.STACK 100H
.DATA
    VAR DB 0
.CODE

MAIN PROC
    MOV AX,0
    MOV CX,AX
    MOV BX,AX
    MOV DX,AX
    
    MOV AH,01H
    INT 21H
    
    MOV DH,1H
    
    SUB AL,'0'
    MOV VAR,AL
    
    
    
    MOV AH,02H
    MOV DX,0AH
    INT 21H
    MOV DX,0DH
    INT 21H
    
    MOV BL,1
    
    OUTER:
    
        MOV CL,1
        INNER:
            MOV AH,02H
            MOV DX,42D
            INT 21H
            
            INC CL
            CMP CL,BL
            JLE INNER
        MOV DX,0AH
        INT 21H    
        MOV DX,0DH
        INT 21H
        INC BL
        CMP BL,VAR
        JLE OUTER
    
    
    
    

MAIN ENDP
END MAIN


