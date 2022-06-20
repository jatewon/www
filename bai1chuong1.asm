cseg segment
assume cs,cseg
start: mov ah,02h;in ra man hinh
      mov dl,'B' ;dl gan = B
      int 21h    ;ngat
      mov ah,08h ;
      int 21h
      mov ah,4ch  ;thoat chuong trinh
      int 21h
cseg ends
end start
