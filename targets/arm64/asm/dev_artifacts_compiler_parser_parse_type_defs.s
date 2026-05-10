.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str141:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str228:
	.ascii "type name"
	.byte 0
/* end data */

.data
.balign 8
str254:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str257:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str258:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str566:
	.ascii "indented constructor block"
	.byte 0
/* end data */

.data
.balign 8
str569:
	.ascii "constructor"
	.byte 0
/* end data */

.data
.balign 8
str570:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str718:
	.ascii "constructor name"
	.byte 0
/* end data */

.data
.balign 8
str882:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_type_defs_parse_type_def
compiler_parser_parse_type_defs_parse_type_def:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	bl	compiler_parser_parse_type_defs_parse_pub
	ldr	x1, [x0]
	mov	x19, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_type_defs_parse_opaque
	mov	x1, x19
	ldr	x2, [x0]
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L2
	mov	x3, #0
	b	.L7
.L2:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x6, [x4]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x6, #1
	beq	.L5
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L6
.L5:
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
.L6:
	cmp	x3, #22
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	and	x3, x3, x4
.L7:
	cmp	w3, #0
	bne	.L32
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L11
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L16
.L11:
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
	beq	.L14
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L15
.L14:
	mov	x6, #8
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #4
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
.L15:
	cmp	x2, #22
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L16:
	cmp	w2, #0
	bne	.L31
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L20
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L21
.L20:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #22
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L21:
	cmp	w2, #0
	bne	.L30
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L25
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L27
.L25:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L27:
	cmp	w1, #0
	bne	.L29
	adrp	x0, str258
	add	x0, x0, #:lo12:str258
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str257
	add	x0, x0, #:lo12:str257
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L52
.L29:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str254
	add	x1, x1, #:lo12:str254
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L52
.L30:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str228
	add	x0, x0, #:lo12:str228
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L52
.L31:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	errors_error_ParseLowercaseTypeName
	bl	compiler_parser_parse_result_PErr
	b	.L52
.L32:
	mov	x1, x19
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x4, #8
	add	x3, x3, x4
	ldr	x22, [x3]
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x21, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_parser_parse_type_defs_parse_type_params
	mov	x5, x22
	mov	x2, x21
	mov	x1, x19
	ldr	x3, [x0]
	mov	x4, #8
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	mov	x21, x1
	ldr	x1, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x1, #1
	beq	.L36
	mov	x6, #0
	str	x6, [x4]
	mov	x23, x3
	mov	x24, x5
	mov	x3, #0
	b	.L37
.L36:
	mov	x6, #8
	add	x6, x0, x6
	ldr	x6, [x6]
	ldr	x6, [x6]
	ldr	x6, [x6]
	cmp	x6, #24
	mov	x23, x3
	cset	x3, eq
	mov	x24, x5
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L37:
	cmp	w3, #0
	bne	.L46
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L41
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L43
.L41:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L43:
	cmp	w1, #0
	bne	.L45
	mov	x1, x24
	adrp	x0, str141
	add	x0, x0, #:lo12:str141
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L52
.L45:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	errors_error_ParseMissingColon
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L52
.L46:
	mov	x1, x21
	mov	x22, x2
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x21, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_type_defs_parse_constructors
	mov	x5, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x6, x0
	mov	x0, x20
	mov	x4, #16
	sub	sp, sp, x4
	mov	x20, sp
	ldr	x4, [x6]
	cmp	x4, #1
	beq	.L49
	mov	x4, #8
	add	x4, x6, x4
	ldr	x4, [x4]
	mov	x7, #16
	add	x6, x6, x7
	ldr	x21, [x6]
	bl	compiler_parser_ast_TypeDef
	mov	x1, x21
	bl	compiler_parser_parse_result_POk
	str	x0, [x20]
	b	.L51
.L49:
	mov	x0, x6
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
.L51:
	str	x0, [x19]
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
.type compiler_parser_parse_type_defs_parse_type_def, @function
.size compiler_parser_parse_type_defs_parse_type_def, .-compiler_parser_parse_type_defs_parse_type_def
/* end function compiler_parser_parse_type_defs_parse_type_def */

.text
.balign 16
compiler_parser_parse_type_defs_parse_pub:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L55
	mov	x1, #0
	b	.L56
.L55:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #20
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L56:
	cmp	w1, #0
	bne	.L58
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L59
.L58:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L59:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_type_defs_parse_pub, @function
.size compiler_parser_parse_type_defs_parse_pub, .-compiler_parser_parse_type_defs_parse_pub
/* end function compiler_parser_parse_type_defs_parse_pub */

.text
.balign 16
compiler_parser_parse_type_defs_parse_opaque:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L62
	mov	x1, #0
	b	.L63
.L62:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #18
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L63:
	cmp	w1, #0
	bne	.L65
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L66
.L65:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L66:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_type_defs_parse_opaque, @function
.size compiler_parser_parse_type_defs_parse_opaque, .-compiler_parser_parse_type_defs_parse_opaque
/* end function compiler_parser_parse_type_defs_parse_opaque */

.text
.balign 16
compiler_parser_parse_type_defs_parse_type_params:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L69
	mov	x1, #0
	b	.L70
.L69:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #30
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L70:
	cmp	w1, #0
	bne	.L72
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L73
.L72:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_type_defs_parse_type_param_list
.L73:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_type_defs_parse_type_params, @function
.size compiler_parser_parse_type_defs_parse_type_params, .-compiler_parser_parse_type_defs_parse_type_params
/* end function compiler_parser_parse_type_defs_parse_type_params */

.text
.balign 16
compiler_parser_parse_type_defs_parse_type_param_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x0
	mov	x0, x1
	ldr	x1, [x19]
	cmp	x1, #1
	beq	.L76
	mov	x2, #0
	b	.L77
.L76:
	mov	x2, #8
	add	x2, x19, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L77:
	cmp	w2, #0
	bne	.L98
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L81
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L82
.L81:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #4
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L82:
	cmp	w1, #0
	bne	.L84
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L99
.L84:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x19, x2
	ldr	x22, [x2]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	mov	x20, x22
	ldr	x22, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L87
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L88
.L87:
	mov	x2, #8
	add	x2, x20, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #25
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L88:
	cmp	w2, #0
	bne	.L96
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L92
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L93
.L92:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #31
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L93:
	cmp	w1, #0
	bne	.L95
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
	bl	donna_list_reverse
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L99
.L95:
	mov	x1, #16
	add	x1, x20, x1
	ldr	x20, [x1]
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
	bl	donna_list_reverse
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L99
.L96:
	mov	x21, x22
	mov	x22, x20
	mov	x20, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
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
	bl	compiler_parser_parse_type_defs_parse_type_param_list
	str	x0, [x19]
	b	.L99
.L98:
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L99:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_type_defs_parse_type_param_list, @function
.size compiler_parser_parse_type_defs_parse_type_param_list, .-compiler_parser_parse_type_defs_parse_type_param_list
/* end function compiler_parser_parse_type_defs_parse_type_param_list */

.text
.balign 16
compiler_parser_parse_type_defs_parse_constructors:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x19
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L102
	mov	x2, #0
	b	.L103
.L102:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #62
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L103:
	cmp	w2, #0
	bne	.L112
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L107
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L109
.L107:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L109:
	cmp	w1, #0
	bne	.L111
	adrp	x0, str570
	add	x0, x0, #:lo12:str570
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str569
	add	x0, x0, #:lo12:str569
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L114
.L111:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str566
	add	x1, x1, #:lo12:str566
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L114
.L112:
	mov	x1, x19
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_type_defs_parse_ctor_block
.L114:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_type_defs_parse_constructors, @function
.size compiler_parser_parse_type_defs_parse_constructors, .-compiler_parser_parse_type_defs_parse_constructors
/* end function compiler_parser_parse_type_defs_parse_constructors */

.text
.balign 16
compiler_parser_parse_type_defs_parse_ctor_block:
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
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L117
	mov	x3, #0
	b	.L118
.L117:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #63
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L118:
	cmp	w3, #0
	bne	.L144
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L122
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L123
.L122:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #5
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L123:
	cmp	w3, #0
	bne	.L132
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L127
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L129
.L127:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
.L129:
	cmp	w2, #0
	bne	.L131
	bl	donna_list_reverse
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_result_POk
	b	.L145
.L131:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str718
	add	x1, x1, #:lo12:str718
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L145
.L132:
	mov	x2, x1
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x20, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x3, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x23]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L135
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L136
.L135:
	mov	x1, #8
	add	x1, x23, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #30
	cset	x1, eq
	mov	x4, #1
	and	x1, x1, x4
	str	x1, [x2]
.L136:
	cmp	w1, #0
	bne	.L138
	mov	x22, x3
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_ast_ConstructorDef
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x21, x0
	mov	x0, #16
	add	x0, x1, x0
	str	x21, [x0]
	mov	x0, x23
	bl	compiler_parser_parse_type_defs_parse_ctor_block
	str	x0, [x19]
	b	.L145
.L138:
	mov	x22, x3
	mov	x21, x20
	mov	x20, x0
	mov	x0, #16
	add	x0, x23, x0
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_type_defs_parse_field_list
	mov	x3, x22
	mov	x4, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x4]
	cmp	x1, #1
	beq	.L141
	mov	x1, #8
	add	x1, x4, x1
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x5, #8
	add	x2, x2, x5
	ldr	x2, [x2]
	mov	x5, #16
	add	x4, x4, x5
	ldr	x22, [x4]
	bl	compiler_parser_ast_ConstructorDef
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
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
	bl	compiler_parser_parse_type_defs_parse_ctor_block
	str	x0, [x20]
	b	.L143
.L141:
	mov	x0, x4
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
.L143:
	str	x0, [x19]
	b	.L145
.L144:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	donna_list_reverse
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
.L145:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parse_type_defs_parse_ctor_block, @function
.size compiler_parser_parse_type_defs_parse_ctor_block, .-compiler_parser_parse_type_defs_parse_ctor_block
/* end function compiler_parser_parse_type_defs_parse_ctor_block */

.text
.balign 16
compiler_parser_parse_type_defs_parse_field_list:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x2
	mov	x21, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L148
	mov	x3, #0
	b	.L149
.L148:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #31
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L149:
	cmp	w3, #0
	bne	.L184
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L153
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L158
.L153:
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
	beq	.L156
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L157
.L156:
	mov	x6, #8
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #24
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
.L157:
	cmp	x2, #4
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L158:
	cmp	w2, #0
	bne	.L171
	mov	x19, x0
	mov	x0, x1
	bl	compiler_parser_parse_types_parse_type
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L169
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x22
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, str882
	add	x2, x2, #:lo12:str882
	str	x2, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x0, [x3]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x23]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x0, #1
	beq	.L163
	mov	x0, #0
	str	x0, [x3]
	mov	x0, #0
	b	.L164
.L163:
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #25
	cset	x0, eq
	mov	x4, #1
	and	x0, x0, x4
	str	x0, [x3]
.L164:
	cmp	w0, #0
	bne	.L166
	mov	x22, x2
	mov	x21, x1
	mov	x0, x23
	bl	compiler_parser_parse_type_defs_parse_field_list
	str	x0, [x20]
	b	.L168
.L166:
	mov	x22, x2
	mov	x21, x1
	mov	x0, #16
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x2, x22
	mov	x1, x21
	bl	compiler_parser_parse_type_defs_parse_field_list
	str	x0, [x20]
.L168:
	str	x0, [x19]
	b	.L186
.L169:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L186
.L171:
	mov	x19, x0
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_types_parse_type
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L182
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x24, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x24
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x22, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x0, [x3]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x23]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x0, #1
	beq	.L176
	mov	x0, #0
	str	x0, [x3]
	mov	x0, #0
	b	.L177
.L176:
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #25
	cset	x0, eq
	mov	x4, #1
	and	x0, x0, x4
	str	x0, [x3]
.L177:
	cmp	w0, #0
	bne	.L179
	mov	x22, x2
	mov	x21, x1
	mov	x0, x23
	bl	compiler_parser_parse_type_defs_parse_field_list
	str	x0, [x20]
	b	.L181
.L179:
	mov	x22, x2
	mov	x21, x1
	mov	x0, #16
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x2, x22
	mov	x1, x21
	bl	compiler_parser_parse_type_defs_parse_field_list
	str	x0, [x20]
.L181:
	str	x0, [x19]
	b	.L186
.L182:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L186
.L184:
	mov	x19, x0
	mov	x0, x21
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x21
	str	x20, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	bl	compiler_parser_parse_result_POk
.L186:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parse_type_defs_parse_field_list, @function
.size compiler_parser_parse_type_defs_parse_field_list, .-compiler_parser_parse_type_defs_parse_field_list
/* end function compiler_parser_parse_type_defs_parse_field_list */

.section .note.GNU-stack,"",@progbits
