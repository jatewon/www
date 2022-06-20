;ghi noi dung vao file
.model small
.stack 50
.data
str1 db 'xin chao hello'
len db $ -tr1
tenfile db 'E:\thuchanhenmu8086\taofile.txt'
thefile dw ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,3ch  ;tao tep tin moi
    lea dx,tenfile
    mov cx,0      ;tap tin co thuoc tinh binh thong
    int 21h
    mov thefile,ax ;mo file 
    mov ah,40h     ;ghifile
    mov bx,thefile 
    xor cx,cx
    mov cl,len
    lea dx,str1
    int 21h
    mov ah,3eh     ;dong tap tin
    mov bx,thefile
    int 21h
    mov ah,4ch
    int 21h
 main endp
end main