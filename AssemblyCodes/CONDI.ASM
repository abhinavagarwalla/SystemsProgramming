.model small
.code
mov BL,40
mov BH,49
mov CL,30
mov CH,39
mov AH,1
int 33
mov DL, AL
mov AH,2
AND AL,01H
cmp AL,1
je L2

L1:
cmp DL,BL
jge L3
cmp DL,BH
jle L3
add BL,10
add BH,10
cmp BL,120
jle L1
jmp L4

L2:
mov BL,DL
sub BL,CL
cmp BL,9
ja L3
add CL,10
add CH,10
cmp CL,110
jle L2
jmp L4

L3:
mov DL,65
int 33
jmp L5

L4:
mov DL,66
int 33

L5:
mov AH,76
int 33
end

;Question 13
.model small
.code
mov AH,2
mov DL,70
L1:
int 33
sub DL,1
cmp DL,65
jge L1
mov AH,76
int 33
end

;Question 14
.model small
.code
mov AH,1
int 33
mov BL,AL
AND BL,01H
mov AH,2
cmp BL,0
je L1
mov DL,66
int 33
jmp L2
L1: mov DL,65
int 33
L2:
mov AH,76
int 33
end

;Question 4
.model small
.code
mov AH,1
int 33
mov DL,AL
int 33
add DL, AL
sub DL, 48
mov AH,2
cmp DL,58
jge L1
int 33
jmp L2
L1:
mov CL, DL
mov DL, 49
int 33
mov DL, CL
sub DL,10
int 33
L2:
mov AH,76
int 33
end


;Question 1

.model small
.code
mov AH,1
int 33
mov BL,AL
cmp BL,65
jl L1
cmp BL,90
jg L1
mov DL,224
jmp L2
L1:mov DL,225
L2:mov AH,2 
int 33
mov AH,76
int 33
end
