.model small
.code
mov CL,100
mov BH,130
mov AH,2
mov DL,65
cmp CL,BH
ja L1
add DL,1
L1:int 21h
mov AH,76
int 33
end
