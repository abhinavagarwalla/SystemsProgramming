.model small
.code
Mov Dl,40
Mov BH,32
Mov AH,2
Add DL,BH
Int 21h
Mov DL,90
Sub DL,24
Int 21h
Mov AH,76
Int 21h
End
