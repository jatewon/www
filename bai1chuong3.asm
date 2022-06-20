 .model small
 .stack 50
 .data
 tb1 db 'Goodmooring$'
 tb2 db 'Goodafternoon$'
 tb3 db 'Goodevering$'
 str db 'ky tu : $'
 .code 
 main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,str
    int 21h
    mov ah,01h
    int 21h
    
    cmp al,'S'
    je moring
    cmp al,'s'
    je moring
    
    
    cmp al,'C'
    je after
    cmp al,'c'
    je after
    
    cmp al,'T'
    je evering
    cmp al,'t'
    je evering
     mov ah,4ch
     int 21h
     
moring:
      mov ah,09h
      lea dx,tb1
      int 21h
      mov ah,4ch
      int 21h
after: 
      mov ah,09h
      lea dx,tb2
      int 21h
      mov ah,4ch
      int 21h
evering:
       mov ah,09h
       lea dx,tb3
       int 21h
       mov ah,4ch
       int 21h
 main endp
 end main 