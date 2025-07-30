.MODEL SMALL
.STACK 100H
.DATA 
N DB 0
M DB 0 
.CODE

MAIN PROC
    MOV AH,01H
    INT 21H
    
    SUB AL,'0'
    MOV N,AL
    
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
        CMP BL,N
        JLE OUTER
    
    DEC N
    MOV AL,N
    MOV M,AL
    MOV BL,0
    OUTER2:
    
        MOV CL,N
        INNER2:
            MOV AH,02H
            MOV DX,2AH
            INT 21H
            DEC CL
            CMP CL,0
            JNE INNER2
        DEC N
        MOV DX,0AH
        INT 21H
        MOV DX,0DH
        INT 21H
        INC BL
        CMP BL,M
        JNE OUTER2
    
    
    
    


MAIN ENDP
END MAIN