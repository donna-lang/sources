.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str209:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str215:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str320:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str323:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str324:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str468:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
_str471:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
_str499:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str502:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str529:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
_str532:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
_str533:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str674:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str677:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str678:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_parser_parse_types_parse_type
_compiler_parser_parse_types_parse_type:
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
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L2
	mov	x2, #0
	b	L3
L2:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #5
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L3:
	cmp	w2, #0
	bne	L105
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L7
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L8
L7:
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
L8:
	cmp	w2, #0
	bne	L82
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L12
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L13
L12:
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
L13:
	cmp	w2, #0
	bne	L64
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L17
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L18
L17:
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
L18:
	cmp	w2, #0
	bne	L27
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L22
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L24
L22:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L24:
	cmp	w1, #0
	bne	L26
	adrp	x0, _str533@page
	add	x0, x0, _str533@pageoff
	bl	_utilities_location_zero
	mov	x1, x0
	adrp	x0, _str532@page
	add	x0, x0, _str532@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	b	L117
L26:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, _str529@page
	add	x1, x1, _str529@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	b	L117
L27:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x1, #1
	beq	L30
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L31
L30:
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
L31:
	cmp	w3, #0
	bne	L40
	mov	x20, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L35
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L37
L35:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L37:
	cmp	w1, #0
	bne	L39
	mov	x1, x20
	adrp	x0, _str502@page
	add	x0, x0, _str502@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L117
L39:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, _str499@page
	add	x1, x1, _str499@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L117
L40:
	mov	x20, x2
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_types_parse_type_args
	mov	x2, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L62
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
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x1, #1
	beq	L45
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L46
L45:
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
L46:
	cmp	w3, #0
	bne	L55
	mov	x23, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L50
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L52
L50:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L52:
	cmp	w1, #0
	bne	L54
	mov	x1, x23
	adrp	x0, _str471@page
	add	x0, x0, _str471@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x21]
	b	L61
L54:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x22
	adrp	x1, _str468@page
	add	x1, x1, _str468@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x21]
	b	L61
L55:
	mov	x23, x2
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_types_parse_type
	mov	x2, x23
	mov	x3, x0
	mov	x0, x22
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x3]
	cmp	x1, #1
	beq	L58
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x23, [x3]
	bl	_compiler_parser_ast_TyFn
	mov	x1, x23
	bl	_compiler_parser_parse_result_POk
	str	x0, [x22]
	b	L60
L58:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x22]
L60:
	str	x0, [x21]
L61:
	str	x0, [x20]
	b	L63
L62:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
L63:
	str	x0, [x19]
	b	L117
L64:
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
	sub	sp, sp, x2
	mov	x19, sp
	mov	x20, x1
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L67
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L68
L67:
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
L68:
	cmp	w2, #0
	bne	L77
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L72
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L74
L72:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L74:
	cmp	w1, #0
	bne	L76
	adrp	x0, _str324@page
	add	x0, x0, _str324@pageoff
	bl	_utilities_location_zero
	mov	x1, x0
	adrp	x0, _str323@page
	add	x0, x0, _str323@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L117
L76:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x20
	adrp	x1, _str320@page
	add	x1, x1, _str320@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L117
L77:
	mov	x1, x20
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_types_parse_type_args
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L80
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	bl	_compiler_parser_ast_TyTuple
	mov	x1, x21
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
	b	L81
L80:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
L81:
	str	x0, [x19]
	b	L117
L82:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x20, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x1, #1
	beq	L85
	mov	x1, #0
	str	x1, [x3]
	mov	x1, #0
	b	L90
L85:
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
	beq	L88
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L89
L88:
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
L89:
	cmp	x1, #26
	cset	x1, eq
	mov	x5, #1
	and	x1, x1, x5
	and	x1, x1, x4
	str	x1, [x3]
L90:
	cmp	w1, #0
	bne	L92
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_ast_TyName
	mov	x1, x20
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L117
L92:
	mov	x1, #16
	add	x1, x20, x1
	ldr	x3, [x1]
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x22, [x3]
	ldr	x1, [x1]
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x4, [x22]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x4, #1
	beq	L95
	mov	x4, #0
	str	x4, [x3]
	mov	x21, x2
	mov	x2, #0
	b	L96
L95:
	mov	x4, #8
	add	x4, x22, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #30
	mov	x21, x2
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L96:
	cmp	w2, #0
	bne	L98
	mov	x23, x1
	adrp	x1, _str215@page
	add	x1, x1, _str215@pageoff
	bl	___rt_str_concat
	mov	x1, x23
	bl	___rt_str_concat
	mov	x2, x21
	mov	x24, x2
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_ast_TyName
	mov	x1, x22
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
	b	L104
L98:
	mov	x24, x21
	mov	x21, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	mov	x22, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_types_parse_type_args
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L101
	mov	x3, #8
	add	x3, x2, x3
	ldr	x23, [x3]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x25, x1
	adrp	x1, _str209@page
	add	x1, x1, _str209@pageoff
	bl	___rt_str_concat
	mov	x1, x25
	bl	___rt_str_concat
	mov	x2, x24
	mov	x1, x23
	bl	_compiler_parser_ast_TyName
	mov	x1, x22
	bl	_compiler_parser_parse_result_POk
	str	x0, [x21]
	b	L103
L101:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x21]
L103:
	str	x0, [x20]
L104:
	str	x0, [x19]
	b	L117
L105:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x22, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x22]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x1, #1
	beq	L108
	mov	x1, #0
	str	x1, [x3]
	mov	x1, #0
	b	L109
L108:
	mov	x1, #8
	add	x1, x22, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #30
	cset	x1, eq
	mov	x4, #1
	and	x1, x1, x4
	str	x1, [x3]
L109:
	cmp	w1, #0
	bne	L111
	mov	x21, x2
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_ast_TyName
	mov	x1, x22
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L117
L111:
	mov	x21, x2
	mov	x20, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_types_parse_type_args
	mov	x2, x21
	mov	x3, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x3]
	cmp	x1, #1
	beq	L114
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	bl	_compiler_parser_ast_TyName
	mov	x1, x21
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
	b	L116
L114:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
L116:
	str	x0, [x19]
L117:
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
/* end function compiler_parser_parse_types_parse_type */

.text
.balign 4
.globl _compiler_parser_parse_types_parse_type_list
_compiler_parser_parse_types_parse_type_list:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_compiler_parser_parse_types_parse_type_args
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_types_parse_type_list */

.text
.balign 4
_compiler_parser_parse_types_parse_type_args:
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
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L122
	mov	x2, #0
	b	L123
L122:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L123:
	cmp	w2, #0
	bne	L149
	mov	x22, x0
	mov	x0, x1
	bl	_compiler_parser_parse_types_parse_type
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L148
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
	beq	L128
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L129
L128:
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
L129:
	cmp	w2, #0
	bne	L145
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L133
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L134
L133:
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
L134:
	cmp	w2, #0
	bne	L143
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L138
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L140
L138:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L140:
	cmp	w1, #0
	bne	L142
	adrp	x0, _str678@page
	add	x0, x0, _str678@pageoff
	bl	_utilities_location_zero
	mov	x1, x0
	adrp	x0, _str677@page
	add	x0, x0, _str677@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	L147
L142:
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
	adrp	x1, _str674@page
	add	x1, x1, _str674@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x20]
	b	L147
L143:
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
	b	L147
L145:
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
	bl	_compiler_parser_parse_types_parse_type_args
	str	x0, [x20]
L147:
	str	x0, [x19]
	b	L150
L148:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
	b	L150
L149:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_donna_list_reverse
	mov	x1, x19
	bl	_compiler_parser_parse_result_POk
L150:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_types_parse_type_args */

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

