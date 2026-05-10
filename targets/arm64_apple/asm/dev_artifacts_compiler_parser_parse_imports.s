.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str131:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str134:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str233:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str236:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str248:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_parser_parse_imports_parse_import
_compiler_parser_parse_imports_parse_import:
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
	beq	L2
	mov	x2, #0
	b	L3
L2:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #16
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L3:
	cmp	w2, #0
	bne	L12
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L7
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L9
L7:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L9:
	cmp	w1, #0
	bne	L11
	adrp	x0, _str135@page
	add	x0, x0, _str135@pageoff
	bl	_utilities_location_zero
	mov	x1, x0
	adrp	x0, _str134@page
	add	x0, x0, _str134@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	b	L27
L11:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, _str131@page
	add	x1, x1, _str131@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	b	L27
L12:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_imports_parse_import_path
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L26
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x2, x21
	mov	x22, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x22]
	mov	x23, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L16
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L21
L16:
	mov	x1, #8
	add	x1, x22, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x3, x22, x3
	ldr	x3, [x3]
	ldr	x1, [x1]
	ldr	x1, [x1]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L19
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L20
L19:
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
L20:
	cmp	x1, #9
	cset	x1, eq
	mov	x4, #1
	and	x1, x1, x4
	and	x1, x1, x3
	str	x1, [x2]
L21:
	cmp	w1, #0
	bne	L23
	mov	x21, x0
	bl	_compiler_parser_parse_imports_last_segment
	mov	x2, x23
	mov	x1, x0
	mov	x0, x21
	bl	_compiler_parser_ast_Import
	mov	x1, x22
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
	b	L25
L23:
	mov	x2, x23
	mov	x21, x0
	mov	x0, #16
	add	x0, x22, x0
	ldr	x0, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	ldr	x1, [x1]
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x2, x23
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_parser_ast_Import
	mov	x1, x21
	bl	_compiler_parser_parse_result_POk
	str	x0, [x20]
L25:
	str	x0, [x19]
	b	L27
L26:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_PErr
	str	x0, [x19]
L27:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_parser_parse_imports_parse_import */

.text
.balign 4
_compiler_parser_parse_imports_parse_import_path:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #1
	beq	L30
	mov	x2, #0
	b	L31
L30:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #4
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L31:
	cmp	w2, #0
	bne	L40
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	L35
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L37
L35:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
L37:
	cmp	w0, #0
	bne	L39
	adrp	x0, _str237@page
	add	x0, x0, _str237@pageoff
	bl	_utilities_location_zero
	mov	x1, x0
	adrp	x0, _str236@page
	add	x0, x0, _str236@pageoff
	bl	_errors_error_ParseUnexpectedEof
	bl	_compiler_parser_parse_result_PErr
	b	L47
L39:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_lexer_token_to_string
	mov	x2, x19
	adrp	x1, _str233@page
	add	x1, x1, _str233@pageoff
	bl	_errors_error_ParseUnexpectedToken
	bl	_compiler_parser_parse_result_PErr
	b	L47
L40:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x22]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L43
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L44
L43:
	mov	x0, #8
	add	x0, x22, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #43
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x1]
L44:
	cmp	w0, #0
	bne	L46
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_list_reverse
	mov	x1, x22
	bl	_compiler_parser_parse_result_POk
	str	x0, [x19]
	b	L47
L46:
	mov	x0, #16
	add	x0, x22, x0
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
	bl	_compiler_parser_parse_imports_parse_import_path
	str	x0, [x19]
L47:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_parser_parse_imports_parse_import_path */

.text
.balign 4
_compiler_parser_parse_imports_last_segment:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L56
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L52
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L53
L52:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L53:
	cmp	w1, #0
	bne	L55
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_imports_last_segment
	b	L57
L55:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L57
L56:
	adrp	x0, _str248@page
	add	x0, x0, _str248@pageoff
L57:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_imports_last_segment */

