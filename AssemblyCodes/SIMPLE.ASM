.model small
.code
mov AH,1
int 33
mov CL,AL
mov BL,CL
sub BL,100
mov AH,2
mov DL,67
sbb DL,0
sub CL,100
sbb DL,0
int 33
mov AH,76
int 33
end
