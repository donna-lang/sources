.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str56:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
_str63:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
_str64:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str248:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str268:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str299:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str392:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str399:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str530:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str537:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str619:
	.ascii "= or :"
	.byte 0
/* end data */

.data
.balign 8
_str626:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str2375:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str2382:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str2383:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str3023:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str3030:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str3031:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str3144:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
_str3151:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
_str3152:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str3304:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str3311:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str3546:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
_str3553:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str3635:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str3642:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str3797:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str3947:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
_str3954:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
_str3955:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str4445:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
_str4530:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
_str4688:
	.ascii "->"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_parser_parse_exprs_parse_expr
_compiler_parser_parse_exprs_parse_expr:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_compiler_parser_parse_result_skip_newlines
	bl	_compiler_parser_parse_exprs_parse_pipe
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_exprs_parse_expr */

.text
.balign 4
.globl _compiler_parser_parse_exprs_parse_block
_compiler_parser_parse_exprs_parse_block:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	bl	_compiler_parser_parse_result_skip_newlines
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L4
	mov	x2, #0
	b	L5
L4:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #62
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L5:
	cmp	w2, #0
	bne	L14
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L9
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L11
L9:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L11:
	cmp	w1, #0
	bne	L13
	adrp	x0, _str64@page
	add	x0, x0, _str64@pageoff
	bl	_utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str63@page
	add	x0, x0, _str63@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L15
L13:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x21, x0
	mov	x0, #32
	bl	_malloc
	mov	x19, x0
	mov	x0, #6
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x19, x0
	adrp	x0, _str56@page
	add	x0, x0, _str56@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L15
L14:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_parser_parse_exprs_parse_block_stmts
L15:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_parser_parse_exprs_parse_block */

.text
.balign 4
.globl _compiler_parser_parse_exprs_parse_stmt
_compiler_parser_parse_exprs_parse_stmt:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	bl	_compiler_parser_parse_result_skip_newlines
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L18
	mov	x1, #0
	b	L19
L18:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #17
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
L19:
	cmp	w1, #0
	bne	L23
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L22
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, x23
	bl	_compiler_parser_parse_exprs_expr_span
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #2
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L24
L22:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L24
L23:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_parser_parse_exprs_parse_let
L24:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_stmt */

.text
.balign 4
_compiler_parser_parse_exprs_parse_block_stmts:
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
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	mov	x0, x20
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L27
	mov	x3, #0
	b	L28
L27:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #63
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
L28:
	cmp	w3, #0
	bne	L35
	cmp	x2, #0
	beq	L33
	mov	x20, x0
	mov	x0, x1
	bl	_compiler_parser_parse_exprs_parse_stmt
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L32
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	mov	x20, x1
	bl	_compiler_parser_parse_exprs_parse_block_stmts
	str	x0, [x19]
	b	L37
L32:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L37
L33:
	mov	x20, x19
	bl	_donna_list_reverse
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #13
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	b	L37
L35:
	mov	x20, x19
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_donna_list_reverse
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L37:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_block_stmts */

.text
.balign 4
_compiler_parser_parse_exprs_parse_let:
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
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L40
	mov	x3, #0
	b	L41
L40:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #4
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
L41:
	cmp	w3, #0
	bne	L80
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L45
	mov	x2, #0
	str	x2, [x19]
	mov	x2, #0
	b	L51
L45:
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
	bne	L48
	mov	x22, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, x22
	mov	x2, #0
	b	L50
L48:
	mov	x22, x0
	mov	x0, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x23, x1
	adrp	x1, _str248@page
	add	x1, x1, _str248@pageoff
	bl	_strcmp
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	cmp	x2, #0
	cset	x2, eq
	and	x2, x2, x21
	str	x2, [x20]
L50:
	mov	x3, #1
	and	x2, x2, x3
	str	x2, [x19]
L51:
	cmp	w2, #0
	bne	L79
	ldr	x3, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L55
	mov	x3, #0
	str	x3, [x2]
	mov	x19, x1
	mov	x1, #0
	b	L56
L55:
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
L56:
	cmp	w1, #0
	bne	L77
	bl	_compiler_parser_parse_patterns_parse_pattern
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L76
	mov	x2, #8
	add	x2, x0, x2
	ldr	x25, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x3, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L61
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L62
L61:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #28
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L62:
	cmp	w2, #0
	bne	L71
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L66
	mov	x3, #0
	str	x3, [x2]
	mov	x21, x1
	mov	x1, #0
	b	L68
L66:
	mov	x21, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L68:
	cmp	w1, #0
	bne	L70
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _str399@page
	add	x0, x0, _str399@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L75
L70:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x23, x0
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	mov	x0, #6
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, _str392@page
	add	x0, x0, _str392@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L75
L71:
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L73
	mov	x2, #8
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x1, x23
	mov	x23, x0
	mov	x0, #1
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L74
L73:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L74:
	str	x0, [x20]
L75:
	str	x0, [x19]
	b	L81
L76:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L81
L77:
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
	adrp	x0, _str299@page
	add	x0, x0, _str299@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	_compiler_parser_parse_exprs_parse_let_name
	b	L81
L79:
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _str268@page
	add	x2, x2, _str268@pageoff
	bl	_compiler_parser_parse_exprs_parse_let_name
	b	L81
L80:
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
	bl	_compiler_parser_parse_exprs_parse_let_name
L81:
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
/* end function compiler_parser_parse_exprs_parse_let */

.text
.balign 4
_compiler_parser_parse_exprs_parse_let_name:
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
	str	x27, [x29, 24]
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L84
	mov	x4, #0
	b	L85
L84:
	mov	x4, #8
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #24
	cset	x4, eq
	mov	x5, #1
	and	x4, x4, x5
L85:
	cmp	w4, #0
	bne	L102
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	L89
	mov	x5, #0
	str	x5, [x4]
	mov	x20, x2
	mov	x2, #0
	b	L90
L89:
	mov	x5, #8
	add	x5, x0, x5
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x5, [x5]
	cmp	x5, #28
	mov	x20, x2
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L90:
	cmp	w2, #0
	bne	L99
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L94
	mov	x3, #0
	str	x3, [x2]
	mov	x19, x1
	mov	x1, #0
	b	L96
L94:
	mov	x19, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L96:
	cmp	w1, #0
	bne	L98
	mov	x0, #24
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x2, x19, x0
	adrp	x0, _str626@page
	add	x0, x0, _str626@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L123
L98:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x21, x0
	mov	x0, #32
	bl	_malloc
	mov	x19, x0
	mov	x0, #6
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x19, x0
	adrp	x0, _str619@page
	add	x0, x0, _str619@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L123
L99:
	mov	x19, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x2, x20
	mov	x1, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L101
	mov	x23, x2
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x2, x23
	mov	x1, x21
	mov	x21, x0
	mov	x0, #0
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x2, [x0]
	mov	x0, #16
	add	x2, x21, x0
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x2]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L123
L101:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L123
L102:
	mov	x20, x2
	mov	x19, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_types_parse_type
	mov	x2, x20
	mov	x1, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L122
	mov	x3, #8
	add	x3, x0, x3
	ldr	x27, [x3]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	L107
	mov	x5, #0
	str	x5, [x4]
	mov	x22, x2
	mov	x2, #0
	b	L108
L107:
	mov	x5, #8
	add	x5, x0, x5
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x5, [x5]
	cmp	x5, #28
	mov	x22, x2
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L108:
	cmp	w2, #0
	bne	L117
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L112
	mov	x3, #0
	str	x3, [x2]
	mov	x21, x1
	mov	x1, #0
	b	L114
L112:
	mov	x21, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L114:
	cmp	w1, #0
	bne	L116
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _str537@page
	add	x0, x0, _str537@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L121
L116:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x23, x0
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	mov	x0, #6
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, _str530@page
	add	x0, x0, _str530@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L121
L117:
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x2, x22
	mov	x1, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L119
	mov	x26, x2
	mov	x2, #8
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x25, x0
	mov	x0, #1
	str	x0, [x25]
	mov	x0, #8
	add	x0, x25, x0
	str	x27, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x2, x26
	mov	x1, x23
	mov	x23, x0
	mov	x0, #0
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x2, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #32
	add	x0, x23, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L120
L119:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L120:
	str	x0, [x20]
L121:
	str	x0, [x19]
	b	L123
L122:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L123:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	ldr	x27, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
/* end function compiler_parser_parse_exprs_parse_let_name */

.text
.balign 4
_compiler_parser_parse_exprs_parse_pipe:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_compiler_parser_parse_exprs_parse_or_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L126
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_pipe_loop
	b	L127
L126:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L127:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_pipe */

.text
.balign 4
_compiler_parser_parse_exprs_parse_pipe_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	mov	x19, x0
	mov	x0, x19
	bl	_compiler_parser_parse_result_skip_newlines
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L130
	mov	x1, #0
	b	L131
L130:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #59
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
L131:
	cmp	w1, #0
	bne	L133
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L136
L133:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_or_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L135
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #32
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #14
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_pipe_loop
	str	x0, [x19]
	b	L136
L135:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L136:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_pipe_loop */

.text
.balign 4
_compiler_parser_parse_exprs_parse_or_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_compiler_parser_parse_exprs_parse_and_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L139
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_or_loop
	b	L140
L139:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L140:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_or_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_or_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L143
	mov	x1, #0
	b	L144
L143:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #57
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
L144:
	cmp	w1, #0
	bne	L146
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L149
L146:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_and_expr
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
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BOr@page
	add	x2, x2, _compiler_parser_ast_BOr@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_or_loop
	str	x0, [x19]
	b	L149
L148:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L149:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_or_loop */

.text
.balign 4
_compiler_parser_parse_exprs_parse_and_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_compiler_parser_parse_exprs_parse_cmp_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L152
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_and_loop
	b	L153
L152:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L153:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_and_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_and_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L156
	mov	x1, #0
	b	L157
L156:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #56
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
L157:
	cmp	w1, #0
	bne	L159
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L162
L159:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_cmp_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L161
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BAnd@page
	add	x2, x2, _compiler_parser_ast_BAnd@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_and_loop
	str	x0, [x19]
	b	L162
L161:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L162:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_and_loop */

.text
.balign 4
_compiler_parser_parse_exprs_parse_cmp_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L165
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_cmp_loop
	b	L166
L165:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L166:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_cmp_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_cmp_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L169
	mov	x2, #0
	b	L170
L169:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #46
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
L170:
	cmp	w2, #0
	bne	L245
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L174
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L175
L174:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #47
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L175:
	cmp	w2, #0
	bne	L242
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L179
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L180
L179:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #48
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L180:
	cmp	w2, #0
	bne	L239
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L184
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L185
L184:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #50
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L185:
	cmp	w2, #0
	bne	L236
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L189
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L190
L189:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #52
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L190:
	cmp	w2, #0
	bne	L233
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L194
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L195
L194:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #54
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L195:
	cmp	w2, #0
	bne	L230
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L199
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L200
L199:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #49
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L200:
	cmp	w2, #0
	bne	L227
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L204
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L205
L204:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #51
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L205:
	cmp	w2, #0
	bne	L224
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L209
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L210
L209:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #53
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L210:
	cmp	w2, #0
	bne	L221
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L214
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x1
	mov	x1, #0
	b	L215
L214:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #55
	mov	x20, x1
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L215:
	cmp	w1, #0
	bne	L217
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x2, #0
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L248
L217:
	mov	x1, x20
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L220
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BGtEqDot@page
	add	x0, x0, _compiler_parser_ast_BGtEqDot@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L220:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L221:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L223
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BGtDot@page
	add	x0, x0, _compiler_parser_ast_BGtDot@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L223:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L224:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L226
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BLtEqDot@page
	add	x0, x0, _compiler_parser_ast_BLtEqDot@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L226:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L227:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L229
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BLtDot@page
	add	x0, x0, _compiler_parser_ast_BLtDot@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L229:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L230:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L232
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BGtEq@page
	add	x0, x0, _compiler_parser_ast_BGtEq@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L232:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L233:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L235
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BGt@page
	add	x0, x0, _compiler_parser_ast_BGt@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L235:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L236:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L238
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BLtEq@page
	add	x0, x0, _compiler_parser_ast_BLtEq@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L238:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L239:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L241
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BLt@page
	add	x0, x0, _compiler_parser_ast_BLt@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L241:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L242:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L244
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BNotEq@page
	add	x0, x0, _compiler_parser_ast_BNotEq@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L244:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L245:
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_concat_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L247
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #10
	str	x0, [x21]
	mov	x0, #8
	add	x2, x21, x0
	adrp	x0, _compiler_parser_ast_BEq@page
	add	x0, x0, _compiler_parser_ast_BEq@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L248
L247:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L248:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_cmp_loop */

.text
.balign 4
_compiler_parser_parse_exprs_parse_concat_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_compiler_parser_parse_exprs_parse_add_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L251
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_concat_loop
	b	L252
L251:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L252:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_concat_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_concat_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L255
	mov	x1, #0
	b	L256
L255:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #60
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
L256:
	cmp	w1, #0
	bne	L258
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L261
L258:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_add_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L260
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BConcat@page
	add	x2, x2, _compiler_parser_ast_BConcat@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_concat_loop
	str	x0, [x19]
	b	L261
L260:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L261:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_concat_loop */

.text
.balign 4
_compiler_parser_parse_exprs_parse_add_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_compiler_parser_parse_exprs_parse_mul_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L264
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_add_loop
	b	L265
L264:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L265:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_add_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_add_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L268
	mov	x2, #0
	b	L269
L268:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #37
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L269:
	cmp	w2, #0
	bne	L295
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L273
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L274
L273:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #39
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L274:
	cmp	w2, #0
	bne	L292
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L278
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L279
L278:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #38
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L279:
	cmp	w2, #0
	bne	L289
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L283
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L284
L283:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #40
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L284:
	cmp	w1, #0
	bne	L286
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L298
L286:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_mul_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L288
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BSubDot@page
	add	x2, x2, _compiler_parser_ast_BSubDot@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_add_loop
	str	x0, [x19]
	b	L298
L288:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L298
L289:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_mul_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L291
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BAddDot@page
	add	x2, x2, _compiler_parser_ast_BAddDot@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_add_loop
	str	x0, [x19]
	b	L298
L291:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L298
L292:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_mul_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L294
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BSub@page
	add	x2, x2, _compiler_parser_ast_BSub@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_add_loop
	str	x0, [x19]
	b	L298
L294:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L298
L295:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_mul_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L297
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BAdd@page
	add	x2, x2, _compiler_parser_ast_BAdd@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_add_loop
	str	x0, [x19]
	b	L298
L297:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L298:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_add_loop */

.text
.balign 4
_compiler_parser_parse_exprs_parse_mul_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_compiler_parser_parse_exprs_parse_unary_expr
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L301
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_mul_loop
	b	L302
L301:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L302:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_mul_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_mul_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L305
	mov	x2, #0
	b	L306
L305:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #41
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L306:
	cmp	w2, #0
	bne	L340
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L310
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L311
L310:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #43
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L311:
	cmp	w2, #0
	bne	L337
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L315
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L316
L315:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #45
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L316:
	cmp	w2, #0
	bne	L334
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L320
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L321
L320:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #42
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L321:
	cmp	w2, #0
	bne	L331
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L325
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L326
L325:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #44
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L326:
	cmp	w1, #0
	bne	L328
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L343
L328:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_unary_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L330
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BDivDot@page
	add	x2, x2, _compiler_parser_ast_BDivDot@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	L343
L330:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L343
L331:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_unary_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L333
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BMulDot@page
	add	x2, x2, _compiler_parser_ast_BMulDot@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	L343
L333:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L343
L334:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_unary_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L336
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BMod@page
	add	x2, x2, _compiler_parser_ast_BMod@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	L343
L336:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L343
L337:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_unary_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L339
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BDiv@page
	add	x2, x2, _compiler_parser_ast_BDiv@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	L343
L339:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L343
L340:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_parser_parse_exprs_parse_unary_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L342
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #40
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #10
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _compiler_parser_ast_BMul@page
	add	x2, x2, _compiler_parser_ast_BMul@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_mul_loop
	str	x0, [x19]
	b	L343
L342:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L343:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_mul_loop */

.text
.balign 4
_compiler_parser_parse_exprs_parse_unary_expr:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L346
	mov	x2, #0
	b	L347
L346:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #39
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L347:
	cmp	w2, #0
	bne	L357
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L351
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L352
L351:
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
L352:
	cmp	w1, #0
	bne	L354
	bl	_compiler_parser_parse_exprs_parse_call_expr
	b	L360
L354:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_call_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L356
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	mov	x0, #11
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _compiler_parser_ast_UNot@page
	add	x0, x0, _compiler_parser_ast_UNot@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L360
L356:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L360
L357:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_call_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L359
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	mov	x0, #11
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _compiler_parser_ast_UNeg@page
	add	x0, x0, _compiler_parser_ast_UNeg@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L360
L359:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L360:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_unary_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_call_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_compiler_parser_parse_exprs_parse_primary
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L363
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_call_loop
	b	L364
L363:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L364:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_call_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_call_loop:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L367
	mov	x2, #0
	b	L368
L367:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #30
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L368:
	cmp	w2, #0
	bne	L390
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L372
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L377
L372:
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
	beq	L375
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L376
L375:
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
L376:
	cmp	x2, #26
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L377:
	cmp	w2, #0
	bne	L389
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L381
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L386
L381:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L384
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L385
L384:
	mov	x5, #8
	add	x3, x3, x5
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #5
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
L385:
	cmp	x1, #26
	cset	x1, eq
	mov	x4, #1
	and	x1, x1, x4
	and	x1, x1, x3
	str	x1, [x2]
L386:
	cmp	w1, #0
	bne	L388
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L393
L388:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x2, [x1]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x21, x0
	mov	x0, #32
	bl	_malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x19, [x2]
	bl	_compiler_parser_parse_exprs_parse_call_loop
	b	L393
L389:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x2, [x1]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x21, x0
	mov	x0, #32
	bl	_malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #5
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x19, [x2]
	bl	_compiler_parser_parse_exprs_parse_call_loop
	b	L393
L390:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_exprs_parse_call_args
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L392
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x23, x0
	mov	x0, #32
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #9
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #24
	add	x2, x1, x2
	str	x20, [x2]
	bl	_compiler_parser_parse_exprs_parse_call_loop
	str	x0, [x19]
	b	L393
L392:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L393:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_call_loop */

.text
.balign 4
_compiler_parser_parse_exprs_parse_call_args:
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
	bl	_compiler_parser_parse_exprs_strip_arg_label
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L396
	mov	x2, #0
	b	L397
L396:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L397:
	cmp	w2, #0
	bne	L423
	mov	x21, x0
	mov	x0, x1
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L422
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
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
	beq	L402
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L403
L402:
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
L403:
	cmp	w2, #0
	bne	L419
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L407
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L408
L407:
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
L408:
	cmp	w2, #0
	bne	L417
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L412
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L414
L412:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L414:
	cmp	w1, #0
	bne	L416
	adrp	x0, _str2383@page
	add	x0, x0, _str2383@pageoff
	bl	_utilities_location_zero
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str2382@page
	add	x0, x0, _str2382@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L421
L416:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x23, x0
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	mov	x0, #6
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, _str2375@page
	add	x0, x0, _str2375@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L421
L417:
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	bl	_donna_list_reverse
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L421
L419:
	mov	x22, x23
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
	bl	_compiler_parser_parse_exprs_parse_call_args
	str	x0, [x20]
L421:
	str	x0, [x19]
	b	L424
L422:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L424
L423:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L424:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_call_args */

.text
.balign 4
_compiler_parser_parse_exprs_strip_arg_label:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L427
	mov	x1, #0
	b	L432
L427:
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
	beq	L430
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L431
L430:
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
L431:
	cmp	x1, #4
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	and	x1, x1, x2
L432:
	cmp	w1, #0
	beq	L434
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
L434:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_exprs_strip_arg_label */

.text
.balign 4
_compiler_parser_parse_exprs_parse_primary:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #1
	beq	L437
	mov	x2, #0
	b	L438
L437:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L438:
	cmp	w2, #0
	bne	L567
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L442
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L443
L442:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #1
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L443:
	cmp	w2, #0
	bne	L566
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L447
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L448
L447:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #2
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L448:
	cmp	w2, #0
	bne	L565
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L452
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L457
L452:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x4, [x2]
	cmp	x4, #7
	cset	x5, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	w5, #0
	bne	L455
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L456
L455:
	mov	x6, #8
	add	x2, x2, x6
	ldr	x2, [x2]
	cmp	x2, #1
	cset	x2, eq
	and	x2, x2, x5
	str	x2, [x4]
L456:
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L457:
	cmp	w2, #0
	bne	L564
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L461
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L466
L461:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x4, [x2]
	cmp	x4, #7
	cset	x5, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	w5, #0
	bne	L464
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L465
L464:
	mov	x6, #8
	add	x2, x2, x6
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	and	x2, x2, x5
	str	x2, [x4]
L465:
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L466:
	cmp	w2, #0
	bne	L563
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L470
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L471
L470:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #4
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L471:
	cmp	w2, #0
	bne	L562
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L475
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L476
L475:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #5
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L476:
	cmp	w2, #0
	bne	L561
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L480
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L481
L480:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #12
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L481:
	cmp	w2, #0
	bne	L558
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L485
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L486
L485:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #19
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L486:
	cmp	w2, #0
	bne	L555
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L490
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L491
L490:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #21
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L491:
	cmp	w2, #0
	bne	L554
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L495
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L500
L495:
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
	beq	L498
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L499
L498:
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
L499:
	cmp	x2, #29
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L500:
	cmp	w2, #0
	bne	L553
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L504
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L505
L504:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #32
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L505:
	cmp	w2, #0
	bne	L552
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L509
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L510
L509:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #30
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L510:
	cmp	w2, #0
	bne	L535
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L514
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L515
L514:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #10
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L515:
	cmp	w2, #0
	bne	L534
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	L519
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L524
L519:
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
	beq	L522
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L523
L522:
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
L523:
	cmp	x2, #14
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L524:
	cmp	w2, #0
	bne	L533
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	L528
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L530
L528:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
L530:
	cmp	w0, #0
	bne	L532
	adrp	x0, _str3152@page
	add	x0, x0, _str3152@pageoff
	bl	_utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str3151@page
	add	x0, x0, _str3151@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L532:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x21, x0
	mov	x0, #32
	bl	_malloc
	mov	x19, x0
	mov	x0, #6
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x19, x0
	adrp	x0, _str3144@page
	add	x0, x0, _str3144@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L533:
	mov	x0, x1
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
	bl	_compiler_parser_parse_exprs_parse_lambda
	b	L568
L534:
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_parser_parse_exprs_parse_case_expr
	b	L568
L535:
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L551
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
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
	beq	L539
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L540
L539:
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
L540:
	cmp	w2, #0
	bne	L549
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L544
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L546
L544:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L546:
	cmp	w1, #0
	bne	L548
	adrp	x0, _str3031@page
	add	x0, x0, _str3031@pageoff
	bl	_utilities_location_zero
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3030@page
	add	x0, x0, _str3030@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L550
L548:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x23, x0
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	mov	x0, #6
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, _str3023@page
	add	x0, x0, _str3023@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L550
L549:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L550:
	str	x0, [x19]
	b	L568
L551:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L568
L552:
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_parser_parse_exprs_parse_list_expr
	b	L568
L553:
	mov	x0, x1
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
	bl	_compiler_parser_parse_exprs_parse_tuple_expr
	b	L568
L554:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #18
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L555:
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L557
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #17
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L568
L557:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L568
L558:
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L560
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #16
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L568
L560:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L568
L561:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #4
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L562:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #4
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L563:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #3
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L564:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #3
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L565:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #2
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L566:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L568
L567:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L568:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_primary */

.text
.balign 4
_compiler_parser_parse_exprs_parse_tuple_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L571
	mov	x2, #0
	b	L572
L571:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L572:
	cmp	w2, #0
	bne	L574
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_parser_parse_exprs_parse_tuple_args
	b	L575
L574:
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #6
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L575:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_tuple_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_tuple_args:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x2
	mov	x20, x1
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, x20
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L599
	mov	x2, #8
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	_malloc
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
	beq	L580
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L581
L580:
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
L581:
	cmp	w3, #0
	bne	L597
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x0, #1
	beq	L585
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L586
L585:
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
L586:
	cmp	w3, #0
	bne	L595
	mov	x20, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L590
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L592
L590:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L592:
	cmp	w0, #0
	bne	L594
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	mov	x21, x1
	add	x1, x20, x0
	adrp	x0, _str3311@page
	add	x0, x0, _str3311@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L600
L594:
	mov	x0, #8
	add	x0, x22, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #6
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, _str3304@page
	add	x0, x0, _str3304@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L600
L595:
	mov	x21, x1
	mov	x0, #16
	add	x0, x22, x0
	ldr	x20, [x0]
	mov	x0, x2
	bl	_donna_list_reverse
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #6
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L600
L597:
	mov	x21, x2
	mov	x20, x1
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x2, x21
	mov	x1, x20
	bl	_compiler_parser_parse_exprs_parse_tuple_args
	str	x0, [x19]
	b	L600
L599:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L600:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_parser_parse_exprs_parse_tuple_args */

.text
.balign 4
_compiler_parser_parse_exprs_parse_list_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L603
	mov	x2, #0
	b	L604
L603:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #33
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L604:
	cmp	w2, #0
	bne	L606
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_parser_parse_exprs_parse_list_args
	b	L607
L606:
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L607:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_exprs_parse_list_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_list_args:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x2
	mov	x19, x1
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x2, x20
	mov	x1, x19
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L648
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
	beq	L612
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L617
L612:
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
	beq	L615
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	L616
L615:
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
L616:
	cmp	x3, #25
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
L617:
	cmp	w3, #0
	bne	L646
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L621
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L622
L621:
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
L622:
	cmp	w3, #0
	bne	L644
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L626
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L627
L626:
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
L627:
	cmp	w3, #0
	bne	L643
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L631
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L632
L631:
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
L632:
	cmp	w3, #0
	bne	L642
	mov	x0, x2
	mov	x20, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L637
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L639
L637:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L639:
	cmp	w0, #0
	bne	L641
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _str3553@page
	add	x0, x0, _str3553@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L649
L641:
	mov	x0, #8
	add	x0, x22, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #6
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, _str3546@page
	add	x0, x0, _str3546@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L649
L642:
	mov	x21, x1
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	bl	_donna_list_reverse
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_parser_parse_exprs_parse_list_spread
	str	x0, [x19]
	b	L649
L643:
	mov	x21, x1
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	bl	_donna_list_reverse
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L649
L644:
	mov	x21, x1
	mov	x20, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x1, x21
	mov	x2, x20
	bl	_compiler_parser_parse_exprs_parse_list_args
	str	x0, [x19]
	b	L649
L646:
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
	bl	_compiler_parser_parse_exprs_parse_list_spread
	str	x0, [x19]
	b	L649
L648:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L649:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_parser_parse_exprs_parse_list_args */

.text
.balign 4
_compiler_parser_parse_exprs_parse_list_spread:
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
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x2, x20
	mov	x1, x19
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L665
	mov	x3, #8
	add	x3, x0, x3
	ldr	x22, [x3]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	L654
	mov	x5, #0
	str	x5, [x4]
	mov	x23, x2
	mov	x2, #0
	b	L655
L654:
	mov	x5, #8
	add	x5, x0, x5
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x5, [x5]
	cmp	x5, #33
	mov	x23, x2
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L655:
	cmp	w2, #0
	bne	L664
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L659
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x1
	mov	x1, #0
	b	L661
L659:
	mov	x20, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L661:
	cmp	w1, #0
	bne	L663
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _str3642@page
	add	x0, x0, _str3642@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L666
L663:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #6
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, _str3635@page
	add	x0, x0, _str3635@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L666
L664:
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x2, x23
	mov	x1, x21
	mov	x21, x0
	mov	x0, #8
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x2, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L666
L665:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L666:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_list_spread */

.text
.balign 4
_compiler_parser_parse_exprs_parse_case_expr:
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
	mov	x19, x1
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L695
	mov	x2, #8
	add	x2, x0, x2
	ldr	x25, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x3, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L671
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L672
L671:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #24
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L672:
	cmp	w2, #0
	bne	L681
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L676
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x1
	mov	x1, #0
	b	L678
L676:
	mov	x20, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L678:
	cmp	w1, #0
	bne	L680
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _str3797@page
	add	x0, x0, _str3797@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L696
L680:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #9
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L696
L681:
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L684
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L685
L684:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #62
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L685:
	cmp	w2, #0
	bne	L690
	mov	x21, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_exprs_parse_inline_case_arms
	mov	x1, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L688
	mov	x2, #8
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x1, x23
	mov	x23, x0
	mov	x0, #12
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L689
L688:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L689:
	str	x0, [x20]
	b	L694
L690:
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x21, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_exprs_parse_case_arms
	mov	x1, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L692
	mov	x2, #8
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x1, x23
	mov	x23, x0
	mov	x0, #12
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L693
L692:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L693:
	str	x0, [x20]
L694:
	str	x0, [x19]
	b	L696
L695:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L696:
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
/* end function compiler_parser_parse_exprs_parse_case_expr */

.text
.balign 4
_compiler_parser_parse_exprs_parse_case_arms:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L699
	mov	x3, #0
	b	L700
L699:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #63
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
L700:
	cmp	w3, #0
	bne	L706
	cmp	x2, #0
	beq	L705
	mov	x20, x0
	mov	x0, x1
	bl	_compiler_parser_parse_exprs_parse_case_arm
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L704
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_compiler_parser_parse_exprs_parse_case_arms
	str	x0, [x19]
	b	L707
L704:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L707
L705:
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	b	L707
L706:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L707:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_parser_parse_exprs_parse_case_arms */

.text
.balign 4
_compiler_parser_parse_exprs_parse_inline_case_arms:
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
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	ldr	x1, [x19]
	cmp	x1, #0
	beq	L732
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L712
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L713
L712:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #63
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L713:
	cmp	w1, #0
	bne	L731
	mov	x20, x0
	mov	x0, x19
	bl	_compiler_parser_parse_exprs_is_pattern_start
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	mov	x22, x19
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L719
	mov	x21, x0
	mov	x0, x22
	bl	_compiler_parser_parse_exprs_parse_case_arm
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L717
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
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
	bl	_compiler_parser_parse_exprs_parse_inline_case_arms
	str	x0, [x20]
	b	L718
L717:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L718:
	str	x0, [x19]
	b	L733
L719:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L721
	bl	_donna_list_reverse
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x20]
	b	L730
L721:
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	ldr	x0, [x22]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L724
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L726
L724:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L726:
	cmp	w0, #0
	bne	L728
	adrp	x0, _str3955@page
	add	x0, x0, _str3955@pageoff
	bl	_utilities_location_zero
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #7
	str	x0, [x22]
	mov	x0, #8
	add	x1, x22, x0
	adrp	x0, _str3954@page
	add	x0, x0, _str3954@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L729
L728:
	mov	x0, #8
	add	x0, x22, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x24, x0
	mov	x0, #32
	bl	_malloc
	mov	x22, x0
	mov	x0, #6
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	add	x1, x22, x0
	adrp	x0, _str3947@page
	add	x0, x0, _str3947@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L729:
	str	x0, [x20]
L730:
	str	x0, [x19]
	b	L733
L731:
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L733
L732:
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
L733:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_inline_case_arms */

.text
.balign 4
_compiler_parser_parse_exprs_is_pattern_start:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L736
	mov	x2, #0
	b	L737
L736:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #6
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L737:
	cmp	w2, #0
	bne	L797
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L741
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L742
L741:
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
L742:
	cmp	w2, #0
	bne	L796
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L746
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L747
L746:
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
L747:
	cmp	w2, #0
	bne	L795
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L751
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L752
L751:
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
L752:
	cmp	w2, #0
	bne	L794
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L756
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L757
L756:
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
L757:
	cmp	w2, #0
	bne	L793
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L761
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L762
L761:
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
L762:
	cmp	w2, #0
	bne	L792
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L766
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L767
L766:
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
L767:
	cmp	w2, #0
	bne	L791
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L771
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L776
L771:
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
	beq	L774
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L775
L774:
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
L775:
	cmp	x2, #39
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L776:
	cmp	w2, #0
	bne	L790
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L780
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L781
L780:
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
L781:
	cmp	w2, #0
	bne	L789
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L785
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L786
L785:
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
L786:
	cmp	w1, #0
	bne	L788
	mov	x0, #0
	b	L798
L788:
	mov	x0, #1
	b	L798
L789:
	mov	x0, #1
	b	L798
L790:
	mov	x0, #1
	b	L798
L791:
	mov	x0, #1
	b	L798
L792:
	mov	x0, #1
	b	L798
L793:
	mov	x0, #1
	b	L798
L794:
	mov	x0, #1
	b	L798
L795:
	mov	x0, #1
	b	L798
L796:
	mov	x0, #1
	b	L798
L797:
	mov	x0, #1
L798:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_exprs_is_pattern_start */

.text
.balign 4
_compiler_parser_parse_exprs_parse_case_arm:
	hint	#34
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [x29, 104]
	str	x20, [x29, 96]
	str	x21, [x29, 88]
	str	x22, [x29, 80]
	str	x23, [x29, 72]
	str	x24, [x29, 64]
	str	x25, [x29, 56]
	str	x26, [x29, 48]
	str	x27, [x29, 40]
	str	x28, [x29, 32]
	bl	_compiler_parser_parse_patterns_parse_pattern
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L843
	mov	x1, #8
	add	x1, x0, x1
	ldr	x28, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, x28
	bl	_compiler_parser_parse_exprs_pat_span
	mov	x25, x0
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x20]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L803
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L804
L803:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #15
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L804:
	cmp	w1, #0
	bne	L822
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	x0, #1
	beq	L808
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L809
L808:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #23
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L809:
	cmp	w1, #0
	bne	L818
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L813
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L815
L813:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L815:
	cmp	w0, #0
	bne	L817
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str4530@page
	add	x0, x0, _str4530@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x25, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L844
L817:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #10
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L844
L818:
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_arm_body
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L820
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x22, x0
	mov	x0, #0
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x28, [x0]
	mov	x0, #16
	add	x1, x22, x0
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x1]
	mov	x0, #24
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x22, x0
	str	x25, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L821
L820:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L821:
	str	x0, [x19]
	b	L844
L822:
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L841
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L826
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L827
L826:
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
L827:
	cmp	w2, #0
	bne	L836
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L831
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L833
L831:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L833:
	cmp	w1, #0
	bne	L835
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #7
	str	x0, [x22]
	mov	x0, #8
	add	x1, x22, x0
	adrp	x0, _str4445@page
	add	x0, x0, _str4445@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x25, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L840
L835:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	mov	x0, #10
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L840
L836:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_arm_body
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L838
	mov	x1, #8
	add	x1, x0, x1
	ldr	x26, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x24, [x0]
	str	x24, [x29, 16]
	mov	x0, #16
	bl	_malloc
	mov	x27, x0
	mov	x0, #1
	str	x0, [x27]
	mov	x0, #8
	add	x0, x27, x0
	str	x23, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x24, x0
	ldr	x23, [x29, 16]
	mov	x0, #0
	str	x0, [x24]
	mov	x0, #8
	add	x0, x24, x0
	str	x28, [x0]
	mov	x0, #16
	add	x0, x24, x0
	str	x27, [x0]
	mov	x0, #24
	add	x0, x24, x0
	str	x26, [x0]
	mov	x0, #32
	add	x0, x24, x0
	str	x25, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
	b	L839
L838:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
L839:
	str	x0, [x21]
L840:
	str	x0, [x20]
	b	L842
L841:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L842:
	str	x0, [x19]
	b	L844
L843:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L844:
	ldr	x19, [x29, 104]
	ldr	x20, [x29, 96]
	ldr	x21, [x29, 88]
	ldr	x22, [x29, 80]
	ldr	x23, [x29, 72]
	ldr	x24, [x29, 64]
	ldr	x25, [x29, 56]
	ldr	x26, [x29, 48]
	ldr	x27, [x29, 40]
	ldr	x28, [x29, 32]
	mov sp, x29
	ldp	x29, x30, [sp], 112
	ret
/* end function compiler_parser_parse_exprs_parse_case_arm */

.text
.balign 4
_compiler_parser_parse_exprs_parse_arm_body:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L847
	mov	x1, #0
	b	L852
L847:
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
	beq	L850
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L851
L850:
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
L851:
	cmp	x1, #61
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	and	x1, x1, x2
L852:
	cmp	w1, #0
	bne	L854
	bl	_compiler_parser_parse_exprs_parse_expr
	b	L855
L854:
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
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_parser_parse_exprs_parse_block_stmts
L855:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_exprs_parse_arm_body */

.text
.balign 4
_compiler_parser_parse_exprs_parse_lambda:
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
	bl	_compiler_parser_parse_params_parse_params
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L874
	mov	x2, #8
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x3, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x4, sp
	cmp	x3, #1
	beq	L860
	mov	x2, #0
	str	x2, [x4]
	mov	x2, #0
	b	L861
L860:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #23
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	str	x2, [x4]
L861:
	cmp	w2, #0
	bne	L870
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L865
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x1
	mov	x1, #0
	b	L867
L865:
	mov	x20, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L867:
	cmp	w1, #0
	bne	L869
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _str4688@page
	add	x0, x0, _str4688@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L875
L869:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #10
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L875
L870:
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L872
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x22, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x1, x22
	mov	x22, x0
	mov	x0, #15
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	add	x0, x22, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L873
L872:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L873:
	str	x0, [x19]
	b	L875
L874:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L875:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_exprs_parse_lambda */

.text
.balign 4
.globl _compiler_parser_parse_exprs_expr_span
_compiler_parser_parse_exprs_expr_span:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L912
	cmp	x1, #1
	beq	L911
	cmp	x1, #2
	beq	L910
	cmp	x1, #3
	beq	L909
	cmp	x1, #4
	beq	L908
	cmp	x1, #5
	beq	L907
	cmp	x1, #6
	beq	L906
	cmp	x1, #7
	beq	L905
	cmp	x1, #8
	beq	L904
	cmp	x1, #9
	beq	L903
	cmp	x1, #10
	beq	L902
	cmp	x1, #11
	beq	L901
	cmp	x1, #12
	beq	L900
	cmp	x1, #13
	beq	L899
	cmp	x1, #14
	beq	L898
	cmp	x1, #15
	beq	L897
	cmp	x1, #16
	beq	L896
	cmp	x1, #17
	beq	L895
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L895:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L896:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L897:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L898:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L899:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L900:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L901:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L902:
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L903:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L904:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L905:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L906:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L907:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L908:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L909:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L910:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L911:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L913
L912:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
L913:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_exprs_expr_span */

.text
.balign 4
_compiler_parser_parse_exprs_pat_span:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L932
	cmp	x1, #1
	beq	L931
	cmp	x1, #2
	beq	L930
	cmp	x1, #3
	beq	L929
	cmp	x1, #4
	beq	L928
	cmp	x1, #5
	beq	L927
	cmp	x1, #6
	beq	L926
	cmp	x1, #7
	beq	L925
	cmp	x1, #8
	beq	L924
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L924:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L925:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L926:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L927:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L928:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L929:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L930:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L931:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L933
L932:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
L933:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_exprs_pat_span */

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

