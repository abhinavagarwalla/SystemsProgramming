.model small
.code
L1:
mov AH,1
int 21h
mov DL,AL
add DL,1
mov AH,2
int 21h
cmp DL,98
jge L1
mov AH,4ch
int 33
end
