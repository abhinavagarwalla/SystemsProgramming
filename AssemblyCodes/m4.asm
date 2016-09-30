.model small
.code
mov BL 150
add BL 170
mov DL 65
mov AH 2
adc DL 3
int 33
mov AH 76
int 33
end
