.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str129:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str151:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str901:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str1287:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str2378:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str2519:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str2588:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str2613:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str2676:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
_str2707:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2738:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
_str2769:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str2800:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
_str2831:
	.ascii "List"
	.byte 0
/* end data */

.data
.balign 8
_str2925:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str3236:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3245:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3272:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3281:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3308:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3317:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3344:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3353:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3380:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3389:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3416:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3425:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3452:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3461:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3488:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3497:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3524:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3533:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3560:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3569:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3668:
	.ascii "/"
	.byte 0
/* end data */

.text
.balign 4
.globl _compiler_typesystem_checker_check_module
_compiler_typesystem_checker_check_module:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_check_module_with_imports
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_check_module */

.text
.balign 4
.globl _compiler_typesystem_checker_check_module_with_imports
_compiler_typesystem_checker_check_module_with_imports:
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
	mov	x1, x0
	mov	x0, x2
	mov	x2, #16
	add	x2, x1, x2
	ldr	x24, [x2]
	mov	x2, #24
	add	x2, x1, x2
	ldr	x22, [x2]
	mov	x2, #32
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #40
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	mov	x23, x0
	mov	x0, x24
	bl	_compiler_typesystem_checker_collect_declared_aliases
	mov	x1, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_filter_imports_by_alias
	mov	x23, x0
	bl	_compiler_typesystem_env_new_env
	mov	x1, x0
	mov	x0, x24
	bl	_compiler_typesystem_checker_register_import_aliases
	mov	x1, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_add_imports_to_env
	mov	x23, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x23
	bl	_compiler_typesystem_env_env_ctor_info
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_check_type_defs
	mov	x1, x0
	mov	x0, x22
	ldr	x22, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_check_constants
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L7
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	mov	x19, x1
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	bl	_compiler_typesystem_checker_check_functions
	mov	x1, x19
	mov	x2, #8
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x19, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, x20
	bl	_donna_list_is_empty
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x0, #0
	beq	L6
	mov	x20, x1
	mov	x0, x22
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x21
	bl	_donna_list_append
	mov	x21, x0
	mov	x0, #48
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x23, [x0]
	mov	x0, #32
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #40
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L9
L6:
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L9
L7:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	add	x1, x19, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L9:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_check_module_with_imports */

.text
.balign 4
.globl _compiler_typesystem_checker_extract_interface
_compiler_typesystem_checker_extract_interface:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #32
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_typesystem_checker_pub_fns_to_bindings
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_compiler_typesystem_checker_pub_consts_to_bindings
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x20
	bl	_donna_list_append
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_extract_interface */

.text
.balign 4
_compiler_typesystem_checker_add_imports_to_env:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L14
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	ldr	x2, [x1]
	mov	x22, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x22
	bl	_compiler_typesystem_checker_path_last_segment
	mov	x2, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x3, x21
	mov	x1, x20
	bl	_compiler_typesystem_env_env_add_module
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_iface_ctor_info
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	bl	_compiler_typesystem_checker_add_iface_ctors_to_env
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_add_imports_to_env
L14:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_add_imports_to_env */

.text
.balign 4
_compiler_typesystem_checker_add_iface_ctors_to_env:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x0
	mov	x0, x2
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L17
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x20, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	mov	x22, x2
	mov	x21, x1
	bl	_compiler_typesystem_env_env_add_ctor
	mov	x1, x21
	mov	x23, x1
	adrp	x1, _str129@page
	add	x1, x1, _str129@pageoff
	mov	x21, x0
	mov	x0, x19
	bl	___rt_str_concat
	mov	x1, x23
	bl	___rt_str_concat
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	bl	_compiler_typesystem_env_env_add_ctor
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_add_iface_ctors_to_env
L17:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_add_iface_ctors_to_env */

.text
.balign 4
_compiler_typesystem_checker_register_import_aliases:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L20
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x20, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x21, x1
	adrp	x1, _str151@page
	add	x1, x1, _str151@pageoff
	bl	_donna_string_join
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_typesystem_env_env_register_alias
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_register_import_aliases
L20:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_register_import_aliases */

.text
.balign 4
_compiler_typesystem_checker_collect_declared_aliases:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L23
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_compiler_typesystem_checker_collect_declared_aliases
	b	L25
L23:
	mov	x0, x19
	bl	_donna_list_reverse
L25:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_collect_declared_aliases */

.text
.balign 4
_compiler_typesystem_checker_filter_imports_by_alias:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L30
	mov	x20, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x23, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x19, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_path_last_segment
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_donna_list_contains_str
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L29
	bl	_compiler_typesystem_checker_filter_imports_by_alias
	str	x0, [x19]
	b	L31
L29:
	bl	_compiler_typesystem_checker_filter_imports_by_alias
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L31
L30:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L31:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_filter_imports_by_alias */

.text
.balign 4
_compiler_typesystem_checker_iface_ctor_info:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_iface_ctor_info */

.text
.balign 4
_compiler_typesystem_checker_iface_bindings:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_iface_bindings */

.text
.balign 4
_compiler_typesystem_checker_check_type_defs:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_check_type_defs_loop
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_check_type_defs */

.text
.balign 4
_compiler_typesystem_checker_check_type_defs_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x19, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L40
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	bl	_compiler_typesystem_checker_check_type_def
	mov	x1, x0
	mov	x0, x20
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x19, [x3]
	bl	_compiler_typesystem_checker_check_type_defs_loop
	b	L42
L40:
	mov	x0, x19
	mov	x20, x1
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
L42:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_check_type_defs_loop */

.text
.balign 4
_compiler_typesystem_checker_check_type_def:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x2, x1
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x23, [x0]
	mov	x0, #16
	add	x0, x1, x0
	ldr	x22, [x0]
	mov	x0, #32
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #40
	add	x1, x1, x3
	ldr	x19, [x1]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_collect_param_vars
	mov	x1, x0
	mov	x0, x19
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x24, [x1]
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x19, x0
	mov	x0, x21
	bl	_donna_list_map
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x4, x24
	mov	x3, x21
	mov	x1, x0
	mov	x0, x20
	mov	x2, #8
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x23, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	adrp	x6, _donna_nil@page
	add	x6, x6, _donna_nil@pageoff
	mov	x5, #0
	mov	x2, x23
	bl	_compiler_typesystem_checker_check_ctors
	ldr	x21, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
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
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_check_type_def */

.text
.balign 4
_compiler_typesystem_checker_collect_param_vars:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L47
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	mov	x0, x2
	bl	_compiler_typesystem_env_fresh_var
	mov	x1, x0
	mov	x0, x20
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x23, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x3, x1, x3
	str	x20, [x3]
	mov	x3, #16
	add	x3, x1, x3
	str	x19, [x3]
	bl	_compiler_typesystem_checker_collect_param_vars
	b	L49
L47:
	mov	x20, x2
	mov	x0, x19
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x2, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x2, [x1]
L49:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_collect_param_vars */

.text
.balign 4
_compiler_typesystem_checker_pair_snd:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_pair_snd */

.text
.balign 4
_compiler_typesystem_checker_check_ctors:
	hint	#34
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [x29, 120]
	str	x20, [x29, 112]
	str	x21, [x29, 104]
	str	x22, [x29, 96]
	str	x23, [x29, 88]
	str	x24, [x29, 80]
	str	x25, [x29, 72]
	str	x26, [x29, 64]
	mov	x26, x5
	mov	x22, x1
	mov	x1, x0
	mov	x0, x6
	str	x0, [x29, 40]
	mov	x25, x4
	ldr	x4, [x1]
	cmp	x4, #0
	beq	L59
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x23, x3
	mov	x3, #16
	add	x1, x1, x3
	ldr	x19, [x1]
	str	x19, [x29, 24]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	str	x19, [x29, 16]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x20, x2
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x1
	adrp	x1, _compiler_typesystem_checker_annotation_to_type@page
	add	x1, x1, _compiler_typesystem_checker_annotation_to_type@pageoff
	bl	_donna_list_map
	mov	x1, x19
	mov	x19, x1
	mov	x1, x23
	bl	_compiler_typesystem_checker_subst_list
	mov	x24, x0
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	mov	x0, #0
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x19, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x26, [x0]
	mov	x0, x24
	bl	_donna_list_is_empty
	mov	x1, x19
	mov	x2, x0
	ldr	x0, [x29, 40]
	mov	x19, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	str	x1, [x29, 48]
	cmp	x2, #1
	beq	L55
	mov	x0, #24
	bl	_malloc
	mov	x5, x26
	mov	x4, x25
	mov	x3, x23
	mov	x2, x20
	mov	x1, x19
	mov	x19, x0
	ldr	x0, [x29, 48]
	ldr	x20, [x29, 40]
	mov	x6, #7
	str	x6, [x19]
	mov	x25, x5
	mov	x5, #8
	add	x5, x19, x5
	str	x24, [x5]
	mov	x26, x3
	mov	x3, #16
	add	x3, x19, x3
	str	x22, [x3]
	str	x19, [x0]
	b	L58
L55:
	mov	x4, x25
	mov	x25, x26
	mov	x26, x23
	mov	x2, x20
	mov	x20, x0
	mov	x0, x1
	mov	x1, x19
	str	x22, [x0]
	mov	x19, x22
L58:
	mov	x23, x2
	mov	x2, x19
	mov	x19, x1
	mov	x0, x4
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x29, 32]
	mov	x0, #24
	bl	_malloc
	mov	x3, x26
	mov	x1, x19
	mov	x2, x0
	ldr	x0, [x29, 32]
	ldr	x19, [x29, 24]
	str	x23, [x2]
	mov	x4, #8
	add	x4, x2, x4
	str	x24, [x4]
	mov	x24, x3
	mov	x3, #16
	add	x3, x2, x3
	str	x25, [x3]
	bl	_compiler_typesystem_env_env_add_ctor
	mov	x5, x25
	mov	x1, x22
	mov	x25, x0
	mov	x0, x19
	mov	x22, x1
	mov	x1, #1
	add	x26, x5, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x5, x26
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x6, x0
	mov	x0, x19
	ldr	x19, [x29, 16]
	mov	x7, #1
	str	x7, [x6]
	mov	x7, #8
	add	x7, x6, x7
	str	x21, [x7]
	mov	x7, #16
	add	x7, x6, x7
	str	x20, [x7]
	bl	_compiler_typesystem_checker_check_ctors
	str	x0, [x19]
	b	L61
L59:
	mov	x20, x25
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x4, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x4, [x1]
L61:
	ldr	x19, [x29, 120]
	ldr	x20, [x29, 112]
	ldr	x21, [x29, 104]
	ldr	x22, [x29, 96]
	ldr	x23, [x29, 88]
	ldr	x24, [x29, 80]
	ldr	x25, [x29, 72]
	ldr	x26, [x29, 64]
	mov sp, x29
	ldp	x29, x30, [sp], 128
	ret
/* end function compiler_typesystem_checker_check_ctors */

.text
.balign 4
_compiler_typesystem_checker_subst_type_params:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #8
	cset	x2, eq
	cmp	w2, #0
	bne	L64
	mov	x2, #0
	b	L65
L64:
	mov	x3, #16
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	and	x2, x2, x3
L65:
	cmp	w2, #0
	bne	L74
	cmp	x1, #8
	beq	L73
	cmp	x1, #5
	beq	L72
	cmp	x1, #6
	beq	L71
	cmp	x1, #7
	bne	L79
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x20, x1
	ldr	x20, [x1]
	mov	x1, x19
	bl	_compiler_typesystem_checker_subst_list
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, x19
	bl	_compiler_typesystem_checker_subst_type_params
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #7
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L79
L71:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_subst_list
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #6
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L79
L72:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_subst_type_params
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #5
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L79
L73:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_subst_list
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #8
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L79
L74:
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	bl	_compiler_typesystem_checker_lookup_type_var
	mov	x2, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	L78
	mov	x0, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
	b	L79
L78:
	str	x0, [x1]
L79:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_subst_type_params */

.text
.balign 4
_compiler_typesystem_checker_subst_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L82
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	bl	_compiler_typesystem_checker_subst_list
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_typesystem_checker_subst_type_params
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L83
L82:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L83:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_subst_list */

.text
.balign 4
_compiler_typesystem_checker_lookup_type_var:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L88
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
	beq	L87
	bl	_compiler_typesystem_checker_lookup_type_var
	str	x0, [x19]
	b	L89
L87:
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L89
L88:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L89:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_lookup_type_var */

.text
.balign 4
_compiler_typesystem_checker_check_constants:
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
	beq	L95
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	_compiler_typesystem_checker_check_constant
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L93
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x21, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x20, [x3]
	bl	_compiler_typesystem_checker_check_constants
	str	x0, [x19]
	b	L97
L93:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L97
L95:
	mov	x0, x20
	mov	x19, x1
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	str	x1, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L97:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_check_constants */

.text
.balign 4
_compiler_typesystem_checker_check_constant:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #24
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L103
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x19, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x22]
	cmp	x1, #0
	beq	L101
	mov	x21, x0
	mov	x0, #8
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x22, x0
	mov	x0, x21
	str	x22, [x20]
	b	L102
L101:
	mov	x21, x0
	mov	x0, x19
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x22, x0
	mov	x0, x21
	str	x22, [x20]
L102:
	mov	x2, x22
	mov	x1, x24
	bl	_compiler_typesystem_env_env_bind
	mov	x20, x0
	mov	x0, #40
	bl	_malloc
	mov	x21, x0
	mov	x0, #0
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	str	x21, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L105
L103:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L105:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_check_constant */

.text
.balign 4
_compiler_typesystem_checker_check_functions:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	_compiler_typesystem_checker_register_fn_sigs
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	bl	_compiler_typesystem_checker_infer_return_types
	mov	x1, x0
	mov	x0, x19
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_check_function_bodies
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_check_functions */

.text
.balign 4
_compiler_typesystem_checker_infer_return_types:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L110
	mov	x1, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	_compiler_typesystem_checker_infer_return_type_one
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_infer_return_types
L110:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_infer_return_types */

.text
.balign 4
_compiler_typesystem_checker_infer_return_type_one:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x3, x0
	mov	x0, x1
	mov	x22, x0
	ldr	x0, [x3]
	cmp	x0, #1
	beq	L120
	mov	x0, #8
	add	x0, x3, x0
	ldr	x1, [x0]
	mov	x0, #24
	add	x0, x3, x0
	ldr	x0, [x0]
	mov	x2, #32
	add	x2, x3, x2
	ldr	x2, [x2]
	mov	x4, #40
	add	x3, x3, x4
	ldr	x20, [x3]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x2, [x2]
	cmp	x2, #1
	beq	L118
	mov	x21, x1
	mov	x1, x22
	bl	_compiler_typesystem_checker_build_param_pairs
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	mov	x20, x1
	mov	x1, x22
	mov	x23, x0
	mov	x0, x21
	bl	_compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L115
	mov	x23, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x0, [x0]
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x24, x1
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	bl	_donna_list_map
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #7
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x21, [x3]
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x20]
	b	L117
L115:
	mov	x0, x22
	str	x0, [x20]
L117:
	str	x0, [x19]
	b	L121
L118:
	mov	x0, x22
	str	x0, [x19]
	b	L121
L120:
	mov	x0, x22
L121:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_infer_return_type_one */

.text
.balign 4
_compiler_typesystem_checker_register_fn_sigs:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L124
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x21, x0
	bl	_compiler_typesystem_checker_fn_name
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_function_sig_type
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_typesystem_env_env_bind
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_register_fn_sigs
	b	L125
L124:
	mov	x0, x20
L125:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_register_fn_sigs */

.text
.balign 4
_compiler_typesystem_checker_fn_name:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L128
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L129
L128:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
L129:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_fn_name */

.text
.balign 4
_compiler_typesystem_checker_function_sig_type:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	_compiler_typesystem_checker_fn_params
	bl	_compiler_typesystem_checker_params_to_types
	mov	x20, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_fn_return_type
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L132
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x19, x0
	b	L133
L132:
	adrp	x19, _compiler_typesystem_types_TNil@page
	add	x19, x19, _compiler_typesystem_types_TNil@pageoff
L133:
	mov	x0, #24
	bl	_malloc
	mov	x1, #7
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_function_sig_type */

.text
.balign 4
_compiler_typesystem_checker_fn_params:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L137
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L138
L137:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
L138:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_fn_params */

.text
.balign 4
_compiler_typesystem_checker_fn_return_type:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L141
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L142
L141:
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
L142:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_fn_return_type */

.text
.balign 4
_compiler_typesystem_checker_params_to_types:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L149
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L146
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x20]
	b	L148
L146:
	mov	x0, x21
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x1, #9
	str	x1, [x21]
	mov	x1, #8
	add	x2, x21, x1
	mov	x1, #0
	str	x1, [x2]
	str	x21, [x20]
L148:
	bl	_compiler_typesystem_checker_params_to_types
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L150
L149:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L150:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_params_to_types */

.text
.balign 4
_compiler_typesystem_checker_check_function_bodies:
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
	mov	x22, x3
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	ldr	x3, [x2]
	cmp	x3, #0
	beq	L159
	mov	x19, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	bl	_compiler_typesystem_checker_check_function
	mov	x2, x0
	mov	x0, x19
	ldr	x1, [x2]
	mov	x3, #8
	add	x3, x2, x3
	ldr	x19, [x3]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x25, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x23, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L155
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x24, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x25
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x21, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x1, x0, x1
	str	x24, [x1]
	str	x0, [x23]
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
	b	L158
L155:
	mov	x21, x25
	str	x0, [x23]
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
L158:
	bl	_donna_list_reverse
	mov	x1, x21
	mov	x21, x1
	mov	x1, x22
	bl	_donna_list_append
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	mov	x2, x19
	bl	_compiler_typesystem_checker_check_function_bodies
	b	L161
L159:
	mov	x19, x22
	mov	x21, x1
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L161:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
/* end function compiler_typesystem_checker_check_function_bodies */

.text
.balign 4
_compiler_typesystem_checker_check_function:
	hint	#34
	stp	x29, x30, [sp, -160]!
	mov	x29, sp
	str	x19, [x29, 152]
	str	x20, [x29, 144]
	str	x21, [x29, 136]
	str	x22, [x29, 128]
	str	x23, [x29, 120]
	str	x24, [x29, 112]
	str	x25, [x29, 104]
	str	x26, [x29, 96]
	str	x27, [x29, 88]
	str	x28, [x29, 80]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L181
	mov	x2, #8
	add	x2, x1, x2
	ldr	x28, [x2]
	mov	x2, #16
	add	x2, x1, x2
	ldr	x27, [x2]
	mov	x19, x0
	mov	x0, #24
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #32
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #40
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #48
	add	x1, x1, x2
	ldr	x1, [x1]
	str	x1, [x29, 64]
	mov	x1, x19
	bl	_compiler_typesystem_checker_build_param_pairs
	mov	x26, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x21]
	cmp	x1, #0
	beq	L165
	mov	x19, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x22]
	b	L168
L165:
	mov	x19, x22
	adrp	x1, _compiler_typesystem_types_TNil@page
	add	x1, x1, _compiler_typesystem_types_TNil@pageoff
	str	x1, [x19]
	adrp	x19, _compiler_typesystem_types_TNil@page
	add	x19, x19, _compiler_typesystem_types_TNil@pageoff
L168:
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x22, x0
	mov	x0, x26
	bl	_donna_list_map
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x1, #7
	str	x1, [x23]
	mov	x1, #8
	add	x1, x23, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x23, x1
	str	x19, [x1]
	mov	x2, x23
	mov	x1, x28
	bl	_compiler_typesystem_env_env_bind
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, x20
	mov	x22, x0
	mov	x0, x26
	bl	_compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x22
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	str	x19, [x29, 56]
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L179
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x24, [x1]
	mov	x19, x0
	mov	x0, x24
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x25, x0
	mov	x0, x19
	ldr	x19, [x29, 56]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	str	x22, [x29, 40]
	ldr	x1, [x21]
	cmp	x1, #0
	beq	L176
	mov	x1, x0
	mov	x19, x0
	mov	x0, x25
	bl	_compiler_typesystem_types_types_equal
	mov	x2, x0
	mov	x0, x19
	ldr	x22, [x29, 40]
	ldr	x19, [x29, 56]
	ldr	x1, [x29, 64]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	str	x21, [x29, 48]
	cmp	x2, #0
	beq	L173
	mov	x25, x24
	mov	x21, x0
	mov	x0, #64
	bl	_malloc
	mov	x24, x0
	mov	x0, x21
	ldr	x21, [x29, 48]
	mov	x22, x20
	ldr	x20, [x29, 40]
	mov	x1, #0
	str	x1, [x24]
	mov	x1, #8
	add	x1, x24, x1
	str	x28, [x1]
	mov	x1, #16
	add	x1, x24, x1
	str	x27, [x1]
	mov	x1, #24
	add	x1, x24, x1
	str	x26, [x1]
	mov	x1, #32
	add	x1, x24, x1
	str	x0, [x1]
	mov	x0, #40
	add	x0, x24, x0
	str	x25, [x0]
	mov	x0, #48
	add	x1, x24, x0
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x1]
	mov	x0, #56
	add	x0, x24, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x23, x0
	mov	x0, #1
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #24
	bl	_malloc
	str	x23, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L175
L173:
	mov	x17, x22
	mov	x22, x20
	mov	x20, x17
	mov	x23, x1
	bl	_compiler_typesystem_types_type_to_string
	mov	x26, x0
	mov	x0, x25
	bl	_compiler_typesystem_types_type_to_string
	mov	x25, x0
	mov	x0, #32
	bl	_malloc
	mov	x24, x0
	mov	x0, #19
	str	x0, [x24]
	mov	x0, #8
	add	x0, x24, x0
	str	x26, [x0]
	mov	x0, #16
	add	x0, x24, x0
	str	x25, [x0]
	mov	x0, #24
	add	x0, x24, x0
	str	x23, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x23, x0
	mov	x0, #1
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #16
	add	x1, x23, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L175:
	str	x0, [x20]
	b	L178
L176:
	mov	x21, x20
	mov	x20, x22
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x0, x26
	bl	_donna_list_map
	str	x0, [x29, 32]
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	ldr	x0, [x29, 32]
	mov	x1, #7
	str	x1, [x22]
	mov	x1, #8
	add	x1, x22, x1
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x25, [x0]
	mov	x2, x22
	mov	x1, x28
	mov	x0, x21
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x29, 24]
	mov	x0, #64
	bl	_malloc
	mov	x23, x0
	ldr	x21, [x29, 24]
	mov	x0, #0
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x28, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x27, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x26, [x0]
	mov	x0, #32
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #40
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #48
	add	x1, x23, x0
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x1]
	mov	x0, #56
	add	x0, x23, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	_malloc
	str	x22, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L178:
	str	x0, [x19]
	b	L186
L179:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L186
L181:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x27, [x2]
	mov	x2, #16
	add	x2, x1, x2
	ldr	x26, [x2]
	mov	x19, x0
	mov	x0, #24
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #32
	add	x2, x1, x2
	ldr	x21, [x2]
	mov	x2, #40
	add	x2, x1, x2
	ldr	x28, [x2]
	mov	x2, #48
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x1, x19
	bl	_compiler_typesystem_checker_build_param_pairs
	mov	x25, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x21]
	cmp	x1, #0
	beq	L183
	mov	x20, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x24, x0
	mov	x0, x20
	str	x24, [x19]
	b	L185
L183:
	adrp	x1, _compiler_typesystem_types_TNil@page
	add	x1, x1, _compiler_typesystem_types_TNil@pageoff
	str	x1, [x19]
	adrp	x24, _compiler_typesystem_types_TNil@page
	add	x24, x24, _compiler_typesystem_types_TNil@pageoff
L185:
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x19, x0
	mov	x0, x25
	bl	_donna_list_map
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, #7
	str	x1, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x19, [x1]
	mov	x1, #16
	add	x1, x20, x1
	str	x24, [x1]
	mov	x2, x20
	mov	x1, x27
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x29, 16]
	mov	x0, #24
	bl	_malloc
	mov	x23, x0
	mov	x0, #0
	str	x0, [x23]
	mov	x0, #8
	add	x1, x23, x0
	adrp	x0, _str901@page
	add	x0, x0, _str901@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x1, x23, x0
	adrp	x0, _compiler_typesystem_types_TNil@page
	add	x0, x0, _compiler_typesystem_types_TNil@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	ldr	x19, [x29, 16]
	str	x28, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x21, [x0]
	mov	x0, #64
	bl	_malloc
	mov	x21, x0
	mov	x0, #0
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x26, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x25, [x0]
	mov	x0, #32
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #40
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #48
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #56
	add	x0, x21, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	str	x20, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
L186:
	ldr	x19, [x29, 152]
	ldr	x20, [x29, 144]
	ldr	x21, [x29, 136]
	ldr	x22, [x29, 128]
	ldr	x23, [x29, 120]
	ldr	x24, [x29, 112]
	ldr	x25, [x29, 104]
	ldr	x26, [x29, 96]
	ldr	x27, [x29, 88]
	ldr	x28, [x29, 80]
	mov sp, x29
	ldp	x29, x30, [sp], 160
	ret
/* end function compiler_typesystem_checker_check_function */

.text
.balign 4
_compiler_typesystem_checker_build_param_pairs:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L194
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	mov	x2, #8
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L191
	mov	x24, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x22, x0
	mov	x0, x21
	str	x22, [x20]
	mov	x1, x24
	b	L193
L191:
	mov	x0, x21
	mov	x24, x1
	mov	x21, x0
	mov	x0, x24
	bl	_compiler_typesystem_env_env_next_var
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x24
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x2, #9
	str	x2, [x22]
	mov	x2, #8
	add	x2, x22, x2
	str	x21, [x2]
	str	x22, [x20]
L193:
	bl	_compiler_typesystem_checker_build_param_pairs
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L195
L194:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L195:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_build_param_pairs */

.text
.balign 4
_compiler_typesystem_checker_bind_param_pairs:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L198
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x19, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	_compiler_typesystem_env_env_bind
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_bind_param_pairs
L198:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_bind_param_pairs */

.text
.balign 4
.globl _compiler_typesystem_checker_infer_expr
_compiler_typesystem_checker_infer_expr:
	hint	#34
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [x29, 120]
	str	x20, [x29, 112]
	str	x21, [x29, 104]
	str	x22, [x29, 96]
	str	x23, [x29, 88]
	str	x24, [x29, 80]
	str	x25, [x29, 72]
	str	x26, [x29, 64]
	str	x27, [x29, 56]
	str	x28, [x29, 48]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L328
	cmp	x2, #1
	beq	L327
	cmp	x2, #2
	beq	L326
	cmp	x2, #3
	beq	L325
	cmp	x2, #4
	beq	L319
	cmp	x2, #5
	beq	L303
	cmp	x2, #9
	beq	L289
	cmp	x2, #10
	beq	L279
	cmp	x2, #11
	beq	L272
	cmp	x2, #14
	beq	L266
	cmp	x2, #12
	beq	L259
	cmp	x2, #6
	beq	L256
	cmp	x2, #7
	beq	L245
	cmp	x2, #8
	beq	L230
	cmp	x2, #13
	beq	L227
	cmp	x2, #16
	beq	L224
	cmp	x2, #15
	beq	L221
	cmp	x2, #17
	beq	L218
	mov	x0, x1
	bl	_compiler_typesystem_env_fresh_var
	ldr	x19, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	mov	x0, #17
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	str	x21, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L329
L218:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L220
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x23, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_env_fresh_var
	ldr	x20, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #16
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L220:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L221:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x20, x1
	bl	_compiler_typesystem_checker_build_param_pairs
	mov	x1, x20
	mov	x24, x0
	mov	x0, x19
	mov	x19, x1
	mov	x20, x0
	mov	x0, x24
	bl	_compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x20
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L223
	mov	x20, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x23, [x0]
	mov	x0, x23
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x20
	mov	x21, x0
	mov	x20, x1
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x0, x24
	bl	_donna_list_map
	mov	x25, x0
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #7
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x21, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	mov	x0, #15
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	str	x21, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L223:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L224:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L226
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x20, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #14
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	add	x1, x22, x0
	adrp	x0, _compiler_typesystem_types_TNil@page
	add	x0, x0, _compiler_typesystem_types_TNil@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L226:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L227:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x3, _compiler_typesystem_types_TNil@page
	add	x3, x3, _compiler_typesystem_types_TNil@pageoff
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x19, x1
	bl	_compiler_typesystem_checker_check_stmts
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L229
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x23, [x0]
	mov	x20, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	str	x21, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L229:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L230:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_infer_exprs
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L243
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x25, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L241
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x24, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	ldr	x0, [x25]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L235
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L237
L235:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L237:
	cmp	w0, #0
	bne	L239
	mov	x0, x24
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x23, x0
	str	x23, [x21]
	b	L240
L239:
	mov	x0, #8
	add	x0, x25, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x23, x0
	str	x23, [x21]
L240:
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	mov	x0, #5
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x23, x0
	mov	x0, #12
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L242
L241:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L242:
	str	x0, [x19]
	b	L329
L243:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L245:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_infer_exprs
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L255
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x23, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x23]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L249
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	L251
L249:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
L251:
	cmp	w0, #0
	bne	L253
	mov	x0, x21
	bl	_compiler_typesystem_env_fresh_var
	ldr	x22, [x0]
	str	x22, [x20]
	b	L254
L253:
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x22, x0
	str	x22, [x20]
L254:
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #5
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #11
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L255:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L256:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_infer_exprs
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L258
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x23, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	adrp	x1, _compiler_typesystem_types_typed_expr_type@page
	add	x1, x1, _compiler_typesystem_types_typed_expr_type@pageoff
	mov	x0, x23
	bl	_donna_list_map
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #6
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #10
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L258:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L259:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L264
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x25, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x20, x0
	mov	x0, x25
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x2, x0
	mov	x0, x20
	mov	x1, x22
	bl	_compiler_typesystem_checker_infer_clauses
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L262
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x24, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x23, x0
	mov	x0, #9
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L263
L262:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L263:
	str	x0, [x19]
	b	L329
L264:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L266:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x25, [x2]
	mov	x2, #16
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x21, x1
	mov	x1, #24
	add	x0, x0, x1
	mov	x22, x20
	ldr	x20, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x22]
	cmp	x0, #9
	beq	L269
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x25, [x0]
	mov	x0, #16
	mov	x23, x1
	add	x1, x21, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #32
	bl	_malloc
	mov	x1, x23
	mov	x2, #9
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x21, [x2]
	mov	x23, x1
	mov	x1, #24
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	mov	x1, x23
	b	L271
L269:
	mov	x20, x22
	mov	x23, x21
	mov	x0, #8
	add	x0, x20, x0
	ldr	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	ldr	x24, [x0]
	mov	x0, #24
	add	x0, x20, x0
	ldr	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x25, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x1, x23
	mov	x2, #9
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x21, [x2]
	mov	x2, #24
	add	x2, x0, x2
	str	x20, [x2]
	str	x0, [x19]
L271:
	bl	_compiler_typesystem_checker_infer_expr
	b	L329
L272:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L278
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x23, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x22, sp
	ldr	x0, [x24]
	cmp	x0, #0
	beq	L276
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	str	x0, [x22]
	adrp	x20, _compiler_typesystem_types_TBool@page
	add	x20, x20, _compiler_typesystem_types_TBool@pageoff
	b	L277
L276:
	mov	x0, x23
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x20, x0
	str	x20, [x22]
L277:
	mov	x0, #32
	bl	_malloc
	mov	x22, x0
	mov	x0, #8
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L278:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L279:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x27, [x2]
	mov	x2, x0
	mov	x0, #16
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #24
	add	x3, x2, x3
	ldr	x19, [x3]
	mov	x3, #32
	add	x2, x2, x3
	ldr	x22, [x2]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L287
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x26, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L285
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x25, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x23, [x0]
	mov	x0, x26
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x21, x0
	mov	x0, x25
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x3, x22
	mov	x1, x21
	mov	x2, x0
	mov	x21, x1
	mov	x0, x27
	bl	_compiler_typesystem_checker_check_binop_types
	mov	x1, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L283
	mov	x0, x27
	bl	_compiler_typesystem_checker_binop_result_type
	mov	x22, x0
	mov	x0, #40
	bl	_malloc
	mov	x24, x0
	mov	x0, #7
	str	x0, [x24]
	mov	x0, #8
	add	x0, x24, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x24, x0
	str	x26, [x0]
	mov	x0, #24
	add	x0, x24, x0
	str	x25, [x0]
	mov	x0, #32
	add	x0, x24, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	str	x24, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L284
L283:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L284:
	str	x0, [x20]
	b	L286
L285:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L286:
	str	x0, [x19]
	b	L329
L287:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L289:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x3, x2, x3
	ldr	x19, [x3]
	mov	x3, #24
	add	x2, x2, x3
	ldr	x28, [x2]
	str	x28, [x29, 16]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L301
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x27, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_infer_exprs
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L299
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x26, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x24, [x0]
	adrp	x1, _compiler_typesystem_types_typed_expr_type@page
	add	x1, x1, _compiler_typesystem_types_typed_expr_type@pageoff
	mov	x0, x26
	bl	_donna_list_map
	mov	x21, x0
	mov	x0, x27
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	mov	x25, x0
	ldr	x0, [x1]
	cmp	x0, #7
	beq	L293
	mov	x0, x24
	bl	_compiler_typesystem_env_fresh_var
	ldr	x22, [x0]
	mov	x0, #32
	bl	_malloc
	mov	x23, x0
	mov	x0, #6
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x26, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	str	x23, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L298
L293:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	str	x23, [x29, 24]
	mov	x22, x0
	bl	_donna_list_length
	str	x0, [x29, 32]
	mov	x0, x22
	mov	x22, x0
	mov	x0, x25
	bl	_donna_list_length
	mov	x2, x0
	mov	x0, x22
	ldr	x1, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x28, [x29, 16]
	cmp	x1, x2
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #0
	beq	L295
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x1, x25
	bl	_compiler_typesystem_checker_collect_all_bindings
	mov	x1, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_apply_subst
	mov	x23, x0
	mov	x0, #32
	bl	_malloc
	mov	x25, x0
	mov	x0, #6
	str	x0, [x25]
	mov	x0, #8
	add	x0, x25, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x25, x0
	str	x26, [x0]
	mov	x0, #24
	add	x0, x25, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x23, x0
	str	x25, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
	b	L297
L295:
	mov	x23, x25
	mov	x24, x28
	bl	_donna_list_length
	mov	x26, x0
	mov	x0, x23
	bl	_donna_list_length
	mov	x25, x0
	mov	x0, #32
	bl	_malloc
	mov	x23, x0
	mov	x0, #16
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x26, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x25, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
L297:
	str	x0, [x21]
L298:
	str	x0, [x20]
	b	L300
L299:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L300:
	str	x0, [x19]
	b	L329
L301:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L303:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x3, x2, x3
	ldr	x26, [x3]
	mov	x3, #24
	add	x2, x2, x3
	ldr	x23, [x2]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L318
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x27, [x0]
	mov	x1, #8
	add	x0, x0, x1
	mov	x22, x23
	ldr	x23, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x20, sp
	ldr	x0, [x27]
	cmp	x0, #4
	beq	L306
	mov	x0, x23
	bl	_compiler_typesystem_env_fresh_var
	ldr	x21, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #40
	bl	_malloc
	mov	x23, x0
	mov	x0, #5
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x26, [x0]
	mov	x0, #24
	add	x1, x23, x0
	adrp	x0, _str1287@page
	add	x0, x0, _str1287@pageoff
	str	x0, [x1]
	mov	x0, #32
	add	x0, x23, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L317
L306:
	mov	x0, #8
	add	x0, x27, x0
	ldr	x24, [x0]
	mov	x1, x24
	mov	x0, x23
	bl	_compiler_typesystem_env_env_lookup_module
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L314
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x24
	mov	x22, x0
	mov	x0, x23
	bl	_compiler_typesystem_env_env_lookup_alias
	mov	x2, x0
	mov	x0, x22
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L309
	str	x24, [x1]
	b	L310
L309:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x24, [x2]
	str	x24, [x1]
L310:
	bl	_compiler_typesystem_checker_iface_bindings
	mov	x1, x26
	bl	_compiler_typesystem_checker_lookup_binding
	mov	x1, #16
	mov	x25, x24
	sub	sp, sp, x1
	mov	x24, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L312
	mov	x0, x23
	bl	_compiler_typesystem_env_fresh_var
	ldr	x22, [x0]
	str	x22, [x24]
	b	L313
L312:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	str	x22, [x24]
L313:
	mov	x0, #40
	bl	_malloc
	mov	x24, x0
	mov	x0, #5
	str	x0, [x24]
	mov	x0, #8
	add	x0, x24, x0
	str	x27, [x0]
	mov	x0, #16
	add	x0, x24, x0
	str	x26, [x0]
	mov	x0, #24
	add	x0, x24, x0
	str	x25, [x0]
	mov	x0, #32
	add	x0, x24, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	str	x24, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
	b	L316
L314:
	mov	x23, x22
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #15
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L316:
	str	x0, [x20]
L317:
	str	x0, [x19]
	b	L329
L318:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L329
L319:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x22, [x0]
	mov	x19, x1
	mov	x1, x22
	mov	x0, x19
	bl	_compiler_typesystem_env_env_lookup
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L322
	mov	x0, x19
	bl	_compiler_typesystem_env_fresh_var
	mov	x1, x19
	ldr	x21, [x0]
	str	x21, [x20]
	mov	x19, x1
	b	L324
L322:
	mov	x1, x19
	mov	x19, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	str	x21, [x20]
L324:
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	mov	x0, #4
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L329
L325:
	mov	x20, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #3
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #16
	mov	x19, x1
	add	x1, x20, x0
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L329
L326:
	mov	x20, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #2
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #16
	mov	x19, x1
	add	x1, x20, x0
	adrp	x0, _compiler_typesystem_types_TString@page
	add	x0, x0, _compiler_typesystem_types_TString@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L329
L327:
	mov	x20, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #16
	mov	x19, x1
	add	x1, x20, x0
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L329
L328:
	mov	x20, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #16
	mov	x19, x1
	add	x1, x20, x0
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L329:
	ldr	x19, [x29, 120]
	ldr	x20, [x29, 112]
	ldr	x21, [x29, 104]
	ldr	x22, [x29, 96]
	ldr	x23, [x29, 88]
	ldr	x24, [x29, 80]
	ldr	x25, [x29, 72]
	ldr	x26, [x29, 64]
	ldr	x27, [x29, 56]
	ldr	x28, [x29, 48]
	mov sp, x29
	ldp	x29, x30, [sp], 128
	ret
/* end function compiler_typesystem_checker_infer_expr */

.text
.balign 4
_compiler_typesystem_checker_infer_exprs:
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
	beq	L335
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L333
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x21, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x20, [x3]
	bl	_compiler_typesystem_checker_infer_exprs
	str	x0, [x19]
	b	L337
L333:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L337
L335:
	mov	x0, x20
	mov	x19, x1
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x1, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L337:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_infer_exprs */

.text
.balign 4
_compiler_typesystem_checker_infer_clauses:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x3, [x0]
	cmp	x3, #0
	beq	L340
	adrp	x4, _compiler_typesystem_types_TNil@page
	add	x4, x4, _compiler_typesystem_types_TNil@pageoff
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_infer_clauses_loop
	b	L341
L340:
	mov	x0, #16
	bl	_malloc
	mov	x19, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _compiler_typesystem_types_TNil@page
	add	x0, x0, _compiler_typesystem_types_TNil@pageoff
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L341:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_infer_clauses */

.text
.balign 4
_compiler_typesystem_checker_infer_clauses_loop:
	hint	#34
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [x29, 104]
	str	x20, [x29, 96]
	str	x21, [x29, 88]
	str	x22, [x29, 80]
	str	x23, [x29, 72]
	str	x24, [x29, 64]
	str	x25, [x29, 56]
	str	x26, [x29, 48]
	mov	x19, x4
	mov	x22, x3
	mov	x21, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L351
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	str	x0, [x29, 24]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	str	x19, [x29, 16]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x24, [x0]
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #24
	add	x1, x1, x3
	ldr	x20, [x1]
	mov	x23, x2
	mov	x2, x21
	mov	x1, x23
	mov	x25, x0
	mov	x0, x24
	bl	_compiler_typesystem_checker_bind_pattern_typed
	mov	x1, x0
	mov	x0, x25
	mov	x25, x1
	bl	_compiler_typesystem_checker_infer_guard
	mov	x1, x25
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L348
	mov	x3, #8
	add	x2, x2, x3
	ldr	x3, [x2]
	str	x3, [x29, 32]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x2, x23
	mov	x1, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	mov	x25, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L346
	mov	x23, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x19, [x0]
	mov	x0, x19
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x26, x0
	mov	x0, #40
	bl	_malloc
	mov	x4, x26
	mov	x2, x25
	mov	x1, x23
	mov	x23, x0
	ldr	x3, [x29, 32]
	ldr	x0, [x29, 24]
	mov	x5, #0
	str	x5, [x23]
	mov	x5, #8
	add	x5, x23, x5
	str	x24, [x5]
	mov	x26, x4
	mov	x4, #16
	add	x4, x23, x4
	str	x3, [x4]
	mov	x25, x2
	mov	x2, #24
	add	x2, x23, x2
	str	x19, [x2]
	mov	x24, x1
	mov	x1, #32
	add	x1, x23, x1
	str	x26, [x1]
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x4, x26
	mov	x2, x25
	mov	x1, x24
	mov	x3, x0
	mov	x0, x19
	ldr	x19, [x29, 16]
	mov	x5, #1
	str	x5, [x3]
	mov	x5, #8
	add	x5, x3, x5
	str	x23, [x5]
	mov	x5, #16
	add	x5, x3, x5
	str	x22, [x5]
	bl	_compiler_typesystem_checker_infer_clauses_loop
	str	x0, [x21]
	b	L347
L346:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L347:
	str	x0, [x20]
	b	L350
L348:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L350:
	str	x0, [x19]
	b	L353
L351:
	mov	x0, x22
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x4, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x4, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L353:
	ldr	x19, [x29, 104]
	ldr	x20, [x29, 96]
	ldr	x21, [x29, 88]
	ldr	x22, [x29, 80]
	ldr	x23, [x29, 72]
	ldr	x24, [x29, 64]
	ldr	x25, [x29, 56]
	ldr	x26, [x29, 48]
	mov sp, x29
	ldp	x29, x30, [sp], 112
	ret
/* end function compiler_typesystem_checker_infer_clauses_loop */

.text
.balign 4
_compiler_typesystem_checker_infer_guard:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L358
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L357
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L359
L357:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L359
L358:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	str	x1, [x2]
L359:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_infer_guard */

.text
.balign 4
_compiler_typesystem_checker_check_stmts:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x3
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L365
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	_compiler_typesystem_checker_check_stmt
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L363
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x2, #8
	add	x2, x1, x2
	ldr	x24, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x3, x24
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x4, #1
	str	x4, [x2]
	mov	x4, #8
	add	x4, x2, x4
	str	x21, [x4]
	mov	x4, #16
	add	x4, x2, x4
	str	x20, [x4]
	bl	_compiler_typesystem_checker_check_stmts
	str	x0, [x19]
	b	L367
L363:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L367
L365:
	mov	x0, x20
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x3, x19
	mov	x19, x0
	str	x20, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L367:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_check_stmts */

.text
.balign 4
_compiler_typesystem_checker_check_stmt:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L378
	cmp	x1, #1
	beq	L374
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L372
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, x20
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x1, #2
	str	x1, [x22]
	mov	x1, #8
	add	x1, x22, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x22, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x20, x1
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L385
L372:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L385
L374:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L376
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, x20
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x21
	mov	x2, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_bind_pattern_typed
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	str	x22, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _compiler_typesystem_types_TNil@page
	add	x0, x0, _compiler_typesystem_types_TNil@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L385
L376:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L385
L378:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L383
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x23]
	cmp	x1, #0
	beq	L381
	mov	x22, x0
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x22, [x21]
	b	L382
L381:
	mov	x22, x0
	mov	x0, x20
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x22, [x21]
L382:
	mov	x2, x22
	mov	x1, x24
	bl	_compiler_typesystem_env_env_bind
	mov	x21, x0
	mov	x0, #32
	bl	_malloc
	mov	x23, x0
	mov	x0, #0
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x23, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x23, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x20, x0
	str	x23, [x20]
	mov	x0, #8
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L385
L383:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L385:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_check_stmt */

.text
.balign 4
_compiler_typesystem_checker_bind_pattern:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #2
	beq	L406
	cmp	x2, #0
	beq	L407
	cmp	x2, #1
	beq	L407
	cmp	x2, #3
	beq	L407
	cmp	x2, #4
	beq	L407
	cmp	x2, #5
	beq	L407
	cmp	x2, #6
	beq	L407
	cmp	x2, #7
	beq	L405
	cmp	x2, #8
	beq	L396
	mov	x19, x0
	mov	x0, #24
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_bind_pattern_list
	b	L407
L396:
	mov	x19, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x1, x19
	bl	_compiler_typesystem_checker_bind_pattern_list
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	cmp	x1, #0
	beq	L404
	cmp	x1, #1
	cset	x22, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	cmp	w22, #0
	bne	L400
	mov	x1, #0
	str	x1, [x21]
	mov	x1, #0
	b	L401
L400:
	mov	x23, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str2378@page
	add	x1, x1, _str2378@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x23
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x22
	str	x1, [x21]
L401:
	cmp	w1, #0
	bne	L403
	mov	x1, #8
	add	x1, x20, x1
	ldr	x22, [x1]
	mov	x20, x0
	bl	_compiler_typesystem_env_env_next_var
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x2, #9
	str	x2, [x20]
	mov	x22, x1
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #5
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x19]
	b	L407
L403:
	str	x0, [x19]
	b	L407
L404:
	str	x0, [x19]
	b	L407
L405:
	mov	x19, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_bind_pattern_list
	b	L407
L406:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x19, x0
	bl	_compiler_typesystem_env_env_next_var
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #9
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x19, [x3]
	bl	_compiler_typesystem_env_env_bind
L407:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_bind_pattern */

.text
.balign 4
_compiler_typesystem_checker_bind_pattern_typed:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x17, x1
	mov	x1, x2
	mov	x2, x17
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #2
	beq	L443
	cmp	x0, #0
	beq	L442
	cmp	x0, #1
	beq	L441
	cmp	x0, #3
	beq	L440
	cmp	x0, #4
	beq	L439
	cmp	x0, #5
	beq	L438
	cmp	x0, #6
	beq	L437
	cmp	x0, #7
	beq	L433
	cmp	x0, #8
	beq	L420
	mov	x0, #24
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x19, x0
	mov	x0, x1
	bl	_compiler_typesystem_checker_pattern_ctor_key
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_compiler_typesystem_env_env_lookup_ctor
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L419
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_bind_pattern_typed_list
	str	x0, [x19]
	b	L445
L419:
	mov	x1, x20
	bl	_compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	L445
L420:
	mov	x0, x20
	mov	x19, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x21, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x2]
	cmp	x1, #5
	beq	L423
	mov	x20, x0
	mov	x0, x19
	bl	_compiler_typesystem_env_env_next_var
	mov	x23, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, #9
	str	x1, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x23, [x1]
	str	x20, [x22]
	b	L424
L423:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x20, [x1]
	str	x20, [x22]
L424:
	mov	x2, x19
	mov	x1, x20
	bl	_compiler_typesystem_checker_bind_pattern_typed_repeated
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x21]
	cmp	x1, #0
	beq	L432
	cmp	x1, #1
	cset	x23, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	cmp	w23, #0
	bne	L428
	mov	x1, #0
	str	x1, [x22]
	mov	x1, #0
	b	L429
L428:
	mov	x24, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2519@page
	add	x1, x1, _str2519@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x24
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x23
	str	x1, [x22]
L429:
	cmp	w1, #0
	bne	L431
	mov	x1, #8
	add	x1, x21, x1
	ldr	x22, [x1]
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #5
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x19]
	b	L445
L431:
	str	x0, [x19]
	b	L445
L432:
	str	x0, [x19]
	b	L445
L433:
	mov	x0, x20
	mov	x20, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x2]
	cmp	x1, #6
	beq	L436
	mov	x1, x20
	bl	_compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	L445
L436:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_bind_pattern_typed_list
	str	x0, [x19]
	b	L445
L437:
	mov	x0, x20
	b	L445
L438:
	mov	x0, x20
	b	L445
L439:
	mov	x0, x20
	b	L445
L440:
	mov	x0, x20
	b	L445
L441:
	mov	x0, x20
	b	L445
L442:
	mov	x0, x20
	b	L445
L443:
	mov	x0, x20
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	_compiler_typesystem_env_env_bind
L445:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_bind_pattern_typed */

.text
.balign 4
_compiler_typesystem_checker_pattern_ctor_key:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x3, [x1]
	cmp	x3, #9
	cset	x0, eq
	cmp	w0, #0
	bne	L448
	mov	x2, #0
	b	L449
L448:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #1
	cset	x2, eq
	and	x2, x0, x2
L449:
	cmp	w2, #0
	bne	L457
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #9
	beq	L453
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L454
L453:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	and	x0, x0, x3
	str	x0, [x2]
L454:
	cmp	w0, #0
	bne	L456
	adrp	x0, _str2613@page
	add	x0, x0, _str2613@pageoff
	b	L458
L456:
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	b	L458
L457:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x19, x1
	adrp	x1, _str2588@page
	add	x1, x1, _str2588@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
L458:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_pattern_ctor_key */

.text
.balign 4
_compiler_typesystem_checker_bind_pattern_typed_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x3, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L465
	mov	x1, #8
	add	x1, x0, x1
	ldr	x4, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x3]
	cmp	x1, #0
	beq	L463
	mov	x0, x4
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	bl	_compiler_typesystem_checker_bind_pattern_typed
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_typesystem_checker_bind_pattern_typed_list
	str	x0, [x19]
	b	L466
L463:
	mov	x1, x2
	bl	_compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	L466
L465:
	mov	x0, x2
L466:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_bind_pattern_typed_list */

.text
.balign 4
_compiler_typesystem_checker_bind_pattern_typed_repeated:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x3, x0
	mov	x0, x2
	ldr	x2, [x3]
	cmp	x2, #0
	beq	L469
	mov	x2, x0
	mov	x0, #8
	add	x0, x3, x0
	ldr	x0, [x0]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x19, [x3]
	mov	x20, x1
	bl	_compiler_typesystem_checker_bind_pattern_typed
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_bind_pattern_typed_repeated
L469:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_bind_pattern_typed_repeated */

.text
.balign 4
_compiler_typesystem_checker_bind_pattern_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L472
	mov	x1, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	_compiler_typesystem_checker_bind_pattern
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_bind_pattern_list
L472:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_bind_pattern_list */

.text
.balign 4
.globl _compiler_typesystem_checker_annotation_to_type
_compiler_typesystem_checker_annotation_to_type:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x19, eq
	cmp	w19, #0
	bne	L475
	mov	x3, #0
	b	L476
L475:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str2676@page
	add	x1, x1, _str2676@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	and	x3, x19, x1
L476:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L479
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L480
L479:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L480:
	cmp	w1, #0
	bne	L543
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L484
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L485
L484:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2707@page
	add	x1, x1, _str2707@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L485:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L488
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L489
L488:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L489:
	cmp	w1, #0
	bne	L542
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L493
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L494
L493:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2738@page
	add	x1, x1, _str2738@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L494:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L497
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L498
L497:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L498:
	cmp	w1, #0
	bne	L541
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L502
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L503
L502:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2769@page
	add	x1, x1, _str2769@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L503:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L506
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L507
L506:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L507:
	cmp	w1, #0
	bne	L540
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L511
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L512
L511:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2800@page
	add	x1, x1, _str2800@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L512:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L515
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L516
L515:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L516:
	cmp	w1, #0
	bne	L539
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L520
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L521
L520:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2831@page
	add	x1, x1, _str2831@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x20
	str	x1, [x19]
L521:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	w1, #0
	bne	L524
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L529
L524:
	mov	x3, #16
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L527
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L528
L527:
	mov	x5, #16
	add	x3, x3, x5
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
L528:
	and	x1, x1, x3
	str	x1, [x2]
L529:
	cmp	w1, #0
	bne	L538
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L534
	cmp	x1, #1
	beq	L533
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	adrp	x1, _compiler_typesystem_checker_annotation_to_type@page
	add	x1, x1, _compiler_typesystem_checker_annotation_to_type@pageoff
	bl	_donna_list_map
	mov	x20, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #7
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L544
L533:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_typesystem_checker_annotation_to_type@page
	add	x1, x1, _compiler_typesystem_checker_annotation_to_type@pageoff
	bl	_donna_list_map
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #6
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L544
L534:
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	bl	_compiler_typesystem_checker_unqualify
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_compiler_typesystem_checker_is_type_var
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L536
	adrp	x1, _compiler_typesystem_checker_annotation_to_type@page
	add	x1, x1, _compiler_typesystem_checker_annotation_to_type@pageoff
	bl	_donna_list_map
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #8
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L544
L536:
	mov	x0, x20
	mov	x1, #0
	bl	_donna_string_char_at
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #9
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L544
L538:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #5
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L544
L539:
	adrp	x0, _compiler_typesystem_types_TNil@page
	add	x0, x0, _compiler_typesystem_types_TNil@pageoff
	b	L544
L540:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L544
L541:
	adrp	x0, _compiler_typesystem_types_TString@page
	add	x0, x0, _compiler_typesystem_types_TString@pageoff
	b	L544
L542:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L544
L543:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
L544:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_annotation_to_type */

.text
.balign 4
_compiler_typesystem_checker_is_type_var:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #0
	bl	_donna_string_char_at
	mov	x1, x0
	cmp	x1, #97
	cset	x0, ge
	cmp	x1, #122
	cset	x1, le
	and	x0, x0, x1
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_is_type_var */

.text
.balign 4
_compiler_typesystem_checker_unqualify:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x19, x1
	adrp	x1, _str2925@page
	add	x1, x1, _str2925@pageoff
	mov	x0, x19
	bl	_donna_string_split
	mov	x1, x19
	bl	_compiler_typesystem_checker_last_segment
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_unqualify */

.text
.balign 4
_compiler_typesystem_checker_last_segment:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L557
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L553
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L554
L553:
	mov	x2, #16
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L554:
	cmp	w2, #0
	bne	L556
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_last_segment
	b	L558
L556:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L558
L557:
	mov	x0, x1
L558:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_last_segment */

.text
.balign 4
_compiler_typesystem_checker_collect_all_bindings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x3, x1
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L564
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x4, #16
	add	x1, x1, x4
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x3]
	cmp	x1, #0
	beq	L562
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	bl	_compiler_typesystem_checker_collect_bindings
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_typesystem_checker_collect_all_bindings
	str	x0, [x19]
	b	L565
L562:
	mov	x0, x2
	str	x0, [x19]
	b	L565
L564:
	mov	x0, x2
L565:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_collect_all_bindings */

.text
.balign 4
_compiler_typesystem_checker_collect_bindings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x22, x0
	ldr	x0, [x2]
	cmp	x0, #9
	beq	L594
	cmp	x0, #5
	beq	L589
	cmp	x0, #6
	beq	L584
	cmp	x0, #7
	beq	L580
	cmp	x0, #8
	beq	L572
	mov	x0, x22
	b	L598
L572:
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #8
	beq	L575
	str	x22, [x19]
	mov	x0, x22
	b	L598
L575:
	mov	x21, x1
	mov	x1, #8
	add	x1, x21, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x21, x2
	ldr	x21, [x2]
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	L578
	str	x22, [x20]
	mov	x0, x22
	b	L579
L578:
	mov	x2, x22
	bl	_compiler_typesystem_checker_collect_bindings_list
	str	x0, [x20]
L579:
	str	x0, [x19]
	b	L598
L580:
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #7
	beq	L583
	str	x22, [x19]
	mov	x0, x22
	b	L598
L583:
	mov	x21, x1
	mov	x1, #8
	add	x1, x21, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x21, x2
	ldr	x21, [x2]
	mov	x2, x22
	bl	_compiler_typesystem_checker_collect_bindings_list
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_typesystem_checker_collect_bindings
	str	x0, [x19]
	b	L598
L584:
	mov	x0, x22
	mov	x20, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #6
	beq	L588
	str	x20, [x19]
	mov	x0, x20
	b	L598
L588:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_collect_bindings_list
	str	x0, [x19]
	b	L598
L589:
	mov	x0, x22
	mov	x20, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #5
	beq	L593
	str	x20, [x19]
	mov	x0, x20
	b	L598
L593:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_collect_bindings
	str	x0, [x19]
	b	L598
L594:
	mov	x0, x22
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x22, x1
	mov	x1, x20
	mov	x19, x0
	bl	_compiler_typesystem_checker_lookup_int_binding
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x1, [x1]
	cmp	x1, #1
	beq	L597
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x20, [x21]
	mov	x2, #8
	add	x2, x21, x2
	str	x1, [x2]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L598
L597:
	str	x0, [x19]
L598:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_collect_bindings */

.text
.balign 4
_compiler_typesystem_checker_collect_bindings_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x3, x1
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L604
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x4, #16
	add	x1, x1, x4
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x3]
	cmp	x1, #0
	beq	L602
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	bl	_compiler_typesystem_checker_collect_bindings
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_typesystem_checker_collect_bindings_list
	str	x0, [x19]
	b	L605
L602:
	mov	x0, x2
	str	x0, [x19]
	b	L605
L604:
	mov	x0, x2
L605:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_collect_bindings_list */

.text
.balign 4
_compiler_typesystem_checker_lookup_int_binding:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L610
	mov	x2, #8
	add	x2, x0, x2
	ldr	x3, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x2, [x3]
	mov	x4, #8
	add	x3, x3, x4
	ldr	x20, [x3]
	cmp	x1, x2
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L609
	bl	_compiler_typesystem_checker_lookup_int_binding
	str	x0, [x19]
	b	L611
L609:
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L611
L610:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L611:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_lookup_int_binding */

.text
.balign 4
_compiler_typesystem_checker_apply_subst:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #9
	beq	L621
	cmp	x1, #5
	beq	L620
	cmp	x1, #6
	beq	L619
	cmp	x1, #7
	beq	L618
	cmp	x1, #8
	bne	L626
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_apply_subst_list
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #8
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L626
L618:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x20, x1
	ldr	x20, [x1]
	mov	x1, x19
	bl	_compiler_typesystem_checker_apply_subst_list
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, x19
	bl	_compiler_typesystem_checker_apply_subst
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #7
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L626
L619:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_apply_subst_list
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #6
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L626
L620:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_apply_subst
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #5
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	b	L626
L621:
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	bl	_compiler_typesystem_checker_lookup_int_binding
	mov	x2, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L624
	str	x0, [x1]
	b	L626
L624:
	mov	x0, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
L626:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_apply_subst */

.text
.balign 4
_compiler_typesystem_checker_apply_subst_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L629
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	bl	_compiler_typesystem_checker_apply_subst_list
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_typesystem_checker_apply_subst
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L630
L629:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L630:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_apply_subst_list */

.text
.balign 4
_compiler_typesystem_checker_check_binop_types:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x3
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x17, x2
	mov	x2, x1
	mov	x1, x17
	ldr	x2, [x2]
	cmp	x2, #5
	beq	L705
	cmp	x2, #6
	beq	L698
	cmp	x2, #7
	beq	L691
	cmp	x2, #8
	beq	L684
	cmp	x2, #15
	beq	L677
	cmp	x2, #16
	beq	L670
	cmp	x2, #17
	beq	L663
	cmp	x2, #18
	beq	L656
	cmp	x2, #19
	beq	L649
	cmp	x2, #20
	beq	L642
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	b	L712
L642:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #3
	beq	L644
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3569@page
	add	x0, x0, _str3569@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L644:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #3
	beq	L647
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3560@page
	add	x0, x0, _str3560@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L648
L647:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L648:
	str	x0, [x19]
	b	L712
L649:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #3
	beq	L651
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3533@page
	add	x0, x0, _str3533@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L651:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #3
	beq	L654
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3524@page
	add	x0, x0, _str3524@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L655
L654:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L655:
	str	x0, [x19]
	b	L712
L656:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L658
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3497@page
	add	x0, x0, _str3497@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L658:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L661
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3488@page
	add	x0, x0, _str3488@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L662
L661:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L662:
	str	x0, [x19]
	b	L712
L663:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L665
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3461@page
	add	x0, x0, _str3461@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L665:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L668
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3452@page
	add	x0, x0, _str3452@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L669
L668:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L669:
	str	x0, [x19]
	b	L712
L670:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L672
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3425@page
	add	x0, x0, _str3425@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L672:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L675
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3416@page
	add	x0, x0, _str3416@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L676
L675:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L676:
	str	x0, [x19]
	b	L712
L677:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L679
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3389@page
	add	x0, x0, _str3389@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L679:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L682
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3380@page
	add	x0, x0, _str3380@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L683
L682:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L683:
	str	x0, [x19]
	b	L712
L684:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L686
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3353@page
	add	x0, x0, _str3353@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L686:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L689
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3344@page
	add	x0, x0, _str3344@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L690
L689:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L690:
	str	x0, [x19]
	b	L712
L691:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L693
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3317@page
	add	x0, x0, _str3317@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L693:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L696
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3308@page
	add	x0, x0, _str3308@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L697
L696:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L697:
	str	x0, [x19]
	b	L712
L698:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L700
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3281@page
	add	x0, x0, _str3281@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L700:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L703
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3272@page
	add	x0, x0, _str3272@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L704
L703:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L704:
	str	x0, [x19]
	b	L712
L705:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L707
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3245@page
	add	x0, x0, _str3245@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L712
L707:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L710
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x3, x21
	mov	x21, x0
	mov	x0, #13
	str	x0, [x21]
	mov	x0, #8
	add	x1, x21, x0
	adrp	x0, _str3236@page
	add	x0, x0, _str3236@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x3, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L711
L710:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L711:
	str	x0, [x19]
L712:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_check_binop_types */

.text
.balign 4
_compiler_typesystem_checker_binop_result_type:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	L755
	cmp	x0, #1
	beq	L754
	cmp	x0, #2
	beq	L753
	cmp	x0, #3
	beq	L752
	cmp	x0, #4
	beq	L751
	cmp	x0, #5
	beq	L750
	cmp	x0, #6
	beq	L749
	cmp	x0, #7
	beq	L748
	cmp	x0, #8
	beq	L747
	cmp	x0, #9
	beq	L746
	cmp	x0, #10
	beq	L745
	cmp	x0, #11
	beq	L744
	cmp	x0, #12
	beq	L743
	cmp	x0, #13
	beq	L742
	cmp	x0, #14
	beq	L741
	cmp	x0, #15
	beq	L740
	cmp	x0, #16
	beq	L739
	cmp	x0, #17
	beq	L738
	cmp	x0, #18
	beq	L737
	cmp	x0, #19
	beq	L736
	cmp	x0, #20
	beq	L735
	adrp	x0, _compiler_typesystem_types_TString@page
	add	x0, x0, _compiler_typesystem_types_TString@pageoff
	b	L756
L735:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L736:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L737:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L738:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L739:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L740:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L741:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L742:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L743:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L744:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L745:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L746:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L756
L747:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L756
L748:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L756
L749:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L756
L750:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L756
L751:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L756
L752:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L756
L753:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L756
L754:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L756
L755:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
L756:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_binop_result_type */

.text
.balign 4
_compiler_typesystem_checker_path_last_segment:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x19, x1
	adrp	x1, _str3668@page
	add	x1, x1, _str3668@pageoff
	mov	x0, x19
	bl	_donna_string_split
	bl	_donna_list_reverse
	mov	x1, x19
	bl	_donna_list_head
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_path_last_segment */

.text
.balign 4
_compiler_typesystem_checker_lookup_binding:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L763
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
	beq	L762
	bl	_compiler_typesystem_checker_lookup_binding
	str	x0, [x19]
	b	L764
L762:
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L764
L763:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L764:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_lookup_binding */

.text
.balign 4
_compiler_typesystem_checker_pub_fns_to_bindings:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L770
	mov	x1, #8
	add	x1, x0, x1
	ldr	x2, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #8
	add	x1, x2, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #56
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L768
	bl	_compiler_typesystem_checker_pub_fns_to_bindings
	str	x0, [x20]
	b	L769
L768:
	bl	_compiler_typesystem_checker_pub_fns_to_bindings
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	str	x24, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L769:
	str	x0, [x19]
	b	L771
L770:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L771:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_pub_fns_to_bindings */

.text
.balign 4
_compiler_typesystem_checker_pub_consts_to_bindings:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L777
	mov	x1, #8
	add	x1, x0, x1
	ldr	x2, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #8
	add	x1, x2, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #24
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L775
	bl	_compiler_typesystem_checker_pub_consts_to_bindings
	str	x0, [x20]
	b	L776
L775:
	bl	_compiler_typesystem_checker_pub_consts_to_bindings
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x22, x0
	str	x24, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L776:
	str	x0, [x19]
	b	L778
L777:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L778:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_pub_consts_to_bindings */

.text
.balign 4
_compiler_typesystem_checker_pub_type_defs_to_ctor_bindings:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L785
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #8
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	L782
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, x23
	mov	x2, #8
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x22, [x2]
	mov	x2, #16
	add	x3, x1, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	str	x2, [x3]
	bl	_compiler_typesystem_checker_ctors_to_bindings
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	mov	x1, x0
	mov	x0, x21
	bl	_donna_list_append
	str	x0, [x20]
	b	L784
L782:
	mov	x0, x21
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	str	x0, [x20]
L784:
	str	x0, [x19]
	b	L786
L785:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L786:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_bindings */

.text
.balign 4
_compiler_typesystem_checker_ctors_to_bindings:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L795
	mov	x24, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	mov	x2, #8
	add	x2, x1, x2
	ldr	x22, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x20, x0
	mov	x0, x23
	bl	_donna_list_is_empty
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L791
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x2, #7
	str	x2, [x20]
	mov	x2, #8
	add	x2, x20, x2
	str	x23, [x2]
	mov	x2, #16
	add	x2, x20, x2
	str	x1, [x2]
	str	x20, [x21]
	mov	x21, x20
	b	L794
L791:
	mov	x20, x21
	mov	x1, x24
	str	x1, [x20]
	mov	x21, x1
L794:
	bl	_compiler_typesystem_checker_ctors_to_bindings
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x21
	mov	x21, x0
	str	x22, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L796
L795:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L796:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_ctors_to_bindings */

.text
.balign 4
_compiler_typesystem_checker_pub_type_defs_to_ctor_info:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L803
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #24
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #0
	beq	L800
	bl	_compiler_typesystem_checker_ctors_to_info
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x0
	mov	x0, x21
	bl	_donna_list_append
	str	x0, [x20]
	b	L802
L800:
	mov	x0, x21
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	str	x0, [x20]
L802:
	str	x0, [x19]
	b	L804
L803:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L804:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_info */

.text
.balign 4
_compiler_typesystem_checker_ctors_to_info:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L807
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x3, #8
	add	x3, x2, x3
	ldr	x23, [x3]
	mov	x3, #16
	add	x3, x2, x3
	ldr	x24, [x3]
	mov	x3, #24
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x22, x1
	bl	_compiler_typesystem_checker_ctors_to_info
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x22
	mov	x22, x0
	str	x1, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x22, x0
	str	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L808
L807:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L808:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function compiler_typesystem_checker_ctors_to_info */

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

