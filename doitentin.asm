.model small
.stack 50
.data
oldfile db 'E:\thuchanhenmu8086\bt.txt',0
newfile db 'E:\thuchanhenmu8086\test.txt',0
.code 
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov es,ax
    mov ah,56h
    lea dx,oldfile
    lea di,newfile
    int 21h
    mov ah,4ch
    int 21h
main endp
end main
