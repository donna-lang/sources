.data
.balign 8
str136:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str139:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str140:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str193:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
str249:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
str252:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_constants_parse_const
compiler_parser_parse_constants_parse_const:
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
	bl	compiler_parser_parse_constants_parse_pub
	ldr	x1, [x0]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L2
	mov	x2, #0
	b	.L7
.L2:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	.L5
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L6
.L5:
	mov	x5, #8
	add	x3, x3, x5
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #4
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L6:
	cmp	x2, #11
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	and	x2, x2, x3
.L7:
	cmp	w2, #0
	bne	.L33
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L11
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L17
.L11:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x4, [x4]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x4, #1
	beq	.L14
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L16
.L14:
	mov	x4, #1
	str	x4, [x5]
	mov	x4, #1
.L16:
	cmp	x2, #11
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L17:
	cmp	w2, #0
	bne	.L32
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L21
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L22
.L21:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #11
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L22:
	cmp	w2, #0
	bne	.L31
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L26
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L28
.L26:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L28:
	cmp	w1, #0
	bne	.L30
	adrp	x0, str253
	add	x0, x0, #:lo12:str253
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str252
	add	x0, x0, #:lo12:str252
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L52
.L30:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str249
	add	x1, x1, #:lo12:str249
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L52
.L31:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str223
	add	x0, x0, #:lo12:str223
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L52
.L32:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str193
	add	x1, x1, #:lo12:str193
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L52
.L33:
	mov	x1, x19
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	compiler_parser_parse_constants_parse_optional_annotation
	mov	x4, x20
	mov	x1, x19
	ldr	x2, [x0]
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x1
	ldr	x1, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x1, #1
	beq	.L37
	mov	x5, #0
	str	x5, [x3]
	mov	x22, x2
	mov	x25, x4
	mov	x2, #0
	b	.L38
.L37:
	mov	x5, #8
	add	x5, x0, x5
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x5, [x5]
	cmp	x5, #28
	mov	x22, x2
	cset	x2, eq
	mov	x25, x4
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L38:
	cmp	w2, #0
	bne	.L47
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L42
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L44
.L42:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L44:
	cmp	w1, #0
	bne	.L46
	adrp	x0, str140
	add	x0, x0, #:lo12:str140
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str139
	add	x0, x0, #:lo12:str139
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L52
.L46:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, str136
	add	x1, x1, #:lo12:str136
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L52
.L47:
	mov	x1, x20
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_expr
	mov	x2, x22
	mov	x1, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x0]
	cmp	x3, #1
	beq	.L50
	mov	x23, x2
	mov	x2, #8
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x22, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	compiler_parser_ast_Const
	mov	x1, x21
	bl	compiler_parser_parse_result_POk
	str	x0, [x20]
	b	.L51
.L50:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
.L51:
	str	x0, [x19]
.L52:
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
.type compiler_parser_parse_constants_parse_const, @function
.size compiler_parser_parse_constants_parse_const, .-compiler_parser_parse_constants_parse_const
/* end function compiler_parser_parse_constants_parse_const */

.text
.balign 16
compiler_parser_parse_constants_parse_pub:
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
.type compiler_parser_parse_constants_parse_pub, @function
.size compiler_parser_parse_constants_parse_pub, .-compiler_parser_parse_constants_parse_pub
/* end function compiler_parser_parse_constants_parse_pub */

.text
.balign 16
compiler_parser_parse_constants_parse_optional_annotation:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x0
	ldr	x0, [x20]
	cmp	x0, #1
	beq	.L62
	mov	x0, #0
	b	.L63
.L62:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #24
	cset	x0, eq
	mov	x1, #1
	and	x0, x0, x1
.L63:
	cmp	w0, #0
	bne	.L65
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	b	.L68
.L65:
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_types_parse_type
	mov	x1, x0
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x1]
	cmp	x0, #1
	beq	.L67
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	donna_option_Some
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L68
.L67:
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
.L68:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_constants_parse_optional_annotation, @function
.size compiler_parser_parse_constants_parse_optional_annotation, .-compiler_parser_parse_constants_parse_optional_annotation
/* end function compiler_parser_parse_constants_parse_optional_annotation */

.section .note.GNU-stack,"",@progbits
