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
_str35:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str184:
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
_str700:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str707:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str751:
	.ascii "pattern"
	.byte 0
/* end data */

.data
.balign 8
_str900:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str907:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str908:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str1204:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
_str1211:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1248:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str1278:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str1327:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str1360:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1367:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1403:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str1466:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1473:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1570:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1577:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str1607:
	.ascii "name or _"
	.byte 0
/* end data */

.data
.balign 8
_str1614:
	.ascii "spread variable"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_parser_parse_patterns_parse_pattern
_compiler_parser_parse_patterns_parse_pattern:
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
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #0
	beq	L136
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
	adrp	x1, _str35@page
	add	x1, x1, _str35@pageoff
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
	bne	L135
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
	bne	L134
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
	bne	L133
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
	bne	L132
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
	bne	L131
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
	bne	L130
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
	bne	L129
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
	bne	L128
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
	bne	L118
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
	adrp	x0, _str751@page
	add	x0, x0, _str751@pageoff
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
	b	L137
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
	b	L137
L79:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L82
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L83
L82:
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
L83:
	cmp	w2, #0
	bne	L92
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L87
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L89
L87:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L89:
	cmp	w1, #0
	bne	L91
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str707@page
	add	x0, x0, _str707@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L137
L91:
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
	adrp	x0, _str700@page
	add	x0, x0, _str700@pageoff
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
	b	L137
L92:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_patterns_parse_paren_patterns
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L94
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #7
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
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
	b	L95
L94:
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
L95:
	str	x0, [x19]
	b	L137
L96:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x20, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x24, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x20]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L99
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L104
L99:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x2, x20, x2
	ldr	x2, [x2]
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x4, [x2]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x4, #1
	beq	L102
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L103
L102:
	mov	x4, #8
	add	x2, x2, x4
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #5
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L103:
	cmp	x0, #26
	cset	x0, eq
	mov	x3, #1
	and	x0, x0, x3
	and	x0, x0, x2
	str	x0, [x1]
L104:
	cmp	w0, #0
	bne	L106
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #2
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x24, [x0]
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
	b	L137
L106:
	mov	x0, #16
	add	x0, x20, x0
	ldr	x1, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x26, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x21]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L109
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L110
L109:
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #30
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x1]
L110:
	cmp	w0, #0
	bne	L112
	mov	x0, #16
	bl	_malloc
	mov	x23, x0
	mov	x0, #1
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x22, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x22, x0
	mov	x0, #9
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x26, [x0]
	mov	x0, #24
	add	x1, x22, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #32
	add	x0, x22, x0
	str	x24, [x0]
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
	b	L117
L112:
	mov	x23, x22
	mov	x0, #16
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_patterns_parse_paren_patterns
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L115
	mov	x1, #8
	add	x1, x0, x1
	ldr	x25, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x22, [x0]
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
	mov	x23, x0
	mov	x0, #9
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x26, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #32
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
	b	L116
L115:
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
L116:
	str	x0, [x20]
L117:
	str	x0, [x19]
	b	L137
L118:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x20, [x1]
	ldr	x1, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x25, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x20]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L121
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L122
L121:
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #30
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x1]
L122:
	cmp	w0, #0
	bne	L124
	mov	x0, #40
	bl	_malloc
	mov	x21, x0
	mov	x0, #9
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x25, [x0]
	mov	x0, #24
	add	x1, x21, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #32
	add	x0, x21, x0
	str	x23, [x0]
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
	b	L137
L124:
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_patterns_parse_paren_patterns
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L126
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x22, x0
	mov	x0, #9
	str	x0, [x22]
	mov	x0, #8
	add	x1, x22, x0
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x25, [x0]
	mov	x0, #24
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #32
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
	b	L127
L126:
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
L127:
	str	x0, [x19]
	b	L137
L128:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #6
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
	b	L137
L129:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #6
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
	b	L137
L130:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
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
	mov	x0, #5
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
	b	L137
L131:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
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
	b	L137
L132:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x21, [x0]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, _str184@page
	add	x0, x0, _str184@pageoff
	bl	___rt_str_concat
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #3
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
	b	L137
L133:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
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
	mov	x0, #3
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
	b	L137
L134:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
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
	b	L137
L135:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #0
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
	b	L137
L136:
	adrp	x0, _str8@page
	add	x0, x0, _str8@pageoff
	bl	_utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str7@page
	add	x0, x0, _str7@pageoff
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
L137:
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
	beq	L140
	mov	x2, #0
	b	L141
L140:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L141:
	cmp	w2, #0
	bne	L167
	mov	x21, x0
	mov	x0, x1
	bl	_compiler_parser_parse_patterns_parse_pattern
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L166
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
	beq	L146
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L147
L146:
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
L147:
	cmp	w2, #0
	bne	L163
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	L151
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L152
L151:
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
L152:
	cmp	w2, #0
	bne	L161
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L156
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L158
L156:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L158:
	cmp	w1, #0
	bne	L160
	adrp	x0, _str908@page
	add	x0, x0, _str908@pageoff
	bl	_utilities_location_zero
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str907@page
	add	x0, x0, _str907@pageoff
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
	b	L165
L160:
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
	adrp	x0, _str900@page
	add	x0, x0, _str900@pageoff
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
	b	L165
L161:
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
	b	L165
L163:
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
	bl	_compiler_parser_parse_patterns_parse_paren_patterns
	str	x0, [x20]
L165:
	str	x0, [x19]
	b	L168
L166:
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
	b	L168
L167:
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
L168:
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
	beq	L171
	mov	x1, #0
	b	L176
L171:
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
	beq	L174
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L175
L174:
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
L175:
	cmp	x1, #4
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	and	x1, x1, x2
L176:
	cmp	w1, #0
	beq	L178
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
L178:
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
	str	x20, [x29, 16]
	mov	x19, x1
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L181
	mov	x2, #0
	b	L182
L181:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #33
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L182:
	cmp	w2, #0
	bne	L184
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_parser_parse_patterns_parse_list_elems
	b	L185
L184:
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #8
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x2, x20, x0
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x2]
	mov	x0, #24
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
L185:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
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
	beq	L226
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
	beq	L190
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L195
L190:
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
	beq	L193
	mov	x5, #0
	str	x5, [x6]
	mov	x5, #0
	b	L194
L193:
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
L194:
	cmp	x3, #25
	cset	x3, eq
	mov	x6, #1
	and	x3, x3, x6
	and	x3, x3, x5
	str	x3, [x4]
L195:
	cmp	w3, #0
	bne	L224
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L199
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L200
L199:
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
L200:
	cmp	w3, #0
	bne	L222
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L204
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L205
L204:
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
L205:
	cmp	w3, #0
	bne	L221
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	L209
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L210
L209:
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
L210:
	cmp	w3, #0
	bne	L220
	mov	x0, x2
	mov	x20, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L215
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L217
L215:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L217:
	cmp	w0, #0
	bne	L219
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _str1211@page
	add	x0, x0, _str1211@pageoff
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
	b	L227
L219:
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
	adrp	x0, _str1204@page
	add	x0, x0, _str1204@pageoff
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
	b	L227
L220:
	mov	x21, x1
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	bl	_donna_list_reverse
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_parser_parse_patterns_parse_list_spread
	str	x0, [x19]
	b	L227
L221:
	mov	x21, x1
	mov	x1, #16
	add	x1, x22, x1
	ldr	x20, [x1]
	bl	_donna_list_reverse
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #8
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x2, x21, x0
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x2]
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
	b	L227
L222:
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
	b	L227
L224:
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
	b	L227
L226:
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
L227:
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
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L230
	mov	x4, #0
	b	L231
L230:
	mov	x4, #8
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #33
	cset	x4, eq
	mov	x5, #1
	and	x4, x4, x5
L231:
	cmp	w4, #0
	bne	L304
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	L235
	mov	x3, #0
	str	x3, [x19]
	mov	x3, #0
	b	L241
L235:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x4, [x3]
	cmp	x4, #6
	cset	x21, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x20, sp
	cmp	w21, #0
	bne	L238
	mov	x22, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, x22
	mov	x3, #0
	b	L240
L238:
	mov	x22, x0
	mov	x0, x3
	mov	x24, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x23, x1
	adrp	x1, _str1278@page
	add	x1, x1, _str1278@pageoff
	bl	_strcmp
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x22
	cmp	x3, #0
	cset	x3, eq
	and	x3, x3, x21
	str	x3, [x20]
L240:
	mov	x4, #1
	and	x3, x3, x4
	str	x3, [x19]
L241:
	cmp	w3, #0
	bne	L290
	ldr	x3, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x5, sp
	cmp	x3, #1
	beq	L245
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L246
L245:
	mov	x4, #8
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #6
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
L246:
	cmp	w4, #0
	bne	L274
	mov	x4, #16
	sub	sp, sp, x4
	mov	x5, sp
	cmp	x3, #1
	beq	L250
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	L251
L250:
	mov	x4, #8
	add	x4, x0, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #4
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
L251:
	cmp	w4, #0
	bne	L260
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L255
	mov	x3, #0
	str	x3, [x2]
	mov	x19, x1
	mov	x1, #0
	b	L257
L255:
	mov	x19, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L257:
	cmp	w1, #0
	bne	L259
	mov	x0, #24
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x2, x19, x0
	adrp	x0, _str1614@page
	add	x0, x0, _str1614@pageoff
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
	b	L306
L259:
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
	adrp	x0, _str1607@page
	add	x0, x0, _str1607@pageoff
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
	b	L306
L260:
	mov	x3, #8
	add	x3, x0, x3
	ldr	x3, [x3]
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	ldr	x3, [x3]
	mov	x4, #8
	add	x3, x3, x4
	ldr	x24, [x3]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	L263
	mov	x5, #0
	str	x5, [x4]
	mov	x23, x2
	mov	x2, #0
	b	L264
L263:
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
L264:
	cmp	w2, #0
	bne	L273
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L268
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x1
	mov	x1, #0
	b	L270
L268:
	mov	x20, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L270:
	cmp	w1, #0
	bne	L272
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _str1577@page
	add	x0, x0, _str1577@pageoff
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
	b	L306
L272:
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
	adrp	x0, _str1570@page
	add	x0, x0, _str1570@pageoff
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
	b	L306
L273:
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
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
	b	L306
L274:
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x3, x19, x3
	ldr	x21, [x3]
	ldr	x0, [x0]
	mov	x20, x2
	mov	x2, #8
	add	x0, x0, x2
	mov	x19, x1
	ldr	x1, [x0]
	adrp	x0, _str1403@page
	add	x0, x0, _str1403@pageoff
	bl	___rt_str_concat
	mov	x2, x20
	mov	x1, x19
	mov	x24, x0
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x21]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x0, #1
	beq	L277
	mov	x4, #0
	str	x4, [x3]
	mov	x23, x2
	mov	x2, #0
	b	L278
L277:
	mov	x4, #8
	add	x4, x21, x4
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #33
	mov	x23, x2
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L278:
	cmp	w2, #0
	bne	L288
	mov	x20, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L282
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L284
L282:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L284:
	cmp	w0, #0
	bne	L286
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	mov	x21, x1
	add	x1, x20, x0
	adrp	x0, _str1473@page
	add	x0, x0, _str1473@pageoff
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
	b	L306
L286:
	mov	x20, x21
	mov	x0, #8
	add	x0, x20, x0
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
	adrp	x0, _str1466@page
	add	x0, x0, _str1466@pageoff
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
	b	L306
L288:
	mov	x20, x21
	mov	x21, x1
	mov	x0, #16
	add	x0, x20, x0
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
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
	b	L306
L290:
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
	beq	L293
	mov	x5, #0
	str	x5, [x4]
	mov	x23, x2
	mov	x2, #0
	b	L294
L293:
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
L294:
	cmp	w2, #0
	bne	L303
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L298
	mov	x3, #0
	str	x3, [x2]
	mov	x20, x1
	mov	x1, #0
	b	L300
L298:
	mov	x20, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L300:
	cmp	w1, #0
	bne	L302
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x2, x20, x0
	adrp	x0, _str1367@page
	add	x0, x0, _str1367@pageoff
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
	b	L306
L302:
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
	adrp	x0, _str1360@page
	add	x0, x0, _str1360@pageoff
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
	b	L306
L303:
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, x21
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	mov	x21, x1
	add	x1, x22, x0
	adrp	x0, _str1327@page
	add	x0, x0, _str1327@pageoff
	str	x0, [x1]
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
	b	L306
L304:
	mov	x22, x2
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	mov	x20, x1
	add	x1, x21, x0
	adrp	x0, _str1248@page
	add	x0, x0, _str1248@pageoff
	str	x0, [x1]
	mov	x0, #32
	bl	_malloc
	mov	x2, x22
	mov	x1, x20
	mov	x20, x0
	mov	x0, #8
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x2, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
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
L306:
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

