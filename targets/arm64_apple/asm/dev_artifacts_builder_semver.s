.data
.balign 8
_str12:
	.ascii "v"
	.byte 0
/* end data */

.data
.balign 8
_str23:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str163:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str168:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str204:
	.ascii " and "
	.byte 0
/* end data */

.data
.balign 8
_str257:
	.ascii ">="
	.byte 0
/* end data */

.data
.balign 8
_str282:
	.ascii ">"
	.byte 0
/* end data */

.data
.balign 8
_str307:
	.ascii "<="
	.byte 0
/* end data */

.data
.balign 8
_str332:
	.ascii "<"
	.byte 0
/* end data */

.text
.balign 4
.globl _builder_semver_Version
_builder_semver_Version:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	_malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #0
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_semver_Version */

.text
.balign 4
.globl _builder_semver_Gte
_builder_semver_Gte:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_semver_Gte */

.text
.balign 4
.globl _builder_semver_Gt
_builder_semver_Gt:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_semver_Gt */

.text
.balign 4
.globl _builder_semver_Lte
_builder_semver_Lte:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #2
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_semver_Lte */

.text
.balign 4
.globl _builder_semver_Lt
_builder_semver_Lt:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #3
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_semver_Lt */

.text
.balign 4
.globl _builder_semver_parse
_builder_semver_parse:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	adrp	x1, _str12@page
	add	x1, x1, _str12@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	L12
	mov	x19, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	_donna_string_slice
L12:
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	bl	_donna_string_split
	mov	x1, x0
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x1]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	L15
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L24
L15:
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x4, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x4, #1
	beq	L18
	mov	x0, #0
	str	x0, [x3]
	mov	x0, #0
	b	L23
L18:
	mov	x4, #16
	add	x0, x0, x4
	ldr	x0, [x0]
	ldr	x5, [x0]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L21
	mov	x0, #0
	str	x0, [x4]
	mov	x0, #0
	b	L22
L21:
	mov	x5, #16
	add	x0, x0, x5
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #0
	cset	x0, eq
	mov	x5, #1
	and	x0, x0, x5
	str	x0, [x4]
L22:
	mov	x4, #1
	and	x0, x0, x4
	str	x0, [x3]
L23:
	mov	x3, #1
	and	x0, x0, x3
	str	x0, [x2]
L24:
	cmp	w0, #0
	bne	L27
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L28
L27:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_builder_semver_parse_nat
	mov	x23, x0
	mov	x0, x21
	bl	_builder_semver_parse_nat
	mov	x22, x0
	mov	x0, x20
	bl	_builder_semver_parse_nat
	mov	x21, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
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
L28:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_semver_parse */

.text
.balign 4
.globl _builder_semver_parse_constraints
_builder_semver_parse_constraints:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_semver_split_and
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_semver_collect_constraints
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_semver_parse_constraints */

.text
.balign 4
.globl _builder_semver_compare
_builder_semver_compare:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	bl	_builder_semver_vmajor
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, x20
	bl	_builder_semver_vmajor
	mov	x1, x0
	mov	x0, x21
	cmp	x19, x1
	cset	x2, eq
	cmp	x2, #0
	beq	L50
	mov	x19, x0
	bl	_builder_semver_vminor
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_builder_semver_vminor
	mov	x1, x0
	mov	x0, x19
	cmp	x21, x1
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #0
	beq	L43
	bl	_builder_semver_vpatch
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_builder_semver_vpatch
	cmp	x20, x0
	cset	x2, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x2, #1
	beq	L40
	cmp	x20, x0
	cset	x0, gt
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	L37
	mov	x0, #-1
	str	x0, [x2]
	mov	x0, #-1
	b	L39
L37:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
L39:
	str	x0, [x1]
	b	L42
L40:
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
L42:
	str	x0, [x19]
	b	L56
L43:
	mov	x0, x1
	mov	x20, x21
	cmp	x20, x0
	cset	x0, gt
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L47
	mov	x0, #-1
	str	x0, [x1]
	mov	x0, #-1
	b	L49
L47:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L49:
	str	x0, [x19]
	b	L56
L50:
	mov	x0, x1
	cmp	x19, x0
	cset	x0, gt
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L54
	mov	x0, #-1
	str	x0, [x1]
	mov	x0, #-1
	b	L56
L54:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L56:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_semver_compare */

.text
.balign 4
.globl _builder_semver_satisfies
_builder_semver_satisfies:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L62
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x19, x0
	bl	_builder_semver_satisfies_one
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #0
	beq	L60
	bl	_builder_semver_satisfies
	str	x0, [x19]
	b	L63
L60:
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	L63
L62:
	mov	x0, #1
L63:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_semver_satisfies */

.text
.balign 4
.globl _builder_semver_to_string
_builder_semver_to_string:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x19
	bl	_builder_semver_vmajor
	bl	_donna_int_to_string
	adrp	x1, _str163@page
	add	x1, x1, _str163@pageoff
	bl	___rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	_builder_semver_vminor
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	adrp	x1, _str168@page
	add	x1, x1, _str168@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_semver_vpatch
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_semver_to_string */

.text
.balign 4
_builder_semver_satisfies_one:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L72
	cmp	x2, #1
	beq	L71
	cmp	x2, #2
	beq	L70
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_builder_semver_compare
	cmp	x0, #0
	cset	x0, lt
	b	L73
L70:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_builder_semver_compare
	cmp	x0, #0
	cset	x0, le
	b	L73
L71:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_builder_semver_compare
	cmp	x0, #0
	cset	x0, gt
	b	L73
L72:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_builder_semver_compare
	cmp	x0, #0
	cset	x0, ge
L73:
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_semver_satisfies_one */

.text
.balign 4
_builder_semver_split_and:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	adrp	x1, _str204@page
	add	x1, x1, _str204@pageoff
	mov	x19, x0
	bl	_donna_string_index_of
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmn	x19, #1
	cset	x1, eq
	cmp	x1, #1
	beq	L76
	mov	x2, x19
	mov	x1, #0
	mov	x20, x0
	bl	_donna_string_slice
	bl	_donna_string_trim
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, #5
	add	x22, x19, x1
	mov	x21, x0
	bl	_donna_string_length
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	sub	x2, x2, x19
	mov	x3, #5
	sub	x2, x2, x3
	bl	_donna_string_slice
	bl	_donna_string_trim
	bl	_builder_semver_split_and
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L77
L76:
	bl	_donna_string_trim
	mov	x19, x0
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
L77:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_semver_split_and */

.text
.balign 4
_builder_semver_collect_constraints:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L82
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_builder_semver_parse_one
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L81
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
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
	bl	_builder_semver_collect_constraints
	str	x0, [x19]
	b	L84
L81:
	mov	x1, x20
	bl	_builder_semver_collect_constraints
	str	x0, [x19]
	b	L84
L82:
	mov	x0, x20
	bl	_donna_list_reverse
L84:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_semver_collect_constraints */

.text
.balign 4
_builder_semver_parse_one:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	adrp	x1, _str257@page
	add	x1, x1, _str257@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L111
	adrp	x1, _str282@page
	add	x1, x1, _str282@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L106
	adrp	x1, _str307@page
	add	x1, x1, _str307@pageoff
	mov	x20, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L100
	adrp	x1, _str332@page
	add	x1, x1, _str332@pageoff
	mov	x21, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L94
	bl	_donna_string_trim
	bl	_builder_semver_parse
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L91
	mov	x1, #8
	add	x0, x0, x1
	ldr	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x23, x0
	mov	x0, #0
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
	b	L93
L91:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x22]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L93:
	str	x0, [x21]
	b	L99
L94:
	mov	x22, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x22
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	_donna_string_slice
	bl	_donna_string_trim
	bl	_builder_semver_parse
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L96
	mov	x1, #8
	add	x0, x0, x1
	ldr	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x23, x0
	mov	x0, #3
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
	b	L98
L96:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x22]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L98:
	str	x0, [x21]
L99:
	str	x0, [x20]
	b	L105
L100:
	mov	x21, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x21
	mov	x2, #2
	sub	x2, x1, x2
	mov	x1, #2
	bl	_donna_string_slice
	bl	_donna_string_trim
	bl	_builder_semver_parse
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L102
	mov	x1, #8
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	mov	x0, #2
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L104
L102:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x21]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L104:
	str	x0, [x20]
L105:
	str	x0, [x19]
	b	L115
L106:
	mov	x20, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x20
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	_donna_string_slice
	bl	_donna_string_trim
	bl	_builder_semver_parse
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L108
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
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
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L110
L108:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x20]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L110:
	str	x0, [x19]
	b	L115
L111:
	mov	x19, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #2
	sub	x2, x1, x2
	mov	x1, #2
	bl	_donna_string_slice
	bl	_donna_string_trim
	bl	_builder_semver_parse
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L113
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
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L115
L113:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L115:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_semver_parse_one */

.text
.balign 4
_builder_semver_vmajor:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_semver_vmajor */

.text
.balign 4
_builder_semver_vminor:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_semver_vminor */

.text
.balign 4
_builder_semver_vpatch:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_semver_vpatch */

.text
.balign 4
_builder_semver_parse_nat:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	_donna_string_length
	mov	x2, x0
	mov	x0, x19
	mov	x3, #0
	mov	x1, #0
	bl	_builder_semver_parse_nat_loop
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_semver_parse_nat */

.text
.balign 4
_builder_semver_parse_nat_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x3
	cmp	x1, x2
	mov	x22, x2
	cset	x2, ge
	cmp	x2, #1
	beq	L129
	mov	x21, x1
	mov	x19, x0
	bl	_donna_string_char_at
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x19
	cmp	x3, #48
	cset	x4, ge
	cmp	x3, #57
	cset	x5, le
	and	x4, x4, x5
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	cmp	x4, #1
	beq	L128
	str	x20, [x19]
	mov	x0, x20
	b	L130
L128:
	mov	x4, #1
	add	x1, x1, x4
	mov	x4, #10
	mul	x4, x20, x4
	add	x3, x3, x4
	mov	x4, #48
	sub	x3, x3, x4
	bl	_builder_semver_parse_nat_loop
	str	x0, [x19]
	b	L130
L129:
	mov	x0, x20
L130:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_semver_parse_nat_loop */

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

