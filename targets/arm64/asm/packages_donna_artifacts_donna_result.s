.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl donna_result_Ok
donna_result_Ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_result_Ok, @function
.size donna_result_Ok, .-donna_result_Ok
/* end function donna_result_Ok */

.text
.balign 16
.globl donna_result_Error
donna_result_Error:
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
.type donna_result_Error, @function
.size donna_result_Error, .-donna_result_Error
/* end function donna_result_Error */

.text
.balign 16
.globl donna_result_is_ok
donna_result_is_ok:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L6
	mov	x0, #0
	b	.L7
.L6:
	mov	x0, #1
.L7:
	ldp	x29, x30, [sp], 16
	ret
.type donna_result_is_ok, @function
.size donna_result_is_ok, .-donna_result_is_ok
/* end function donna_result_is_ok */

.text
.balign 16
.globl donna_result_is_error
donna_result_is_error:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L10
	mov	x0, #1
	b	.L11
.L10:
	mov	x0, #0
.L11:
	ldp	x29, x30, [sp], 16
	ret
.type donna_result_is_error, @function
.size donna_result_is_error, .-donna_result_is_error
/* end function donna_result_is_error */

.text
.balign 16
.globl donna_result_unwrap
donna_result_unwrap:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L14
	mov	x0, x1
	b	.L15
.L14:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L15:
	ldp	x29, x30, [sp], 16
	ret
.type donna_result_unwrap, @function
.size donna_result_unwrap, .-donna_result_unwrap
/* end function donna_result_unwrap */

.text
.balign 16
.globl donna_result_unwrap_error
donna_result_unwrap_error:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L18
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L19
.L18:
	mov	x0, x1
.L19:
	ldp	x29, x30, [sp], 16
	ret
.type donna_result_unwrap_error, @function
.size donna_result_unwrap_error, .-donna_result_unwrap_error
/* end function donna_result_unwrap_error */

.text
.balign 16
.globl donna_result_map
donna_result_map:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L22
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L23
.L22:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	blr	x1
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L23:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_result_map, @function
.size donna_result_map, .-donna_result_map
/* end function donna_result_map */

.text
.balign 16
.globl donna_result_map_error
donna_result_map_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L26
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	blr	x1
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L27
.L26:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L27:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_result_map_error, @function
.size donna_result_map_error, .-donna_result_map_error
/* end function donna_result_map_error */

.text
.balign 16
.globl donna_result_then
donna_result_then:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L30
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	.L31
.L30:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	blr	x1
.L31:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_result_then, @function
.size donna_result_then, .-donna_result_then
/* end function donna_result_then */

.text
.balign 16
.globl donna_result_or
donna_result_or:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L34
	mov	x0, x1
.L34:
	ldp	x29, x30, [sp], 16
	ret
.type donna_result_or, @function
.size donna_result_or, .-donna_result_or
/* end function donna_result_or */

.text
.balign 16
.globl donna_result_to_list
donna_result_to_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L37
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	b	.L38
.L37:
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
.L38:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_result_to_list, @function
.size donna_result_to_list, .-donna_result_to_list
/* end function donna_result_to_list */

.section .note.GNU-stack,"",@progbits
