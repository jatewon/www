  .model small
  .stack 100
  .data
  tb2 db 10,13,'xin chao $'
  mang db 30,0,30 dup('$'),'$'
  .code
  main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,0Ah
    lea dx,mang
    int 21h
    
    mov ah,9
    
    lea dx,tb2
    int 21h
    lea dx,[mang + 2]
    int 21h
                                 
    mov ah,4ch
    int 21h
 main endp
end main