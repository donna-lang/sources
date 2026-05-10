.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str68:
	.ascii "main"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_analysis_analyser_analyse
compiler_analysis_analyser_analyse:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x1, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #40
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, x19
	bl	compiler_analysis_analyser_analyse_imports
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	compiler_analysis_analyser_analyse_unused_fns
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, compiler_analysis_analyser_analyse_fn
	add	x1, x1, #:lo12:compiler_analysis_analyser_analyse_fn
	bl	donna_list_flat_map
	mov	x1, x0
	mov	x0, x20
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_analysis_analyser_analyse, @function
.size compiler_analysis_analyser_analyse, .-compiler_analysis_analyser_analyse
/* end function compiler_analysis_analyser_analyse */

.text
.balign 16
compiler_analysis_analyser_analyse_unused_fns:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, compiler_analysis_analyser_fn_refs
	add	x1, x1, #:lo12:compiler_analysis_analyser_fn_refs
	mov	x19, x0
	bl	donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	compiler_analysis_analyser_check_unused_fns
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_analysis_analyser_analyse_unused_fns, @function
.size compiler_analysis_analyser_analyse_unused_fns, .-compiler_analysis_analyser_analyse_unused_fns
/* end function compiler_analysis_analyser_analyse_unused_fns */

.text
.balign 16
compiler_analysis_analyser_check_unused_fns:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L21
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	compiler_analysis_analyser_check_unused_fns
	mov	x23, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	cmp	x1, #1
	beq	.L19
	mov	x1, #8
	add	x1, x20, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x1, x20, x1
	ldr	x2, [x1]
	mov	x1, #48
	add	x1, x20, x1
	ldr	x1, [x1]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L16
	mov	x24, x1
	adrp	x1, str68
	add	x1, x1, #:lo12:str68
	mov	x21, x0
	mov	x0, x22
	bl	donna_string_equal
	mov	x1, x24
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	.L13
	mov	x24, x1
	mov	x1, x22
	bl	compiler_analysis_scope_contains_name
	mov	x1, x24
	mov	x2, x0
	mov	x0, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x22, sp
	cmp	x2, #1
	beq	.L10
	bl	errors_error_WarnUnusedFunction
	mov	x24, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
	b	.L12
.L10:
	mov	x0, x23
	str	x0, [x22]
.L12:
	str	x0, [x21]
	b	.L15
.L13:
	mov	x0, x23
	str	x0, [x21]
.L15:
	str	x0, [x20]
	b	.L18
.L16:
	mov	x0, x23
	str	x0, [x20]
.L18:
	str	x0, [x19]
	b	.L22
.L19:
	mov	x0, x23
	str	x0, [x19]
	b	.L22
.L21:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L22:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_analysis_analyser_check_unused_fns, @function
.size compiler_analysis_analyser_check_unused_fns, .-compiler_analysis_analyser_check_unused_fns
/* end function compiler_analysis_analyser_check_unused_fns */

.text
.balign 16
compiler_analysis_analyser_analyse_imports:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, compiler_analysis_analyser_fn_refs
	add	x1, x1, #:lo12:compiler_analysis_analyser_fn_refs
	bl	donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	compiler_analysis_analyser_check_imports
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_analysis_analyser_analyse_imports, @function
.size compiler_analysis_analyser_analyse_imports, .-compiler_analysis_analyser_analyse_imports
/* end function compiler_analysis_analyser_analyse_imports */

.text
.balign 16
compiler_analysis_analyser_fn_refs:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L27
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	b	.L28
.L27:
	mov	x1, #40
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_analysis_scope_refs_in_expr
.L28:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_analysis_analyser_fn_refs, @function
.size compiler_analysis_analyser_fn_refs, .-compiler_analysis_analyser_fn_refs
/* end function compiler_analysis_analyser_fn_refs */

.text
.balign 16
compiler_analysis_analyser_check_imports:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L35
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	compiler_analysis_analyser_check_imports
	mov	x21, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	mov	x1, #24
	add	x1, x22, x1
	ldr	x1, [x1]
	mov	x22, x1
	mov	x1, x20
	bl	compiler_analysis_scope_contains_name
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L32
	bl	errors_error_WarnUnusedImport
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L34
.L32:
	mov	x0, x21
	str	x0, [x20]
.L34:
	str	x0, [x19]
	b	.L36
.L35:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L36:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_analysis_analyser_check_imports, @function
.size compiler_analysis_analyser_check_imports, .-compiler_analysis_analyser_check_imports
/* end function compiler_analysis_analyser_check_imports */

.text
.balign 16
compiler_analysis_analyser_analyse_fn:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #1
	beq	.L39
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #40
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x20, x0
	mov	x0, x19
	bl	compiler_analysis_scope_refs_in_expr
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_analysis_analyser_check_params
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	b	.L40
.L39:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L40:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_analysis_analyser_analyse_fn, @function
.size compiler_analysis_analyser_analyse_fn, .-compiler_analysis_analyser_analyse_fn
/* end function compiler_analysis_analyser_analyse_fn */

.text
.balign 16
compiler_analysis_analyser_check_params:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x21, x0
	mov	x0, x2
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L51
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x0
	mov	x19, x0
	mov	x0, x21
	bl	compiler_analysis_analyser_check_params
	mov	x1, x21
	mov	x22, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	mov	x2, #8
	add	x2, x20, x2
	ldr	x21, [x2]
	mov	x23, x1
	mov	x1, #24
	add	x1, x20, x1
	ldr	x24, [x1]
	mov	x20, x0
	mov	x0, x21
	bl	compiler_analysis_scope_is_discard
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L48
	mov	x23, x1
	mov	x1, x21
	bl	compiler_analysis_scope_contains_name
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x21
	mov	x4, #16
	sub	sp, sp, x4
	mov	x21, sp
	cmp	x3, #1
	beq	.L45
	bl	errors_error_WarnUnusedParam
	mov	x23, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	.L47
.L45:
	mov	x0, x22
	str	x0, [x21]
.L47:
	str	x0, [x20]
	b	.L50
.L48:
	mov	x0, x22
	str	x0, [x20]
.L50:
	str	x0, [x19]
	b	.L52
.L51:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L52:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_analysis_analyser_check_params, @function
.size compiler_analysis_analyser_check_params, .-compiler_analysis_analyser_check_params
/* end function compiler_analysis_analyser_check_params */

.text
.balign 16
compiler_analysis_analyser_analyse_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #13
	beq	.L81
	cmp	x1, #12
	beq	.L80
	cmp	x1, #15
	beq	.L79
	cmp	x1, #9
	beq	.L78
	cmp	x1, #10
	beq	.L77
	cmp	x1, #14
	beq	.L76
	cmp	x1, #16
	beq	.L75
	cmp	x1, #17
	beq	.L74
	cmp	x1, #6
	beq	.L73
	cmp	x1, #7
	beq	.L72
	cmp	x1, #8
	beq	.L71
	cmp	x1, #11
	beq	.L70
	cmp	x1, #5
	beq	.L69
	cmp	x1, #18
	beq	.L68
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	b	.L82
.L68:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	errors_error_WarnTodo
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	b	.L82
.L69:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_expr
	b	.L82
.L70:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_expr
	b	.L82
.L71:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, compiler_analysis_analyser_analyse_expr
	add	x1, x1, #:lo12:compiler_analysis_analyser_analyse_expr
	bl	donna_list_flat_map
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	b	.L82
.L72:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, compiler_analysis_analyser_analyse_expr
	add	x1, x1, #:lo12:compiler_analysis_analyser_analyse_expr
	bl	donna_list_flat_map
	b	.L82
.L73:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, compiler_analysis_analyser_analyse_expr
	add	x1, x1, #:lo12:compiler_analysis_analyser_analyse_expr
	bl	donna_list_flat_map
	b	.L82
.L74:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_expr
	b	.L82
.L75:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_expr
	b	.L82
.L76:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	b	.L82
.L77:
	mov	x1, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	b	.L82
.L78:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, compiler_analysis_analyser_analyse_expr
	add	x1, x1, #:lo12:compiler_analysis_analyser_analyse_expr
	bl	donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	b	.L82
.L79:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_expr
	b	.L82
.L80:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, compiler_analysis_analyser_analyse_clause
	add	x1, x1, #:lo12:compiler_analysis_analyser_analyse_clause
	bl	donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	b	.L82
.L81:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_block
.L82:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_analysis_analyser_analyse_expr, @function
.size compiler_analysis_analyser_analyse_expr, .-compiler_analysis_analyser_analyse_expr
/* end function compiler_analysis_analyser_analyse_expr */

.text
.balign 16
compiler_analysis_analyser_analyse_clause:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L85
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	b	.L87
.L85:
	mov	x0, x19
	adrp	x19, donna_nil
	add	x19, x19, #:lo12:donna_nil
.L87:
	bl	compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_analysis_analyser_analyse_clause, @function
.size compiler_analysis_analyser_analyse_clause, .-compiler_analysis_analyser_analyse_clause
/* end function compiler_analysis_analyser_analyse_clause */

.text
.balign 16
compiler_analysis_analyser_analyse_block:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L108
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	bl	compiler_analysis_analyser_analyse_block
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_analysis_scope_refs_in_stmts
	mov	x1, x19
	mov	x20, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x22, x0
	ldr	x0, [x23]
	cmp	x0, #0
	beq	.L95
	cmp	x0, #1
	beq	.L93
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_expr
	mov	x1, x20
	mov	x21, x1
	bl	donna_list_append
	str	x0, [x19]
	b	.L109
.L93:
	mov	x21, x20
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	mov	x20, x0
	mov	x0, #16
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	compiler_analysis_scope_bound_by_pattern
	mov	x1, x21
	mov	x21, x1
	mov	x1, x22
	bl	compiler_analysis_analyser_check_unused_bindings
	mov	x1, x21
	mov	x24, x1
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x20
	bl	donna_list_append
	str	x0, [x19]
	b	.L109
.L95:
	mov	x0, x22
	mov	x24, x20
	mov	x22, x23
	mov	x1, #8
	add	x1, x22, x1
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, #24
	add	x0, x22, x0
	ldr	x0, [x0]
	mov	x1, #32
	add	x1, x22, x1
	ldr	x23, [x1]
	bl	compiler_analysis_analyser_analyse_expr
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x20
	bl	compiler_analysis_scope_is_discard
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	.L104
	mov	x23, x1
	mov	x1, x20
	bl	compiler_analysis_scope_contains_name
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L99
	bl	errors_error_WarnUnusedVariable
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x4, x2, x3
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	str	x3, [x4]
	str	x2, [x20]
	b	.L102
.L99:
	mov	x0, x22
	mov	x1, x24
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	str	x2, [x20]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
.L102:
	str	x2, [x21]
	mov	x20, x0
	b	.L107
.L104:
	mov	x0, x22
	mov	x1, x24
	mov	x20, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x21]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
.L107:
	mov	x0, x2
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x20
	bl	donna_list_append
	str	x0, [x19]
	b	.L109
.L108:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L109:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_analysis_analyser_analyse_block, @function
.size compiler_analysis_analyser_analyse_block, .-compiler_analysis_analyser_analyse_block
/* end function compiler_analysis_analyser_analyse_block */

.text
.balign 16
compiler_analysis_analyser_check_unused_bindings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L119
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x22, x1
	mov	x1, x19
	bl	compiler_analysis_analyser_check_unused_bindings
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	compiler_analysis_scope_is_discard
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L117
	mov	x22, x1
	mov	x1, x20
	bl	compiler_analysis_scope_contains_name
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L114
	bl	errors_error_WarnUnusedVariable
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L116
.L114:
	mov	x0, x21
	str	x0, [x20]
.L116:
	str	x0, [x19]
	b	.L120
.L117:
	mov	x0, x21
	str	x0, [x19]
	b	.L120
.L119:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L120:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_analysis_analyser_check_unused_bindings, @function
.size compiler_analysis_analyser_check_unused_bindings, .-compiler_analysis_analyser_check_unused_bindings
/* end function compiler_analysis_analyser_check_unused_bindings */

.section .note.GNU-stack,"",@progbits
