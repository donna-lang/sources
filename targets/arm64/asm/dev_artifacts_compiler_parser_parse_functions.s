.data
.balign 8
str175:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str284:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
str314:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str343:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str344:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str669:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str672:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str699:
	.ascii "string literal in @external("
	.byte 34
	.ascii "lang"
	.byte 34
	.ascii ", "
	.byte 34
	.ascii "symbol"
	.byte 34
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str702:
	.ascii "@external("
	.byte 34
	.ascii "lang"
	.byte 34
	.ascii ", "
	.byte 34
	.ascii "symbol"
	.byte 34
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str754:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
str784:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
str810:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
str813:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
str814:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_functions_parse_function
compiler_parser_parse_functions_parse_function:
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
	bl	compiler_parser_parse_functions_parse_pub
	ldr	x1, [x0]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L2
	mov	x2, #0
	b	.L11
.L2:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x3, x0, x3
	ldr	x5, [x3]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x3, [x5]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	.L5
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L10
.L5:
	mov	x3, #8
	add	x3, x5, x3
	ldr	x3, [x3]
	mov	x6, #16
	add	x5, x5, x6
	ldr	x5, [x5]
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x7, [x5]
	mov	x6, #16
	sub	sp, sp, x6
	mov	x6, sp
	cmp	x7, #1
	beq	.L8
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	.L9
.L8:
	mov	x7, #8
	add	x5, x5, x7
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x5, [x5]
	cmp	x5, #30
	cset	x5, eq
	mov	x7, #1
	and	x5, x5, x7
	str	x5, [x6]
.L9:
	cmp	x3, #4
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
.L10:
	cmp	x2, #14
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	and	x2, x2, x3
.L11:
	cmp	w2, #0
	bne	.L47
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L15
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L20
.L15:
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
	beq	.L18
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L19
.L18:
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
.L19:
	cmp	x2, #14
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L20:
	cmp	w2, #0
	bne	.L46
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L24
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L30
.L24:
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
	beq	.L27
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L29
.L27:
	mov	x4, #1
	str	x4, [x5]
	mov	x4, #1
.L29:
	cmp	x2, #14
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L30:
	cmp	w2, #0
	bne	.L45
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L34
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L35
.L34:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #14
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L35:
	cmp	w2, #0
	bne	.L44
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L39
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L41
.L39:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L41:
	cmp	w1, #0
	bne	.L43
	adrp	x0, str344
	add	x0, x0, #:lo12:str344
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str343
	add	x0, x0, #:lo12:str343
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L70
.L43:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str340
	add	x1, x1, #:lo12:str340
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L70
.L44:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str314
	add	x0, x0, #:lo12:str314
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L70
.L45:
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
	adrp	x1, str284
	add	x1, x1, #:lo12:str284
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L70
.L46:
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
	bl	errors_error_ParseUppercaseFnName
	bl	compiler_parser_parse_result_PErr
	b	.L70
.L47:
	mov	x1, x19
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	ldr	x3, [x2]
	mov	x4, #8
	add	x3, x3, x4
	ldr	x21, [x3]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x24, [x2]
	mov	x19, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_params_parse_params
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L69
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_functions_parse_optional_return
	mov	x5, x24
	mov	x2, x23
	mov	x1, x20
	ldr	x3, [x0]
	mov	x4, #8
	add	x0, x0, x4
	ldr	x0, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x20, sp
	mov	x23, x2
	ldr	x2, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x2, #1
	beq	.L52
	mov	x6, #0
	str	x6, [x4]
	mov	x24, x3
	mov	x25, x5
	mov	x3, #0
	b	.L53
.L52:
	mov	x6, #8
	add	x6, x0, x6
	ldr	x6, [x6]
	ldr	x6, [x6]
	ldr	x6, [x6]
	cmp	x6, #24
	mov	x24, x3
	cset	x3, eq
	mov	x25, x5
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L53:
	cmp	w3, #0
	bne	.L63
	mov	x1, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L58
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L60
.L58:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
.L60:
	cmp	w2, #0
	bne	.L62
	adrp	x0, str175
	add	x0, x0, #:lo12:str175
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L68
.L62:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	errors_error_ParseMissingColon
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L68
.L63:
	mov	x22, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_exprs_parse_block
	mov	x5, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x21
	mov	x4, #16
	sub	sp, sp, x4
	mov	x21, sp
	ldr	x4, [x6]
	cmp	x4, #1
	beq	.L65
	mov	x4, #8
	add	x4, x6, x4
	ldr	x4, [x4]
	mov	x7, #16
	add	x6, x6, x7
	ldr	x22, [x6]
	bl	compiler_parser_ast_Function
	mov	x1, x22
	bl	compiler_parser_parse_result_POk
	str	x0, [x21]
	b	.L67
.L65:
	mov	x0, x6
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
.L67:
	str	x0, [x20]
.L68:
	str	x0, [x19]
	b	.L70
.L69:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L70:
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
.type compiler_parser_parse_functions_parse_function, @function
.size compiler_parser_parse_functions_parse_function, .-compiler_parser_parse_functions_parse_function
/* end function compiler_parser_parse_functions_parse_function */

.text
.balign 16
.globl compiler_parser_parse_functions_parse_external_fn
compiler_parser_parse_functions_parse_external_fn:
	hint	#34
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [x29, 88]
	str	x20, [x29, 80]
	str	x21, [x29, 72]
	str	x22, [x29, 64]
	str	x23, [x29, 56]
	str	x24, [x29, 48]
	str	x25, [x29, 40]
	str	x26, [x29, 32]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L73
	mov	x2, #0
	b	.L82
.L73:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x3, x0, x3
	ldr	x5, [x3]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x3, [x5]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	.L76
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L81
.L76:
	mov	x3, #8
	add	x3, x5, x3
	ldr	x3, [x3]
	mov	x6, #16
	add	x5, x5, x6
	ldr	x5, [x5]
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x7, [x5]
	mov	x6, #16
	sub	sp, sp, x6
	mov	x6, sp
	cmp	x7, #1
	beq	.L79
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	.L80
.L79:
	mov	x7, #8
	add	x5, x5, x7
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x5, [x5]
	cmp	x5, #30
	cset	x5, eq
	mov	x7, #1
	and	x5, x5, x7
	str	x5, [x6]
.L80:
	cmp	x3, #13
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
.L81:
	cmp	x2, #8
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	and	x2, x2, x3
.L82:
	cmp	w2, #0
	bne	.L108
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L86
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L92
.L86:
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
	beq	.L89
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L91
.L89:
	mov	x4, #1
	str	x4, [x5]
	mov	x4, #1
.L91:
	cmp	x2, #8
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L92:
	cmp	w2, #0
	bne	.L107
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L96
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L97
.L96:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #8
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L97:
	cmp	w2, #0
	bne	.L106
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L101
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L103
.L101:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L103:
	cmp	w1, #0
	bne	.L105
	adrp	x0, str814
	add	x0, x0, #:lo12:str814
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str813
	add	x0, x0, #:lo12:str813
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L160
.L105:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str810
	add	x1, x1, #:lo12:str810
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L160
.L106:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str784
	add	x0, x0, #:lo12:str784
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L160
.L107:
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
	adrp	x1, str754
	add	x1, x1, #:lo12:str754
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L160
.L108:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x6, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L111
	mov	x2, #0
	str	x2, [x3]
	mov	x22, x6
	mov	x2, #0
	b	.L124
.L111:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x7, [x4]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x4, [x7]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x4, #1
	beq	.L114
	mov	x4, #0
	str	x4, [x5]
	mov	x22, x6
	mov	x4, #0
	b	.L123
.L114:
	mov	x4, #8
	add	x4, x7, x4
	ldr	x4, [x4]
	mov	x8, #16
	add	x7, x7, x8
	ldr	x8, [x7]
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x9, [x8]
	mov	x7, #16
	sub	sp, sp, x7
	mov	x7, sp
	cmp	x9, #1
	beq	.L117
	mov	x8, #0
	str	x8, [x7]
	mov	x22, x6
	mov	x6, #0
	b	.L122
.L117:
	mov	x9, #8
	add	x9, x8, x9
	ldr	x9, [x9]
	mov	x10, #16
	add	x8, x8, x10
	ldr	x8, [x8]
	ldr	x9, [x9]
	ldr	x9, [x9]
	ldr	x11, [x8]
	mov	x10, #16
	sub	sp, sp, x10
	mov	x10, sp
	cmp	x11, #1
	beq	.L120
	mov	x8, #0
	str	x8, [x10]
	mov	x8, #0
	b	.L121
.L120:
	mov	x11, #8
	add	x8, x8, x11
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	cmp	x8, #31
	cset	x8, eq
	mov	x11, #1
	and	x8, x8, x11
	str	x8, [x10]
.L121:
	cmp	x9, #2
	mov	x22, x6
	cset	x6, eq
	mov	x9, #1
	and	x6, x6, x9
	and	x6, x6, x8
	str	x6, [x7]
.L122:
	cmp	x4, #25
	cset	x4, eq
	mov	x7, #1
	and	x4, x4, x7
	and	x4, x4, x6
	str	x4, [x5]
.L123:
	cmp	x2, #2
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L124:
	cmp	w2, #0
	bne	.L133
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L128
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L130
.L128:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L130:
	cmp	w1, #0
	bne	.L132
	mov	x1, x22
	adrp	x0, str702
	add	x0, x0, #:lo12:str702
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L160
.L132:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, str699
	add	x1, x1, #:lo12:str699
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L160
.L133:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
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
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	bl	compiler_parser_parse_functions_parse_pub
	mov	x6, x22
	mov	x5, x21
	mov	x4, x20
	ldr	x1, [x0]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x21, x1
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L136
	mov	x2, #0
	str	x2, [x3]
	mov	x25, x5
	mov	x24, x4
	mov	x26, x6
	mov	x2, #0
	b	.L145
.L136:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x7, #16
	add	x7, x0, x7
	ldr	x7, [x7]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x8, [x7]
	mov	x26, x6
	mov	x6, #16
	sub	sp, sp, x6
	mov	x6, sp
	cmp	x8, #1
	beq	.L139
	mov	x7, #0
	str	x7, [x6]
	mov	x24, x4
	mov	x4, #0
	b	.L144
.L139:
	mov	x8, #8
	add	x8, x7, x8
	ldr	x8, [x8]
	mov	x9, #16
	add	x7, x7, x9
	ldr	x7, [x7]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x10, [x7]
	mov	x9, #16
	sub	sp, sp, x9
	mov	x9, sp
	cmp	x10, #1
	beq	.L142
	mov	x7, #0
	str	x7, [x9]
	mov	x7, #0
	b	.L143
.L142:
	mov	x10, #8
	add	x7, x7, x10
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #30
	cset	x7, eq
	mov	x10, #1
	and	x7, x7, x10
	str	x7, [x9]
.L143:
	cmp	x8, #4
	mov	x24, x4
	cset	x4, eq
	mov	x8, #1
	and	x4, x4, x8
	and	x4, x4, x7
	str	x4, [x6]
.L144:
	cmp	x2, #14
	cset	x2, eq
	mov	x25, x5
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L145:
	cmp	w2, #0
	bne	.L154
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L149
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L151
.L149:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L151:
	cmp	w1, #0
	bne	.L153
	mov	x1, x26
	adrp	x0, str672
	add	x0, x0, #:lo12:str672
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L159
.L153:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x21
	adrp	x1, str669
	add	x1, x1, #:lo12:str669
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	.L159
.L154:
	mov	x1, x21
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	ldr	x2, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_params_parse_params
	mov	x1, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L157
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	str	x2, [x29, 16]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_functions_parse_optional_return
	mov	x1, x23
	ldr	x3, [x0]
	str	x3, [x29, 24]
	mov	x23, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x6, x26
	mov	x5, x25
	mov	x4, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	ldr	x3, [x29, 24]
	ldr	x2, [x29, 16]
	bl	compiler_parser_ast_ExternalFn
	mov	x1, x22
	bl	compiler_parser_parse_result_POk
	str	x0, [x21]
	b	.L158
.L157:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x21]
.L158:
	str	x0, [x20]
.L159:
	str	x0, [x19]
.L160:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
.type compiler_parser_parse_functions_parse_external_fn, @function
.size compiler_parser_parse_functions_parse_external_fn, .-compiler_parser_parse_functions_parse_external_fn
/* end function compiler_parser_parse_functions_parse_external_fn */

.text
.balign 16
compiler_parser_parse_functions_parse_pub:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L163
	mov	x1, #0
	b	.L164
.L163:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #20
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L164:
	cmp	w1, #0
	bne	.L166
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L167
.L166:
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
.L167:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_functions_parse_pub, @function
.size compiler_parser_parse_functions_parse_pub, .-compiler_parser_parse_functions_parse_pub
/* end function compiler_parser_parse_functions_parse_pub */

.text
.balign 16
compiler_parser_parse_functions_parse_optional_return:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x0
	ldr	x0, [x20]
	cmp	x0, #1
	beq	.L170
	mov	x0, #0
	b	.L171
.L170:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #23
	cset	x0, eq
	mov	x1, #1
	and	x0, x0, x1
.L171:
	cmp	w0, #0
	bne	.L173
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	b	.L176
.L173:
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
	beq	.L175
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
	b	.L176
.L175:
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
.L176:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_functions_parse_optional_return, @function
.size compiler_parser_parse_functions_parse_optional_return, .-compiler_parser_parse_functions_parse_optional_return
/* end function compiler_parser_parse_functions_parse_optional_return */

.section .note.GNU-stack,"",@progbits
