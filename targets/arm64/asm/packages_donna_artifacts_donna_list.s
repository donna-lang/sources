.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl donna_list_length
donna_list_length:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L2
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_list_length
	mov	x1, #1
	add	x0, x0, x1
	b	.L3
.L2:
	mov	x0, #0
.L3:
	ldp	x29, x30, [sp], 16
	ret
.type donna_list_length, @function
.size donna_list_length, .-donna_list_length
/* end function donna_list_length */

.text
.balign 16
.globl donna_list_head
donna_list_head:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L6
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L7
.L6:
	mov	x0, x1
.L7:
	ldp	x29, x30, [sp], 16
	ret
.type donna_list_head, @function
.size donna_list_head, .-donna_list_head
/* end function donna_list_head */

.text
.balign 16
.globl donna_list_tail
donna_list_tail:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L10
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L11
.L10:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L11:
	ldp	x29, x30, [sp], 16
	ret
.type donna_list_tail, @function
.size donna_list_tail, .-donna_list_tail
/* end function donna_list_tail */

.text
.balign 16
.globl donna_list_is_empty
donna_list_is_empty:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L14
	mov	x0, #0
	b	.L15
.L14:
	mov	x0, #1
.L15:
	ldp	x29, x30, [sp], 16
	ret
.type donna_list_is_empty, @function
.size donna_list_is_empty, .-donna_list_is_empty
/* end function donna_list_is_empty */

.text
.balign 16
.globl donna_list_append
donna_list_append:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L18
	mov	x2, #8
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	donna_list_append
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L19
.L18:
	mov	x0, x1
.L19:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_append, @function
.size donna_list_append, .-donna_list_append
/* end function donna_list_append */

.text
.balign 16
.globl donna_list_reverse
donna_list_reverse:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	donna_list_reverse_helper
	ldp	x29, x30, [sp], 16
	ret
.type donna_list_reverse, @function
.size donna_list_reverse, .-donna_list_reverse
/* end function donna_list_reverse */

.text
.balign 16
donna_list_reverse_helper:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L24
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
	bl	donna_list_reverse_helper
	b	.L25
.L24:
	mov	x0, x19
.L25:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_reverse_helper, @function
.size donna_list_reverse_helper, .-donna_list_reverse_helper
/* end function donna_list_reverse_helper */

.text
.balign 16
.globl donna_list_sum
donna_list_sum:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L28
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_list_sum
	add	x0, x19, x0
	b	.L29
.L28:
	mov	x0, #0
.L29:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_sum, @function
.size donna_list_sum, .-donna_list_sum
/* end function donna_list_sum */

.text
.balign 16
.globl donna_list_nth
donna_list_nth:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x3, x0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [x3]
	cmp	x0, #0
	beq	.L35
	mov	x0, #8
	add	x0, x3, x0
	ldr	x0, [x0]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x3, [x3]
	cmp	x1, #0
	cset	x4, eq
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	cmp	x4, #1
	beq	.L34
	mov	x0, x3
	mov	x3, #1
	sub	x1, x1, x3
	bl	donna_list_nth
	str	x0, [x19]
	b	.L36
.L34:
	str	x0, [x19]
	b	.L36
.L35:
	mov	x0, x2
.L36:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_nth, @function
.size donna_list_nth, .-donna_list_nth
/* end function donna_list_nth */

.text
.balign 16
.globl donna_list_flatten
donna_list_flatten:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L39
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_list_flatten
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_append
	b	.L40
.L39:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L40:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_flatten, @function
.size donna_list_flatten, .-donna_list_flatten
/* end function donna_list_flatten */

.text
.balign 16
.globl donna_list_take
donna_list_take:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	cmp	x1, #0
	cset	x2, le
	cmp	x2, #1
	beq	.L46
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L44
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #1
	sub	x1, x1, x2
	bl	donna_list_take
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L47
.L44:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x19]
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	b	.L47
.L46:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L47:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_take, @function
.size donna_list_take, .-donna_list_take
/* end function donna_list_take */

.text
.balign 16
.globl donna_list_drop
donna_list_drop:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x1, #0
	cset	x2, le
	cmp	x2, #1
	beq	.L53
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L51
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #1
	sub	x1, x1, x2
	bl	donna_list_drop
	str	x0, [x19]
	b	.L53
.L51:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x19]
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L53:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_drop, @function
.size donna_list_drop, .-donna_list_drop
/* end function donna_list_drop */

.text
.balign 16
.globl donna_list_repeat
donna_list_repeat:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x0
	cmp	x1, #0
	cset	x0, le
	cmp	x0, #1
	beq	.L56
	mov	x0, #1
	sub	x1, x1, x0
	mov	x0, x20
	bl	donna_list_repeat
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L57
.L56:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L57:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_repeat, @function
.size donna_list_repeat, .-donna_list_repeat
/* end function donna_list_repeat */

.text
.balign 16
.globl donna_list_range
donna_list_range:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x0
	cmp	x20, x1
	cset	x0, ge
	cmp	x0, #1
	beq	.L60
	mov	x0, #1
	add	x0, x20, x0
	bl	donna_list_range
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L61
.L60:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L61:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_range, @function
.size donna_list_range, .-donna_list_range
/* end function donna_list_range */

.text
.balign 16
.globl donna_list_contains_int
donna_list_contains_int:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L67
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	cmp	x1, x2
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L65
	bl	donna_list_contains_int
	str	x0, [x19]
	b	.L68
.L65:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L68
.L67:
	mov	x0, #0
.L68:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_contains_int, @function
.size donna_list_contains_int, .-donna_list_contains_int
/* end function donna_list_contains_int */

.text
.balign 16
.globl donna_list_contains_str
donna_list_contains_str:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L74
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x20, x1
	bl	donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L72
	bl	donna_list_contains_str
	str	x0, [x19]
	b	.L75
.L72:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L75
.L74:
	mov	x0, #0
.L75:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_contains_str, @function
.size donna_list_contains_str, .-donna_list_contains_str
/* end function donna_list_contains_str */

.text
.balign 16
.globl donna_list_zip_length
donna_list_zip_length:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	donna_list_length
	ldp	x29, x30, [sp], 16
	ret
.type donna_list_zip_length, @function
.size donna_list_zip_length, .-donna_list_zip_length
/* end function donna_list_zip_length */

.text
.balign 16
.globl donna_list_minimum
donna_list_minimum:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L87
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L85
	mov	x1, x21
	bl	donna_list_minimum
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x0, x20
	cset	x2, lt
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x2, #1
	beq	.L83
	mov	x0, x20
	str	x0, [x1]
	b	.L84
.L83:
	str	x0, [x1]
.L84:
	str	x0, [x19]
	b	.L88
.L85:
	mov	x0, x20
	str	x0, [x19]
	b	.L88
.L87:
	mov	x0, x21
.L88:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_minimum, @function
.size donna_list_minimum, .-donna_list_minimum
/* end function donna_list_minimum */

.text
.balign 16
.globl donna_list_maximum
donna_list_maximum:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L98
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L96
	mov	x1, x21
	bl	donna_list_maximum
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	cmp	x0, x20
	cset	x2, gt
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x2, #1
	beq	.L94
	mov	x0, x20
	str	x0, [x1]
	b	.L95
.L94:
	str	x0, [x1]
.L95:
	str	x0, [x19]
	b	.L99
.L96:
	mov	x0, x20
	str	x0, [x19]
	b	.L99
.L98:
	mov	x0, x21
.L99:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_maximum, @function
.size donna_list_maximum, .-donna_list_maximum
/* end function donna_list_maximum */

.text
.balign 16
.globl donna_list_is_sorted
donna_list_is_sorted:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L111
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	.L104
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	.L105
.L104:
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	cmp	x0, #0
	cset	x0, eq
	mov	x3, #1
	and	x0, x0, x3
	str	x0, [x2]
.L105:
	cmp	w0, #0
	bne	.L110
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
	ldr	x20, [x1]
	cmp	x0, x21
	cset	x0, le
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #1
	beq	.L109
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L112
.L109:
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_list_is_sorted
	str	x0, [x19]
	b	.L112
.L110:
	mov	x0, #1
	b	.L112
.L111:
	mov	x0, #1
.L112:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_is_sorted, @function
.size donna_list_is_sorted, .-donna_list_is_sorted
/* end function donna_list_is_sorted */

.text
.balign 16
.globl donna_list_map
donna_list_map:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L115
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	bl	donna_list_map
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	blr	x1
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L116
.L115:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L116:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_map, @function
.size donna_list_map, .-donna_list_map
/* end function donna_list_map */

.text
.balign 16
.globl donna_list_filter
donna_list_filter:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L121
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x20, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	mov	x0, x21
	blr	x20
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L120
	bl	donna_list_filter
	str	x0, [x19]
	b	.L122
.L120:
	bl	donna_list_filter
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L122
.L121:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L122:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_filter, @function
.size donna_list_filter, .-donna_list_filter
/* end function donna_list_filter */

.text
.balign 16
.globl donna_list_fold
donna_list_fold:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x2
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	.L125
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	blr	x20
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	bl	donna_list_fold
.L125:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_fold, @function
.size donna_list_fold, .-donna_list_fold
/* end function donna_list_fold */

.text
.balign 16
.globl donna_list_fold_right
donna_list_fold_right:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x3, [x0]
	cmp	x3, #0
	beq	.L128
	mov	x3, #8
	add	x3, x0, x3
	ldr	x19, [x3]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x20, x2
	bl	donna_list_fold_right
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	blr	x2
	b	.L129
.L128:
	mov	x0, x1
.L129:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_fold_right, @function
.size donna_list_fold_right, .-donna_list_fold_right
/* end function donna_list_fold_right */

.text
.balign 16
.globl donna_list_any
donna_list_any:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L135
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	blr	x20
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L133
	bl	donna_list_any
	str	x0, [x19]
	b	.L136
.L133:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L136
.L135:
	mov	x0, #0
.L136:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_any, @function
.size donna_list_any, .-donna_list_any
/* end function donna_list_any */

.text
.balign 16
.globl donna_list_all
donna_list_all:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L142
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	blr	x20
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L141
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L143
.L141:
	bl	donna_list_all
	str	x0, [x19]
	b	.L143
.L142:
	mov	x0, #1
.L143:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_all, @function
.size donna_list_all, .-donna_list_all
/* end function donna_list_all */

.text
.balign 16
.globl donna_list_find
donna_list_find:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x1
	mov	x1, x0
	mov	x0, x2
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L149
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x19, x0
	blr	x22
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L148
	mov	x0, x21
	mov	x2, x20
	bl	donna_list_find
	str	x0, [x19]
	b	.L150
.L148:
	str	x0, [x19]
	b	.L150
.L149:
	mov	x0, x20
.L150:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_find, @function
.size donna_list_find, .-donna_list_find
/* end function donna_list_find */

.text
.balign 16
.globl donna_list_flat_map
donna_list_flat_map:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L155
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	blr	x20
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L154
	mov	x3, #8
	add	x3, x2, x3
	ldr	x21, [x3]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	bl	donna_list_flat_map
	mov	x1, x0
	mov	x0, x20
	bl	donna_list_flat_map_join
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L156
.L154:
	bl	donna_list_flat_map
	str	x0, [x19]
	b	.L156
.L155:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L156:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_flat_map, @function
.size donna_list_flat_map, .-donna_list_flat_map
/* end function donna_list_flat_map */

.text
.balign 16
donna_list_flat_map_join:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L159
	mov	x2, #8
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	donna_list_flat_map_join
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L160
.L159:
	mov	x0, x1
.L160:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_flat_map_join, @function
.size donna_list_flat_map_join, .-donna_list_flat_map_join
/* end function donna_list_flat_map_join */

.text
.balign 16
.globl donna_list_count
donna_list_count:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L165
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	blr	x20
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L164
	bl	donna_list_count
	str	x0, [x19]
	b	.L166
.L164:
	bl	donna_list_count
	mov	x1, #1
	add	x0, x0, x1
	str	x0, [x19]
	b	.L166
.L165:
	mov	x0, #0
.L166:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_count, @function
.size donna_list_count, .-donna_list_count
/* end function donna_list_count */

.text
.balign 16
.globl donna_list_zip_with
donna_list_zip_with:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	ldr	x3, [x0]
	cmp	x3, #0
	beq	.L172
	mov	x3, #8
	add	x3, x0, x3
	ldr	x20, [x3]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x1]
	cmp	x3, #0
	beq	.L170
	mov	x3, #8
	add	x3, x1, x3
	ldr	x21, [x3]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x1, [x1]
	mov	x22, x2
	bl	donna_list_zip_with
	mov	x2, x22
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	blr	x2
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L173
.L170:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x19]
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	b	.L173
.L172:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L173:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_list_zip_with, @function
.size donna_list_zip_with, .-donna_list_zip_with
/* end function donna_list_zip_with */

.text
.balign 16
.globl donna_list_each
donna_list_each:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L176
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	blr	x20
	mov	x1, x20
	mov	x0, x19
	bl	donna_list_each
.L176:
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_list_each, @function
.size donna_list_each, .-donna_list_each
/* end function donna_list_each */

.section .note.GNU-stack,"",@progbits
