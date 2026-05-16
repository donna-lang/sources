.data
.balign 8
.globl donna_dict_Empty
donna_dict_Empty:
	.quad 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl donna_dict_Entry
donna_dict_Entry:
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
	mov	x3, #1
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
.type donna_dict_Entry, @function
.size donna_dict_Entry, .-donna_dict_Entry
/* end function donna_dict_Entry */

.text
.balign 16
.globl donna_dict_new
donna_dict_new:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, donna_dict_Empty
	add	x0, x0, #:lo12:donna_dict_Empty
	ldp	x29, x30, [sp], 16
	ret
.type donna_dict_new, @function
.size donna_dict_new, .-donna_dict_new
/* end function donna_dict_new */

.text
.balign 16
.globl donna_dict_insert
donna_dict_insert:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	ldr	x4, [x0]
	cmp	x4, #0
	beq	.L9
	mov	x4, #8
	add	x4, x0, x4
	ldr	x22, [x4]
	mov	x24, x3
	mov	x3, #16
	add	x3, x0, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #24
	add	x0, x0, x2
	ldr	x20, [x0]
	mov	x19, x1
	mov	x1, x22
	mov	x0, x19
	blr	x24
	mov	x3, x24
	mov	x2, x23
	mov	x1, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x0, #1
	beq	.L7
	mov	x0, x20
	bl	donna_dict_insert
	mov	x20, x0
	mov	x0, #32
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L11
.L7:
	mov	x22, x2
	mov	x21, x1
	mov	x0, #32
	bl	malloc
	mov	x2, x22
	mov	x1, x21
	mov	x3, #1
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #16
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L11
.L9:
	mov	x20, x2
	mov	x19, x1
	mov	x0, #32
	bl	malloc
	mov	x2, x20
	mov	x1, x19
	mov	x3, #1
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #16
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #24
	add	x2, x0, x1
	adrp	x1, donna_dict_Empty
	add	x1, x1, #:lo12:donna_dict_Empty
	str	x1, [x2]
.L11:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type donna_dict_insert, @function
.size donna_dict_insert, .-donna_dict_insert
/* end function donna_dict_insert */

.text
.balign 16
.globl donna_dict_get
donna_dict_get:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L17
	mov	x0, #8
	add	x0, x2, x0
	mov	x22, x1
	ldr	x1, [x0]
	mov	x0, #16
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x23, x3
	mov	x3, #24
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x19, x0
	mov	x0, x22
	blr	x23
	mov	x3, x23
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x2, #1
	beq	.L16
	mov	x0, x21
	mov	x2, x20
	bl	donna_dict_get
	str	x0, [x19]
	b	.L18
.L16:
	str	x0, [x19]
	b	.L18
.L17:
	mov	x0, x20
.L18:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type donna_dict_get, @function
.size donna_dict_get, .-donna_dict_get
/* end function donna_dict_get */

.text
.balign 16
.globl donna_dict_has_key
donna_dict_has_key:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x3, [x0]
	cmp	x3, #0
	beq	.L24
	mov	x20, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x21, x2
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x0
	mov	x0, x20
	blr	x21
	mov	x2, x21
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	.L22
	bl	donna_dict_has_key
	str	x0, [x19]
	b	.L25
.L22:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L25
.L24:
	mov	x0, #0
.L25:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_dict_has_key, @function
.size donna_dict_has_key, .-donna_dict_has_key
/* end function donna_dict_has_key */

.text
.balign 16
.globl donna_dict_delete
donna_dict_delete:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	ldr	x3, [x0]
	cmp	x3, #0
	beq	.L30
	mov	x3, #8
	add	x3, x0, x3
	ldr	x22, [x3]
	mov	x3, #16
	add	x3, x0, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	mov	x1, x22
	mov	x19, x0
	mov	x0, x20
	blr	x23
	mov	x2, x23
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	.L29
	bl	donna_dict_delete
	mov	x20, x0
	mov	x0, #32
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L31
.L29:
	str	x0, [x19]
	b	.L31
.L30:
	adrp	x0, donna_dict_Empty
	add	x0, x0, #:lo12:donna_dict_Empty
.L31:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type donna_dict_delete, @function
.size donna_dict_delete, .-donna_dict_delete
/* end function donna_dict_delete */

.text
.balign 16
.globl donna_dict_size
donna_dict_size:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L34
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_dict_size
	mov	x1, #1
	add	x0, x0, x1
	b	.L35
.L34:
	mov	x0, #0
.L35:
	ldp	x29, x30, [sp], 16
	ret
.type donna_dict_size, @function
.size donna_dict_size, .-donna_dict_size
/* end function donna_dict_size */

.text
.balign 16
.globl donna_dict_is_empty
donna_dict_is_empty:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L38
	mov	x0, #0
	b	.L39
.L38:
	mov	x0, #1
.L39:
	ldp	x29, x30, [sp], 16
	ret
.type donna_dict_is_empty, @function
.size donna_dict_is_empty, .-donna_dict_is_empty
/* end function donna_dict_is_empty */

.text
.balign 16
.globl donna_dict_keys
donna_dict_keys:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L42
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_dict_keys
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
	b	.L43
.L42:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L43:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_dict_keys, @function
.size donna_dict_keys, .-donna_dict_keys
/* end function donna_dict_keys */

.text
.balign 16
.globl donna_dict_values
donna_dict_values:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L46
	mov	x1, #16
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_dict_values
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
	b	.L47
.L46:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L47:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_dict_values, @function
.size donna_dict_values, .-donna_dict_values
/* end function donna_dict_values */

.text
.balign 16
.globl donna_dict_to_list
donna_dict_to_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L50
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_dict_to_list
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
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
	b	.L51
.L50:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L51:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type donna_dict_to_list, @function
.size donna_dict_to_list, .-donna_dict_to_list
/* end function donna_dict_to_list */

.text
.balign 16
.globl donna_dict_from_list
donna_dict_from_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L54
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	donna_dict_from_list
	mov	x3, x20
	ldr	x1, [x19]
	mov	x2, #8
	add	x2, x19, x2
	ldr	x2, [x2]
	bl	donna_dict_insert
	b	.L55
.L54:
	adrp	x0, donna_dict_Empty
	add	x0, x0, #:lo12:donna_dict_Empty
.L55:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_dict_from_list, @function
.size donna_dict_from_list, .-donna_dict_from_list
/* end function donna_dict_from_list */

.text
.balign 16
.globl donna_dict_merge
donna_dict_merge:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x3, x1
	ldr	x1, [x3]
	cmp	x1, #0
	beq	.L58
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x20, x2
	mov	x2, #16
	add	x2, x3, x2
	ldr	x2, [x2]
	mov	x4, #24
	add	x3, x3, x4
	ldr	x19, [x3]
	mov	x3, x20
	bl	donna_dict_insert
	mov	x2, x20
	mov	x1, x19
	bl	donna_dict_merge
.L58:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_dict_merge, @function
.size donna_dict_merge, .-donna_dict_merge
/* end function donna_dict_merge */

.text
.balign 16
.globl donna_dict_map_values
donna_dict_map_values:
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
	beq	.L61
	mov	x0, #8
	add	x0, x1, x0
	ldr	x21, [x0]
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x1, x1, x2
	ldr	x19, [x1]
	blr	x20
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	bl	donna_dict_map_values
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x1, #1
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
	b	.L62
.L61:
	adrp	x0, donna_dict_Empty
	add	x0, x0, #:lo12:donna_dict_Empty
.L62:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type donna_dict_map_values, @function
.size donna_dict_map_values, .-donna_dict_map_values
/* end function donna_dict_map_values */

.text
.balign 16
.globl donna_dict_filter
donna_dict_filter:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L67
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x2, #16
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	mov	x1, x21
	mov	x19, x0
	mov	x0, x22
	blr	x20
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L66
	bl	donna_dict_filter
	str	x0, [x19]
	b	.L68
.L66:
	bl	donna_dict_filter
	mov	x20, x0
	mov	x0, #32
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L68
.L67:
	adrp	x0, donna_dict_Empty
	add	x0, x0, #:lo12:donna_dict_Empty
.L68:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_dict_filter, @function
.size donna_dict_filter, .-donna_dict_filter
/* end function donna_dict_filter */

.text
.balign 16
.globl donna_dict_fold
donna_dict_fold:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x3, x0
	mov	x0, x1
	ldr	x1, [x3]
	cmp	x1, #0
	beq	.L71
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x20, x2
	mov	x2, #16
	add	x2, x3, x2
	ldr	x2, [x2]
	mov	x4, #24
	add	x3, x3, x4
	ldr	x19, [x3]
	blr	x20
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	bl	donna_dict_fold
.L71:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type donna_dict_fold, @function
.size donna_dict_fold, .-donna_dict_fold
/* end function donna_dict_fold */

.text
.balign 16
.globl donna_dict_find_keys
donna_dict_find_keys:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L76
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x20, x1
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x0, x0, x2
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
	beq	.L75
	bl	donna_dict_find_keys
	str	x0, [x19]
	b	.L77
.L75:
	bl	donna_dict_find_keys
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
	b	.L77
.L76:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L77:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type donna_dict_find_keys, @function
.size donna_dict_find_keys, .-donna_dict_find_keys
/* end function donna_dict_find_keys */

.text
.balign 16
.globl donna_dict_update
donna_dict_update:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x23, x2
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L83
	mov	x0, #8
	add	x0, x2, x0
	ldr	x22, [x0]
	mov	x0, #16
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x24, x3
	mov	x3, #24
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x20, x1
	mov	x1, x22
	mov	x19, x0
	mov	x0, x20
	blr	x24
	mov	x3, x24
	mov	x2, x23
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	cmp	x4, #1
	beq	.L81
	mov	x20, x0
	mov	x0, x21
	bl	donna_dict_update
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #32
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L84
.L81:
	mov	x20, x21
	blr	x2
	mov	x21, x0
	mov	x0, #32
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L84
.L83:
	adrp	x0, donna_dict_Empty
	add	x0, x0, #:lo12:donna_dict_Empty
.L84:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type donna_dict_update, @function
.size donna_dict_update, .-donna_dict_update
/* end function donna_dict_update */

.section .note.GNU-stack,"",@progbits
