;substract value 3-1 = 2

.model small
.stack 100h
.data
.code

Main Proc   
    
    mov bl, 4
    mov cl, 2
    
    sub bl,cl
    
    add bl, 48   ; to make it ascii
    
    mov dl, bl
    mov ah, 2   ; output
    int 21h
    
    mov ah, 4ch ; clean the register
    int 21h
    
    
    
    
Main endp
end main