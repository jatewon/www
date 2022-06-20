.model small
.stack 50
.data 
tenfile db 'E:\thuchanhenmu8086\taofile.txt'
thefile dw ?
.code 
main proc
    mov ax,@data
    mov ds,ax
    mov ah,3ch ;tao tep tin 
    lea dx,tenfile
    mov cx,0   ;thuoc tinh tap tin 
    int 21h
    mov thefile,ax ;cat the file
    mov ah,3eh     ;dong tap tin
    mov bx,thefile
    int 21h
    mov ah,4ch
    int 21h
 main endp
end main
