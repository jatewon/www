.model small
.stack 50
.data
mang db 50,0,50 dup('$')
xuong db 10,13,'$'
gach db '- $'
kitu db ?

.code 
main proc
    mov ax,@data
    mov ds,ax
    mov ah,0Ah
    lea dx,mang
    int 21h
    
    lea dx,xuong
    mov ah,09h
    int 21h
    
    lea si,mang+2
    mov cl,[mang+1]
    lap1:
        cmp [si],'A'
        jl boqua
        cmp [si],'Z'
        ja boqua
        add [si,32
        
        boqua:
        inc si
        loop lap1
        
        
     call xuat
     lea dx,gach
     mov ah,09h
     int 21h
     
     lea si,mang+2
     mov cl,[mang+1]
     lap2:
        cmp [si],'a'
        jl boqua2
        cmp [si],'z'
        ja boqua2
        sub [si],32
     
        boqua2:
        inc si
        loop lap2
     call xuat
     
     mov ah,4ch
     int 21h
    main endp

   xuat proc
    mov cl,[mang +1]
    lea si,mang+2
    lap:
    mov dl,[si]
    mov ah,02h
    int 21h
    inc si
    loop lap
    ret
  xuat endp
end main
    
     