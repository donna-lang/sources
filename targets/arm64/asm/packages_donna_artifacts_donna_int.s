.data
.balign 8
__rt_fmt_ld:
	.ascii "%ld"
	.byte 0
/* end data */

.text
.balign 16
.globl donna_int_parse
donna_int_parse:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	atoi
	bl	donna_option_Some
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_parse, @function
.size donna_int_parse, .-donna_int_parse
/* end function donna_int_parse */

.text
.balign 16
.globl donna_int_to_string
donna_int_to_string:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	__rt_int_to_str
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_to_string, @function
.size donna_int_to_string, .-donna_int_to_string
/* end function donna_int_to_string */

.text
.balign 16
.globl donna_int_abs
donna_int_abs:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #0
	cset	x1, lt
	cmp	x1, #1
	bne	.L6
	mov	x1, #0
	sub	x0, x1, x0
.L6:
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_abs, @function
.size donna_int_abs, .-donna_int_abs
/* end function donna_int_abs */

.text
.balign 16
.globl donna_int_min
donna_int_min:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, x1
	cset	x2, le
	cmp	x2, #1
	beq	.L9
	mov	x0, x1
.L9:
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_min, @function
.size donna_int_min, .-donna_int_min
/* end function donna_int_min */

.text
.balign 16
.globl donna_int_max
donna_int_max:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, x1
	cset	x2, ge
	cmp	x2, #1
	beq	.L12
	mov	x0, x1
.L12:
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_max, @function
.size donna_int_max, .-donna_int_max
/* end function donna_int_max */

.text
.balign 16
.globl donna_int_clamp
donna_int_clamp:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, x1
	cset	x3, lt
	cmp	x3, #1
	beq	.L18
	cmp	x0, x2
	cset	x3, gt
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x3, #1
	beq	.L16
	str	x0, [x1]
	b	.L19
.L16:
	mov	x0, x2
	str	x0, [x1]
	b	.L19
.L18:
	mov	x0, x1
.L19:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_clamp, @function
.size donna_int_clamp, .-donna_int_clamp
/* end function donna_int_clamp */

.text
.balign 16
.globl donna_int_is_even
donna_int_is_even:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #2
	sdiv	x17, x0, x1
	msub	x0, x17, x1, x0
	cmp	x0, #0
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_is_even, @function
.size donna_int_is_even, .-donna_int_is_even
/* end function donna_int_is_even */

.text
.balign 16
.globl donna_int_is_odd
donna_int_is_odd:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #2
	sdiv	x17, x0, x1
	msub	x0, x17, x1, x0
	cmp	x0, #0
	cset	x0, ne
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_is_odd, @function
.size donna_int_is_odd, .-donna_int_is_odd
/* end function donna_int_is_odd */

.text
.balign 16
.globl donna_int_is_zero
donna_int_is_zero:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #0
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_is_zero, @function
.size donna_int_is_zero, .-donna_int_is_zero
/* end function donna_int_is_zero */

.text
.balign 16
.globl donna_int_is_positive
donna_int_is_positive:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #0
	cset	x0, gt
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_is_positive, @function
.size donna_int_is_positive, .-donna_int_is_positive
/* end function donna_int_is_positive */

.text
.balign 16
.globl donna_int_is_negative
donna_int_is_negative:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #0
	cset	x0, lt
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_is_negative, @function
.size donna_int_is_negative, .-donna_int_is_negative
/* end function donna_int_is_negative */

.text
.balign 16
.globl donna_int_sign
donna_int_sign:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	cmp	x0, #0
	cset	x1, lt
	cmp	x1, #1
	beq	.L36
	cmp	x0, #0
	cset	x0, gt
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	.L34
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L37
.L34:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
	b	.L37
.L36:
	mov	x0, #-1
.L37:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_sign, @function
.size donna_int_sign, .-donna_int_sign
/* end function donna_int_sign */

.text
.balign 16
.globl donna_int_pow
donna_int_pow:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	cmp	x1, #0
	cset	x2, eq
	cmp	x2, #1
	beq	.L40
	mov	x2, #1
	sub	x1, x1, x2
	mov	x19, x0
	bl	donna_int_pow
	mov	x1, x0
	mov	x0, x19
	mul	x0, x0, x1
	b	.L41
.L40:
	mov	x0, #1
.L41:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_int_pow, @function
.size donna_int_pow, .-donna_int_pow
/* end function donna_int_pow */

.text
.balign 16
.globl donna_int_gcd
donna_int_gcd:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	cmp	x0, #0
	cset	x2, eq
	cmp	x2, #1
	beq	.L44
	sdiv	x17, x1, x0
	msub	x1, x17, x0, x1
	bl	donna_int_gcd
	b	.L46
.L44:
	mov	x0, x1
	bl	donna_int_abs
.L46:
	ldp	x29, x30, [sp], 16
	ret
.type donna_int_gcd, @function
.size donna_int_gcd, .-donna_int_gcd
/* end function donna_int_gcd */

.text
.balign 16
.globl donna_int_lcm
donna_int_lcm:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	cmp	x0, #0
	cset	x2, eq
	cmp	x2, #1
	beq	.L52
	cmp	x1, #0
	mov	x21, x1
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L50
	mov	x20, x0
	mul	x0, x0, x21
	bl	donna_int_abs
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_gcd
	sdiv	x0, x20, x0
	str	x0, [x19]
	b	.L53
.L50:
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L53
.L52:
	mov	x0, #0
.L53:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_int_lcm, @function
.size donna_int_lcm, .-donna_int_lcm
/* end function donna_int_lcm */

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
