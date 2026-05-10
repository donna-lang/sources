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
str2141:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str2190:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
str2221:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2252:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
str2283:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str2314:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
str2345:
	.ascii "List"
	.byte 0
/* end data */

.data
.balign 8
str2432:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str2735:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2740:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2762:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2767:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2789:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2794:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2816:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2821:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2843:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2848:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2870:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2875:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2897:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2902:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2924:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2929:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2951:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str2956:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str2978:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str2983:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3077:
	.ascii "/"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_typesystem_checker_check_module
compiler_typesystem_checker_check_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_check_module_with_imports
	leave
	ret
.type compiler_typesystem_checker_check_module, @function
.size compiler_typesystem_checker_check_module, .-compiler_typesystem_checker_check_module
/* end function compiler_typesystem_checker_check_module */

.text
.balign 16
.globl compiler_typesystem_checker_check_module_with_imports
compiler_typesystem_checker_check_module_with_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r12
	movq %rdi, %rax
	movq %rdx, %rdi
	movq 16(%rax), %r15
	movq 24(%rax), %r13
	movq 32(%rax), %r14
	movq 40(%rax), %rbx
	movq %rbx, -16(%rbp)
	leaq donna_nil(%rip), %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq compiler_typesystem_checker_collect_declared_aliases
	movq %rbx, %rdi
	movq %rax, %rsi
	movq -16(%rbp), %rbx
	callq compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, -24(%rbp)
	callq compiler_typesystem_env_new_env
	movq %r15, %rdi
	movq %rax, %rsi
	movq -24(%rbp), %r15
	callq compiler_typesystem_checker_register_import_aliases
	movq %r15, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_add_imports_to_env
	movq %r14, %rdi
	movq %rax, %r15
	movq %rdi, %r14
	movq %r15, %rdi
	callq compiler_typesystem_env_env_ctor_info
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %r14
	callq compiler_typesystem_checker_check_type_defs
	movq %r14, %rsi
	movq %r13, %rdi
	movq (%rax), %r14
	movq %rsi, %r13
	movq 8(%rax), %rsi
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_check_constants
	movq %r14, %rcx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r15
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb7
	movq 8(%rax), %rax
	movq %rsi, %rbx
	movq (%rax), %rsi
	movq 8(%rax), %r14
	callq compiler_typesystem_checker_check_functions
	movq %rbx, %rsi
	movq %rsi, %r13
	movq 8(%rax), %rsi
	movq %rsi, -32(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, %rbx
	callq donna_list_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz .Lbb6
	movq %r12, %rdi
	movq %rdi, %r12
	movq %r15, %rdi
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r13, %rsi
	movq %rax, %rdi
	movq -32(%rbp), %r13
	callq donna_list_append
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r8
	callq compiler_typesystem_typed_ast_TypedModule
	movq %rax, %rdi
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb8
.Lbb6:
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb8
.Lbb7:
	movq 8(%rax), %rbx
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	callq donna_result_Error
.Lbb8:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_module_with_imports, @function
.size compiler_typesystem_checker_check_module_with_imports, .-compiler_typesystem_checker_check_module_with_imports
/* end function compiler_typesystem_checker_check_module_with_imports */

.text
.balign 16
.globl compiler_typesystem_checker_extract_interface
compiler_typesystem_checker_extract_interface:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rax
	movq 16(%rax), %rdi
	movq 24(%rax), %r12
	movq 32(%rax), %rbx
	callq compiler_typesystem_checker_pub_fns_to_bindings
	movq %r12, %rdi
	movq %rax, %r12
	callq compiler_typesystem_checker_pub_consts_to_bindings
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %r13, %rdi
	movq %rax, %r13
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_list_append
	movq %r12, %rdi
	movq %rax, %rsi
	callq donna_list_append
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_typesystem_typed_ast_ModuleInterface
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_extract_interface, @function
.size compiler_typesystem_checker_extract_interface, .-compiler_typesystem_checker_extract_interface
/* end function compiler_typesystem_checker_extract_interface */

.text
.balign 16
compiler_typesystem_checker_add_imports_to_env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz .Lbb13
	movq %rax, %r12
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %r14
	movq 8(%rax), %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq compiler_typesystem_checker_path_last_segment
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq %rdi, %rcx
	movq %rdi, %r12
	movq %rax, %rdi
	callq compiler_typesystem_env_env_add_module
	movq %r12, %rdi
	movq %rax, %r12
	callq compiler_typesystem_checker_iface_ctor_info
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_typesystem_checker_add_iface_ctors_to_env
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_add_imports_to_env
.Lbb13:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_add_imports_to_env, @function
.size compiler_typesystem_checker_add_imports_to_env, .-compiler_typesystem_checker_add_imports_to_env
/* end function compiler_typesystem_checker_add_imports_to_env */

.text
.balign 16
compiler_typesystem_checker_add_iface_ctors_to_env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz .Lbb16
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	movq (%rcx), %rsi
	movq 8(%rcx), %rdx
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_typesystem_env_env_add_ctor
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_add_iface_ctors_to_env
.Lbb16:
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_add_iface_ctors_to_env, @function
.size compiler_typesystem_checker_add_iface_ctors_to_env, .-compiler_typesystem_checker_add_iface_ctors_to_env
/* end function compiler_typesystem_checker_add_iface_ctors_to_env */

.text
.balign 16
compiler_typesystem_checker_register_import_aliases:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz .Lbb19
	movq %rax, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	movq 8(%rax), %rdi
	movq 16(%rax), %rsi
	movq %rsi, %r13
	leaq str137(%rip), %rsi
	callq donna_string_join
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rbx, %rax
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_typesystem_env_env_register_alias
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_register_import_aliases
.Lbb19:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_register_import_aliases, @function
.size compiler_typesystem_checker_register_import_aliases, .-compiler_typesystem_checker_register_import_aliases
/* end function compiler_typesystem_checker_register_import_aliases */

.text
.balign 16
compiler_typesystem_checker_collect_declared_aliases:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb22
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq compiler_typesystem_checker_collect_declared_aliases
	jmp .Lbb24
.Lbb22:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb24:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_collect_declared_aliases, @function
.size compiler_typesystem_checker_collect_declared_aliases, .-compiler_typesystem_checker_collect_declared_aliases
/* end function compiler_typesystem_checker_collect_declared_aliases */

.text
.balign 16
compiler_typesystem_checker_filter_imports_by_alias:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb29
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq %rdi, %rbx
	movq %r15, %rdi
	callq compiler_typesystem_checker_path_last_segment
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_list_contains_str
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb28
	callq compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, (%rbx)
	jmp .Lbb30
.Lbb28:
	callq compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb30
.Lbb29:
	leaq donna_nil(%rip), %rax
.Lbb30:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_filter_imports_by_alias, @function
.size compiler_typesystem_checker_filter_imports_by_alias, .-compiler_typesystem_checker_filter_imports_by_alias
/* end function compiler_typesystem_checker_filter_imports_by_alias */

.text
.balign 16
compiler_typesystem_checker_iface_ctor_info:
	endbr64
	movq 16(%rdi), %rax
	ret
.type compiler_typesystem_checker_iface_ctor_info, @function
.size compiler_typesystem_checker_iface_ctor_info, .-compiler_typesystem_checker_iface_ctor_info
/* end function compiler_typesystem_checker_iface_ctor_info */

.text
.balign 16
compiler_typesystem_checker_iface_bindings:
	endbr64
	movq 8(%rdi), %rax
	ret
.type compiler_typesystem_checker_iface_bindings, @function
.size compiler_typesystem_checker_iface_bindings, .-compiler_typesystem_checker_iface_bindings
/* end function compiler_typesystem_checker_iface_bindings */

.text
.balign 16
compiler_typesystem_checker_check_type_defs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_check_type_defs_loop
	leave
	ret
.type compiler_typesystem_checker_check_type_defs, @function
.size compiler_typesystem_checker_check_type_defs, .-compiler_typesystem_checker_check_type_defs
/* end function compiler_typesystem_checker_check_type_defs */

.text
.balign 16
compiler_typesystem_checker_check_type_defs_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb39
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq compiler_typesystem_checker_check_type_def
	movq %r12, %rdi
	movq (%rax), %r12
	movq 8(%rax), %r14
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq compiler_typesystem_checker_check_type_defs_loop
	jmp .Lbb41
.Lbb39:
	movq %rbx, %rdi
	movq %rsi, %r12
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, (%rax)
	movq %rsi, 8(%rax)
.Lbb41:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_type_defs_loop, @function
.size compiler_typesystem_checker_check_type_defs_loop, .-compiler_typesystem_checker_check_type_defs_loop
/* end function compiler_typesystem_checker_check_type_defs_loop */

.text
.balign 16
compiler_typesystem_checker_check_type_def:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rdx
	movq %rdi, %rax
	movq 8(%rax), %rbx
	movq 16(%rax), %rsi
	movq 32(%rax), %rdi
	movq 40(%rax), %r12
	movq %rsi, %r13
	leaq donna_nil(%rip), %rsi
	callq compiler_typesystem_checker_collect_param_vars
	movq %r13, %rsi
	movq %r12, %rdi
	movq (%rax), %r14
	movq 8(%rax), %r15
	movq %rsi, %r12
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r13
	movq %r14, %rdi
	callq donna_list_map
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq compiler_typesystem_types_TNamedType
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdi
	movq %rax, %rsi
	subq $16, %rsp
	movq %rsp, %rdx
	leaq donna_nil(%rip), %rax
	movq %rax, 0(%rdx)
	movl $0, %r9d
	movq %rbx, %rdx
	callq compiler_typesystem_checker_check_ctors
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $-16, %rsp
	movq (%rax), %rdx
	movq 8(%rax), %rbx
	callq compiler_typesystem_typed_ast_TypedTypeDef
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r12, (%rax)
	movq %rbx, 8(%rax)
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_type_def, @function
.size compiler_typesystem_checker_check_type_def, .-compiler_typesystem_checker_check_type_def
/* end function compiler_typesystem_checker_check_type_def */

.text
.balign 16
compiler_typesystem_checker_collect_param_vars:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb46
	movq 8(%rdi), %r15
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	movq %rdx, %rdi
	callq compiler_typesystem_env_fresh_var
	movq %r12, %rdi
	movq (%rax), %r13
	movq 8(%rax), %r14
	movq %rdi, %r12
	movl $16, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq %r15, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq compiler_typesystem_checker_collect_param_vars
	jmp .Lbb48
.Lbb46:
	movq %rdx, %r12
	movq %rbx, %rdi
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rdx
	movq %rbx, (%rax)
	movq %rdx, 8(%rax)
.Lbb48:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_collect_param_vars, @function
.size compiler_typesystem_checker_collect_param_vars, .-compiler_typesystem_checker_collect_param_vars
/* end function compiler_typesystem_checker_collect_param_vars */

.text
.balign 16
compiler_typesystem_checker_pair_snd:
	endbr64
	movq 8(%rdi), %rax
	ret
.type compiler_typesystem_checker_pair_snd, @function
.size compiler_typesystem_checker_pair_snd, .-compiler_typesystem_checker_pair_snd
/* end function compiler_typesystem_checker_pair_snd */

.text
.balign 16
compiler_typesystem_checker_check_ctors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $88, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 16(%rbp), %r12
	movq %r12, -32(%rbp)
	movq %r9, %rbx
	movq %r8, %rax
	movq %rcx, %r15
	movq %rsi, %r13
	movq %rdi, %rcx
	movq %rax, -16(%rbp)
	movq %r15, -40(%rbp)
	movq %rdx, %r14
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb59
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq %rdi, -48(%rbp)
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -56(%rbp)
	movq 8(%rax), %rsi
	movq 24(%rax), %rdi
	movq %rsi, %r12
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq donna_list_map
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	movq %r15, %rsi
	callq compiler_typesystem_checker_subst_list
	movq %r14, %rdx
	movq %r12, %rsi
	movq %rax, %r12
	movq %rdx, %r15
	movq %rbx, %rdx
	movq %rsi, %r14
	movq %r12, %rsi
	movq %r14, %rdi
	callq compiler_typesystem_typed_ast_TypedConstructor
	movq %rax, -80(%rbp)
	movq %r12, %rdi
	callq donna_list_is_empty
	movq %r14, %rsi
	movq %rax, %rdx
	movq %r12, %rax
	movq %rax, %r12
	movq -16(%rbp), %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -8(%rbp)
	cmpq $1, %rdx
	jz .Lbb55
	movq %rsi, %r14
	movq %r13, %rsi
	movq %r12, %rdi
	callq compiler_typesystem_types_TFnType
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rax, %r14
	movq %r12, %rax
	movq -8(%rbp), %rcx
	movq %rax, %r12
	movq -16(%rbp), %rax
	movq %r14, (%rcx)
	movq %r14, %r15
	jmp .Lbb58
.Lbb55:
	movq %r15, %rdx
	movq %r13, (%rcx)
	movq %r13, %r15
.Lbb58:
	movq %rdx, %r14
	movq %r15, %rdx
	movq %rsi, %r15
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rax, -24(%rbp)
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %rax, %rdx
	movq %r12, %rax
	movq -24(%rbp), %rdi
	movq -32(%rbp), %r12
	movq -40(%rbp), %r15
	movq %r14, (%rdx)
	movq %rax, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq compiler_typesystem_env_env_add_ctor
	movq %rax, -72(%rbp)
	movq -48(%rbp), %rdi
	movq %rbx, %r9
	addq $1, %r9
	movq %r9, -64(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq -56(%rbp), %rbx
	movq -64(%rbp), %r9
	movq -72(%rbp), %r8
	movq -80(%rbp), %r10
	movq $1, (%rax)
	movq %r10, 8(%rax)
	movq %r12, 16(%rax)
	subq $16, %rsp
	movq %rsp, %r10
	movq %rax, 0(%r10)
	callq compiler_typesystem_checker_check_ctors
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb61
.Lbb59:
	movq %r12, %rdi
	movq %rax, %rbx
	callq donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r12, (%rax)
	movq %rbx, 8(%rax)
.Lbb61:
	movq %rbp, %rsp
	subq $128, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_ctors, @function
.size compiler_typesystem_checker_check_ctors, .-compiler_typesystem_checker_check_ctors
/* end function compiler_typesystem_checker_check_ctors */

.text
.balign 16
compiler_typesystem_checker_subst_type_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $8, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb64
	movl $0, %edx
	jmp .Lbb65
.Lbb64:
	movq 16(%rax), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq %rsi, %rdx
.Lbb65:
	cmpl $0, %edx
	jnz .Lbb77
	cmpq $8, %rcx
	jz .Lbb75
	cmpq $5, %rcx
	jz .Lbb73
	cmpq $6, %rcx
	jz .Lbb71
	cmpq $7, %rcx
	jnz .Lbb82
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	movq %r12, %rsi
	callq compiler_typesystem_checker_subst_list
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %r12, %rsi
	callq compiler_typesystem_checker_subst_type_params
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_types_TFnType
	jmp .Lbb82
.Lbb71:
	movq %r12, %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_subst_list
	movq %rax, %rdi
	callq compiler_typesystem_types_TTupleType
	jmp .Lbb82
.Lbb73:
	movq %r12, %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_subst_type_params
	movq %rax, %rdi
	callq compiler_typesystem_types_TListType
	jmp .Lbb82
.Lbb75:
	movq %r12, %rdi
	movq 8(%rax), %rbx
	movq %rdi, %r12
	movq 16(%rax), %rdi
	movq %r12, %rsi
	callq compiler_typesystem_checker_subst_list
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_types_TNamedType
	jmp .Lbb82
.Lbb77:
	movq %r12, %rdi
	movq %rax, %rbx
	movq 8(%rbx), %rsi
	callq compiler_typesystem_checker_lookup_type_var
	movq %rax, %rdx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rdx), %rsi
	cmpq $0, %rsi
	jz .Lbb81
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	jmp .Lbb82
.Lbb81:
	movq %rax, (%rcx)
.Lbb82:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_subst_type_params, @function
.size compiler_typesystem_checker_subst_type_params, .-compiler_typesystem_checker_subst_type_params
/* end function compiler_typesystem_checker_subst_type_params */

.text
.balign 16
compiler_typesystem_checker_subst_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb85
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rsi, %r12
	callq compiler_typesystem_checker_subst_list
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq compiler_typesystem_checker_subst_type_params
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb86
.Lbb85:
	leaq donna_nil(%rip), %rax
.Lbb86:
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_subst_list, @function
.size compiler_typesystem_checker_subst_list, .-compiler_typesystem_checker_subst_list
/* end function compiler_typesystem_checker_subst_list */

.text
.balign 16
compiler_typesystem_checker_lookup_type_var:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb92
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq 8(%rax), %r12
	movq %rsi, %r13
	callq donna_string_equal
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb90
	callq compiler_typesystem_checker_lookup_type_var
	movq %rax, (%rbx)
	jmp .Lbb93
.Lbb90:
	movq %r12, %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb93
.Lbb92:
	leaq donna_option_None(%rip), %rax
.Lbb93:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_lookup_type_var, @function
.size compiler_typesystem_checker_lookup_type_var, .-compiler_typesystem_checker_lookup_type_var
/* end function compiler_typesystem_checker_lookup_type_var */

.text
.balign 16
compiler_typesystem_checker_check_constants:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb98
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq compiler_typesystem_checker_check_constant
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb97
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq compiler_typesystem_checker_check_constants
	movq %rax, (%rbx)
	jmp .Lbb100
.Lbb97:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb100
.Lbb98:
	movq %r12, %rdi
	movq %rsi, %r12
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, (%rdi)
	movq %rbx, 8(%rdi)
	callq donna_result_Ok
.Lbb100:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_constants, @function
.size compiler_typesystem_checker_check_constants, .-compiler_typesystem_checker_check_constants
/* end function compiler_typesystem_checker_check_constants */

.text
.balign 16
compiler_typesystem_checker_check_constant:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r13
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rsi
	movq 24(%rdi), %r12
	movq 32(%rdi), %rdi
	movq %rsi, %r15
	movq %r13, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r13, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb107
	movq 8(%rcx), %rcx
	movq (%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq %rcx, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb105
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %rdx
	movq %rdx, (%r12)
	movq %r15, %rsi
	jmp .Lbb106
.Lbb105:
	movq %rdi, %r13
	movq %r14, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq %rdx, (%r12)
.Lbb106:
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rbx, %rsi
	callq compiler_typesystem_env_env_bind
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq compiler_typesystem_typed_ast_TypedConstant
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	callq donna_result_Ok
	jmp .Lbb109
.Lbb107:
	movq %rcx, %rax
	movq 8(%rax), %rdi
	callq donna_result_Error
.Lbb109:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_constant, @function
.size compiler_typesystem_checker_check_constant, .-compiler_typesystem_checker_check_constant
/* end function compiler_typesystem_checker_check_constant */

.text
.balign 16
compiler_typesystem_checker_check_functions:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq compiler_typesystem_checker_register_fn_sigs
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	callq compiler_typesystem_checker_infer_return_types
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq donna_nil(%rip), %rcx
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_check_function_bodies
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_functions, @function
.size compiler_typesystem_checker_check_functions, .-compiler_typesystem_checker_check_functions
/* end function compiler_typesystem_checker_check_functions */

.text
.balign 16
compiler_typesystem_checker_infer_return_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq %rdi, %rcx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb114
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rbx
	movq %rax, %rsi
	callq compiler_typesystem_checker_infer_return_type_one
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_infer_return_types
.Lbb114:
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_infer_return_types, @function
.size compiler_typesystem_checker_infer_return_types, .-compiler_typesystem_checker_infer_return_types
/* end function compiler_typesystem_checker_infer_return_types */

.text
.balign 16
compiler_typesystem_checker_infer_return_type_one:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rax
	movq %rdi, %rcx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz .Lbb124
	movq 8(%rcx), %rsi
	movq 24(%rcx), %rdi
	movq %rax, %r13
	movq 32(%rcx), %rax
	movq 40(%rcx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rax
	cmpq $1, %rax
	jz .Lbb122
	movq %rsi, %r14
	movq %r13, %rsi
	callq compiler_typesystem_checker_build_param_pairs
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rsi, %r14
	movq %r13, %rsi
	movq %rdi, %r15
	movq %r12, %rdi
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r15, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb119
	movq 8(%rax), %rax
	movq %rdi, %r15
	movq (%rax), %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	callq donna_list_map
	movq %r15, %rsi
	movq %rax, %rdi
	callq compiler_typesystem_types_TFnType
	movq %r14, %rsi
	movq %rax, %rdx
	movq %r13, %rax
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rax, (%r12)
	jmp .Lbb121
.Lbb119:
	movq %r13, %rax
	movq %rax, (%r12)
.Lbb121:
	movq %rax, (%rbx)
	jmp .Lbb124
.Lbb122:
	movq %r13, %rax
	movq %rax, (%rbx)
.Lbb124:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_infer_return_type_one, @function
.size compiler_typesystem_checker_infer_return_type_one, .-compiler_typesystem_checker_infer_return_type_one
/* end function compiler_typesystem_checker_infer_return_type_one */

.text
.balign 16
compiler_typesystem_checker_register_fn_sigs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb127
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq compiler_typesystem_checker_fn_name
	movq %r13, %rdi
	movq %rax, %r13
	callq compiler_typesystem_checker_function_sig_type
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rbx, %rax
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_register_fn_sigs
	jmp .Lbb128
.Lbb127:
	movq %rbx, %rax
.Lbb128:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_register_fn_sigs, @function
.size compiler_typesystem_checker_register_fn_sigs, .-compiler_typesystem_checker_register_fn_sigs
/* end function compiler_typesystem_checker_register_fn_sigs */

.text
.balign 16
compiler_typesystem_checker_fn_name:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb131
	movq 8(%rdi), %rax
	jmp .Lbb132
.Lbb131:
	movq 8(%rdi), %rax
.Lbb132:
	ret
.type compiler_typesystem_checker_fn_name, @function
.size compiler_typesystem_checker_fn_name, .-compiler_typesystem_checker_fn_name
/* end function compiler_typesystem_checker_fn_name */

.text
.balign 16
compiler_typesystem_checker_function_sig_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq compiler_typesystem_checker_fn_params
	movq %rax, %rdi
	callq compiler_typesystem_checker_params_to_types
	movq %rbx, %rdi
	movq %rax, %rbx
	callq compiler_typesystem_checker_fn_return_type
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb135
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rdi
	movq %rax, %rsi
	jmp .Lbb137
.Lbb135:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %rsi
.Lbb137:
	callq compiler_typesystem_types_TFnType
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_function_sig_type, @function
.size compiler_typesystem_checker_function_sig_type, .-compiler_typesystem_checker_function_sig_type
/* end function compiler_typesystem_checker_function_sig_type */

.text
.balign 16
compiler_typesystem_checker_fn_params:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb141
	movq 24(%rdi), %rax
	jmp .Lbb142
.Lbb141:
	movq 24(%rdi), %rax
.Lbb142:
	ret
.type compiler_typesystem_checker_fn_params, @function
.size compiler_typesystem_checker_fn_params, .-compiler_typesystem_checker_fn_params
/* end function compiler_typesystem_checker_fn_params */

.text
.balign 16
compiler_typesystem_checker_fn_return_type:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb145
	movq 32(%rdi), %rax
	jmp .Lbb146
.Lbb145:
	movq 32(%rdi), %rax
.Lbb146:
	ret
.type compiler_typesystem_checker_fn_return_type, @function
.size compiler_typesystem_checker_fn_return_type, .-compiler_typesystem_checker_fn_return_type
/* end function compiler_typesystem_checker_fn_return_type */

.text
.balign 16
compiler_typesystem_checker_params_to_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb152
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb150
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r12)
	jmp .Lbb151
.Lbb150:
	movq %rdi, %r13
	movl $0, %edi
	callq compiler_typesystem_types_TTypeVar
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r12)
.Lbb151:
	callq compiler_typesystem_checker_params_to_types
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb153
.Lbb152:
	leaq donna_nil(%rip), %rax
.Lbb153:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_params_to_types, @function
.size compiler_typesystem_checker_params_to_types, .-compiler_typesystem_checker_params_to_types
/* end function compiler_typesystem_checker_params_to_types */

.text
.balign 16
compiler_typesystem_checker_check_function_bodies:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r14
	movq %rdi, %rax
	movq %rdx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb161
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rsi, %r13
	callq compiler_typesystem_checker_check_function
	movq %rbx, %rdi
	movq %rax, %rcx
	movq (%rcx), %rax
	movq 8(%rcx), %rbx
	movq 16(%rcx), %r13
	movq %r13, -16(%rbp)
	subq $16, %rsp
	movq %rsp, %r15
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb158
	movq 8(%rax), %rcx
	movq %rcx, -8(%rbp)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq %r13, %rax
	movq -8(%rbp), %rcx
	movq -16(%rbp), %r13
	movq $1, (%rdi)
	movq %rcx, 8(%rdi)
	movq %rax, 16(%rdi)
	movq %rdi, (%r15)
	xchgq %rbx, %rdi
	jmp .Lbb160
.Lbb158:
	movq %rdi, (%r15)
	xchgq %rbx, %rdi
.Lbb160:
	callq donna_list_reverse
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r14, %rsi
	callq donna_list_append
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rdx
	callq compiler_typesystem_checker_check_function_bodies
	jmp .Lbb163
.Lbb161:
	movq %r14, %rbx
	movq %rsi, %r13
	callq donna_list_reverse
	movq %rbx, %rdi
	movq %rax, %r12
	callq donna_list_reverse
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq %r13, %rsi
	movq %rsi, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb163:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_function_bodies, @function
.size compiler_typesystem_checker_check_function_bodies, .-compiler_typesystem_checker_check_function_bodies
/* end function compiler_typesystem_checker_check_function_bodies */

.text
.balign 16
compiler_typesystem_checker_check_function:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $120, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r13
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb183
	movq 8(%rax), %r12
	movq 16(%rax), %rsi
	movq %rsi, -56(%rbp)
	movq 24(%rax), %rdi
	movq 32(%rax), %rbx
	movq 40(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 48(%rax), %r15
	movq %r15, -40(%rbp)
	movq %r13, %rsi
	callq compiler_typesystem_checker_build_param_pairs
	movq %r13, %rdi
	movq %rax, %r14
	subq $16, %rsp
	movq %rsp, %r15
	movq (%rbx), %rax
	cmpq $0, %rax
	jz .Lbb168
	movq %rdi, %r13
	movq 8(%rbx), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r15)
	movq %r13, %r15
	jmp .Lbb171
.Lbb168:
	movq %r15, %r13
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%r13)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %r15
.Lbb171:
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r13
	movq %r14, %rdi
	callq donna_list_map
	movq %rax, %rdi
	movq %r15, %rsi
	callq compiler_typesystem_types_TFnType
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, -24(%rbp)
	movq %rdx, %r13
	movq %rax, %rdx
	movq %r12, %rsi
	callq compiler_typesystem_env_env_bind
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, %rsi
	movq %rdi, %r14
	movq %r13, %rdi
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	movq -16(%rbp), %rdi
	callq compiler_typesystem_checker_infer_expr
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -72(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb181
	movq 8(%rax), %rax
	movq (%rax), %r8
	movq %r8, -32(%rbp)
	movq %rdi, %r14
	movq %r8, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r14, %rdi
	movq %rax, %r14
	movq -32(%rbp), %r8
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -64(%rbp)
	movq (%rbx), %rax
	cmpq $0, %rax
	jz .Lbb178
	movq %r15, %rsi
	movq %rdi, %rbx
	movq %r14, %rdi
	callq compiler_typesystem_types_types_equal
	movq %r14, %rcx
	movq %r13, %rdx
	movq %rbx, %rdi
	movq %rax, %r9
	movq %r12, %r14
	movq -64(%rbp), %r12
	movq -72(%rbp), %rbx
	movq -32(%rbp), %r8
	movq -24(%rbp), %rax
	movq -56(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $0, %r9
	jz .Lbb175
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	leaq donna_option_None(%rip), %r9
	movq %r15, %rcx
	callq compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rdi
	subq $-16, %rsp
	callq donna_option_Some
	movq %rax, %r15
	movl $24, %edi
	callq malloc
	movq %r15, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp .Lbb177
.Lbb175:
	movq %r15, %rdi
	movq %rcx, %r15
	callq compiler_typesystem_types_type_to_string
	movq %r15, %rcx
	movq %rax, -48(%rbp)
	movq -40(%rbp), %r15
	movq %rcx, %rdi
	callq compiler_typesystem_types_type_to_string
	movq %r15, %rdx
	movq %rax, %rsi
	movq -48(%rbp), %rdi
	callq errors_error_TypeInvalidReturn
	movq %rax, %r15
	movl $24, %edi
	callq malloc
	xchgq %rax, %r15
	movq $1, (%r15)
	movq %rax, 8(%r15)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r15)
	movl $24, %edi
	callq malloc
	leaq donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
.Lbb177:
	movq %rax, (%r12)
	jmp .Lbb180
.Lbb178:
	movq %r8, %r15
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq donna_list_map
	movq %rax, %rdi
	movq %r14, %rsi
	callq compiler_typesystem_types_TFnType
	movq %r13, %rdx
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -56(%rbp), %rsi
	movq %rcx, -80(%rbp)
	movq %rdx, %r13
	movq %rcx, %rdx
	movq %rsi, %r12
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r13
	movq -64(%rbp), %r12
	movq -72(%rbp), %rbx
	movq -80(%rbp), %rax
	subq $16, %rsp
	movq %rsp, %r9
	movq %rax, 0(%r9)
	leaq donna_option_None(%rip), %r9
	callq compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rdi
	subq $-16, %rsp
	callq donna_option_Some
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	movq %r14, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
.Lbb180:
	movq %rax, (%rbx)
	jmp .Lbb191
.Lbb181:
	movq %r14, %rbx
	movq 8(%rax), %r14
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $24, %edi
	callq malloc
	leaq donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb191
.Lbb183:
	movq %r13, %rdi
	movq 8(%rax), %rbx
	movq 16(%rax), %rsi
	movq %rdi, %r13
	movq 24(%rax), %rdi
	movq 32(%rax), %r12
	movq 40(%rax), %rcx
	movq %rcx, -96(%rbp)
	movq 48(%rax), %rax
	movq %rax, -88(%rbp)
	movq %rsi, %r15
	movq %r13, %rsi
	callq compiler_typesystem_checker_build_param_pairs
	movq %r13, %rdi
	movq %rax, %r14
	movq %r12, %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb187
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq %rcx, (%r12)
	movq %rcx, %r15
	jmp .Lbb190
.Lbb187:
	movq %r15, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%r12)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %r15
.Lbb190:
	movq %rsi, %r13
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r12
	movq %r14, %rdi
	callq donna_list_map
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r15, %rsi
	callq compiler_typesystem_types_TFnType
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdx, %r14
	movq %r12, %rdx
	movq %rsi, %r13
	movq %rbx, %rsi
	callq compiler_typesystem_env_env_bind
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, -112(%rbp)
	movq %rsi, %r13
	leaq compiler_typesystem_types_TNil(%rip), %rsi
	movq %rdi, %rbx
	leaq str855(%rip), %rdi
	callq compiler_typesystem_types_TEIntLit
	movq %rbx, %rdi
	movq %rax, -104(%rbp)
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %r15, %rcx
	movq %rax, %rdi
	movq -88(%rbp), %rax
	movq %rcx, %r15
	movq -96(%rbp), %rcx
	movq %rcx, (%rdi)
	movq %rax, 8(%rdi)
	callq donna_option_Some
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %r9
	movq -104(%rbp), %r8
	movq -112(%rbp), %rbx
	subq $16, %rsp
	movq %rsp, %rax
	movq %r12, 0(%rax)
	callq compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rdi
	subq $-16, %rsp
	callq donna_option_Some
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %r12, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb191:
	movq %rbp, %rsp
	subq $160, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_function, @function
.size compiler_typesystem_checker_check_function, .-compiler_typesystem_checker_check_function
/* end function compiler_typesystem_checker_check_function */

.text
.balign 16
compiler_typesystem_checker_build_param_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb199
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb196
	movq %rdi, %r12
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, (%r13)
	movq %r14, %rsi
	movq %r12, %r14
	jmp .Lbb198
.Lbb196:
	movq %r13, %r12
	movq %rdi, %r13
	movq %r14, %rdi
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rdi
	callq compiler_typesystem_types_TTypeVar
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r14
	movq %r14, (%r12)
.Lbb198:
	callq compiler_typesystem_checker_build_param_pairs
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb200
.Lbb199:
	leaq donna_nil(%rip), %rax
.Lbb200:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_build_param_pairs, @function
.size compiler_typesystem_checker_build_param_pairs, .-compiler_typesystem_checker_build_param_pairs
/* end function compiler_typesystem_checker_build_param_pairs */

.text
.balign 16
compiler_typesystem_checker_bind_param_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz .Lbb203
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	movq (%rcx), %rsi
	movq 8(%rcx), %rdx
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_param_pairs
.Lbb203:
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_bind_param_pairs, @function
.size compiler_typesystem_checker_bind_param_pairs, .-compiler_typesystem_checker_bind_param_pairs
/* end function compiler_typesystem_checker_bind_param_pairs */

.text
.balign 16
.globl compiler_typesystem_checker_infer_expr
compiler_typesystem_checker_infer_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $136, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb336
	cmpq $1, %rax
	jz .Lbb335
	cmpq $2, %rax
	jz .Lbb334
	cmpq $3, %rax
	jz .Lbb333
	cmpq $4, %rax
	jz .Lbb327
	cmpq $5, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb305
	cmpq $9, %rax
	jz .Lbb294
	cmpq $10, %rax
	jz .Lbb285
	cmpq $11, %rax
	jz .Lbb278
	cmpq $14, %rax
	jz .Lbb272
	cmpq $12, %rax
	jz .Lbb266
	cmpq $6, %rax
	jz .Lbb263
	cmpq $7, %rax
	jz .Lbb251
	cmpq $8, %rax
	jz .Lbb235
	cmpq $13, %rax
	jz .Lbb232
	cmpq $16, %rax
	jz .Lbb229
	cmpq $15, %rax
	jz .Lbb226
	cmpq $17, %rax
	jz .Lbb223
	movq %rsi, %rdi
	callq compiler_typesystem_env_fresh_var
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq compiler_typesystem_types_TETodo
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	callq donna_result_Ok
	jmp .Lbb337
.Lbb223:
	movq 8(%rdi), %rdi
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb225
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq %rdi, %r12
	movq 8(%rax), %rdi
	callq compiler_typesystem_env_fresh_var
	movq %r12, %rdi
	movq (%rax), %rsi
	movq 8(%rax), %r12
	callq compiler_typesystem_types_TEPanic
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb225:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb226:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq compiler_typesystem_checker_build_param_pairs
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rsi, %r13
	movq %rdi, %r12
	movq %rbx, %rdi
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb228
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq %rdi, %r12
	movq %r14, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r12
	callq donna_list_map
	movq %r15, %rsi
	movq %rax, %rdi
	callq compiler_typesystem_types_TFnType
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_types_TELambda
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rsi, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb228:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb229:
	movq 8(%rdi), %rdi
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb231
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	leaq compiler_typesystem_types_TNil(%rip), %rsi
	callq compiler_typesystem_types_TEEcho
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb231:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb232:
	movq 8(%rdi), %rdi
	leaq compiler_typesystem_types_TNil(%rip), %rcx
	leaq donna_nil(%rip), %rdx
	movq %rsi, %rbx
	callq compiler_typesystem_checker_check_stmts
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb234
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq %rsi, %r13
	movq 8(%rax), %rsi
	callq compiler_typesystem_types_TEBlock
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rsi, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb234:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb235:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_infer_exprs
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb250
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb248
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r13
	movq %r13, -16(%rbp)
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	movq %rax, %r14
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz .Lbb240
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb242
.Lbb240:
	movq $1, (%rax)
	movl $1, %eax
.Lbb242:
	cmpl $0, %eax
	jnz .Lbb245
	movq %rdi, %r13
	movq %r15, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rdi
	movq -16(%rbp), %r13
	movq %rax, (%r14)
	movq %rdi, %r14
	movq %rax, %rdi
	jmp .Lbb247
.Lbb245:
	movq %r14, %r13
	movq %rdi, %r14
	movq 8(%rdi), %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %rdi
	movq %r13, %rax
	movq -16(%rbp), %r13
	movq %rdi, (%rax)
.Lbb247:
	callq compiler_typesystem_types_TListType
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_types_TEListSpread
	movq %rax, %r14
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%r12)
	jmp .Lbb249
.Lbb248:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r12)
.Lbb249:
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb250:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb251:
	movq 8(%rdi), %rdi
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_infer_exprs
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb262
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz .Lbb255
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb257
.Lbb255:
	movq $1, (%rax)
	movl $1, %eax
.Lbb257:
	cmpl $0, %eax
	jnz .Lbb260
	movq %rdi, %r13
	movq %r12, %rdi
	callq compiler_typesystem_env_fresh_var
	movq %r13, %rdi
	movq (%rax), %rax
	movq %rax, (%r14)
	movq %rdi, %r13
	movq %rax, %rdi
	jmp .Lbb261
.Lbb260:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %rdi
	movq %rdi, (%r14)
.Lbb261:
	callq compiler_typesystem_types_TListType
	movq %r13, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_types_TEList
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb262:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb263:
	movq 8(%rdi), %rdi
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_infer_exprs
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb265
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rsi
	movq %rdi, %r13
	callq donna_list_map
	movq %rax, %rdi
	callq compiler_typesystem_types_TTupleType
	movq %r13, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_types_TETuple
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb265:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb266:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb271
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %r13
	movq %r13, %rsi
	callq compiler_typesystem_checker_infer_clauses
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb269
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq 8(%rax), %rdx
	callq compiler_typesystem_types_TECase
	movq %rax, %r14
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%r12)
	jmp .Lbb270
.Lbb269:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r12)
.Lbb270:
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb271:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb272:
	movq %rsi, %r12
	movq 8(%rdi), %r14
	movq 16(%rdi), %r15
	movq 24(%rdi), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r15), %rax
	cmpq $9, %rax
	jz .Lbb276
	movl $24, %edi
	callq malloc
	movq %r13, %rdx
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	movq %r15, %rdi
	callq compiler_parser_ast_Call
	movq %rax, %rdi
	movq %rdi, (%rbx)
	movq %r12, %rsi
	jmp .Lbb277
.Lbb276:
	movq 8(%r15), %rdi
	movq 16(%r15), %r13
	movq 24(%r15), %rdx
	movq %rdx, -24(%rbp)
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq -24(%rbp), %rdx
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	callq compiler_parser_ast_Call
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rdi, (%rbx)
.Lbb277:
	callq compiler_typesystem_checker_infer_expr
	jmp .Lbb337
.Lbb278:
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb284
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb282
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, (%r13)
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %r15, %rsi
	movq %rax, %rdx
	jmp .Lbb283
.Lbb282:
	movq %rdi, %r14
	movq %r15, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq %rdx, (%r13)
.Lbb283:
	callq compiler_typesystem_types_TEUnaryOp
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb284:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb285:
	movq 8(%rdi), %r12
	movq %rdi, %rax
	movq 16(%rdi), %rdi
	movq 24(%rax), %rbx
	movq 32(%rax), %rcx
	movq %rcx, -32(%rbp)
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb293
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq %rsi, %r14
	movq 8(%rax), %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -40(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb291
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r12
	movq %r12, -48(%rbp)
	movq %rdi, %r12
	movq %r14, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	movq %r15, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq -32(%rbp), %rcx
	movq %rsi, %r13
	movq %rdi, %r12
	callq compiler_typesystem_checker_check_binop_types
	movq %r13, %rsi
	movq %r12, %rdi
	movq -40(%rbp), %r12
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -56(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb289
	movq %rdi, %r13
	callq compiler_typesystem_checker_binop_result_type
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -56(%rbp), %r13
	movq -48(%rbp), %r14
	callq compiler_typesystem_types_TEBinOp
	movq %rax, %r15
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r15, (%rdi)
	movq %r14, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%r13)
	jmp .Lbb290
.Lbb289:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r13)
.Lbb290:
	movq %rax, (%r12)
	jmp .Lbb292
.Lbb291:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r12)
.Lbb292:
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb293:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb294:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb304
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %rsi
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_infer_exprs
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb302
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq 8(%rax), %r13
	movq %rsi, %r15
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rsi
	movq %rdi, %r14
	movq %r15, %rdi
	callq donna_list_map
	movq %r14, %rdi
	movq %rax, -64(%rbp)
	movq %rdi, %r14
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rsi, %r15
	movq -64(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -80(%rbp)
	movq (%rax), %rcx
	cmpq $7, %rcx
	jz .Lbb299
	movq %rdi, %r14
	movq %r13, %rdi
	callq compiler_typesystem_env_fresh_var
	movq %rax, %rcx
	movq -80(%rbp), %rax
	movq (%rcx), %rdx
	movq %rdx, (%rax)
	movq %r15, %rsi
	movq %r14, %rdi
	jmp .Lbb301
.Lbb299:
	movq %rdi, %r14
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq %rax, -72(%rbp)
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_collect_all_bindings
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	movq -72(%rbp), %rdi
	callq compiler_typesystem_checker_apply_subst
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq -80(%rbp), %rax
	movq %rdx, (%rax)
.Lbb301:
	callq compiler_typesystem_types_TECall
	movq %rax, %r14
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%r12)
	jmp .Lbb303
.Lbb302:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r12)
.Lbb303:
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb304:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb305:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %r14
	movq 24(%rax), %rcx
	movq %rcx, -88(%rbp)
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb326
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r15
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -104(%rbp)
	movq (%rdi), %rax
	cmpq $4, %rax
	jz .Lbb308
	movq %rdi, %r13
	movq %r15, %rdi
	callq compiler_typesystem_env_fresh_var
	movq %r14, %rsi
	movq %r13, %rdi
	movq (%rax), %rcx
	movq 8(%rax), %r13
	leaq str1182(%rip), %rdx
	callq compiler_typesystem_types_TEFieldAccess
	movq %rax, %r14
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%r12)
	jmp .Lbb325
.Lbb308:
	movq %rdi, %r13
	movq %r14, %rsi
	movq %r15, %r14
	movq 8(%r13), %rdi
	movq %rsi, %r15
	movq %rdi, %rsi
	movq %rdi, %r12
	movq %r14, %rdi
	callq compiler_typesystem_env_env_lookup_module
	movq %r15, %rsi
	movq %r12, %rdi
	movq -104(%rbp), %r12
	movq -88(%rbp), %rcx
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -128(%rbp)
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz .Lbb322
	movq 8(%rax), %rdx
	movq %rdx, -96(%rbp)
	movq %rsi, %r15
	movq %rdi, %rsi
	movq %rdi, %r12
	movq %r14, %rdi
	callq compiler_typesystem_env_env_lookup_alias
	movq %r15, %rsi
	movq %r12, %rdi
	movq -104(%rbp), %r12
	movq -96(%rbp), %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rsi, %r15
	movq (%rax), %rsi
	cmpq $1, %rsi
	jz .Lbb314
	movq %rdx, %rax
	movq %rdi, (%rcx)
	movq %rdi, -112(%rbp)
	movq %rax, %rdi
	jmp .Lbb317
.Lbb314:
	movq %rdx, %rdi
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	movq %rax, -112(%rbp)
.Lbb317:
	callq compiler_typesystem_checker_iface_bindings
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	callq compiler_typesystem_checker_lookup_binding
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -112(%rbp), %rdx
	movq -128(%rbp), %r13
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -120(%rbp)
	movq %rsi, %r15
	movq (%rcx), %rsi
	cmpq $1, %rsi
	jz .Lbb319
	movq %rdi, %r13
	movq %r14, %rdi
	callq compiler_typesystem_env_fresh_var
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -112(%rbp), %r15
	movq -120(%rbp), %rax
	movq -128(%rbp), %r13
	movq (%rcx), %rcx
	movq %rcx, (%rax)
	jmp .Lbb321
.Lbb319:
	movq %r15, %rsi
	movq %rdx, %r15
	movq 8(%rcx), %rcx
	movq %rcx, (%rax)
.Lbb321:
	movq %r15, %rdx
	callq compiler_typesystem_types_TEFieldAccess
	movq %rax, %r15
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	movq %r15, (%rdi)
	movq %r14, 8(%rdi)
	callq donna_result_Ok
	movq %rax, (%r13)
	jmp .Lbb324
.Lbb322:
	movq %r15, %r13
	movq %rcx, %rsi
	callq errors_error_TypeUndefinedModule
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r13)
.Lbb324:
	movq %rax, (%r12)
.Lbb325:
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb326:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb337
.Lbb327:
	movq 8(%rdi), %rdi
	movq %rsi, %r13
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq compiler_typesystem_env_env_lookup
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb330
	movq %rdi, %r12
	movq %r13, %rdi
	callq compiler_typesystem_env_fresh_var
	movq %r13, %rsi
	movq %r12, %rdi
	movq (%rax), %rax
	movq %rax, (%rbx)
	movq %rsi, %r12
	movq %rax, %rsi
	jmp .Lbb332
.Lbb330:
	movq %r13, %rsi
	movq %rsi, %r12
	movq 8(%rax), %rsi
	movq %rsi, (%rbx)
.Lbb332:
	callq compiler_typesystem_types_TEVar
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq donna_result_Ok
	jmp .Lbb337
.Lbb333:
	movq 8(%rdi), %rdi
	movq %rsi, %r12
	leaq compiler_typesystem_types_TBool(%rip), %rsi
	callq compiler_typesystem_types_TEBoolLit
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq donna_result_Ok
	jmp .Lbb337
.Lbb334:
	movq 8(%rdi), %rdi
	movq %rsi, %r12
	leaq compiler_typesystem_types_TString(%rip), %rsi
	callq compiler_typesystem_types_TEStringLit
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq donna_result_Ok
	jmp .Lbb337
.Lbb335:
	movq 8(%rdi), %rdi
	movq %rsi, %r12
	leaq compiler_typesystem_types_TFloat(%rip), %rsi
	callq compiler_typesystem_types_TEFloatLit
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq donna_result_Ok
	jmp .Lbb337
.Lbb336:
	movq 8(%rdi), %rdi
	movq %rsi, %r12
	leaq compiler_typesystem_types_TInt(%rip), %rsi
	callq compiler_typesystem_types_TEIntLit
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq donna_result_Ok
.Lbb337:
	movq %rbp, %rsp
	subq $176, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_infer_expr, @function
.size compiler_typesystem_checker_infer_expr, .-compiler_typesystem_checker_infer_expr
/* end function compiler_typesystem_checker_infer_expr */

.text
.balign 16
compiler_typesystem_checker_infer_exprs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb342
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb341
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq compiler_typesystem_checker_infer_exprs
	movq %rax, (%rbx)
	jmp .Lbb344
.Lbb341:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb344
.Lbb342:
	movq %r12, %rdi
	movq %rsi, %r12
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq donna_result_Ok
.Lbb344:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_infer_exprs, @function
.size compiler_typesystem_checker_infer_exprs, .-compiler_typesystem_checker_infer_exprs
/* end function compiler_typesystem_checker_infer_exprs */

.text
.balign 16
compiler_typesystem_checker_infer_clauses:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb347
	leaq compiler_typesystem_types_TNil(%rip), %rcx
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_infer_clauses_loop
	jmp .Lbb348
.Lbb347:
	movl $16, %edi
	callq malloc
	movq %rax, %rdi
	leaq donna_nil(%rip), %rax
	movq %rax, (%rdi)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rdi)
	callq donna_result_Ok
.Lbb348:
	leave
	ret
.type compiler_typesystem_checker_infer_clauses, @function
.size compiler_typesystem_checker_infer_clauses, .-compiler_typesystem_checker_infer_clauses
/* end function compiler_typesystem_checker_infer_clauses */

.text
.balign 16
compiler_typesystem_checker_infer_clauses_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %r12
	movq %rdx, %rbx
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb359
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, -48(%rbp)
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -32(%rbp)
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq 24(%rax), %r12
	movq %r14, %rsi
	movq %rdi, %r15
	movq %r13, %rdi
	callq compiler_typesystem_checker_bind_pattern
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	callq compiler_typesystem_checker_infer_guard
	movq %r15, %rsi
	movq %r12, %rdi
	movq -32(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb356
	movq 8(%rax), %rax
	movq %rax, -16(%rbp)
	callq compiler_typesystem_checker_infer_expr
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -24(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb353
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq %rdi, %r13
	movq %r15, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -24(%rbp), %r13
	movq %rsi, %r14
	movq -16(%rbp), %rsi
	movq %rcx, %r15
	callq compiler_typesystem_types_TypedClause
	movq %rbx, %rdi
	movq %rax, -40(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	movq -32(%rbp), %rbx
	movq -40(%rbp), %rax
	movq %rdi, %r14
	movq -48(%rbp), %rdi
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r14, 16(%rdx)
	callq compiler_typesystem_checker_infer_clauses_loop
	movq %rax, (%r13)
	jmp .Lbb355
.Lbb353:
	movq %r15, %rbx
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r13)
.Lbb355:
	movq %rax, (%r12)
	jmp .Lbb358
.Lbb356:
	movq %r15, %rbx
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%r12)
.Lbb358:
	movq %rax, (%rbx)
	jmp .Lbb361
.Lbb359:
	movq %rbx, %rdi
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rcx, 8(%rdi)
	callq donna_result_Ok
.Lbb361:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_infer_clauses_loop, @function
.size compiler_typesystem_checker_infer_clauses_loop, .-compiler_typesystem_checker_infer_clauses_loop
/* end function compiler_typesystem_checker_infer_clauses_loop */

.text
.balign 16
compiler_typesystem_checker_infer_guard:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb366
	movq 8(%rdi), %rdi
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb365
	movq 8(%rax), %rax
	movq (%rax), %rdi
	callq donna_option_Some
	movq %rax, %rdi
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb367
.Lbb365:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb367
.Lbb366:
	leaq donna_option_None(%rip), %rdi
	callq donna_result_Ok
.Lbb367:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_infer_guard, @function
.size compiler_typesystem_checker_infer_guard, .-compiler_typesystem_checker_infer_guard
/* end function compiler_typesystem_checker_infer_guard */

.text
.balign 16
compiler_typesystem_checker_check_stmts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq %rdi, %rax
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz .Lbb372
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq compiler_typesystem_checker_check_stmt
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb371
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	movq 16(%rax), %rsi
	movq %rsi, -16(%rbp)
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rdi
	movq %rax, %rdx
	movq -16(%rbp), %rsi
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq compiler_typesystem_checker_check_stmts
	movq %rax, (%rbx)
	jmp .Lbb374
.Lbb371:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb374
.Lbb372:
	movq %r12, %rdi
	movq %rcx, %r12
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rcx, 8(%rdi)
	callq donna_result_Ok
.Lbb374:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_stmts, @function
.size compiler_typesystem_checker_check_stmts, .-compiler_typesystem_checker_check_stmts
/* end function compiler_typesystem_checker_check_stmts */

.text
.balign 16
compiler_typesystem_checker_check_stmt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb384
	cmpq $1, %rax
	jz .Lbb380
	movq 8(%rdi), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb379
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq %rdi, %r12
	movq %r13, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	movq %r13, %rdi
	callq compiler_typesystem_types_TStmtExpr
	movq %r12, %rdi
	movq %rax, %r14
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb379:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb380:
	movq %rbx, %r12
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %r12, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb383
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq %rsi, %r13
	movq %r12, %rsi
	movq %rdi, %r12
	callq compiler_typesystem_checker_bind_pattern
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq compiler_typesystem_types_TStmtLetPat
	movq %rax, %r13
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb383:
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb384:
	movq %rbx, %r13
	movq 8(%rdi), %r12
	movq 16(%rdi), %rbx
	movq 24(%rdi), %rdi
	movq %r13, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r13, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb391
	movq 8(%rcx), %rcx
	movq (%rcx), %r15
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb389
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r14)
	movq %r15, %rdx
	jmp .Lbb390
.Lbb389:
	movq %rdi, %r13
	movq %r15, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rdx
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r14)
.Lbb390:
	movq %rdx, %r14
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_typesystem_env_env_bind
	movq %r14, %rdx
	movq %r12, %rdi
	movq %rax, %r12
	movq %r13, %rsi
	callq compiler_typesystem_types_TStmtLet
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq donna_result_Ok
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb391:
	movq %rcx, %rax
	movq 8(%rax), %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
.Lbb393:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_stmt, @function
.size compiler_typesystem_checker_check_stmt, .-compiler_typesystem_checker_check_stmt
/* end function compiler_typesystem_checker_check_stmt */

.text
.balign 16
compiler_typesystem_checker_bind_pattern:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rax
	movq %rax, %rbx
	movq (%rdi), %rax
	cmpq $2, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb422
	cmpq $0, %rax
	jz .Lbb421
	cmpq $1, %rax
	jz .Lbb420
	cmpq $3, %rax
	jz .Lbb419
	cmpq $4, %rax
	jz .Lbb418
	cmpq $5, %rax
	jz .Lbb417
	cmpq $6, %rax
	jz .Lbb416
	cmpq $7, %rax
	jz .Lbb415
	cmpq $8, %rax
	jz .Lbb404
	movq 24(%rdi), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	jmp .Lbb423
.Lbb404:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %r13
	movq %rbx, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%r13), %rax
	cmpq $0, %rax
	jz .Lbb413
	cmpq $1, %rax
	setz %r15b
	movzbq %r15b, %r15
	subq $16, %rsp
	movq %rsp, %r14
	cmpl $0, %r15d
	jnz .Lbb408
	movq $0, (%r14)
	movl $0, %eax
	jmp .Lbb409
.Lbb408:
	movq 8(%r13), %rdi
	leaq str2141(%rip), %rsi
	callq strcmp
	movq %rax, %rcx
	movq %r12, %rax
	cmpq $0, %rcx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	andq %r15, %rax
	movq %rax, (%r14)
.Lbb409:
	cmpl $0, %eax
	jnz .Lbb411
	movq 8(%r13), %r13
	movq %r12, %rdi
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rdi
	callq compiler_typesystem_types_TTypeVar
	movq %rax, %rdi
	callq compiler_typesystem_types_TListType
	movq %r13, %rsi
	movq %rax, %rdx
	movq %r12, %rax
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rax, (%rbx)
	jmp .Lbb423
.Lbb411:
	movq %r12, %rax
	movq %rax, (%rbx)
	jmp .Lbb423
.Lbb413:
	movq %r12, %rax
	movq %rax, (%rbx)
	jmp .Lbb423
.Lbb415:
	movq 8(%rdi), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	jmp .Lbb423
.Lbb416:
	movq %rbx, %rax
	jmp .Lbb423
.Lbb417:
	movq %rbx, %rax
	jmp .Lbb423
.Lbb418:
	movq %rbx, %rax
	jmp .Lbb423
.Lbb419:
	movq %rbx, %rax
	jmp .Lbb423
.Lbb420:
	movq %rbx, %rax
	jmp .Lbb423
.Lbb421:
	movq %rbx, %rax
	jmp .Lbb423
.Lbb422:
	movq 8(%rdi), %r12
	movq %rbx, %rdi
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rdi
	callq compiler_typesystem_types_TTypeVar
	movq %r12, %rsi
	movq %rax, %rdx
	movq %rbx, %rax
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
.Lbb423:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_bind_pattern, @function
.size compiler_typesystem_checker_bind_pattern, .-compiler_typesystem_checker_bind_pattern
/* end function compiler_typesystem_checker_bind_pattern */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq %rdi, %rcx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb426
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rbx
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
.Lbb426:
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_bind_pattern_list, @function
.size compiler_typesystem_checker_bind_pattern_list, .-compiler_typesystem_checker_bind_pattern_list
/* end function compiler_typesystem_checker_bind_pattern_list */

.text
.balign 16
.globl compiler_typesystem_checker_annotation_to_type
compiler_typesystem_checker_annotation_to_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %bl
	movzbq %bl, %rbx
	cmpl $0, %ebx
	jnz .Lbb429
	movl $0, %edx
	jmp .Lbb430
.Lbb429:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq str2190(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rbx, %rdx
	andq %rax, %rdx
.Lbb430:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb433
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb434
.Lbb433:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb434:
	cmpl $0, %eax
	jnz .Lbb497
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb438
	movq $0, (%rbx)
	movl $0, %edx
	jmp .Lbb439
.Lbb438:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2221(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
.Lbb439:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb442
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb443
.Lbb442:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb443:
	cmpl $0, %eax
	jnz .Lbb496
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb447
	movq $0, (%rbx)
	movl $0, %edx
	jmp .Lbb448
.Lbb447:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2252(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
.Lbb448:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb451
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb452
.Lbb451:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb452:
	cmpl $0, %eax
	jnz .Lbb495
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb456
	movq $0, (%rbx)
	movl $0, %edx
	jmp .Lbb457
.Lbb456:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2283(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
.Lbb457:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb460
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb461
.Lbb460:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb461:
	cmpl $0, %eax
	jnz .Lbb494
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb465
	movq $0, (%rbx)
	movl $0, %edx
	jmp .Lbb466
.Lbb465:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2314(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
.Lbb466:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb469
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb470
.Lbb469:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb470:
	cmpl $0, %eax
	jnz .Lbb493
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb474
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb475
.Lbb474:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2345(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r12, %rax
	movq %rax, (%rbx)
.Lbb475:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb478
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb483
.Lbb478:
	movq 16(%rdi), %rdx
	movq (%rdx), %rsi
	cmpq $1, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz .Lbb481
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb482
.Lbb481:
	movq 16(%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb482:
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb483:
	cmpl $0, %eax
	jnz .Lbb492
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb488
	cmpq $1, %rax
	jz .Lbb487
	movq %rdi, %rbx
	movq 8(%rdi), %rdi
	movq 16(%rbx), %rbx
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq donna_list_map
	movq %rbx, %rdi
	movq %rax, %rbx
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_types_TFnType
	jmp .Lbb498
.Lbb487:
	movq 8(%rdi), %rdi
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq donna_list_map
	movq %rax, %rdi
	callq compiler_typesystem_types_TTupleType
	jmp .Lbb498
.Lbb488:
	movq %rdi, %rbx
	movq 8(%rdi), %rdi
	movq 16(%rbx), %rbx
	callq compiler_typesystem_checker_unqualify
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_typesystem_checker_is_type_var
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb490
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq donna_list_map
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_types_TNamedType
	movq %rax, (%rbx)
	jmp .Lbb498
.Lbb490:
	movq %r12, %rdi
	movl $0, %esi
	callq donna_string_char_at
	movq %rax, %rdi
	callq compiler_typesystem_types_TTypeVar
	movq %rax, (%rbx)
	jmp .Lbb498
.Lbb492:
	movq 16(%rdi), %rax
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rdi
	callq compiler_typesystem_types_TListType
	jmp .Lbb498
.Lbb493:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	jmp .Lbb498
.Lbb494:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb498
.Lbb495:
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp .Lbb498
.Lbb496:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb498
.Lbb497:
	leaq compiler_typesystem_types_TInt(%rip), %rax
.Lbb498:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_annotation_to_type, @function
.size compiler_typesystem_checker_annotation_to_type, .-compiler_typesystem_checker_annotation_to_type
/* end function compiler_typesystem_checker_annotation_to_type */

.text
.balign 16
compiler_typesystem_checker_is_type_var:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %esi
	callq donna_string_char_at
	movq %rax, %rcx
	cmpq $97, %rcx
	setge %al
	movzbq %al, %rax
	cmpq $122, %rcx
	setle %cl
	movzbq %cl, %rcx
	andq %rcx, %rax
	leave
	ret
.type compiler_typesystem_checker_is_type_var, @function
.size compiler_typesystem_checker_is_type_var, .-compiler_typesystem_checker_is_type_var
/* end function compiler_typesystem_checker_is_type_var */

.text
.balign 16
compiler_typesystem_checker_unqualify:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rsi
	movq %rsi, %rbx
	leaq str2432(%rip), %rsi
	movq %rbx, %rdi
	callq donna_string_split
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_typesystem_checker_last_segment
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_unqualify, @function
.size compiler_typesystem_checker_unqualify, .-compiler_typesystem_checker_unqualify
/* end function compiler_typesystem_checker_unqualify */

.text
.balign 16
compiler_typesystem_checker_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz .Lbb511
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz .Lbb507
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb508
.Lbb507:
	movq 16(%rdi), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb508:
	cmpl $0, %ecx
	jnz .Lbb510
	movq 16(%rdi), %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_last_segment
	jmp .Lbb511
.Lbb510:
	movq 8(%rdi), %rax
.Lbb511:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type compiler_typesystem_checker_last_segment, @function
.size compiler_typesystem_checker_last_segment, .-compiler_typesystem_checker_last_segment
/* end function compiler_typesystem_checker_last_segment */

.text
.balign 16
compiler_typesystem_checker_collect_all_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %rax
	movq %rsi, %rcx
	movq %rdi, %rdx
	movq (%rdx), %rsi
	cmpq $0, %rsi
	jz .Lbb516
	movq 8(%rdx), %rdi
	movq 16(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb515
	movq 8(%rcx), %rsi
	movq 16(%rcx), %r13
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_all_bindings
	movq %rax, (%rbx)
	jmp .Lbb516
.Lbb515:
	movq %rax, (%rbx)
.Lbb516:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_collect_all_bindings, @function
.size compiler_typesystem_checker_collect_all_bindings, .-compiler_typesystem_checker_collect_all_bindings
/* end function compiler_typesystem_checker_collect_all_bindings */

.text
.balign 16
compiler_typesystem_checker_collect_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rax
	movq (%rdi), %rcx
	cmpq $9, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb539
	cmpq $5, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb535
	cmpq $6, %rcx
	jz .Lbb532
	cmpq $7, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb529
	cmpq $8, %rcx
	jnz .Lbb544
	movq %rdi, %rcx
	movq 8(%rdi), %rdi
	movq 16(%rcx), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%rsi), %rax
	cmpq $8, %rax
	jz .Lbb525
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp .Lbb544
.Lbb525:
	movq %rsi, %r14
	movq 8(%rsi), %rsi
	movq 16(%r14), %r14
	callq donna_string_equal
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rcx
	jz .Lbb527
	movq %rax, (%r12)
	jmp .Lbb528
.Lbb527:
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%r12)
.Lbb528:
	movq %rax, (%rbx)
	jmp .Lbb544
.Lbb529:
	movq %rdi, %rcx
	movq 8(%rdi), %rdi
	movq 16(%rcx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rcx
	cmpq $7, %rcx
	jz .Lbb531
	movq %rax, (%rbx)
	jmp .Lbb544
.Lbb531:
	movq %rsi, %r13
	movq 8(%rsi), %rsi
	movq 16(%r13), %r13
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings_list
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings
	movq %rax, (%rbx)
	jmp .Lbb544
.Lbb532:
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rcx
	cmpq $6, %rcx
	jz .Lbb534
	movq %rax, (%rbx)
	jmp .Lbb544
.Lbb534:
	movq 8(%rsi), %rsi
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%rbx)
	jmp .Lbb544
.Lbb535:
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%rsi), %rax
	cmpq $5, %rax
	jz .Lbb538
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp .Lbb544
.Lbb538:
	movq 8(%rsi), %rsi
	movq %r12, %rdx
	callq compiler_typesystem_checker_collect_bindings
	movq %rax, (%rbx)
	jmp .Lbb544
.Lbb539:
	movq %rax, %r12
	movq 8(%rdi), %r14
	movq %rsi, %r13
	movq %r14, %rsi
	movq %r12, %rdi
	callq compiler_typesystem_checker_lookup_int_binding
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rax
	cmpq $1, %rax
	jz .Lbb542
	movl $16, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq %r14, (%r13)
	movq %rsi, 8(%r13)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb544
.Lbb542:
	movq %r12, %rax
	movq %rax, (%rbx)
.Lbb544:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_collect_bindings, @function
.size compiler_typesystem_checker_collect_bindings, .-compiler_typesystem_checker_collect_bindings
/* end function compiler_typesystem_checker_collect_bindings */

.text
.balign 16
compiler_typesystem_checker_collect_bindings_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %rax
	movq %rsi, %rcx
	movq %rdi, %rdx
	movq (%rdx), %rsi
	cmpq $0, %rsi
	jz .Lbb549
	movq 8(%rdx), %rdi
	movq 16(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb548
	movq 8(%rcx), %rsi
	movq 16(%rcx), %r13
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%rbx)
	jmp .Lbb549
.Lbb548:
	movq %rax, (%rbx)
.Lbb549:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_collect_bindings_list, @function
.size compiler_typesystem_checker_collect_bindings_list, .-compiler_typesystem_checker_collect_bindings_list
/* end function compiler_typesystem_checker_collect_bindings_list */

.text
.balign 16
compiler_typesystem_checker_lookup_int_binding:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb555
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rcx
	movq 8(%rax), %rax
	cmpq %rcx, %rsi
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz .Lbb553
	callq compiler_typesystem_checker_lookup_int_binding
	movq %rax, (%rbx)
	jmp .Lbb556
.Lbb553:
	movq %rax, %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb556
.Lbb555:
	leaq donna_option_None(%rip), %rax
.Lbb556:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_lookup_int_binding, @function
.size compiler_typesystem_checker_lookup_int_binding, .-compiler_typesystem_checker_lookup_int_binding
/* end function compiler_typesystem_checker_lookup_int_binding */

.text
.balign 16
compiler_typesystem_checker_apply_subst:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rax
	movq %rsi, %rdi
	movq (%rax), %rcx
	cmpq $9, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb567
	cmpq $5, %rcx
	jz .Lbb566
	cmpq $6, %rcx
	jz .Lbb565
	cmpq $7, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb563
	cmpq $8, %rcx
	jnz .Lbb572
	movq 8(%rax), %rbx
	movq %rdi, %r12
	movq 16(%rax), %rdi
	movq %r12, %rsi
	callq compiler_typesystem_checker_apply_subst_list
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_types_TNamedType
	jmp .Lbb572
.Lbb563:
	movq %rdi, %r12
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	movq %r12, %rsi
	callq compiler_typesystem_checker_apply_subst_list
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %r12, %rsi
	callq compiler_typesystem_checker_apply_subst
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_types_TFnType
	jmp .Lbb572
.Lbb565:
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_apply_subst_list
	movq %rax, %rdi
	callq compiler_typesystem_types_TTupleType
	jmp .Lbb572
.Lbb566:
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %rdi
	callq compiler_typesystem_types_TListType
	jmp .Lbb572
.Lbb567:
	movq %rax, %rbx
	movq 8(%rbx), %rsi
	callq compiler_typesystem_checker_lookup_int_binding
	movq %rax, %rdx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rdx), %rsi
	cmpq $1, %rsi
	jz .Lbb570
	movq %rax, (%rcx)
	jmp .Lbb572
.Lbb570:
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
.Lbb572:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_apply_subst, @function
.size compiler_typesystem_checker_apply_subst, .-compiler_typesystem_checker_apply_subst
/* end function compiler_typesystem_checker_apply_subst */

.text
.balign 16
compiler_typesystem_checker_apply_subst_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb575
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rsi, %r12
	callq compiler_typesystem_checker_apply_subst_list
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb576
.Lbb575:
	leaq donna_nil(%rip), %rax
.Lbb576:
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_apply_subst_list, @function
.size compiler_typesystem_checker_apply_subst_list, .-compiler_typesystem_checker_apply_subst_list
/* end function compiler_typesystem_checker_apply_subst_list */

.text
.balign 16
compiler_typesystem_checker_check_binop_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rcx, %r12
	movq %rdx, %rax
	movq %rdi, %rcx
	movq %rsi, %rdi
	movq (%rcx), %rcx
	cmpq $5, %rcx
	jz .Lbb651
	cmpq $6, %rcx
	jz .Lbb644
	cmpq $7, %rcx
	jz .Lbb637
	cmpq $8, %rcx
	jz .Lbb630
	cmpq $15, %rcx
	jz .Lbb623
	cmpq $16, %rcx
	jz .Lbb616
	cmpq $17, %rcx
	jz .Lbb609
	cmpq $18, %rcx
	jz .Lbb602
	cmpq $19, %rcx
	jz .Lbb595
	cmpq $20, %rcx
	jz .Lbb588
	movl $1, %edi
	callq donna_result_Ok
	jmp .Lbb658
.Lbb588:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $3, %rcx
	jz .Lbb590
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2983(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb590:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $3, %rax
	jz .Lbb593
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2978(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb594
.Lbb593:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb594:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb595:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $3, %rcx
	jz .Lbb597
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2956(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb597:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $3, %rax
	jz .Lbb600
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2951(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb601
.Lbb600:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb601:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb602:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb604
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2929(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb604:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb607
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2924(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb608
.Lbb607:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb608:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb609:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb611
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2902(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb611:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb614
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2897(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb615
.Lbb614:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb615:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb616:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb618
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2875(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb618:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb621
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2870(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb622
.Lbb621:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb622:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb623:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb625
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2848(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb625:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb628
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2843(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb629
.Lbb628:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb629:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb630:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb632
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2821(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb632:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb635
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2816(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb636
.Lbb635:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb636:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb637:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb639
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2794(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb639:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb642
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2789(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb643
.Lbb642:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb643:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb644:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb646
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2767(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb646:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb649
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2762(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb650
.Lbb649:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb650:
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb651:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb653
	callq compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq str2740(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%rbx)
	jmp .Lbb658
.Lbb653:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb656
	callq compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq str2735(%rip), %rdi
	callq errors_error_TypeMismatch
	movq %rax, %rdi
	callq donna_result_Error
	movq %rax, (%r12)
	jmp .Lbb657
.Lbb656:
	movl $1, %edi
	callq donna_result_Ok
	movq %rax, (%r12)
.Lbb657:
	movq %rax, (%rbx)
.Lbb658:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_check_binop_types, @function
.size compiler_typesystem_checker_check_binop_types, .-compiler_typesystem_checker_check_binop_types
/* end function compiler_typesystem_checker_check_binop_types */

.text
.balign 16
compiler_typesystem_checker_binop_result_type:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb701
	cmpq $1, %rax
	jz .Lbb700
	cmpq $2, %rax
	jz .Lbb699
	cmpq $3, %rax
	jz .Lbb698
	cmpq $4, %rax
	jz .Lbb697
	cmpq $5, %rax
	jz .Lbb696
	cmpq $6, %rax
	jz .Lbb695
	cmpq $7, %rax
	jz .Lbb694
	cmpq $8, %rax
	jz .Lbb693
	cmpq $9, %rax
	jz .Lbb692
	cmpq $10, %rax
	jz .Lbb691
	cmpq $11, %rax
	jz .Lbb690
	cmpq $12, %rax
	jz .Lbb689
	cmpq $13, %rax
	jz .Lbb688
	cmpq $14, %rax
	jz .Lbb687
	cmpq $15, %rax
	jz .Lbb686
	cmpq $16, %rax
	jz .Lbb685
	cmpq $17, %rax
	jz .Lbb684
	cmpq $18, %rax
	jz .Lbb683
	cmpq $19, %rax
	jz .Lbb682
	cmpq $20, %rax
	jz .Lbb681
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp .Lbb702
.Lbb681:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb682:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb683:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb684:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb685:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb686:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb687:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb688:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb689:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb690:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb691:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb692:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb702
.Lbb693:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb702
.Lbb694:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb702
.Lbb695:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb702
.Lbb696:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb702
.Lbb697:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp .Lbb702
.Lbb698:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp .Lbb702
.Lbb699:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp .Lbb702
.Lbb700:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp .Lbb702
.Lbb701:
	leaq compiler_typesystem_types_TInt(%rip), %rax
.Lbb702:
	ret
.type compiler_typesystem_checker_binop_result_type, @function
.size compiler_typesystem_checker_binop_result_type, .-compiler_typesystem_checker_binop_result_type
/* end function compiler_typesystem_checker_binop_result_type */

.text
.balign 16
compiler_typesystem_checker_path_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rsi
	movq %rsi, %rbx
	leaq str3077(%rip), %rsi
	movq %rbx, %rdi
	callq donna_string_split
	movq %rax, %rdi
	callq donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	callq donna_list_head
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_path_last_segment, @function
.size compiler_typesystem_checker_path_last_segment, .-compiler_typesystem_checker_path_last_segment
/* end function compiler_typesystem_checker_path_last_segment */

.text
.balign 16
compiler_typesystem_checker_lookup_binding:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb710
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq 8(%rax), %r12
	movq %rsi, %r13
	callq donna_string_equal
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb708
	callq compiler_typesystem_checker_lookup_binding
	movq %rax, (%rbx)
	jmp .Lbb711
.Lbb708:
	movq %r12, %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb711
.Lbb710:
	leaq donna_option_None(%rip), %rax
.Lbb711:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_lookup_binding, @function
.size compiler_typesystem_checker_lookup_binding, .-compiler_typesystem_checker_lookup_binding
/* end function compiler_typesystem_checker_lookup_binding */

.text
.balign 16
compiler_typesystem_checker_pub_fns_to_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb717
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rcx), %rax
	movq %rax, %r14
	movq 16(%rcx), %rax
	movq 56(%rcx), %r15
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb715
	callq compiler_typesystem_checker_pub_fns_to_bindings
	movq %rax, (%r12)
	jmp .Lbb716
.Lbb715:
	callq compiler_typesystem_checker_pub_fns_to_bindings
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
.Lbb716:
	movq %rax, (%rbx)
	jmp .Lbb718
.Lbb717:
	leaq donna_nil(%rip), %rax
.Lbb718:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_pub_fns_to_bindings, @function
.size compiler_typesystem_checker_pub_fns_to_bindings, .-compiler_typesystem_checker_pub_fns_to_bindings
/* end function compiler_typesystem_checker_pub_fns_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_consts_to_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb724
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rcx), %rax
	movq %rax, %r14
	movq 16(%rcx), %rax
	movq 24(%rcx), %r15
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb722
	callq compiler_typesystem_checker_pub_consts_to_bindings
	movq %rax, (%r12)
	jmp .Lbb723
.Lbb722:
	callq compiler_typesystem_checker_pub_consts_to_bindings
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
.Lbb723:
	movq %rax, (%rbx)
	jmp .Lbb725
.Lbb724:
	leaq donna_nil(%rip), %rax
.Lbb725:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_pub_consts_to_bindings, @function
.size compiler_typesystem_checker_pub_consts_to_bindings, .-compiler_typesystem_checker_pub_consts_to_bindings
/* end function compiler_typesystem_checker_pub_consts_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_type_defs_to_ctor_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb732
	movq 8(%rdi), %rcx
	movq 16(%rdi), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rax
	movq 24(%rcx), %r14
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz .Lbb729
	leaq donna_nil(%rip), %rsi
	callq compiler_typesystem_types_TNamedType
	movq %r14, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_ctors_to_bindings
	movq %r13, %rdi
	movq %rax, %r13
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_list_append
	movq %rax, (%r12)
	jmp .Lbb731
.Lbb729:
	movq %r13, %rdi
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %rax, (%r12)
.Lbb731:
	movq %rax, (%rbx)
	jmp .Lbb733
.Lbb732:
	leaq donna_nil(%rip), %rax
.Lbb733:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_pub_type_defs_to_ctor_bindings, @function
.size compiler_typesystem_checker_pub_type_defs_to_ctor_bindings, .-compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_bindings */

.text
.balign 16
compiler_typesystem_checker_ctors_to_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb742
	movq 8(%rdi), %rax
	movq 16(%rdi), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rax), %r14
	movq 16(%rax), %rdi
	movq %rdi, %r13
	callq donna_list_is_empty
	movq %r15, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz .Lbb738
	movq %rsi, %r15
	callq compiler_typesystem_types_TFnType
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, (%r13)
	movq %r12, %r13
	jmp .Lbb741
.Lbb738:
	movq %r12, %rdi
	movq %r13, %r12
	movq %rsi, (%r12)
	movq %rsi, %r13
.Lbb741:
	callq compiler_typesystem_checker_ctors_to_bindings
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq %r14, (%r13)
	movq %rsi, 8(%r13)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb743
.Lbb742:
	leaq donna_nil(%rip), %rax
.Lbb743:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_ctors_to_bindings, @function
.size compiler_typesystem_checker_ctors_to_bindings, .-compiler_typesystem_checker_ctors_to_bindings
/* end function compiler_typesystem_checker_ctors_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_type_defs_to_ctor_info:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb750
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rax
	movq %rdi, %r13
	movq 24(%rcx), %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz .Lbb747
	callq compiler_typesystem_checker_ctors_to_info
	movq %r13, %rdi
	movq %rax, %r13
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_list_append
	movq %rax, (%r12)
	jmp .Lbb749
.Lbb747:
	movq %r13, %rdi
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %rax, (%r12)
.Lbb749:
	movq %rax, (%rbx)
	jmp .Lbb751
.Lbb750:
	leaq donna_nil(%rip), %rax
.Lbb751:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_pub_type_defs_to_ctor_info, @function
.size compiler_typesystem_checker_pub_type_defs_to_ctor_info, .-compiler_typesystem_checker_pub_type_defs_to_ctor_info
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_info */

.text
.balign 16
compiler_typesystem_checker_ctors_to_info:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb754
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -16(%rbp)
	movq 8(%rax), %r15
	movq 16(%rax), %rbx
	movq 24(%rax), %r13
	movq %rsi, %r14
	callq compiler_typesystem_checker_ctors_to_info
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %r14, %rsi
	movq %rax, %r14
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rsi, (%r14)
	movq %rax, 8(%r14)
	movq %r13, 16(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb755
.Lbb754:
	leaq donna_nil(%rip), %rax
.Lbb755:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_ctors_to_info, @function
.size compiler_typesystem_checker_ctors_to_info, .-compiler_typesystem_checker_ctors_to_info
/* end function compiler_typesystem_checker_ctors_to_info */

.section .note.GNU-stack,"",@progbits
