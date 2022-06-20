.model small
.stack 100
.data
msg1 db  'nhap 1 ky tu :$'
msg2 db 10,13,'kytu sau :$'
msg3 db 10,13,'kytu truoc :$'
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg1
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
    
    lea dx,msg2
    mov ah,02h
    mov dl,bl
    int 21h
    
    lea dx,msg3
    mov ah,09h
    int 21h
    
    add bl,02h
    mov ah,02h
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h    
 main endp
end main