.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl compiler_typesystem_env_Env
compiler_typesystem_env_Env:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #48
	bl	malloc
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x5, #0
	str	x5, [x0]
	mov	x5, #8
	add	x5, x0, x5
	str	x19, [x5]
	mov	x5, #16
	add	x5, x0, x5
	str	x1, [x5]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_env_Env, @function
.size compiler_typesystem_env_Env, .-compiler_typesystem_env_Env
/* end function compiler_typesystem_env_Env */

.text
.balign 16
.globl compiler_typesystem_env_new_env
compiler_typesystem_env_new_env:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #48
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #24
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #32
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #40
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_env_new_env, @function
.size compiler_typesystem_env_new_env, .-compiler_typesystem_env_new_env
/* end function compiler_typesystem_env_new_env */

.text
.balign 16
.globl compiler_typesystem_env_env_next_var
compiler_typesystem_env_env_next_var:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #40
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_env_env_next_var, @function
.size compiler_typesystem_env_env_next_var, .-compiler_typesystem_env_env_next_var
/* end function compiler_typesystem_env_env_next_var */

.text
.balign 16
.globl compiler_typesystem_env_env_ctor_info
compiler_typesystem_env_env_ctor_info:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_env_env_ctor_info, @function
.size compiler_typesystem_env_env_ctor_info, .-compiler_typesystem_env_env_ctor_info
/* end function compiler_typesystem_env_env_ctor_info */

.text
.balign 16
.globl compiler_typesystem_env_fresh_var
compiler_typesystem_env_fresh_var:
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
	mov	x1, #8
	add	x1, x0, x1
	ldr	x25, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #24
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #32
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #40
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x20, x0
	mov	x0, #9
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #1
	add	x21, x19, x0
	mov	x0, #48
	bl	malloc
	mov	x19, x0
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x19, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x19, x0
	str	x22, [x0]
	mov	x0, #40
	add	x0, x19, x0
	str	x21, [x0]
	mov	x0, #16
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
.type compiler_typesystem_env_fresh_var, @function
.size compiler_typesystem_env_fresh_var, .-compiler_typesystem_env_fresh_var
/* end function compiler_typesystem_env_fresh_var */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup
compiler_typesystem_env_env_lookup:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_env_lookup_scheme
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L14
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L13
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L15
.L13:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L15
.L14:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L15:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_env_env_lookup, @function
.size compiler_typesystem_env_env_lookup, .-compiler_typesystem_env_env_lookup
/* end function compiler_typesystem_env_env_lookup */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_module
compiler_typesystem_env_env_lookup_module:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_env_lookup_module
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_env_env_lookup_module, @function
.size compiler_typesystem_env_env_lookup_module, .-compiler_typesystem_env_env_lookup_module
/* end function compiler_typesystem_env_env_lookup_module */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_alias
compiler_typesystem_env_env_lookup_alias:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_env_lookup_string
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_env_env_lookup_alias, @function
.size compiler_typesystem_env_env_lookup_alias, .-compiler_typesystem_env_env_lookup_alias
/* end function compiler_typesystem_env_env_lookup_alias */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_ctor
compiler_typesystem_env_env_lookup_ctor:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #32
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_env_lookup_ctor
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_env_env_lookup_ctor, @function
.size compiler_typesystem_env_env_lookup_ctor, .-compiler_typesystem_env_env_lookup_ctor
/* end function compiler_typesystem_env_env_lookup_ctor */

.text
.balign 16
.globl compiler_typesystem_env_env_bind
compiler_typesystem_env_env_bind:
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
	mov	x3, #8
	add	x3, x0, x3
	ldr	x24, [x3]
	mov	x3, #16
	add	x3, x0, x3
	ldr	x22, [x3]
	mov	x3, #24
	add	x3, x0, x3
	ldr	x21, [x3]
	mov	x23, x2
	mov	x2, #32
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x25, x1
	mov	x1, #40
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x2, x23
	mov	x23, x0
	mov	x0, #0
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x2, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, x25
	mov	x25, x0
	str	x1, [x25]
	mov	x0, #8
	add	x0, x25, x0
	str	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x23, x0
	mov	x0, #1
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #48
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
.type compiler_typesystem_env_env_bind, @function
.size compiler_typesystem_env_env_bind, .-compiler_typesystem_env_env_bind
/* end function compiler_typesystem_env_env_bind */

.text
.balign 16
.globl compiler_typesystem_env_env_register_alias
compiler_typesystem_env_env_register_alias:
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
	mov	x3, #8
	add	x3, x0, x3
	ldr	x23, [x3]
	mov	x3, #16
	add	x3, x0, x3
	ldr	x22, [x3]
	mov	x3, #24
	add	x3, x0, x3
	ldr	x24, [x3]
	mov	x25, x2
	mov	x2, #32
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x21, x1
	mov	x1, #40
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x2, x25
	mov	x1, x21
	mov	x25, x0
	str	x1, [x25]
	mov	x0, #8
	add	x0, x25, x0
	str	x2, [x0]
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #48
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
.type compiler_typesystem_env_env_register_alias, @function
.size compiler_typesystem_env_env_register_alias, .-compiler_typesystem_env_env_register_alias
/* end function compiler_typesystem_env_env_register_alias */

.text
.balign 16
.globl compiler_typesystem_env_env_add_module
compiler_typesystem_env_env_add_module:
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
	str	x27, [x29, 24]
	mov	x4, #8
	add	x4, x0, x4
	ldr	x23, [x4]
	mov	x4, #16
	add	x4, x0, x4
	ldr	x26, [x4]
	mov	x22, x3
	mov	x3, #24
	add	x3, x0, x3
	ldr	x24, [x3]
	mov	x25, x2
	mov	x2, #32
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x21, x1
	mov	x1, #40
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x3, x22
	mov	x27, x0
	str	x21, [x27]
	mov	x0, #8
	add	x0, x27, x0
	str	x3, [x0]
	mov	x0, #24
	bl	malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x26, [x0]
	mov	x0, #16
	bl	malloc
	mov	x2, x25
	mov	x1, x21
	mov	x25, x0
	str	x1, [x25]
	mov	x0, #8
	add	x0, x25, x0
	str	x2, [x0]
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #48
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	ldr	x27, [x29, 24]
	ldp	x29, x30, [sp], 96
	ret
.type compiler_typesystem_env_env_add_module, @function
.size compiler_typesystem_env_env_add_module, .-compiler_typesystem_env_env_add_module
/* end function compiler_typesystem_env_env_add_module */

.text
.balign 16
.globl compiler_typesystem_env_env_add_ctor
compiler_typesystem_env_env_add_ctor:
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
	mov	x3, #8
	add	x3, x0, x3
	ldr	x23, [x3]
	mov	x3, #16
	add	x3, x0, x3
	ldr	x22, [x3]
	mov	x3, #24
	add	x3, x0, x3
	ldr	x21, [x3]
	mov	x25, x2
	mov	x2, #32
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x20, x1
	mov	x1, #40
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	malloc
	mov	x2, x25
	mov	x1, x20
	mov	x25, x0
	str	x1, [x25]
	mov	x0, #8
	add	x0, x25, x0
	str	x2, [x0]
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x24, [x0]
	mov	x0, #48
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
.type compiler_typesystem_env_env_add_ctor, @function
.size compiler_typesystem_env_env_add_ctor, .-compiler_typesystem_env_env_add_ctor
/* end function compiler_typesystem_env_env_add_ctor */

.text
.balign 16
compiler_typesystem_env_lookup_scheme:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L34
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L33
	bl	compiler_typesystem_env_lookup_scheme
	str	x0, [x19]
	b	.L35
.L33:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L35
.L34:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L35:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_env_lookup_scheme, @function
.size compiler_typesystem_env_lookup_scheme, .-compiler_typesystem_env_lookup_scheme
/* end function compiler_typesystem_env_lookup_scheme */

.text
.balign 16
compiler_typesystem_env_lookup_module:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L40
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L39
	bl	compiler_typesystem_env_lookup_module
	str	x0, [x19]
	b	.L41
.L39:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L41
.L40:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L41:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_env_lookup_module, @function
.size compiler_typesystem_env_lookup_module, .-compiler_typesystem_env_lookup_module
/* end function compiler_typesystem_env_lookup_module */

.text
.balign 16
compiler_typesystem_env_lookup_string:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L46
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L45
	bl	compiler_typesystem_env_lookup_string
	str	x0, [x19]
	b	.L47
.L45:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L47
.L46:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L47:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_env_lookup_string, @function
.size compiler_typesystem_env_lookup_string, .-compiler_typesystem_env_lookup_string
/* end function compiler_typesystem_env_lookup_string */

.text
.balign 16
compiler_typesystem_env_lookup_ctor:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L52
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x19, x0
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L51
	bl	compiler_typesystem_env_lookup_ctor
	str	x0, [x19]
	b	.L53
.L51:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L53
.L52:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L53:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_env_lookup_ctor, @function
.size compiler_typesystem_env_lookup_ctor, .-compiler_typesystem_env_lookup_ctor
/* end function compiler_typesystem_env_lookup_ctor */

.section .note.GNU-stack,"",@progbits
