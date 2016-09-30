.model small
.code
mov AH,2
mov DL,65
L:int 33
add DL,1
cmp DL,90
jle l
mov AH,76
int 33
end
