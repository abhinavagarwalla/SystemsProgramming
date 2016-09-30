.model small
.code

find proc
 push AX
 mov BL,AH
 mov AH,0
 div BL
 mov AH,2
 mov DL,BL
 int 21h
 mov DL,AH
 int 21h
 mov CL,AL
 mov CH,AH
 pop AX
 RET
find endp

main proc
mov AH,1
int 21h
mov AH,10
call find
mov AH,2
mov DL,CL
add DL,48
int 21h
mov DL,CH
add DL,48
int 21h
mov AH,76
int 21h
main endp

xyz proc
 mov DL,0
 L2:
 cmp BL,CL
 jg L1
 add DL,BL
 add BL,1
 jmp L2
 L1:RET
xyz endp
;main proc
; mov BH,5
; mov CH,10
; mov DH,15
; mov BL,BH
; mov CL,CH
; CALL xyz
; mov AL,DL
; mov BL,CH
; mov CL,DH
; CALL xyz
; sub DL,AL
; mov AH,2
; int 33
; mov AH,76
; int 33
;main endp
end main
