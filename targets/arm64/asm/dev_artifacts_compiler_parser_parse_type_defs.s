.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str152:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str245:
	.ascii "type name"
	.byte 0
/* end data */

.data
.balign 8
str274:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str281:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str593:
	.ascii "indented constructor block"
	.byte 0
/* end data */

.data
.balign 8
str600:
	.ascii "constructor"
	.byte 0
/* end data */

.data
.balign 8
str601:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str763:
	.ascii "constructor name"
	.byte 0
/* end data */

.data
.balign 8
str937:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_type_defs_parse_type_def
compiler_parser_parse_type_defs_parse_type_def:
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
	bl	compiler_parser_parse_type_defs_parse_pub
	ldr	x27, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_type_defs_parse_opaque
	ldr	x26, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
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
	cmp	x3, #5
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L6:
	cmp	x2, #22
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	and	x2, x2, x3
.L7:
	cmp	w2, #0
	bne	.L32
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L11
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L16
.L11:
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
	beq	.L14
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L15
.L14:
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
.L15:
	cmp	x2, #22
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L16:
	cmp	w2, #0
	bne	.L31
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L20
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L21
.L20:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #22
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L21:
	cmp	w2, #0
	bne	.L30
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L25
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L27
.L25:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L27:
	cmp	w1, #0
	bne	.L29
	adrp	x0, str282
	add	x0, x0, #:lo12:str282
	bl	utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str281
	add	x0, x0, #:lo12:str281
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
	b	.L49
.L29:
	mov	x1, #8
	add	x0, x0, x1
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
	adrp	x0, str274
	add	x0, x0, #:lo12:str274
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
	b	.L49
.L30:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str245
	add	x0, x0, #:lo12:str245
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
	b	.L49
.L31:
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
	bl	malloc
	mov	x19, x0
	mov	x0, #12
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x21, [x0]
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
	b	.L49
.L32:
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
	ldr	x28, [x1]
	bl	compiler_parser_parse_type_defs_parse_type_params
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
	beq	.L35
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L36
.L35:
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
.L36:
	cmp	w2, #0
	bne	.L45
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L40
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L42
.L40:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L42:
	cmp	w1, #0
	bne	.L44
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #7
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, str152
	add	x0, x0, #:lo12:str152
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x23, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L49
.L44:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	mov	x0, #9
	str	x0, [x20]
	mov	x0, #8
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
	b	.L49
.L45:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_type_defs_parse_constructors
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L47
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	str	x21, [x29, 16]
	mov	x0, #56
	bl	malloc
	mov	x22, x0
	ldr	x21, [x29, 16]
	mov	x0, #0
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x28, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x27, [x0]
	mov	x0, #24
	add	x0, x22, x0
	str	x26, [x0]
	mov	x0, #32
	add	x0, x22, x0
	str	x25, [x0]
	mov	x0, #40
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #48
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
	b	.L48
.L47:
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
.L48:
	str	x0, [x19]
.L49:
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
.type compiler_parser_parse_type_defs_parse_type_def, @function
.size compiler_parser_parse_type_defs_parse_type_def, .-compiler_parser_parse_type_defs_parse_type_def
/* end function compiler_parser_parse_type_defs_parse_type_def */

.text
.balign 16
compiler_parser_parse_type_defs_parse_pub:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L52
	mov	x1, #0
	b	.L53
.L52:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #20
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L53:
	cmp	w1, #0
	bne	.L55
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L56
.L55:
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
.L56:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_type_defs_parse_pub, @function
.size compiler_parser_parse_type_defs_parse_pub, .-compiler_parser_parse_type_defs_parse_pub
/* end function compiler_parser_parse_type_defs_parse_pub */

.text
.balign 16
compiler_parser_parse_type_defs_parse_opaque:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L59
	mov	x1, #0
	b	.L60
.L59:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #18
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L60:
	cmp	w1, #0
	bne	.L62
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L63
.L62:
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
.L63:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_type_defs_parse_opaque, @function
.size compiler_parser_parse_type_defs_parse_opaque, .-compiler_parser_parse_type_defs_parse_opaque
/* end function compiler_parser_parse_type_defs_parse_opaque */

.text
.balign 16
compiler_parser_parse_type_defs_parse_type_params:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L66
	mov	x1, #0
	b	.L67
.L66:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #30
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L67:
	cmp	w1, #0
	bne	.L69
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L70
.L69:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_type_defs_parse_type_param_list
.L70:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_type_defs_parse_type_params, @function
.size compiler_parser_parse_type_defs_parse_type_params, .-compiler_parser_parse_type_defs_parse_type_params
/* end function compiler_parser_parse_type_defs_parse_type_params */

.text
.balign 16
compiler_parser_parse_type_defs_parse_type_param_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x0
	mov	x0, x1
	ldr	x1, [x19]
	cmp	x1, #1
	beq	.L73
	mov	x2, #0
	b	.L74
.L73:
	mov	x2, #8
	add	x2, x19, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #31
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L74:
	cmp	w2, #0
	bne	.L95
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L78
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L79
.L78:
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
.L79:
	cmp	w1, #0
	bne	.L81
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L96
.L81:
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x19, x2
	ldr	x22, [x2]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	mov	x20, x22
	ldr	x22, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L84
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L85
.L84:
	mov	x2, #8
	add	x2, x20, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #25
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L85:
	cmp	w2, #0
	bne	.L93
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L89
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L90
.L89:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #31
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L90:
	cmp	w1, #0
	bne	.L92
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	bl	donna_list_reverse
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L96
.L92:
	mov	x1, #16
	add	x1, x20, x1
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	bl	donna_list_reverse
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L96
.L93:
	mov	x21, x22
	mov	x22, x20
	mov	x20, x0
	mov	x0, #16
	add	x0, x22, x0
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
	bl	compiler_parser_parse_type_defs_parse_type_param_list
	str	x0, [x19]
	b	.L96
.L95:
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L96:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_type_defs_parse_type_param_list, @function
.size compiler_parser_parse_type_defs_parse_type_param_list, .-compiler_parser_parse_type_defs_parse_type_param_list
/* end function compiler_parser_parse_type_defs_parse_type_param_list */

.text
.balign 16
compiler_parser_parse_type_defs_parse_constructors:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x19
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L99
	mov	x2, #0
	b	.L100
.L99:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #62
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
.L100:
	cmp	w2, #0
	bne	.L109
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L104
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L106
.L104:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L106:
	cmp	w1, #0
	bne	.L108
	adrp	x0, str601
	add	x0, x0, #:lo12:str601
	bl	utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str600
	add	x0, x0, #:lo12:str600
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
	b	.L111
.L108:
	mov	x1, #8
	add	x0, x0, x1
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
	adrp	x0, str593
	add	x0, x0, #:lo12:str593
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
	b	.L111
.L109:
	mov	x1, x19
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_parser_parse_type_defs_parse_ctor_block
.L111:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_parser_parse_type_defs_parse_constructors, @function
.size compiler_parser_parse_type_defs_parse_constructors, .-compiler_parser_parse_type_defs_parse_constructors
/* end function compiler_parser_parse_type_defs_parse_constructors */

.text
.balign 16
compiler_parser_parse_type_defs_parse_ctor_block:
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
	str	x26, [x29, 16]
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L114
	mov	x3, #0
	b	.L115
.L114:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #63
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L115:
	cmp	w3, #0
	bne	.L139
	mov	x3, #16
	sub	sp, sp, x3
	mov	x4, sp
	cmp	x2, #1
	beq	.L119
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L120
.L119:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #5
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L120:
	cmp	w3, #0
	bne	.L129
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L124
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L126
.L124:
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #1
.L126:
	cmp	w2, #0
	bne	.L128
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	b	.L140
.L128:
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
	adrp	x0, str763
	add	x0, x0, #:lo12:str763
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
	b	.L140
.L129:
	mov	x2, x1
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	ldr	x2, [x1]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x26, [x2]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L132
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L133
.L132:
	mov	x1, #8
	add	x1, x20, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #30
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L133:
	cmp	w1, #0
	bne	.L135
	mov	x21, x0
	mov	x0, #40
	bl	malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x1, #0
	str	x1, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x26, [x1]
	mov	x1, #16
	add	x2, x21, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #24
	add	x2, x21, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #32
	add	x1, x21, x1
	str	x23, [x1]
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
	str	x0, [x2]
	mov	x0, x20
	bl	compiler_parser_parse_type_defs_parse_ctor_block
	str	x0, [x19]
	b	.L140
.L135:
	mov	x21, x0
	mov	x0, #16
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parse_type_defs_parse_field_list
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L137
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x25, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x24, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x22, x0
	mov	x0, #40
	bl	malloc
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x1, #0
	str	x1, [x22]
	mov	x1, #8
	add	x1, x22, x1
	str	x26, [x1]
	mov	x1, #16
	add	x1, x22, x1
	str	x25, [x1]
	mov	x1, #24
	add	x1, x22, x1
	str	x24, [x1]
	mov	x1, #32
	add	x1, x22, x1
	str	x23, [x1]
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
	bl	compiler_parser_parse_type_defs_parse_ctor_block
	str	x0, [x20]
	b	.L138
.L137:
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
.L138:
	str	x0, [x19]
	b	.L140
.L139:
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
.L140:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
.type compiler_parser_parse_type_defs_parse_ctor_block, @function
.size compiler_parser_parse_type_defs_parse_ctor_block, .-compiler_parser_parse_type_defs_parse_ctor_block
/* end function compiler_parser_parse_type_defs_parse_ctor_block */

.text
.balign 16
compiler_parser_parse_type_defs_parse_field_list:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x2
	mov	x21, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L143
	mov	x3, #0
	b	.L144
.L143:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #31
	cset	x3, eq
	mov	x4, #1
	and	x3, x3, x4
.L144:
	cmp	w3, #0
	bne	.L179
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L148
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L153
.L148:
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
	beq	.L151
	mov	x4, #0
	str	x4, [x5]
	mov	x4, #0
	b	.L152
.L151:
	mov	x6, #8
	add	x4, x4, x6
	ldr	x4, [x4]
	ldr	x4, [x4]
	ldr	x4, [x4]
	cmp	x4, #24
	cset	x4, eq
	mov	x6, #1
	and	x4, x4, x6
	str	x4, [x5]
.L152:
	cmp	x2, #4
	cset	x2, eq
	mov	x5, #1
	and	x2, x2, x5
	and	x2, x2, x4
	str	x2, [x3]
.L153:
	cmp	w2, #0
	bne	.L166
	mov	x19, x0
	mov	x0, x1
	bl	compiler_parser_parse_types_parse_type
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L164
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x22
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, str937
	add	x2, x2, #:lo12:str937
	str	x2, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x0, [x3]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x23]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x0, #1
	beq	.L158
	mov	x0, #0
	str	x0, [x3]
	mov	x0, #0
	b	.L159
.L158:
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #25
	cset	x0, eq
	mov	x4, #1
	and	x0, x0, x4
	str	x0, [x3]
.L159:
	cmp	w0, #0
	bne	.L161
	mov	x22, x2
	mov	x21, x1
	mov	x0, x23
	bl	compiler_parser_parse_type_defs_parse_field_list
	str	x0, [x20]
	b	.L163
.L161:
	mov	x22, x2
	mov	x21, x1
	mov	x0, #16
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x2, x22
	mov	x1, x21
	bl	compiler_parser_parse_type_defs_parse_field_list
	str	x0, [x20]
.L163:
	str	x0, [x19]
	b	.L181
.L164:
	mov	x0, x1
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
	b	.L181
.L166:
	mov	x19, x0
	mov	x0, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_types_parse_type
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L177
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x24, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x24
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x22, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	mov	x20, x0
	mov	x0, #16
	add	x0, x2, x0
	str	x20, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x23]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x0, #1
	beq	.L171
	mov	x0, #0
	str	x0, [x3]
	mov	x0, #0
	b	.L172
.L171:
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #25
	cset	x0, eq
	mov	x4, #1
	and	x0, x0, x4
	str	x0, [x3]
.L172:
	cmp	w0, #0
	bne	.L174
	mov	x22, x2
	mov	x21, x1
	mov	x0, x23
	bl	compiler_parser_parse_type_defs_parse_field_list
	str	x0, [x20]
	b	.L176
.L174:
	mov	x22, x2
	mov	x21, x1
	mov	x0, #16
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	mov	x2, x22
	mov	x1, x21
	bl	compiler_parser_parse_type_defs_parse_field_list
	str	x0, [x20]
.L176:
	str	x0, [x19]
	b	.L181
.L177:
	mov	x0, x1
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
	b	.L181
.L179:
	mov	x20, x0
	mov	x0, x21
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	donna_list_reverse
	mov	x22, x0
	mov	x0, x20
	bl	donna_list_reverse
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
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
.L181:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parse_type_defs_parse_field_list, @function
.size compiler_parser_parse_type_defs_parse_field_list, .-compiler_parser_parse_type_defs_parse_field_list
/* end function compiler_parser_parse_type_defs_parse_field_list */

.section .note.GNU-stack,"",@progbits
