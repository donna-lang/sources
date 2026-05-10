.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.text
.balign 4
.globl _compiler_typesystem_env_Env
_compiler_typesystem_env_Env:
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
	bl	_malloc
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
/* end function compiler_typesystem_env_Env */

.text
.balign 4
.globl _compiler_typesystem_env_new_env
_compiler_typesystem_env_new_env:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x4, #0
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	bl	_compiler_typesystem_env_Env
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_env_new_env */

.text
.balign 4
.globl _compiler_typesystem_env_env_next_var
_compiler_typesystem_env_env_next_var:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #40
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_env_env_next_var */

.text
.balign 4
.globl _compiler_typesystem_env_env_ctor_info
_compiler_typesystem_env_env_ctor_info:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_env_env_ctor_info */

.text
.balign 4
.globl _compiler_typesystem_env_fresh_var
_compiler_typesystem_env_fresh_var:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #24
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #32
	add	x3, x1, x3
	ldr	x23, [x3]
	mov	x22, x2
	mov	x2, #40
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x20, x0
	mov	x0, x19
	bl	_compiler_typesystem_types_TTypeVar
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x4, #1
	add	x4, x19, x4
	bl	_compiler_typesystem_env_Env
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_env_fresh_var */

.text
.balign 4
.globl _compiler_typesystem_env_env_lookup
_compiler_typesystem_env_env_lookup:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_env_lookup_scheme
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L14
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L13
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_option_Some
	str	x0, [x19]
	b	L15
L13:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_option_Some
	str	x0, [x19]
	b	L15
L14:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L15:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_env_env_lookup */

.text
.balign 4
.globl _compiler_typesystem_env_env_lookup_module
_compiler_typesystem_env_env_lookup_module:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_env_lookup_module
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_env_env_lookup_module */

.text
.balign 4
.globl _compiler_typesystem_env_env_lookup_alias
_compiler_typesystem_env_env_lookup_alias:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_env_lookup_string
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_env_env_lookup_alias */

.text
.balign 4
.globl _compiler_typesystem_env_env_lookup_ctor
_compiler_typesystem_env_env_lookup_ctor:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x2, #32
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_env_lookup_ctor
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_env_env_lookup_ctor */

.text
.balign 4
.globl _compiler_typesystem_env_env_bind
_compiler_typesystem_env_env_bind:
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
	mov	x20, x1
	mov	x1, x0
	mov	x0, x2
	mov	x2, #8
	add	x2, x1, x2
	ldr	x19, [x2]
	mov	x2, #16
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #24
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #32
	add	x3, x1, x3
	ldr	x23, [x3]
	mov	x22, x2
	mov	x2, #40
	add	x1, x1, x2
	ldr	x24, [x1]
	bl	_compiler_typesystem_types_Mono
	mov	x25, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	str	x1, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x25, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x4, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x5, #1
	str	x5, [x0]
	mov	x5, #8
	add	x5, x0, x5
	str	x20, [x5]
	mov	x5, #16
	add	x5, x0, x5
	str	x19, [x5]
	bl	_compiler_typesystem_env_Env
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function compiler_typesystem_env_env_bind */

.text
.balign 4
.globl _compiler_typesystem_env_env_register_alias
_compiler_typesystem_env_env_register_alias:
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
	mov	x21, x1
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x3, x1, x3
	ldr	x22, [x3]
	mov	x3, #24
	add	x3, x1, x3
	ldr	x19, [x3]
	mov	x3, #32
	add	x3, x1, x3
	ldr	x23, [x3]
	mov	x25, x2
	mov	x2, #40
	add	x1, x1, x2
	ldr	x24, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x2, x25
	mov	x1, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x21, [x20]
	mov	x22, x1
	mov	x1, #8
	add	x1, x20, x1
	str	x2, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x4, x24
	mov	x3, x23
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x5, #1
	str	x5, [x2]
	mov	x5, #8
	add	x5, x2, x5
	str	x20, [x5]
	mov	x5, #16
	add	x5, x2, x5
	str	x19, [x5]
	bl	_compiler_typesystem_env_Env
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function compiler_typesystem_env_env_register_alias */

.text
.balign 4
.globl _compiler_typesystem_env_env_add_module
_compiler_typesystem_env_env_add_module:
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
	mov	x21, x1
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x4, #16
	add	x4, x1, x4
	ldr	x20, [x4]
	mov	x4, #24
	add	x4, x1, x4
	ldr	x19, [x4]
	mov	x23, x3
	mov	x3, #32
	add	x3, x1, x3
	ldr	x26, [x3]
	mov	x25, x2
	mov	x2, #40
	add	x1, x1, x2
	ldr	x24, [x1]
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	mov	x3, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x21, [x22]
	mov	x1, #8
	add	x1, x22, x1
	str	x3, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x3, x26
	mov	x2, x25
	mov	x1, x0
	mov	x0, x23
	mov	x23, x3
	mov	x3, #1
	str	x3, [x1]
	mov	x25, x2
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x22, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x2, x25
	mov	x1, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x21, [x20]
	mov	x22, x1
	mov	x1, #8
	add	x1, x20, x1
	str	x2, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x4, x24
	mov	x3, x23
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x5, #1
	str	x5, [x2]
	mov	x5, #8
	add	x5, x2, x5
	str	x20, [x5]
	mov	x5, #16
	add	x5, x2, x5
	str	x19, [x5]
	bl	_compiler_typesystem_env_Env
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	ldp	x29, x30, [sp], 80
	ret
/* end function compiler_typesystem_env_env_add_module */

.text
.balign 4
.globl _compiler_typesystem_env_env_add_ctor
_compiler_typesystem_env_env_add_ctor:
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
	mov	x21, x1
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x3, x1, x3
	ldr	x22, [x3]
	mov	x3, #24
	add	x3, x1, x3
	ldr	x23, [x3]
	mov	x3, #32
	add	x3, x1, x3
	ldr	x19, [x3]
	mov	x25, x2
	mov	x2, #40
	add	x1, x1, x2
	ldr	x24, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x2, x25
	mov	x1, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x21, [x20]
	mov	x22, x1
	mov	x1, #8
	add	x1, x20, x1
	str	x2, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x4, x24
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x21
	mov	x5, #1
	str	x5, [x3]
	mov	x5, #8
	add	x5, x3, x5
	str	x20, [x5]
	mov	x5, #16
	add	x5, x3, x5
	str	x19, [x5]
	bl	_compiler_typesystem_env_Env
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
/* end function compiler_typesystem_env_env_add_ctor */

.text
.balign 4
_compiler_typesystem_env_lookup_scheme:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L35
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
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L33
	bl	_compiler_typesystem_env_lookup_scheme
	str	x0, [x19]
	b	L36
L33:
	mov	x0, x20
	bl	_donna_option_Some
	str	x0, [x19]
	b	L36
L35:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L36:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_env_lookup_scheme */

.text
.balign 4
_compiler_typesystem_env_lookup_module:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L42
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
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L40
	bl	_compiler_typesystem_env_lookup_module
	str	x0, [x19]
	b	L43
L40:
	mov	x0, x20
	bl	_donna_option_Some
	str	x0, [x19]
	b	L43
L42:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L43:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_env_lookup_module */

.text
.balign 4
_compiler_typesystem_env_lookup_string:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L49
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
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L47
	bl	_compiler_typesystem_env_lookup_string
	str	x0, [x19]
	b	L50
L47:
	mov	x0, x20
	bl	_donna_option_Some
	str	x0, [x19]
	b	L50
L49:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L50:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_env_lookup_string */

.text
.balign 4
_compiler_typesystem_env_lookup_ctor:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L56
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
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L54
	bl	_compiler_typesystem_env_lookup_ctor
	str	x0, [x19]
	b	L57
L54:
	mov	x0, x20
	bl	_donna_option_Some
	str	x0, [x19]
	b	L57
L56:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L57:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_env_lookup_ctor */

