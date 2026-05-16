.data
.balign 8
_str144:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str151:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str152:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str208:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
_str242:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
_str271:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
_str278:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
_str279:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_parser_parse_constants_parse_const
_compiler_parser_parse_constants_parse_const:
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
	bl	_compiler_parser_parse_constants_parse_pub
	ldr	x26, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L2
	mov	x2, #0
	b	L7
L2:
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
	beq	L5
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L6
L5:
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
L6:
	cmp	x2, #11
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	and	x2, x2, x3
L7:
	cmp	w2, #0
	bne	L33
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L11
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L17
L11:
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
	beq	L14
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L16
L14:
	mov	x4, #1
	str	x4, [x5]
	mov	x4, #1
L16:
	cmp	x2, #11
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
L17:
	cmp	w2, #0
	bne	L32
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L21
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L22
L21:
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
L22:
	cmp	w2, #0
	bne	L31
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L26
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L28
L26:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L28:
	cmp	w1, #0
	bne	L30
	adrp	x0, _str279@page
	add	x0, x0, _str279@pageoff
	bl	_utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str278@page
	add	x0, x0, _str278@pageoff
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
	b	L50
L30:
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
	adrp	x0, _str271@page
	add	x0, x0, _str271@pageoff
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
	b	L50
L31:
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
	adrp	x0, _str242@page
	add	x0, x0, _str242@pageoff
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
	b	L50
L32:
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
	adrp	x0, _str208@page
	add	x0, x0, _str208@pageoff
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
	b	L50
L33:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x27, [x1]
	bl	_compiler_parser_parse_constants_parse_optional_annotation
	ldr	x25, [x0]
	mov	x1, #8
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
	beq	L36
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L37
L36:
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
L37:
	cmp	w2, #0
	bne	L46
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L41
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L43
L41:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L43:
	cmp	w1, #0
	bne	L45
	adrp	x0, _str152@page
	add	x0, x0, _str152@pageoff
	bl	_utilities_location_zero
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str151@page
	add	x0, x0, _str151@pageoff
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
	b	L50
L45:
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
	adrp	x0, _str144@page
	add	x0, x0, _str144@pageoff
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
	b	L50
L46:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_exprs_parse_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L48
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x21, x0
	mov	x0, #48
	bl	_malloc
	mov	x22, x0
	mov	x0, #0
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x26, [x0]
	mov	x0, #24
	add	x0, x22, x0
	str	x25, [x0]
	mov	x0, #32
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #40
	add	x0, x22, x0
	str	x23, [x0]
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
	b	L49
L48:
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
L49:
	str	x0, [x19]
L50:
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
/* end function compiler_parser_parse_constants_parse_const */

.text
.balign 4
_compiler_parser_parse_constants_parse_pub:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L53
	mov	x1, #0
	b	L54
L53:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #20
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
L54:
	cmp	w1, #0
	bne	L56
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L57
L56:
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
L57:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_parser_parse_constants_parse_pub */

.text
.balign 4
_compiler_parser_parse_constants_parse_optional_annotation:
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
	beq	L60
	mov	x0, #0
	b	L61
L60:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #24
	cset	x0, eq
	mov	x1, #1
	and	x0, x0, x1
L61:
	cmp	w0, #0
	bne	L63
	mov	x0, #16
	bl	_malloc
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	b	L66
L63:
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	bl	_compiler_parser_parse_types_parse_type
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L65
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
	b	L66
L65:
	mov	x0, #16
	bl	_malloc
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L66:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_parser_parse_constants_parse_optional_annotation */

