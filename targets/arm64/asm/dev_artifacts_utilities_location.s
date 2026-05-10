.data
.balign 8
str73:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str78:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str86:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str91:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str117:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str134:
	.ascii "src/"
	.byte 0
/* end data */

.text
.balign 16
.globl utilities_location_Position
utilities_location_Position:
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
	bl	malloc
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
.type utilities_location_Position, @function
.size utilities_location_Position, .-utilities_location_Position
/* end function utilities_location_Position */

.text
.balign 16
.globl utilities_location_Span
utilities_location_Span:
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
	bl	malloc
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
.type utilities_location_Span, @function
.size utilities_location_Span, .-utilities_location_Span
/* end function utilities_location_Span */

.text
.balign 16
.globl utilities_location_zero
utilities_location_zero:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, #0
	mov	x1, #1
	mov	x19, x0
	mov	x0, #1
	bl	utilities_location_Position
	mov	x1, x0
	mov	x0, x19
	mov	x2, x1
	bl	utilities_location_Span
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_location_zero, @function
.size utilities_location_zero, .-utilities_location_zero
/* end function utilities_location_zero */

.text
.balign 16
.globl utilities_location_from_positions
utilities_location_from_positions:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	utilities_location_Span
	ldp	x29, x30, [sp], 16
	ret
.type utilities_location_from_positions, @function
.size utilities_location_from_positions, .-utilities_location_from_positions
/* end function utilities_location_from_positions */

.text
.balign 16
.globl utilities_location_pos_line
utilities_location_pos_line:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type utilities_location_pos_line, @function
.size utilities_location_pos_line, .-utilities_location_pos_line
/* end function utilities_location_pos_line */

.text
.balign 16
.globl utilities_location_pos_col
utilities_location_pos_col:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type utilities_location_pos_col, @function
.size utilities_location_pos_col, .-utilities_location_pos_col
/* end function utilities_location_pos_col */

.text
.balign 16
.globl utilities_location_pos_offset
utilities_location_pos_offset:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type utilities_location_pos_offset, @function
.size utilities_location_pos_offset, .-utilities_location_pos_offset
/* end function utilities_location_pos_offset */

.text
.balign 16
.globl utilities_location_span_file
utilities_location_span_file:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type utilities_location_span_file, @function
.size utilities_location_span_file, .-utilities_location_span_file
/* end function utilities_location_span_file */

.text
.balign 16
.globl utilities_location_span_start
utilities_location_span_start:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type utilities_location_span_start, @function
.size utilities_location_span_start, .-utilities_location_span_start
/* end function utilities_location_span_start */

.text
.balign 16
.globl utilities_location_span_end
utilities_location_span_end:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type utilities_location_span_end, @function
.size utilities_location_span_end, .-utilities_location_span_end
/* end function utilities_location_span_end */

.text
.balign 16
.globl utilities_location_span_length
utilities_location_span_length:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	utilities_location_span_end
	bl	utilities_location_pos_col
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_location_span_start
	bl	utilities_location_pos_col
	sub	x0, x19, x0
	mov	x1, #1
	add	x0, x0, x1
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_location_span_length, @function
.size utilities_location_span_length, .-utilities_location_span_length
/* end function utilities_location_span_length */

.text
.balign 16
.globl utilities_location_label
utilities_location_label:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	utilities_location_span_start
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_location_span_file
	adrp	x1, str73
	add	x1, x1, #:lo12:str73
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	utilities_location_pos_line
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str78
	add	x1, x1, #:lo12:str78
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_location_pos_col
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_location_label, @function
.size utilities_location_label, .-utilities_location_label
/* end function utilities_location_label */

.text
.balign 16
.globl utilities_location_short_label
utilities_location_short_label:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	utilities_location_span_start
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_location_span_file
	bl	utilities_location_strip_src_prefix
	adrp	x1, str86
	add	x1, x1, #:lo12:str86
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	utilities_location_pos_line
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str91
	add	x1, x1, #:lo12:str91
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_location_pos_col
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_location_short_label, @function
.size utilities_location_short_label, .-utilities_location_short_label
/* end function utilities_location_short_label */

.text
.balign 16
.globl utilities_location_merge
utilities_location_merge:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	utilities_location_span_file
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_location_span_start
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	utilities_location_span_end
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	utilities_location_Span
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type utilities_location_merge, @function
.size utilities_location_merge, .-utilities_location_merge
/* end function utilities_location_merge */

.text
.balign 16
.globl utilities_location_position_at
utilities_location_position_at:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x4, x1
	mov	x3, #1
	mov	x2, #1
	mov	x1, #0
	bl	utilities_location_scan_pos
	ldp	x29, x30, [sp], 16
	ret
.type utilities_location_position_at, @function
.size utilities_location_position_at, .-utilities_location_position_at
/* end function utilities_location_position_at */

.text
.balign 16
utilities_location_scan_pos:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x23, x4
	mov	x22, x2
	mov	x20, x1
	mov	x1, x3
	cmp	x20, x23
	mov	x21, x1
	cset	x1, ge
	cmp	x1, #1
	beq	.L38
	mov	x19, x0
	bl	donna_string_length
	mov	x2, x23
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	cmp	x1, x3
	mov	x24, x2
	cset	x2, ge
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L36
	mov	x23, x1
	mov	x20, x0
	bl	donna_string_char_at
	mov	x1, x23
	mov	x23, x1
	adrp	x1, str117
	add	x1, x1, #:lo12:str117
	bl	strcmp
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x20
	cmp	x3, #0
	cset	x3, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x20, sp
	mov	x4, #1
	add	x1, x1, x4
	cmp	x3, #1
	beq	.L34
	mov	x3, #1
	add	x3, x21, x3
	mov	x4, x2
	mov	x2, x22
	bl	utilities_location_scan_pos
	str	x0, [x20]
	b	.L35
.L34:
	mov	x21, x2
	mov	x2, #1
	add	x2, x22, x2
	mov	x4, x21
	mov	x3, #1
	bl	utilities_location_scan_pos
	str	x0, [x20]
.L35:
	str	x0, [x19]
	b	.L40
.L36:
	mov	x2, x24
	mov	x1, x21
	mov	x0, x22
	bl	utilities_location_Position
	str	x0, [x19]
	b	.L40
.L38:
	mov	x2, x23
	mov	x1, x21
	mov	x0, x22
	bl	utilities_location_Position
.L40:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type utilities_location_scan_pos, @function
.size utilities_location_scan_pos, .-utilities_location_scan_pos
/* end function utilities_location_scan_pos */

.text
.balign 16
utilities_location_strip_src_prefix:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	adrp	x1, str134
	add	x1, x1, #:lo12:str134
	mov	x19, x0
	bl	donna_string_index_of
	mov	x1, x0
	mov	x0, x19
	cmn	x1, #1
	mov	x20, x1
	cset	x1, eq
	cmp	x1, #1
	beq	.L46
	mov	x1, #4
	add	x21, x20, x1
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	sub	x2, x2, x1
	mov	x19, x0
	bl	donna_string_slice
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x21, x1
	adrp	x1, str134
	add	x1, x1, #:lo12:str134
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_index_of
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmn	x1, #1
	beq	.L45
	mov	x0, x20
	bl	utilities_location_strip_src_prefix
	str	x0, [x19]
	b	.L46
.L45:
	mov	x20, x0
	bl	donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	sub	x2, x2, x1
	bl	donna_string_slice
	str	x0, [x19]
.L46:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type utilities_location_strip_src_prefix, @function
.size utilities_location_strip_src_prefix, .-utilities_location_strip_src_prefix
/* end function utilities_location_strip_src_prefix */

.text
.balign 16
__rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	strlen
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	bl	strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
