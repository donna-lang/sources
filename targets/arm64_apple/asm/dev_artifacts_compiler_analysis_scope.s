.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str360:
	.ascii "_"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_analysis_scope_refs_in_expr
_compiler_analysis_scope_refs_in_expr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L36
	cmp	x1, #1
	beq	L35
	cmp	x1, #2
	beq	L34
	cmp	x1, #3
	beq	L33
	cmp	x1, #4
	beq	L32
	cmp	x1, #5
	beq	L31
	cmp	x1, #6
	beq	L30
	cmp	x1, #7
	beq	L29
	cmp	x1, #8
	beq	L28
	cmp	x1, #9
	beq	L27
	cmp	x1, #10
	beq	L26
	cmp	x1, #11
	beq	L25
	cmp	x1, #12
	beq	L24
	cmp	x1, #13
	beq	L23
	cmp	x1, #14
	beq	L22
	cmp	x1, #15
	beq	L21
	cmp	x1, #16
	beq	L20
	cmp	x1, #17
	beq	L19
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L37
L19:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
	b	L37
L20:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
	b	L37
L21:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
	b	L37
L22:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L37
L23:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_stmts
	b	L37
L24:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _compiler_analysis_scope_refs_in_clause@page
	add	x1, x1, _compiler_analysis_scope_refs_in_clause@pageoff
	bl	_donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L37
L25:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
	b	L37
L26:
	mov	x1, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L37
L27:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _compiler_analysis_scope_refs_in_expr@page
	add	x1, x1, _compiler_analysis_scope_refs_in_expr@pageoff
	bl	_donna_list_flat_map
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L37
L28:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, _compiler_analysis_scope_refs_in_expr@page
	add	x1, x1, _compiler_analysis_scope_refs_in_expr@pageoff
	bl	_donna_list_flat_map
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	b	L37
L29:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_analysis_scope_refs_in_expr@page
	add	x1, x1, _compiler_analysis_scope_refs_in_expr@pageoff
	bl	_donna_list_flat_map
	b	L37
L30:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_analysis_scope_refs_in_expr@page
	add	x1, x1, _compiler_analysis_scope_refs_in_expr@pageoff
	bl	_donna_list_flat_map
	b	L37
L31:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
	b	L37
L32:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
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
	b	L37
L33:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L37
L34:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L37
L35:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L37
L36:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L37:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_analysis_scope_refs_in_expr */

.text
.balign 4
.globl _compiler_analysis_scope_refs_in_stmts
_compiler_analysis_scope_refs_in_stmts:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _compiler_analysis_scope_refs_in_stmt@page
	add	x1, x1, _compiler_analysis_scope_refs_in_stmt@pageoff
	bl	_donna_list_flat_map
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_analysis_scope_refs_in_stmts */

.text
.balign 4
.globl _compiler_analysis_scope_refs_in_stmt
_compiler_analysis_scope_refs_in_stmt:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L44
	cmp	x1, #1
	beq	L43
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
	b	L45
L43:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
	b	L45
L44:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
L45:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_analysis_scope_refs_in_stmt */

.text
.balign 4
.globl _compiler_analysis_scope_bound_by_pattern
_compiler_analysis_scope_bound_by_pattern:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L64
	cmp	x1, #1
	beq	L63
	cmp	x1, #2
	beq	L62
	cmp	x1, #3
	beq	L61
	cmp	x1, #4
	beq	L60
	cmp	x1, #5
	beq	L59
	cmp	x1, #6
	beq	L58
	cmp	x1, #7
	beq	L57
	cmp	x1, #8
	beq	L56
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_analysis_scope_bound_by_pattern@page
	add	x1, x1, _compiler_analysis_scope_bound_by_pattern@pageoff
	bl	_donna_list_flat_map
	b	L65
L56:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_analysis_scope_bound_by_pattern@page
	add	x1, x1, _compiler_analysis_scope_bound_by_pattern@pageoff
	bl	_donna_list_flat_map
	b	L65
L57:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_analysis_scope_bound_by_pattern@page
	add	x1, x1, _compiler_analysis_scope_bound_by_pattern@pageoff
	bl	_donna_list_flat_map
	b	L65
L58:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L65
L59:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L65
L60:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L65
L61:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L65
L62:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	str	x21, [x19]
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
	b	L65
L63:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L65
L64:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L65:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_analysis_scope_bound_by_pattern */

.text
.balign 4
_compiler_analysis_scope_refs_in_clause:
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
	beq	L68
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	b	L70
L68:
	mov	x0, x19
	adrp	x19, _donna_nil@page
	add	x19, x19, _donna_nil@pageoff
L70:
	bl	_compiler_analysis_scope_refs_in_expr
	mov	x1, x0
	mov	x0, x19
	bl	_donna_list_append
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_analysis_scope_refs_in_clause */

.text
.balign 4
.globl _compiler_analysis_scope_contains_name
_compiler_analysis_scope_contains_name:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L77
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x20, x1
	bl	_donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L75
	bl	_compiler_analysis_scope_contains_name
	str	x0, [x19]
	b	L78
L75:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L78
L77:
	mov	x0, #0
L78:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_analysis_scope_contains_name */

.text
.balign 4
.globl _compiler_analysis_scope_is_discard
_compiler_analysis_scope_is_discard:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _str360@page
	add	x1, x1, _str360@pageoff
	bl	_donna_string_starts_with
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_analysis_scope_is_discard */

