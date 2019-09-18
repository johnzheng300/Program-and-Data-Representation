	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rbp - 24]
	call	__ZN7spinachC1Ev
	lea	rdi, [rbp - 24]
	mov	qword ptr [rbp - 16], rdi
	mov	rdi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rdi]
	call	qword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 32], rdi ## 8-byte Spill
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 32] ## 8-byte Reload
	call	qword ptr [rax + 8]
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7spinachC1Ev        ## -- Begin function _ZN7spinachC1Ev
	.weak_def_can_be_hidden	__ZN7spinachC1Ev
	.p2align	4, 0x90
__ZN7spinachC1Ev:                       ## @_ZN7spinachC1Ev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZN7spinachC2Ev
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7spinachC2Ev        ## -- Begin function _ZN7spinachC2Ev
	.weak_def_can_be_hidden	__ZN7spinachC2Ev
	.p2align	4, 0x90
__ZN7spinachC2Ev:                       ## @_ZN7spinachC2Ev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, rdi
	mov	qword ptr [rbp - 16], rdi ## 8-byte Spill
	mov	rdi, rax
	call	__ZN9vegetableC2Ev
	mov	rax, qword ptr [rip + __ZTV7spinach@GOTPCREL]
	add	rax, 16
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	mov	qword ptr [rdi], rax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN9vegetableC2Ev      ## -- Begin function _ZN9vegetableC2Ev
	.weak_def_can_be_hidden	__ZN9vegetableC2Ev
	.p2align	4, 0x90
__ZN9vegetableC2Ev:                     ## @_ZN9vegetableC2Ev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + __ZTV9vegetable@GOTPCREL]
	add	rax, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7spinach14printVegetableEv ## -- Begin function _ZN7spinach14printVegetableEv
	.weak_def_can_be_hidden	__ZN7spinach14printVegetableEv
	.p2align	4, 0x90
__ZN7spinach14printVegetableEv:         ## @_ZN7spinach14printVegetableEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rax, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	lea	rsi, [rip + L_.str.2]
	call	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	rdi, rax
	lea	rsi, [rip + __ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	mov	qword ptr [rbp - 16], rax ## 8-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7spinach13vegetableLoopEv ## -- Begin function _ZN7spinach13vegetableLoopEv
	.weak_def_can_be_hidden	__ZN7spinach13vegetableLoopEv
	.p2align	4, 0x90
__ZN7spinach13vegetableLoopEv:          ## @_ZN7spinach13vegetableLoopEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 3
	jge	LBB5_4
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	mov	rdi, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	lea	rsi, [rip + L_.str.3]
	call	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	rdi, rax
	lea	rsi, [rip + __ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
## %bb.3:                               ##   in Loop: Header=BB5_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB5_1
LBB5_4:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN9vegetable14printVegetableEv ## -- Begin function _ZN9vegetable14printVegetableEv
	.weak_def_can_be_hidden	__ZN9vegetable14printVegetableEv
	.p2align	4, 0x90
__ZN9vegetable14printVegetableEv:       ## @_ZN9vegetable14printVegetableEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rax, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	lea	rsi, [rip + L_.str]
	call	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	rdi, rax
	lea	rsi, [rip + __ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	mov	qword ptr [rbp - 16], rax ## 8-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN9vegetable13vegetableLoopEv ## -- Begin function _ZN9vegetable13vegetableLoopEv
	.weak_def_can_be_hidden	__ZN9vegetable13vegetableLoopEv
	.p2align	4, 0x90
__ZN9vegetable13vegetableLoopEv:        ## @_ZN9vegetable13vegetableLoopEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 3
	jge	LBB7_4
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	mov	rdi, qword ptr [rip + __ZNSt3__14coutE@GOTPCREL]
	lea	rsi, [rip + L_.str.1]
	call	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	rdi, rax
	lea	rsi, [rip + __ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB7_1
LBB7_4:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ## -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 24], rdi ## 8-byte Spill
	mov	rdi, rax
	mov	qword ptr [rbp - 32], rsi ## 8-byte Spill
	call	__ZNSt3__111char_traitsIcE6lengthEPKc
	mov	rdi, qword ptr [rbp - 24] ## 8-byte Reload
	mov	rsi, qword ptr [rbp - 32] ## 8-byte Reload
	mov	rdx, rax
	call	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E: ## @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	qword ptr [rbp - 16]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
__ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	rcx, qword ptr [rcx - 24]
	add	rax, rcx
	mov	qword ptr [rbp - 16], rdi ## 8-byte Spill
	mov	rdi, rax
	mov	esi, 10
	call	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	movsx	esi, al
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
	mov	rax, rcx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
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
	sub	rsp, 160
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rsi, qword ptr [rbp - 8]
Ltmp0:
	lea	rdi, [rbp - 40]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp1:
	jmp	LBB11_1
LBB11_1:
Ltmp2:
	lea	rdi, [rbp - 40]
	call	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
Ltmp3:
	mov	byte ptr [rbp - 73], al ## 1-byte Spill
	jmp	LBB11_2
LBB11_2:
	mov	al, byte ptr [rbp - 73] ## 1-byte Reload
	test	al, 1
	jne	LBB11_3
	jmp	LBB11_15
LBB11_3:
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rbp - 72]
	call	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax - 24]
	add	rdi, rax
Ltmp4:
	mov	qword ptr [rbp - 88], rsi ## 8-byte Spill
	call	__ZNKSt3__18ios_base5flagsEv
Ltmp5:
	mov	dword ptr [rbp - 92], eax ## 4-byte Spill
	jmp	LBB11_4
LBB11_4:
	mov	eax, dword ptr [rbp - 92] ## 4-byte Reload
	and	eax, 176
	cmp	eax, 32
	jne	LBB11_6
## %bb.5:
	mov	rax, qword ptr [rbp - 16]
	add	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 104], rax ## 8-byte Spill
	jmp	LBB11_7
LBB11_6:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 104], rax ## 8-byte Spill
LBB11_7:
	mov	rax, qword ptr [rbp - 104] ## 8-byte Reload
	mov	rcx, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 24]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	rsi, qword ptr [rsi - 24]
	add	rdx, rsi
Ltmp6:
	mov	rdi, rdx
	mov	qword ptr [rbp - 112], rax ## 8-byte Spill
	mov	qword ptr [rbp - 120], rcx ## 8-byte Spill
	mov	qword ptr [rbp - 128], rdx ## 8-byte Spill
	call	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
Ltmp7:
	mov	byte ptr [rbp - 129], al ## 1-byte Spill
	jmp	LBB11_8
LBB11_8:
	mov	rdi, qword ptr [rbp - 72]
Ltmp8:
	mov	al, byte ptr [rbp - 129] ## 1-byte Reload
	movsx	r9d, al
	mov	rsi, qword ptr [rbp - 88] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 112] ## 8-byte Reload
	mov	rcx, qword ptr [rbp - 120] ## 8-byte Reload
	mov	r8, qword ptr [rbp - 128] ## 8-byte Reload
	call	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp9:
	mov	qword ptr [rbp - 144], rax ## 8-byte Spill
	jmp	LBB11_9
LBB11_9:
	mov	rax, qword ptr [rbp - 144] ## 8-byte Reload
	mov	qword ptr [rbp - 64], rax
	lea	rdi, [rbp - 64]
	call	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	test	al, 1
	jne	LBB11_10
	jmp	LBB11_14
LBB11_10:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	rcx, qword ptr [rcx - 24]
	add	rax, rcx
Ltmp10:
	mov	esi, 5
	mov	rdi, rax
	call	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
Ltmp11:
	jmp	LBB11_11
LBB11_11:
	jmp	LBB11_14
LBB11_12:
Ltmp17:
	mov	ecx, edx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], ecx
	jmp	LBB11_18
LBB11_13:
Ltmp12:
	mov	ecx, edx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], ecx
Ltmp13:
	lea	rdi, [rbp - 40]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp14:
	jmp	LBB11_17
LBB11_14:
	jmp	LBB11_15
LBB11_15:
Ltmp15:
	lea	rdi, [rbp - 40]
	call	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp16:
	jmp	LBB11_16
LBB11_16:
	jmp	LBB11_20
LBB11_17:
	jmp	LBB11_18
LBB11_18:
	mov	rdi, qword ptr [rbp - 48]
	call	___cxa_begin_catch
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdi]
	mov	rcx, qword ptr [rcx - 24]
	add	rdi, rcx
Ltmp18:
	mov	qword ptr [rbp - 152], rax ## 8-byte Spill
	call	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp19:
	jmp	LBB11_19
LBB11_19:
	call	___cxa_end_catch
LBB11_20:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 160
	pop	rbp
	ret
LBB11_21:
Ltmp20:
	mov	ecx, edx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], ecx
Ltmp21:
	call	___cxa_end_catch
Ltmp22:
	jmp	LBB11_22
LBB11_22:
	jmp	LBB11_23
LBB11_23:
	mov	rdi, qword ptr [rbp - 48]
	call	__Unwind_Resume
	ud2
LBB11_24:
Ltmp23:
	mov	rdi, rax
	mov	qword ptr [rbp - 160], rdx ## 8-byte Spill
	call	___clang_call_terminate
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table11:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0     ## >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0            ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp17-Lfunc_begin0    ##     jumps to Ltmp17
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp2-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp11-Ltmp2           ##   Call between Ltmp2 and Ltmp11
	.uleb128 Ltmp12-Lfunc_begin0    ##     jumps to Ltmp12
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp13-Lfunc_begin0    ## >> Call Site 3 <<
	.uleb128 Ltmp14-Ltmp13          ##   Call between Ltmp13 and Ltmp14
	.uleb128 Ltmp23-Lfunc_begin0    ##     jumps to Ltmp23
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp15-Lfunc_begin0    ## >> Call Site 4 <<
	.uleb128 Ltmp16-Ltmp15          ##   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0    ##     jumps to Ltmp17
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp16-Lfunc_begin0    ## >> Call Site 5 <<
	.uleb128 Ltmp18-Ltmp16          ##   Call between Ltmp16 and Ltmp18
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0    ## >> Call Site 6 <<
	.uleb128 Ltmp19-Ltmp18          ##   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin0    ##     jumps to Ltmp20
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin0    ## >> Call Site 7 <<
	.uleb128 Ltmp21-Ltmp19          ##   Call between Ltmp19 and Ltmp21
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin0    ## >> Call Site 8 <<
	.uleb128 Ltmp22-Ltmp21          ##   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0    ##     jumps to Ltmp23
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp22-Lfunc_begin0    ## >> Call Site 9 <<
	.uleb128 Lfunc_end0-Ltmp22      ##   Call between Ltmp22 and Lfunc_end0
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
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ## -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_strlen
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv: ## @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
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
	sub	rsp, 240
	mov	al, r9b
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], r8
	mov	byte ptr [rbp - 49], al
	mov	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 168], rcx ## 8-byte Spill
	call	__ZNSt3__1L15__get_nullptr_tEv
	mov	qword ptr [rbp - 64], rax
	lea	rdi, [rbp - 64]
	call	__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
	mov	rcx, qword ptr [rbp - 168] ## 8-byte Reload
	cmp	rcx, rax
	jne	LBB14_2
## %bb.1:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB14_25
LBB14_2:
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 24]
	sub	rax, rcx
	mov	qword ptr [rbp - 72], rax
	mov	rdi, qword ptr [rbp - 48]
	call	__ZNKSt3__18ios_base5widthEv
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 80]
	cmp	rax, qword ptr [rbp - 72]
	jle	LBB14_4
## %bb.3:
	mov	rax, qword ptr [rbp - 72]
	mov	rcx, qword ptr [rbp - 80]
	sub	rcx, rax
	mov	qword ptr [rbp - 80], rcx
	jmp	LBB14_5
LBB14_4:
	mov	qword ptr [rbp - 80], 0
LBB14_5:
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	sub	rax, rcx
	mov	qword ptr [rbp - 88], rax
	cmp	qword ptr [rbp - 88], 0
	jle	LBB14_9
## %bb.6:
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 88]
	call	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmp	rax, qword ptr [rbp - 88]
	je	LBB14_8
## %bb.7:
	call	__ZNSt3__1L15__get_nullptr_tEv
	mov	qword ptr [rbp - 96], rax
	lea	rdi, [rbp - 96]
	call	__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB14_25
LBB14_8:
	jmp	LBB14_9
LBB14_9:
	cmp	qword ptr [rbp - 80], 0
	jle	LBB14_20
## %bb.10:
	mov	rsi, qword ptr [rbp - 80]
	movsx	edx, byte ptr [rbp - 49]
	lea	rax, [rbp - 120]
	mov	rdi, rax
	mov	qword ptr [rbp - 176], rax ## 8-byte Spill
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	mov	rdi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rbp - 176] ## 8-byte Reload
	mov	qword ptr [rbp - 184], rdi ## 8-byte Spill
	mov	rdi, rax
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	mov	rdx, qword ptr [rbp - 80]
Ltmp24:
	mov	rdi, qword ptr [rbp - 184] ## 8-byte Reload
	mov	rsi, rax
	call	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
Ltmp25:
	mov	qword ptr [rbp - 192], rax ## 8-byte Spill
	jmp	LBB14_11
LBB14_11:
	mov	rax, qword ptr [rbp - 192] ## 8-byte Reload
	cmp	rax, qword ptr [rbp - 80]
	je	LBB14_16
## %bb.12:
Ltmp26:
	call	__ZNSt3__1L15__get_nullptr_tEv
Ltmp27:
	mov	qword ptr [rbp - 200], rax ## 8-byte Spill
	jmp	LBB14_13
LBB14_13:
	mov	rax, qword ptr [rbp - 200] ## 8-byte Reload
	mov	qword ptr [rbp - 144], rax
Ltmp28:
	lea	rdi, [rbp - 144]
	call	__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
Ltmp29:
	mov	qword ptr [rbp - 208], rax ## 8-byte Spill
	jmp	LBB14_14
LBB14_14:
	mov	rax, qword ptr [rbp - 208] ## 8-byte Reload
	mov	qword ptr [rbp - 16], rax
	mov	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 148], 1
	jmp	LBB14_17
LBB14_15:
Ltmp30:
	mov	ecx, edx
	mov	qword ptr [rbp - 128], rax
	mov	dword ptr [rbp - 132], ecx
Ltmp31:
	lea	rdi, [rbp - 120]
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp32:
	jmp	LBB14_19
LBB14_16:
	mov	dword ptr [rbp - 148], 0
LBB14_17:
	lea	rdi, [rbp - 120]
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	eax, dword ptr [rbp - 148]
	test	eax, eax
	mov	dword ptr [rbp - 212], eax ## 4-byte Spill
	je	LBB14_18
	jmp	LBB14_29
LBB14_29:
	mov	eax, dword ptr [rbp - 212] ## 4-byte Reload
	sub	eax, 1
	mov	dword ptr [rbp - 216], eax ## 4-byte Spill
	je	LBB14_25
	jmp	LBB14_28
LBB14_18:
	jmp	LBB14_20
LBB14_19:
	jmp	LBB14_26
LBB14_20:
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 32]
	sub	rax, rcx
	mov	qword ptr [rbp - 88], rax
	cmp	qword ptr [rbp - 88], 0
	jle	LBB14_24
## %bb.21:
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 32]
	mov	rdx, qword ptr [rbp - 88]
	call	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmp	rax, qword ptr [rbp - 88]
	je	LBB14_23
## %bb.22:
	call	__ZNSt3__1L15__get_nullptr_tEv
	mov	qword ptr [rbp - 160], rax
	lea	rdi, [rbp - 160]
	call	__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	LBB14_25
LBB14_23:
	jmp	LBB14_24
LBB14_24:
	xor	eax, eax
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 48]
	call	__ZNSt3__18ios_base5widthEl
	mov	rsi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 224], rax ## 8-byte Spill
LBB14_25:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 240
	pop	rbp
	ret
LBB14_26:
	mov	rdi, qword ptr [rbp - 128]
	call	__Unwind_Resume
	ud2
LBB14_27:
Ltmp33:
	mov	rdi, rax
	mov	qword ptr [rbp - 232], rdx ## 8-byte Spill
	call	___clang_call_terminate
LBB14_28:
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1 ## >> Call Site 1 <<
	.uleb128 Ltmp24-Lfunc_begin1    ##   Call between Lfunc_begin1 and Ltmp24
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin1    ## >> Call Site 2 <<
	.uleb128 Ltmp29-Ltmp24          ##   Call between Ltmp24 and Ltmp29
	.uleb128 Ltmp30-Lfunc_begin1    ##     jumps to Ltmp30
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin1    ## >> Call Site 3 <<
	.uleb128 Ltmp32-Ltmp31          ##   Call between Ltmp31 and Ltmp32
	.uleb128 Ltmp33-Lfunc_begin1    ##     jumps to Ltmp33
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp32-Lfunc_begin1    ## >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp32      ##   Call between Ltmp32 and Lfunc_end1
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
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	call	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5flagsEv
__ZNKSt3__18ios_base5flagsEv:           ## @_ZNKSt3__18ios_base5flagsEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi ## 8-byte Spill
	call	__ZNSt3__111char_traitsIcE3eofEv
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	mov	esi, dword ptr [rdi + 144]
	mov	edi, eax
	call	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	test	al, 1
	jne	LBB17_1
	jmp	LBB17_2
LBB17_1:
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	mov	esi, 32
	call	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movsx	esi, al
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	mov	dword ptr [rdi + 144], esi
LBB17_2:
	mov	rax, qword ptr [rbp - 16] ## 8-byte Reload
	mov	ecx, dword ptr [rax + 144]
	mov	dl, cl
	movsx	eax, dl
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv: ## @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj: ## @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	call	__ZNSt3__18ios_base8setstateEj
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	push	rax
	call	___cxa_begin_catch
	mov	qword ptr [rsp], rax    ## 8-byte Spill
	call	__ZSt9terminatev
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L15__get_nullptr_tEv
__ZNSt3__1L15__get_nullptr_tEv:         ## @_ZNSt3__1L15__get_nullptr_tEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rbp - 8]
	mov	rsi, -1
	call	__ZNSt3__19nullptr_tC1EMNS0_5__natEi
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
__ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv: ## @_ZNKSt3__19nullptr_tcvPT_INS_15basic_streambufIcNS_11char_traitsIcEEEEEEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
                                        ## kill: def $rax killed $eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5widthEv
__ZNKSt3__18ios_base5widthEv:           ## @_ZNKSt3__18ios_base5widthEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 24]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 24]
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rbp - 32], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 32] ## 8-byte Reload
	call	qword ptr [rax + 96]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	byte ptr [rbp - 17], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	movsx	edx, byte ptr [rbp - 17]
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	mov	rdi, rax
	call	__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__18ios_base5widthEl
__ZNSt3__18ios_base5widthEl:            ## @_ZNSt3__18ios_base5widthEl
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi + 24]
	mov	qword ptr [rbp - 24], rdi
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rsi + 24], rdi
	mov	rax, qword ptr [rbp - 24]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19nullptr_tC1EMNS0_5__natEi
__ZNSt3__19nullptr_tC1EMNS0_5__natEi:   ## @_ZNSt3__19nullptr_tC1EMNS0_5__natEi
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	call	__ZNSt3__19nullptr_tC2EMNS0_5__natEi
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19nullptr_tC2EMNS0_5__natEi
__ZNSt3__19nullptr_tC2EMNS0_5__natEi:   ## @_ZNSt3__19nullptr_tC2EMNS0_5__natEi
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi], 0
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	byte ptr [rbp - 17], al
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	mov	qword ptr [rbp - 32], rsi ## 8-byte Spill
	call	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1Ev
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 32] ## 8-byte Reload
	movsx	edx, byte ptr [rbp - 17]
	call	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1Ev
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1Ev: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1Ev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2Ev
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2Ev
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2Ev: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2Ev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, rdi
	mov	qword ptr [rbp - 16], rdi ## 8-byte Spill
	mov	rdi, rax
	call	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	mov	rax, qword ptr [rbp - 16] ## 8-byte Reload
	mov	rdi, rax
	call	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev: ## @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	xor	esi, esi
	mov	eax, 24
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_memset
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNSt3__19allocatorIcEC2Ev
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19allocatorIcEC2Ev
__ZNSt3__19allocatorIcEC2Ev:            ## @_ZNSt3__19allocatorIcEC2Ev
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_: ## @_ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi ## 8-byte Spill
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	test	al, 1
	jne	LBB37_1
	jmp	LBB37_2
LBB37_1:
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
	jmp	LBB37_3
LBB37_2:
	mov	rdi, qword ptr [rbp - 16] ## 8-byte Reload
	call	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	mov	qword ptr [rbp - 24], rax ## 8-byte Spill
LBB37_3:
	mov	rax, qword ptr [rbp - 24] ## 8-byte Reload
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movzx	ecx, byte ptr [rax]
	mov	eax, ecx
	and	rax, 1
	cmp	rax, 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	mov	rax, qword ptr [rax + 16]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	add	rax, 1
	mov	rdi, rax
	call	__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ## @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_: ## @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNSt3__1L9addressofIKcEEPT_RS2_
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9addressofIKcEEPT_RS2_
__ZNSt3__1L9addressofIKcEEPT_RS2_:      ## @_ZNSt3__1L9addressofIKcEEPT_RS2_
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
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
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax - 24]
	add	rdi, rax
Ltmp34:
	mov	qword ptr [rbp - 40], rsi ## 8-byte Spill
	call	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
Ltmp35:
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	jmp	LBB45_1
LBB45_1:
	mov	rax, qword ptr [rbp - 40] ## 8-byte Reload
	mov	rcx, qword ptr [rbp - 48] ## 8-byte Reload
	mov	qword ptr [rax], rcx
	add	rsp, 48
	pop	rbp
	ret
LBB45_2:
Ltmp36:
	mov	ecx, edx
	mov	qword ptr [rbp - 24], rax
	mov	dword ptr [rbp - 28], ecx
## %bb.3:
	mov	rdi, qword ptr [rbp - 24]
	call	___cxa_call_unexpected
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table45:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp34-Lfunc_begin2    ## >> Call Site 1 <<
	.uleb128 Ltmp35-Ltmp34          ##   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin2    ##     jumps to Ltmp36
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp35-Lfunc_begin2    ## >> Call Site 2 <<
	.uleb128 Lfunc_end2-Ltmp35      ##   Call between Ltmp35 and Lfunc_end2
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end2:
	.byte	127                     ## >> Action Record 1 <<
                                        ##   Filter TypeInfo -1
	.byte	0                       ##   No further actions
	.p2align	2
Lttbase2:
                                        ## >> Filter TypeInfos <<
	.byte	0
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNKSt3__18ios_base5rdbufEv
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__18ios_base5rdbufEv
__ZNKSt3__18ios_base5rdbufEv:           ## @_ZNKSt3__18ios_base5rdbufEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 40]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ## -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ## -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, 4294967295
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rbp - 24]
	mov	qword ptr [rbp - 48], rdi ## 8-byte Spill
	call	__ZNKSt3__18ios_base6getlocEv
Ltmp37:
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	call	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
Ltmp38:
	mov	qword ptr [rbp - 56], rax ## 8-byte Spill
	jmp	LBB50_1
LBB50_1:
	movsx	esi, byte ptr [rbp - 9]
Ltmp39:
	mov	rdi, qword ptr [rbp - 56] ## 8-byte Reload
	call	__ZNKSt3__15ctypeIcE5widenEc
Ltmp40:
	mov	byte ptr [rbp - 57], al ## 1-byte Spill
	jmp	LBB50_2
LBB50_2:
	lea	rdi, [rbp - 24]
	call	__ZNSt3__16localeD1Ev
	mov	al, byte ptr [rbp - 57] ## 1-byte Reload
	movsx	eax, al
	add	rsp, 80
	pop	rbp
	ret
LBB50_3:
Ltmp41:
	mov	ecx, edx
	mov	qword ptr [rbp - 32], rax
	mov	dword ptr [rbp - 36], ecx
Ltmp42:
	lea	rdi, [rbp - 24]
	call	__ZNSt3__16localeD1Ev
Ltmp43:
	jmp	LBB50_4
LBB50_4:
	jmp	LBB50_5
LBB50_5:
	mov	rdi, qword ptr [rbp - 32]
	call	__Unwind_Resume
	ud2
LBB50_6:
Ltmp44:
	mov	rdi, rax
	mov	qword ptr [rbp - 72], rdx ## 8-byte Spill
	call	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table50:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3 ## >> Call Site 1 <<
	.uleb128 Ltmp37-Lfunc_begin3    ##   Call between Lfunc_begin3 and Ltmp37
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin3    ## >> Call Site 2 <<
	.uleb128 Ltmp40-Ltmp37          ##   Call between Ltmp37 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin3    ##     jumps to Ltmp41
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin3    ## >> Call Site 3 <<
	.uleb128 Ltmp42-Ltmp40          ##   Call between Ltmp40 and Ltmp42
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin3    ## >> Call Site 4 <<
	.uleb128 Ltmp43-Ltmp42          ##   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin3    ##     jumps to Ltmp44
	.byte	1                       ##   On action: 1
	.uleb128 Ltmp43-Lfunc_begin3    ## >> Call Site 5 <<
	.uleb128 Lfunc_end3-Ltmp43      ##   Call between Ltmp43 and Lfunc_end3
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end3:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ## @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rsi, qword ptr [rip + __ZNSt3__15ctypeIcE2idE@GOTPCREL]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	__ZNKSt3__16locale9use_facetERNS0_2idE
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ## @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rdi]
	movsx	esi, al
	call	qword ptr [rcx + 56]
	movsx	eax, al
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__18ios_base8setstateEj
__ZNSt3__18ios_base8setstateEj:         ## @_ZNSt3__18ios_base8setstateEj
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 32]
	or	esi, dword ptr [rbp - 12]
	call	__ZNSt3__18ios_base5clearEj
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__const
	.globl	__ZTV7spinach           ## @_ZTV7spinach
	.weak_def_can_be_hidden	__ZTV7spinach
	.p2align	3
__ZTV7spinach:
	.quad	0
	.quad	__ZTI7spinach
	.quad	__ZN7spinach14printVegetableEv
	.quad	__ZN7spinach13vegetableLoopEv

	.section	__TEXT,__const
	.globl	__ZTS7spinach           ## @_ZTS7spinach
	.weak_definition	__ZTS7spinach
__ZTS7spinach:
	.asciz	"7spinach"

	.globl	__ZTS9vegetable         ## @_ZTS9vegetable
	.weak_definition	__ZTS9vegetable
__ZTS9vegetable:
	.asciz	"9vegetable"

	.section	__DATA,__const
	.globl	__ZTI9vegetable         ## @_ZTI9vegetable
	.weak_definition	__ZTI9vegetable
	.p2align	3
__ZTI9vegetable:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS9vegetable

	.globl	__ZTI7spinach           ## @_ZTI7spinach
	.weak_definition	__ZTI7spinach
	.p2align	4
__ZTI7spinach:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS7spinach
	.quad	__ZTI9vegetable

	.globl	__ZTV9vegetable         ## @_ZTV9vegetable
	.weak_def_can_be_hidden	__ZTV9vegetable
	.p2align	3
__ZTV9vegetable:
	.quad	0
	.quad	__ZTI9vegetable
	.quad	__ZN9vegetable14printVegetableEv
	.quad	__ZN9vegetable13vegetableLoopEv

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"This is a vegetable"

L_.str.1:                               ## @.str.1
	.asciz	"I am a vegetable"

L_.str.2:                               ## @.str.2
	.asciz	"This is a spinach"

L_.str.3:                               ## @.str.3
	.asciz	"I am a spinach"


.subsections_via_symbols
