.model small
.stack 100h
.data
var byte "Enter a character:$"
var2 byte "after convert:$"
.code
main proc

;first string print
mov ax,@data
mov ds,ax
mov ah,9
mov dx,offset var
int 21h

;take character input
mov ah,1
int 21h

;transfer input to bl for temp
mov bl,al

;print new line
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;print second string
mov ah,9
mov dx,offset var2
int 21h

;subtract and mov
mov ah,2
sub bl,32
mov dl,bl
int 21h

;terminate
mov ah,4ch
int 21h
main endp
end main
