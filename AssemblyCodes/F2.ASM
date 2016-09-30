.model small
.code
main proc
 mov AL,5
 call f
 mov AH,2
 int 21h
 mov AH,76
 int 21h
main endp
f proc
 cmp AL,3
 jg L1
 mov DL,1
 RET
 L1:
 push AX
 sub AL,1
 call f
 pop AX
 mov BL,DL
 push AX
 push BX
 sub AL,2
 call f
 pop BX
 pop AX
 add BL,DL
 sub AL,3
 push BX
 call f
 pop BX
 add DL,BL
 RET
f endp
end main
