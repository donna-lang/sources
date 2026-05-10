.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str37:
	.ascii "--"
	.byte 0
/* end data */

.data
.balign 8
_str47:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str62:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str81:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str112:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str140:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
_str147:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
_str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str181:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str230:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
_argparse_argparse_collect_argv:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x2
	cmp	x0, x1
	cset	x2, ge
	cmp	x2, #1
	beq	L2
	mov	x22, x1
	mov	x1, #1
	add	x20, x0, x1
	bl	_donna_argv_get
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
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
	str	x19, [x3]
	bl	_argparse_argparse_collect_argv
	b	L4
L2:
	mov	x0, x19
	bl	_donna_list_reverse
L4:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function argparse_argparse_collect_argv */

.text
.balign 4
.globl _argparse_argparse_from_argv
_argparse_argparse_from_argv:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_donna_argv_count
	mov	x1, x0
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x0, #1
	bl	_argparse_argparse_collect_argv
	bl	_argparse_argparse_parse
	ldp	x29, x30, [sp], 16
	ret
/* end function argparse_argparse_from_argv */

.text
.balign 4
_argparse_argparse_key_of:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function argparse_argparse_key_of */

.text
.balign 4
_argparse_argparse_val_of:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function argparse_argparse_val_of */

.text
.balign 4
.globl _argparse_argparse_parse
_argparse_argparse_parse:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_argparse_argparse_parse_loop
	bl	_donna_list_reverse
	ldp	x29, x30, [sp], 16
	ret
/* end function argparse_argparse_parse */

.text
.balign 4
_argparse_argparse_parse_loop:
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
	mov	x23, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L43
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _str37@page
	add	x1, x1, _str37@pageoff
	mov	x19, x0
	mov	x0, x22
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L29
	adrp	x1, _str112@page
	add	x1, x1, _str112@pageoff
	mov	x20, x0
	mov	x0, x22
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L17
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	adrp	x1, _str164@page
	add	x1, x1, _str164@pageoff
	str	x1, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x22, [x1]
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
	str	x23, [x2]
	mov	x21, x0
	bl	_argparse_argparse_parse_loop
	str	x0, [x20]
	b	L28
L17:
	mov	x21, x0
	mov	x0, x22
	mov	x22, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x22
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #1
	bl	_donna_string_slice
	mov	x26, x0
	mov	x0, x21
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L25
	mov	x1, #8
	add	x1, x0, x1
	ldr	x25, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x24, [x1]
	adrp	x1, _str140@page
	add	x1, x1, _str140@pageoff
	mov	x22, x0
	mov	x0, x25
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	L22
	mov	x0, x24
	mov	x24, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	str	x26, [x24]
	mov	x1, #8
	add	x1, x24, x1
	str	x25, [x1]
	mov	x25, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x25
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x24, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x23, [x2]
	bl	_argparse_argparse_parse_loop
	str	x0, [x22]
	b	L24
L22:
	mov	x25, x26
	mov	x24, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	str	x25, [x24]
	mov	x1, #8
	add	x2, x24, x1
	adrp	x1, _str147@page
	add	x1, x1, _str147@pageoff
	str	x1, [x2]
	mov	x25, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x25
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x24, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x23, [x2]
	bl	_argparse_argparse_parse_loop
	str	x0, [x22]
L24:
	str	x0, [x21]
	b	L27
L25:
	mov	x0, x23
	mov	x23, x26
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x23, [x22]
	mov	x1, #8
	add	x2, x22, x1
	adrp	x1, _str128@page
	add	x1, x1, _str128@pageoff
	str	x1, [x2]
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
	mov	x23, x0
	mov	x0, #16
	add	x0, x1, x0
	str	x23, [x0]
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	bl	_argparse_argparse_parse_loop
	str	x0, [x21]
L27:
	str	x0, [x20]
L28:
	str	x0, [x19]
	b	L44
L29:
	mov	x20, x0
	mov	x0, x22
	mov	x21, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x21
	mov	x2, #2
	sub	x2, x1, x2
	mov	x1, #2
	bl	_donna_string_slice
	mov	x26, x0
	mov	x0, x20
	adrp	x1, _str47@page
	add	x1, x1, _str47@pageoff
	mov	x20, x0
	mov	x0, x26
	bl	_donna_string_index_of
	mov	x21, x0
	mov	x0, x20
	cmn	x21, #1
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L32
	mov	x2, x21
	mov	x1, #0
	mov	x22, x0
	mov	x0, x26
	bl	_donna_string_slice
	mov	x24, x0
	mov	x0, x22
	mov	x1, #1
	add	x25, x21, x1
	mov	x22, x0
	mov	x0, x26
	bl	_donna_string_length
	mov	x1, x25
	mov	x2, x0
	mov	x0, x22
	sub	x2, x2, x21
	mov	x3, #1
	sub	x2, x2, x3
	mov	x21, x0
	mov	x0, x26
	bl	_donna_string_slice
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x24, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x22, [x1]
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
	str	x23, [x2]
	bl	_argparse_argparse_parse_loop
	str	x0, [x20]
	b	L42
L32:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L39
	mov	x1, #8
	add	x1, x0, x1
	ldr	x25, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x24, [x1]
	adrp	x1, _str74@page
	add	x1, x1, _str74@pageoff
	mov	x22, x0
	mov	x0, x25
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	L36
	mov	x0, x24
	mov	x24, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	str	x26, [x24]
	mov	x1, #8
	add	x1, x24, x1
	str	x25, [x1]
	mov	x25, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x25
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x24, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x23, [x2]
	bl	_argparse_argparse_parse_loop
	str	x0, [x22]
	b	L38
L36:
	mov	x25, x26
	mov	x24, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	str	x25, [x24]
	mov	x1, #8
	add	x2, x24, x1
	adrp	x1, _str81@page
	add	x1, x1, _str81@pageoff
	str	x1, [x2]
	mov	x25, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x25
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x24, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x23, [x2]
	bl	_argparse_argparse_parse_loop
	str	x0, [x22]
L38:
	str	x0, [x21]
	b	L41
L39:
	mov	x0, x23
	mov	x23, x26
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x23, [x22]
	mov	x1, #8
	add	x2, x22, x1
	adrp	x1, _str62@page
	add	x1, x1, _str62@pageoff
	str	x1, [x2]
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
	str	x0, [x2]
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	bl	_argparse_argparse_parse_loop
	str	x0, [x21]
L41:
	str	x0, [x20]
L42:
	str	x0, [x19]
	b	L44
L43:
	mov	x0, x23
L44:
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
/* end function argparse_argparse_parse_loop */

.text
.balign 4
.globl _argparse_argparse_get
_argparse_argparse_get:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L50
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	_argparse_argparse_key_of
	mov	x1, x21
	mov	x21, x1
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L49
	mov	x0, x20
	bl	_argparse_argparse_get
	str	x0, [x19]
	b	L51
L49:
	bl	_argparse_argparse_val_of
	str	x0, [x19]
	b	L51
L50:
	adrp	x0, _str181@page
	add	x0, x0, _str181@pageoff
L51:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function argparse_argparse_get */

.text
.balign 4
.globl _argparse_argparse_has
_argparse_argparse_has:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L57
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_argparse_argparse_key_of
	mov	x1, x20
	mov	x20, x1
	bl	_donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L55
	bl	_argparse_argparse_has
	str	x0, [x19]
	b	L58
L55:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L58
L57:
	mov	x0, #0
L58:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function argparse_argparse_has */

.text
.balign 4
.globl _argparse_argparse_positional
_argparse_argparse_positional:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_argparse_argparse_positional_loop
	bl	_donna_list_reverse
	ldp	x29, x30, [sp], 16
	ret
/* end function argparse_argparse_positional */

.text
.balign 4
_argparse_argparse_positional_loop:
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
	beq	L66
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x19, x0
	bl	_argparse_argparse_key_of
	adrp	x1, _str230@page
	add	x1, x1, _str230@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L65
	mov	x0, x21
	mov	x1, x20
	mov	x21, x0
	bl	_argparse_argparse_positional_loop
	str	x0, [x19]
	b	L67
L65:
	bl	_argparse_argparse_val_of
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
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
	bl	_argparse_argparse_positional_loop
	str	x0, [x19]
	b	L67
L66:
	mov	x0, x20
L67:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function argparse_argparse_positional_loop */

