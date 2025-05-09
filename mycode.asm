; Program to print a single character

dosseg
.model small
.stack 100h
.data

.code

Main Proc
    
    MOV dl , 'a' ;data transfer
    MOV ah , 2
    
    INT 21h
    
    
    MOV ah, 4ch
    INT 21h
    

     
    Main endp
End Main
