.model small
.stack 50
.data
tenfile db 'E:\thuchanhenmu8086\data.txt'
thefile dw ?
buffer db 251 dup('$')
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,3dh   ;mo tap tin
    lea dx,tenfile;tro tenfile vao dx
    mov al,2      ;thuoc tinh tap tin 
    int 21h
    
    mov thefile,ax ;chuyen ax vao thefile
    mov ah,3fh     ;doc noi dung file
    mov bx,thefile
    lea dx,buffer
    mov cx,250     ;so byte can doc tu file
    int 21h
    mov ah,3eh     ;doc tap tin
    mov bx,thefile
    int 21h
    mov ah,09h     ;int noi dung cua file ra man hinh
    lea dx,buffer
    int 21h
    mov ah,08h     ;dung man hinh de xem ket qua
    int 21h
    mov ah,4ch
    int 21h
 main endp
end main