.model small
.code
mov AH,1
int 33
cmp AL,97
jge L1
mov DL,225
jmp L2
L1:mov DL,224
L2:mov AH,2
int 33
mov AH,76
int 33
end
