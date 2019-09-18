;John Zheng
;jz5pt
;3/24/19
;mathlib.s

	global product
	global power
	section .text

product:
	;standard prologue
	xor rax, rax	;zero out the return register
	xor r10, r10	;zero out the counter i
	mov r11, rdi	;moves the 1st parameter into caller-saved register

start:
	cmp r10, rsi	;does i == n?
	je  done		;if so, we are done with the loop
	add rax, r11	;add the number to the return register
	inc r10			;increment our counter i
	jmp start		;we are done with this loop iteration

done:
	;standard epilogue
	ret


power:
	;standard prologue
	xor rax, rax	;zero out the return register
	mov r10, rdi	;moves 1st parm. into caller-saved register
	mov r11, rsi	;moves 2nd parm. into caller-saved register	
	cmp r11, 0		;compare if y==0
	je	pow_done 	;if true end recurssive call
	jg	loop		;if b > 0, jump to recurssive call
	
loop:
	dec r11			;y-1	
	push r11		;saves y onto stack
	push r10		;saves x onto stack
	call power		;recurssive call	
	push rax		;saves result
	push r10		;saves x
	call product	;multiply
pow_done:
	ret






