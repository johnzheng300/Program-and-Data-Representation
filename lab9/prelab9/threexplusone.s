;John Zheng
;jz5pt
;4/10/19
;threexplusone.s

	global threexplusone
	
	section .text

threexplusone:
	xor rax, rax	;clears return register
	cmp rdi, 1	 	;check if end of recursion
	je done
	test rdi, 1		;checks if lowest bit is 1
	jnz odd			;jump odd
	jz	even		;jump even
even:
	;push rdi
	sar rdi, 1		;divide by 2
	call threexplusone	
	;pop rdi
	add rax, 1		;counter + 1
	ret
odd:
	;push rdi
	;add rdi, rdi	;multiply by 3
	;add rdi, rdi	
	imul rdi, 3		;multiply by 3 using integer multiply
	add rdi, 1		;add 1
	call threexplusone
	;pop rdi
	add rax, 1		;counter + 1
	ret
done:
	ret
