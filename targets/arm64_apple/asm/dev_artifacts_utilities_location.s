.data
.balign 8
_str82:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str87:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str95:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str100:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str152:
	.ascii "src/"
	.byte 0
/* end data */

.text
.balign 4
.globl _utilities_location_Position
_utilities_location_Position:
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
/* end function utilities_location_Position */

.text
.balign 4
.globl _utilities_location_Span
_utilities_location_Span:
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
/* end function utilities_location_Span */

.text
.balign 4
.globl _utilities_location_zero
_utilities_location_zero:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x0
	mov	x0, #32
	bl	_malloc
	mov	x19, x0
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #16
	add	x1, x19, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #24
	add	x1, x19, x0
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #32
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function utilities_location_zero */

.text
.balign 4
.globl _utilities_location_from_positions
_utilities_location_from_positions:
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
/* end function utilities_location_from_positions */

.text
.balign 4
.globl _utilities_location_pos_line
_utilities_location_pos_line:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_location_pos_line */

.text
.balign 4
.globl _utilities_location_pos_col
_utilities_location_pos_col:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_location_pos_col */

.text
.balign 4
.globl _utilities_location_pos_offset
_utilities_location_pos_offset:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_location_pos_offset */

.text
.balign 4
.globl _utilities_location_span_file
_utilities_location_span_file:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_location_span_file */

.text
.balign 4
.globl _utilities_location_span_start
_utilities_location_span_start:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_location_span_start */

.text
.balign 4
.globl _utilities_location_span_end
_utilities_location_span_end:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_location_span_end */

.text
.balign 4
.globl _utilities_location_span_length
_utilities_location_span_length:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	_utilities_location_span_end
	bl	_utilities_location_pos_col
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_location_span_start
	bl	_utilities_location_pos_col
	sub	x0, x19, x0
	mov	x1, #1
	add	x0, x0, x1
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function utilities_location_span_length */

.text
.balign 4
.globl _utilities_location_label
_utilities_location_label:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	_utilities_location_span_start
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_location_span_file
	adrp	x1, _str82@page
	add	x1, x1, _str82@pageoff
	bl	___rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	_utilities_location_pos_line
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	adrp	x1, _str87@page
	add	x1, x1, _str87@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_location_pos_col
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function utilities_location_label */

.text
.balign 4
.globl _utilities_location_short_label
_utilities_location_short_label:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	_utilities_location_span_start
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_location_span_file
	bl	_utilities_location_strip_src_prefix
	adrp	x1, _str95@page
	add	x1, x1, _str95@pageoff
	bl	___rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	_utilities_location_pos_line
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	adrp	x1, _str100@page
	add	x1, x1, _str100@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_location_pos_col
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function utilities_location_short_label */

.text
.balign 4
.globl _utilities_location_merge
_utilities_location_merge:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	mov	x20, x0
	bl	_utilities_location_span_file
	mov	x21, x0
	mov	x0, x20
	bl	_utilities_location_span_start
	mov	x20, x0
	mov	x0, x19
	bl	_utilities_location_span_end
	mov	x19, x0
	mov	x0, #32
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function utilities_location_merge */

.text
.balign 4
.globl _utilities_location_position_at
_utilities_location_position_at:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x4, x1
	mov	x3, #1
	mov	x2, #1
	mov	x1, #0
	bl	_utilities_location_scan_pos
	ldp	x29, x30, [sp], 16
	ret
/* end function utilities_location_position_at */

.text
.balign 4
_utilities_location_scan_pos:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x24, x4
	mov	x22, x3
	mov	x21, x2
	cmp	x1, x24
	mov	x20, x1
	cset	x1, ge
	cmp	x1, #1
	beq	L38
	mov	x19, x0
	bl	_donna_string_length
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	cmp	x1, x4
	mov	x22, x2
	cset	x2, ge
	mov	x23, x3
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L36
	mov	x21, x1
	mov	x20, x0
	bl	_donna_string_char_at
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str135@page
	add	x1, x1, _str135@pageoff
	bl	_strcmp
	mov	x4, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x5, x0
	mov	x0, x20
	cmp	x5, #0
	cset	x5, eq
	mov	x6, #16
	sub	sp, sp, x6
	mov	x20, sp
	mov	x6, #1
	add	x1, x1, x6
	cmp	x5, #1
	beq	L34
	mov	x5, #1
	add	x3, x3, x5
	bl	_utilities_location_scan_pos
	str	x0, [x20]
	b	L35
L34:
	mov	x22, x2
	mov	x2, #1
	add	x2, x22, x2
	mov	x21, x4
	mov	x3, #1
	bl	_utilities_location_scan_pos
	str	x0, [x20]
L35:
	str	x0, [x19]
	b	L40
L36:
	mov	x21, x24
	mov	x20, x23
	mov	x0, #32
	bl	_malloc
	mov	x2, x22
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x19]
	b	L40
L38:
	mov	x20, x22
	mov	x19, x21
	mov	x21, x24
	mov	x0, #32
	bl	_malloc
	mov	x4, x21
	mov	x3, x20
	mov	x2, x19
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x4, [x1]
L40:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function utilities_location_scan_pos */

.text
.balign 4
_utilities_location_strip_src_prefix:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	adrp	x1, _str152@page
	add	x1, x1, _str152@pageoff
	mov	x19, x0
	bl	_donna_string_index_of
	mov	x1, x0
	mov	x0, x19
	cmn	x1, #1
	mov	x20, x1
	cset	x1, eq
	cmp	x1, #1
	beq	L46
	mov	x1, #4
	add	x21, x20, x1
	mov	x19, x0
	bl	_donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	sub	x2, x2, x1
	mov	x19, x0
	bl	_donna_string_slice
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x21, x1
	adrp	x1, _str152@page
	add	x1, x1, _str152@pageoff
	mov	x19, x0
	mov	x0, x20
	bl	_donna_string_index_of
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmn	x1, #1
	beq	L45
	mov	x0, x20
	bl	_utilities_location_strip_src_prefix
	str	x0, [x19]
	b	L46
L45:
	mov	x20, x0
	bl	_donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	sub	x2, x2, x1
	bl	_donna_string_slice
	str	x0, [x19]
L46:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function utilities_location_strip_src_prefix */

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

