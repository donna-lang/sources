.data
.balign 8
_str7:
	.ascii "pattern"
	.byte 0
/* end data */

.data
.balign 8
_str8:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str170:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str629:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str632:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str673:
	.ascii "pattern"
	.byte 0
/* end data */

.data
.balign 8
_str813:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str816:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str817:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str1099:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
_str1102:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1136:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str1160:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str1209:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str1236:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1239:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1272:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str1329:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1332:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1420:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1423:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1450:
	.ascii "name or _"
	.byte 0
/* end data */

.data
.balign 8
_str1453:
	.ascii "spread variable"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_parser_parse_patterns_parse_pattern
_compiler_parser_parse_patterns_parse_pattern:
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
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #0
	beq	L138
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	cmp	x0, #1
	beq	L4
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
	b	L9
L4:
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
	bne	L7
	mov	x0, #0
	str	x0, [x21]
	mov	x0, #0
	b	L8
L7:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _str32@page
	add	x1, x1, _str32@pageoff
	bl	_strcmp
	cmp	x0, #0
	cset	x0, eq
	and	x0, x0, x22
	str	x0, [x21]
L8:
	mov	x1, #1
	and	x0, x0, x1
	str	x0, [x20]
L9:
	cmp	w0, #0
	bne	L137
	ldr	x0, [x19]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L13
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L14
L13:
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
L14:
	cmp	w1, #0
	bne	L136
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L18
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L19
L18:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L19:
	cmp	w1, #0
	bne	L135
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L23
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L28
L23:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x3, x19, x3
	ldr	x3, [x3]
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L26
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L27
L26:
	mov	x5, #8
	add	x3, x3, x5
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
L27:
	cmp	x1, #39
	cset	x1, eq
	mov	x4, #1
	and	x1, x1, x4
	and	x1, x1, x3
	str	x1, [x2]
L28:
	cmp	w1, #0
	bne	L134
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L32
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L33
L32:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #1
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L33:
	cmp	w1, #0
	bne	L133
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L37
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L38
L37:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #2
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L38:
	cmp	w1, #0
	bne	L132
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L42
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L47
L42:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x3, [x1]
	cmp	x3, #7
	cset	x4, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	w4, #0
	bne	L45
	mov	x1, #0
	str	x1, [x3]
	mov	x1, #0
	b	L46
L45:
	mov	x5, #8
	add	x1, x1, x5
	ldr	x1, [x1]
	cmp	x1, #1
	cset	x1, eq
	and	x1, x1, x4
	str	x1, [x3]
L46:
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L47:
	cmp	w1, #0
	bne	L131
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L51
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L56
L51:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x3, [x1]
	cmp	x3, #7
	cset	x4, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	w4, #0
	bne	L54
	mov	x1, #0
	str	x1, [x3]
	mov	x1, #0
	b	L55
L54:
	mov	x5, #8
	add	x1, x1, x5
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x4
	str	x1, [x3]
L55:
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L56:
	cmp	w1, #0
	bne	L130
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L60
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L61
L60:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #5
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L61:
	cmp	w1, #0
	bne	L119
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L65
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L66
L65:
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
L66:
	cmp	w1, #0
	bne	L96
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L70
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L71
L70:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #29
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L71:
	cmp	w1, #0
	bne	L79
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L75
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L76
L75:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #32
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x1]
L76:
	cmp	w0, #0
	bne	L78
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, _str673@page
	add	x1, x1, _str673@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	b	L139
L78:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_parser_parse_patterns_parse_list_pattern
	b	L139
L79:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L82
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L83
L82:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #30
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
L83:
	cmp	w3, #0
	bne	L92
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L87
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L89
L87:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
L89:
	cmp	w2, #0
	bne	L91
	adrp	x0, _str632@page
	add	x0, x0, _str632@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L139
L91:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, _str629@page
	add	x1, x1, _str629@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L139
L92:
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_patterns_parse_paren_patterns
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L94
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	bl	_compiler_parser_ast_PTuple
	mov	x1, x21
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
	b	L95
L94:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
L95:
	str	x0, [x19]
	b	L139
L96:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x20, [x0]
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
	ldr	x1, [x20]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L99
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L104
L99:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x4, x20, x4
	ldr	x4, [x4]
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x6, [x4]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x6, #1
	beq	L102
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L103
L102:
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
L103:
	cmp	x1, #26
	cset	x1, eq
	mov	x5, #1
	and	x1, x1, x5
	and	x1, x1, x4
	str	x1, [x2]
L104:
	cmp	w1, #0
	bne	L106
	mov	x1, x3
	bl	_compiler_parser_ast_PVar
	mov	x1, x20
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L139
L106:
	mov	x1, #16
	add	x1, x20, x1
	ldr	x2, [x1]
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x2, x2, x4
	ldr	x22, [x2]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x4, [x22]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x4, #1
	beq	L109
	mov	x4, #0
	str	x4, [x2]
	mov	x21, x1
	mov	x23, x3
	mov	x1, #0
	b	L110
L109:
	mov	x4, #8
	add	x4, x22, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #30
	mov	x21, x1
	cset	x1, eq
	mov	x23, x3
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L110:
	cmp	w1, #0
	bne	L112
	bl	_donna_option_Some
	mov	x3, x23
	mov	x1, x21
	mov	x25, x3
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_parser_ast_PCons
	mov	x1, x22
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
	b	L118
L112:
	mov	x1, x21
	mov	x25, x23
	mov	x21, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	mov	x23, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_patterns_parse_paren_patterns
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L115
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x24, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_donna_option_Some
	mov	x3, x25
	mov	x2, x24
	mov	x1, x23
	bl	_compiler_parser_ast_PCons
	mov	x1, x22
	bl	_compiler_parser_parse_result_POk
	str	x0, [x21]
	b	L117
L115:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x21]
L117:
	str	x0, [x20]
L118:
	str	x0, [x19]
	b	L139
L119:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x20, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x3, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x20]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	L122
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L123
L122:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #30
	cset	x0, eq
	mov	x4, #1
	and	x0, x0, x4
	str	x0, [x2]
L123:
	cmp	w0, #0
	bne	L125
	mov	x21, x3
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	bl	_compiler_parser_ast_PCons
	mov	x1, x20
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L139
L125:
	mov	x21, x3
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_patterns_parse_paren_patterns
	mov	x3, x21
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L128
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x21, [x0]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	bl	_compiler_parser_ast_PCons
	mov	x1, x21
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
	b	L129
L128:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
L129:
	str	x0, [x19]
	b	L139
L130:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #8
	add	x0, x0, x2
	mov	x19, x1
	ldr	x1, [x0]
	mov	x0, #0
	bl	_compiler_parser_ast_PBool
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
	b	L139
L131:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #8
	add	x0, x0, x2
	mov	x19, x1
	ldr	x1, [x0]
	mov	x0, #1
	bl	_compiler_parser_ast_PBool
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
	b	L139
L132:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_parser_ast_PString
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
	b	L139
L133:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_parser_ast_PFloat
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
	b	L139
L134:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x2, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	ldr	x0, [x0]
	mov	x2, #8
	add	x0, x0, x2
	mov	x20, x1
	ldr	x1, [x0]
	adrp	x0, _str170@page
	add	x0, x0, _str170@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	_compiler_parser_ast_PInt
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
	b	L139
L135:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_parser_ast_PInt
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
	b	L139
L136:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x19, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_parser_ast_PDiscard
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
	b	L139
L137:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x19, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_ast_PWild
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
	b	L139
L138:
	adrp	x0, _str8@page
	add	x0, x0, _str8@pageoff
	bl	_utilities_location_zero
	mov	x1, x0
	adrp	x0, _str7@page
	add	x0, x0, _str7@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
L139:
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
/* end function compiler_parser_parse_patterns_parse_pattern */

.text
.balign 4
_compiler_parser_parse_patterns_parse_paren_patterns:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x1
	bl	_compiler_parser_parse_result_skip_newlines
	bl	_compiler_parser_parse_patterns_strip_pattern_label
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L142
	mov	x2, #0
	b	L143
L142:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L143:
	cmp	w2, #0
	bne	L169
	mov	x22, x0
	mov	x0, x1
	bl	_compiler_parser_parse_patterns_parse_pattern
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L168
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
	beq	L148
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L149
L148:
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
L149:
	cmp	w2, #0
	bne	L165
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L153
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L154
L153:
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
L154:
	cmp	w2, #0
	bne	L163
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L158
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L160
L158:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L160:
	cmp	w1, #0
	bne	L162
	adrp	x0, _str817@page
	add	x0, x0, _str817@pageoff
	bl	_utilities_location_zero
	mov	x1, x0
	adrp	x0, _str816@page
	add	x0, x0, _str816@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	L167
L162:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x21
	adrp	x1, _str813@page
	add	x1, x1, _str813@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	L167
L163:
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_donna_list_reverse
	mov	x1, x21
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
	b	L167
L165:
	mov	x17, x21
	mov	x21, x22
	mov	x22, x17
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_compiler_parser_parse_patterns_parse_paren_patterns
	str	x0, [x20]
L167:
	str	x0, [x19]
	b	L170
L168:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L170
L169:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_donna_list_reverse
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
L170:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_patterns_parse_paren_patterns */

.text
.balign 4
_compiler_parser_parse_patterns_strip_pattern_label:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L173
	mov	x1, #0
	b	L178
L173:
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
	beq	L176
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L177
L176:
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
L177:
	cmp	x1, #4
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	and	x1, x1, x2
L178:
	cmp	w1, #0
	beq	L180
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
L180:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_patterns_strip_pattern_label */

.text
.balign 4
_compiler_parser_parse_patterns_parse_list_pattern:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x2, x19
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L183
	mov	x1, #0
	b	L184
L183:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #33
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
L184:
	cmp	w1, #0
	bne	L186
	mov	x19, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x1, x19
	bl	_compiler_parser_parse_patterns_parse_list_elems
	b	L187
L186:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x1, [x0]
	mov	x19, x1
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	bl	_compiler_parser_ast_PList
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
L187:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_patterns_parse_list_pattern */

.text
.balign 4
_compiler_parser_parse_patterns_parse_list_elems:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x2
	mov	x19, x1
	bl	_compiler_parser_parse_patterns_parse_pattern
	mov	x2, x20
	mov	x1, x19
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L229
	mov	x21, x2
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	_malloc
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
	beq	L192
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L197
L192:
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
	beq	L195
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	L196
L195:
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
L196:
	cmp	x3, #25
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
L197:
	cmp	w3, #0
	bne	L227
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L201
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L202
L201:
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
L202:
	cmp	w3, #0
	bne	L225
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L206
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L207
L206:
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
L207:
	cmp	w3, #0
	bne	L223
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L211
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L212
L211:
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
L212:
	cmp	w3, #0
	bne	L222
	mov	x0, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	L217
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L219
L217:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
L219:
	cmp	w0, #0
	bne	L221
	adrp	x0, _str1102@page
	add	x0, x0, _str1102@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L230
L221:
	mov	x0, #8
	add	x0, x22, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, _str1099@page
	add	x1, x1, _str1099@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L230
L222:
	mov	x21, x1
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	bl	_donna_list_reverse
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x21, x1
	bl	_compiler_parser_parse_patterns_parse_list_spread
	str	x0, [x19]
	b	L230
L223:
	mov	x21, x1
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	bl	_donna_list_reverse
	mov	x1, x20
	mov	x2, x21
	mov	x20, x1
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	bl	_compiler_parser_ast_PList
	mov	x1, x20
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L230
L225:
	mov	x21, x1
	mov	x20, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x1, x21
	mov	x2, x20
	bl	_compiler_parser_parse_patterns_parse_list_elems
	str	x0, [x19]
	b	L230
L227:
	mov	x20, x22
	mov	x21, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_donna_list_reverse
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_parser_parse_patterns_parse_list_spread
	str	x0, [x19]
	b	L230
L229:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
L230:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_parser_parse_patterns_parse_list_elems */

.text
.balign 4
_compiler_parser_parse_patterns_parse_list_spread:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x0
	mov	x0, x2
	mov	x2, x1
	ldr	x1, [x19]
	cmp	x1, #1
	beq	L233
	mov	x3, #0
	b	L234
L233:
	mov	x3, #8
	add	x3, x19, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #33
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
L234:
	cmp	w3, #0
	bne	L310
	mov	x3, #16
	mov	x20, x19
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x1, #1
	beq	L238
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L244
L238:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x3, [x1]
	cmp	x3, #6
	cset	x22, eq
	mov	x24, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	w22, #0
	bne	L241
	mov	x23, x0
	mov	x0, #0
	str	x0, [x21]
	mov	x0, x23
	mov	x2, x24
	mov	x1, #0
	b	L243
L241:
	mov	x23, x0
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _str1160@page
	add	x1, x1, _str1160@pageoff
	bl	_strcmp
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x22
	str	x1, [x21]
L243:
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x19]
L244:
	cmp	w1, #0
	bne	L294
	mov	x21, x0
	ldr	x0, [x20]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x3, sp
	cmp	x0, #1
	beq	L248
	mov	x1, #0
	str	x1, [x3]
	mov	x1, #0
	b	L249
L248:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #6
	cset	x1, eq
	mov	x4, #1
	and	x1, x1, x4
	str	x1, [x3]
L249:
	cmp	w1, #0
	bne	L278
	mov	x1, #16
	sub	sp, sp, x1
	mov	x3, sp
	cmp	x0, #1
	beq	L253
	mov	x1, #0
	str	x1, [x3]
	mov	x1, #0
	b	L254
L253:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #4
	cset	x1, eq
	mov	x4, #1
	and	x1, x1, x4
	str	x1, [x3]
L254:
	cmp	w1, #0
	bne	L263
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L258
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L260
L258:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L260:
	cmp	w0, #0
	bne	L262
	mov	x1, x2
	adrp	x0, _str1453@page
	add	x0, x0, _str1453@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	b	L312
L262:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, _str1450@page
	add	x1, x1, _str1450@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	b	L312
L263:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x0, [x0]
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x3, x0
	ldr	x0, [x1]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x5, sp
	cmp	x0, #1
	beq	L266
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L267
L266:
	mov	x4, #8
	add	x4, x1, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #33
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
L267:
	cmp	w4, #0
	bne	L276
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x0, #1
	beq	L271
	mov	x0, #0
	str	x0, [x3]
	mov	x0, #0
	b	L273
L271:
	mov	x0, #1
	str	x0, [x3]
	mov	x0, #1
L273:
	cmp	w0, #0
	bne	L275
	mov	x1, x2
	adrp	x0, _str1423@page
	add	x0, x0, _str1423@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L312
L275:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, _str1420@page
	add	x1, x1, _str1420@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L312
L276:
	mov	x0, x3
	mov	x22, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_donna_option_Some
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	_compiler_parser_ast_PList
	mov	x1, x20
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L312
L278:
	mov	x19, x2
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x20, x1
	ldr	x20, [x1]
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str1272@page
	add	x0, x0, _str1272@pageoff
	bl	___rt_str_concat
	mov	x2, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, x0
	ldr	x0, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x0, #1
	beq	L282
	mov	x4, #0
	str	x4, [x3]
	mov	x22, x2
	mov	x2, #0
	b	L283
L282:
	mov	x4, #8
	add	x4, x20, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #33
	mov	x22, x2
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L283:
	cmp	w2, #0
	bne	L292
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L287
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L289
L287:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L289:
	cmp	w0, #0
	bne	L291
	mov	x1, x22
	adrp	x0, _str1332@page
	add	x0, x0, _str1332@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L312
L291:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, _str1329@page
	add	x1, x1, _str1329@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L312
L292:
	mov	x0, x1
	mov	x1, #16
	add	x1, x20, x1
	ldr	x20, [x1]
	bl	_donna_option_Some
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	bl	_compiler_parser_ast_PList
	mov	x1, x20
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L312
L294:
	mov	x19, x20
	mov	x1, #16
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x1]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x5, sp
	cmp	x3, #1
	beq	L298
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L299
L298:
	mov	x4, #8
	add	x4, x1, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #33
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
L299:
	cmp	w4, #0
	bne	L309
	mov	x0, x3
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x0, #1
	beq	L304
	mov	x0, #0
	str	x0, [x3]
	mov	x0, #0
	b	L306
L304:
	mov	x0, #1
	str	x0, [x3]
	mov	x0, #1
L306:
	cmp	w0, #0
	bne	L308
	mov	x1, x2
	adrp	x0, _str1239@page
	add	x0, x0, _str1239@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L312
L308:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, _str1236@page
	add	x1, x1, _str1236@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L312
L309:
	mov	x22, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	adrp	x0, _str1209@page
	add	x0, x0, _str1209@pageoff
	bl	_donna_option_Some
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	mov	x21, x2
	bl	_compiler_parser_ast_PList
	mov	x1, x20
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L312
L310:
	mov	x21, x2
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	mov	x20, x0
	adrp	x0, _str1136@page
	add	x0, x0, _str1136@pageoff
	bl	_donna_option_Some
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	bl	_compiler_parser_ast_PList
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
L312:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_patterns_parse_list_spread */

.text
.balign 4
___rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	_strlen
	mov	x19, x0
	mov	x0, x20
	bl	_strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	bl	_strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function __rt_str_concat */

