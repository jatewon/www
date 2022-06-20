.model small
.stack 50
.data

tb1 db 10,13,'nhap ky tu:$'
tb2 db 10,13,'ky tu hien thi:$'

.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,tb1
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
    
    mov ah,09h
    mov dx,offset tb2
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    mov ah,4ch
    int 21h
    
main endp
end main