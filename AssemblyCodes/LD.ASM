.model small
.code
mov DL,65
mov AH,2
M:mov CX,3
L:int 21h
loop L
add DL,1
cmp DL,70
jle M
mov AH,76
int 33
end

.model small
.code
mov DL,0
mov AH,1
mov CX,10
Lk:int 33
sub AL,48
add DL,AL
loop Lk
mov AH,2
int 33
mov AH,76
int 33
end

.model small
.code
mov AH,1
int 33
L: sub AL,7
cmp AL,7
jge L
add AL,48
mov DL,AL
mov AH,2
int 33
mov AH,76
int 33
end
