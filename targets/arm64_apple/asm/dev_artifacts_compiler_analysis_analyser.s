.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str68:
	.ascii "main"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_analysis_analyser_analyse
_compiler_analysis_analyser_analyse:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x1, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #40
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, x19
	bl	_compiler_analysis_analyser_analyse_imports
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	bl	_compiler_analysis_analyser_analyse_unused_fns
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, _compiler_analysis_analyser_analyse_fn@page
	add	x1, x1, _compiler_analysis_analyser_analyse_fn@pageoff
	bl	_donna_list_flat_map
	mov	x1, x0
	mov	x0, x20
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_analysis_analyser_analyse */

.text
.balign 4
_compiler_analysis_analyser_analyse_unused_fns:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _compiler_analysis_analyser_fn_refs@page
	add	x1, x1, _compiler_analysis_analyser_fn_refs@pageoff
	mov	x19, x0
	bl	_donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_analysis_analyser_check_unused_fns
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_analysis_analyser_analyse_unused_fns */

.text
.balign 4
_compiler_analysis_analyser_check_unused_fns:
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
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L20
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_analysis_analyser_check_unused_fns
	mov	x22, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	cmp	x1, #1
	beq	L18
	mov	x1, #8
	add	x1, x20, x1
	ldr	x25, [x1]
	mov	x1, #16
	add	x1, x20, x1
	ldr	x1, [x1]
	mov	x2, #48
	add	x2, x20, x2
	ldr	x23, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L15
	adrp	x1, _str68@page
	add	x1, x1, _str68@pageoff
	mov	x21, x0
	mov	x0, x25
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L12
	mov	x1, x25
	bl	_compiler_analysis_scope_contains_name
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	L10
	mov	x24, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	mov	x1, #2
	str	x1, [x24]
	mov	x1, #8
	add	x1, x24, x1
	str	x25, [x1]
	mov	x1, #16
	add	x1, x24, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
	b	L11
L10:
	str	x0, [x22]
L11:
	str	x0, [x21]
	b	L14
L12:
	mov	x0, x22
	str	x0, [x21]
L14:
	str	x0, [x20]
	b	L17
L15:
	mov	x0, x22
	str	x0, [x20]
L17:
	str	x0, [x19]
	b	L21
L18:
	mov	x0, x22
	str	x0, [x19]
	b	L21
L20:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L21:
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
/* end function compiler_analysis_analyser_check_unused_fns */

.text
.balign 4
_compiler_analysis_analyser_analyse_imports:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, _compiler_analysis_analyser_fn_refs@page
	add	x1, x1, _compiler_analysis_analyser_fn_refs@pageoff
	bl	_donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_analysis_analyser_check_imports
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_analysis_analyser_analyse_imports */

.text
.balign 4
_compiler_analysis_analyser_fn_refs:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L26
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L27
L26:
	mov	x1, #40
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
L27:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_analysis_analyser_fn_refs */

.text
.balign 4
_compiler_analysis_analyser_check_imports:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L33
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_analysis_analyser_check_imports
	mov	x20, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #16
	add	x1, x21, x1
	ldr	x23, [x1]
	mov	x1, #24
	add	x1, x21, x1
	ldr	x21, [x1]
	mov	x1, x23
	bl	_compiler_analysis_scope_contains_name
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L31
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x1, #3
	str	x1, [x22]
	mov	x1, #8
	add	x1, x22, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x22, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L32
L31:
	str	x0, [x20]
L32:
	str	x0, [x19]
	b	L34
L33:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L34:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_analysis_analyser_check_imports */

.text
.balign 4
_compiler_analysis_analyser_analyse_fn:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #1
	beq	L37
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #40
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x20, x0
	mov	x0, x19
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_analysis_analyser_check_params
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L38
L37:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L38:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_analysis_analyser_analyse_fn */

.text
.balign 4
_compiler_analysis_analyser_check_params:
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
	mov	x24, x0
	mov	x0, x2
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L48
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x0
	mov	x19, x0
	mov	x0, x24
	bl	_compiler_analysis_analyser_check_params
	mov	x21, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #8
	add	x1, x20, x1
	ldr	x25, [x1]
	mov	x1, #24
	add	x1, x20, x1
	ldr	x22, [x1]
	mov	x20, x0
	mov	x0, x25
	bl	_compiler_analysis_scope_is_discard
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L45
	mov	x1, x25
	bl	_compiler_analysis_scope_contains_name
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L43
	mov	x23, x0
	mov	x0, #32
	bl	_malloc
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x1, #1
	str	x1, [x23]
	mov	x1, #8
	add	x1, x23, x1
	str	x25, [x1]
	mov	x1, #16
	add	x1, x23, x1
	str	x24, [x1]
	mov	x1, #24
	add	x1, x23, x1
	str	x22, [x1]
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
	str	x0, [x21]
	b	L44
L43:
	str	x0, [x21]
L44:
	str	x0, [x20]
	b	L47
L45:
	mov	x0, x21
	str	x0, [x20]
L47:
	str	x0, [x19]
	b	L49
L48:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L49:
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
/* end function compiler_analysis_analyser_check_params */

.text
.balign 4
_compiler_analysis_analyser_analyse_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #13
	beq	L78
	cmp	x1, #12
	beq	L77
	cmp	x1, #15
	beq	L76
	cmp	x1, #9
	beq	L75
	cmp	x1, #10
	beq	L74
	cmp	x1, #14
	beq	L73
	cmp	x1, #16
	beq	L72
	cmp	x1, #17
	beq	L71
	cmp	x1, #6
	beq	L70
	cmp	x1, #7
	beq	L69
	cmp	x1, #8
	beq	L68
	cmp	x1, #11
	beq	L67
	cmp	x1, #5
	beq	L66
	cmp	x1, #18
	beq	L65
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L79
L65:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	mov	x0, #5
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	b	L79
L66:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_expr
	b	L79
L67:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_expr
	b	L79
L68:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, _compiler_analysis_analyser_analyse_expr@page
	add	x1, x1, _compiler_analysis_analyser_analyse_expr@pageoff
	bl	_donna_list_flat_map
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L79
L69:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_analysis_analyser_analyse_expr@page
	add	x1, x1, _compiler_analysis_analyser_analyse_expr@pageoff
	bl	_donna_list_flat_map
	b	L79
L70:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_analysis_analyser_analyse_expr@page
	add	x1, x1, _compiler_analysis_analyser_analyse_expr@pageoff
	bl	_donna_list_flat_map
	b	L79
L71:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_expr
	b	L79
L72:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_expr
	b	L79
L73:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L79
L74:
	mov	x1, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L79
L75:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _compiler_analysis_analyser_analyse_expr@page
	add	x1, x1, _compiler_analysis_analyser_analyse_expr@pageoff
	bl	_donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L79
L76:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_expr
	b	L79
L77:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _compiler_analysis_analyser_analyse_clause@page
	add	x1, x1, _compiler_analysis_analyser_analyse_clause@pageoff
	bl	_donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L79
L78:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_block
L79:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_analysis_analyser_analyse_expr */

.text
.balign 4
_compiler_analysis_analyser_analyse_clause:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L82
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	b	L84
L82:
	mov	x0, x19
	adrp	x19, _donna_nil@page
	add	x19, x19, _donna_nil@pageoff
L84:
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_analysis_analyser_analyse_clause */

.text
.balign 4
_compiler_analysis_analyser_analyse_block:
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
	cmp	x1, #0
	beq	L105
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	bl	_compiler_analysis_analyser_analyse_block
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_analysis_scope_refs_in_stmts
	mov	x1, x19
	mov	x20, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x22, x0
	ldr	x0, [x23]
	cmp	x0, #0
	beq	L92
	cmp	x0, #1
	beq	L90
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x1, x20
	mov	x21, x1
	bl	_donna_list_append
	str	x0, [x19]
	b	L106
L90:
	mov	x21, x20
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	mov	x20, x0
	mov	x0, #16
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_compiler_analysis_scope_bound_by_pattern
	mov	x1, x21
	mov	x21, x1
	mov	x1, x22
	bl	_compiler_analysis_analyser_check_unused_bindings
	mov	x1, x21
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x20
	bl	_donna_list_append
	str	x0, [x19]
	b	L106
L92:
	mov	x0, x22
	mov	x1, x20
	mov	x21, x23
	mov	x2, #8
	add	x2, x21, x2
	ldr	x24, [x2]
	mov	x20, x0
	mov	x0, #24
	add	x0, x21, x0
	ldr	x0, [x0]
	mov	x22, x1
	mov	x1, #32
	add	x1, x21, x1
	ldr	x23, [x1]
	bl	_compiler_analysis_analyser_analyse_expr
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, x24
	bl	_compiler_analysis_scope_is_discard
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	L101
	mov	x25, x1
	mov	x1, x24
	bl	_compiler_analysis_scope_contains_name
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L96
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x25
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x2, #0
	str	x2, [x22]
	mov	x2, #8
	add	x2, x22, x2
	str	x24, [x2]
	mov	x24, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x4, x2, x3
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	str	x3, [x4]
	str	x2, [x20]
	b	L99
L96:
	mov	x1, x25
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	str	x2, [x20]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
L99:
	str	x2, [x21]
	mov	x20, x0
	b	L104
L101:
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x21]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
L104:
	mov	x0, x2
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x20
	bl	_donna_list_append
	str	x0, [x19]
	b	L106
L105:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L106:
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
/* end function compiler_analysis_analyser_analyse_block */

.text
.balign 4
_compiler_analysis_analyser_check_unused_bindings:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L115
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x23, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x1, x19
	bl	_compiler_analysis_analyser_check_unused_bindings
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x23
	bl	_compiler_analysis_scope_is_discard
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L113
	mov	x1, x23
	bl	_compiler_analysis_scope_contains_name
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L111
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x1, #0
	str	x1, [x22]
	mov	x1, #8
	add	x1, x22, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x22, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L112
L111:
	str	x0, [x20]
L112:
	str	x0, [x19]
	b	L116
L113:
	mov	x0, x20
	str	x0, [x19]
	b	L116
L115:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L116:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_analysis_analyser_check_unused_bindings */

