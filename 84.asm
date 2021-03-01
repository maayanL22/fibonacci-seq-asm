IDEAL
MODEL small
Stack 100h
DATASEG
digit db 10 dup (1)
var1 db 0
var2 db 1
CODESEG
start:
	mov [var1], 0
	mov [var2], 1
	mov [digit], 0
	mov [digit + 1], 1
	xor al, al
	xor cx, cx
	mov cx, 8
	lea bx, [digit + 2]
doFibonachi:
	mov al, [var2]
	add al, [var1]
	mov ah, [var2]
	mov [var1], ah
	mov [var2], al
	mov [bx], al
	add bx, 1
	loop doFibonachi
exit :
	mov ax, 4C00h
	int 21h
END start