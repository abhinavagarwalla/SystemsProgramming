.model small
.code
mov AH,1
int 33
mov CH,AL
int 33
mov CL,AL
mov DX,0
mov AX,CX
mov BX,0
div BX
end

.model small
.code
mov AH,1
int 33
mov BL,AL
int 33
mov AH,0
mov CX,0
mov BH,0
L1:
add CX,AX
inc BH
cmp BH,BL
JL L1
mov AH,2
mov DL,CH
int 33
mov DL,CL
int 33
mov AH,76
int 33
end

.model small
.code
mov AH,1
int 33
mov AH,0
mov BX,2000
mov DL,0
L1:
sub BX,AX
add DL,1
cmp BX,AX
JGE L1
mov AH,2
int 33
mov AH,76
int 21h
end

.model small
.data
a dw 25650, 51
b db 48,49,36
.code
mov AX,@data
mov DS,AX
lea DX,a
mov AH,9
int 33
mov AH,76
int 21h
end

.model small
.code
mov AH,1
int 33
mov DX,20000
L1:
sub DL,AL
sbb DH,0
cmp DH,0
ja L1
cmp DL,AL
jae L1
mov AH,2
int 33
mov AH,76
int 33
end

.model small
.code
mov AH,1
int 33
mov AH,0
mov CX,0
mov BL,100
L1:
add CX,AX
sub BL,1
cmp BL,0
jg L1
mov AH,2
mov DL,CH
int 33
mov DL,CL
int 33
mov AH,76
int 33
end

.model small
.code
mov DX,25665
mov AH,2
int 33
mov DL,DH
int 33
mov AH,76
int 33
end
