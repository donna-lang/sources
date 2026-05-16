.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str142:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str149:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str150:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str260:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str261:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str275:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_parser_parse_imports_parse_import
_compiler_parser_parse_imports_parse_import:
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
	adrp	x0, _str150@page
	add	x0, x0, _str150@pageoff
	bl	_utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str149@page
	add	x0, x0, _str149@pageoff
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
	b	L26
L11:
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
	adrp	x0, _str142@page
	add	x0, x0, _str142@pageoff
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
	b	L26
L12:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_parser_parse_imports_parse_import_path
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L25
	mov	x1, #8
	add	x1, x0, x1
	ldr	x25, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x21, x0
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x21]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L16
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L21
L16:
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x2, x21, x2
	ldr	x2, [x2]
	ldr	x0, [x0]
	ldr	x0, [x0]
	ldr	x4, [x2]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x4, #1
	beq	L19
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L20
L19:
	mov	x4, #8
	add	x2, x2, x4
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #4
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L20:
	cmp	x0, #9
	cset	x0, eq
	mov	x3, #1
	and	x0, x0, x3
	and	x0, x0, x2
	str	x0, [x1]
L21:
	cmp	w0, #0
	bne	L23
	mov	x0, x25
	bl	_compiler_parser_parse_imports_last_segment
	mov	x24, x0
	mov	x0, #32
	bl	_malloc
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
	b	L24
L23:
	mov	x0, #16
	add	x0, x21, x0
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
	ldr	x24, [x1]
	bl	_compiler_parser_parse_result_skip_newlines
	mov	x21, x0
	mov	x0, #32
	bl	_malloc
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
L24:
	str	x0, [x19]
	b	L26
L25:
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
L26:
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
	beq	L29
	mov	x2, #0
	b	L30
L29:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #4
	cset	x2, eq
	mov	x3, #1
	and	x2, x2, x3
L30:
	cmp	w2, #0
	bne	L39
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	L34
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L36
L34:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
L36:
	cmp	w0, #0
	bne	L38
	adrp	x0, _str261@page
	add	x0, x0, _str261@pageoff
	bl	_utilities_location_zero
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #7
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str260@page
	add	x0, x0, _str260@pageoff
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
	b	L46
L38:
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
	adrp	x0, _str253@page
	add	x0, x0, _str253@pageoff
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
	b	L46
L39:
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
	beq	L42
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L43
L42:
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
L43:
	cmp	w0, #0
	bne	L45
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
	str	x22, [x1]
	str	x0, [x19]
	b	L46
L45:
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
L46:
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
	beq	L55
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L51
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L52
L51:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L52:
	cmp	w1, #0
	bne	L54
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parse_imports_last_segment
	b	L56
L54:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L56
L55:
	adrp	x0, _str275@page
	add	x0, x0, _str275@pageoff
L56:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_parser_parse_imports_last_segment */

