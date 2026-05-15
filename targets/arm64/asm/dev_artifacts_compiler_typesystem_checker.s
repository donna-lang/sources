.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str137:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str855:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str1182:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str2143:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str2281:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str2383:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
str2414:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2445:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
str2476:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str2507:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
str2538:
	.ascii "List"
	.byte 0
/* end data */

.data
.balign 8
str2625:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str2928:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2933:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2955:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2960:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2982:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2987:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3009:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3014:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3036:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3041:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3063:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3068:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3090:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3095:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3117:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3122:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3144:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3149:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3171:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3176:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3270:
	.ascii "/"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_typesystem_checker_check_module
compiler_typesystem_checker_check_module:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_check_module_with_imports
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_check_module, @function
.size compiler_typesystem_checker_check_module, .-compiler_typesystem_checker_check_module
/* end function compiler_typesystem_checker_check_module */

.text
.balign 16
.globl compiler_typesystem_checker_check_module_with_imports
compiler_typesystem_checker_check_module_with_imports:
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
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	mov	x23, x0
	mov	x0, x24
	bl	compiler_typesystem_checker_collect_declared_aliases
	mov	x1, x0
	mov	x0, x23
	bl	compiler_typesystem_checker_filter_imports_by_alias
	mov	x23, x0
	bl	compiler_typesystem_env_new_env
	mov	x1, x0
	mov	x0, x24
	bl	compiler_typesystem_checker_register_import_aliases
	mov	x1, x0
	mov	x0, x23
	bl	compiler_typesystem_checker_add_imports_to_env
	mov	x23, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	compiler_typesystem_env_env_ctor_info
	mov	x1, x23
	mov	x24, x0
	mov	x0, x22
	bl	compiler_typesystem_checker_check_type_defs
	mov	x1, x0
	mov	x0, x21
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_check_constants
	mov	x3, x21
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L7
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x23, x3
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	bl	compiler_typesystem_checker_check_functions
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	bl	donna_list_is_empty
	mov	x2, x22
	mov	x1, x0
	mov	x0, x19
	mov	x22, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	.L6
	mov	x0, x20
	mov	x20, x0
	mov	x0, x23
	bl	compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x24
	bl	donna_list_append
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x4, x0
	mov	x0, x20
	bl	compiler_typesystem_typed_ast_TypedModule
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L9
.L6:
	bl	donna_result_Error
	str	x0, [x19]
	b	.L9
.L7:
	mov	x0, x1
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
	bl	donna_result_Error
.L9:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_check_module_with_imports, @function
.size compiler_typesystem_checker_check_module_with_imports, .-compiler_typesystem_checker_check_module_with_imports
/* end function compiler_typesystem_checker_check_module_with_imports */

.text
.balign 16
.globl compiler_typesystem_checker_extract_interface
compiler_typesystem_checker_extract_interface:
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
	bl	compiler_typesystem_checker_pub_fns_to_bindings
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	compiler_typesystem_checker_pub_consts_to_bindings
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	bl	compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x20
	bl	donna_list_append
	mov	x1, x19
	bl	compiler_typesystem_typed_ast_ModuleInterface
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_extract_interface, @function
.size compiler_typesystem_checker_extract_interface, .-compiler_typesystem_checker_extract_interface
/* end function compiler_typesystem_checker_extract_interface */

.text
.balign 16
compiler_typesystem_checker_add_imports_to_env:
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
	beq	.L14
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
	bl	compiler_typesystem_checker_path_last_segment
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	mov	x3, x20
	bl	compiler_typesystem_env_env_add_module
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	compiler_typesystem_checker_iface_ctor_info
	mov	x1, x20
	bl	compiler_typesystem_checker_add_iface_ctors_to_env
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_add_imports_to_env
.L14:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_add_imports_to_env, @function
.size compiler_typesystem_checker_add_imports_to_env, .-compiler_typesystem_checker_add_imports_to_env
/* end function compiler_typesystem_checker_add_imports_to_env */

.text
.balign 16
compiler_typesystem_checker_add_iface_ctors_to_env:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L17
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
	bl	compiler_typesystem_env_env_add_ctor
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_add_iface_ctors_to_env
.L17:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_add_iface_ctors_to_env, @function
.size compiler_typesystem_checker_add_iface_ctors_to_env, .-compiler_typesystem_checker_add_iface_ctors_to_env
/* end function compiler_typesystem_checker_add_iface_ctors_to_env */

.text
.balign 16
compiler_typesystem_checker_register_import_aliases:
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
	beq	.L20
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
	adrp	x1, str137
	add	x1, x1, #:lo12:str137
	bl	donna_string_join
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_env_env_register_alias
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_register_import_aliases
.L20:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_register_import_aliases, @function
.size compiler_typesystem_checker_register_import_aliases, .-compiler_typesystem_checker_register_import_aliases
/* end function compiler_typesystem_checker_register_import_aliases */

.text
.balign 16
compiler_typesystem_checker_collect_declared_aliases:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L23
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
	bl	compiler_typesystem_checker_collect_declared_aliases
	b	.L25
.L23:
	mov	x0, x19
	bl	donna_list_reverse
.L25:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_collect_declared_aliases, @function
.size compiler_typesystem_checker_collect_declared_aliases, .-compiler_typesystem_checker_collect_declared_aliases
/* end function compiler_typesystem_checker_collect_declared_aliases */

.text
.balign 16
compiler_typesystem_checker_filter_imports_by_alias:
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
	beq	.L30
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
	bl	compiler_typesystem_checker_path_last_segment
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	donna_list_contains_str
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L29
	bl	compiler_typesystem_checker_filter_imports_by_alias
	str	x0, [x19]
	b	.L31
.L29:
	bl	compiler_typesystem_checker_filter_imports_by_alias
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
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
	b	.L31
.L30:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L31:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_filter_imports_by_alias, @function
.size compiler_typesystem_checker_filter_imports_by_alias, .-compiler_typesystem_checker_filter_imports_by_alias
/* end function compiler_typesystem_checker_filter_imports_by_alias */

.text
.balign 16
compiler_typesystem_checker_iface_ctor_info:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_iface_ctor_info, @function
.size compiler_typesystem_checker_iface_ctor_info, .-compiler_typesystem_checker_iface_ctor_info
/* end function compiler_typesystem_checker_iface_ctor_info */

.text
.balign 16
compiler_typesystem_checker_iface_bindings:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_iface_bindings, @function
.size compiler_typesystem_checker_iface_bindings, .-compiler_typesystem_checker_iface_bindings
/* end function compiler_typesystem_checker_iface_bindings */

.text
.balign 16
compiler_typesystem_checker_check_type_defs:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_check_type_defs_loop
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_check_type_defs, @function
.size compiler_typesystem_checker_check_type_defs, .-compiler_typesystem_checker_check_type_defs
/* end function compiler_typesystem_checker_check_type_defs */

.text
.balign 16
compiler_typesystem_checker_check_type_defs_loop:
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
	beq	.L40
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	bl	compiler_typesystem_checker_check_type_def
	mov	x1, x0
	mov	x0, x20
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
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
	bl	compiler_typesystem_checker_check_type_defs_loop
	b	.L42
.L40:
	mov	x0, x19
	mov	x20, x1
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
.L42:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_check_type_defs_loop, @function
.size compiler_typesystem_checker_check_type_defs_loop, .-compiler_typesystem_checker_check_type_defs_loop
/* end function compiler_typesystem_checker_check_type_defs_loop */

.text
.balign 16
compiler_typesystem_checker_check_type_def:
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
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_typesystem_checker_collect_param_vars
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	ldr	x3, [x2]
	mov	x22, x3
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x20, x1
	adrp	x1, compiler_typesystem_checker_pair_snd
	add	x1, x1, #:lo12:compiler_typesystem_checker_pair_snd
	mov	x21, x0
	mov	x0, x22
	bl	donna_list_map
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x19
	bl	compiler_typesystem_types_TNamedType
	mov	x4, x23
	mov	x3, x22
	mov	x1, x0
	mov	x0, x21
	adrp	x6, donna_nil
	add	x6, x6, #:lo12:donna_nil
	mov	x5, #0
	mov	x2, x19
	bl	compiler_typesystem_checker_check_ctors
	mov	x1, x20
	mov	x3, x0
	mov	x0, x19
	ldr	x2, [x3]
	mov	x4, #8
	add	x3, x3, x4
	ldr	x19, [x3]
	bl	compiler_typesystem_typed_ast_TypedTypeDef
	mov	x20, x0
	mov	x0, #16
	bl	malloc
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
.type compiler_typesystem_checker_check_type_def, @function
.size compiler_typesystem_checker_check_type_def, .-compiler_typesystem_checker_check_type_def
/* end function compiler_typesystem_checker_check_type_def */

.text
.balign 16
compiler_typesystem_checker_collect_param_vars:
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
	beq	.L47
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	mov	x0, x2
	bl	compiler_typesystem_env_fresh_var
	mov	x1, x0
	mov	x0, x20
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x23, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
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
	bl	compiler_typesystem_checker_collect_param_vars
	b	.L49
.L47:
	mov	x20, x2
	mov	x0, x19
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x2, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x2, [x1]
.L49:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_collect_param_vars, @function
.size compiler_typesystem_checker_collect_param_vars, .-compiler_typesystem_checker_collect_param_vars
/* end function compiler_typesystem_checker_collect_param_vars */

.text
.balign 16
compiler_typesystem_checker_pair_snd:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_pair_snd, @function
.size compiler_typesystem_checker_pair_snd, .-compiler_typesystem_checker_pair_snd
/* end function compiler_typesystem_checker_pair_snd */

.text
.balign 16
compiler_typesystem_checker_check_ctors:
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
	beq	.L59
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
	adrp	x1, compiler_typesystem_checker_annotation_to_type
	add	x1, x1, #:lo12:compiler_typesystem_checker_annotation_to_type
	bl	donna_list_map
	mov	x1, x20
	mov	x20, x1
	mov	x1, x23
	bl	compiler_typesystem_checker_subst_list
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
	bl	compiler_typesystem_typed_ast_TypedConstructor
	str	x0, [x29, 24]
	mov	x0, x19
	mov	x19, x0
	mov	x0, x24
	bl	donna_list_is_empty
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
	beq	.L55
	mov	x20, x1
	mov	x1, x22
	mov	x19, x0
	mov	x0, x24
	bl	compiler_typesystem_types_TFnType
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
	b	.L58
.L55:
	mov	x20, x0
	mov	x0, x19
	mov	x4, x26
	mov	x26, x23
	mov	x2, x21
	str	x22, [x3]
	mov	x19, x22
.L58:
	mov	x23, x2
	mov	x2, x19
	mov	x21, x1
	mov	x19, x0
	mov	x0, x4
	bl	compiler_typesystem_env_env_bind
	str	x0, [x29, 32]
	mov	x0, x19
	mov	x19, x0
	mov	x0, #24
	bl	malloc
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
	bl	compiler_typesystem_env_env_add_ctor
	mov	x5, x25
	mov	x1, x22
	mov	x25, x0
	mov	x0, x19
	mov	x22, x1
	mov	x1, #1
	add	x26, x5, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
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
	bl	compiler_typesystem_checker_check_ctors
	str	x0, [x19]
	b	.L61
.L59:
	mov	x0, x19
	mov	x20, x26
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x4, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x4, [x1]
.L61:
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
.type compiler_typesystem_checker_check_ctors, @function
.size compiler_typesystem_checker_check_ctors, .-compiler_typesystem_checker_check_ctors
/* end function compiler_typesystem_checker_check_ctors */

.text
.balign 16
compiler_typesystem_checker_subst_type_params:
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
	bne	.L64
	mov	x2, #0
	b	.L65
.L64:
	mov	x3, #16
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	and	x2, x2, x3
.L65:
	cmp	w2, #0
	bne	.L74
	cmp	x1, #8
	beq	.L73
	cmp	x1, #5
	beq	.L72
	cmp	x1, #6
	beq	.L71
	cmp	x1, #7
	bne	.L79
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	mov	x1, x20
	bl	compiler_typesystem_checker_subst_list
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, x20
	bl	compiler_typesystem_checker_subst_type_params
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_types_TFnType
	b	.L79
.L71:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	compiler_typesystem_checker_subst_list
	bl	compiler_typesystem_types_TTupleType
	b	.L79
.L72:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	compiler_typesystem_checker_subst_type_params
	bl	compiler_typesystem_types_TListType
	b	.L79
.L73:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	compiler_typesystem_checker_subst_list
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_types_TNamedType
	b	.L79
.L74:
	mov	x19, x0
	mov	x0, x20
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	bl	compiler_typesystem_checker_lookup_type_var
	mov	x2, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L78
	mov	x0, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
	b	.L79
.L78:
	str	x0, [x1]
.L79:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_subst_type_params, @function
.size compiler_typesystem_checker_subst_type_params, .-compiler_typesystem_checker_subst_type_params
/* end function compiler_typesystem_checker_subst_type_params */

.text
.balign 16
compiler_typesystem_checker_subst_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L82
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	bl	compiler_typesystem_checker_subst_list
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_typesystem_checker_subst_type_params
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
	b	.L83
.L82:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L83:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_subst_list, @function
.size compiler_typesystem_checker_subst_list, .-compiler_typesystem_checker_subst_list
/* end function compiler_typesystem_checker_subst_list */

.text
.balign 16
compiler_typesystem_checker_lookup_type_var:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L89
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
	beq	.L87
	bl	compiler_typesystem_checker_lookup_type_var
	str	x0, [x19]
	b	.L90
.L87:
	mov	x0, x20
	bl	donna_option_Some
	str	x0, [x19]
	b	.L90
.L89:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L90:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_lookup_type_var, @function
.size compiler_typesystem_checker_lookup_type_var, .-compiler_typesystem_checker_lookup_type_var
/* end function compiler_typesystem_checker_lookup_type_var */

.text
.balign 16
compiler_typesystem_checker_check_constants:
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
	beq	.L96
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	compiler_typesystem_checker_check_constant
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L94
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
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
	bl	compiler_typesystem_checker_check_constants
	str	x0, [x19]
	b	.L98
.L94:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L98
.L96:
	mov	x0, x20
	mov	x20, x1
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x20
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	bl	donna_result_Ok
.L98:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_check_constants, @function
.size compiler_typesystem_checker_check_constants, .-compiler_typesystem_checker_check_constants
/* end function compiler_typesystem_checker_check_constants */

.text
.balign 16
compiler_typesystem_checker_check_constant:
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
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L105
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
	beq	.L103
	mov	x21, x0
	mov	x0, #8
	add	x0, x24, x0
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_annotation_to_type
	mov	x2, x0
	mov	x0, x21
	str	x2, [x20]
	mov	x1, x23
	b	.L104
.L103:
	mov	x21, x0
	mov	x0, x22
	bl	compiler_typesystem_types_typed_expr_type
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	str	x2, [x20]
.L104:
	mov	x21, x2
	mov	x20, x1
	mov	x1, x19
	bl	compiler_typesystem_env_env_bind
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_typesystem_typed_ast_TypedConstant
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	bl	donna_result_Ok
	b	.L107
.L105:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
.L107:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_check_constant, @function
.size compiler_typesystem_checker_check_constant, .-compiler_typesystem_checker_check_constant
/* end function compiler_typesystem_checker_check_constant */

.text
.balign 16
compiler_typesystem_checker_check_functions:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	compiler_typesystem_checker_register_fn_sigs
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	bl	compiler_typesystem_checker_infer_return_types
	mov	x1, x0
	mov	x0, x19
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_check_function_bodies
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_check_functions, @function
.size compiler_typesystem_checker_check_functions, .-compiler_typesystem_checker_check_functions
/* end function compiler_typesystem_checker_check_functions */

.text
.balign 16
compiler_typesystem_checker_infer_return_types:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	.L112
	mov	x1, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	compiler_typesystem_checker_infer_return_type_one
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_infer_return_types
.L112:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_infer_return_types, @function
.size compiler_typesystem_checker_infer_return_types, .-compiler_typesystem_checker_infer_return_types
/* end function compiler_typesystem_checker_infer_return_types */

.text
.balign 16
compiler_typesystem_checker_infer_return_type_one:
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
	beq	.L122
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
	beq	.L120
	mov	x22, x1
	mov	x1, x21
	bl	compiler_typesystem_checker_build_param_pairs
	mov	x1, x22
	mov	x23, x0
	mov	x0, x20
	mov	x20, x1
	mov	x1, x21
	mov	x22, x0
	mov	x0, x23
	bl	compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x22
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L117
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x0, [x0]
	bl	compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x23
	mov	x23, x1
	adrp	x1, compiler_typesystem_checker_pair_snd
	add	x1, x1, #:lo12:compiler_typesystem_checker_pair_snd
	bl	donna_list_map
	mov	x1, x23
	bl	compiler_typesystem_types_TFnType
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	bl	compiler_typesystem_env_env_bind
	str	x0, [x20]
	b	.L119
.L117:
	mov	x0, x21
	str	x0, [x20]
.L119:
	str	x0, [x19]
	b	.L123
.L120:
	mov	x0, x21
	str	x0, [x19]
	b	.L123
.L122:
	mov	x0, x21
.L123:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_infer_return_type_one, @function
.size compiler_typesystem_checker_infer_return_type_one, .-compiler_typesystem_checker_infer_return_type_one
/* end function compiler_typesystem_checker_infer_return_type_one */

.text
.balign 16
compiler_typesystem_checker_register_fn_sigs:
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
	beq	.L126
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x21, x0
	bl	compiler_typesystem_checker_fn_name
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	compiler_typesystem_checker_function_sig_type
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_env_env_bind
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_register_fn_sigs
	b	.L127
.L126:
	mov	x0, x20
.L127:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_register_fn_sigs, @function
.size compiler_typesystem_checker_register_fn_sigs, .-compiler_typesystem_checker_register_fn_sigs
/* end function compiler_typesystem_checker_register_fn_sigs */

.text
.balign 16
compiler_typesystem_checker_fn_name:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L130
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L131
.L130:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L131:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_fn_name, @function
.size compiler_typesystem_checker_fn_name, .-compiler_typesystem_checker_fn_name
/* end function compiler_typesystem_checker_fn_name */

.text
.balign 16
compiler_typesystem_checker_function_sig_type:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	compiler_typesystem_checker_fn_params
	bl	compiler_typesystem_checker_params_to_types
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_typesystem_checker_fn_return_type
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L134
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_annotation_to_type
	mov	x1, x0
	mov	x0, x19
	b	.L136
.L134:
	mov	x0, x19
	adrp	x1, compiler_typesystem_types_TNil
	add	x1, x1, #:lo12:compiler_typesystem_types_TNil
.L136:
	bl	compiler_typesystem_types_TFnType
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_function_sig_type, @function
.size compiler_typesystem_checker_function_sig_type, .-compiler_typesystem_checker_function_sig_type
/* end function compiler_typesystem_checker_function_sig_type */

.text
.balign 16
compiler_typesystem_checker_fn_params:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L140
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L141
.L140:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
.L141:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_fn_params, @function
.size compiler_typesystem_checker_fn_params, .-compiler_typesystem_checker_fn_params
/* end function compiler_typesystem_checker_fn_params */

.text
.balign 16
compiler_typesystem_checker_fn_return_type:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L144
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L145
.L144:
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
.L145:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_fn_return_type, @function
.size compiler_typesystem_checker_fn_return_type, .-compiler_typesystem_checker_fn_return_type
/* end function compiler_typesystem_checker_fn_return_type */

.text
.balign 16
compiler_typesystem_checker_params_to_types:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L152
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
	beq	.L149
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x20]
	b	.L151
.L149:
	mov	x0, x21
	mov	x21, x0
	mov	x0, #0
	bl	compiler_typesystem_types_TTypeVar
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x20]
.L151:
	bl	compiler_typesystem_checker_params_to_types
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
	b	.L153
.L152:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L153:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_params_to_types, @function
.size compiler_typesystem_checker_params_to_types, .-compiler_typesystem_checker_params_to_types
/* end function compiler_typesystem_checker_params_to_types */

.text
.balign 16
compiler_typesystem_checker_check_function_bodies:
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
	beq	.L162
	mov	x19, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	bl	compiler_typesystem_checker_check_function
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
	beq	.L158
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x24, x0
	mov	x0, #24
	bl	malloc
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
	b	.L161
.L158:
	mov	x21, x25
	str	x0, [x23]
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
.L161:
	bl	donna_list_reverse
	mov	x1, x21
	mov	x21, x1
	mov	x1, x22
	bl	donna_list_append
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	mov	x2, x19
	bl	compiler_typesystem_checker_check_function_bodies
	b	.L164
.L162:
	mov	x19, x22
	mov	x21, x1
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x21
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
.L164:
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
.type compiler_typesystem_checker_check_function_bodies, @function
.size compiler_typesystem_checker_check_function_bodies, .-compiler_typesystem_checker_check_function_bodies
/* end function compiler_typesystem_checker_check_function_bodies */

.text
.balign 16
compiler_typesystem_checker_check_function:
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
	beq	.L184
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
	bl	compiler_typesystem_checker_build_param_pairs
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
	beq	.L169
	mov	x21, x0
	mov	x0, #8
	add	x0, x27, x0
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_annotation_to_type
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x22]
	mov	x24, x2
	b	.L172
.L169:
	mov	x21, x22
	mov	x2, x24
	mov	x1, x23
	mov	x24, x2
	adrp	x2, compiler_typesystem_types_TNil
	add	x2, x2, #:lo12:compiler_typesystem_types_TNil
	str	x2, [x21]
	adrp	x21, compiler_typesystem_types_TNil
	add	x21, x21, #:lo12:compiler_typesystem_types_TNil
.L172:
	mov	x22, x21
	mov	x23, x1
	adrp	x1, compiler_typesystem_checker_pair_snd
	add	x1, x1, #:lo12:compiler_typesystem_checker_pair_snd
	mov	x21, x0
	mov	x0, x24
	bl	donna_list_map
	mov	x1, x23
	mov	x23, x1
	mov	x1, x22
	bl	compiler_typesystem_types_TFnType
	mov	x2, x24
	mov	x1, x23
	mov	x26, x0
	mov	x0, x21
	mov	x23, x2
	mov	x2, x26
	mov	x21, x1
	mov	x1, x19
	bl	compiler_typesystem_env_env_bind
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x1
	mov	x1, x20
	mov	x24, x0
	mov	x0, x23
	bl	compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x24
	bl	compiler_typesystem_checker_infer_expr
	mov	x2, x23
	mov	x1, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	str	x19, [x29, 24]
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L182
	mov	x23, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x25, [x1]
	mov	x19, x0
	mov	x0, x25
	bl	compiler_typesystem_types_typed_expr_type
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
	beq	.L179
	mov	x21, x1
	mov	x1, x22
	mov	x19, x0
	mov	x0, x24
	bl	compiler_typesystem_types_types_equal
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
	beq	.L176
	adrp	x5, donna_option_None
	add	x5, x5, #:lo12:donna_option_None
	mov	x25, x4
	mov	x3, x22
	mov	x23, x2
	bl	compiler_typesystem_typed_ast_TypedFunction
	bl	donna_option_Some
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x27, [x1]
	str	x0, [x21]
	b	.L178
.L176:
	mov	x0, x22
	bl	compiler_typesystem_types_type_to_string
	mov	x22, x0
	mov	x0, x24
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x23
	mov	x1, x0
	mov	x0, x22
	bl	errors_error_TypeInvalidReturn
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #16
	add	x1, x22, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x27, [x1]
	str	x0, [x21]
.L178:
	str	x0, [x20]
	b	.L181
.L179:
	mov	x27, x20
	mov	x20, x21
	mov	x22, x1
	adrp	x1, compiler_typesystem_checker_pair_snd
	add	x1, x1, #:lo12:compiler_typesystem_checker_pair_snd
	mov	x21, x0
	mov	x0, x23
	bl	donna_list_map
	mov	x1, x22
	mov	x22, x1
	mov	x1, x24
	bl	compiler_typesystem_types_TFnType
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
	bl	compiler_typesystem_env_env_bind
	mov	x6, x26
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	adrp	x5, donna_option_None
	add	x5, x5, #:lo12:donna_option_None
	bl	compiler_typesystem_typed_ast_TypedFunction
	bl	donna_option_Some
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L181:
	str	x0, [x19]
	b	.L191
.L182:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	adrp	x1, donna_option_None
	add	x1, x1, #:lo12:donna_option_None
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L191
.L184:
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
	bl	compiler_typesystem_checker_build_param_pairs
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
	beq	.L187
	mov	x22, x0
	mov	x0, #8
	add	x0, x25, x0
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_annotation_to_type
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x22
	str	x3, [x20]
	mov	x24, x2
	b	.L190
.L187:
	mov	x2, x24
	mov	x1, x23
	mov	x24, x2
	adrp	x2, compiler_typesystem_types_TNil
	add	x2, x2, #:lo12:compiler_typesystem_types_TNil
	str	x2, [x20]
	adrp	x3, compiler_typesystem_types_TNil
	add	x3, x3, #:lo12:compiler_typesystem_types_TNil
.L190:
	mov	x23, x3
	mov	x22, x1
	adrp	x1, compiler_typesystem_checker_pair_snd
	add	x1, x1, #:lo12:compiler_typesystem_checker_pair_snd
	mov	x20, x0
	mov	x0, x24
	bl	donna_list_map
	mov	x1, x22
	mov	x22, x1
	mov	x1, x23
	bl	compiler_typesystem_types_TFnType
	mov	x2, x24
	mov	x1, x22
	mov	x25, x0
	mov	x0, x20
	mov	x22, x2
	mov	x2, x25
	mov	x20, x1
	mov	x1, x19
	bl	compiler_typesystem_env_env_bind
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x24, x1
	adrp	x1, compiler_typesystem_types_TNil
	add	x1, x1, #:lo12:compiler_typesystem_types_TNil
	mov	x20, x0
	adrp	x0, str855
	add	x0, x0, #:lo12:str855
	bl	compiler_typesystem_types_TEIntLit
	str	x0, [x29, 16]
	mov	x0, x20
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x24
	ldr	x24, [x29, 16]
	str	x21, [x0]
	mov	x21, x1
	mov	x1, #8
	add	x1, x0, x1
	str	x26, [x1]
	bl	donna_option_Some
	mov	x6, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x5, x0
	mov	x0, x20
	bl	compiler_typesystem_typed_ast_TypedFunction
	bl	donna_option_Some
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
.L191:
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
.type compiler_typesystem_checker_check_function, @function
.size compiler_typesystem_checker_check_function, .-compiler_typesystem_checker_check_function
/* end function compiler_typesystem_checker_check_function */

.text
.balign 16
compiler_typesystem_checker_build_param_pairs:
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
	beq	.L199
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
	beq	.L196
	mov	x22, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
	mov	x1, x22
	mov	x22, x20
	b	.L198
.L196:
	mov	x0, x20
	mov	x20, x21
	mov	x22, x1
	mov	x21, x0
	mov	x0, x22
	bl	compiler_typesystem_env_env_next_var
	bl	compiler_typesystem_types_TTypeVar
	mov	x1, x22
	mov	x22, x0
	mov	x0, x21
	str	x22, [x20]
.L198:
	bl	compiler_typesystem_checker_build_param_pairs
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
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
	b	.L200
.L199:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L200:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_build_param_pairs, @function
.size compiler_typesystem_checker_build_param_pairs, .-compiler_typesystem_checker_build_param_pairs
/* end function compiler_typesystem_checker_build_param_pairs */

.text
.balign 16
compiler_typesystem_checker_bind_param_pairs:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L203
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
	bl	compiler_typesystem_env_env_bind
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_bind_param_pairs
.L203:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_bind_param_pairs, @function
.size compiler_typesystem_checker_bind_param_pairs, .-compiler_typesystem_checker_bind_param_pairs
/* end function compiler_typesystem_checker_bind_param_pairs */

.text
.balign 16
.globl compiler_typesystem_checker_infer_expr
compiler_typesystem_checker_infer_expr:
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
	beq	.L342
	cmp	x2, #1
	beq	.L341
	cmp	x2, #2
	beq	.L340
	cmp	x2, #3
	beq	.L339
	cmp	x2, #4
	beq	.L335
	cmp	x2, #5
	beq	.L315
	cmp	x2, #9
	beq	.L302
	cmp	x2, #10
	beq	.L290
	cmp	x2, #11
	beq	.L281
	cmp	x2, #14
	beq	.L276
	cmp	x2, #12
	beq	.L268
	cmp	x2, #6
	beq	.L265
	cmp	x2, #7
	beq	.L253
	cmp	x2, #8
	beq	.L236
	cmp	x2, #13
	beq	.L233
	cmp	x2, #16
	beq	.L230
	cmp	x2, #15
	beq	.L226
	cmp	x2, #17
	beq	.L223
	mov	x0, x1
	bl	compiler_typesystem_env_fresh_var
	mov	x1, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	compiler_typesystem_types_TETodo
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	bl	donna_result_Ok
	b	.L343
.L223:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L225
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x20, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_typesystem_env_fresh_var
	mov	x2, x0
	mov	x0, x20
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	bl	compiler_typesystem_types_TEPanic
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L343
.L225:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L226:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x20, x1
	bl	compiler_typesystem_checker_build_param_pairs
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x1
	mov	x20, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_bind_param_pairs
	mov	x1, x0
	mov	x0, x20
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L228
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x22, [x1]
	mov	x20, x0
	mov	x0, x22
	bl	compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x20
	mov	x23, x1
	adrp	x1, compiler_typesystem_checker_pair_snd
	add	x1, x1, #:lo12:compiler_typesystem_checker_pair_snd
	mov	x20, x0
	bl	donna_list_map
	mov	x1, x23
	bl	compiler_typesystem_types_TFnType
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_types_TELambda
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x21
	str	x20, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L343
.L228:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L230:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L232
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	adrp	x1, compiler_typesystem_types_TNil
	add	x1, x1, #:lo12:compiler_typesystem_types_TNil
	bl	compiler_typesystem_types_TEEcho
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L343
.L232:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L233:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x3, compiler_typesystem_types_TNil
	add	x3, x3, #:lo12:compiler_typesystem_types_TNil
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x19, x1
	bl	compiler_typesystem_checker_check_stmts
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L235
	mov	x2, #8
	add	x0, x0, x2
	mov	x21, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_typesystem_types_TEBlock
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x21
	str	x20, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L343
.L235:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L236:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_infer_exprs
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L251
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L248
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
	beq	.L241
	mov	x3, #0
	str	x3, [x2]
	mov	x23, x1
	mov	x1, #0
	b	.L243
.L241:
	mov	x23, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L243:
	cmp	w1, #0
	bne	.L246
	mov	x22, x0
	mov	x0, x23
	bl	compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x22
	str	x1, [x24]
	mov	x22, x0
	mov	x0, x1
	b	.L247
.L246:
	mov	x22, x0
	mov	x0, #8
	add	x0, x22, x0
	ldr	x0, [x0]
	bl	compiler_typesystem_types_typed_expr_type
	str	x0, [x24]
.L247:
	bl	compiler_typesystem_types_TListType
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	bl	compiler_typesystem_types_TEListSpread
	mov	x22, x0
	mov	x0, #16
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	donna_result_Ok
	str	x0, [x20]
	b	.L250
.L248:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x20]
.L250:
	str	x0, [x19]
	b	.L343
.L251:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L253:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_infer_exprs
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L264
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
	beq	.L257
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L259
.L257:
	mov	x1, #1
	str	x1, [x2]
	mov	x1, #1
.L259:
	cmp	w1, #0
	bne	.L262
	mov	x21, x0
	mov	x0, x20
	bl	compiler_typesystem_env_fresh_var
	mov	x1, x0
	mov	x0, x21
	ldr	x1, [x1]
	str	x1, [x22]
	mov	x21, x0
	mov	x0, x1
	b	.L263
.L262:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	bl	compiler_typesystem_types_typed_expr_type
	str	x0, [x22]
.L263:
	bl	compiler_typesystem_types_TListType
	mov	x1, x0
	mov	x0, x21
	bl	compiler_typesystem_types_TEList
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L343
.L264:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L265:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_infer_exprs
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L267
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	adrp	x1, compiler_typesystem_types_typed_expr_type
	add	x1, x1, #:lo12:compiler_typesystem_types_typed_expr_type
	mov	x21, x0
	bl	donna_list_map
	bl	compiler_typesystem_types_TTupleType
	mov	x1, x0
	mov	x0, x21
	bl	compiler_typesystem_types_TETuple
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L343
.L267:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L268:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L274
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x22, x0
	mov	x0, x20
	bl	compiler_typesystem_types_typed_expr_type
	mov	x2, x0
	mov	x0, x22
	mov	x1, x21
	bl	compiler_typesystem_checker_infer_clauses
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L271
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	bl	compiler_typesystem_types_TECase
	mov	x22, x0
	mov	x0, #16
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	donna_result_Ok
	str	x0, [x20]
	b	.L273
.L271:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x20]
.L273:
	str	x0, [x19]
	b	.L343
.L274:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L276:
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
	beq	.L278
	mov	x0, #24
	bl	malloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x0, x1, x0
	str	x22, [x0]
	mov	x0, #16
	add	x3, x1, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x3]
	mov	x0, x23
	bl	compiler_parser_ast_Call
	mov	x1, x20
	str	x0, [x19]
	b	.L280
.L278:
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
	bl	malloc
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
	bl	compiler_parser_ast_Call
	mov	x1, x20
	str	x0, [x19]
.L280:
	bl	compiler_typesystem_checker_infer_expr
	b	.L343
.L281:
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L288
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
	beq	.L285
	mov	x23, x1
	adrp	x1, compiler_typesystem_types_TBool
	add	x1, x1, #:lo12:compiler_typesystem_types_TBool
	str	x1, [x21]
	mov	x1, x23
	adrp	x2, compiler_typesystem_types_TBool
	add	x2, x2, #:lo12:compiler_typesystem_types_TBool
	b	.L287
.L285:
	mov	x23, x1
	mov	x22, x0
	mov	x0, x23
	bl	compiler_typesystem_types_typed_expr_type
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	str	x2, [x21]
.L287:
	bl	compiler_typesystem_types_TEUnaryOp
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L343
.L288:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L290:
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
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L300
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x24, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L297
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
	bl	compiler_typesystem_types_typed_expr_type
	mov	x23, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x25
	bl	compiler_typesystem_types_typed_expr_type
	mov	x3, x26
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x23, x1
	mov	x21, x0
	bl	compiler_typesystem_checker_check_binop_types
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L294
	mov	x23, x0
	bl	compiler_typesystem_checker_binop_result_type
	mov	x2, x25
	mov	x1, x24
	mov	x3, x0
	mov	x0, x23
	bl	compiler_typesystem_types_TEBinOp
	mov	x23, x0
	mov	x0, #16
	bl	malloc
	str	x23, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	bl	donna_result_Ok
	str	x0, [x21]
	b	.L296
.L294:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x21]
.L296:
	str	x0, [x20]
	b	.L299
.L297:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x20]
.L299:
	str	x0, [x19]
	b	.L343
.L300:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L302:
	mov	x2, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L313
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_infer_exprs
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L310
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x24, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, compiler_typesystem_types_typed_expr_type
	add	x1, x1, #:lo12:compiler_typesystem_types_typed_expr_type
	mov	x22, x0
	mov	x0, x24
	bl	donna_list_map
	mov	x23, x0
	mov	x0, x22
	mov	x22, x0
	bl	compiler_typesystem_types_typed_expr_type
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x22, sp
	ldr	x3, [x2]
	cmp	x3, #7
	beq	.L307
	mov	x23, x0
	mov	x0, x21
	bl	compiler_typesystem_env_fresh_var
	ldr	x2, [x0]
	str	x2, [x22]
	mov	x1, x24
	mov	x0, x23
	b	.L309
.L307:
	mov	x23, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x25, [x2]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	compiler_typesystem_checker_collect_all_bindings
	mov	x1, x0
	mov	x0, x25
	bl	compiler_typesystem_checker_apply_subst
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	str	x2, [x22]
.L309:
	bl	compiler_typesystem_types_TECall
	mov	x22, x0
	mov	x0, #16
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	donna_result_Ok
	str	x0, [x20]
	b	.L312
.L310:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x20]
.L312:
	str	x0, [x19]
	b	.L343
.L313:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L315:
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
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L334
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
	beq	.L318
	mov	x21, x0
	mov	x0, x23
	bl	compiler_typesystem_env_fresh_var
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	ldr	x3, [x2]
	mov	x4, #8
	add	x2, x2, x4
	ldr	x21, [x2]
	adrp	x2, str1182
	add	x2, x2, #:lo12:str1182
	mov	x24, x0
	bl	compiler_typesystem_types_TEFieldAccess
	mov	x22, x0
	mov	x0, #16
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	bl	donna_result_Ok
	str	x0, [x20]
	b	.L333
.L318:
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
	bl	compiler_typesystem_env_env_lookup_module
	mov	x1, x25
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L330
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x26, x1
	mov	x1, x0
	mov	x25, x0
	mov	x0, x22
	bl	compiler_typesystem_env_env_lookup_alias
	mov	x1, x26
	mov	x2, x0
	mov	x0, x25
	mov	x25, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L323
	str	x0, [x1]
	mov	x17, x23
	mov	x23, x0
	mov	x0, x17
	b	.L325
.L323:
	mov	x0, x23
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	str	x23, [x1]
.L325:
	bl	compiler_typesystem_checker_iface_bindings
	mov	x1, x25
	mov	x25, x1
	bl	compiler_typesystem_checker_lookup_binding
	mov	x1, x25
	mov	x2, x0
	mov	x0, x24
	mov	x3, #16
	sub	sp, sp, x3
	mov	x24, sp
	mov	x26, x1
	ldr	x1, [x2]
	cmp	x1, #1
	beq	.L327
	mov	x25, x0
	mov	x0, x22
	bl	compiler_typesystem_env_fresh_var
	mov	x1, x26
	mov	x2, x0
	mov	x0, x25
	ldr	x3, [x2]
	str	x3, [x24]
	b	.L329
.L327:
	mov	x1, x26
	mov	x3, #8
	add	x2, x2, x3
	ldr	x3, [x2]
	str	x3, [x24]
.L329:
	mov	x2, x23
	bl	compiler_typesystem_types_TEFieldAccess
	mov	x23, x0
	mov	x0, #16
	bl	malloc
	str	x23, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	bl	donna_result_Ok
	str	x0, [x21]
	b	.L332
.L330:
	mov	x1, x23
	bl	errors_error_TypeUndefinedModule
	bl	donna_result_Error
	str	x0, [x21]
.L332:
	str	x0, [x20]
.L333:
	str	x0, [x19]
	b	.L343
.L334:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L343
.L335:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	mov	x1, x0
	mov	x19, x0
	mov	x0, x20
	bl	compiler_typesystem_env_env_lookup
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L337
	mov	x21, x0
	mov	x0, x20
	bl	compiler_typesystem_env_fresh_var
	mov	x1, x0
	mov	x0, x21
	ldr	x1, [x1]
	str	x1, [x19]
	b	.L338
.L337:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	str	x1, [x19]
.L338:
	bl	compiler_typesystem_types_TEVar
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	donna_result_Ok
	b	.L343
.L339:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, compiler_typesystem_types_TBool
	add	x1, x1, #:lo12:compiler_typesystem_types_TBool
	bl	compiler_typesystem_types_TEBoolLit
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	donna_result_Ok
	b	.L343
.L340:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, compiler_typesystem_types_TString
	add	x1, x1, #:lo12:compiler_typesystem_types_TString
	bl	compiler_typesystem_types_TEStringLit
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	donna_result_Ok
	b	.L343
.L341:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, compiler_typesystem_types_TFloat
	add	x1, x1, #:lo12:compiler_typesystem_types_TFloat
	bl	compiler_typesystem_types_TEFloatLit
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	donna_result_Ok
	b	.L343
.L342:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	adrp	x1, compiler_typesystem_types_TInt
	add	x1, x1, #:lo12:compiler_typesystem_types_TInt
	bl	compiler_typesystem_types_TEIntLit
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	donna_result_Ok
.L343:
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
.type compiler_typesystem_checker_infer_expr, @function
.size compiler_typesystem_checker_infer_expr, .-compiler_typesystem_checker_infer_expr
/* end function compiler_typesystem_checker_infer_expr */

.text
.balign 16
compiler_typesystem_checker_infer_exprs:
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
	beq	.L349
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L347
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x23, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
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
	bl	compiler_typesystem_checker_infer_exprs
	str	x0, [x19]
	b	.L351
.L347:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L351
.L349:
	mov	x0, x20
	mov	x20, x1
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x20
	str	x19, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	bl	donna_result_Ok
.L351:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_infer_exprs, @function
.size compiler_typesystem_checker_infer_exprs, .-compiler_typesystem_checker_infer_exprs
/* end function compiler_typesystem_checker_infer_exprs */

.text
.balign 16
compiler_typesystem_checker_infer_clauses:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x3, [x0]
	cmp	x3, #0
	beq	.L354
	adrp	x4, compiler_typesystem_types_TNil
	add	x4, x4, #:lo12:compiler_typesystem_types_TNil
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	bl	compiler_typesystem_checker_infer_clauses_loop
	b	.L355
.L354:
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, compiler_typesystem_types_TNil
	add	x1, x1, #:lo12:compiler_typesystem_types_TNil
	str	x1, [x2]
	bl	donna_result_Ok
.L355:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_infer_clauses, @function
.size compiler_typesystem_checker_infer_clauses, .-compiler_typesystem_checker_infer_clauses
/* end function compiler_typesystem_checker_infer_clauses */

.text
.balign 16
compiler_typesystem_checker_infer_clauses_loop:
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
	mov	x20, x4
	mov	x22, x3
	mov	x24, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L366
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x19, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x23, sp
	str	x23, [x29, 16]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x21, [x0]
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #24
	add	x1, x1, x3
	ldr	x20, [x1]
	mov	x25, x2
	mov	x2, x24
	mov	x1, x25
	mov	x26, x0
	mov	x0, x21
	bl	compiler_typesystem_checker_bind_pattern_typed
	mov	x1, x0
	mov	x0, x26
	mov	x26, x1
	bl	compiler_typesystem_checker_infer_guard
	mov	x1, x26
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L363
	mov	x3, #8
	add	x2, x2, x3
	ldr	x4, [x2]
	str	x4, [x29, 24]
	bl	compiler_typesystem_checker_infer_expr
	mov	x2, x25
	mov	x1, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	mov	x25, x2
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L360
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x26, [x1]
	mov	x23, x0
	mov	x0, x26
	bl	compiler_typesystem_types_typed_expr_type
	mov	x2, x26
	mov	x1, x24
	mov	x26, x0
	mov	x0, x23
	mov	x24, x1
	ldr	x1, [x29, 24]
	mov	x3, x26
	bl	compiler_typesystem_types_TypedClause
	mov	x23, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, #24
	bl	malloc
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
	bl	compiler_typesystem_checker_infer_clauses_loop
	str	x0, [x21]
	b	.L362
.L360:
	mov	x0, x1
	mov	x19, x23
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x21]
.L362:
	str	x0, [x20]
	b	.L365
.L363:
	mov	x0, x2
	mov	x19, x23
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x20]
.L365:
	str	x0, [x19]
	b	.L368
.L366:
	mov	x0, x22
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x4, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x4, [x1]
	bl	donna_result_Ok
.L368:
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
.type compiler_typesystem_checker_infer_clauses_loop, @function
.size compiler_typesystem_checker_infer_clauses_loop, .-compiler_typesystem_checker_infer_clauses_loop
/* end function compiler_typesystem_checker_infer_clauses_loop */

.text
.balign 16
compiler_typesystem_checker_infer_guard:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L373
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L372
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x0, [x0]
	bl	donna_option_Some
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L374
.L372:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L374
.L373:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	bl	donna_result_Ok
.L374:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_infer_guard, @function
.size compiler_typesystem_checker_infer_guard, .-compiler_typesystem_checker_infer_guard
/* end function compiler_typesystem_checker_infer_guard */

.text
.balign 16
compiler_typesystem_checker_check_stmts:
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
	beq	.L380
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	compiler_typesystem_checker_check_stmt
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L378
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
	bl	malloc
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
	bl	compiler_typesystem_checker_check_stmts
	str	x0, [x19]
	b	.L382
.L378:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L382
.L380:
	mov	x0, x20
	mov	x20, x3
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x3, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	bl	donna_result_Ok
.L382:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_check_stmts, @function
.size compiler_typesystem_checker_check_stmts, .-compiler_typesystem_checker_check_stmts
/* end function compiler_typesystem_checker_check_stmts */

.text
.balign 16
compiler_typesystem_checker_check_stmt:
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
	beq	.L394
	cmp	x1, #1
	beq	.L389
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L387
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, x21
	bl	compiler_typesystem_types_typed_expr_type
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	compiler_typesystem_types_TStmtExpr
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L402
.L387:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L402
.L389:
	mov	x20, x19
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L392
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x22, x0
	mov	x0, x21
	bl	compiler_typesystem_types_typed_expr_type
	mov	x1, x0
	mov	x0, x22
	mov	x2, x20
	mov	x20, x0
	bl	compiler_typesystem_checker_bind_pattern_typed
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	compiler_typesystem_types_TStmtLetPat
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, compiler_typesystem_types_TNil
	add	x1, x1, #:lo12:compiler_typesystem_types_TNil
	str	x1, [x2]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L402
.L392:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L402
.L394:
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
	bl	compiler_typesystem_checker_infer_expr
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L400
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x23, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	ldr	x1, [x24]
	cmp	x1, #0
	beq	.L398
	mov	x21, x0
	mov	x0, #8
	add	x0, x24, x0
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_annotation_to_type
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x22]
	mov	x2, x23
	b	.L399
.L398:
	mov	x21, x0
	mov	x0, x23
	bl	compiler_typesystem_types_typed_expr_type
	mov	x2, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x22]
.L399:
	mov	x22, x2
	mov	x2, x21
	mov	x1, x20
	bl	compiler_typesystem_env_env_bind
	mov	x2, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, x21
	bl	compiler_typesystem_types_TStmtLet
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	str	x22, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	bl	donna_result_Ok
	str	x0, [x19]
	b	.L402
.L400:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
.L402:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_check_stmt, @function
.size compiler_typesystem_checker_check_stmt, .-compiler_typesystem_checker_check_stmt
/* end function compiler_typesystem_checker_check_stmt */

.text
.balign 16
compiler_typesystem_checker_bind_pattern:
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
	beq	.L423
	cmp	x2, #0
	beq	.L424
	cmp	x2, #1
	beq	.L424
	cmp	x2, #3
	beq	.L424
	cmp	x2, #4
	beq	.L424
	cmp	x2, #5
	beq	.L424
	cmp	x2, #6
	beq	.L424
	cmp	x2, #7
	beq	.L422
	cmp	x2, #8
	beq	.L413
	mov	x19, x0
	mov	x0, #24
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	compiler_typesystem_checker_bind_pattern_list
	b	.L424
.L413:
	mov	x19, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x1, x19
	bl	compiler_typesystem_checker_bind_pattern_list
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x20]
	cmp	x1, #0
	beq	.L421
	cmp	x1, #1
	cset	x22, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	cmp	w22, #0
	bne	.L417
	mov	x1, #0
	str	x1, [x21]
	mov	x1, #0
	b	.L418
.L417:
	mov	x23, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, str2143
	add	x1, x1, #:lo12:str2143
	bl	strcmp
	mov	x1, x0
	mov	x0, x23
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x22
	str	x1, [x21]
.L418:
	cmp	w1, #0
	bne	.L420
	mov	x1, #8
	add	x1, x20, x1
	ldr	x21, [x1]
	mov	x20, x0
	bl	compiler_typesystem_env_env_next_var
	bl	compiler_typesystem_types_TTypeVar
	bl	compiler_typesystem_types_TListType
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_env_env_bind
	str	x0, [x19]
	b	.L424
.L420:
	str	x0, [x19]
	b	.L424
.L421:
	str	x0, [x19]
	b	.L424
.L422:
	mov	x19, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	compiler_typesystem_checker_bind_pattern_list
	b	.L424
.L423:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	compiler_typesystem_env_env_next_var
	bl	compiler_typesystem_types_TTypeVar
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	compiler_typesystem_env_env_bind
.L424:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_bind_pattern, @function
.size compiler_typesystem_checker_bind_pattern, .-compiler_typesystem_checker_bind_pattern
/* end function compiler_typesystem_checker_bind_pattern */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_typed:
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
	beq	.L462
	cmp	x0, #0
	beq	.L461
	cmp	x0, #1
	beq	.L460
	cmp	x0, #3
	beq	.L459
	cmp	x0, #4
	beq	.L458
	cmp	x0, #5
	beq	.L457
	cmp	x0, #6
	beq	.L456
	cmp	x0, #7
	beq	.L452
	cmp	x0, #8
	beq	.L437
	mov	x0, x1
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #24
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x0
	mov	x0, x20
	bl	compiler_typesystem_env_env_lookup_ctor
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L436
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	compiler_typesystem_checker_bind_pattern_typed_list
	str	x0, [x19]
	b	.L464
.L436:
	mov	x1, x20
	bl	compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	.L464
.L437:
	mov	x0, x20
	mov	x20, x0
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
	beq	.L440
	mov	x19, x0
	mov	x0, x20
	bl	compiler_typesystem_env_env_next_var
	bl	compiler_typesystem_types_TTypeVar
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x22]
	b	.L441
.L440:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x19, [x1]
	str	x19, [x22]
.L441:
	mov	x2, x20
	mov	x1, x19
	bl	compiler_typesystem_checker_bind_pattern_typed_repeated
	mov	x20, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x21]
	cmp	x1, #0
	beq	.L450
	cmp	x1, #1
	cset	x23, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	cmp	w23, #0
	bne	.L445
	mov	x1, #0
	str	x1, [x22]
	mov	x1, #0
	b	.L446
.L445:
	mov	x24, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, str2281
	add	x1, x1, #:lo12:str2281
	bl	strcmp
	mov	x1, x0
	mov	x0, x24
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x23
	str	x1, [x22]
.L446:
	cmp	w1, #0
	bne	.L448
	mov	x1, #8
	add	x1, x21, x1
	ldr	x21, [x1]
	bl	compiler_typesystem_types_TListType
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_env_env_bind
	str	x0, [x19]
	b	.L464
.L448:
	mov	x0, x20
	str	x0, [x19]
	b	.L464
.L450:
	mov	x0, x20
	str	x0, [x19]
	b	.L464
.L452:
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
	beq	.L455
	mov	x1, x20
	bl	compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	.L464
.L455:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x2, x20
	bl	compiler_typesystem_checker_bind_pattern_typed_list
	str	x0, [x19]
	b	.L464
.L456:
	mov	x0, x20
	b	.L464
.L457:
	mov	x0, x20
	b	.L464
.L458:
	mov	x0, x20
	b	.L464
.L459:
	mov	x0, x20
	b	.L464
.L460:
	mov	x0, x20
	b	.L464
.L461:
	mov	x0, x20
	b	.L464
.L462:
	mov	x0, x20
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	compiler_typesystem_env_env_bind
.L464:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_bind_pattern_typed, @function
.size compiler_typesystem_checker_bind_pattern_typed, .-compiler_typesystem_checker_bind_pattern_typed
/* end function compiler_typesystem_checker_bind_pattern_typed */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_typed_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x3, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L471
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
	beq	.L469
	mov	x0, x4
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	bl	compiler_typesystem_checker_bind_pattern_typed
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_checker_bind_pattern_typed_list
	str	x0, [x19]
	b	.L472
.L469:
	mov	x1, x2
	bl	compiler_typesystem_checker_bind_pattern_list
	str	x0, [x19]
	b	.L472
.L471:
	mov	x0, x2
.L472:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_bind_pattern_typed_list, @function
.size compiler_typesystem_checker_bind_pattern_typed_list, .-compiler_typesystem_checker_bind_pattern_typed_list
/* end function compiler_typesystem_checker_bind_pattern_typed_list */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_typed_repeated:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x3, x0
	mov	x0, x2
	ldr	x2, [x3]
	cmp	x2, #0
	beq	.L475
	mov	x2, x0
	mov	x0, #8
	add	x0, x3, x0
	ldr	x0, [x0]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x19, [x3]
	mov	x20, x1
	bl	compiler_typesystem_checker_bind_pattern_typed
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_bind_pattern_typed_repeated
.L475:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_bind_pattern_typed_repeated, @function
.size compiler_typesystem_checker_bind_pattern_typed_repeated, .-compiler_typesystem_checker_bind_pattern_typed_repeated
/* end function compiler_typesystem_checker_bind_pattern_typed_repeated */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x2, x0
	mov	x0, x1
	ldr	x1, [x2]
	cmp	x1, #0
	beq	.L478
	mov	x1, x0
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	bl	compiler_typesystem_checker_bind_pattern
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_checker_bind_pattern_list
.L478:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_bind_pattern_list, @function
.size compiler_typesystem_checker_bind_pattern_list, .-compiler_typesystem_checker_bind_pattern_list
/* end function compiler_typesystem_checker_bind_pattern_list */

.text
.balign 16
.globl compiler_typesystem_checker_annotation_to_type
compiler_typesystem_checker_annotation_to_type:
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
	bne	.L481
	mov	x3, #0
	b	.L482
.L481:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	adrp	x1, str2383
	add	x1, x1, #:lo12:str2383
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	and	x3, x19, x1
.L482:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	.L485
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L486
.L485:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
.L486:
	cmp	w1, #0
	bne	.L549
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	.L490
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	.L491
.L490:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, str2414
	add	x1, x1, #:lo12:str2414
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
.L491:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	.L494
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L495
.L494:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
.L495:
	cmp	w1, #0
	bne	.L548
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	.L499
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	.L500
.L499:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, str2445
	add	x1, x1, #:lo12:str2445
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
.L500:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	.L503
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L504
.L503:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
.L504:
	cmp	w1, #0
	bne	.L547
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	.L508
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	.L509
.L508:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, str2476
	add	x1, x1, #:lo12:str2476
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
.L509:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	.L512
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L513
.L512:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
.L513:
	cmp	w1, #0
	bne	.L546
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	.L517
	mov	x1, #0
	str	x1, [x19]
	mov	x3, #0
	b	.L518
.L517:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, str2507
	add	x1, x1, #:lo12:str2507
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x3, x1, x20
	str	x3, [x19]
.L518:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x2, sp
	cmp	w3, #0
	bne	.L521
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L522
.L521:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x3
	str	x1, [x2]
.L522:
	cmp	w1, #0
	bne	.L545
	ldr	x1, [x0]
	cmp	x1, #0
	cset	x20, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	w20, #0
	bne	.L526
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L527
.L526:
	mov	x21, x0
	mov	x0, #8
	add	x0, x21, x0
	ldr	x0, [x0]
	adrp	x1, str2538
	add	x1, x1, #:lo12:str2538
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	cset	x1, eq
	and	x1, x1, x20
	str	x1, [x19]
.L527:
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	w1, #0
	bne	.L530
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L535
.L530:
	mov	x3, #16
	add	x3, x0, x3
	ldr	x3, [x3]
	ldr	x5, [x3]
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x5, #1
	beq	.L533
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L534
.L533:
	mov	x5, #16
	add	x3, x3, x5
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L534:
	and	x1, x1, x3
	str	x1, [x2]
.L535:
	cmp	w1, #0
	bne	.L544
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L540
	cmp	x1, #1
	beq	.L539
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	adrp	x1, compiler_typesystem_checker_annotation_to_type
	add	x1, x1, #:lo12:compiler_typesystem_checker_annotation_to_type
	bl	donna_list_map
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_typesystem_checker_annotation_to_type
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_types_TFnType
	b	.L550
.L539:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, compiler_typesystem_checker_annotation_to_type
	add	x1, x1, #:lo12:compiler_typesystem_checker_annotation_to_type
	bl	donna_list_map
	bl	compiler_typesystem_types_TTupleType
	b	.L550
.L540:
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	bl	compiler_typesystem_checker_unqualify
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	compiler_typesystem_checker_is_type_var
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L542
	adrp	x1, compiler_typesystem_checker_annotation_to_type
	add	x1, x1, #:lo12:compiler_typesystem_checker_annotation_to_type
	bl	donna_list_map
	mov	x1, x0
	mov	x0, x20
	bl	compiler_typesystem_types_TNamedType
	str	x0, [x19]
	b	.L550
.L542:
	mov	x0, x20
	mov	x1, #0
	bl	donna_string_char_at
	bl	compiler_typesystem_types_TTypeVar
	str	x0, [x19]
	b	.L550
.L544:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_annotation_to_type
	bl	compiler_typesystem_types_TListType
	b	.L550
.L545:
	adrp	x0, compiler_typesystem_types_TNil
	add	x0, x0, #:lo12:compiler_typesystem_types_TNil
	b	.L550
.L546:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L550
.L547:
	adrp	x0, compiler_typesystem_types_TString
	add	x0, x0, #:lo12:compiler_typesystem_types_TString
	b	.L550
.L548:
	adrp	x0, compiler_typesystem_types_TFloat
	add	x0, x0, #:lo12:compiler_typesystem_types_TFloat
	b	.L550
.L549:
	adrp	x0, compiler_typesystem_types_TInt
	add	x0, x0, #:lo12:compiler_typesystem_types_TInt
.L550:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_annotation_to_type, @function
.size compiler_typesystem_checker_annotation_to_type, .-compiler_typesystem_checker_annotation_to_type
/* end function compiler_typesystem_checker_annotation_to_type */

.text
.balign 16
compiler_typesystem_checker_is_type_var:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #0
	bl	donna_string_char_at
	mov	x1, x0
	cmp	x1, #97
	cset	x0, ge
	cmp	x1, #122
	cset	x1, le
	and	x0, x0, x1
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_is_type_var, @function
.size compiler_typesystem_checker_is_type_var, .-compiler_typesystem_checker_is_type_var
/* end function compiler_typesystem_checker_is_type_var */

.text
.balign 16
compiler_typesystem_checker_unqualify:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x19, x1
	adrp	x1, str2625
	add	x1, x1, #:lo12:str2625
	mov	x0, x19
	bl	donna_string_split
	mov	x1, x19
	bl	compiler_typesystem_checker_last_segment
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_unqualify, @function
.size compiler_typesystem_checker_unqualify, .-compiler_typesystem_checker_unqualify
/* end function compiler_typesystem_checker_unqualify */

.text
.balign 16
compiler_typesystem_checker_last_segment:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L563
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L559
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L560
.L559:
	mov	x2, #16
	add	x2, x0, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #0
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L560:
	cmp	w2, #0
	bne	.L562
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_last_segment
	b	.L564
.L562:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L564
.L563:
	mov	x0, x1
.L564:
	mov sp, x29
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_last_segment, @function
.size compiler_typesystem_checker_last_segment, .-compiler_typesystem_checker_last_segment
/* end function compiler_typesystem_checker_last_segment */

.text
.balign 16
compiler_typesystem_checker_collect_all_bindings:
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
	beq	.L570
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
	beq	.L568
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	bl	compiler_typesystem_checker_collect_bindings
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_checker_collect_all_bindings
	str	x0, [x19]
	b	.L571
.L568:
	mov	x0, x2
	str	x0, [x19]
	b	.L571
.L570:
	mov	x0, x2
.L571:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_collect_all_bindings, @function
.size compiler_typesystem_checker_collect_all_bindings, .-compiler_typesystem_checker_collect_all_bindings
/* end function compiler_typesystem_checker_collect_all_bindings */

.text
.balign 16
compiler_typesystem_checker_collect_bindings:
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
	beq	.L600
	cmp	x0, #5
	beq	.L595
	cmp	x0, #6
	beq	.L590
	cmp	x0, #7
	beq	.L586
	cmp	x0, #8
	beq	.L578
	mov	x0, x22
	b	.L604
.L578:
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
	beq	.L581
	str	x22, [x19]
	mov	x0, x22
	b	.L604
.L581:
	mov	x21, x1
	mov	x1, #8
	add	x1, x21, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x21, x2
	ldr	x21, [x2]
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L584
	str	x22, [x20]
	mov	x0, x22
	b	.L585
.L584:
	mov	x2, x22
	bl	compiler_typesystem_checker_collect_bindings_list
	str	x0, [x20]
.L585:
	str	x0, [x19]
	b	.L604
.L586:
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
	beq	.L589
	str	x22, [x19]
	mov	x0, x22
	b	.L604
.L589:
	mov	x21, x1
	mov	x1, #8
	add	x1, x21, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x21, x2
	ldr	x21, [x2]
	mov	x2, x22
	bl	compiler_typesystem_checker_collect_bindings_list
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_checker_collect_bindings
	str	x0, [x19]
	b	.L604
.L590:
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
	beq	.L594
	str	x20, [x19]
	mov	x0, x20
	b	.L604
.L594:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	compiler_typesystem_checker_collect_bindings_list
	str	x0, [x19]
	b	.L604
.L595:
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
	beq	.L599
	str	x20, [x19]
	mov	x0, x20
	b	.L604
.L599:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, x20
	bl	compiler_typesystem_checker_collect_bindings
	str	x0, [x19]
	b	.L604
.L600:
	mov	x0, x22
	mov	x3, #8
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x22, x1
	mov	x1, x20
	mov	x19, x0
	bl	compiler_typesystem_checker_lookup_int_binding
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x1, [x1]
	cmp	x1, #1
	beq	.L603
	mov	x21, x0
	mov	x0, #16
	bl	malloc
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
	b	.L604
.L603:
	str	x0, [x19]
.L604:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_collect_bindings, @function
.size compiler_typesystem_checker_collect_bindings, .-compiler_typesystem_checker_collect_bindings
/* end function compiler_typesystem_checker_collect_bindings */

.text
.balign 16
compiler_typesystem_checker_collect_bindings_list:
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
	beq	.L610
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
	beq	.L608
	mov	x1, #8
	add	x1, x3, x1
	ldr	x1, [x1]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x21, [x3]
	bl	compiler_typesystem_checker_collect_bindings
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	compiler_typesystem_checker_collect_bindings_list
	str	x0, [x19]
	b	.L611
.L608:
	mov	x0, x2
	str	x0, [x19]
	b	.L611
.L610:
	mov	x0, x2
.L611:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_collect_bindings_list, @function
.size compiler_typesystem_checker_collect_bindings_list, .-compiler_typesystem_checker_collect_bindings_list
/* end function compiler_typesystem_checker_collect_bindings_list */

.text
.balign 16
compiler_typesystem_checker_lookup_int_binding:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L617
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
	beq	.L615
	bl	compiler_typesystem_checker_lookup_int_binding
	str	x0, [x19]
	b	.L618
.L615:
	mov	x0, x2
	bl	donna_option_Some
	str	x0, [x19]
	b	.L618
.L617:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L618:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_lookup_int_binding, @function
.size compiler_typesystem_checker_lookup_int_binding, .-compiler_typesystem_checker_lookup_int_binding
/* end function compiler_typesystem_checker_lookup_int_binding */

.text
.balign 16
compiler_typesystem_checker_apply_subst:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	ldr	x1, [x0]
	cmp	x1, #9
	beq	.L630
	cmp	x1, #5
	beq	.L628
	cmp	x1, #6
	beq	.L626
	cmp	x1, #7
	beq	.L625
	cmp	x1, #8
	bne	.L635
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x20
	bl	compiler_typesystem_checker_apply_subst_list
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_types_TNamedType
	b	.L635
.L625:
	mov	x19, x0
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x1, #16
	add	x1, x19, x1
	ldr	x19, [x1]
	mov	x1, x20
	bl	compiler_typesystem_checker_apply_subst_list
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, x20
	bl	compiler_typesystem_checker_apply_subst
	mov	x1, x0
	mov	x0, x19
	bl	compiler_typesystem_types_TFnType
	b	.L635
.L626:
	mov	x19, x20
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	compiler_typesystem_checker_apply_subst_list
	bl	compiler_typesystem_types_TTupleType
	b	.L635
.L628:
	mov	x19, x20
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	compiler_typesystem_checker_apply_subst
	bl	compiler_typesystem_types_TListType
	b	.L635
.L630:
	mov	x19, x0
	mov	x0, x20
	mov	x1, #8
	add	x1, x19, x1
	ldr	x1, [x1]
	bl	compiler_typesystem_checker_lookup_int_binding
	mov	x2, x0
	mov	x0, x19
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L633
	str	x0, [x1]
	b	.L635
.L633:
	mov	x0, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
.L635:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_apply_subst, @function
.size compiler_typesystem_checker_apply_subst, .-compiler_typesystem_checker_apply_subst
/* end function compiler_typesystem_checker_apply_subst */

.text
.balign 16
compiler_typesystem_checker_apply_subst_list:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L638
	mov	x2, #8
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x20, x1
	bl	compiler_typesystem_checker_apply_subst_list
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_typesystem_checker_apply_subst
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
	b	.L639
.L638:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L639:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_apply_subst_list, @function
.size compiler_typesystem_checker_apply_subst_list, .-compiler_typesystem_checker_apply_subst_list
/* end function compiler_typesystem_checker_apply_subst_list */

.text
.balign 16
compiler_typesystem_checker_check_binop_types:
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
	beq	.L714
	cmp	x3, #6
	beq	.L707
	cmp	x3, #7
	beq	.L700
	cmp	x3, #8
	beq	.L693
	cmp	x3, #15
	beq	.L686
	cmp	x3, #16
	beq	.L679
	cmp	x3, #17
	beq	.L672
	cmp	x3, #18
	beq	.L665
	cmp	x3, #19
	beq	.L658
	cmp	x3, #20
	beq	.L651
	mov	x0, #1
	bl	donna_result_Ok
	b	.L721
.L651:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #3
	beq	.L653
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str3176
	add	x0, x0, #:lo12:str3176
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L653:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #3
	beq	.L656
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str3171
	add	x0, x0, #:lo12:str3171
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L657
.L656:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L657:
	str	x0, [x19]
	b	.L721
.L658:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #3
	beq	.L660
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str3149
	add	x0, x0, #:lo12:str3149
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L660:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #3
	beq	.L663
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str3144
	add	x0, x0, #:lo12:str3144
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L664
.L663:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L664:
	str	x0, [x19]
	b	.L721
.L665:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L667
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str3122
	add	x0, x0, #:lo12:str3122
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L667:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L670
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str3117
	add	x0, x0, #:lo12:str3117
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L671
.L670:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L671:
	str	x0, [x19]
	b	.L721
.L672:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L674
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str3095
	add	x0, x0, #:lo12:str3095
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L674:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L677
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str3090
	add	x0, x0, #:lo12:str3090
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L678
.L677:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L678:
	str	x0, [x19]
	b	.L721
.L679:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L681
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str3068
	add	x0, x0, #:lo12:str3068
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L681:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L684
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str3063
	add	x0, x0, #:lo12:str3063
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L685
.L684:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L685:
	str	x0, [x19]
	b	.L721
.L686:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L688
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str3041
	add	x0, x0, #:lo12:str3041
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L688:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L691
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str3036
	add	x0, x0, #:lo12:str3036
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L692
.L691:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L692:
	str	x0, [x19]
	b	.L721
.L693:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L695
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str3014
	add	x0, x0, #:lo12:str3014
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L695:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L698
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str3009
	add	x0, x0, #:lo12:str3009
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L699
.L698:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L699:
	str	x0, [x19]
	b	.L721
.L700:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L702
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str2987
	add	x0, x0, #:lo12:str2987
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L702:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L705
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str2982
	add	x0, x0, #:lo12:str2982
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L706
.L705:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L706:
	str	x0, [x19]
	b	.L721
.L707:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L709
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str2960
	add	x0, x0, #:lo12:str2960
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L709:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L712
	mov	x1, x0
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str2955
	add	x0, x0, #:lo12:str2955
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L713
.L712:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L713:
	str	x0, [x19]
	b	.L721
.L714:
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L716
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x20
	mov	x1, x0
	mov	x21, x2
	adrp	x0, str2933
	add	x0, x0, #:lo12:str2933
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x19]
	b	.L721
.L716:
	mov	x21, x20
	mov	x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L719
	bl	compiler_typesystem_types_type_to_string
	mov	x2, x21
	mov	x1, x0
	adrp	x0, str2928
	add	x0, x0, #:lo12:str2928
	bl	errors_error_TypeMismatch
	bl	donna_result_Error
	str	x0, [x20]
	b	.L720
.L719:
	mov	x0, #1
	bl	donna_result_Ok
	str	x0, [x20]
.L720:
	str	x0, [x19]
.L721:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_check_binop_types, @function
.size compiler_typesystem_checker_check_binop_types, .-compiler_typesystem_checker_check_binop_types
/* end function compiler_typesystem_checker_check_binop_types */

.text
.balign 16
compiler_typesystem_checker_binop_result_type:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L764
	cmp	x0, #1
	beq	.L763
	cmp	x0, #2
	beq	.L762
	cmp	x0, #3
	beq	.L761
	cmp	x0, #4
	beq	.L760
	cmp	x0, #5
	beq	.L759
	cmp	x0, #6
	beq	.L758
	cmp	x0, #7
	beq	.L757
	cmp	x0, #8
	beq	.L756
	cmp	x0, #9
	beq	.L755
	cmp	x0, #10
	beq	.L754
	cmp	x0, #11
	beq	.L753
	cmp	x0, #12
	beq	.L752
	cmp	x0, #13
	beq	.L751
	cmp	x0, #14
	beq	.L750
	cmp	x0, #15
	beq	.L749
	cmp	x0, #16
	beq	.L748
	cmp	x0, #17
	beq	.L747
	cmp	x0, #18
	beq	.L746
	cmp	x0, #19
	beq	.L745
	cmp	x0, #20
	beq	.L744
	adrp	x0, compiler_typesystem_types_TString
	add	x0, x0, #:lo12:compiler_typesystem_types_TString
	b	.L765
.L744:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L745:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L746:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L747:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L748:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L749:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L750:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L751:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L752:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L753:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L754:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L755:
	adrp	x0, compiler_typesystem_types_TBool
	add	x0, x0, #:lo12:compiler_typesystem_types_TBool
	b	.L765
.L756:
	adrp	x0, compiler_typesystem_types_TFloat
	add	x0, x0, #:lo12:compiler_typesystem_types_TFloat
	b	.L765
.L757:
	adrp	x0, compiler_typesystem_types_TFloat
	add	x0, x0, #:lo12:compiler_typesystem_types_TFloat
	b	.L765
.L758:
	adrp	x0, compiler_typesystem_types_TFloat
	add	x0, x0, #:lo12:compiler_typesystem_types_TFloat
	b	.L765
.L759:
	adrp	x0, compiler_typesystem_types_TFloat
	add	x0, x0, #:lo12:compiler_typesystem_types_TFloat
	b	.L765
.L760:
	adrp	x0, compiler_typesystem_types_TInt
	add	x0, x0, #:lo12:compiler_typesystem_types_TInt
	b	.L765
.L761:
	adrp	x0, compiler_typesystem_types_TInt
	add	x0, x0, #:lo12:compiler_typesystem_types_TInt
	b	.L765
.L762:
	adrp	x0, compiler_typesystem_types_TInt
	add	x0, x0, #:lo12:compiler_typesystem_types_TInt
	b	.L765
.L763:
	adrp	x0, compiler_typesystem_types_TInt
	add	x0, x0, #:lo12:compiler_typesystem_types_TInt
	b	.L765
.L764:
	adrp	x0, compiler_typesystem_types_TInt
	add	x0, x0, #:lo12:compiler_typesystem_types_TInt
.L765:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_checker_binop_result_type, @function
.size compiler_typesystem_checker_binop_result_type, .-compiler_typesystem_checker_binop_result_type
/* end function compiler_typesystem_checker_binop_result_type */

.text
.balign 16
compiler_typesystem_checker_path_last_segment:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	mov	x19, x1
	adrp	x1, str3270
	add	x1, x1, #:lo12:str3270
	mov	x0, x19
	bl	donna_string_split
	bl	donna_list_reverse
	mov	x1, x19
	bl	donna_list_head
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_checker_path_last_segment, @function
.size compiler_typesystem_checker_path_last_segment, .-compiler_typesystem_checker_path_last_segment
/* end function compiler_typesystem_checker_path_last_segment */

.text
.balign 16
compiler_typesystem_checker_lookup_binding:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L773
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
	beq	.L771
	bl	compiler_typesystem_checker_lookup_binding
	str	x0, [x19]
	b	.L774
.L771:
	mov	x0, x20
	bl	donna_option_Some
	str	x0, [x19]
	b	.L774
.L773:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L774:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_lookup_binding, @function
.size compiler_typesystem_checker_lookup_binding, .-compiler_typesystem_checker_lookup_binding
/* end function compiler_typesystem_checker_lookup_binding */

.text
.balign 16
compiler_typesystem_checker_pub_fns_to_bindings:
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
	beq	.L780
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
	beq	.L778
	bl	compiler_typesystem_checker_pub_fns_to_bindings
	str	x0, [x20]
	b	.L779
.L778:
	bl	compiler_typesystem_checker_pub_fns_to_bindings
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x22, x0
	str	x24, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L779:
	str	x0, [x19]
	b	.L781
.L780:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L781:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_pub_fns_to_bindings, @function
.size compiler_typesystem_checker_pub_fns_to_bindings, .-compiler_typesystem_checker_pub_fns_to_bindings
/* end function compiler_typesystem_checker_pub_fns_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_consts_to_bindings:
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
	beq	.L787
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
	beq	.L785
	bl	compiler_typesystem_checker_pub_consts_to_bindings
	str	x0, [x20]
	b	.L786
.L785:
	bl	compiler_typesystem_checker_pub_consts_to_bindings
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x22, x0
	str	x24, [x22]
	mov	x0, #8
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L786:
	str	x0, [x19]
	b	.L788
.L787:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L788:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_pub_consts_to_bindings, @function
.size compiler_typesystem_checker_pub_consts_to_bindings, .-compiler_typesystem_checker_pub_consts_to_bindings
/* end function compiler_typesystem_checker_pub_consts_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_type_defs_to_ctor_bindings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L795
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
	beq	.L792
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	compiler_typesystem_types_TNamedType
	mov	x1, x0
	mov	x0, x22
	bl	compiler_typesystem_checker_ctors_to_bindings
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	mov	x1, x0
	mov	x0, x21
	bl	donna_list_append
	str	x0, [x20]
	b	.L794
.L792:
	mov	x0, x21
	bl	compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	str	x0, [x20]
.L794:
	str	x0, [x19]
	b	.L796
.L795:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L796:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_pub_type_defs_to_ctor_bindings, @function
.size compiler_typesystem_checker_pub_type_defs_to_ctor_bindings, .-compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_bindings */

.text
.balign 16
compiler_typesystem_checker_ctors_to_bindings:
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
	beq	.L805
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
	bl	donna_list_is_empty
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	.L801
	mov	x23, x1
	bl	compiler_typesystem_types_TFnType
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x20, [x21]
	mov	x21, x20
	b	.L804
.L801:
	mov	x0, x20
	mov	x20, x21
	str	x1, [x20]
	mov	x21, x1
.L804:
	bl	compiler_typesystem_checker_ctors_to_bindings
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x21
	mov	x21, x0
	str	x22, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x1, [x0]
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
	b	.L806
.L805:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L806:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_ctors_to_bindings, @function
.size compiler_typesystem_checker_ctors_to_bindings, .-compiler_typesystem_checker_ctors_to_bindings
/* end function compiler_typesystem_checker_ctors_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_type_defs_to_ctor_info:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L813
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
	beq	.L810
	bl	compiler_typesystem_checker_ctors_to_info
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	compiler_typesystem_checker_pub_type_defs_to_ctor_info
	mov	x1, x0
	mov	x0, x21
	bl	donna_list_append
	str	x0, [x20]
	b	.L812
.L810:
	mov	x0, x21
	bl	compiler_typesystem_checker_pub_type_defs_to_ctor_info
	str	x0, [x20]
.L812:
	str	x0, [x19]
	b	.L814
.L813:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L814:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_checker_pub_type_defs_to_ctor_info, @function
.size compiler_typesystem_checker_pub_type_defs_to_ctor_info, .-compiler_typesystem_checker_pub_type_defs_to_ctor_info
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_info */

.text
.balign 16
compiler_typesystem_checker_ctors_to_info:
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
	beq	.L817
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
	bl	compiler_typesystem_checker_ctors_to_info
	mov	x20, x0
	mov	x0, #24
	bl	malloc
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
	bl	malloc
	mov	x21, x0
	str	x23, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
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
	b	.L818
.L817:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L818:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_checker_ctors_to_info, @function
.size compiler_typesystem_checker_ctors_to_info, .-compiler_typesystem_checker_ctors_to_info
/* end function compiler_typesystem_checker_ctors_to_info */

.section .note.GNU-stack,"",@progbits
