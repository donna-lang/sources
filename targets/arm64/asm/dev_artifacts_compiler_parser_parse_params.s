.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str136:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str139:
	.ascii ")"
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
str199:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str219:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str250:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str276:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
str279:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
str280:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_params_parse_params
compiler_parser_parse_params_parse_params:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_result_skip_newlines
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L2
	mov	x1, #0
	b	.L3
.L2:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #31
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L3:
	cmp	w1, #0
	bne	.L5
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_params_parse_param_list
	b	.L6
.L5:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	bl	compiler_parser_parse_result_POk
.L6:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_params_parse_params, @function
.size compiler_parser_parse_params_parse_params, .-compiler_parser_parse_params_parse_params
/* end function compiler_parser_parse_params_parse_params */

.text
.balign 16
compiler_parser_parse_params_parse_param_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x1
	bl	compiler_parser_parse_params_parse_param
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L29
	mov	x1, #8
	add	x1, x0, x1
	mov	x21, x20
	ldr	x20, [x1]
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
	beq	.L11
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L12
.L11:
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
.L12:
	cmp	w2, #0
	bne	.L27
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L16
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L17
.L16:
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
.L17:
	cmp	w2, #0
	bne	.L26
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L21
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L23
.L21:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L23:
	cmp	w1, #0
	bne	.L25
	adrp	x0, str140
	add	x0, x0, #:lo12:str140
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str139
	add	x0, x0, #:lo12:str139
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	.L30
.L25:
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
	b	.L30
.L26:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x22
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x20, [x2]
	mov	x20, x1
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	bl	donna_list_reverse
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L30
.L27:
	mov	x17, x20
	mov	x20, x21
	mov	x21, x17
	mov	x1, #16
	add	x0, x0, x1
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
	bl	compiler_parser_parse_params_parse_param_list
	str	x0, [x19]
	b	.L30
.L29:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
.L30:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_params_parse_param_list, @function
.size compiler_parser_parse_params_parse_param_list, .-compiler_parser_parse_params_parse_param_list
/* end function compiler_parser_parse_params_parse_param_list */

.text
.balign 16
compiler_parser_parse_params_parse_param:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #1
	beq	.L33
	mov	x1, #0
	b	.L34
.L33:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #4
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L34:
	cmp	w1, #0
	bne	.L59
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	cmp	x0, #1
	beq	.L38
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
	b	.L43
.L38:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x1, [x0]
	cmp	x1, #6
	cset	x22, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	cmp	w22, #0
	bne	.L41
	mov	x0, #0
	str	x0, [x21]
	mov	x0, #0
	b	.L42
.L41:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, str199
	add	x1, x1, #:lo12:str199
	bl	strcmp
	cmp	x0, #0
	cset	x0, eq
	and	x0, x0, x22
	str	x0, [x21]
.L42:
	mov	x1, #1
	and	x0, x0, x1
	str	x0, [x20]
.L43:
	cmp	w0, #0
	bne	.L58
	ldr	x0, [x19]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	.L47
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L48
.L47:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #6
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L48:
	cmp	w1, #0
	bne	.L57
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	.L52
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L54
.L52:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
.L54:
	cmp	w0, #0
	bne	.L56
	adrp	x0, str280
	add	x0, x0, #:lo12:str280
	bl	utilities_location_zero
	mov	x1, x0
	adrp	x0, str279
	add	x0, x0, #:lo12:str279
	bl	errors_error_ParseUnexpectedEof
	bl	compiler_parser_parse_result_PErr
	b	.L60
.L56:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, str276
	add	x1, x1, #:lo12:str276
	bl	errors_error_ParseUnexpectedToken
	bl	compiler_parser_parse_result_PErr
	b	.L60
.L57:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x2, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x1, [x2]
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x19, x0
	adrp	x0, str250
	add	x0, x0, #:lo12:str250
	bl	__rt_str_concat
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	compiler_parser_parse_params_parse_param_with_name
	b	.L60
.L58:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, str219
	add	x2, x2, #:lo12:str219
	bl	compiler_parser_parse_params_parse_param_with_name
	b	.L60
.L59:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x2, [x1]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	compiler_parser_parse_params_parse_param_with_name
.L60:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_params_parse_param, @function
.size compiler_parser_parse_params_parse_param, .-compiler_parser_parse_params_parse_param
/* end function compiler_parser_parse_params_parse_param */

.text
.balign 16
compiler_parser_parse_params_parse_param_with_name:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x0
	mov	x0, x2
	mov	x2, x1
	ldr	x1, [x19]
	cmp	x1, #1
	beq	.L63
	mov	x1, #0
	b	.L64
.L63:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #24
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
.L64:
	cmp	w1, #0
	bne	.L66
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	mov	x21, x0
	bl	compiler_parser_ast_Param
	mov	x1, x19
	bl	compiler_parser_parse_result_POk
	b	.L70
.L66:
	mov	x21, x0
	mov	x0, x19
	mov	x19, x2
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_types_parse_type
	mov	x2, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L69
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x22, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	donna_option_Some
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	bl	compiler_parser_ast_Param
	mov	x1, x20
	bl	compiler_parser_parse_result_POk
	str	x0, [x19]
	b	.L70
.L69:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_PErr
	str	x0, [x19]
.L70:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_params_parse_param_with_name, @function
.size compiler_parser_parse_params_parse_param_with_name, .-compiler_parser_parse_params_parse_param_with_name
/* end function compiler_parser_parse_params_parse_param_with_name */

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
