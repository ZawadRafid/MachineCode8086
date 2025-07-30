.MODEL SMALL
.STACK 100H
.DATA
N DB 0
M DW 0



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
    
    
    
    MOV AH,02H
    MOV DX,0AH
    INT 21H
    MOV DX,0DH
    INT 21H
    
    MOV BL,1
    OUTER:
    
    MOV CL,1
    MOV M,31H
    INNER:
    MOV AH,02H
    MOV DX,M
    INT 21H
    INC M
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
    
    
    
MAIN ENDP
END MAIN