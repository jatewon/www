.model small
.stack 50
.data 
ten db ?
str1 db 10,13,'nhap 1 ky tu:$'
str2 db 10,13,'ky tu nhan dc la : $ '
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,str1
    int 21h
    mov ah,07h
    int 21h
    
    mov ten,al
    
    mov ah,09h
    lea dx,str2
    int 21h
    
    mov ah,02h
    mov dl,ten
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end main
