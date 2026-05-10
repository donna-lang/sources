.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str137:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str855:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
_str1182:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str2141:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str2190:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
_str2221:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2252:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
_str2283:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str2314:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
_str2345:
	.ascii "List"
	.byte 0
/* end data */

.data
.balign 8
_str2432:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str2735:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2740:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2762:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2767:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2789:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2794:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2816:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2821:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2843:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2848:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2870:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2875:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2897:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2902:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2924:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2929:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str2951:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str2956:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str2978:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str2983:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str3077:
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
	ldr	x21, [x2]
	mov	x2, #32
	add	x2, x1, x2
	ldr	x22, [x2]
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
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	_compiler_typesystem_env_env_ctor_info
	mov	x1, x23
	mov	x24, x0
	mov	x0, x22
	bl	_compiler_typesystem_checker_check_type_defs
	mov	x1, x0
	mov	x0, x21
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_check_constants
	mov	x3, x21
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L7
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x23, x3
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	bl	_compiler_typesystem_checker_check_functions
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	bl	_donna_list_is_empty
	mov	x2, x22
	mov	x1, x0
	mov	x0, x19
	mov	x22, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L6
	mov	x0, x20
	mov	x20, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x24
	bl	_donna_list_append
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x4, x0
	mov	x0, x20
	bl	_compiler_typesystem_typed_ast_TypedModule
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L9
L6:
	bl	_donna_result_Error
	str	x0, [x19]
	b	L9
L7:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	bl	_donna_result_Error
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
	mov	x1, x19
	bl	_compiler_typesystem_typed_ast_ModuleInterface
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
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, x22
	bl	_compiler_typesystem_checker_path_last_segment
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	mov	x3, x20
	bl	_compiler_typesystem_env_env_add_module
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_compiler_typesystem_checker_iface_ctor_info
	mov	x1, x20
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
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L17
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
	bl	_compiler_typesystem_env_env_add_ctor
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_add_iface_ctors_to_env
L17:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
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
	adrp	x1, _str137@page
	add	x1, x1, _str137@pageoff
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
	mov	x2, x1
	mov	x3, x0
	mov	x0, #8
	add	x0, x3, x0
	ldr	x19, [x0]
	mov	x0, #16
	add	x0, x3, x0
	ldr	x1, [x0]
	mov	x0, #32
	add	x0, x3, x0
	ldr	x0, [x0]
	mov	x4, #40
	add	x3, x3, x4
	ldr	x20, [x3]
	mov	x21, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_collect_param_vars
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	ldr	x3, [x2]
	mov	x22, x3
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x20, x1
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x21, x0
	mov	x0, x22
	bl	_donna_list_map
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x19
	bl	_compiler_typesystem_types_TNamedType
	mov	x4, x23
	mov	x3, x22
	mov	x1, x0
	mov	x0, x21
	adrp	x6, _donna_nil@page
	add	x6, x6, _donna_nil@pageoff
	mov	x5, #0
	mov	x2, x19
	bl	_compiler_typesystem_checker_check_ctors
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	ldr	x2, [x3]
	mov	x4, #8
	add	x3, x3, x4
	ldr	x19, [x3]
	bl	_compiler_typesystem_typed_ast_TypedTypeDef
	mov	x20, x0
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
	mov	x25, x5
	mov	x26, x4
	mov	x22, x1
	mov	x1, x0
	mov	x0, x6
	mov	x19, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L59
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x23, x3
	mov	x3, #16
	add	x1, x1, x3
	ldr	x20, [x1]
	str	x20, [x29, 48]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	str	x20, [x29, 16]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x21, x2
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, _compiler_typesystem_checker_annotation_to_type@page
	add	x1, x1, _compiler_typesystem_checker_annotation_to_type@pageoff
	bl	_donna_list_map
	mov	x1, x20
	mov	x20, x1
	mov	x1, x23
	bl	_compiler_typesystem_checker_subst_list
	mov	x2, x21
	mov	x1, x20
	mov	x24, x0
	mov	x0, x19
	mov	x21, x2
	mov	x2, x25
	mov	x20, x1
	mov	x1, x24
	mov	x19, x0
	mov	x0, x20
	bl	_compiler_typesystem_typed_ast_TypedConstructor
	str	x0, [x29, 24]
	mov	x0, x19
	mov	x19, x0
	mov	x0, x24
	bl	_donna_list_is_empty
	mov	x3, x23
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	ldr	x19, [x29, 48]
	mov	x23, x3
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	str	x3, [x29, 40]
	cmp	x2, #1
	beq	L55
	mov	x20, x1
	mov	x1, x22
	mov	x19, x0
	mov	x0, x24
	bl	_compiler_typesystem_types_TFnType
	mov	x4, x26
	mov	x3, x23
	mov	x2, x21
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x26, x3
	ldr	x3, [x29, 40]
	mov	x20, x0
	ldr	x0, [x29, 48]
	str	x19, [x3]
	b	L58
L55:
	mov	x20, x0
	mov	x0, x19
	mov	x4, x26
	mov	x26, x23
	mov	x2, x21
	str	x22, [x3]
	mov	x19, x22
L58:
	mov	x23, x2
	mov	x2, x19
	mov	x21, x1
	mov	x19, x0
	mov	x0, x4
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x29, 32]
	mov	x0, x19
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x3, x26
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x19, x0
	ldr	x0, [x29, 32]
	ldr	x21, [x29, 24]
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
	mov	x0, x19
	mov	x20, x26
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
	mov	x20, x1
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
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	mov	x1, x20
	bl	_compiler_typesystem_checker_subst_list
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, x20
	bl	_compiler_typesystem_checker_subst_type_params
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_types_TFnType
	b	L79
L71:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	_compiler_typesystem_checker_subst_list
	bl	_compiler_typesystem_types_TTupleType
	b	L79
L72:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	_compiler_typesystem_checker_subst_type_params
	bl	_compiler_typesystem_types_TListType
	b	L79
L73:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	_compiler_typesystem_checker_subst_list
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_types_TNamedType
	b	L79
L74:
	mov	x19, x0
	mov	x0, x20
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
	beq	L89
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
	b	L90
L87:
	mov	x0, x20
	bl	_donna_option_Some
	str	x0, [x19]
	b	L90
L89:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L90:
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
	beq	L96
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
	beq	L94
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
	b	L98
L94:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L98
L96:
	mov	x0, x20
	mov	x20, x1
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	bl	_donna_result_Ok
L98:
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
	mov	x20, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x2, x0, x2
	ldr	x24, [x2]
	mov	x2, #32
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x21, x1
	mov	x1, x20
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L105
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	ldr	x22, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x23, x1
	ldr	x1, [x24]
	cmp	x1, #0
	beq	L103
	mov	x21, x0
	mov	x0, #8
	add	x0, x24, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x2, x0
	mov	x0, x21
	str	x2, [x20]
	mov	x1, x23
	b	L104
L103:
	mov	x21, x0
	mov	x0, x22
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	str	x2, [x20]
L104:
	mov	x21, x2
	mov	x20, x1
	mov	x1, x19
	bl	_compiler_typesystem_env_env_bind
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_typesystem_typed_ast_TypedConstant
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	bl	_donna_result_Ok
	b	L107
L105:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
L107:
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
	beq	L112
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
L112:
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
	mov	x3, x0
	mov	x0, x1
	mov	x21, x0
	ldr	x0, [x3]
	cmp	x0, #1
	beq	L122
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
	beq	L120
	mov	x22, x1
	mov	x1, x21
	bl	_compiler_typesystem_checker_build_param_pairs
	mov	x1, x22
	mov	x23, x0
	mov	x0, x20
	mov	x20, x1
	mov	x1, x21
	mov	x22, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x22
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L117
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x0, [x0]
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x23
	mov	x23, x1
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	bl	_donna_list_map
	mov	x1, x23
	bl	_compiler_typesystem_types_TFnType
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x20]
	b	L119
L117:
	mov	x0, x21
	str	x0, [x20]
L119:
	str	x0, [x19]
	b	L123
L120:
	mov	x0, x21
	str	x0, [x19]
	b	L123
L122:
	mov	x0, x21
L123:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
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
	beq	L126
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
	b	L127
L126:
	mov	x0, x20
L127:
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
	beq	L130
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L131
L130:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
L131:
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
	mov	x19, x0
	bl	_compiler_typesystem_checker_fn_params
	bl	_compiler_typesystem_checker_params_to_types
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_typesystem_checker_fn_return_type
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L134
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x1, x0
	mov	x0, x19
	b	L136
L134:
	mov	x0, x19
	adrp	x1, _compiler_typesystem_types_TNil@page
	add	x1, x1, _compiler_typesystem_types_TNil@pageoff
L136:
	bl	_compiler_typesystem_types_TFnType
	ldr	x19, [x29, 24]
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
	beq	L140
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L141
L140:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
L141:
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
	beq	L144
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L145
L144:
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
L145:
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
	beq	L152
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
	beq	L149
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x20]
	b	L151
L149:
	mov	x0, x21
	mov	x21, x0
	mov	x0, #0
	bl	_compiler_typesystem_types_TTypeVar
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x20]
L151:
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
	b	L153
L152:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L153:
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
	beq	L162
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
	beq	L158
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
	b	L161
L158:
	mov	x21, x25
	str	x0, [x23]
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
L161:
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
	b	L164
L162:
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
L164:
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
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #1
	beq	L184
	mov	x1, #8
	add	x1, x2, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x21, x0
	mov	x0, #24
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #32
	add	x3, x2, x3
	ldr	x27, [x3]
	mov	x3, #40
	add	x3, x2, x3
	ldr	x20, [x3]
	mov	x3, #48
	add	x2, x2, x3
	ldr	x23, [x2]
	str	x23, [x29, 40]
	mov	x22, x1
	mov	x1, x21
	bl	_compiler_typesystem_checker_build_param_pairs
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x24, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	mov	x23, x1
	ldr	x1, [x27]
	cmp	x1, #0
	beq	L169
	mov	x21, x0
	mov	x0, #8
	add	x0, x27, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x22]
	mov	x24, x2
	b	L172
L169:
	mov	x21, x22
	mov	x2, x24
	mov	x1, x23
	mov	x24, x2
	adrp	x2, _compiler_typesystem_types_TNil@page
	add	x2, x2, _compiler_typesystem_types_TNil@pageoff
	str	x2, [x21]
	adrp	x21, _compiler_typesystem_types_TNil@page
	add	x21, x21, _compiler_typesystem_types_TNil@pageoff
L172:
	mov	x22, x21
	mov	x23, x1
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x21, x0
	mov	x0, x24
	bl	_donna_list_map
	mov	x1, x23
	mov	x23, x1
	mov	x1, x22
	bl	_compiler_typesystem_types_TFnType
	mov	x2, x24
	mov	x1, x23
	mov	x26, x0
	mov	x0, x21
	mov	x23, x2
	mov	x2, x26
	mov	x21, x1
	mov	x1, x19
	bl	_compiler_typesystem_env_env_bind
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x1
	mov	x1, x20
	mov	x24, x0
	mov	x0, x23
	bl	_compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x24
	bl	_compiler_typesystem_checker_infer_expr
	mov	x2, x23
	mov	x1, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	str	x19, [x29, 24]
	ldr	x3, [x1]
	cmp	x3, #1
	beq	L182
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x25, [x1]
	mov	x19, x0
	mov	x0, x25
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x2, x23
	mov	x1, x21
	mov	x3, x0
	mov	x0, x19
	ldr	x19, [x29, 24]
	mov	x24, x3
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	str	x21, [x29, 32]
	mov	x23, x2
	ldr	x2, [x27]
	cmp	x2, #0
	beq	L179
	mov	x21, x1
	mov	x1, x22
	mov	x19, x0
	mov	x0, x24
	bl	_compiler_typesystem_types_types_equal
	mov	x6, x26
	mov	x4, x25
	mov	x2, x23
	mov	x1, x21
	mov	x3, x0
	mov	x0, x19
	mov	x27, x20
	ldr	x20, [x29, 32]
	ldr	x19, [x29, 24]
	ldr	x23, [x29, 40]
	mov	x5, #16
	sub	sp, sp, x5
	mov	x21, sp
	cmp	x3, #0
	beq	L176
	adrp	x5, _donna_option_None@page
	add	x5, x5, _donna_option_None@pageoff
	mov	x25, x4
	mov	x3, x22
	mov	x23, x2
	bl	_compiler_typesystem_typed_ast_TypedFunction
	bl	_donna_option_Some
	mov	x22, x0
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
	str	x27, [x1]
	str	x0, [x21]
	b	L178
L176:
	mov	x0, x22
	bl	_compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, x24
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x23
	mov	x1, x0
	mov	x0, x22
	bl	_errors_error_TypeInvalidReturn
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	add	x1, x22, x0
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
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x27, [x1]
	str	x0, [x21]
L178:
	str	x0, [x20]
	b	L181
L179:
	mov	x27, x20
	mov	x20, x21
	mov	x22, x1
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x21, x0
	mov	x0, x23
	bl	_donna_list_map
	mov	x1, x22
	mov	x22, x1
	mov	x1, x24
	bl	_compiler_typesystem_types_TFnType
	mov	x2, x23
	mov	x1, x22
	mov	x26, x0
	mov	x0, x21
	mov	x23, x2
	mov	x2, x26
	mov	x22, x1
	mov	x1, x0
	mov	x21, x0
	mov	x0, x27
	bl	_compiler_typesystem_env_env_bind
	mov	x6, x26
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	adrp	x5, _donna_option_None@page
	add	x5, x5, _donna_option_None@pageoff
	bl	_compiler_typesystem_typed_ast_TypedFunction
	bl	_donna_option_Some
	mov	x22, x0
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
L181:
	str	x0, [x19]
	b	L191
L182:
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
	b	L191
L184:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x20, x0
	mov	x0, #24
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #32
	add	x3, x2, x3
	ldr	x25, [x3]
	mov	x3, #40
	add	x3, x2, x3
	ldr	x21, [x3]
	mov	x3, #48
	add	x2, x2, x3
	ldr	x26, [x2]
	mov	x22, x1
	mov	x1, x20
	bl	_compiler_typesystem_checker_build_param_pairs
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	mov	x24, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x23, x1
	ldr	x1, [x25]
	cmp	x1, #0
	beq	L187
	mov	x22, x0
	mov	x0, #8
	add	x0, x25, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x22
	str	x3, [x20]
	mov	x24, x2
	b	L190
L187:
	mov	x2, x24
	mov	x1, x23
	mov	x24, x2
	adrp	x2, _compiler_typesystem_types_TNil@page
	add	x2, x2, _compiler_typesystem_types_TNil@pageoff
	str	x2, [x20]
	adrp	x3, _compiler_typesystem_types_TNil@page
	add	x3, x3, _compiler_typesystem_types_TNil@pageoff
L190:
	mov	x23, x3
	mov	x22, x1
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x20, x0
	mov	x0, x24
	bl	_donna_list_map
	mov	x1, x22
	mov	x22, x1
	mov	x1, x23
	bl	_compiler_typesystem_types_TFnType
	mov	x2, x24
	mov	x1, x22
	mov	x25, x0
	mov	x0, x20
	mov	x22, x2
	mov	x2, x25
	mov	x20, x1
	mov	x1, x19
	bl	_compiler_typesystem_env_env_bind
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x24, x1
	adrp	x1, _compiler_typesystem_types_TNil@page
	add	x1, x1, _compiler_typesystem_types_TNil@pageoff
	mov	x20, x0
	adrp	x0, _str855@page
	add	x0, x0, _str855@pageoff
	bl	_compiler_typesystem_types_TEIntLit
	str	x0, [x29, 16]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x24
	ldr	x24, [x29, 16]
	str	x21, [x0]
	mov	x21, x1
	mov	x1, #8
	add	x1, x0, x1
	str	x26, [x1]
	bl	_donna_option_Some
	mov	x6, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x5, x0
	mov	x0, x20
	bl	_compiler_typesystem_typed_ast_TypedFunction
	bl	_donna_option_Some
	mov	x20, x0
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
L191:
	ldr	x19, [x29, 120]
	ldr	x20, [x29, 112]
	ldr	x21, [x29, 104]
	ldr	x22, [x29, 96]
	ldr	x23, [x29, 88]
	ldr	x24, [x29, 80]
	ldr	x25, [x29, 72]
	ldr	x26, [x29, 64]
	ldr	x27, [x29, 56]
	mov sp, x29
	ldp	x29, x30, [sp], 128
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
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L199
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
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
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L196
	mov	x22, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
	mov	x1, x22
	mov	x22, x20
	b	L198
L196:
	mov	x0, x20
	mov	x20, x21
	mov	x22, x1
	mov	x21, x0
	mov	x0, x22
	bl	_compiler_typesystem_env_env_next_var
	bl	_compiler_typesystem_types_TTypeVar
	mov	x1, x22
	mov	x22, x0
	mov	x0, x21
	str	x22, [x20]
L198:
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
	b	L200
L199:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L200:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
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
	beq	L203
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
L203:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function compiler_typesystem_checker_bind_param_pairs */

.text
.balign 4
.globl _compiler_typesystem_checker_infer_expr
_compiler_typesystem_checker_infer_expr:
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
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L342
	cmp	x2, #1
	beq	L341
	cmp	x2, #2
	beq	L340
	cmp	x2, #3
	beq	L339
	cmp	x2, #4
	beq	L335
	cmp	x2, #5
	beq	L315
	cmp	x2, #9
	beq	L302
	cmp	x2, #10
	beq	L290
	cmp	x2, #11
	beq	L281
	cmp	x2, #14
	beq	L276
	cmp	x2, #12
	beq	L268
	cmp	x2, #6
	beq	L265
	cmp	x2, #7
	beq	L253
	cmp	x2, #8
	beq	L236
	cmp	x2, #13
	beq	L233
	cmp	x2, #16
	beq	L230
	cmp	x2, #15
	beq	L226
	cmp	x2, #17
	beq	L223
	mov	x0, x1
	bl	_compiler_typesystem_env_fresh_var
	mov	x1, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_compiler_typesystem_types_TETodo
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	bl	_donna_result_Ok
	b	L343
L223:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L225
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x20, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_env_fresh_var
	mov	x2, x0
	mov	x0, x20
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	bl	_compiler_typesystem_types_TEPanic
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L343
L225:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L226:
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
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x1
	mov	x20, x0
	mov	x0, x19
	bl	_compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x20
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L228
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x22, [x1]
	mov	x20, x0
	mov	x0, x22
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x20
	mov	x23, x1
	adrp	x1, _compiler_typesystem_checker_pair_snd@page
	add	x1, x1, _compiler_typesystem_checker_pair_snd@pageoff
	mov	x20, x0
	bl	_donna_list_map
	mov	x1, x23
	bl	_compiler_typesystem_types_TFnType
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_typesystem_types_TELambda
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x21
	str	x20, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L343
L228:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L230:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L232
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	adrp	x1, _compiler_typesystem_types_TNil@page
	add	x1, x1, _compiler_typesystem_types_TNil@pageoff
	bl	_compiler_typesystem_types_TEEcho
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L343
L232:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L233:
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
	beq	L235
	mov	x2, #8
	add	x0, x0, x2
	mov	x21, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_typesystem_types_TEBlock
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x21
	str	x20, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L343
L235:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L236:
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
	beq	L251
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L248
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x24, sp
	ldr	x3, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	L241
	mov	x3, #0
	str	x3, [x2]
	mov	x23, x1
	mov	x1, #0
	b	L243
L241:
	mov	x23, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L243:
	cmp	w1, #0
	bne	L246
	mov	x22, x0
	mov	x0, x23
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x22
	str	x1, [x24]
	mov	x22, x0
	mov	x0, x1
	b	L247
L246:
	mov	x22, x0
	mov	x0, #8
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_types_typed_expr_type
	str	x0, [x24]
L247:
	bl	_compiler_typesystem_types_TListType
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	bl	_compiler_typesystem_types_TEListSpread
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	_donna_result_Ok
	str	x0, [x20]
	b	L250
L248:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x20]
L250:
	str	x0, [x19]
	b	L343
L251:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L253:
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
	beq	L264
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L257
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L259
L257:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
L259:
	cmp	w1, #0
	bne	L262
	mov	x21, x0
	mov	x0, x20
	bl	_compiler_typesystem_env_fresh_var
	mov	x1, x0
	mov	x0, x21
	ldr	x1, [x1]
	str	x1, [x22]
	mov	x21, x0
	mov	x0, x1
	b	L263
L262:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_types_typed_expr_type
	str	x0, [x22]
L263:
	bl	_compiler_typesystem_types_TListType
	mov	x1, x0
	mov	x0, x21
	bl	_compiler_typesystem_types_TEList
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L343
L264:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L265:
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
	beq	L267
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	adrp	x1, _compiler_typesystem_types_typed_expr_type@page
	add	x1, x1, _compiler_typesystem_types_typed_expr_type@pageoff
	mov	x21, x0
	bl	_donna_list_map
	bl	_compiler_typesystem_types_TTupleType
	mov	x1, x0
	mov	x0, x21
	bl	_compiler_typesystem_types_TETuple
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L343
L267:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L268:
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
	beq	L274
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x1, x21
	bl	_compiler_typesystem_checker_infer_clauses
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L271
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	_compiler_typesystem_types_TECase
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	_donna_result_Ok
	str	x0, [x20]
	b	L273
L271:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x20]
L273:
	str	x0, [x19]
	b	L343
L274:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L276:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x2, #16
	add	x2, x0, x2
	ldr	x23, [x2]
	mov	x20, x1
	mov	x1, #24
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	ldr	x0, [x23]
	cmp	x0, #9
	beq	L278
	mov	x0, #24
	bl	_malloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x0, x1, x0
	str	x22, [x0]
	mov	x0, #16
	add	x3, x1, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x3]
	mov	x0, x23
	bl	_compiler_parser_ast_Call
	mov	x1, x20
	str	x0, [x19]
	b	L280
L278:
	mov	x1, x20
	mov	x0, #8
	add	x0, x23, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x2, x23, x2
	ldr	x21, [x2]
	mov	x20, x1
	mov	x1, #24
	add	x1, x23, x1
	ldr	x24, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x3, x1, x3
	str	x22, [x3]
	mov	x3, #16
	add	x3, x1, x3
	str	x21, [x3]
	bl	_compiler_parser_ast_Call
	mov	x1, x20
	str	x0, [x19]
L280:
	bl	_compiler_typesystem_checker_infer_expr
	b	L343
L281:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L288
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L285
	mov	x23, x1
	adrp	x1, _compiler_typesystem_types_TBool@page
	add	x1, x1, _compiler_typesystem_types_TBool@pageoff
	str	x1, [x21]
	mov	x1, x23
	adrp	x2, _compiler_typesystem_types_TBool@page
	add	x2, x2, _compiler_typesystem_types_TBool@pageoff
	b	L287
L285:
	mov	x23, x1
	mov	x22, x0
	mov	x0, x23
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	str	x2, [x21]
L287:
	bl	_compiler_typesystem_types_TEUnaryOp
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L343
L288:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L290:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x20, [x2]
	mov	x2, x0
	mov	x0, #16
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #24
	add	x3, x2, x3
	ldr	x19, [x3]
	mov	x3, #32
	add	x2, x2, x3
	ldr	x26, [x2]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L300
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x24, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L297
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x2, [x1]
	mov	x25, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x21, x0
	mov	x0, x24
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x23, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x25
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x3, x26
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x23, x1
	mov	x21, x0
	bl	_compiler_typesystem_checker_check_binop_types
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L294
	mov	x23, x0
	bl	_compiler_typesystem_checker_binop_result_type
	mov	x2, x25
	mov	x1, x24
	mov	x3, x0
	mov	x0, x23
	bl	_compiler_typesystem_types_TEBinOp
	mov	x23, x0
	mov	x0, #16
	bl	_malloc
	str	x23, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	bl	_donna_result_Ok
	str	x0, [x21]
	b	L296
L294:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x21]
L296:
	str	x0, [x20]
	b	L299
L297:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x20]
L299:
	str	x0, [x19]
	b	L343
L300:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L302:
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
	beq	L313
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_infer_exprs
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L310
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x24, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, _compiler_typesystem_types_typed_expr_type@page
	add	x1, x1, _compiler_typesystem_types_typed_expr_type@pageoff
	mov	x22, x0
	mov	x0, x24
	bl	_donna_list_map
	mov	x23, x0
	mov	x0, x22
	mov	x22, x0
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x22, sp
	ldr	x3, [x2]
	cmp	x3, #7
	beq	L307
	mov	x23, x0
	mov	x0, x21
	bl	_compiler_typesystem_env_fresh_var
	ldr	x2, [x0]
	str	x2, [x22]
	mov	x1, x24
	mov	x0, x23
	b	L309
L307:
	mov	x23, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x25, [x2]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_collect_all_bindings
	mov	x1, x0
	mov	x0, x25
	bl	_compiler_typesystem_checker_apply_subst
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	str	x2, [x22]
L309:
	bl	_compiler_typesystem_types_TECall
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	_donna_result_Ok
	str	x0, [x20]
	b	L312
L310:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x20]
L312:
	str	x0, [x19]
	b	L343
L313:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L315:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x3, x2, x3
	ldr	x22, [x3]
	mov	x3, #24
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L334
	mov	x2, #8
	add	x0, x0, x2
	ldr	x2, [x0]
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #4
	beq	L318
	mov	x21, x0
	mov	x0, x23
	bl	_compiler_typesystem_env_fresh_var
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	ldr	x3, [x2]
	mov	x4, #8
	add	x2, x2, x4
	ldr	x21, [x2]
	adrp	x2, _str1182@page
	add	x2, x2, _str1182@pageoff
	mov	x24, x0
	bl	_compiler_typesystem_types_TEFieldAccess
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	_donna_result_Ok
	str	x0, [x20]
	b	L333
L318:
	mov	x24, x0
	mov	x17, x23
	mov	x23, x22
	mov	x22, x17
	mov	x17, x1
	mov	x1, x23
	mov	x23, x17
	mov	x0, #8
	add	x0, x24, x0
	ldr	x0, [x0]
	mov	x25, x1
	mov	x1, x0
	mov	x21, x0
	mov	x0, x22
	bl	_compiler_typesystem_env_env_lookup_module
	mov	x1, x25
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	L330
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x26, x1
	mov	x1, x0
	mov	x25, x0
	mov	x0, x22
	bl	_compiler_typesystem_env_env_lookup_alias
	mov	x1, x26
	mov	x2, x0
	mov	x0, x25
	mov	x25, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L323
	str	x0, [x1]
	mov	x17, x23
	mov	x23, x0
	mov	x0, x17
	b	L325
L323:
	mov	x0, x23
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	str	x23, [x1]
L325:
	bl	_compiler_typesystem_checker_iface_bindings
	mov	x1, x25
	mov	x25, x1
	bl	_compiler_typesystem_checker_lookup_binding
	mov	x1, x25
	mov	x2, x0
	mov	x0, x24
	mov	x3, #16
	sub	sp, sp, x3
	mov	x24, sp
	mov	x26, x1
	ldr	x1, [x2]
	cmp	x1, #1
	beq	L327
	mov	x25, x0
	mov	x0, x22
	bl	_compiler_typesystem_env_fresh_var
	mov	x1, x26
	mov	x2, x0
	mov	x0, x25
	ldr	x3, [x2]
	str	x3, [x24]
	b	L329
L327:
	mov	x1, x26
	mov	x3, #8
	add	x2, x2, x3
	ldr	x3, [x2]
	str	x3, [x24]
L329:
	mov	x2, x23
	bl	_compiler_typesystem_types_TEFieldAccess
	mov	x23, x0
	mov	x0, #16
	bl	_malloc
	str	x23, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	bl	_donna_result_Ok
	str	x0, [x21]
	b	L332
L330:
	mov	x1, x23
	bl	_errors_error_TypeUndefinedModule
	bl	_donna_result_Error
	str	x0, [x21]
L332:
	str	x0, [x20]
L333:
	str	x0, [x19]
	b	L343
L334:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L343
L335:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	mov	x1, x0
	mov	x19, x0
	mov	x0, x20
	bl	_compiler_typesystem_env_env_lookup
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L337
	mov	x21, x0
	mov	x0, x20
	bl	_compiler_typesystem_env_fresh_var
	mov	x1, x0
	mov	x0, x21
	ldr	x1, [x1]
	str	x1, [x19]
	b	L338
L337:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	str	x1, [x19]
L338:
	bl	_compiler_typesystem_types_TEVar
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	_donna_result_Ok
	b	L343
L339:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, _compiler_typesystem_types_TBool@page
	add	x1, x1, _compiler_typesystem_types_TBool@pageoff
	bl	_compiler_typesystem_types_TEBoolLit
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	_donna_result_Ok
	b	L343
L340:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, _compiler_typesystem_types_TString@page
	add	x1, x1, _compiler_typesystem_types_TString@pageoff
	bl	_compiler_typesystem_types_TEStringLit
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	_donna_result_Ok
	b	L343
L341:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, _compiler_typesystem_types_TFloat@page
	add	x1, x1, _compiler_typesystem_types_TFloat@pageoff
	bl	_compiler_typesystem_types_TEFloatLit
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	_donna_result_Ok
	b	L343
L342:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, _compiler_typesystem_types_TInt@page
	add	x1, x1, _compiler_typesystem_types_TInt@pageoff
	bl	_compiler_typesystem_types_TEIntLit
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	_donna_result_Ok
L343:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 80
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
	beq	L349
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
	beq	L347
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
	b	L351
L347:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L351
L349:
	mov	x0, x20
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
	bl	_donna_result_Ok
L351:
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
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L354
	adrp	x3, _compiler_typesystem_types_TNil@page
	add	x3, x3, _compiler_typesystem_types_TNil@pageoff
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_compiler_typesystem_checker_infer_clauses_loop
	b	L355
L354:
	mov	x0, #16
	bl	_malloc
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _compiler_typesystem_types_TNil@page
	add	x1, x1, _compiler_typesystem_types_TNil@pageoff
	str	x1, [x2]
	bl	_donna_result_Ok
L355:
	ldp	x29, x30, [sp], 16
	ret
/* end function compiler_typesystem_checker_infer_clauses */

.text
.balign 4
_compiler_typesystem_checker_infer_clauses_loop:
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
	mov	x20, x3
	mov	x22, x2
	mov	x25, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L366
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x23, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	str	x19, [x29, 16]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x21, [x0]
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #24
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x1, x25
	mov	x24, x0
	mov	x0, x21
	bl	_compiler_typesystem_checker_bind_pattern
	mov	x1, x0
	mov	x0, x24
	mov	x24, x1
	bl	_compiler_typesystem_checker_infer_guard
	mov	x1, x24
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	L363
	mov	x3, #8
	add	x2, x2, x3
	ldr	x24, [x2]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L360
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x26, [x1]
	mov	x19, x0
	mov	x0, x26
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x2, x26
	mov	x1, x24
	mov	x3, x0
	mov	x0, x19
	ldr	x19, [x29, 16]
	mov	x26, x3
	bl	_compiler_typesystem_types_TypedClause
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x24, x0
	mov	x0, #24
	bl	_malloc
	mov	x3, x26
	mov	x1, x25
	mov	x2, x0
	mov	x0, x24
	mov	x4, #1
	str	x4, [x2]
	mov	x4, #8
	add	x4, x2, x4
	str	x23, [x4]
	mov	x4, #16
	add	x4, x2, x4
	str	x22, [x4]
	bl	_compiler_typesystem_checker_infer_clauses_loop
	str	x0, [x21]
	b	L362
L360:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x21]
L362:
	str	x0, [x20]
	b	L365
L363:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x20]
L365:
	str	x0, [x19]
	b	L368
L366:
	mov	x0, x22
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x3, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	bl	_donna_result_Ok
L368:
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
/* end function compiler_typesystem_checker_infer_clauses_loop */

.text
.balign 4
_compiler_typesystem_checker_infer_guard:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L373
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L372
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x0, [x0]
	bl	_donna_option_Some
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L374
L372:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L374
L373:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	bl	_donna_result_Ok
L374:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
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
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L380
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
	beq	L378
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
	b	L382
L378:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L382
L380:
	mov	x0, x20
	mov	x20, x3
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x3, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	bl	_donna_result_Ok
L382:
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
	beq	L394
	cmp	x1, #1
	beq	L389
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
	beq	L387
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x21
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	_compiler_typesystem_types_TStmtExpr
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L402
L387:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L402
L389:
	mov	x20, x19
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	_compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L392
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x1, [x1]
	mov	x21, x1
	mov	x1, x20
	mov	x20, x0
	bl	_compiler_typesystem_checker_bind_pattern
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_compiler_typesystem_types_TStmtLetPat
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _compiler_typesystem_types_TNil@page
	add	x1, x1, _compiler_typesystem_types_TNil@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L402
L392:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L402
L394:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x24, [x1]
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
	beq	L400
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x23, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x24]
	cmp	x1, #0
	beq	L398
	mov	x21, x0
	mov	x0, #8
	add	x0, x24, x0
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x22]
	mov	x2, x23
	b	L399
L398:
	mov	x21, x0
	mov	x0, x23
	bl	_compiler_typesystem_types_typed_expr_type
	mov	x2, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x22]
L399:
	mov	x22, x2
	mov	x2, x21
	mov	x1, x20
	bl	_compiler_typesystem_env_env_bind
	mov	x2, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, x21
	bl	_compiler_typesystem_types_TStmtLet
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	_donna_result_Ok
	str	x0, [x19]
	b	L402
L400:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
L402:
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
	beq	L423
	cmp	x2, #0
	beq	L424
	cmp	x2, #1
	beq	L424
	cmp	x2, #3
	beq	L424
	cmp	x2, #4
	beq	L424
	cmp	x2, #5
	beq	L424
	cmp	x2, #6
	beq	L424
	cmp	x2, #7
	beq	L422
	cmp	x2, #8
	beq	L413
	mov	x19, x0
	mov	x0, #24
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_bind_pattern_list
	b	L424
L413:
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
	beq	L421
	cmp	x1, #1
	cset	x22, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	cmp	w22, #0
	bne	L417
	mov	x1, #0
	str	x1, [x21]
	mov	x1, #0
	b	L418
L417:
	mov	x23, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str2141@page
	add	x1, x1, _str2141@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x23
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x22
	str	x1, [x21]
L418:
	cmp	w1, #0
	bne	L420
	mov	x1, #8
	add	x1, x20, x1
	ldr	x21, [x1]
	mov	x20, x0
	bl	_compiler_typesystem_env_env_next_var
	bl	_compiler_typesystem_types_TTypeVar
	bl	_compiler_typesystem_types_TListType
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_compiler_typesystem_env_env_bind
	str	x0, [x19]
	b	L424
L420:
	str	x0, [x19]
	b	L424
L421:
	str	x0, [x19]
	b	L424
L422:
	mov	x19, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_bind_pattern_list
	b	L424
L423:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	_compiler_typesystem_env_env_next_var
	bl	_compiler_typesystem_types_TTypeVar
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	_compiler_typesystem_env_env_bind
L424:
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
_compiler_typesystem_checker_bind_pattern_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	L427
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
L427:
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
	bne	L430
	mov	x3, #0
	b	L431
L430:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, _str2190@page
	add	x1, x1, _str2190@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	and	x3, x19, x1
L431:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L434
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L435
L434:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L435:
	cmp	w1, #0
	bne	L498
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L439
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L440
L439:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2221@page
	add	x1, x1, _str2221@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L440:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L443
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L444
L443:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L444:
	cmp	w1, #0
	bne	L497
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L448
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L449
L448:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2252@page
	add	x1, x1, _str2252@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L449:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L452
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L453
L452:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L453:
	cmp	w1, #0
	bne	L496
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L457
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L458
L457:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2283@page
	add	x1, x1, _str2283@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L458:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L461
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L462
L461:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L462:
	cmp	w1, #0
	bne	L495
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L466
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	L467
L466:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2314@page
	add	x1, x1, _str2314@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
L467:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	L470
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L471
L470:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
L471:
	cmp	w1, #0
	bne	L494
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	L475
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L476
L475:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, _str2345@page
	add	x1, x1, _str2345@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x20
	str	x1, [x19]
L476:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	w1, #0
	bne	L479
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L484
L479:
	mov	x3, #16
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	L482
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L483
L482:
	mov	x5, #16
	add	x3, x3, x5
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
L483:
	and	x1, x1, x3
	str	x1, [x2]
L484:
	cmp	w1, #0
	bne	L493
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L489
	cmp	x1, #1
	beq	L488
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
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_compiler_typesystem_checker_annotation_to_type
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_types_TFnType
	b	L499
L488:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _compiler_typesystem_checker_annotation_to_type@page
	add	x1, x1, _compiler_typesystem_checker_annotation_to_type@pageoff
	bl	_donna_list_map
	bl	_compiler_typesystem_types_TTupleType
	b	L499
L489:
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
	beq	L491
	adrp	x1, _compiler_typesystem_checker_annotation_to_type@page
	add	x1, x1, _compiler_typesystem_checker_annotation_to_type@pageoff
	bl	_donna_list_map
	mov	x1, x0
	mov	x0, x20
	bl	_compiler_typesystem_types_TNamedType
	str	x0, [x19]
	b	L499
L491:
	mov	x0, x20
	mov	x1, #0
	bl	_donna_string_char_at
	bl	_compiler_typesystem_types_TTypeVar
	str	x0, [x19]
	b	L499
L493:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_annotation_to_type
	bl	_compiler_typesystem_types_TListType
	b	L499
L494:
	adrp	x0, _compiler_typesystem_types_TNil@page
	add	x0, x0, _compiler_typesystem_types_TNil@pageoff
	b	L499
L495:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L499
L496:
	adrp	x0, _compiler_typesystem_types_TString@page
	add	x0, x0, _compiler_typesystem_types_TString@pageoff
	b	L499
L497:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L499
L498:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
L499:
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
	adrp	x1, _str2432@page
	add	x1, x1, _str2432@pageoff
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
	beq	L512
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L508
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L509
L508:
	mov	x2, #16
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L509:
	cmp	w2, #0
	bne	L511
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_last_segment
	b	L513
L511:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L513
L512:
	mov	x0, x1
L513:
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
	beq	L519
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
	beq	L517
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
	b	L520
L517:
	mov	x0, x2
	str	x0, [x19]
	b	L520
L519:
	mov	x0, x2
L520:
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
	beq	L549
	cmp	x0, #5
	beq	L544
	cmp	x0, #6
	beq	L539
	cmp	x0, #7
	beq	L535
	cmp	x0, #8
	beq	L527
	mov	x0, x22
	b	L553
L527:
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
	beq	L530
	str	x22, [x19]
	mov	x0, x22
	b	L553
L530:
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
	beq	L533
	str	x22, [x20]
	mov	x0, x22
	b	L534
L533:
	mov	x2, x22
	bl	_compiler_typesystem_checker_collect_bindings_list
	str	x0, [x20]
L534:
	str	x0, [x19]
	b	L553
L535:
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
	beq	L538
	str	x22, [x19]
	mov	x0, x22
	b	L553
L538:
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
	b	L553
L539:
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
	beq	L543
	str	x20, [x19]
	mov	x0, x20
	b	L553
L543:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_collect_bindings_list
	str	x0, [x19]
	b	L553
L544:
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
	beq	L548
	str	x20, [x19]
	mov	x0, x20
	b	L553
L548:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	_compiler_typesystem_checker_collect_bindings
	str	x0, [x19]
	b	L553
L549:
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
	beq	L552
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
	b	L553
L552:
	str	x0, [x19]
L553:
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
	beq	L559
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
	beq	L557
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
	b	L560
L557:
	mov	x0, x2
	str	x0, [x19]
	b	L560
L559:
	mov	x0, x2
L560:
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
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L566
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	ldr	x3, [x2]
	mov	x4, #8
	add	x2, x2, x4
	ldr	x2, [x2]
	cmp	x1, x3
	cset	x3, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	L564
	bl	_compiler_typesystem_checker_lookup_int_binding
	str	x0, [x19]
	b	L567
L564:
	mov	x0, x2
	bl	_donna_option_Some
	str	x0, [x19]
	b	L567
L566:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L567:
	ldr	x19, [x29, 24]
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
	mov	x20, x1
	ldr	x1, [x0]
	cmp	x1, #9
	beq	L579
	cmp	x1, #5
	beq	L577
	cmp	x1, #6
	beq	L575
	cmp	x1, #7
	beq	L574
	cmp	x1, #8
	bne	L584
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	_compiler_typesystem_checker_apply_subst_list
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_types_TNamedType
	b	L584
L574:
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	mov	x1, x20
	bl	_compiler_typesystem_checker_apply_subst_list
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, x20
	bl	_compiler_typesystem_checker_apply_subst
	mov	x1, x0
	mov	x0, x19
	bl	_compiler_typesystem_types_TFnType
	b	L584
L575:
	mov	x19, x20
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_apply_subst_list
	bl	_compiler_typesystem_types_TTupleType
	b	L584
L577:
	mov	x19, x20
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_compiler_typesystem_checker_apply_subst
	bl	_compiler_typesystem_types_TListType
	b	L584
L579:
	mov	x19, x0
	mov	x0, x20
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
	beq	L582
	str	x0, [x1]
	b	L584
L582:
	mov	x0, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
L584:
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
	beq	L587
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
	b	L588
L587:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L588:
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
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x17, x2
	mov	x2, x1
	mov	x1, x17
	mov	x17, x3
	mov	x3, x2
	mov	x2, x17
	ldr	x3, [x3]
	cmp	x3, #5
	beq	L663
	cmp	x3, #6
	beq	L656
	cmp	x3, #7
	beq	L649
	cmp	x3, #8
	beq	L642
	cmp	x3, #15
	beq	L635
	cmp	x3, #16
	beq	L628
	cmp	x3, #17
	beq	L621
	cmp	x3, #18
	beq	L614
	cmp	x3, #19
	beq	L607
	cmp	x3, #20
	beq	L600
	mov	x0, #1
	bl	_donna_result_Ok
	b	L670
L600:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #3
	beq	L602
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2983@page
	add	x0, x0, _str2983@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L602:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #3
	beq	L605
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2978@page
	add	x0, x0, _str2978@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L606
L605:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L606:
	str	x0, [x19]
	b	L670
L607:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #3
	beq	L609
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2956@page
	add	x0, x0, _str2956@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L609:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #3
	beq	L612
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2951@page
	add	x0, x0, _str2951@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L613
L612:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L613:
	str	x0, [x19]
	b	L670
L614:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L616
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2929@page
	add	x0, x0, _str2929@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L616:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L619
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2924@page
	add	x0, x0, _str2924@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L620
L619:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L620:
	str	x0, [x19]
	b	L670
L621:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L623
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2902@page
	add	x0, x0, _str2902@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L623:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L626
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2897@page
	add	x0, x0, _str2897@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L627
L626:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L627:
	str	x0, [x19]
	b	L670
L628:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L630
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2875@page
	add	x0, x0, _str2875@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L630:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L633
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2870@page
	add	x0, x0, _str2870@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L634
L633:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L634:
	str	x0, [x19]
	b	L670
L635:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L637
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2848@page
	add	x0, x0, _str2848@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L637:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L640
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2843@page
	add	x0, x0, _str2843@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L641
L640:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L641:
	str	x0, [x19]
	b	L670
L642:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L644
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2821@page
	add	x0, x0, _str2821@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L644:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L647
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2816@page
	add	x0, x0, _str2816@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L648
L647:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L648:
	str	x0, [x19]
	b	L670
L649:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L651
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2794@page
	add	x0, x0, _str2794@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L651:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L654
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2789@page
	add	x0, x0, _str2789@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L655
L654:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L655:
	str	x0, [x19]
	b	L670
L656:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L658
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2767@page
	add	x0, x0, _str2767@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L658:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L661
	mov	x1, x0
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2762@page
	add	x0, x0, _str2762@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L662
L661:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L662:
	str	x0, [x19]
	b	L670
L663:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L665
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, _str2740@page
	add	x0, x0, _str2740@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x19]
	b	L670
L665:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L668
	bl	_compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, _str2735@page
	add	x0, x0, _str2735@pageoff
	bl	_errors_error_TypeMismatch
	bl	_donna_result_Error
	str	x0, [x20]
	b	L669
L668:
	mov	x0, #1
	bl	_donna_result_Ok
	str	x0, [x20]
L669:
	str	x0, [x19]
L670:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
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
	beq	L713
	cmp	x0, #1
	beq	L712
	cmp	x0, #2
	beq	L711
	cmp	x0, #3
	beq	L710
	cmp	x0, #4
	beq	L709
	cmp	x0, #5
	beq	L708
	cmp	x0, #6
	beq	L707
	cmp	x0, #7
	beq	L706
	cmp	x0, #8
	beq	L705
	cmp	x0, #9
	beq	L704
	cmp	x0, #10
	beq	L703
	cmp	x0, #11
	beq	L702
	cmp	x0, #12
	beq	L701
	cmp	x0, #13
	beq	L700
	cmp	x0, #14
	beq	L699
	cmp	x0, #15
	beq	L698
	cmp	x0, #16
	beq	L697
	cmp	x0, #17
	beq	L696
	cmp	x0, #18
	beq	L695
	cmp	x0, #19
	beq	L694
	cmp	x0, #20
	beq	L693
	adrp	x0, _compiler_typesystem_types_TString@page
	add	x0, x0, _compiler_typesystem_types_TString@pageoff
	b	L714
L693:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L694:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L695:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L696:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L697:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L698:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L699:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L700:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L701:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L702:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L703:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L704:
	adrp	x0, _compiler_typesystem_types_TBool@page
	add	x0, x0, _compiler_typesystem_types_TBool@pageoff
	b	L714
L705:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L714
L706:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L714
L707:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L714
L708:
	adrp	x0, _compiler_typesystem_types_TFloat@page
	add	x0, x0, _compiler_typesystem_types_TFloat@pageoff
	b	L714
L709:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L714
L710:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L714
L711:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L714
L712:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
	b	L714
L713:
	adrp	x0, _compiler_typesystem_types_TInt@page
	add	x0, x0, _compiler_typesystem_types_TInt@pageoff
L714:
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
	adrp	x1, _str3077@page
	add	x1, x1, _str3077@pageoff
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
	beq	L722
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
	beq	L720
	bl	_compiler_typesystem_checker_lookup_binding
	str	x0, [x19]
	b	L723
L720:
	mov	x0, x20
	bl	_donna_option_Some
	str	x0, [x19]
	b	L723
L722:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L723:
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
	beq	L729
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
	beq	L727
	bl	_compiler_typesystem_checker_pub_fns_to_bindings
	str	x0, [x20]
	b	L728
L727:
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
L728:
	str	x0, [x19]
	b	L730
L729:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L730:
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
	beq	L736
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
	beq	L734
	bl	_compiler_typesystem_checker_pub_consts_to_bindings
	str	x0, [x20]
	b	L735
L734:
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
L735:
	str	x0, [x19]
	b	L737
L736:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L737:
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L744
	mov	x1, #8
	add	x1, x0, x1
	ldr	x2, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x19, sp
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #24
	add	x2, x2, x3
	ldr	x22, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	L741
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_compiler_typesystem_types_TNamedType
	mov	x1, x0
	mov	x0, x22
	bl	_compiler_typesystem_checker_ctors_to_bindings
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	mov	x1, x0
	mov	x0, x21
	bl	_donna_list_append
	str	x0, [x20]
	b	L743
L741:
	mov	x0, x21
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	str	x0, [x20]
L743:
	str	x0, [x19]
	b	L745
L744:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L745:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
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
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L754
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x21, x0
	bl	_donna_list_is_empty
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	L750
	mov	x23, x1
	bl	_compiler_typesystem_types_TFnType
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
	mov	x21, x20
	b	L753
L750:
	mov	x0, x20
	mov	x20, x21
	str	x1, [x20]
	mov	x21, x1
L753:
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
	b	L755
L754:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L755:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
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
	beq	L762
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
	beq	L759
	bl	_compiler_typesystem_checker_ctors_to_info
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x0
	mov	x0, x21
	bl	_donna_list_append
	str	x0, [x20]
	b	L761
L759:
	mov	x0, x21
	bl	_compiler_typesystem_checker_pub_type_defs_to_ctor_info
	str	x0, [x20]
L761:
	str	x0, [x19]
	b	L763
L762:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L763:
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
	beq	L766
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
/* end function compiler_typesystem_checker_ctors_to_info */

