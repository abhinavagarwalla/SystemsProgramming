.model small
.code
mov AH,1
int 21h
mov BL,AL
int 21h
add AL,10
add BL,70
mov AH,2
mov DL,65
sub AL,BL
pushf
pop BX
and BH,00001000b
and BL,10000000b
or BH,BL
jz e
mov DL,66
e: int 21h
mov AH,76
int 21h
end

.model small
.code
mov AH,1
int 21h
mov AH,2
mov DL,65
add AL,27
jo t
add AL,177
adc DL,0
t:int 21h
mov AH,76
int 21h
end

.model small
.code
mov AH,1
int 21h
add AL,50
pushf
pop AX
and AH,00001000b
mov CL,11
shr AX,CL
push AX
popf
mov AH,2
mov DL,66
sbb DL,0
int 21h
mov AH,76
int 21h
end


.model small
.code
mov AH,1
int 21h
add AL,150
pushf
pop BX
shl BL,1
shl BL,1
push BX
popf
mov AH,2
mov DL,65
jp t
mov DL,66
t:
int 21h
mov AH,76
int 21h
end

.model small
.code
mov AH,1
int 21h
mov BL,AL
add BL,150
pushf
pop CX
and CL,00000001b
push CX
popf
int 21h
mov BL,AL
add BL,150
pushf
pop AX
and AL,00000001b
and CL,AL
push CX
popf
mov AH,2
mov DL,65
jc t
add DL,1
t: int 21h
mov AH,76
int 21h
end


.model small
.code
mov AH,1
int 21h
mov BL,AL
int 21h
add BL,AL
pushf
pop AX
and AL,00010000b
push AX
popf
mov AH,2
cmp AL,00010000b
jc t
mov DL,66
jmp e
t:mov DL,65
e:
int 21h
mov AH,76
int 21h
end

.model small
.code
mov BL,100
add BL,120
pushf
pop AX
or AL,00000001b
push AX
popf
g:
mov AH,2
jc t
mov DL,65
jmp k
t: mov DL,66
k:
int 21h
mov AH,76
int 21h
end


.model small
.code
mov CL,100
mov BH,105
mov AH,2
mov DL,65
add CL,bh
js L1
add DL,3
L1:
int 21h
mov AH,76
int 21h
end
