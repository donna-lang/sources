.data
.balign 8
__rt_fmt_ld:
	.ascii "%ld"
	.byte 0
/* end data */

.data
.balign 8
str40:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str54:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str167:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str192:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str210:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str218:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
str226:
	.byte 13
	.byte 0
/* end data */

.data
.balign 8
str234:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str248:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str289:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str374:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str416:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str444:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str460:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str468:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl donna_string_length
donna_string_length:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	strlen
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_length, @function
.size donna_string_length, .-donna_string_length
/* end function donna_string_length */

.text
.balign 16
.globl donna_string_concat
donna_string_concat:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	__rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_concat, @function
.size donna_string_concat, .-donna_string_concat
/* end function donna_string_concat */

.text
.balign 16
.globl donna_string_equal
donna_string_equal:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	strcmp
	cmp	x0, #0
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_equal, @function
.size donna_string_equal, .-donna_string_equal
/* end function donna_string_equal */

.text
.balign 16
.globl donna_string_is_empty
donna_string_is_empty:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	strlen
	cmp	x0, #0
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_is_empty, @function
.size donna_string_is_empty, .-donna_string_is_empty
/* end function donna_string_is_empty */

.text
.balign 16
.globl donna_string_char_at
donna_string_char_at:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	add	x0, x0, x1
	ldrb	w0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_char_at, @function
.size donna_string_char_at, .-donna_string_char_at
/* end function donna_string_char_at */

.text
.balign 16
.globl donna_string_char_str
donna_string_char_str:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	add	x0, x0, x1
	mov	x1, #1
	bl	strndup
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_char_str, @function
.size donna_string_char_str, .-donna_string_char_str
/* end function donna_string_char_str */

.text
.balign 16
.globl donna_string_slice
donna_string_slice:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x17, x2
	mov	x2, x1
	mov	x1, x17
	add	x0, x2, x0
	bl	strndup
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_slice, @function
.size donna_string_slice, .-donna_string_slice
/* end function donna_string_slice */

.text
.balign 16
.globl donna_string_starts_with
donna_string_starts_with:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	mov	x20, x0
	mov	x0, x19
	bl	strlen
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	strlen
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	cmp	x1, x2
	cset	x2, gt
	cmp	x2, #1
	beq	.L16
	bl	strndup
	mov	x1, x19
	bl	strcmp
	cmp	x0, #0
	cset	x0, eq
	b	.L17
.L16:
	mov	x0, #0
.L17:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_starts_with, @function
.size donna_string_starts_with, .-donna_string_starts_with
/* end function donna_string_starts_with */

.text
.balign 16
.globl donna_string_ends_with
donna_string_ends_with:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	mov	x20, x0
	mov	x0, x19
	bl	strlen
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	strlen
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	cmp	x1, x2
	cset	x3, gt
	cmp	x3, #1
	beq	.L20
	sub	x2, x2, x1
	add	x0, x0, x2
	bl	strndup
	mov	x1, x19
	bl	strcmp
	cmp	x0, #0
	cset	x0, eq
	b	.L21
.L20:
	mov	x0, #0
.L21:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_ends_with, @function
.size donna_string_ends_with, .-donna_string_ends_with
/* end function donna_string_ends_with */

.text
.balign 16
.globl donna_string_from_int
donna_string_from_int:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	__rt_int_to_str
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_from_int, @function
.size donna_string_from_int, .-donna_string_from_int
/* end function donna_string_from_int */

.text
.balign 16
.globl donna_string_repeat
donna_string_repeat:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, str40
	add	x2, x2, #:lo12:str40
	bl	donna_string_repeat_helper
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_repeat, @function
.size donna_string_repeat, .-donna_string_repeat
/* end function donna_string_repeat */

.text
.balign 16
donna_string_repeat_helper:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x2
	cmp	x1, #0
	cset	x2, le
	cmp	x2, #1
	beq	.L28
	mov	x2, #1
	sub	x1, x1, x2
	mov	x20, x1
	mov	x1, x19
	bl	__rt_str_concat
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	donna_string_repeat_helper
.L28:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_repeat_helper, @function
.size donna_string_repeat_helper, .-donna_string_repeat_helper
/* end function donna_string_repeat_helper */

.text
.balign 16
.globl donna_string_reverse
donna_string_reverse:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	strlen
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x1, x1, x2
	adrp	x2, str54
	add	x2, x2, #:lo12:str54
	bl	donna_string_reverse_helper
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_reverse, @function
.size donna_string_reverse, .-donna_string_reverse
/* end function donna_string_reverse */

.text
.balign 16
donna_string_reverse_helper:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x2
	cmp	x20, #0
	cset	x1, lt
	cmp	x1, #1
	beq	.L33
	mov	x21, x0
	add	x0, x19, x20
	mov	x1, #1
	bl	strndup
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	sub	x20, x20, x2
	bl	__rt_str_concat
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	donna_string_reverse_helper
.L33:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_reverse_helper, @function
.size donna_string_reverse_helper, .-donna_string_reverse_helper
/* end function donna_string_reverse_helper */

.text
.balign 16
.globl donna_string_contains
donna_string_contains:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_string_index_of
	cmp	x0, #0
	cset	x0, ge
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_contains, @function
.size donna_string_contains, .-donna_string_contains
/* end function donna_string_contains */

.text
.balign 16
.globl donna_string_index_of
donna_string_index_of:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #0
	bl	donna_string_index_of_from
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_index_of, @function
.size donna_string_index_of, .-donna_string_index_of
/* end function donna_string_index_of */

.text
.balign 16
.globl donna_string_index_of_from
donna_string_index_of_from:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	bl	strlen
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x22, x0
	mov	x0, x21
	bl	strlen
	mov	x1, x0
	mov	x0, x22
	add	x2, x20, x1
	cmp	x2, x19
	cset	x2, gt
	cmp	x2, #1
	beq	.L43
	mov	x19, x0
	add	x0, x0, x20
	bl	strndup
	mov	x1, x21
	mov	x21, x1
	bl	strcmp
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L41
	mov	x2, #1
	add	x2, x20, x2
	bl	donna_string_index_of_from
	str	x0, [x19]
	b	.L44
.L41:
	mov	x0, x20
	str	x0, [x19]
	b	.L44
.L43:
	mov	x0, #-1
.L44:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_index_of_from, @function
.size donna_string_index_of_from, .-donna_string_index_of_from
/* end function donna_string_index_of_from */

.text
.balign 16
.globl donna_string_split
donna_string_split:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x19
	bl	strlen
	mov	x21, x0
	mov	x0, x20
	bl	strlen
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	cmp	x3, #0
	cset	x0, eq
	cmp	x0, #1
	beq	.L47
	adrp	x6, donna_nil
	add	x6, x6, #:lo12:donna_nil
	mov	x5, #0
	mov	x4, #0
	mov	x0, x19
	bl	donna_string_split_helper
	b	.L48
.L47:
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
.L48:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_split, @function
.size donna_string_split, .-donna_string_split
/* end function donna_string_split */

.text
.balign 16
donna_string_split_helper:
	hint	#34
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [x29, 88]
	str	x20, [x29, 80]
	str	x21, [x29, 72]
	str	x22, [x29, 64]
	str	x23, [x29, 56]
	str	x24, [x29, 48]
	str	x25, [x29, 40]
	str	x26, [x29, 32]
	mov	x25, x6
	mov	x24, x5
	mov	x23, x4
	mov	x22, x3
	add	x26, x22, x24
	cmp	x26, x2
	mov	x21, x2
	cset	x2, gt
	add	x7, x0, x23
	str	x7, [x29, 16]
	cmp	x2, #1
	beq	.L54
	mov	x19, x0
	add	x0, x0, x24
	mov	x20, x1
	mov	x1, x22
	bl	strndup
	mov	x1, x20
	mov	x20, x1
	bl	strcmp
	mov	x6, x25
	mov	x5, x24
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x8, x0
	mov	x0, x19
	ldr	x7, [x29, 16]
	cmp	x8, #0
	cset	x8, eq
	mov	x9, #16
	sub	sp, sp, x9
	mov	x19, sp
	cmp	x8, #1
	beq	.L52
	mov	x7, #1
	add	x5, x5, x7
	mov	x20, x6
	mov	x25, x3
	mov	x24, x2
	mov	x21, x0
	bl	donna_string_split_helper
	str	x0, [x19]
	b	.L56
.L52:
	mov	x20, x6
	mov	x25, x3
	mov	x24, x2
	mov	x21, x0
	mov	x0, x7
	mov	x23, x1
	sub	x1, x5, x4
	bl	strndup
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x3, x25
	mov	x2, x24
	mov	x1, x23
	mov	x6, x0
	mov	x0, x22
	mov	x5, #1
	str	x5, [x6]
	mov	x5, #8
	add	x5, x6, x5
	str	x21, [x5]
	mov	x5, #16
	add	x5, x6, x5
	str	x20, [x5]
	mov	x5, x4
	bl	donna_string_split_helper
	str	x0, [x19]
	b	.L56
.L54:
	mov	x0, x7
	mov	x20, x25
	mov	x4, x23
	mov	x2, x21
	sub	x1, x2, x4
	bl	strndup
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x6, x20
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x6, [x1]
	bl	donna_string_list_reverse
.L56:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
.type donna_string_split_helper, @function
.size donna_string_split_helper, .-donna_string_split_helper
/* end function donna_string_split_helper */

.text
.balign 16
donna_string_list_reverse:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	donna_string_list_reverse_helper
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_list_reverse, @function
.size donna_string_list_reverse, .-donna_string_list_reverse
/* end function donna_string_list_reverse */

.text
.balign 16
donna_string_list_reverse_helper:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L61
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	donna_string_list_reverse_helper
	b	.L62
.L61:
	mov	x0, x19
.L62:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_list_reverse_helper, @function
.size donna_string_list_reverse_helper, .-donna_string_list_reverse_helper
/* end function donna_string_list_reverse_helper */

.text
.balign 16
.globl donna_string_trim_start
donna_string_trim_start:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	strlen
	mov	x2, x0
	mov	x0, x19
	mov	x1, #0
	bl	donna_string_trim_start_from
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_trim_start, @function
.size donna_string_trim_start, .-donna_string_trim_start
/* end function donna_string_trim_start */

.text
.balign 16
donna_string_trim_start_from:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	cmp	x1, x2
	mov	x22, x2
	cset	x2, ge
	cmp	x2, #1
	beq	.L70
	add	x20, x0, x1
	mov	x21, x1
	mov	x1, #1
	mov	x19, x0
	mov	x0, x20
	bl	strndup
	bl	donna_string_is_ws
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	.L69
	mov	x0, x20
	sub	x1, x2, x1
	bl	strndup
	str	x0, [x19]
	b	.L71
.L69:
	mov	x3, #1
	add	x1, x1, x3
	bl	donna_string_trim_start_from
	str	x0, [x19]
	b	.L71
.L70:
	adrp	x0, str167
	add	x0, x0, #:lo12:str167
.L71:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_trim_start_from, @function
.size donna_string_trim_start_from, .-donna_string_trim_start_from
/* end function donna_string_trim_start_from */

.text
.balign 16
.globl donna_string_trim_end
donna_string_trim_end:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	strlen
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x1, x1, x2
	bl	donna_string_trim_end_to
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_trim_end, @function
.size donna_string_trim_end, .-donna_string_trim_end
/* end function donna_string_trim_end */

.text
.balign 16
donna_string_trim_end_to:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	cmp	x1, #0
	cset	x2, lt
	cmp	x2, #1
	beq	.L78
	mov	x19, x0
	add	x0, x0, x1
	mov	x20, x1
	mov	x1, #1
	bl	strndup
	bl	donna_string_is_ws
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L77
	mov	x2, #1
	add	x1, x1, x2
	bl	strndup
	str	x0, [x19]
	b	.L79
.L77:
	mov	x2, #1
	sub	x1, x1, x2
	bl	donna_string_trim_end_to
	str	x0, [x19]
	b	.L79
.L78:
	adrp	x0, str192
	add	x0, x0, #:lo12:str192
.L79:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_trim_end_to, @function
.size donna_string_trim_end_to, .-donna_string_trim_end_to
/* end function donna_string_trim_end_to */

.text
.balign 16
.globl donna_string_trim
donna_string_trim:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_string_trim_start
	bl	donna_string_trim_end
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_trim, @function
.size donna_string_trim, .-donna_string_trim
/* end function donna_string_trim */

.text
.balign 16
donna_string_is_ws:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	adrp	x1, str210
	add	x1, x1, #:lo12:str210
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	cset	x1, eq
	cmp	x1, #1
	beq	.L91
	adrp	x1, str218
	add	x1, x1, #:lo12:str218
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L89
	adrp	x1, str226
	add	x1, x1, #:lo12:str226
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	.L86
	adrp	x1, str234
	add	x1, x1, #:lo12:str234
	bl	strcmp
	cmp	x0, #0
	cset	x0, eq
	str	x0, [x20]
	b	.L88
.L86:
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
.L88:
	str	x0, [x19]
	b	.L92
.L89:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L92
.L91:
	mov	x0, #1
.L92:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_is_ws, @function
.size donna_string_is_ws, .-donna_string_is_ws
/* end function donna_string_is_ws */

.text
.balign 16
.globl donna_string_replace
donna_string_replace:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	bl	strlen
	mov	x22, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	cmp	x4, #0
	cset	x5, eq
	cmp	x5, #1
	beq	.L95
	adrp	x7, str248
	add	x7, x7, #:lo12:str248
	mov	x6, #0
	mov	x5, #0
	bl	donna_string_replace_helper
.L95:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_replace, @function
.size donna_string_replace, .-donna_string_replace
/* end function donna_string_replace */

.text
.balign 16
donna_string_replace_helper:
	hint	#34
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [x29, 88]
	str	x20, [x29, 80]
	str	x21, [x29, 72]
	str	x22, [x29, 64]
	str	x23, [x29, 56]
	str	x24, [x29, 48]
	str	x25, [x29, 40]
	str	x26, [x29, 32]
	mov	x26, x7
	mov	x25, x6
	mov	x23, x4
	mov	x22, x3
	mov	x24, x5
	add	x5, x23, x25
	str	x5, [x29, 16]
	cmp	x5, x22
	mov	x21, x2
	cset	x2, gt
	add	x7, x0, x24
	str	x7, [x29, 24]
	cmp	x2, #1
	beq	.L101
	mov	x19, x0
	add	x0, x0, x25
	mov	x20, x1
	mov	x1, x23
	bl	strndup
	mov	x1, x20
	mov	x20, x1
	bl	strcmp
	mov	x6, x25
	mov	x5, x24
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x8, x0
	mov	x0, x19
	ldr	x7, [x29, 24]
	ldr	x25, [x29, 16]
	cmp	x8, #0
	cset	x8, eq
	mov	x9, #16
	sub	sp, sp, x9
	mov	x19, sp
	cmp	x8, #1
	beq	.L99
	mov	x7, #1
	add	x6, x6, x7
	mov	x7, x26
	mov	x24, x4
	mov	x23, x3
	mov	x22, x2
	mov	x20, x0
	bl	donna_string_replace_helper
	str	x0, [x19]
	b	.L103
.L99:
	mov	x24, x4
	mov	x23, x3
	mov	x22, x2
	mov	x20, x0
	mov	x0, x7
	mov	x21, x1
	sub	x1, x6, x5
	bl	strndup
	mov	x1, x0
	mov	x0, x26
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	mov	x1, x22
	bl	__rt_str_concat
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x7, x0
	mov	x0, x20
	mov	x6, x5
	bl	donna_string_replace_helper
	str	x0, [x19]
	b	.L103
.L101:
	mov	x0, x7
	mov	x19, x26
	mov	x5, x24
	mov	x3, x22
	sub	x1, x3, x5
	bl	strndup
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
.L103:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
.type donna_string_replace_helper, @function
.size donna_string_replace_helper, .-donna_string_replace_helper
/* end function donna_string_replace_helper */

.text
.balign 16
.globl donna_string_join
donna_string_join:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L112
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L108
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L109
.L108:
	mov	x2, #16
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L109:
	cmp	w2, #0
	bne	.L111
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x20, x1
	bl	__rt_str_concat
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_string_join
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L113
.L111:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L113
.L112:
	adrp	x0, str289
	add	x0, x0, #:lo12:str289
.L113:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_join, @function
.size donna_string_join, .-donna_string_join
/* end function donna_string_join */

.text
.balign 16
.globl donna_string_pad_left
donna_string_pad_left:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x1
	mov	x19, x0
	mov	x0, x2
	mov	x20, x0
	mov	x0, x19
	bl	strlen
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	cmp	x2, x1
	cset	x3, ge
	cmp	x3, #1
	beq	.L116
	sub	x1, x1, x2
	bl	donna_string_repeat
	mov	x1, x19
	bl	__rt_str_concat
	b	.L117
.L116:
	mov	x0, x19
.L117:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_string_pad_left, @function
.size donna_string_pad_left, .-donna_string_pad_left
/* end function donna_string_pad_left */

.text
.balign 16
.globl donna_string_is_digits
donna_string_is_digits:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	strlen
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	cset	x1, eq
	cmp	x1, #1
	beq	.L120
	mov	x1, #0
	bl	donna_string_all_digits
	b	.L121
.L120:
	mov	x0, #0
.L121:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_is_digits, @function
.size donna_string_is_digits, .-donna_string_is_digits
/* end function donna_string_is_digits */

.text
.balign 16
donna_string_all_digits:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	cmp	x1, x2
	cset	x3, eq
	cmp	x3, #1
	beq	.L131
	add	x3, x0, x1
	ldrb	w3, [x3]
	cmp	x3, #48
	cset	x4, lt
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	cmp	x4, #1
	beq	.L129
	cmp	x3, #57
	cset	x3, gt
	mov	x4, #16
	sub	sp, sp, x4
	mov	x20, sp
	cmp	x3, #1
	beq	.L126
	mov	x3, #1
	add	x1, x1, x3
	bl	donna_string_all_digits
	str	x0, [x20]
	b	.L128
.L126:
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
.L128:
	str	x0, [x19]
	b	.L132
.L129:
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L132
.L131:
	mov	x0, #1
.L132:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_all_digits, @function
.size donna_string_all_digits, .-donna_string_all_digits
/* end function donna_string_all_digits */

.text
.balign 16
.globl donna_string_to_int
donna_string_to_int:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	strlen
	mov	x2, x0
	mov	x0, x19
	mov	x1, #0
	bl	donna_string_trim_start_from
	mov	x19, x0
	bl	strlen
	mov	x20, x0
	mov	x0, x19
	cmp	x20, #0
	cset	x1, eq
	cmp	x1, #1
	beq	.L137
	mov	x1, #1
	mov	x19, x0
	bl	strndup
	adrp	x1, str374
	add	x1, x1, #:lo12:str374
	bl	strcmp
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x1, #1
	beq	.L136
	mov	x3, #0
	mov	x1, #0
	bl	donna_string_parse_digits
	str	x0, [x19]
	b	.L138
.L136:
	mov	x3, #0
	mov	x1, #1
	bl	donna_string_parse_digits
	mov	x1, x0
	mov	x0, #0
	sub	x0, x0, x1
	str	x0, [x19]
	b	.L138
.L137:
	mov	x0, #0
.L138:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_to_int, @function
.size donna_string_to_int, .-donna_string_to_int
/* end function donna_string_to_int */

.text
.balign 16
donna_string_parse_digits:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x4, x3
	cmp	x1, x2
	cset	x3, ge
	cmp	x3, #1
	beq	.L148
	add	x3, x0, x1
	ldrb	w3, [x3]
	mov	x5, #48
	sub	x3, x3, x5
	cmp	x3, #0
	cset	x5, lt
	mov	x6, #16
	sub	sp, sp, x6
	mov	x19, sp
	cmp	x5, #1
	beq	.L146
	cmp	x3, #9
	cset	x5, gt
	mov	x6, #16
	sub	sp, sp, x6
	mov	x20, sp
	cmp	x5, #1
	beq	.L143
	mov	x5, #1
	add	x1, x1, x5
	mov	x5, #10
	mul	x4, x4, x5
	add	x3, x3, x4
	bl	donna_string_parse_digits
	str	x0, [x20]
	b	.L145
.L143:
	mov	x0, x4
	str	x0, [x20]
.L145:
	str	x0, [x19]
	b	.L149
.L146:
	mov	x0, x4
	str	x0, [x19]
	b	.L149
.L148:
	mov	x0, x4
.L149:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_parse_digits, @function
.size donna_string_parse_digits, .-donna_string_parse_digits
/* end function donna_string_parse_digits */

.text
.balign 16
.globl donna_string_lowercase
donna_string_lowercase:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	strlen
	mov	x2, x0
	mov	x0, x19
	adrp	x3, str416
	add	x3, x3, #:lo12:str416
	mov	x1, #0
	bl	donna_string_lowercase_helper
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_lowercase, @function
.size donna_string_lowercase, .-donna_string_lowercase
/* end function donna_string_lowercase */

.text
.balign 16
donna_string_lowercase_helper:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x3
	cmp	x20, x2
	cset	x1, ge
	cmp	x1, #1
	beq	.L159
	mov	x22, x0
	add	x0, x19, x20
	ldrb	w0, [x0]
	cmp	x0, #65
	cset	x1, ge
	cmp	x0, #90
	cset	x3, le
	and	x1, x1, x3
	mov	x23, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	.L157
	mov	x0, x22
	mov	x1, x20
	mov	x22, x0
	mov	x0, x19
	bl	donna_string_char_str
	mov	x1, x0
	str	x1, [x21]
	mov	x0, x22
	mov	x2, x23
	b	.L158
.L157:
	mov	x1, #32
	add	x0, x0, x1
	bl	donna_string_char_from_code
	mov	x2, x23
	mov	x1, x0
	mov	x0, x22
	str	x1, [x21]
.L158:
	mov	x21, x2
	mov	x2, #1
	add	x20, x20, x2
	bl	__rt_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	bl	donna_string_lowercase_helper
.L159:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type donna_string_lowercase_helper, @function
.size donna_string_lowercase_helper, .-donna_string_lowercase_helper
/* end function donna_string_lowercase_helper */

.text
.balign 16
.globl donna_string_to_slug
donna_string_to_slug:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_string_lowercase
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	strlen
	mov	x2, x0
	mov	x0, x19
	adrp	x3, str444
	add	x3, x3, #:lo12:str444
	mov	x1, #0
	bl	donna_string_slug_helper
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_string_to_slug, @function
.size donna_string_to_slug, .-donna_string_to_slug
/* end function donna_string_to_slug */

.text
.balign 16
donna_string_slug_helper:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x3
	cmp	x20, x2
	cset	x1, ge
	cmp	x1, #1
	beq	.L173
	mov	x22, x0
	add	x0, x19, x20
	ldrb	w0, [x0]
	cmp	x0, #32
	cset	x1, eq
	mov	x23, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	.L169
	bl	donna_string_is_slug_char
	mov	x2, x23
	mov	x1, x0
	mov	x0, x22
	mov	x24, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	.L167
	adrp	x1, str468
	add	x1, x1, #:lo12:str468
	str	x1, [x22]
	mov	x2, x24
	adrp	x1, str468
	add	x1, x1, #:lo12:str468
	b	.L168
.L167:
	mov	x1, x20
	mov	x23, x0
	mov	x0, x19
	bl	donna_string_char_str
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	str	x1, [x22]
.L168:
	str	x1, [x21]
	b	.L172
.L169:
	mov	x0, x22
	mov	x2, x23
	adrp	x1, str460
	add	x1, x1, #:lo12:str460
	str	x1, [x21]
	adrp	x1, str460
	add	x1, x1, #:lo12:str460
.L172:
	mov	x21, x2
	mov	x2, #1
	add	x20, x20, x2
	bl	__rt_str_concat
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	bl	donna_string_slug_helper
.L173:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type donna_string_slug_helper, @function
.size donna_string_slug_helper, .-donna_string_slug_helper
/* end function donna_string_slug_helper */

.text
.balign 16
donna_string_is_slug_char:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #97
	cset	x1, ge
	cmp	x0, #122
	cset	x2, le
	and	x1, x1, x2
	cmp	x1, #1
	beq	.L179
	cmp	x0, #48
	cset	x1, ge
	cmp	x0, #57
	cset	x2, le
	and	x2, x1, x2
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x2, #1
	beq	.L177
	cmp	x0, #45
	cset	x0, eq
	str	x0, [x1]
	b	.L180
.L177:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
	b	.L180
.L179:
	mov	x0, #1
.L180:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type donna_string_is_slug_char, @function
.size donna_string_is_slug_char, .-donna_string_is_slug_char
/* end function donna_string_is_slug_char */

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

.text
.balign 16
__rt_int_to_str:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x19
	adrp	x1, __rt_fmt_ld
	add	x1, x1, #:lo12:__rt_fmt_ld
	mov	x19, x0
	bl	sprintf
	mov	x0, x19
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type __rt_int_to_str, @function
.size __rt_int_to_str, .-__rt_int_to_str
/* end function __rt_int_to_str */

.section .note.GNU-stack,"",@progbits
