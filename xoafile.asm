.model small
.stack 50
.data
tenfile db 'E:\thuchanhenmu8086\test.txt'
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,41h
    lea dx,tenfile
    int 21h
    mov ah,4ch
    int 21h
main endp
end main