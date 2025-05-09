; code of = 
.model small
.stack 100h
.data  

var1 db 'Hello$' 
var2 db 'World$'
var3 db ?


.code

Main Proc
    
    mov ax, @data ; holds the address of data into accumulator
    mov ds, ax ; move ax to heap memory for fast variable access
    
    mov ah, 1
    int 21h
    mov var3, al
     
    mov dx, 10  ; line gap
    mov ah, 2
    int 21h
    
    mov dx , 13 ; move cursor to the beginning of that line
    mov ah, 2
    int 21h  
    
    mov dx, offset var1
    mov ah, 9
    int 21h
    
    mov dx, 10
    mov ah, 2
    int 21h
    
    mov dx , 13
    mov ah, 2
    int 21h     
    
    mov dx, offset var2
    mov ah, 9
    int 21h  
    
        mov dx, 10
    mov ah, 2
    int 21h
    
    mov dx , 13
    mov ah, 2
    int 21h  
    
    mov dl, var3
    mov ah, 2
    int 21h
    
    
    
    
    
    
    


     
    Main endp
End Main
