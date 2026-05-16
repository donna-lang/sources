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
_str2352:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str2493:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str2562:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str2587:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str2650:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
_str2681:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2712:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
_str2743:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str2774:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
_str2805:
	.ascii "List"
	.byte 0
/* end data */

.data
.balign 8
_str2899:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str3210:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3219:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3246:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3255:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3282:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3291:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3318:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3327:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3354:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3363:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3390:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3399:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3426:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3435:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3462:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3471:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str3498:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3507:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3534:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3543:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3642:
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
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L324
	cmp	x2, #1
	beq	L323
	cmp	x2, #2
	beq	L322
	cmp	x2, #3
	beq	L321
	cmp	x2, #4
	beq	L315
	cmp	x2, #5
	beq	L299
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
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
	b	L325
L289:
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
	beq	L297
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x25, [x1]
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
	beq	L295
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x24, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	adrp	x1, _compiler_typesystem_types_typed_expr_type@page
	add	x1, x1, _compiler_typesystem_types_typed_expr_type@pageoff
	mov	x0, x24
	bl	_donna_list_map
	mov	x21, x0
	mov	x0, x25
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x21
	mov	x2, x0
	mov	x0, #16
	sub	sp, sp, x0
	mov	x23, sp
	ldr	x0, [x2]
	cmp	x0, #7
	beq	L293
	mov	x0, x22
	bl	_compiler_typesystem_env_fresh_var
	ldr	x21, [x0]
	str	x21, [x23]
	b	L294
L293:
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_collect_all_bindings
	mov	x1, x0
	mov	x0, x21
	bl	_compiler_typesystem_checker_apply_subst
	mov	x21, x0
	str	x21, [x23]
L294:
	mov	x0, #32
	bl	_malloc
	mov	x23, x0
	mov	x0, #6
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
	b	L296
L295:
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
L296:
	str	x0, [x19]
	b	L325
L297:
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
	b	L325
L299:
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
	beq	L314
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
	beq	L302
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
	b	L313
L302:
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
	beq	L310
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
	beq	L305
	str	x24, [x1]
	b	L306
L305:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x24, [x2]
	str	x24, [x1]
L306:
	bl	_compiler_typesystem_checker_iface_bindings
	mov	x1, x26
	bl	_compiler_typesystem_checker_lookup_binding
	mov	x1, #16
	mov	x25, x24
	sub	sp, sp, x1
	mov	x24, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L308
	mov	x0, x23
	bl	_compiler_typesystem_env_fresh_var
	ldr	x22, [x0]
	str	x22, [x24]
	b	L309
L308:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	str	x22, [x24]
L309:
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
	b	L312
L310:
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
L312:
	str	x0, [x20]
L313:
	str	x0, [x19]
	b	L325
L314:
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
	b	L325
L315:
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
	beq	L318
	mov	x0, x19
	bl	_compiler_typesystem_env_fresh_var
	mov	x1, x19
	ldr	x21, [x0]
	str	x21, [x20]
	mov	x19, x1
	b	L320
L318:
	mov	x1, x19
	mov	x19, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	str	x21, [x20]
L320:
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
	b	L325
L321:
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
	b	L325
L322:
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
	b	L325
L323:
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
	b	L325
L324:
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
L325:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	ldr	x27, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 96
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
	beq	L331
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
	beq	L329
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
	b	L333
L329:
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
	b	L333
L331:
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
L333:
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
	beq	L336
	adrp	x4, _compiler_typesystem_types_TNil@page
	add	x4, x4, _compiler_typesystem_types_TNil@pageoff
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_infer_clauses_loop
	b	L337
L336:
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
L337:
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
	beq	L347
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
	beq	L344
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
	beq	L342
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
	b	L343
L342:
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
L343:
	str	x0, [x20]
	b	L346
L344:
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
L346:
	str	x0, [x19]
	b	L349
L347:
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
L349:
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
	beq	L354
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L353
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
	b	L355
L353:
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
	b	L355
L354:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _donna_option_None@page
	add	x1, x1, _donna_option_None@pageoff
	str	x1, [x2]
L355:
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
	beq	L361
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
	beq	L359
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
	b	L363
L359:
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
	b	L363
L361:
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
L363:
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
	beq	L374
	cmp	x1, #1
	beq	L370
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
	beq	L368
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
	b	L381
L368:
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
	b	L381
L370:
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
	beq	L372
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
	b	L381
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
	b	L381
L374:
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
	beq	L379
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	ldr	x1, [x23]
	cmp	x1, #0
	beq	L377
	mov	x22, x0
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x22, [x21]
	b	L378
L377:
	mov	x22, x0
	mov	x0, x20
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x22, [x21]
L378:
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
	b	L381
L379:
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
L381:
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
	beq	L402
	cmp	x2, #0
	beq	L403
	cmp	x2, #1
	beq	L403
	cmp	x2, #3
	beq	L403
	cmp	x2, #4
	beq	L403
	cmp	x2, #5
	beq	L403
	cmp	x2, #6
	beq	L403
	cmp	x2, #7
	beq	L401
	cmp	x2, #8
	beq	L392
	mov	x19, x0
	mov	x0, #24
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_bind_pattern_list
	b	L403
L392:
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
	beq	L400
	cmp	x1, #1
	cset	x22, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	cmp	w22, #0
	bne	L396
	mov	x1, #0
	str	x1, [x21]
	mov	x1, #0
	b	L397
L396:
	mov	x23, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str2352@page
	add	x1, x1, _str2352@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x23
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x22
	str	x1, [x21]
L397:
	cmp	w1, #0
	bne	L399
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
	b	L403
L399:
	str	x0, [x19]
	b	L403
L400:
	str	x0, [x19]
	b	L403
L401:
	mov	x19, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_bind_pattern_list
	b	L403
L402:
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
L403:
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
	beq	L439
	cmp	x0, #0
	beq	L438
	cmp	x0, #1
	beq	L437
	cmp	x0, #3
	beq	L436
	cmp	x0, #4
	beq	L435
	cmp	x0, #5
	beq	L434
	cmp	x0, #6
	beq	L433
	cmp	x0, #7
	beq	L429
	cmp	x0, #8
	beq	L416
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
	beq	L415
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_bind_pattern_typed_list
	str	x0, [x19]
	b	L441
L415:
	mov	x1, x20
	bl	_compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	L441
L416:
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
	beq	L419
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
	b	L420
L419:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x20, [x1]
	str	x20, [x22]
L420:
	mov	x2, x19
	mov	x1, x20
	bl	_compiler_typesystem_checker_bind_pattern_typed_repeated
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x21]
	cmp	x1, #0
	beq	L428
	cmp	x1, #1
	cset	x23, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	cmp	w23, #0
	bne	L424
	mov	x1, #0
	str	x1, [x22]
	mov	x1, #0
	b	L425
L424:
	mov	x24, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2493@page
	add	x1, x1, _str2493@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x24
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x23
	str	x1, [x22]
L425:
	cmp	w1, #0
	bne	L427
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
	b	L441
L427:
	str	x0, [x19]
	b	L441
L428:
	str	x0, [x19]
	b	L441
L429:
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
	beq	L432
	mov	x1, x20
	bl	_compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	L441
L432:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_bind_pattern_typed_list
	str	x0, [x19]
	b	L441
L433:
	mov	x0, x20
	b	L441
L434:
	mov	x0, x20
	b	L441
L435:
	mov	x0, x20
	b	L441
L436:
	mov	x0, x20
	b	L441
L437:
	mov	x0, x20
	b	L441
L438:
	mov	x0, x20
	b	L441
L439:
	mov	x0, x20
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	_compiler_typesystem_env_env_bind
L441:
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
	bne	L444
	mov	x2, #0
	b	L445
L444:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #1
	cset	x2, eq
	and	x2, x0, x2
L445:
	cmp	w2, #0
	bne	L453
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #9
	beq	L449
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L450
L449:
	mov	x3, #8
	add	x3, x1, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	and	x0, x0, x3
	str	x0, [x2]
L450:
	cmp	w0, #0
	bne	L452
	adrp	x0, _str2587@page
	add	x0, x0, _str2587@pageoff
	b	L454
L452:
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	b	L454
L453:
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
	adrp	x1, _str2562@page
	add	x1, x1, _str2562@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
L454:
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
	beq	L461
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
	beq	L459
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
	b	L462
L459:
	mov	x1, x2
	bl	_compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	L462
L461:
	mov	x0, x2
L462:
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
	beq	L465
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
L465:
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
	beq	L468
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
L468:
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
	bne	L471
	mov	x3, #0
	b	L472
L471:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str2650@page
	add	x1, x1, _str2650@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	and	x3, x19, x1
L472:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L475
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L476
L475:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L476:
	cmp	w1, #0
	bne	L539
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L480
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L481
L480:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2681@page
	add	x1, x1, _str2681@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L481:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L484
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L485
L484:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L485:
	cmp	w1, #0
	bne	L538
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L489
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L490
L489:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2712@page
	add	x1, x1, _str2712@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L490:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L493
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L494
L493:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L494:
	cmp	w1, #0
	bne	L537
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L498
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L499
L498:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2743@page
	add	x1, x1, _str2743@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L499:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L502
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L503
L502:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L503:
	cmp	w1, #0
	bne	L536
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L507
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L508
L507:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2774@page
	add	x1, x1, _str2774@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L508:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L511
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L512
L511:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L512:
	cmp	w1, #0
	bne	L535
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L516
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L517
L516:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2805@page
	add	x1, x1, _str2805@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x20
	str	x1, [x19]
L517:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	w1, #0
	bne	L520
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L525
L520:
	mov	x3, #16
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L523
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L524
L523:
	mov	x5, #16
	add	x3, x3, x5
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
L524:
	and	x1, x1, x3
	str	x1, [x2]
L525:
	cmp	w1, #0
	bne	L534
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L530
	cmp	x1, #1
	beq	L529
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
	b	L540
L529:
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
	b	L540
L530:
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
	beq	L532
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
	b	L540
L532:
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
	b	L540
L534:
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
	b	L540
L535:
	adrp	x0, _compiler_typesystem_types_TNil@page
	add	x0, x0, _compiler_typesystem_types_TNil@pageoff
	b	L540
L536:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L540
L537:
	adrp	x0, _compiler_typesystem_types_TString@page
	add	x0, x0, _compiler_typesystem_types_TString@pageoff
	b	L540
L538:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L540
L539:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
L540:
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
	adrp	x1, _str2899@page
	add	x1, x1, _str2899@pageoff
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
	beq	L553
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L549
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L550
L549:
	mov	x2, #16
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L550:
	cmp	w2, #0
	bne	L552
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_last_segment
	b	L554
L552:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L554
L553:
	mov	x0, x1
L554:
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
	beq	L560
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
	beq	L558
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
	b	L561
L558:
	mov	x0, x2
	str	x0, [x19]
	b	L561
L560:
	mov	x0, x2
L561:
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
	beq	L590
	cmp	x0, #5
	beq	L585
	cmp	x0, #6
	beq	L580
	cmp	x0, #7
	beq	L576
	cmp	x0, #8
	beq	L568
	mov	x0, x22
	b	L594
L568:
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
	beq	L571
	str	x22, [x19]
	mov	x0, x22
	b	L594
L571:
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
	beq	L574
	str	x22, [x20]
	mov	x0, x22
	b	L575
L574:
	mov	x2, x22
	bl	_compiler_typesystem_checker_collect_bindings_list
	str	x0, [x20]
L575:
	str	x0, [x19]
	b	L594
L576:
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
	beq	L579
	str	x22, [x19]
	mov	x0, x22
	b	L594
L579:
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
	b	L594
L580:
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
	beq	L584
	str	x20, [x19]
	mov	x0, x20
	b	L594
L584:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_collect_bindings_list
	str	x0, [x19]
	b	L594
L585:
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
	beq	L589
	str	x20, [x19]
	mov	x0, x20
	b	L594
L589:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_collect_bindings
	str	x0, [x19]
	b	L594
L590:
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
	beq	L593
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
	b	L594
L593:
	str	x0, [x19]
L594:
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
	beq	L600
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
	beq	L598
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
	b	L601
L598:
	mov	x0, x2
	str	x0, [x19]
	b	L601
L600:
	mov	x0, x2
L601:
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
	beq	L606
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
	beq	L605
	bl	_compiler_typesystem_checker_lookup_int_binding
	str	x0, [x19]
	b	L607
L605:
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L607
L606:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L607:
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
	beq	L617
	cmp	x1, #5
	beq	L616
	cmp	x1, #6
	beq	L615
	cmp	x1, #7
	beq	L614
	cmp	x1, #8
	bne	L622
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
	b	L622
L614:
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
	b	L622
L615:
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
	b	L622
L616:
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
	b	L622
L617:
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
	beq	L620
	str	x0, [x1]
	b	L622
L620:
	mov	x0, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
L622:
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
	beq	L625
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
	b	L626
L625:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L626:
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
	beq	L701
	cmp	x2, #6
	beq	L694
	cmp	x2, #7
	beq	L687
	cmp	x2, #8
	beq	L680
	cmp	x2, #15
	beq	L673
	cmp	x2, #16
	beq	L666
	cmp	x2, #17
	beq	L659
	cmp	x2, #18
	beq	L652
	cmp	x2, #19
	beq	L645
	cmp	x2, #20
	beq	L638
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	b	L708
L638:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #3
	beq	L640
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3543@page
	add	x0, x0, _str3543@pageoff
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
	b	L708
L640:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #3
	beq	L643
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
	adrp	x0, _str3534@page
	add	x0, x0, _str3534@pageoff
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
	b	L644
L643:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L644:
	str	x0, [x19]
	b	L708
L645:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #3
	beq	L647
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3507@page
	add	x0, x0, _str3507@pageoff
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
	b	L708
L647:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #3
	beq	L650
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
	adrp	x0, _str3498@page
	add	x0, x0, _str3498@pageoff
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
	b	L651
L650:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L651:
	str	x0, [x19]
	b	L708
L652:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L654
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3471@page
	add	x0, x0, _str3471@pageoff
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
	b	L708
L654:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L657
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
	adrp	x0, _str3462@page
	add	x0, x0, _str3462@pageoff
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
	b	L658
L657:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L658:
	str	x0, [x19]
	b	L708
L659:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L661
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3435@page
	add	x0, x0, _str3435@pageoff
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
	b	L708
L661:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L664
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
	adrp	x0, _str3426@page
	add	x0, x0, _str3426@pageoff
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
	b	L665
L664:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L665:
	str	x0, [x19]
	b	L708
L666:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L668
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3399@page
	add	x0, x0, _str3399@pageoff
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
	b	L708
L668:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L671
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
	adrp	x0, _str3390@page
	add	x0, x0, _str3390@pageoff
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
	b	L672
L671:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L672:
	str	x0, [x19]
	b	L708
L673:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L675
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3363@page
	add	x0, x0, _str3363@pageoff
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
	b	L708
L675:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L678
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
	adrp	x0, _str3354@page
	add	x0, x0, _str3354@pageoff
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
	b	L679
L678:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L679:
	str	x0, [x19]
	b	L708
L680:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L682
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3327@page
	add	x0, x0, _str3327@pageoff
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
	b	L708
L682:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L685
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
	adrp	x0, _str3318@page
	add	x0, x0, _str3318@pageoff
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
	b	L686
L685:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L686:
	str	x0, [x19]
	b	L708
L687:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L689
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3291@page
	add	x0, x0, _str3291@pageoff
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
	b	L708
L689:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L692
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
	adrp	x0, _str3282@page
	add	x0, x0, _str3282@pageoff
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
	b	L693
L692:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L693:
	str	x0, [x19]
	b	L708
L694:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L696
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3255@page
	add	x0, x0, _str3255@pageoff
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
	b	L708
L696:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L699
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
	adrp	x0, _str3246@page
	add	x0, x0, _str3246@pageoff
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
	b	L700
L699:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L700:
	str	x0, [x19]
	b	L708
L701:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L703
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, #32
	bl	_malloc
	mov	x20, x0
	mov	x0, #13
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str3219@page
	add	x0, x0, _str3219@pageoff
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
	b	L708
L703:
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L706
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
	adrp	x0, _str3210@page
	add	x0, x0, _str3210@pageoff
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
	b	L707
L706:
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x20]
L707:
	str	x0, [x19]
L708:
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
	beq	L751
	cmp	x0, #1
	beq	L750
	cmp	x0, #2
	beq	L749
	cmp	x0, #3
	beq	L748
	cmp	x0, #4
	beq	L747
	cmp	x0, #5
	beq	L746
	cmp	x0, #6
	beq	L745
	cmp	x0, #7
	beq	L744
	cmp	x0, #8
	beq	L743
	cmp	x0, #9
	beq	L742
	cmp	x0, #10
	beq	L741
	cmp	x0, #11
	beq	L740
	cmp	x0, #12
	beq	L739
	cmp	x0, #13
	beq	L738
	cmp	x0, #14
	beq	L737
	cmp	x0, #15
	beq	L736
	cmp	x0, #16
	beq	L735
	cmp	x0, #17
	beq	L734
	cmp	x0, #18
	beq	L733
	cmp	x0, #19
	beq	L732
	cmp	x0, #20
	beq	L731
	adrp	x0, _compiler_typesystem_types_TString@page
	add	x0, x0, _compiler_typesystem_types_TString@pageoff
	b	L752
L731:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L732:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L733:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L734:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L735:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L736:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L737:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L738:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L739:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L740:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L741:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L742:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L752
L743:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L752
L744:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L752
L745:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L752
L746:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L752
L747:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L752
L748:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L752
L749:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L752
L750:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L752
L751:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
L752:
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
	adrp	x1, _str3642@page
	add	x1, x1, _str3642@pageoff
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
	beq	L759
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
	beq	L758
	bl	_compiler_typesystem_checker_lookup_binding
	str	x0, [x19]
	b	L760
L758:
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L760
L759:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L760:
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
	beq	L766
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
	beq	L764
	bl	_compiler_typesystem_checker_pub_fns_to_bindings
	str	x0, [x20]
	b	L765
L764:
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
L765:
	str	x0, [x19]
	b	L767
L766:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L767:
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
	beq	L773
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
	beq	L771
	bl	_compiler_typesystem_checker_pub_consts_to_bindings
	str	x0, [x20]
	b	L772
L771:
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
L772:
	str	x0, [x19]
	b	L774
L773:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L774:
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
	beq	L781
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
	beq	L778
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
	b	L780
L778:
	mov	x0, x21
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	str	x0, [x20]
L780:
	str	x0, [x19]
	b	L782
L781:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L782:
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
	beq	L791
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
	beq	L787
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
	b	L790
L787:
	mov	x20, x21
	mov	x1, x24
	str	x1, [x20]
	mov	x21, x1
L790:
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
	b	L792
L791:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L792:
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
	beq	L799
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
	beq	L796
	bl	_compiler_typesystem_checker_ctors_to_info
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x0
	mov	x0, x21
	bl	_donna_list_append
	str	x0, [x20]
	b	L798
L796:
	mov	x0, x21
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	str	x0, [x20]
L798:
	str	x0, [x19]
	b	L800
L799:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L800:
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
	beq	L803
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
	b	L804
L803:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L804:
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

