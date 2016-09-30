.model small
.code
mov AH,2
mov DL,65
int 21h
K:
mov AH,2
mov DL,66
int 21h
mov AH,76
int 33
end
