.model small
.code
mov AH,1
int 21h
sub AL,80
mov BL,AL
mov AX,1000
idiv BL
mov DL,AH
add DL,75
mov AH,2
int 21h
mov DL,AL
add DL,75
int 21h
mov AH,76
int 21h
end

.model small
.code
mov AH,1
int 33
mov BL,AL
sub BL,48
int 33
sub AL,48
mul BL
mov DL,AL
mov AH,2
int 33
mov AH,76
int 33
end

.model small
.code
mov AX,5497
mov BL,100
div BL
mov DL,AL
mov DH,AH
mov AH,2
int 21h
mov DL,DH
int 21h
end

.model small
.code
mov AH,1
int 21h
mov BL,2
mul BL
mov DL,AL
mov AH,2
int 21h
mov AH,76
int 21h
end
