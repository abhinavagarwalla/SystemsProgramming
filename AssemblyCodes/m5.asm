.model small
.code
mov DX 25665
mov AH 2
int 33
mov DL DH
int 33
mov AH 76
int 33
end
