.model small
.data
a db 49,"th letter:",49,36
b db dup(?)
.code
mov AX,@data
mov DS,AX
lea SI,a
lea DI,b
mov CX,5
mov AH,1
L1:int 33
mov [DI],AL
inc DI
loop L1
end

.model small
.data
a db 100 dup(?)
.code
mov AX,@data
mov DS,AX
mov BX,0
lea SI,a
mov AH,1
l1:int 33
cmp AL,32
jne l2
mov BX,SI
l2:mov [SI],AL
inc SI
cmp AL,90
jne l1
mov AL,36
mov [SI],AL
mov AH,9
mov DX,BX
int 21h
mov AH,76
int 21h
end

.model small
.data
a db 100 dup(?)
.code
mov AX,@data
mov DS,AX
mov SI,0
mov AH,1
mov CX,9
L1:int 21h
mov a[SI],AL
inc SI
loop L1
int 21h
sub AL,48
mov AH,0
mov SI,AX
mov BL,36
mov a[SI],BL
mov AH,9
lea DX,a
int 21h
mov AH,76
int 21h
end

.model small
.data
a db 100 dup(?)
.code
mov AX,@data
mov DS,AX
mov SI,0
mov CX,5
mov AH,1
L1:int 21h
mov a[SI],AL
inc SI
loop L1
mov BL,5
mov AH,2
L2:
mov SI,0
L3:
mov DL,a[SI]
int 21h
inc SI
cmp SI,BL
jl L3
dec BL
cmp BL,0
jg L2
mov AH,76
int 21h
end

.model small
.data
a db 100 dup(?)
.code
mov AX,@data
mov DS,AX
lea SI,a
mov AH,1
mov CX,10
l1:int 21h
mov [SI],AL
inc SI
loop l1
lea SI,a
mov CX,10
l2:
mov BL,97
cmp [SI],BL
jge L3
mov BL,32
add [SI],BL
jmp L4
L3:
mov BL,32
sub [SI],BL
L4:inc SI
loop l2
mov BL,36
mov [SI],BL
mov AH,9
lea DX,a
int 21h
mov AH,76
int 21h
end

.model small
.data
a db 100 dup(?)
.code
mov AX,@data
mov DS,AX
mov AH,1
mov CX,10
lea SI,a
l1:int 21h
mov [SI],AL
inc SI
loop l1
mov CX,10
mov AH,2
lea SI,a
mov DL,[SI]
l2:cmp DL,97
jge l3
int 21h
l3:add SI,1
mov DL,[SI]
loop l2
mov AH,76
int 21h
end

.model small
.data
a db 69,70,75
b dw 25665
db 80,98,36
.code
mov AX,@data
mov DS,AX
mov AH,9
lea DX,a
int 21h
lea SI,a
mov CH,71
mov CL,72
mov [SI+1],CH
int 21h
mov [SI+4],CX
int 21h
add DX,3
int 21h
mov AH,76
int 21h
end

.model small
.data
a db 100 dup(?)
.code
mov AX,@data
mov DS,AX
mov SI,0
mov AH,1
L:int 21h
mov a[SI],AL
inc SI
cmp SI,5
jl L
mov SI,0
mov AH,2
K:
mov DL,a[SI]
int 21h
inc SI
cmp SI,5
jl K
mov AH,76
int 21h
end

.model small
.data
a db 100 dup(?)
.code
mov AX,@data
mov DS,AX
lea SI,a
mov CX,5
mov AH,1
L1: int 21h
mov [SI],AL
inc SI
loop L1
mov CX,5
mov AH,2
L2: Dec SI
mov DL,[SI]
int 21h
loop L2
mov AH,76
int 21h
end
