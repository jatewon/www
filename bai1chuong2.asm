.model small
.stack 100
.data 
tb1 db 'nhap 1 ky tu:$'
tb2 db 13,10,'ky tu ban nhap:$'
output db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,tb1 ;cho con tro dx vao tb1
    mov ah,09h ;ham ngat 9
    int 21h
    
    mov ah,01h ;nhap 1ky tu 
    int 21h
    mov output,al ;gan gia tri al vao output
    
    lea dx,tb2   ;int ra manhinh xau tb2
    mov ah,09h  
    int 21h
    
    mov ah,2   ;hien thi ky tu nhap 
    mov dl,output;hienthi ra man hinh bien dl
    int 21h
    
    mov ah,4ch
    int 21h
main endp
end
