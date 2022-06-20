.model small
.stack 50
.data

so db 10,0,10 dup($)
muoi dw 10
xuong db 10,13,'ket qua$:'
b1 dw 0
b2 dw 0
tb1 db 10,13,'nhap chuoi 1:$'
tb2 db 10,13,'nhap chuoi 2;$'
.code  
     main proc
        mov ax,@data
        mov ds,ax
        
        lea dx,tb1
        mov ah,09h
        int 21h
        
        xor cx,cx
        lea dx,so
        mov ah,0Ah
        int 21h
        
        call xulychuoi
        mov b1,dx
        mov ah,09h
        lea dx,tb2
        int 21h
        
        mov ah,0Ah
        lea dx,so
        int 21h
        
        mov ah,09h
        lea dx,xuong
        int 21h
        
        call xulychuoi
        mov b2,dx
        
        mov dx,b2
        add dx,b1
        
        mov ax,dx
        xor cx,cx
        lapchia:
             xor dx,dx
             div muoi
             add dx,30h
             push dx
             inc cx
             cmp ax,0
             jne lapchia
             
        hienthi:
             pop dx
             mov ah,02h
             int 21h
             loop hienthi
             
        mov ah,4ch
        int 21h
        
  main endp
     
   xulychuoi proc
    xor dx,dx
    xor cx,cx
    lea si,so +2
    mov cl,[so+1]
    lap:
       mov ax,dx
       xor bx,bx
       mov bl,[si]
       sub bl,30h
       mul muoi
       add ax,bx
       mov dx,ax
       inc si
       loop lap
       ret
   xulychuoi endp
 end main