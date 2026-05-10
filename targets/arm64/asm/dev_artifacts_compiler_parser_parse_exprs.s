.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str56:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str247:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str278:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str364:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str367:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str486:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str489:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str561:
	.ascii "= or :"
	.byte 0
/* end data */

.data
.balign 8
str564:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str2125:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str2128:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str2129:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str2722:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str2725:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str2726:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str2836:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
str2839:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
str2840:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str2980:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str2983:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str3206:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
str3209:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3282:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3285:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3422:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str3560:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
str3563:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
str3564:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str4036:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str4109:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str4255:
	.ascii "->"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_exprs_parse_expr
compiler_parser_parse_exprs_parse_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_result_skip_newlines
	bl	compiler_parser_parse_exprs_parse_pipe
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_expr, @function
.size compiler_parser_parse_exprs_parse_expr, .-compiler_parser_parse_exprs_parse_expr
/* end function compiler_parser_parse_exprs_parse_expr */

.text
.balign 16
.globl compiler_parser_parse_exprs_parse_block
compiler_parser_parse_exprs_parse_block:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	compiler_parser_parse_result_skip_newlines
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L4
	mov	x2, #0
	b	.L5
.L4:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #62
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L5:
	cmp	w2, #0
	bne	.L14
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L9
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L11
.L9:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L11:
	cmp	w1, #0
	bne	.L13
	adrp	x0, str60
	add	x0, x0, #:lo12:str60
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str59
	add	x0, x0, #:lo12:str59
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L15
.L13:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str56
	add	x1, x1, #:lo12:str56
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L15
.L14:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_parser_parse_exprs_parse_block_stmts
.L15:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_block, @function
.size compiler_parser_parse_exprs_parse_block, .-compiler_parser_parse_exprs_parse_block
/* end function compiler_parser_parse_exprs_parse_block */

.text
.balign 16
.globl compiler_parser_parse_exprs_parse_stmt
compiler_parser_parse_exprs_parse_stmt:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	bl	compiler_parser_parse_result_skip_newlines
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L18
	mov	x1, #0
	b	.L19
.L18:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #17
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L19:
	cmp	w1, #0
	bne	.L23
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L22
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	bl	compiler_parser_parse_exprs_expr_span
	mov	x1, x0
	mov	x0, x21
	bl	compiler_parser_ast_ExprStmt
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L24
.L22:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L24
.L23:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_parse_exprs_parse_let
.L24:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_exprs_parse_stmt, @function
.size compiler_parser_parse_exprs_parse_stmt, .-compiler_parser_parse_exprs_parse_stmt
/* end function compiler_parser_parse_exprs_parse_stmt */

.text
.balign 16
compiler_parser_parse_exprs_parse_block_stmts:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x20, x2
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	mov	x0, x20
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L27
	mov	x3, #0
	b	.L28
.L27:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #63
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L28:
	cmp	w3, #0
	bne	.L34
	cmp	x2, #0
	beq	.L33
	mov	x20, x0
	mov	x0, x1
	bl	compiler_parser_parse_exprs_parse_stmt
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L32
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x21, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x20, [x3]
	bl	compiler_parser_parse_exprs_parse_block_stmts
	str	x0, [x19]
	b	.L36
.L32:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L36
.L33:
	bl	donna_list_reverse
	mov	x1, x19
	mov	x20, x1
	bl	compiler_parser_ast_Block
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_result_POk
	b	.L36
.L34:
	mov	x20, x19
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	donna_list_reverse
	mov	x1, x20
	bl	compiler_parser_ast_Block
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
.L36:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parse_exprs_parse_block_stmts, @function
.size compiler_parser_parse_exprs_parse_block_stmts, .-compiler_parser_parse_exprs_parse_block_stmts
/* end function compiler_parser_parse_exprs_parse_block_stmts */

.text
.balign 16
compiler_parser_parse_exprs_parse_let:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L39
	mov	x3, #0
	b	.L40
.L39:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #4
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L40:
	cmp	w3, #0
	bne	.L80
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L44
	mov	x2, #0
	str	x2, [x19]
	mov	x2, #0
	b	.L50
.L44:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x3, [x2]
	cmp	x3, #6
	cset	x21, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	w21, #0
	bne	.L47
	mov	x22, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, x22
	mov	x2, #0
	b	.L49
.L47:
	mov	x22, x0
	mov	x0, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x23, x1
	adrp	x1, str227
	add	x1, x1, #:lo12:str227
	bl	strcmp
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	cmp	x2, #0
	cset	x2, eq
	and	x2, x2, x21
	str	x2, [x20]
.L49:
	mov	x3, #1
	and	x2, x2, x3
	str	x2, [x19]
.L50:
	cmp	w2, #0
	bne	.L79
	ldr	x3, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	.L54
	mov	x3, #0
	str	x3, [x2]
	mov	x19, x1
	mov	x1, #0
	b	.L55
.L54:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #6
	mov	x19, x1
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L55:
	cmp	w1, #0
	bne	.L77
	bl	compiler_parser_parse_patterns_parse_pattern
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L76
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L60
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L61
.L60:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #28
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L61:
	cmp	w3, #0
	bne	.L70
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L65
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L67
.L65:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
.L67:
	cmp	w2, #0
	bne	.L69
	adrp	x0, str367
	add	x0, x0, #:lo12:str367
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L75
.L69:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x21
	adrp	x1, str364
	add	x1, x1, #:lo12:str364
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L75
.L70:
	mov	x22, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L72
	mov	x23, x1
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x2, x23
	bl	compiler_parser_ast_LetPatStmt
	mov	x1, x22
	bl	compiler_parser_parse_result_POk
	str	x0, [x21]
	b	.L74
.L72:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
.L74:
	str	x0, [x20]
.L75:
	str	x0, [x19]
	b	.L81
.L76:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L81
.L77:
	mov	x1, x19
	mov	x20, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x19, x0
	adrp	x0, str278
	add	x0, x0, #:lo12:str278
	bl	__rt_str_concat
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	compiler_parser_parse_exprs_parse_let_name
	b	.L81
.L79:
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, str247
	add	x2, x2, #:lo12:str247
	bl	compiler_parser_parse_exprs_parse_let_name
	b	.L81
.L80:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	ldr	x2, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	compiler_parser_parse_exprs_parse_let_name
.L81:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parse_exprs_parse_let, @function
.size compiler_parser_parse_exprs_parse_let, .-compiler_parser_parse_exprs_parse_let
/* end function compiler_parser_parse_exprs_parse_let */

.text
.balign 16
compiler_parser_parse_exprs_parse_let_name:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	mov	x19, x2
	mov	x3, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L84
	mov	x2, #0
	b	.L85
.L84:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #24
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
.L85:
	cmp	w2, #0
	bne	.L103
	mov	x2, #16
	mov	x20, x3
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L89
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L90
.L89:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #28
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L90:
	cmp	w2, #0
	bne	.L99
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L94
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L96
.L94:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L96:
	cmp	w1, #0
	bne	.L98
	mov	x1, x20
	adrp	x0, str564
	add	x0, x0, #:lo12:str564
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L125
.L98:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str561
	add	x1, x1, #:lo12:str561
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L125
.L99:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x3, x20
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L101
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x1, x1, x4
	ldr	x1, [x1]
	mov	x20, x1
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	mov	x23, x0
	bl	compiler_parser_ast_LetStmt
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L125
.L101:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L125
.L103:
	mov	x23, x19
	mov	x19, x3
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_types_parse_type
	mov	x3, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L124
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	mov	x2, #16
	mov	x25, x3
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L108
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L109
.L108:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #28
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L109:
	cmp	w2, #0
	bne	.L118
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L113
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L115
.L113:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L115:
	cmp	w1, #0
	bne	.L117
	mov	x1, x25
	adrp	x0, str489
	add	x0, x0, #:lo12:str489
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L123
.L117:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x21
	adrp	x1, str486
	add	x1, x1, #:lo12:str486
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L123
.L118:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L120
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x24, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	donna_option_Some
	mov	x3, x25
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	bl	compiler_parser_ast_LetStmt
	mov	x1, x22
	bl	compiler_parser_parse_result_POk
	str	x0, [x21]
	b	.L122
.L120:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
.L122:
	str	x0, [x20]
.L123:
	str	x0, [x19]
	b	.L125
.L124:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L125:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
.type compiler_parser_parse_exprs_parse_let_name, @function
.size compiler_parser_parse_exprs_parse_let_name, .-compiler_parser_parse_exprs_parse_let_name
/* end function compiler_parser_parse_exprs_parse_let_name */

.text
.balign 16
compiler_parser_parse_exprs_parse_pipe:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_exprs_parse_or_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L128
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_pipe_loop
	b	.L129
.L128:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L129:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_pipe, @function
.size compiler_parser_parse_exprs_parse_pipe, .-compiler_parser_parse_exprs_parse_pipe
/* end function compiler_parser_parse_exprs_parse_pipe */

.text
.balign 16
compiler_parser_parse_exprs_parse_pipe_loop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x0
	mov	x0, x1
	mov	x19, x0
	mov	x0, x20
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x20
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L132
	mov	x2, #0
	b	.L133
.L132:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #59
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L133:
	cmp	w2, #0
	bne	.L136
	mov	x0, x19
	mov	x19, x0
	bl	compiler_parser_parse_result_POk
	b	.L140
.L136:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_or_expr
	mov	x2, x20
	mov	x3, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x3]
	cmp	x1, #1
	beq	.L138
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x20, [x3]
	bl	compiler_parser_ast_Pipe
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_pipe_loop
	str	x0, [x19]
	b	.L140
.L138:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L140:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_pipe_loop, @function
.size compiler_parser_parse_exprs_parse_pipe_loop, .-compiler_parser_parse_exprs_parse_pipe_loop
/* end function compiler_parser_parse_exprs_parse_pipe_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_or_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_exprs_parse_and_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L143
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_or_loop
	b	.L144
.L143:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L144:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_or_expr, @function
.size compiler_parser_parse_exprs_parse_or_expr, .-compiler_parser_parse_exprs_parse_or_expr
/* end function compiler_parser_parse_exprs_parse_or_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_or_loop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L147
	mov	x2, #0
	b	.L148
.L147:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #57
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L148:
	cmp	w2, #0
	bne	.L150
	mov	x19, x1
	mov	x1, x0
	mov	x0, x19
	bl	compiler_parser_parse_result_POk
	b	.L153
.L150:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_and_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L152
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BOr
	add	x0, x0, #:lo12:compiler_parser_ast_BOr
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_or_loop
	str	x0, [x19]
	b	.L153
.L152:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L153:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_or_loop, @function
.size compiler_parser_parse_exprs_parse_or_loop, .-compiler_parser_parse_exprs_parse_or_loop
/* end function compiler_parser_parse_exprs_parse_or_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_and_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_exprs_parse_cmp_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L156
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_and_loop
	b	.L157
.L156:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L157:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_and_expr, @function
.size compiler_parser_parse_exprs_parse_and_expr, .-compiler_parser_parse_exprs_parse_and_expr
/* end function compiler_parser_parse_exprs_parse_and_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_and_loop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L160
	mov	x2, #0
	b	.L161
.L160:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #56
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L161:
	cmp	w2, #0
	bne	.L163
	mov	x19, x1
	mov	x1, x0
	mov	x0, x19
	bl	compiler_parser_parse_result_POk
	b	.L166
.L163:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_cmp_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L165
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BAnd
	add	x0, x0, #:lo12:compiler_parser_ast_BAnd
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_and_loop
	str	x0, [x19]
	b	.L166
.L165:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L166:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_and_loop, @function
.size compiler_parser_parse_exprs_parse_and_loop, .-compiler_parser_parse_exprs_parse_and_loop
/* end function compiler_parser_parse_exprs_parse_and_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_cmp_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_exprs_parse_concat_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L169
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_cmp_loop
	b	.L170
.L169:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L170:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_cmp_expr, @function
.size compiler_parser_parse_exprs_parse_cmp_expr, .-compiler_parser_parse_exprs_parse_cmp_expr
/* end function compiler_parser_parse_exprs_parse_cmp_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_cmp_loop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L173
	mov	x3, #0
	b	.L174
.L173:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #46
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L174:
	cmp	w3, #0
	bne	.L248
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L178
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L179
.L178:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #47
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L179:
	cmp	w3, #0
	bne	.L245
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L183
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L184
.L183:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #48
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L184:
	cmp	w3, #0
	bne	.L242
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L188
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L189
.L188:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #50
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L189:
	cmp	w3, #0
	bne	.L239
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L193
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L194
.L193:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #52
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L194:
	cmp	w3, #0
	bne	.L236
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L198
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L199
.L198:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #54
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L199:
	cmp	w3, #0
	bne	.L233
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L203
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L204
.L203:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #49
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L204:
	cmp	w3, #0
	bne	.L230
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L208
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L209
.L208:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #51
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L209:
	cmp	w3, #0
	bne	.L227
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L213
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L214
.L213:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #53
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L214:
	cmp	w3, #0
	bne	.L224
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L218
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L219
.L218:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #55
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L219:
	cmp	w2, #0
	bne	.L221
	mov	x19, x1
	mov	x1, x0
	mov	x0, x19
	bl	compiler_parser_parse_result_POk
	b	.L251
.L221:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L223
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BGtEqDot
	add	x0, x0, #:lo12:compiler_parser_ast_BGtEqDot
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L223:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L224:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L226
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BGtDot
	add	x0, x0, #:lo12:compiler_parser_ast_BGtDot
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L226:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L227:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L229
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BLtEqDot
	add	x0, x0, #:lo12:compiler_parser_ast_BLtEqDot
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L229:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L230:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L232
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BLtDot
	add	x0, x0, #:lo12:compiler_parser_ast_BLtDot
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L232:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L233:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L235
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BGtEq
	add	x0, x0, #:lo12:compiler_parser_ast_BGtEq
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L235:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L236:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L238
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BGt
	add	x0, x0, #:lo12:compiler_parser_ast_BGt
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L238:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L239:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L241
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BLtEq
	add	x0, x0, #:lo12:compiler_parser_ast_BLtEq
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L241:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L242:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L244
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BLt
	add	x0, x0, #:lo12:compiler_parser_ast_BLt
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L244:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L245:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L247
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BNotEq
	add	x0, x0, #:lo12:compiler_parser_ast_BNotEq
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L247:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L251
.L248:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_concat_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L250
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_BEq
	add	x0, x0, #:lo12:compiler_parser_ast_BEq
	bl	compiler_parser_ast_BinOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L251
.L250:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L251:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_cmp_loop, @function
.size compiler_parser_parse_exprs_parse_cmp_loop, .-compiler_parser_parse_exprs_parse_cmp_loop
/* end function compiler_parser_parse_exprs_parse_cmp_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_concat_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_exprs_parse_add_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L254
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_concat_loop
	b	.L255
.L254:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L255:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_concat_expr, @function
.size compiler_parser_parse_exprs_parse_concat_expr, .-compiler_parser_parse_exprs_parse_concat_expr
/* end function compiler_parser_parse_exprs_parse_concat_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_concat_loop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L258
	mov	x2, #0
	b	.L259
.L258:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #60
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L259:
	cmp	w2, #0
	bne	.L261
	mov	x19, x1
	mov	x1, x0
	mov	x0, x19
	bl	compiler_parser_parse_result_POk
	b	.L264
.L261:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_add_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L263
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BConcat
	add	x0, x0, #:lo12:compiler_parser_ast_BConcat
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_concat_loop
	str	x0, [x19]
	b	.L264
.L263:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L264:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_concat_loop, @function
.size compiler_parser_parse_exprs_parse_concat_loop, .-compiler_parser_parse_exprs_parse_concat_loop
/* end function compiler_parser_parse_exprs_parse_concat_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_add_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_exprs_parse_mul_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L267
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_add_loop
	b	.L268
.L267:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L268:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_add_expr, @function
.size compiler_parser_parse_exprs_parse_add_expr, .-compiler_parser_parse_exprs_parse_add_expr
/* end function compiler_parser_parse_exprs_parse_add_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_add_loop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L271
	mov	x3, #0
	b	.L272
.L271:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #37
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L272:
	cmp	w3, #0
	bne	.L298
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L276
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L277
.L276:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #39
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L277:
	cmp	w3, #0
	bne	.L295
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L281
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L282
.L281:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #38
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L282:
	cmp	w3, #0
	bne	.L292
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L286
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L287
.L286:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #40
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L287:
	cmp	w2, #0
	bne	.L289
	mov	x19, x1
	mov	x1, x0
	mov	x0, x19
	bl	compiler_parser_parse_result_POk
	b	.L301
.L289:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_mul_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L291
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BSubDot
	add	x0, x0, #:lo12:compiler_parser_ast_BSubDot
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_add_loop
	str	x0, [x19]
	b	.L301
.L291:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L301
.L292:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_mul_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L294
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BAddDot
	add	x0, x0, #:lo12:compiler_parser_ast_BAddDot
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_add_loop
	str	x0, [x19]
	b	.L301
.L294:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L301
.L295:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_mul_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L297
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BSub
	add	x0, x0, #:lo12:compiler_parser_ast_BSub
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_add_loop
	str	x0, [x19]
	b	.L301
.L297:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L301
.L298:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_mul_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L300
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BAdd
	add	x0, x0, #:lo12:compiler_parser_ast_BAdd
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_add_loop
	str	x0, [x19]
	b	.L301
.L300:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L301:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_add_loop, @function
.size compiler_parser_parse_exprs_parse_add_loop, .-compiler_parser_parse_exprs_parse_add_loop
/* end function compiler_parser_parse_exprs_parse_add_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_mul_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_exprs_parse_unary_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L304
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_mul_loop
	b	.L305
.L304:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L305:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_mul_expr, @function
.size compiler_parser_parse_exprs_parse_mul_expr, .-compiler_parser_parse_exprs_parse_mul_expr
/* end function compiler_parser_parse_exprs_parse_mul_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_mul_loop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L308
	mov	x3, #0
	b	.L309
.L308:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #41
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L309:
	cmp	w3, #0
	bne	.L343
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L313
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L314
.L313:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #43
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L314:
	cmp	w3, #0
	bne	.L340
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L318
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L319
.L318:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #45
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L319:
	cmp	w3, #0
	bne	.L337
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L323
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L324
.L323:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #42
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L324:
	cmp	w3, #0
	bne	.L334
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L328
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L329
.L328:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #44
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L329:
	cmp	w2, #0
	bne	.L331
	mov	x19, x1
	mov	x1, x0
	mov	x0, x19
	bl	compiler_parser_parse_result_POk
	b	.L346
.L331:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_unary_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L333
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BDivDot
	add	x0, x0, #:lo12:compiler_parser_ast_BDivDot
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	.L346
.L333:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L346
.L334:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_unary_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L336
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BMulDot
	add	x0, x0, #:lo12:compiler_parser_ast_BMulDot
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	.L346
.L336:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L346
.L337:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_unary_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L339
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BMod
	add	x0, x0, #:lo12:compiler_parser_ast_BMod
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	.L346
.L339:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L346
.L340:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_unary_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L342
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BDiv
	add	x0, x0, #:lo12:compiler_parser_ast_BDiv
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	.L346
.L342:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L346
.L343:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_exprs_parse_unary_expr
	mov	x3, x20
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L345
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x20, x0
	adrp	x0, compiler_parser_ast_BMul
	add	x0, x0, #:lo12:compiler_parser_ast_BMul
	bl	compiler_parser_ast_BinOp
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	.L346
.L345:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L346:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_mul_loop, @function
.size compiler_parser_parse_exprs_parse_mul_loop, .-compiler_parser_parse_exprs_parse_mul_loop
/* end function compiler_parser_parse_exprs_parse_mul_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_unary_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L349
	mov	x2, #0
	b	.L350
.L349:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #39
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L350:
	cmp	w2, #0
	bne	.L360
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L354
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L355
.L354:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #58
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L355:
	cmp	w1, #0
	bne	.L357
	bl	compiler_parser_parse_exprs_parse_call_expr
	b	.L363
.L357:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_parser_parse_exprs_parse_call_expr
	mov	x2, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L359
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_UNot
	add	x0, x0, #:lo12:compiler_parser_ast_UNot
	bl	compiler_parser_ast_UnaryOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L363
.L359:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L363
.L360:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_parser_parse_exprs_parse_call_expr
	mov	x2, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L362
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x20, [x0]
	adrp	x0, compiler_parser_ast_UNeg
	add	x0, x0, #:lo12:compiler_parser_ast_UNeg
	bl	compiler_parser_ast_UnaryOp
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L363
.L362:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L363:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_unary_expr, @function
.size compiler_parser_parse_exprs_parse_unary_expr, .-compiler_parser_parse_exprs_parse_unary_expr
/* end function compiler_parser_parse_exprs_parse_unary_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_exprs_parse_primary
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L366
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_call_loop
	b	.L367
.L366:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L367:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_call_expr, @function
.size compiler_parser_parse_exprs_parse_call_expr, .-compiler_parser_parse_exprs_parse_call_expr
/* end function compiler_parser_parse_exprs_parse_call_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_loop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L370
	mov	x3, #0
	b	.L371
.L370:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #30
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L371:
	cmp	w3, #0
	bne	.L393
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L375
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L380
.L375:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	mov	x5, #16
	add	x5, x1, x5
	ldr	x5, [x5]
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x7, [x5]
	mov	x6, #16
	sub	sp, sp, x6
	mov	x6, sp
	cmp	x7, #1
	beq	.L378
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	.L379
.L378:
	mov	x7, #8
	add	x5, x5, x7
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x5, [x5]
	cmp	x5, #4
	cset	x5, eq
	mov	x7, #1
	and	x5, x5, x7
	str	x5, [x6]
.L379:
	cmp	x3, #26
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
.L380:
	cmp	w3, #0
	bne	.L392
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L384
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L389
.L384:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x4, x1, x4
	ldr	x4, [x4]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x6, [x4]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x6, #1
	beq	.L387
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L388
.L387:
	mov	x6, #8
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #5
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
.L388:
	cmp	x2, #26
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L389:
	cmp	w2, #0
	bne	.L391
	bl	compiler_parser_parse_result_POk
	b	.L398
.L391:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x19, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	compiler_parser_ast_FieldAccess
	mov	x1, x0
	mov	x0, x19
	bl	compiler_parser_parse_exprs_parse_call_loop
	b	.L398
.L392:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x19, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	compiler_parser_ast_FieldAccess
	mov	x1, x0
	mov	x0, x19
	bl	compiler_parser_parse_exprs_parse_call_loop
	b	.L398
.L393:
	mov	x19, x0
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_exprs_parse_call_args
	mov	x2, x20
	mov	x3, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x3]
	cmp	x1, #1
	beq	.L396
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x20, [x3]
	bl	compiler_parser_ast_Call
	mov	x1, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_call_loop
	str	x0, [x19]
	b	.L398
.L396:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L398:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_call_loop, @function
.size compiler_parser_parse_exprs_parse_call_loop, .-compiler_parser_parse_exprs_parse_call_loop
/* end function compiler_parser_parse_exprs_parse_call_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_args:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	bl	compiler_parser_parse_exprs_strip_arg_label
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L401
	mov	x2, #0
	b	.L402
.L401:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L402:
	cmp	w2, #0
	bne	.L428
	mov	x22, x0
	mov	x0, x1
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L427
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L407
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L408
.L407:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #25
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L408:
	cmp	w2, #0
	bne	.L424
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L412
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L413
.L412:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L413:
	cmp	w2, #0
	bne	.L422
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L417
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L419
.L417:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L419:
	cmp	w1, #0
	bne	.L421
	adrp	x0, str2129
	add	x0, x0, #:lo12:str2129
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str2128
	add	x0, x0, #:lo12:str2128
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L426
.L421:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x21
	adrp	x1, str2125
	add	x1, x1, #:lo12:str2125
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L426
.L422:
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x23
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x21, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	bl	donna_list_reverse
	mov	x1, x21
	bl	compiler_parser_parse_result_POk
	str	x0, [x20]
	b	.L426
.L424:
	mov	x17, x21
	mov	x21, x22
	mov	x22, x17
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x21, [x2]
	bl	compiler_parser_parse_exprs_parse_call_args
	str	x0, [x20]
.L426:
	str	x0, [x19]
	b	.L429
.L427:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L429
.L428:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	donna_list_reverse
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
.L429:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parse_exprs_parse_call_args, @function
.size compiler_parser_parse_exprs_parse_call_args, .-compiler_parser_parse_exprs_parse_call_args
/* end function compiler_parser_parse_exprs_parse_call_args */

.text
.balign 16
compiler_parser_parse_exprs_strip_arg_label:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L432
	mov	x1, #0
	b	.L437
.L432:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x4, [x2]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x4, #1
	beq	.L435
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L436
.L435:
	mov	x4, #8
	add	x2, x2, x4
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #24
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L436:
	cmp	x1, #4
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	and	x1, x1, x2
.L437:
	cmp	w1, #0
	beq	.L439
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
.L439:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_strip_arg_label, @function
.size compiler_parser_parse_exprs_strip_arg_label, .-compiler_parser_parse_exprs_strip_arg_label
/* end function compiler_parser_parse_exprs_strip_arg_label */

.text
.balign 16
compiler_parser_parse_exprs_parse_primary:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L442
	mov	x2, #0
	b	.L443
.L442:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L443:
	cmp	w2, #0
	bne	.L573
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L447
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L448
.L447:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #1
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L448:
	cmp	w2, #0
	bne	.L572
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L452
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L453
.L452:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #2
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L453:
	cmp	w2, #0
	bne	.L571
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L457
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L462
.L457:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x4, [x2]
	cmp	x4, #7
	cset	x5, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	w5, #0
	bne	.L460
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	.L461
.L460:
	mov	x6, #8
	add	x2, x2, x6
	ldr	x2, [x2]
	cmp	x2, #1
	cset	x2, eq
	and	x2, x2, x5
	str	x2, [x4]
.L461:
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L462:
	cmp	w2, #0
	bne	.L570
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L466
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L471
.L466:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x4, [x2]
	cmp	x4, #7
	cset	x5, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	w5, #0
	bne	.L469
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	.L470
.L469:
	mov	x6, #8
	add	x2, x2, x6
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	and	x2, x2, x5
	str	x2, [x4]
.L470:
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L471:
	cmp	w2, #0
	bne	.L569
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L475
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L476
.L475:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #4
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L476:
	cmp	w2, #0
	bne	.L568
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L480
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L481
.L480:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #5
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L481:
	cmp	w2, #0
	bne	.L567
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L485
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L486
.L485:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #12
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L486:
	cmp	w2, #0
	bne	.L564
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L490
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L491
.L490:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #19
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L491:
	cmp	w2, #0
	bne	.L561
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L495
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L496
.L495:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #21
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L496:
	cmp	w2, #0
	bne	.L560
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L500
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L505
.L500:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x6, [x4]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x6, #1
	beq	.L503
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L504
.L503:
	mov	x6, #8
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #30
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
.L504:
	cmp	x2, #29
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L505:
	cmp	w2, #0
	bne	.L559
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L509
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L510
.L509:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #32
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L510:
	cmp	w2, #0
	bne	.L558
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L514
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L515
.L514:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #30
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L515:
	cmp	w2, #0
	bne	.L540
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L519
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L520
.L519:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #10
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L520:
	cmp	w2, #0
	bne	.L539
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L524
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L529
.L524:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x6, [x4]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x6, #1
	beq	.L527
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L528
.L527:
	mov	x6, #8
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #30
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
.L528:
	cmp	x2, #14
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L529:
	cmp	w2, #0
	bne	.L538
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L533
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L535
.L533:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L535:
	cmp	w1, #0
	bne	.L537
	adrp	x0, str2840
	add	x0, x0, #:lo12:str2840
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str2839
	add	x0, x0, #:lo12:str2839
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L574
.L537:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str2836
	add	x1, x1, #:lo12:str2836
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L574
.L538:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_lambda
	b	.L574
.L539:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_parse_exprs_parse_case_expr
	b	.L574
.L540:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L557
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x2, x0
	ldr	x0, [x1]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x0, #1
	beq	.L544
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L545
.L544:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #31
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L545:
	cmp	w3, #0
	bne	.L554
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	.L549
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	.L551
.L549:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
.L551:
	cmp	w0, #0
	bne	.L553
	adrp	x0, str2726
	add	x0, x0, #:lo12:str2726
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str2725
	add	x0, x0, #:lo12:str2725
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L556
.L553:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x21
	adrp	x1, str2722
	add	x1, x1, #:lo12:str2722
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L556
.L554:
	mov	x0, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_parse_result_POk
	str	x0, [x20]
.L556:
	str	x0, [x19]
	b	.L574
.L557:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L574
.L558:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_parse_exprs_parse_list_expr
	b	.L574
.L559:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_tuple_expr
	b	.L574
.L560:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x19, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_ast_Todo
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L574
.L561:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L563
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	bl	compiler_parser_ast_Panic
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L574
.L563:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L574
.L564:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L566
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	bl	compiler_parser_ast_Echo
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L574
.L566:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L574
.L567:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_ast_Var
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L574
.L568:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_ast_Var
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L574
.L569:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x0, x0, x2
	mov	x19, x1
	ldr	x1, [x0]
	mov	x0, #0
	bl	compiler_parser_ast_BoolLit
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L574
.L570:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x0, x0, x2
	mov	x19, x1
	ldr	x1, [x0]
	mov	x0, #1
	bl	compiler_parser_ast_BoolLit
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L574
.L571:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_ast_StringLit
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L574
.L572:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_ast_FloatLit
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L574
.L573:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_parser_ast_IntLit
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
.L574:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_exprs_parse_primary, @function
.size compiler_parser_parse_exprs_parse_primary, .-compiler_parser_parse_exprs_parse_primary
/* end function compiler_parser_parse_exprs_parse_primary */

.text
.balign 16
compiler_parser_parse_exprs_parse_tuple_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L577
	mov	x2, #0
	b	.L578
.L577:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L578:
	cmp	w2, #0
	bne	.L580
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_parser_parse_exprs_parse_tuple_args
	b	.L581
.L580:
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	bl	compiler_parser_ast_Tuple
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
.L581:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_tuple_expr, @function
.size compiler_parser_parse_exprs_parse_tuple_expr, .-compiler_parser_parse_exprs_parse_tuple_expr
/* end function compiler_parser_parse_exprs_parse_tuple_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_tuple_args:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x2
	mov	x20, x1
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x1, x20
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L605
	mov	x2, #8
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x21
	mov	x2, x0
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #8
	add	x0, x2, x0
	str	x20, [x0]
	mov	x0, #16
	add	x0, x2, x0
	str	x19, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x22]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x0, #1
	beq	.L586
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L587
.L586:
	mov	x3, #8
	add	x3, x22, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #25
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L587:
	cmp	w3, #0
	bne	.L603
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x0, #1
	beq	.L591
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L592
.L591:
	mov	x3, #8
	add	x3, x22, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #31
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L592:
	cmp	w3, #0
	bne	.L601
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	.L596
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	.L598
.L596:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
.L598:
	cmp	w0, #0
	bne	.L600
	mov	x21, x1
	adrp	x0, str2983
	add	x0, x0, #:lo12:str2983
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L606
.L600:
	mov	x0, #8
	add	x0, x22, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, str2980
	add	x1, x1, #:lo12:str2980
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L606
.L601:
	mov	x21, x1
	mov	x0, #16
	add	x0, x22, x0
	ldr	x20, [x0]
	mov	x0, x2
	bl	donna_list_reverse
	mov	x1, x21
	bl	compiler_parser_ast_Tuple
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L606
.L603:
	mov	x21, x2
	mov	x20, x1
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x2, x21
	mov	x1, x20
	bl	compiler_parser_parse_exprs_parse_tuple_args
	str	x0, [x19]
	b	.L606
.L605:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L606:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_exprs_parse_tuple_args, @function
.size compiler_parser_parse_exprs_parse_tuple_args, .-compiler_parser_parse_exprs_parse_tuple_args
/* end function compiler_parser_parse_exprs_parse_tuple_args */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L609
	mov	x2, #0
	b	.L610
.L609:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #33
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L610:
	cmp	w2, #0
	bne	.L612
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_parser_parse_exprs_parse_list_args
	b	.L613
.L612:
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	bl	compiler_parser_ast_EList
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
.L613:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_list_expr, @function
.size compiler_parser_parse_exprs_parse_list_expr, .-compiler_parser_parse_exprs_parse_list_expr
/* end function compiler_parser_parse_exprs_parse_list_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_args:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x2
	mov	x19, x1
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x2, x20
	mov	x1, x19
	ldr	x3, [x0]
	cmp	x3, #1
	beq	.L654
	mov	x21, x2
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #1
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x2, [x3]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x22]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L618
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L623
.L618:
	mov	x3, #8
	add	x3, x22, x3
	ldr	x3, [x3]
	mov	x5, #16
	add	x5, x22, x5
	ldr	x5, [x5]
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x7, [x5]
	mov	x6, #16
	sub	sp, sp, x6
	mov	x6, sp
	cmp	x7, #1
	beq	.L621
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	.L622
.L621:
	mov	x7, #8
	add	x5, x5, x7
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x5, [x5]
	cmp	x5, #27
	cset	x5, eq
	mov	x7, #1
	and	x5, x5, x7
	str	x5, [x6]
.L622:
	cmp	x3, #25
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
.L623:
	cmp	w3, #0
	bne	.L652
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L627
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L628
.L627:
	mov	x3, #8
	add	x3, x22, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #25
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L628:
	cmp	w3, #0
	bne	.L650
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L632
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L633
.L632:
	mov	x3, #8
	add	x3, x22, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #33
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L633:
	cmp	w3, #0
	bne	.L649
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L637
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L638
.L637:
	mov	x3, #8
	add	x3, x22, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #27
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L638:
	cmp	w3, #0
	bne	.L648
	mov	x0, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	.L643
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	.L645
.L643:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
.L645:
	cmp	w0, #0
	bne	.L647
	adrp	x0, str3209
	add	x0, x0, #:lo12:str3209
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L655
.L647:
	mov	x0, #8
	add	x0, x22, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, str3206
	add	x1, x1, #:lo12:str3206
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L655
.L648:
	mov	x21, x1
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	bl	donna_list_reverse
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_list_spread
	str	x0, [x19]
	b	.L655
.L649:
	mov	x21, x1
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	bl	donna_list_reverse
	mov	x1, x21
	mov	x21, x1
	bl	compiler_parser_ast_EList
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L655
.L650:
	mov	x21, x1
	mov	x20, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x21
	mov	x2, x20
	bl	compiler_parser_parse_exprs_parse_list_args
	str	x0, [x19]
	b	.L655
.L652:
	mov	x20, x22
	mov	x21, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	donna_list_reverse
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_parse_list_spread
	str	x0, [x19]
	b	.L655
.L654:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L655:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_exprs_parse_list_args, @function
.size compiler_parser_parse_exprs_parse_list_args, .-compiler_parser_parse_exprs_parse_list_args
/* end function compiler_parser_parse_exprs_parse_list_args */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_spread:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x2
	mov	x20, x1
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x2, x20
	mov	x3, x0
	mov	x0, x19
	ldr	x1, [x3]
	cmp	x1, #1
	beq	.L672
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x3, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	mov	x20, x0
	ldr	x0, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x5, sp
	cmp	x0, #1
	beq	.L660
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L661
.L660:
	mov	x4, #8
	add	x4, x3, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #33
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
.L661:
	cmp	w4, #0
	bne	.L670
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	.L665
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L667
.L665:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
.L667:
	cmp	w0, #0
	bne	.L669
	mov	x1, x2
	adrp	x0, str3285
	add	x0, x0, #:lo12:str3285
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L674
.L669:
	mov	x0, #8
	add	x0, x3, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, str3282
	add	x1, x1, #:lo12:str3282
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L674
.L670:
	mov	x0, x20
	mov	x4, #16
	add	x3, x3, x4
	ldr	x20, [x3]
	bl	compiler_parser_ast_ListSpread
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L674
.L672:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L674:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_exprs_parse_list_spread, @function
.size compiler_parser_parse_exprs_parse_list_spread, .-compiler_parser_parse_exprs_parse_list_spread
/* end function compiler_parser_parse_exprs_parse_list_spread */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_expr:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x2, x19
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L706
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x1, #1
	beq	.L679
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L680
.L679:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #24
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L680:
	cmp	w3, #0
	bne	.L689
	mov	x20, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L684
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L686
.L684:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L686:
	cmp	w1, #0
	bne	.L688
	mov	x1, x20
	adrp	x0, str3422
	add	x0, x0, #:lo12:str3422
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L707
.L688:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	errors_error_ParseMissingColon
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L707
.L689:
	mov	x20, x2
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x2, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	mov	x22, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L693
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L694
.L693:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #62
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L694:
	cmp	w1, #0
	bne	.L700
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_exprs_parse_inline_case_arms
	mov	x2, x22
	mov	x3, x0
	mov	x0, x21
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x3]
	cmp	x1, #1
	beq	.L697
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x22, [x3]
	bl	compiler_parser_ast_Case
	mov	x1, x22
	bl	compiler_parser_parse_result_POk
	str	x0, [x21]
	b	.L699
.L697:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
.L699:
	str	x0, [x20]
	b	.L705
.L700:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_exprs_parse_case_arms
	mov	x2, x22
	mov	x3, x0
	mov	x0, x21
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x3]
	cmp	x1, #1
	beq	.L702
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x22, [x3]
	bl	compiler_parser_ast_Case
	mov	x1, x22
	bl	compiler_parser_parse_result_POk
	str	x0, [x21]
	b	.L704
.L702:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
.L704:
	str	x0, [x20]
.L705:
	str	x0, [x19]
	b	.L707
.L706:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L707:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_exprs_parse_case_expr, @function
.size compiler_parser_parse_exprs_parse_case_expr, .-compiler_parser_parse_exprs_parse_case_expr
/* end function compiler_parser_parse_exprs_parse_case_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_arms:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L710
	mov	x3, #0
	b	.L711
.L710:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #63
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L711:
	cmp	w3, #0
	bne	.L717
	cmp	x2, #0
	beq	.L716
	mov	x20, x0
	mov	x0, x1
	bl	compiler_parser_parse_exprs_parse_case_arm
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L715
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x22
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	bl	compiler_parser_parse_exprs_parse_case_arms
	str	x0, [x19]
	b	.L718
.L715:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L718
.L716:
	bl	donna_list_reverse
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_result_POk
	b	.L718
.L717:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	donna_list_reverse
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
.L718:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_exprs_parse_case_arms, @function
.size compiler_parser_parse_exprs_parse_case_arms, .-compiler_parser_parse_exprs_parse_case_arms
/* end function compiler_parser_parse_exprs_parse_case_arms */

.text
.balign 16
compiler_parser_parse_exprs_parse_inline_case_arms:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	mov	x0, x19
	ldr	x3, [x1]
	cmp	x3, #0
	beq	.L745
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	.L723
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x1
	mov	x1, #0
	b	.L724
.L723:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #63
	mov	x20, x1
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L724:
	cmp	w1, #0
	bne	.L743
	mov	x19, x0
	mov	x0, x20
	bl	compiler_parser_parse_exprs_is_pattern_start
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #0
	beq	.L730
	mov	x21, x0
	mov	x0, x1
	bl	compiler_parser_parse_exprs_parse_case_arm
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L728
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x21, [x2]
	bl	compiler_parser_parse_exprs_parse_inline_case_arms
	str	x0, [x20]
	b	.L729
.L728:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
.L729:
	str	x0, [x19]
	b	.L746
.L730:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x21, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L732
	bl	donna_list_reverse
	mov	x1, x21
	bl	compiler_parser_parse_result_POk
	str	x0, [x20]
	b	.L742
.L732:
	mov	x1, x21
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	ldr	x0, [x1]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	.L736
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	.L738
.L736:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
.L738:
	cmp	w0, #0
	bne	.L740
	adrp	x0, str3564
	add	x0, x0, #:lo12:str3564
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str3563
	add	x0, x0, #:lo12:str3563
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
	b	.L741
.L740:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x22
	adrp	x1, str3560
	add	x1, x1, #:lo12:str3560
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
.L741:
	str	x0, [x20]
.L742:
	str	x0, [x19]
	b	.L746
.L743:
	mov	x19, x20
	bl	donna_list_reverse
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L746
.L745:
	bl	donna_list_reverse
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_result_POk
.L746:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parse_exprs_parse_inline_case_arms, @function
.size compiler_parser_parse_exprs_parse_inline_case_arms, .-compiler_parser_parse_exprs_parse_inline_case_arms
/* end function compiler_parser_parse_exprs_parse_inline_case_arms */

.text
.balign 16
compiler_parser_parse_exprs_is_pattern_start:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L749
	mov	x2, #0
	b	.L750
.L749:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #6
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L750:
	cmp	w2, #0
	bne	.L810
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L754
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L755
.L754:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L755:
	cmp	w2, #0
	bne	.L809
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L759
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L760
.L759:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #1
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L760:
	cmp	w2, #0
	bne	.L808
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L764
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L765
.L764:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #2
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L765:
	cmp	w2, #0
	bne	.L807
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L769
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L770
.L769:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #7
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L770:
	cmp	w2, #0
	bne	.L806
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L774
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L775
.L774:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #5
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L775:
	cmp	w2, #0
	bne	.L805
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L779
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L780
.L779:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #4
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L780:
	cmp	w2, #0
	bne	.L804
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L784
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L789
.L784:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x6, [x4]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x6, #1
	beq	.L787
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L788
.L787:
	mov	x6, #8
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #0
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
.L788:
	cmp	x2, #39
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L789:
	cmp	w2, #0
	bne	.L803
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L793
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L794
.L793:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #29
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L794:
	cmp	w2, #0
	bne	.L802
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L798
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L799
.L798:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #32
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L799:
	cmp	w1, #0
	bne	.L801
	mov	x0, #0
	b	.L811
.L801:
	mov	x0, #1
	b	.L811
.L802:
	mov	x0, #1
	b	.L811
.L803:
	mov	x0, #1
	b	.L811
.L804:
	mov	x0, #1
	b	.L811
.L805:
	mov	x0, #1
	b	.L811
.L806:
	mov	x0, #1
	b	.L811
.L807:
	mov	x0, #1
	b	.L811
.L808:
	mov	x0, #1
	b	.L811
.L809:
	mov	x0, #1
	b	.L811
.L810:
	mov	x0, #1
.L811:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_is_pattern_start, @function
.size compiler_parser_parse_exprs_is_pattern_start, .-compiler_parser_parse_exprs_is_pattern_start
/* end function compiler_parser_parse_exprs_is_pattern_start */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_arm:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	str	x26, [x29, 16]
	bl	compiler_parser_parse_patterns_parse_pattern
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L860
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x19, x0
	bl	compiler_parser_parse_exprs_pat_span
	mov	x3, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x22]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x1, #1
	beq	.L816
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	.L817
.L816:
	mov	x2, #8
	add	x2, x22, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #15
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
.L817:
	cmp	w2, #0
	bne	.L837
	mov	x2, #16
	mov	x21, x3
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L821
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L822
.L821:
	mov	x2, #8
	add	x2, x22, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #23
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L822:
	cmp	w2, #0
	bne	.L832
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	.L827
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L829
.L827:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
.L829:
	cmp	w0, #0
	bne	.L831
	mov	x1, x21
	adrp	x0, str4109
	add	x0, x0, #:lo12:str4109
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L861
.L831:
	mov	x0, #8
	add	x0, x22, x0
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	errors_error_ParseMissingArrow
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L861
.L832:
	mov	x20, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_arm_body
	mov	x3, x21
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L834
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x1, x1, x4
	ldr	x1, [x1]
	mov	x21, x1
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	bl	compiler_parser_ast_CaseClause
	mov	x1, x21
	bl	compiler_parser_parse_result_POk
	str	x0, [x20]
	b	.L836
.L834:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
.L836:
	str	x0, [x19]
	b	.L861
.L837:
	mov	x20, x3
	mov	x21, x22
	mov	x24, x0
	mov	x0, #16
	add	x0, x21, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x3, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L858
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	mov	x2, #16
	mov	x26, x3
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L842
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L843
.L842:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #23
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L843:
	cmp	w2, #0
	bne	.L852
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L847
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L849
.L847:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L849:
	cmp	w1, #0
	bne	.L851
	mov	x1, x26
	adrp	x0, str4036
	add	x0, x0, #:lo12:str4036
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
	b	.L857
.L851:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	errors_error_ParseMissingArrow
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
	b	.L857
.L852:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_arm_body
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L854
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x25, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	bl	donna_option_Some
	mov	x3, x26
	mov	x2, x25
	mov	x1, x0
	mov	x0, x24
	bl	compiler_parser_ast_CaseClause
	mov	x1, x23
	bl	compiler_parser_parse_result_POk
	str	x0, [x22]
	b	.L856
.L854:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x22]
.L856:
	str	x0, [x21]
.L857:
	str	x0, [x20]
	b	.L859
.L858:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
.L859:
	str	x0, [x19]
	b	.L861
.L860:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L861:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
.type compiler_parser_parse_exprs_parse_case_arm, @function
.size compiler_parser_parse_exprs_parse_case_arm, .-compiler_parser_parse_exprs_parse_case_arm
/* end function compiler_parser_parse_exprs_parse_case_arm */

.text
.balign 16
compiler_parser_parse_exprs_parse_arm_body:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L864
	mov	x1, #0
	b	.L869
.L864:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x4, [x2]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x4, #1
	beq	.L867
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L868
.L867:
	mov	x4, #8
	add	x2, x2, x4
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #62
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L868:
	cmp	x1, #61
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	and	x1, x1, x2
.L869:
	cmp	w1, #0
	bne	.L871
	bl	compiler_parser_parse_exprs_parse_expr
	b	.L872
.L871:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_parser_parse_exprs_parse_block_stmts
.L872:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_parse_arm_body, @function
.size compiler_parser_parse_exprs_parse_arm_body, .-compiler_parser_parse_exprs_parse_arm_body
/* end function compiler_parser_parse_exprs_parse_arm_body */

.text
.balign 16
compiler_parser_parse_exprs_parse_lambda:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	bl	compiler_parser_parse_params_parse_params
	mov	x2, x19
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L893
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x1, #1
	beq	.L877
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L878
.L877:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #23
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L878:
	cmp	w3, #0
	bne	.L887
	mov	x21, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L882
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L884
.L882:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L884:
	cmp	w1, #0
	bne	.L886
	mov	x1, x21
	adrp	x0, str4255
	add	x0, x0, #:lo12:str4255
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L894
.L886:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	errors_error_ParseMissingArrow
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L894
.L887:
	mov	x21, x2
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x2, x21
	mov	x3, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x3]
	cmp	x1, #1
	beq	.L890
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	bl	compiler_parser_ast_Lambda
	mov	x1, x21
	bl	compiler_parser_parse_result_POk
	str	x0, [x20]
	b	.L892
.L890:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
.L892:
	str	x0, [x19]
	b	.L894
.L893:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L894:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_exprs_parse_lambda, @function
.size compiler_parser_parse_exprs_parse_lambda, .-compiler_parser_parse_exprs_parse_lambda
/* end function compiler_parser_parse_exprs_parse_lambda */

.text
.balign 16
.globl compiler_parser_parse_exprs_expr_span
compiler_parser_parse_exprs_expr_span:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L931
	cmp	x1, #1
	beq	.L930
	cmp	x1, #2
	beq	.L929
	cmp	x1, #3
	beq	.L928
	cmp	x1, #4
	beq	.L927
	cmp	x1, #5
	beq	.L926
	cmp	x1, #6
	beq	.L925
	cmp	x1, #7
	beq	.L924
	cmp	x1, #8
	beq	.L923
	cmp	x1, #9
	beq	.L922
	cmp	x1, #10
	beq	.L921
	cmp	x1, #11
	beq	.L920
	cmp	x1, #12
	beq	.L919
	cmp	x1, #13
	beq	.L918
	cmp	x1, #14
	beq	.L917
	cmp	x1, #15
	beq	.L916
	cmp	x1, #16
	beq	.L915
	cmp	x1, #17
	beq	.L914
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L914:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L915:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L916:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L917:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L918:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L919:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L920:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L921:
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L922:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L923:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L924:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L925:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L926:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L927:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L928:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L929:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L930:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L932
.L931:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
.L932:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_expr_span, @function
.size compiler_parser_parse_exprs_expr_span, .-compiler_parser_parse_exprs_expr_span
/* end function compiler_parser_parse_exprs_expr_span */

.text
.balign 16
compiler_parser_parse_exprs_pat_span:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L951
	cmp	x1, #1
	beq	.L950
	cmp	x1, #2
	beq	.L949
	cmp	x1, #3
	beq	.L948
	cmp	x1, #4
	beq	.L947
	cmp	x1, #5
	beq	.L946
	cmp	x1, #6
	beq	.L945
	cmp	x1, #7
	beq	.L944
	cmp	x1, #8
	beq	.L943
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L943:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L944:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L945:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L946:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L947:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L948:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L949:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L950:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L952
.L951:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L952:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_exprs_pat_span, @function
.size compiler_parser_parse_exprs_pat_span, .-compiler_parser_parse_exprs_pat_span
/* end function compiler_parser_parse_exprs_pat_span */

.text
.balign 16
__rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	strlen
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	bl	strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
