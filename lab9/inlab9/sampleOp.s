	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	__Z10helloWorldv        ## -- Begin function _Z10helloWorldv
	.p2align	4, 0x90
__Z10helloWorldv:                       ## @_Z10helloWorldv
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
	sub	rsp, 16
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	mov	rdi, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	lea	rsi, [rip + L_.str]
	mov	edx, 12
	call	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	rbx, rax
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rax - 24]
	add	rsi, rbx
	lea	r14, [rbp - 24]
	mov	rdi, r14
	call	__ZNKSt3__18ios_base6getlocEv
Ltmp0:
	mov	rsi, qword ptr [rip + __ZNSt3__15ctypeIcE2idE@GOTPCREL]
	mov	rdi, r14
	call	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp1:
## %bb.1:
	mov	rcx, qword ptr [rax]
Ltmp2:
	mov	esi, 10
	mov	rdi, rax
	call	qword ptr [rcx + 56]
Ltmp3:
## %bb.2:
	mov	r14d, eax
	lea	rdi, [rbp - 24]
	call	__ZNSt3__16localeD1Ev
	movsx	esi, r14b
	mov	rdi, rbx
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	rdi, rbx
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	add	rsp, 16
	pop	rbx
	pop	r14
	pop	rbp
	ret
LBB0_3:
Ltmp4:
	mov	rbx, rax
Ltmp5:
	lea	rdi, [rbp - 24]
	call	__ZNSt3__16localeD1Ev
Ltmp6:
## %bb.4:
	mov	rdi, rbx
	call	__Unwind_Resume
	ud2
LBB0_5:
Ltmp7:
	mov	rdi, rax
	call	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp3-Ltmp0            ##   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0     ##     jumps to Ltmp4
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Ltmp5-Ltmp3            ##   Call between Ltmp3 and Ltmp5
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp5-Lfunc_begin0     ## >> Call Site 4 <<
	.uleb128 Ltmp6-Ltmp5            ##   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp7-Lfunc_begin0     ##     jumps to Ltmp7
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp6-Lfunc_begin0     ## >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp6       ##   Call between Ltmp6 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z8positivei           ## -- Begin function _Z8positivei
	.p2align	4, 0x90
__Z8positivei:                          ## @_Z8positivei
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	test	edi, edi
	setg	al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__Z8multiplyii          ## -- Begin function _Z8multiplyii
	.p2align	4, 0x90
__Z8multiplyii:                         ## @_Z8multiplyii
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	imul	edi, esi
	xor	eax, eax
	test	esi, esi
	cmovg	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	call	__Z10helloWorldv
	xor	eax, eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
Ltmp8:
	lea	rdi, [rbp - 80]
	mov	rsi, rbx
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp9:
## %bb.1:
	cmp	byte ptr [rbp - 80], 0
	je	LBB4_11
## %bb.2:
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax - 24]
	lea	r12, [rbx + rax]
	mov	rdi, qword ptr [rbx + rax + 40]
	mov	r13d, dword ptr [rbx + rax + 8]
	mov	eax, dword ptr [rbx + rax + 144]
	cmp	eax, -1
	jne	LBB4_8
## %bb.3:
Ltmp10:
	mov	qword ptr [rbp - 64], rdi ## 8-byte Spill
	lea	rdi, [rbp - 56]
	mov	rsi, r12
	call	__ZNKSt3__18ios_base6getlocEv
Ltmp11:
## %bb.4:
Ltmp12:
	mov	rsi, qword ptr [rip + __ZNSt3__15ctypeIcE2idE@GOTPCREL]
	lea	rdi, [rbp - 56]
	call	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp13:
## %bb.5:
	mov	rcx, qword ptr [rax]
Ltmp14:
	mov	esi, 32
	mov	rdi, rax
	call	qword ptr [rcx + 56]
	mov	byte ptr [rbp - 41], al ## 1-byte Spill
Ltmp15:
## %bb.6:
Ltmp20:
	lea	rdi, [rbp - 56]
	call	__ZNSt3__16localeD1Ev
Ltmp21:
## %bb.7:
	movsx	eax, byte ptr [rbp - 41] ## 1-byte Folded Reload
	mov	dword ptr [r12 + 144], eax
	mov	rdi, qword ptr [rbp - 64] ## 8-byte Reload
LBB4_8:
	add	r14, r15
	and	r13d, 176
	cmp	r13d, 32
	mov	rdx, r15
	cmove	rdx, r14
Ltmp22:
	movsx	r9d, al
	mov	rsi, r15
	mov	rcx, r14
	mov	r8, r12
	call	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp23:
## %bb.9:
	test	rax, rax
	jne	LBB4_11
## %bb.10:
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax - 24]
	lea	rdi, [rbx + rax]
	mov	esi, dword ptr [rbx + rax + 32]
	or	esi, 5
Ltmp25:
	call	__ZNSt3__18ios_base5clearEj
Ltmp26:
LBB4_11:
Ltmp30:
	lea	rdi, [rbp - 80]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp31:
LBB4_21:
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB4_16:
Ltmp27:
	jmp	LBB4_17
LBB4_12:
Ltmp16:
	mov	r14, rax
Ltmp17:
	lea	rdi, [rbp - 56]
	call	__ZNSt3__16localeD1Ev
Ltmp18:
	jmp	LBB4_18
LBB4_13:
Ltmp19:
	mov	rdi, rax
	call	___clang_call_terminate
LBB4_15:
Ltmp24:
LBB4_17:
	mov	r14, rax
LBB4_18:
Ltmp28:
	lea	rdi, [rbp - 80]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp29:
	jmp	LBB4_19
LBB4_14:
Ltmp32:
	mov	r14, rax
LBB4_19:
	mov	rdi, r14
	call	___cxa_begin_catch
	mov	rax, qword ptr [rbx]
	mov	rdi, rbx
	add	rdi, qword ptr [rax - 24]
Ltmp33:
	call	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp34:
## %bb.20:
	call	___cxa_end_catch
	jmp	LBB4_21
LBB4_22:
Ltmp35:
	mov	rbx, rax
Ltmp36:
	call	___cxa_end_catch
Ltmp37:
## %bb.23:
	mov	rdi, rbx
	call	__Unwind_Resume
	ud2
LBB4_24:
Ltmp38:
	mov	rdi, rax
	call	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp8-Lfunc_begin1     ## >> Call Site 1 <<
	.uleb128 Ltmp9-Ltmp8            ##   Call between Ltmp8 and Ltmp9
	.uleb128 Ltmp32-Lfunc_begin1    ##     jumps to Ltmp32
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp10-Lfunc_begin1    ## >> Call Site 2 <<
	.uleb128 Ltmp11-Ltmp10          ##   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp24-Lfunc_begin1    ##     jumps to Ltmp24
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp12-Lfunc_begin1    ## >> Call Site 3 <<
	.uleb128 Ltmp15-Ltmp12          ##   Call between Ltmp12 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin1    ##     jumps to Ltmp16
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp20-Lfunc_begin1    ## >> Call Site 4 <<
	.uleb128 Ltmp23-Ltmp20          ##   Call between Ltmp20 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin1    ##     jumps to Ltmp24
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp25-Lfunc_begin1    ## >> Call Site 5 <<
	.uleb128 Ltmp26-Ltmp25          ##   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin1    ##     jumps to Ltmp27
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp30-Lfunc_begin1    ## >> Call Site 6 <<
	.uleb128 Ltmp31-Ltmp30          ##   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin1    ##     jumps to Ltmp32
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp17-Lfunc_begin1    ## >> Call Site 7 <<
	.uleb128 Ltmp18-Ltmp17          ##   Call between Ltmp17 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin1    ##     jumps to Ltmp19
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp28-Lfunc_begin1    ## >> Call Site 8 <<
	.uleb128 Ltmp29-Ltmp28          ##   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp38-Lfunc_begin1    ##     jumps to Ltmp38
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp29-Lfunc_begin1    ## >> Call Site 9 <<
	.uleb128 Ltmp33-Ltmp29          ##   Call between Ltmp29 and Ltmp33
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin1    ## >> Call Site 10 <<
	.uleb128 Ltmp34-Ltmp33          ##   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin1    ##     jumps to Ltmp35
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin1    ## >> Call Site 11 <<
	.uleb128 Ltmp36-Ltmp34          ##   Call between Ltmp34 and Ltmp36
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin1    ## >> Call Site 12 <<
	.uleb128 Ltmp37-Ltmp36          ##   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp38-Lfunc_begin1    ##     jumps to Ltmp38
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp37-Lfunc_begin1    ## >> Call Site 13 <<
	.uleb128 Lfunc_end1-Ltmp37      ##   Call between Ltmp37 and Lfunc_end1
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end1:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 56
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	test	rdi, rdi
	je	LBB5_19
## %bb.1:
	mov	r12, r8
	mov	r15, rcx
	mov	r13, rdi
	mov	dword ptr [rbp - 68], r9d ## 4-byte Spill
	mov	rax, rcx
	sub	rax, rsi
	mov	rcx, qword ptr [r8 + 24]
	xor	r14d, r14d
	sub	rcx, rax
	cmovg	r14, rcx
	mov	qword ptr [rbp - 88], rdx ## 8-byte Spill
	mov	rbx, rdx
	sub	rbx, rsi
	test	rbx, rbx
	jle	LBB5_3
## %bb.2:
	mov	rax, qword ptr [r13]
	mov	rdi, r13
	mov	rdx, rbx
	call	qword ptr [rax + 96]
	cmp	rax, rbx
	jne	LBB5_19
LBB5_3:
	test	r14, r14
	jle	LBB5_15
## %bb.4:
	mov	qword ptr [rbp - 80], r12 ## 8-byte Spill
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 64], xmm0
	mov	qword ptr [rbp - 48], 0
	cmp	r14, 23
	jae	LBB5_8
## %bb.5:
	mov	eax, r14d
	add	al, r14b
	mov	byte ptr [rbp - 64], al
	lea	rbx, [rbp - 63]
	mov	r12, rbx
	jmp	LBB5_9
LBB5_8:
	lea	rbx, [r14 + 16]
	and	rbx, -16
	mov	rdi, rbx
	call	__Znwm
	mov	r12, rax
	mov	qword ptr [rbp - 48], rax
	or	rbx, 1
	mov	qword ptr [rbp - 64], rbx
	mov	qword ptr [rbp - 56], r14
	lea	rbx, [rbp - 63]
LBB5_9:
	movzx	esi, byte ptr [rbp - 68] ## 1-byte Folded Reload
	mov	rdi, r12
	mov	rdx, r14
	call	_memset
	mov	byte ptr [r12 + r14], 0
	test	byte ptr [rbp - 64], 1
	je	LBB5_11
## %bb.10:
	mov	rbx, qword ptr [rbp - 48]
LBB5_11:
	mov	rax, qword ptr [r13]
Ltmp39:
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r14
	call	qword ptr [rax + 96]
Ltmp40:
	mov	r12, qword ptr [rbp - 80] ## 8-byte Reload
## %bb.12:
	mov	rbx, rax
	test	byte ptr [rbp - 64], 1
	je	LBB5_14
## %bb.13:
	mov	rdi, qword ptr [rbp - 48]
	call	__ZdlPv
LBB5_14:
	cmp	rbx, r14
	jne	LBB5_19
LBB5_15:
	mov	rsi, qword ptr [rbp - 88] ## 8-byte Reload
	sub	r15, rsi
	test	r15, r15
	jle	LBB5_17
## %bb.16:
	mov	rax, qword ptr [r13]
	mov	rdi, r13
	mov	rdx, r15
	call	qword ptr [rax + 96]
	cmp	rax, r15
	jne	LBB5_19
LBB5_17:
	mov	qword ptr [r12 + 24], 0
	jmp	LBB5_20
LBB5_19:
	xor	r13d, r13d
LBB5_20:
	mov	rax, r13
	add	rsp, 56
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
LBB5_21:
Ltmp41:
	mov	rbx, rax
	test	byte ptr [rbp - 64], 1
	je	LBB5_23
## %bb.22:
	mov	rdi, qword ptr [rbp - 48]
	call	__ZdlPv
LBB5_23:
	mov	rdi, rbx
	call	__Unwind_Resume
	ud2
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2 ## >> Call Site 1 <<
	.uleb128 Ltmp39-Lfunc_begin2    ##   Call between Lfunc_begin2 and Ltmp39
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin2    ## >> Call Site 2 <<
	.uleb128 Ltmp40-Ltmp39          ##   Call between Ltmp39 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin2    ##     jumps to Ltmp41
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin2    ## >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp40      ##   Call between Ltmp40 and Lfunc_end2
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	push	rax
	call	___cxa_begin_catch
	call	__ZSt9terminatev
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hello World!"


.subsections_via_symbols
