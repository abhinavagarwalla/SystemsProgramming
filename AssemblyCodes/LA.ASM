.model small
.code
mov DL,65
mov AH,2
mov CX,5
Lk:
int 33
loop Lk
mov AH,76
int 21h
end
