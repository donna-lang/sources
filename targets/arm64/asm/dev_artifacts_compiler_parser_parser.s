.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str734:
	.ascii "import, const, type, fn, or @external"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parser_ParseOk
compiler_parser_parser_ParseOk:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parser_ParseOk, @function
.size compiler_parser_parser_ParseOk, .-compiler_parser_parser_ParseOk
/* end function compiler_parser_parser_ParseOk */

.text
.balign 16
.globl compiler_parser_parser_ParseErrors
compiler_parser_parser_ParseErrors:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parser_ParseErrors, @function
.size compiler_parser_parser_ParseErrors, .-compiler_parser_parser_ParseErrors
/* end function compiler_parser_parser_ParseErrors */

.text
.balign 16
.globl compiler_parser_parser_parse
compiler_parser_parser_parse:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_result_skip_newlines
	adrp	x6, donna_nil
	add	x6, x6, #:lo12:donna_nil
	adrp	x5, donna_nil
	add	x5, x5, #:lo12:donna_nil
	adrp	x4, donna_nil
	add	x4, x4, #:lo12:donna_nil
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_parser_parser_parse_module_loop
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parser_parse, @function
.size compiler_parser_parser_parse, .-compiler_parser_parser_parse
/* end function compiler_parser_parser_parse */

.text
.balign 16
compiler_parser_parser_parse_module_loop:
	hint	#34
	stp	x29, x30, [sp, -256]!
	mov	x29, sp
	str	x19, [x29, 248]
	str	x20, [x29, 240]
	str	x21, [x29, 232]
	str	x22, [x29, 224]
	str	x23, [x29, 216]
	str	x24, [x29, 208]
	str	x25, [x29, 200]
	str	x26, [x29, 192]
	str	x27, [x29, 184]
	mov	x24, x6
	mov	x23, x5
	mov	x22, x4
	mov	x21, x3
	mov	x20, x2
	mov	x19, x1
	bl	compiler_parser_parse_result_skip_newlines
	mov	x5, x24
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	ldr	x6, [x20]
	cmp	x6, #0
	beq	.L145
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L10
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L11
.L10:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #64
	cset	x7, eq
	mov	x9, #1
	and	x7, x7, x9
	str	x7, [x8]
.L11:
	cmp	w7, #0
	bne	.L144
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L15
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L16
.L15:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #3
	cset	x7, eq
	mov	x9, #1
	and	x7, x7, x9
	str	x7, [x8]
.L16:
	cmp	w7, #0
	bne	.L142
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L20
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L21
.L20:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #16
	cset	x7, eq
	mov	x9, #1
	and	x7, x7, x9
	str	x7, [x8]
.L21:
	cmp	w7, #0
	bne	.L137
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L25
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L26
.L25:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #11
	cset	x7, eq
	mov	x9, #1
	and	x7, x7, x9
	str	x7, [x8]
.L26:
	cmp	w7, #0
	bne	.L132
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L30
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L35
.L30:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	mov	x9, #16
	add	x9, x20, x9
	ldr	x9, [x9]
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x11, [x9]
	mov	x10, #16
	sub	sp, sp, x10
	mov	x10, sp
	cmp	x11, #1
	beq	.L33
	mov	x9, #0
	str	x9, [x10]
	mov	x9, #0
	b	.L34
.L33:
	mov	x11, #8
	add	x9, x9, x11
	ldr	x9, [x9]
	ldr	x9, [x9]
	ldr	x9, [x9]
	cmp	x9, #11
	cset	x9, eq
	mov	x11, #1
	and	x9, x9, x11
	str	x9, [x10]
.L34:
	cmp	x7, #20
	cset	x7, eq
	mov	x10, #1
	and	x7, x7, x10
	and	x7, x7, x9
	str	x7, [x8]
.L35:
	cmp	w7, #0
	bne	.L127
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L39
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L40
.L39:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #14
	cset	x7, eq
	mov	x9, #1
	and	x7, x7, x9
	str	x7, [x8]
.L40:
	cmp	w7, #0
	bne	.L122
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L44
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L49
.L44:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	mov	x9, #16
	add	x9, x20, x9
	ldr	x9, [x9]
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x11, [x9]
	mov	x10, #16
	sub	sp, sp, x10
	mov	x10, sp
	cmp	x11, #1
	beq	.L47
	mov	x9, #0
	str	x9, [x10]
	mov	x9, #0
	b	.L48
.L47:
	mov	x11, #8
	add	x9, x9, x11
	ldr	x9, [x9]
	ldr	x9, [x9]
	ldr	x9, [x9]
	cmp	x9, #14
	cset	x9, eq
	mov	x11, #1
	and	x9, x9, x11
	str	x9, [x10]
.L48:
	cmp	x7, #20
	cset	x7, eq
	mov	x10, #1
	and	x7, x7, x10
	and	x7, x7, x9
	str	x7, [x8]
.L49:
	cmp	w7, #0
	bne	.L117
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L53
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L54
.L53:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #8
	cset	x7, eq
	mov	x9, #1
	and	x7, x7, x9
	str	x7, [x8]
.L54:
	cmp	w7, #0
	bne	.L112
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L58
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L59
.L58:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #22
	cset	x7, eq
	mov	x9, #1
	and	x7, x7, x9
	str	x7, [x8]
.L59:
	cmp	w7, #0
	bne	.L107
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L63
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L68
.L63:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	mov	x9, #16
	add	x9, x20, x9
	ldr	x9, [x9]
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x11, [x9]
	mov	x10, #16
	sub	sp, sp, x10
	mov	x10, sp
	cmp	x11, #1
	beq	.L66
	mov	x9, #0
	str	x9, [x10]
	mov	x9, #0
	b	.L67
.L66:
	mov	x11, #8
	add	x9, x9, x11
	ldr	x9, [x9]
	ldr	x9, [x9]
	ldr	x9, [x9]
	cmp	x9, #22
	cset	x9, eq
	mov	x11, #1
	and	x9, x9, x11
	str	x9, [x10]
.L67:
	cmp	x7, #20
	cset	x7, eq
	mov	x10, #1
	and	x7, x7, x10
	and	x7, x7, x9
	str	x7, [x8]
.L68:
	cmp	w7, #0
	bne	.L102
	mov	x7, #16
	sub	sp, sp, x7
	mov	x8, sp
	cmp	x6, #1
	beq	.L72
	mov	x7, #0
	str	x7, [x8]
	mov	x7, #0
	b	.L81
.L72:
	mov	x7, #8
	add	x7, x20, x7
	ldr	x7, [x7]
	mov	x9, #16
	add	x9, x20, x9
	ldr	x11, [x9]
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x9, [x11]
	mov	x10, #16
	sub	sp, sp, x10
	mov	x10, sp
	cmp	x9, #1
	beq	.L75
	mov	x9, #0
	str	x9, [x10]
	mov	x9, #0
	b	.L80
.L75:
	mov	x9, #8
	add	x9, x11, x9
	ldr	x9, [x9]
	mov	x12, #16
	add	x11, x11, x12
	ldr	x11, [x11]
	ldr	x9, [x9]
	ldr	x9, [x9]
	ldr	x13, [x11]
	mov	x12, #16
	sub	sp, sp, x12
	mov	x12, sp
	cmp	x13, #1
	beq	.L78
	mov	x11, #0
	str	x11, [x12]
	mov	x11, #0
	b	.L79
.L78:
	mov	x13, #8
	add	x11, x11, x13
	ldr	x11, [x11]
	ldr	x11, [x11]
	ldr	x11, [x11]
	cmp	x11, #22
	cset	x11, eq
	mov	x13, #1
	and	x11, x11, x13
	str	x11, [x12]
.L79:
	cmp	x9, #18
	cset	x9, eq
	mov	x12, #1
	and	x9, x9, x12
	and	x9, x9, x11
	str	x9, [x10]
.L80:
	cmp	x7, #20
	cset	x7, eq
	mov	x10, #1
	and	x7, x7, x10
	and	x7, x7, x9
	str	x7, [x8]
.L81:
	cmp	w7, #0
	bne	.L97
	mov	x23, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x6, #1
	beq	.L85
	mov	x6, #0
	str	x6, [x2]
	mov	x25, x5
	mov	x24, x4
	mov	x26, x3
	mov	x19, x0
	mov	x0, #0
	b	.L90
.L85:
	mov	x25, x5
	mov	x5, #8
	add	x5, x20, x5
	ldr	x5, [x5]
	mov	x6, #16
	add	x6, x20, x6
	ldr	x7, [x6]
	ldr	x5, [x5]
	ldr	x5, [x5]
	ldr	x8, [x7]
	mov	x6, #16
	sub	sp, sp, x6
	mov	x6, sp
	cmp	x8, #1
	beq	.L88
	mov	x7, #0
	str	x7, [x6]
	mov	x26, x3
	mov	x3, #0
	b	.L89
.L88:
	mov	x8, #8
	add	x7, x7, x8
	ldr	x7, [x7]
	ldr	x7, [x7]
	ldr	x7, [x7]
	cmp	x7, #22
	mov	x26, x3
	cset	x3, eq
	mov	x7, #1
	and	x3, x3, x7
	str	x3, [x6]
.L89:
	cmp	x5, #18
	mov	x19, x0
	cset	x0, eq
	mov	x24, x4
	mov	x4, #1
	and	x0, x0, x4
	and	x0, x0, x3
	str	x0, [x2]
.L90:
	cmp	w0, #0
	bne	.L92
	mov	x0, #8
	add	x0, x20, x0
	mov	x21, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	compiler_lexer_token_to_string
	mov	x2, x22
	mov	x1, x21
	mov	x22, x1
	adrp	x1, str734
	add	x1, x1, #:lo12:str734
	bl	errors_error_ParseUnexpectedToken
	mov	x21, x0
	mov	x0, x20
	bl	compiler_parser_parser_sync_to_decl
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x3, x26
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x23, x3
	mov	x3, #1
	str	x3, [x6]
	mov	x20, x2
	mov	x2, #8
	add	x2, x6, x2
	str	x21, [x2]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x20
	mov	x2, x22
	mov	x1, x19
	bl	compiler_parser_parser_parse_module_loop
	b	.L146
.L92:
	mov	x21, x20
	mov	x20, x23
	mov	x23, x26
	mov	x22, x1
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_type_defs_parse_type_def
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x25, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x26, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L95
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 168]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 168]
	mov	x25, x5
	mov	x5, #1
	str	x5, [x4]
	mov	x24, x3
	mov	x3, #8
	add	x3, x4, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x4, x1
	str	x24, [x1]
	mov	x6, x25
	mov	x5, x26
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L95:
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 160]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 160]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x23, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L97:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x20, x2
	mov	x22, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_type_defs_parse_type_def
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x25, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x26, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L100
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 152]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 152]
	mov	x25, x5
	mov	x5, #1
	str	x5, [x4]
	mov	x24, x3
	mov	x3, #8
	add	x3, x4, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x4, x1
	str	x24, [x1]
	mov	x6, x25
	mov	x5, x26
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L100:
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 144]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 144]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x23, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L102:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x20, x2
	mov	x22, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_type_defs_parse_type_def
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x25, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x26, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L105
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 136]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 136]
	mov	x25, x5
	mov	x5, #1
	str	x5, [x4]
	mov	x24, x3
	mov	x3, #8
	add	x3, x4, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x4, x1
	str	x24, [x1]
	mov	x6, x25
	mov	x5, x26
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L105:
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 128]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 128]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x23, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L107:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x20, x2
	mov	x22, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_type_defs_parse_type_def
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x25, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x26, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L110
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 120]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 120]
	mov	x25, x5
	mov	x5, #1
	str	x5, [x4]
	mov	x24, x3
	mov	x3, #8
	add	x3, x4, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x4, x1
	str	x24, [x1]
	mov	x6, x25
	mov	x5, x26
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L110:
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 112]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 112]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x23, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L112:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x20, x2
	mov	x22, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_functions_parse_external_fn
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x25, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x26, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L115
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 104]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x5, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 104]
	mov	x26, x4
	mov	x4, #1
	str	x4, [x5]
	mov	x24, x3
	mov	x3, #8
	add	x3, x5, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x5, x1
	str	x26, [x1]
	mov	x6, x25
	mov	x4, x24
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L115:
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 96]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 96]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x23, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L117:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x20, x2
	mov	x22, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_functions_parse_function
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x25, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x26, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L120
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 88]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x5, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 88]
	mov	x26, x4
	mov	x4, #1
	str	x4, [x5]
	mov	x24, x3
	mov	x3, #8
	add	x3, x5, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x5, x1
	str	x26, [x1]
	mov	x6, x25
	mov	x4, x24
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L120:
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 80]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 80]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x23, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L122:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x20, x2
	mov	x22, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_functions_parse_function
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x25, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x26, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L125
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 72]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x5, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 72]
	mov	x26, x4
	mov	x4, #1
	str	x4, [x5]
	mov	x24, x3
	mov	x3, #8
	add	x3, x5, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x5, x1
	str	x26, [x1]
	mov	x6, x25
	mov	x4, x24
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L125:
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 64]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 64]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x23, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L127:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x20, x2
	mov	x22, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_constants_parse_const
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x26, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x25, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L130
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 56]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x26
	mov	x4, x25
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 56]
	mov	x25, x5
	mov	x5, #1
	str	x5, [x3]
	mov	x26, x4
	mov	x4, #8
	add	x4, x3, x4
	str	x21, [x4]
	mov	x22, x1
	mov	x1, #16
	add	x1, x3, x1
	str	x2, [x1]
	mov	x6, x25
	mov	x5, x26
	mov	x4, x24
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L130:
	mov	x17, x26
	mov	x26, x25
	mov	x25, x17
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 48]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 48]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x23, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x23
	mov	x3, x2
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L132:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x23, x3
	mov	x20, x2
	mov	x22, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_constants_parse_const
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x26, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x25, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L135
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 40]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x26
	mov	x4, x25
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 40]
	mov	x25, x5
	mov	x5, #1
	str	x5, [x3]
	mov	x26, x4
	mov	x4, #8
	add	x4, x3, x4
	str	x21, [x4]
	mov	x22, x1
	mov	x1, #16
	add	x1, x3, x1
	str	x2, [x1]
	mov	x6, x25
	mov	x5, x26
	mov	x4, x24
	mov	x2, x22
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L135:
	mov	x17, x26
	mov	x26, x25
	mov	x25, x17
	mov	x24, x3
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 32]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 32]
	mov	x24, x4
	mov	x4, #1
	str	x4, [x6]
	mov	x22, x3
	mov	x3, #8
	add	x3, x6, x3
	str	x21, [x3]
	mov	x23, x1
	mov	x1, #16
	add	x1, x6, x1
	str	x25, [x1]
	mov	x5, x24
	mov	x4, x22
	mov	x3, x2
	mov	x2, x23
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L137:
	mov	x21, x20
	mov	x25, x5
	mov	x24, x4
	mov	x22, x3
	mov	x20, x2
	mov	x23, x1
	mov	x19, x0
	mov	x0, x21
	bl	compiler_parser_parse_imports_parse_import
	mov	x5, x25
	mov	x4, x24
	mov	x3, x22
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x26, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	mov	x25, x4
	ldr	x4, [x1]
	cmp	x4, #1
	beq	.L140
	mov	x24, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x22, [x3]
	mov	x21, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x7, [x1]
	str	x7, [x29, 24]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x25
	mov	x3, x24
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 24]
	mov	x25, x4
	mov	x4, #1
	str	x4, [x2]
	mov	x24, x3
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x2, x1
	str	x22, [x1]
	mov	x6, x26
	mov	x5, x25
	mov	x4, x24
	mov	x3, x21
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L140:
	mov	x24, x3
	mov	x22, x23
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	mov	x27, x21
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x27
	bl	compiler_parser_parser_sync_to_decl
	str	x0, [x29, 16]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x26
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 16]
	mov	x26, x5
	mov	x5, #1
	str	x5, [x6]
	mov	x25, x4
	mov	x4, #8
	add	x4, x6, x4
	str	x21, [x4]
	mov	x24, x3
	mov	x3, #16
	add	x3, x6, x3
	str	x26, [x3]
	mov	x5, x25
	mov	x4, x24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x20
	bl	compiler_parser_parser_parse_module_loop
	str	x0, [x19]
	b	.L146
.L142:
	mov	x21, x20
	mov	x26, x5
	mov	x25, x4
	mov	x24, x3
	mov	x20, x0
	mov	x0, #8
	add	x0, x21, x0
	mov	x19, x1
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x21, x0
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x26
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x0
	mov	x0, x22
	mov	x6, #1
	str	x6, [x1]
	mov	x6, #8
	add	x6, x1, x6
	str	x21, [x6]
	mov	x6, #16
	add	x6, x1, x6
	str	x20, [x6]
	mov	x6, x5
	mov	x5, x4
	mov	x4, x3
	mov	x3, x2
	mov	x2, x19
	bl	compiler_parser_parser_parse_module_loop
	b	.L146
.L144:
	bl	compiler_parser_parser_make_output
	b	.L146
.L145:
	bl	compiler_parser_parser_make_output
.L146:
	ldr	x19, [x29, 248]
	ldr	x20, [x29, 240]
	ldr	x21, [x29, 232]
	ldr	x22, [x29, 224]
	ldr	x23, [x29, 216]
	ldr	x24, [x29, 208]
	ldr	x25, [x29, 200]
	ldr	x26, [x29, 192]
	ldr	x27, [x29, 184]
	mov sp, x29
	ldp	x29, x30, [sp], 256
	ret
.type compiler_parser_parser_parse_module_loop, @function
.size compiler_parser_parser_parse_module_loop, .-compiler_parser_parser_parse_module_loop
/* end function compiler_parser_parser_parse_module_loop */

.text
.balign 16
compiler_parser_parser_make_output:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x22, x4
	mov	x21, x3
	mov	x20, x2
	mov	x19, x1
	mov	x23, x0
	mov	x0, x5
	mov	x24, x0
	bl	donna_list_is_empty
	mov	x1, x0
	mov	x0, x24
	cmp	x1, #1
	beq	.L149
	bl	donna_list_reverse
	bl	compiler_parser_parser_ParseErrors
	b	.L151
.L149:
	mov	x0, x23
	bl	donna_list_reverse
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_list_reverse
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_list_reverse
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	donna_list_reverse
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	bl	donna_list_reverse
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	bl	compiler_parser_ast_Module
	bl	compiler_parser_parser_ParseOk
.L151:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_parser_make_output, @function
.size compiler_parser_parser_make_output, .-compiler_parser_parser_make_output
/* end function compiler_parser_parser_make_output */

.text
.balign 16
compiler_parser_parser_sync_to_decl:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L154
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
	bl	compiler_parser_parser_sync_rest
	b	.L155
.L154:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L155:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parser_sync_to_decl, @function
.size compiler_parser_parser_sync_to_decl, .-compiler_parser_parser_sync_to_decl
/* end function compiler_parser_parser_sync_to_decl */

.text
.balign 16
compiler_parser_parser_sync_rest:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	compiler_parser_parse_result_skip_newlines
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L203
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L160
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L161
.L160:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #64
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L161:
	cmp	w2, #0
	bne	.L204
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L165
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L166
.L165:
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
.L166:
	cmp	w2, #0
	bne	.L204
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L170
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L171
.L170:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #20
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L171:
	cmp	w2, #0
	bne	.L204
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L175
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L176
.L175:
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
.L176:
	cmp	w2, #0
	bne	.L204
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L180
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L181
.L180:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #18
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L181:
	cmp	w2, #0
	bne	.L204
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L185
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L186
.L185:
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
.L186:
	cmp	w2, #0
	bne	.L204
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L190
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L191
.L190:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #16
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L191:
	cmp	w2, #0
	bne	.L204
	mov	x2, #16
	sub	sp, sp, x2
	mov	x3, sp
	cmp	x1, #1
	beq	.L195
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L196
.L195:
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
.L196:
	cmp	w2, #0
	bne	.L204
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L200
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L201
.L200:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #3
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L201:
	cmp	w1, #0
	bne	.L204
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parser_sync_rest
	b	.L204
.L203:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L204:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parser_sync_rest, @function
.size compiler_parser_parser_sync_rest, .-compiler_parser_parser_sync_rest
/* end function compiler_parser_parser_sync_rest */

.section .note.GNU-stack,"",@progbits
