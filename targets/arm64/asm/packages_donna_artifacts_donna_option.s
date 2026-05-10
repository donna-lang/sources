.data
.balign 8
.globl donna_option_None
donna_option_None:
	.quad 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl donna_option_Some
donna_option_Some:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_option_Some, @function
.size donna_option_Some, .-donna_option_Some
/* end function donna_option_Some */

.text
.balign 16
.globl donna_option_is_some
donna_option_is_some:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L4
	mov	x0, #1
	b	.L5
.L4:
	mov	x0, #0
.L5:
	ldp	x29, x30, [sp], 16
	ret
.type donna_option_is_some, @function
.size donna_option_is_some, .-donna_option_is_some
/* end function donna_option_is_some */

.text
.balign 16
.globl donna_option_is_none
donna_option_is_none:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L8
	mov	x0, #0
	b	.L9
.L8:
	mov	x0, #1
.L9:
	ldp	x29, x30, [sp], 16
	ret
.type donna_option_is_none, @function
.size donna_option_is_none, .-donna_option_is_none
/* end function donna_option_is_none */

.text
.balign 16
.globl donna_option_unwrap
donna_option_unwrap:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L12
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L13
.L12:
	mov	x0, x1
.L13:
	ldp	x29, x30, [sp], 16
	ret
.type donna_option_unwrap, @function
.size donna_option_unwrap, .-donna_option_unwrap
/* end function donna_option_unwrap */

.text
.balign 16
.globl donna_option_map
donna_option_map:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L16
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	blr	x1
	bl	donna_option_Some
	b	.L17
.L16:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L17:
	ldp	x29, x30, [sp], 16
	ret
.type donna_option_map, @function
.size donna_option_map, .-donna_option_map
/* end function donna_option_map */

.text
.balign 16
.globl donna_option_then
donna_option_then:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L20
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	blr	x1
	b	.L21
.L20:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L21:
	ldp	x29, x30, [sp], 16
	ret
.type donna_option_then, @function
.size donna_option_then, .-donna_option_then
/* end function donna_option_then */

.text
.balign 16
.globl donna_option_or
donna_option_or:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	bne	.L24
	mov	x0, x1
.L24:
	ldp	x29, x30, [sp], 16
	ret
.type donna_option_or, @function
.size donna_option_or, .-donna_option_or
/* end function donna_option_or */

.text
.balign 16
.globl donna_option_lazy_unwrap
donna_option_lazy_unwrap:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L27
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L28
.L27:
	blr	x1
.L28:
	ldp	x29, x30, [sp], 16
	ret
.type donna_option_lazy_unwrap, @function
.size donna_option_lazy_unwrap, .-donna_option_lazy_unwrap
/* end function donna_option_lazy_unwrap */

.text
.balign 16
.globl donna_option_filter
donna_option_filter:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L34
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x0
	blr	x1
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L33
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L35
.L33:
	bl	donna_option_Some
	str	x0, [x19]
	b	.L35
.L34:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L35:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type donna_option_filter, @function
.size donna_option_filter, .-donna_option_filter
/* end function donna_option_filter */

.text
.balign 16
.globl donna_option_to_list
donna_option_to_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L38
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
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
	b	.L39
.L38:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L39:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_option_to_list, @function
.size donna_option_to_list, .-donna_option_to_list
/* end function donna_option_to_list */

.section .note.GNU-stack,"",@progbits
