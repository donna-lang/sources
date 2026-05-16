.data
.balign 8
_str187:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str302:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
_str336:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
_str365:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str372:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str373:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str711:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str718:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str748:
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
_str755:
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
_str810:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
_str844:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
_str873:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
_str880:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
_str881:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_parser_parse_functions_parse_function
_compiler_parser_parse_functions_parse_function:
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
	bl	_compiler_parser_parse_functions_parse_pub
	ldr	x27, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L2
	mov	x2, #0
	b	L11
L2:
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
	beq	L5
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L10
L5:
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
	beq	L8
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	L9
L8:
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
L9:
	cmp	x3, #4
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
L10:
	cmp	x2, #14
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	and	x2, x2, x3
L11:
	cmp	w2, #0
	bne	L47
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L15
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L20
L15:
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
	beq	L18
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L19
L18:
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
L19:
	cmp	x2, #14
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L20:
	cmp	w2, #0
	bne	L46
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L24
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L30
L24:
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
	beq	L27
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L29
L27:
	mov	x4, #1
	str	x4, [x5]
	mov	x4, #1
L29:
	cmp	x2, #14
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L30:
	cmp	w2, #0
	bne	L45
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L34
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L35
L34:
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
L35:
	cmp	w2, #0
	bne	L44
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L39
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L41
L39:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L41:
	cmp	w1, #0
	bne	L43
	adrp	x0, _str373@page
	add	x0, x0, _str373@pageoff
	bl	_utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str372@page
	add	x0, x0, _str372@pageoff
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
	b	L67
L43:
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
	adrp	x0, _str365@page
	add	x0, x0, _str365@pageoff
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
	b	L67
L44:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str336@page
	add	x0, x0, _str336@pageoff
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
	b	L67
L45:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
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
	adrp	x0, _str302@page
	add	x0, x0, _str302@pageoff
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
	b	L67
L46:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #11
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
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
	b	L67
L47:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x2, [x1]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x28, [x2]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_params_parse_params
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L66
	mov	x1, #8
	add	x1, x0, x1
	ldr	x26, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_functions_parse_optional_return
	ldr	x25, [x0]
	mov	x1, #8
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
	beq	L51
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L52
L51:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #24
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L52:
	cmp	w2, #0
	bne	L61
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L56
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L58
L56:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L58:
	cmp	w1, #0
	bne	L60
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str187@page
	add	x0, x0, _str187@pageoff
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
	b	L65
L60:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	mov	x0, #9
	str	x0, [x21]
	mov	x0, #8
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
	b	L65
L61:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_block
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L63
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	str	x1, [x29, 16]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
	str	x22, [x29, 24]
	mov	x0, #56
	bl	_malloc
	mov	x23, x0
	ldr	x22, [x29, 24]
	ldr	x0, [x29, 16]
	mov	x1, #0
	str	x1, [x23]
	mov	x1, #8
	add	x1, x23, x1
	str	x28, [x1]
	mov	x1, #16
	add	x1, x23, x1
	str	x27, [x1]
	mov	x1, #24
	add	x1, x23, x1
	str	x26, [x1]
	mov	x1, #32
	add	x1, x23, x1
	str	x25, [x1]
	mov	x1, #40
	add	x1, x23, x1
	str	x0, [x1]
	mov	x0, #48
	add	x0, x23, x0
	str	x24, [x0]
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
	b	L64
L63:
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
L64:
	str	x0, [x20]
L65:
	str	x0, [x19]
	b	L67
L66:
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
L67:
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
/* end function compiler_parser_parse_functions_parse_function */

.text
.balign 4
.globl _compiler_parser_parse_functions_parse_external_fn
_compiler_parser_parse_functions_parse_external_fn:
	hint	#34
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [x29, 120]
	str	x20, [x29, 112]
	str	x21, [x29, 104]
	str	x22, [x29, 96]
	str	x23, [x29, 88]
	str	x24, [x29, 80]
	str	x25, [x29, 72]
	str	x26, [x29, 64]
	str	x27, [x29, 56]
	str	x28, [x29, 48]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L70
	mov	x2, #0
	b	L79
L70:
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
	beq	L73
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L78
L73:
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
	beq	L76
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	L77
L76:
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
L77:
	cmp	x3, #13
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
L78:
	cmp	x2, #8
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	and	x2, x2, x3
L79:
	cmp	w2, #0
	bne	L105
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L83
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L89
L83:
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
	beq	L86
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L88
L86:
	mov	x4, #1
	str	x4, [x5]
	mov	x4, #1
L88:
	cmp	x2, #8
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L89:
	cmp	w2, #0
	bne	L104
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L93
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L94
L93:
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
L94:
	cmp	w2, #0
	bne	L103
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L98
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L100
L98:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L100:
	cmp	w1, #0
	bne	L102
	adrp	x0, _str881@page
	add	x0, x0, _str881@pageoff
	bl	_utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str880@page
	add	x0, x0, _str880@pageoff
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
	b	L156
L102:
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
	adrp	x0, _str873@page
	add	x0, x0, _str873@pageoff
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
	b	L156
L103:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str844@page
	add	x0, x0, _str844@pageoff
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
	b	L156
L104:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
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
	adrp	x0, _str810@page
	add	x0, x0, _str810@pageoff
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
	b	L156
L105:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x24, [x1]
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
	beq	L108
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L121
L108:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x6, [x4]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x4, [x6]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x4, #1
	beq	L111
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L120
L111:
	mov	x4, #8
	add	x4, x6, x4
	ldr	x4, [x4]
	mov	x7, #16
	add	x6, x6, x7
	ldr	x8, [x6]
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x6, [x8]
	mov	x7, #16
	sub	sp, sp, x7
	mov	x7, sp
	cmp	x6, #1
	beq	L114
	mov	x6, #0
	str	x6, [x7]
	mov	x6, #0
	b	L119
L114:
	mov	x6, #8
	add	x6, x8, x6
	ldr	x6, [x6]
	mov	x9, #16
	add	x8, x8, x9
	ldr	x8, [x8]
	ldr	x6, [x6]
	ldr	x6, [x6]
	ldr	x10, [x8]
	mov	x9, #16
	sub	sp, sp, x9
	mov	x9, sp
	cmp	x10, #1
	beq	L117
	mov	x8, #0
	str	x8, [x9]
	mov	x8, #0
	b	L118
L117:
	mov	x10, #8
	add	x8, x8, x10
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	cmp	x8, #31
	cset	x8, eq
	mov	x10, #1
	and	x8, x8, x10
	str	x8, [x9]
L118:
	cmp	x6, #2
	cset	x6, eq
	mov	x9, #1
	and	x6, x6, x9
	and	x6, x6, x8
	str	x6, [x7]
L119:
	cmp	x4, #25
	cset	x4, eq
	mov	x7, #1
	and	x4, x4, x7
	and	x4, x4, x6
	str	x4, [x5]
L120:
	cmp	x2, #2
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L121:
	cmp	w2, #0
	bne	L130
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L125
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L127
L125:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L127:
	cmp	w1, #0
	bne	L129
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str755@page
	add	x0, x0, _str755@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L156
L129:
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
	adrp	x0, _str748@page
	add	x0, x0, _str748@pageoff
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
	b	L156
L130:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x26, [x1]
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
	ldr	x25, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	bl	_compiler_parser_parse_functions_parse_pub
	ldr	x27, [x0]
	mov	x1, #8
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
	beq	L133
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L142
L133:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x6, [x4]
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x4, [x6]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x5, sp
	cmp	x4, #1
	beq	L136
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L141
L136:
	mov	x4, #8
	add	x4, x6, x4
	ldr	x4, [x4]
	mov	x7, #16
	add	x6, x6, x7
	ldr	x6, [x6]
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x8, [x6]
	mov	x7, #16
	sub	sp, sp, x7
	mov	x7, sp
	cmp	x8, #1
	beq	L139
	mov	x6, #0
	str	x6, [x7]
	mov	x6, #0
	b	L140
L139:
	mov	x8, #8
	add	x6, x6, x8
	ldr	x6, [x6]
	ldr	x6, [x6]
	ldr	x6, [x6]
	cmp	x6, #30
	cset	x6, eq
	mov	x8, #1
	and	x6, x6, x8
	str	x6, [x7]
L140:
	cmp	x4, #4
	cset	x4, eq
	mov	x7, #1
	and	x4, x4, x7
	and	x4, x4, x6
	str	x4, [x5]
L141:
	cmp	x2, #14
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L142:
	cmp	w2, #0
	bne	L151
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L146
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L148
L146:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L148:
	cmp	w1, #0
	bne	L150
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str718@page
	add	x0, x0, _str718@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L155
L150:
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
	adrp	x0, _str711@page
	add	x0, x0, _str711@pageoff
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
	b	L155
L151:
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
	ldr	x28, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_params_parse_params
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L153
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	str	x1, [x29, 16]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_functions_parse_optional_return
	ldr	x1, [x0]
	str	x1, [x29, 24]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	str	x0, [x29, 32]
	mov	x0, #64
	bl	_malloc
	mov	x23, x0
	ldr	x22, [x29, 32]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	mov	x2, #1
	str	x2, [x23]
	mov	x2, #8
	add	x2, x23, x2
	str	x28, [x2]
	mov	x2, #16
	add	x2, x23, x2
	str	x27, [x2]
	mov	x2, #24
	add	x2, x23, x2
	str	x1, [x2]
	mov	x1, #32
	add	x1, x23, x1
	str	x0, [x1]
	mov	x0, #40
	add	x0, x23, x0
	str	x26, [x0]
	mov	x0, #48
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #56
	add	x0, x23, x0
	str	x24, [x0]
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
	b	L154
L153:
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
L154:
	str	x0, [x20]
L155:
	str	x0, [x19]
L156:
	ldr	x19, [x29, 120]
	ldr	x20, [x29, 112]
	ldr	x21, [x29, 104]
	ldr	x22, [x29, 96]
	ldr	x23, [x29, 88]
	ldr	x24, [x29, 80]
	ldr	x25, [x29, 72]
	ldr	x26, [x29, 64]
	ldr	x27, [x29, 56]
	ldr	x28, [x29, 48]
	mov sp, x29
	ldp	x29, x30, [sp], 128
	ret
/* end function compiler_parser_parse_functions_parse_external_fn */

.text
.balign 4
_compiler_parser_parse_functions_parse_pub:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L159
	mov	x1, #0
	b	L160
L159:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #20
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
L160:
	cmp	w1, #0
	bne	L162
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L163
L162:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L163:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_functions_parse_pub */

.text
.balign 4
_compiler_parser_parse_functions_parse_optional_return:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x0
	ldr	x0, [x20]
	cmp	x0, #1
	beq	L166
	mov	x0, #0
	b	L167
L166:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #23
	cset	x0, eq
	mov	x1, #1
	and	x0, x0, x1
L167:
	cmp	w0, #0
	bne	L169
	mov	x0, #16
	bl	_malloc
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	b	L172
L169:
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	bl	_compiler_parser_parse_types_parse_type
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L171
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L172
L171:
	mov	x0, #16
	bl	_malloc
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L172:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_parser_parse_functions_parse_optional_return */

