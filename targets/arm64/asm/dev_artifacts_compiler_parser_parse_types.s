.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str221:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str352:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str359:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str360:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str514:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str521:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str552:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str559:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str589:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str596:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str597:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str746:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str753:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str754:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_types_parse_type
compiler_parser_parse_types_parse_type:
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
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #1
	beq	.L2
	mov	x2, #0
	b	.L3
.L2:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #5
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L3:
	cmp	w2, #0
	bne	.L100
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	.L7
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L8
.L7:
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
.L8:
	cmp	w2, #0
	bne	.L78
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	.L12
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L13
.L12:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #29
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L13:
	cmp	w2, #0
	bne	.L61
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x0, #1
	beq	.L17
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L18
.L17:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #14
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L18:
	cmp	w2, #0
	bne	.L27
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	.L22
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	.L24
.L22:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
.L24:
	cmp	w0, #0
	bne	.L26
	adrp	x0, str597
	add	x0, x0, #:lo12:str597
	bl	utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str596
	add	x0, x0, #:lo12:str596
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L110
.L26:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	compiler_lexer_token_to_string
	mov	x21, x0
	mov	x0, #32
	bl	malloc
	mov	x19, x0
	mov	x0, #6
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	add	x1, x19, x0
	adrp	x0, str589
	add	x0, x0, #:lo12:str589
	str	x0, [x1]
	mov	x0, #24
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L110
.L27:
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x25, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L30
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L31
.L30:
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
.L31:
	cmp	w2, #0
	bne	.L40
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L35
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L37
.L35:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L37:
	cmp	w1, #0
	bne	.L39
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, str559
	add	x0, x0, #:lo12:str559
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x25, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L110
.L39:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	compiler_lexer_token_to_string
	mov	x22, x0
	mov	x0, #32
	bl	malloc
	mov	x20, x0
	mov	x0, #6
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, str552
	add	x0, x0, #:lo12:str552
	str	x0, [x1]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L110
.L40:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_types_parse_type_args
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L59
	mov	x1, #8
	add	x1, x0, x1
	ldr	x27, [x1]
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
	beq	.L44
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L45
.L44:
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
.L45:
	cmp	w2, #0
	bne	.L54
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L49
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L51
.L49:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L51:
	cmp	w1, #0
	bne	.L53
	mov	x0, #24
	bl	malloc
	mov	x22, x0
	mov	x0, #7
	str	x0, [x22]
	mov	x0, #8
	add	x1, x22, x0
	adrp	x0, str521
	add	x0, x0, #:lo12:str521
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x25, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	.L58
.L53:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	bl	compiler_lexer_token_to_string
	mov	x24, x0
	mov	x0, #32
	bl	malloc
	mov	x22, x0
	mov	x0, #6
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	add	x1, x22, x0
	adrp	x0, str514
	add	x0, x0, #:lo12:str514
	str	x0, [x1]
	mov	x0, #24
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	.L58
.L54:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_types_parse_type
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L56
	mov	x1, #8
	add	x1, x0, x1
	ldr	x26, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, #32
	bl	malloc
	mov	x24, x0
	mov	x0, #2
	str	x0, [x24]
	mov	x0, #8
	add	x0, x24, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x24, x0
	str	x26, [x0]
	mov	x0, #24
	add	x0, x24, x0
	str	x25, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
	b	.L57
.L56:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
.L57:
	str	x0, [x21]
.L58:
	str	x0, [x20]
	b	.L60
.L59:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L60:
	str	x0, [x19]
	b	.L110
.L61:
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
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
	beq	.L64
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L65
.L64:
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
.L65:
	cmp	w2, #0
	bne	.L74
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L69
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L71
.L69:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L71:
	cmp	w1, #0
	bne	.L73
	adrp	x0, str360
	add	x0, x0, #:lo12:str360
	bl	utilities_location_zero
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, str359
	add	x0, x0, #:lo12:str359
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L110
.L73:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	compiler_lexer_token_to_string
	mov	x22, x0
	mov	x0, #32
	bl	malloc
	mov	x20, x0
	mov	x0, #6
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x20, x0
	adrp	x0, str352
	add	x0, x0, #:lo12:str352
	str	x0, [x1]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L110
.L74:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_types_parse_type_args
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L76
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L77
.L76:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L77:
	str	x0, [x19]
	b	.L110
.L78:
	mov	x0, x1
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
	ldr	x24, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L81
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L86
.L81:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x3, x20, x3
	ldr	x3, [x3]
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	.L84
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L85
.L84:
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
.L85:
	cmp	x1, #26
	cset	x1, eq
	mov	x4, #1
	and	x1, x1, x4
	and	x1, x1, x3
	str	x1, [x2]
.L86:
	cmp	w1, #0
	bne	.L88
	mov	x21, x0
	mov	x0, #32
	bl	malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x1, #0
	str	x1, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x0, [x1]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L110
.L88:
	mov	x1, #16
	add	x1, x20, x1
	ldr	x2, [x1]
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x22, [x2]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x22]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L91
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L92
.L91:
	mov	x2, #8
	add	x2, x22, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #30
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L92:
	cmp	w2, #0
	bne	.L94
	mov	x21, x1
	adrp	x1, str232
	add	x1, x1, #:lo12:str232
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	mov	x23, x0
	mov	x0, #32
	bl	malloc
	mov	x21, x0
	mov	x0, #0
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x20]
	b	.L99
.L94:
	mov	x21, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	mov	x22, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_types_parse_type_args
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L96
	mov	x3, #8
	add	x3, x2, x3
	ldr	x25, [x3]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x23, x1
	adrp	x1, str221
	add	x1, x1, #:lo12:str221
	bl	__rt_str_concat
	mov	x1, x23
	bl	__rt_str_concat
	mov	x26, x0
	mov	x0, #32
	bl	malloc
	mov	x23, x0
	mov	x0, #0
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x26, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	.L98
.L96:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
.L98:
	str	x0, [x20]
.L99:
	str	x0, [x19]
	b	.L110
.L100:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
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
	beq	.L103
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L104
.L103:
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
.L104:
	cmp	w0, #0
	bne	.L106
	mov	x0, #32
	bl	malloc
	mov	x21, x0
	mov	x0, #0
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x25, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L110
.L106:
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_types_parse_type_args
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L108
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #32
	bl	malloc
	mov	x22, x0
	mov	x0, #0
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L109
.L108:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L109:
	str	x0, [x19]
.L110:
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
.type compiler_parser_parse_types_parse_type, @function
.size compiler_parser_parse_types_parse_type, .-compiler_parser_parse_types_parse_type
/* end function compiler_parser_parse_types_parse_type */

.text
.balign 16
.globl compiler_parser_parse_types_parse_type_list
compiler_parser_parse_types_parse_type_list:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_types_parse_type_args
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_types_parse_type_list, @function
.size compiler_parser_parse_types_parse_type_list, .-compiler_parser_parse_types_parse_type_list
/* end function compiler_parser_parse_types_parse_type_list */

.text
.balign 16
compiler_parser_parse_types_parse_type_args:
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
	beq	.L115
	mov	x2, #0
	b	.L116
.L115:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L116:
	cmp	w2, #0
	bne	.L142
	mov	x21, x0
	mov	x0, x1
	bl	compiler_parser_parse_types_parse_type
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L141
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
	beq	.L121
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L122
.L121:
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
.L122:
	cmp	w2, #0
	bne	.L138
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L126
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L127
.L126:
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
.L127:
	cmp	w2, #0
	bne	.L136
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L131
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L133
.L131:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L133:
	cmp	w1, #0
	bne	.L135
	adrp	x0, str754
	add	x0, x0, #:lo12:str754
	bl	utilities_location_zero
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #7
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, str753
	add	x0, x0, #:lo12:str753
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L140
.L135:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	compiler_lexer_token_to_string
	mov	x23, x0
	mov	x0, #32
	bl	malloc
	mov	x21, x0
	mov	x0, #6
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, str746
	add	x0, x0, #:lo12:str746
	str	x0, [x1]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L140
.L136:
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	bl	donna_list_reverse
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L140
.L138:
	mov	x22, x23
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
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
	bl	compiler_parser_parse_types_parse_type_args
	str	x0, [x20]
.L140:
	str	x0, [x19]
	b	.L143
.L141:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L143
.L142:
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
.L143:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parse_types_parse_type_args, @function
.size compiler_parser_parse_types_parse_type_args, .-compiler_parser_parse_types_parse_type_args
/* end function compiler_parser_parse_types_parse_type_args */

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
