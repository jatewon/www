.model small
.stack 100
.data
 mang db 20,0,20 dup(?)
 tb1 db 10,13,'nhap chuoi :$'
 tb2 db 10,13,'chuoi dao nguoc:$'
 .code 
 main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,tb1
    int 21h
    
    mov ah,0ah
    lea dx,mang
    int 21h
    
    mov ah,09h
    lea dx,tb2
    int 21h
    
    mov cl,[mang+1]
    lea si,mang+2
    
    lap:
        push [si]
        inc si
        loop lap
        mov cl,[mang+1]
    lap2:
         pop dx
         mov ah,2
         int 21h
         loop lap2
        
        
     mov ah,4ch
     int 21h
main endp 
 end main 