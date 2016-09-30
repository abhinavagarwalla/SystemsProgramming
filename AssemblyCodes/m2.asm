.model small
.code
mov AH 1
int 33
mov DL AL
sub DL 1
mov AH 2
int 33
mov AH 76
int 33
end
