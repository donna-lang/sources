.data
.balign 8
str85:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_result_POk
compiler_parser_parse_result_POk:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #0
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_parse_result_POk, @function
.size compiler_parser_parse_result_POk, .-compiler_parser_parse_result_POk
/* end function compiler_parser_parse_result_POk */

.text
.balign 16
.globl compiler_parser_parse_result_PErr
compiler_parser_parse_result_PErr:
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
.type compiler_parser_parse_result_PErr, @function
.size compiler_parser_parse_result_PErr, .-compiler_parser_parse_result_PErr
/* end function compiler_parser_parse_result_PErr */

.text
.balign 16
.globl compiler_parser_parse_result_skip_newlines
compiler_parser_parse_result_skip_newlines:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L6
	mov	x1, #0
	b	.L7
.L6:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #61
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
.L7:
	cmp	w1, #0
	beq	.L9
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_skip_newlines
.L9:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_result_skip_newlines, @function
.size compiler_parser_parse_result_skip_newlines, .-compiler_parser_parse_result_skip_newlines
/* end function compiler_parser_parse_result_skip_newlines */

.text
.balign 16
.globl compiler_parser_parse_result_peek
compiler_parser_parse_result_peek:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L18
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L14
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L15
.L14:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #61
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L15:
	cmp	w1, #0
	bne	.L17
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x0, [x0]
	b	.L19
.L17:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_peek
	b	.L19
.L18:
	adrp	x0, compiler_lexer_token_TokEof
	add	x0, x0, #:lo12:compiler_lexer_token_TokEof
.L19:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_result_peek, @function
.size compiler_parser_parse_result_peek, .-compiler_parser_parse_result_peek
/* end function compiler_parser_parse_result_peek */

.text
.balign 16
.globl compiler_parser_parse_result_peek_span
compiler_parser_parse_result_peek_span:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L28
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L24
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L25
.L24:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #61
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L25:
	cmp	w1, #0
	bne	.L27
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L29
.L27:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parse_result_peek_span
	b	.L29
.L28:
	adrp	x0, str85
	add	x0, x0, #:lo12:str85
	bl	utilities_location_zero
.L29:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type compiler_parser_parse_result_peek_span, @function
.size compiler_parser_parse_result_peek_span, .-compiler_parser_parse_result_peek_span
/* end function compiler_parser_parse_result_peek_span */

.section .note.GNU-stack,"",@progbits
