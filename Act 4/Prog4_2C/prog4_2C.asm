.model small
.stack 100h

.data
    CX_VALUE DW 1, 5 DUP(?)

.code
main proc
    mov ax, @DATA
    mov ds, AX

    CALL PRINT

    mov ah, 1
    int 21h

    mov ax, 4C00h
    int 21h
main endp

PRINT PROC
    mov cx, CX_VALUE
LOOP_START:
    mov ah, 02h
    mov dl, '*'
    int 21h

    inc cx
    cmp cx, 5
    jle LOOP_START

    ret
PRINT ENDP
end main