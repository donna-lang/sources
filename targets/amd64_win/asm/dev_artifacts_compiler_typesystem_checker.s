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
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_check_module_with_imports
	subq $-32, %rsp
	leave
	ret
/* end function compiler_typesystem_checker_check_module */

.text
.balign 16
.globl compiler_typesystem_checker_check_module_with_imports
compiler_typesystem_checker_check_module_with_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq 16(%rax), %r14
	movq 24(%rax), %rbx
	movq 32(%rax), %r12
	movq 40(%rax), %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	movq %rcx, %r13
	movq %r14, %rcx
	callq compiler_typesystem_checker_collect_declared_aliases
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_env_new_env
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_register_import_aliases
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_add_imports_to_env
	movq %r12, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %r13, %rcx
	callq compiler_typesystem_env_env_ctor_info
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_check_type_defs
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	movq (%rax), %r13
	movq %rdx, %rbx
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_check_constants
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r14
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb7
	movq 8(%rax), %rax
	movq (%rax), %rdx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_typesystem_checker_check_functions
	subq $-32, %rsp
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_list_is_empty
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb6
	movq %rdi, %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r13, %rcx
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %r13, %r9
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rdi
	movq %rax, 32(%rdi)
	callq compiler_typesystem_typed_ast_TypedModule
	movq %rax, %rcx
	subq $-48, %rsp
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb8
Lbb6:
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb8
Lbb7:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rsi, 8(%rcx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rcx)
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
Lbb8:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq 16(%rax), %rcx
	movq 24(%rax), %rdi
	movq 32(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_fns_to_bindings
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_consts_to_bindings
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %rbx, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_typed_ast_ModuleInterface
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_extract_interface */

.text
.balign 16
compiler_typesystem_checker_add_imports_to_env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb13
	movq %rax, %rdi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %r12
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r12, %rcx
	callq compiler_typesystem_checker_path_last_segment
	movq %r12, %r8
	movq %rbx, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r9
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_typesystem_env_env_add_module
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_iface_ctor_info
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_add_iface_ctors_to_env
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_add_imports_to_env
	subq $-32, %rsp
Lbb13:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_add_imports_to_env */

.text
.balign 16
compiler_typesystem_checker_add_iface_ctors_to_env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb16
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	movq (%rsi), %rdx
	movq 8(%rsi), %r8
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_typesystem_env_env_add_ctor
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_add_iface_ctors_to_env
	subq $-32, %rsp
Lbb16:
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_add_iface_ctors_to_env */

.text
.balign 16
compiler_typesystem_checker_register_import_aliases:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb19
	movq %rax, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rdi
	movq 8(%rax), %rcx
	movq 16(%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str137(%rip), %rdx
	callq donna_string_join
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	movq %rsi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_typesystem_env_env_register_alias
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_register_import_aliases
	subq $-32, %rsp
Lbb19:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_register_import_aliases */

.text
.balign 16
compiler_typesystem_checker_collect_declared_aliases:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb22
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	callq compiler_typesystem_checker_collect_declared_aliases
	subq $-32, %rsp
	jmp Lbb24
Lbb22:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb24:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb29
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %r13
	movq 8(%rax), %r12
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r13, %rcx
	callq compiler_typesystem_checker_path_last_segment
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq donna_list_contains_str
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb28
	subq $32, %rsp
	callq compiler_typesystem_checker_filter_imports_by_alias
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb30
Lbb28:
	subq $32, %rsp
	callq compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb30
Lbb29:
	leaq donna_nil(%rip), %rax
Lbb30:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_filter_imports_by_alias */

.text
.balign 16
compiler_typesystem_checker_iface_ctor_info:
	endbr64
	movq 16(%rcx), %rax
	ret
/* end function compiler_typesystem_checker_iface_ctor_info */

.text
.balign 16
compiler_typesystem_checker_iface_bindings:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function compiler_typesystem_checker_iface_bindings */

.text
.balign 16
compiler_typesystem_checker_check_type_defs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_check_type_defs_loop
	subq $-32, %rsp
	leave
	ret
/* end function compiler_typesystem_checker_check_type_defs */

.text
.balign 16
compiler_typesystem_checker_check_type_defs_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb39
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq compiler_typesystem_checker_check_type_def
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdi
	movq 8(%rax), %r12
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rdi, 8(%r8)
	movq %rsi, 16(%r8)
	subq $32, %rsp
	callq compiler_typesystem_checker_check_type_defs_loop
	subq $-32, %rsp
	jmp Lbb41
Lbb39:
	movq %rsi, %rcx
	movq %rdx, %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	subq $-32, %rsp
	movq %rsi, (%rax)
	movq %rdx, 8(%rax)
Lbb41:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %r8
	movq %rcx, %rax
	movq 8(%rax), %rsi
	movq 16(%rax), %rdx
	movq 32(%rax), %rcx
	movq 40(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_collect_param_vars
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %r13
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %r12
	movq %r13, %rcx
	callq donna_list_map
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %rsi, %rcx
	callq compiler_typesystem_types_TNamedType
	movq %r13, %r9
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rax
	leaq donna_nil(%rip), %r8
	movq %r8, 48(%rax)
	movq $0, 40(%rax)
	movq %rbx, 32(%rax)
	movq %rsi, %r8
	callq compiler_typesystem_checker_check_ctors
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-64, %rsp
	movq (%rax), %r8
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_typed_ast_TypedTypeDef
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb46
	movq 8(%rcx), %r13
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r8, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %rbx
	movq 8(%rax), %r12
	subq $32, %rsp
	movq %rcx, %rdi
	movl $16, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r13, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %r12, %r8
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	callq compiler_typesystem_checker_collect_param_vars
	subq $-32, %rsp
	jmp Lbb48
Lbb46:
	movq %r8, %rdi
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %r8
	subq $-32, %rsp
	movq %rsi, (%rax)
	movq %r8, 8(%rax)
Lbb48:
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_param_vars */

.text
.balign 16
compiler_typesystem_checker_pair_snd:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function compiler_typesystem_checker_pair_snd */

.text
.balign 16
compiler_typesystem_checker_check_ctors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 64(%rbp), %rdi
	movq %rdi, -24(%rbp)
	movq 56(%rbp), %rsi
	movq 48(%rbp), %rbx
	movq %r9, %r15
	movq %r8, %r12
	movq %rdx, %r13
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb58
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq %rdi, -48(%rbp)
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdi, -56(%rbp)
	movq 8(%rax), %rdx
	movq 24(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rdx
	callq donna_list_map
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	movq %r15, %rdx
	callq compiler_typesystem_checker_subst_list
	movq %r12, %r8
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r14
	movq %rsi, %r8
	movq %rdx, %r12
	movq %rdi, %rdx
	movq %r12, %rcx
	callq compiler_typesystem_typed_ast_TypedConstructor
	movq %rax, -40(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_list_is_empty
	movq %r12, %rdx
	movq %rax, %r8
	movq %rdi, %rax
	movq -24(%rbp), %rcx
	subq $-32, %rsp
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -16(%rbp)
	cmpq $1, %r8
	jz Lbb54
	subq $32, %rsp
	movq %rdx, %r12
	movq %r13, %rdx
	movq %rdi, %rcx
	callq compiler_typesystem_types_TFnType
	movq %r14, %r8
	movq %r12, %rdx
	movq %rax, %r12
	movq %rbx, %rax
	movq -16(%rbp), %rcx
	movq -24(%rbp), %rbx
	subq $-32, %rsp
	movq %r12, (%rcx)
	jmp Lbb57
Lbb54:
	xchgq %rcx, %rbx
	xchgq %rax, %rcx
	movq %r14, %r8
	movq %r13, (%rcx)
	movq %r13, %r12
Lbb57:
	subq $32, %rsp
	movq %r8, %r14
	movq %r12, %r8
	movq %rdx, %r12
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	movq %rax, -32(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rax, %r8
	movq %rdi, %rax
	movq -32(%rbp), %rcx
	movq -40(%rbp), %r12
	movq -48(%rbp), %rdi
	subq $-32, %rsp
	movq %r14, (%r8)
	movq %rax, 8(%r8)
	movq %rsi, 16(%r8)
	subq $32, %rsp
	callq compiler_typesystem_env_env_add_ctor
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rsi, %r10
	addq $1, %r10
	movq %r10, -64(%rbp)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %rsi, %rcx
	movq %rax, %r11
	movq -56(%rbp), %rsi
	movq -64(%rbp), %r10
	subq $-32, %rsp
	movq $1, (%r11)
	movq %r12, 8(%r11)
	movq %rbx, 16(%r11)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r11, 48(%rax)
	movq %r10, 40(%rax)
	movq %rdi, 32(%rax)
	callq compiler_typesystem_checker_check_ctors
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb60
Lbb58:
	movq %rdi, %rcx
	movq %rbx, %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
Lbb60:
	movq %rbp, %rsp
	subq $128, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_ctors */

.text
.balign 16
compiler_typesystem_checker_subst_type_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $8, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb63
	movl $0, %edx
	jmp Lbb64
Lbb63:
	movq 16(%rax), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq %rsi, %rdx
Lbb64:
	cmpl $0, %edx
	jnz Lbb76
	cmpq $8, %rcx
	jz Lbb74
	cmpq $5, %rcx
	jz Lbb72
	cmpq $6, %rcx
	jz Lbb70
	cmpq $7, %rcx
	jnz Lbb81
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_subst_list
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_subst_type_params
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TFnType
	subq $-32, %rsp
	jmp Lbb81
Lbb70:
	movq %rdi, %rcx
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_subst_list
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTupleType
	subq $-32, %rsp
	jmp Lbb81
Lbb72:
	movq %rdi, %rcx
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_subst_type_params
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TListType
	subq $-32, %rsp
	jmp Lbb81
Lbb74:
	movq %rdi, %rcx
	movq 8(%rax), %rsi
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_subst_list
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TNamedType
	subq $-32, %rsp
	jmp Lbb81
Lbb76:
	movq %rdi, %rcx
	movq %rax, %rsi
	movq 8(%rsi), %rdx
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_type_var
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rdx), %rsi
	cmpq $0, %rsi
	jz Lbb80
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	jmp Lbb81
Lbb80:
	movq %rax, (%rcx)
Lbb81:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_subst_type_params */

.text
.balign 16
compiler_typesystem_checker_subst_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb84
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	callq compiler_typesystem_checker_subst_list
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_subst_type_params
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb85
Lbb84:
	leaq donna_nil(%rip), %rax
Lbb85:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_subst_list */

.text
.balign 16
compiler_typesystem_checker_lookup_type_var:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb91
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_string_equal
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb89
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_type_var
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb92
Lbb89:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb92
Lbb91:
	leaq donna_option_None(%rip), %rax
Lbb92:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb97
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_checker_check_constant
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb96
	movq 8(%rax), %rax
	movq (%rax), %rbx
	movq 8(%rax), %r13
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $32, %rsp
	callq compiler_typesystem_checker_check_constants
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb99
Lbb96:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb99
Lbb97:
	movq %rdi, %rcx
	movq %rdx, %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rdx, (%rcx)
	movq %rsi, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb99:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_constants */

.text
.balign 16
compiler_typesystem_checker_check_constant:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rdx
	movq 24(%rcx), %r14
	movq 32(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rdi, %rdx
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb106
	movq 8(%rax), %rax
	movq (%rax), %r12
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r14), %rax
	cmpq $0, %rax
	jz Lbb104
	movq %rcx, %rbx
	movq 8(%r14), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq %r8, (%rdi)
	movq %r13, %rdx
	jmp Lbb105
Lbb104:
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r12, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq %r8, (%rdi)
Lbb105:
	subq $32, %rsp
	movq %r8, %rbx
	movq %rdx, %rdi
	movq %rsi, %rdx
	callq compiler_typesystem_env_env_bind
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_typed_ast_TypedConstant
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rdi, (%rcx)
	movq %rsi, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	jmp Lbb107
Lbb106:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
Lbb107:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_constant */

.text
.balign 16
compiler_typesystem_checker_check_functions:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq compiler_typesystem_checker_register_fn_sigs
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq compiler_typesystem_checker_infer_return_types
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r9
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_check_function_bodies
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_check_functions */

.text
.balign 16
compiler_typesystem_checker_infer_return_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rax
	movq %rcx, %rdx
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb112
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rsi
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_infer_return_type_one
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_return_types
	subq $-32, %rsp
Lbb112:
	popq %rsi
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq %rcx, %rsi
	movq (%rsi), %rcx
	cmpq $1, %rcx
	jz Lbb122
	movq 8(%rsi), %rdx
	movq 24(%rsi), %rcx
	movq %rax, %rbx
	movq 32(%rsi), %rax
	movq 40(%rsi), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rax
	cmpq $1, %rax
	jz Lbb120
	subq $32, %rsp
	movq %rdx, %r12
	movq %rbx, %rdx
	callq compiler_typesystem_checker_build_param_pairs
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %rbx, %rdx
	movq %rcx, %r13
	movq %rdi, %rcx
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdx, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb117
	movq 8(%rax), %rax
	movq %rcx, %r13
	movq (%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	callq donna_list_map
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TFnType
	movq %r12, %rdx
	movq %rax, %r8
	movq %rbx, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb119
Lbb117:
	movq %rbx, %rax
	movq %rax, (%rdi)
Lbb119:
	movq %rax, (%rsi)
	jmp Lbb122
Lbb120:
	movq %rbx, %rax
	movq %rax, (%rsi)
Lbb122:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_infer_return_type_one */

.text
.balign 16
compiler_typesystem_checker_register_fn_sigs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb125
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	callq compiler_typesystem_checker_fn_name
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_function_sig_type
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	movq %rsi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_register_fn_sigs
	subq $-32, %rsp
	jmp Lbb126
Lbb125:
	movq %rsi, %rax
Lbb126:
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_register_fn_sigs */

.text
.balign 16
compiler_typesystem_checker_fn_name:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb129
	movq 8(%rcx), %rax
	jmp Lbb130
Lbb129:
	movq 8(%rcx), %rax
Lbb130:
	ret
/* end function compiler_typesystem_checker_fn_name */

.text
.balign 16
compiler_typesystem_checker_function_sig_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq compiler_typesystem_checker_fn_params
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_params_to_types
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_fn_return_type
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb133
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	jmp Lbb135
Lbb133:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %rdx
Lbb135:
	subq $32, %rsp
	callq compiler_typesystem_types_TFnType
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_function_sig_type */

.text
.balign 16
compiler_typesystem_checker_fn_params:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb139
	movq 24(%rcx), %rax
	jmp Lbb140
Lbb139:
	movq 24(%rcx), %rax
Lbb140:
	ret
/* end function compiler_typesystem_checker_fn_params */

.text
.balign 16
compiler_typesystem_checker_fn_return_type:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb143
	movq 32(%rcx), %rax
	jmp Lbb144
Lbb143:
	movq 32(%rcx), %rax
Lbb144:
	ret
/* end function compiler_typesystem_checker_fn_return_type */

.text
.balign 16
compiler_typesystem_checker_params_to_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb150
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb148
	movq %rcx, %rbx
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%rdi)
	jmp Lbb149
Lbb148:
	subq $32, %rsp
	movq %rcx, %rbx
	movl $0, %ecx
	callq compiler_typesystem_types_TTypeVar
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%rdi)
Lbb149:
	subq $32, %rsp
	callq compiler_typesystem_checker_params_to_types
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb151
Lbb150:
	leaq donna_nil(%rip), %rax
Lbb151:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_params_to_types */

.text
.balign 16
compiler_typesystem_checker_check_function_bodies:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %rcx, %rax
	movq %r8, %rcx
	movq (%rax), %rsi
	cmpq $0, %rsi
	jz Lbb159
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	callq compiler_typesystem_checker_check_function
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq (%rdx), %rax
	movq 8(%rdx), %rsi
	movq 16(%rdx), %rdx
	subq $16, %rsp
	movq %rsp, %r13
	movq %rdx, %rbx
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb156
	movq 8(%rax), %r15
	subq $32, %rsp
	movq %rcx, %r14
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r15, 8(%rcx)
	movq %r14, 16(%rcx)
	movq %rcx, (%r13)
	xchgq %rsi, %rcx
	jmp Lbb158
Lbb156:
	movq %rcx, (%r13)
	xchgq %rsi, %rcx
Lbb158:
	subq $32, %rsp
	callq donna_list_reverse
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r12, %rdx
	callq donna_list_append
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %r8
	callq compiler_typesystem_checker_check_function_bodies
	subq $-32, %rsp
	jmp Lbb161
Lbb159:
	movq %r12, %rsi
	movq %rdx, %rbx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	subq $-32, %rsp
	movq %rdx, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb161:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_function_bodies */

.text
.balign 16
compiler_typesystem_checker_check_function:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb180
	movq 8(%rax), %rsi
	movq 16(%rax), %rdx
	movq %rcx, %r12
	movq 24(%rax), %rcx
	movq 32(%rax), %rbx
	movq 40(%rax), %rdi
	movq 48(%rax), %rax
	movq %rax, -8(%rbp)
	subq $32, %rsp
	movq %rdx, %r14
	movq %r12, %rdx
	callq compiler_typesystem_checker_build_param_pairs
	movq %r12, %rcx
	movq %rax, %r15
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb166
	movq %rcx, %r12
	movq 8(%rbx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %r14, %rdx
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%r13)
	movq %r12, %r13
	jmp Lbb169
Lbb166:
	movq %r13, %r12
	movq %r14, %rdx
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%r12)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %r13
Lbb169:
	subq $32, %rsp
	movq %rdx, %r14
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %r12
	movq %r15, %rcx
	callq donna_list_map
	movq %r14, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movq %r13, %rdx
	callq compiler_typesystem_types_TFnType
	movq %r15, %r8
	movq %r14, %rdx
	movq %r12, %rcx
	movq %rax, %r9
	movq %r9, -24(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r14
	movq %r9, %r8
	movq %rdx, %r12
	movq %rsi, %rdx
	callq compiler_typesystem_env_env_bind
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %rdi, %rdx
	movq %rcx, %r15
	movq %r14, %rcx
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %r14, %r8
	movq %r12, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -16(%rbp)
	movq %r8, %r12
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r15
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb179
	movq 8(%rax), %rax
	movq (%rax), %r14
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r14, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rdx
	movq %rsi, %rcx
	movq %rax, %r15
	movq -16(%rbp), %rsi
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -32(%rbp)
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb176
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r13, %rdx
	movq %rcx, %rsi
	movq %r15, %rcx
	callq compiler_typesystem_types_types_equal
	movq %r15, %r9
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rsi, %rcx
	movq %rax, %r10
	movq %rdi, %r12
	movq -32(%rbp), %rdi
	movq -16(%rbp), %rsi
	movq %r9, %r15
	movq -24(%rbp), %r9
	movq -8(%rbp), %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %r10
	jz Lbb173
	subq $64, %rsp
	movq %rsp, %rax
	movq %r9, 48(%rax)
	leaq donna_option_None(%rip), %r9
	movq %r9, 40(%rax)
	movq %r14, 32(%rax)
	movq %r13, %r9
	movq %r8, %r14
	callq compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rcx
	subq $-64, %rsp
	subq $32, %rsp
	callq donna_option_Some
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq %r13, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb175
Lbb173:
	movq %r13, %rcx
	movq %rax, %r14
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movq %r15, %rcx
	callq compiler_typesystem_types_type_to_string
	movq %r14, %r8
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq errors_error_TypeInvalidReturn
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $1, (%r13)
	movq %r14, 8(%r13)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	leaq donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
Lbb175:
	movq %rax, (%rdi)
	jmp Lbb178
Lbb176:
	xchgq %r14, %r12
	subq $32, %rsp
	movq %rdx, %r13
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %rbx
	movq %r14, %rcx
	callq donna_list_map
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %r15, %rdx
	callq compiler_typesystem_types_TFnType
	movq %r14, %r8
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %r13
	movq %rdi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r14
	movq %r13, %r8
	movq %rdx, %rbx
	movq %rcx, %rdx
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	movq %r15, %r9
	movq %r14, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rbx
	movq -32(%rbp), %rdi
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rax
	movq %r13, 48(%rax)
	leaq donna_option_None(%rip), %r10
	movq %r10, 40(%rax)
	movq %r12, 32(%rax)
	callq compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rcx
	subq $-64, %rsp
	subq $32, %rsp
	callq donna_option_Some
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq %r12, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
Lbb178:
	movq %rax, (%rsi)
	jmp Lbb187
Lbb179:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r12, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	leaq donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb187
Lbb180:
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	movq %rcx, %r12
	movq 24(%rax), %rcx
	movq 32(%rax), %rbx
	movq 40(%rax), %rdx
	movq 48(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %r14
	movq %r12, %rdx
	callq compiler_typesystem_checker_build_param_pairs
	movq %r14, %rdx
	movq %r12, %rcx
	movq %rax, %r14
	movq %rbx, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r15
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb183
	movq %rcx, %r12
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %r15, %rdx
	movq %r12, %rcx
	movq %rax, %r9
	movq %rsi, %rax
	subq $-32, %rsp
	movq %r9, (%rbx)
	movq %rax, %rsi
	movq %r9, %r15
	jmp Lbb186
Lbb183:
	movq %rsi, %rax
	movq %r15, %rdx
	leaq compiler_typesystem_types_TNil(%rip), %rsi
	movq %rsi, (%rbx)
	movq %rax, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %r15
Lbb186:
	subq $32, %rsp
	movq %rdx, %r12
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %rbx
	movq %r14, %rcx
	callq donna_list_map
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %r15, %rdx
	callq compiler_typesystem_types_TFnType
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r14
	movq %rbx, %r8
	movq %rdx, %r12
	movq %rdi, %rdx
	callq compiler_typesystem_env_env_bind
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, -48(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq compiler_typesystem_types_TNil(%rip), %rdx
	movq %rcx, %r12
	leaq str855(%rip), %rcx
	callq compiler_typesystem_types_TEIntLit
	movq %r12, %rcx
	movq %rax, -40(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rcx
	movq %rsi, %rax
	movq -40(%rbp), %rdi
	movq -48(%rbp), %rsi
	subq $-32, %rsp
	movq %rdx, (%rcx)
	movq %rax, 8(%rcx)
	subq $32, %rsp
	callq donna_option_Some
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r10
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rax
	movq %rbx, 48(%rax)
	movq %r10, 40(%rax)
	movq %rdi, 32(%rax)
	callq compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rcx
	subq $-64, %rsp
	subq $32, %rsp
	callq donna_option_Some
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rsi, 16(%rax)
Lbb187:
	movq %rbp, %rsp
	subq $112, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb195
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rax), %r13
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r12
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb192
	movq %rcx, %rdi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rdi, (%rbx)
	movq %r12, %rdx
	movq %rdi, %r12
	jmp Lbb194
Lbb192:
	movq %rbx, %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r12, %rcx
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTypeVar
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rdi)
Lbb194:
	subq $32, %rsp
	callq compiler_typesystem_checker_build_param_pairs
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb196
Lbb195:
	leaq donna_nil(%rip), %rax
Lbb196:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_build_param_pairs */

.text
.balign 16
compiler_typesystem_checker_bind_param_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb199
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	movq (%rsi), %rdx
	movq 8(%rsi), %r8
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_bind_param_pairs
	subq $-32, %rsp
Lbb199:
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_bind_param_pairs */

.text
.balign 16
.globl compiler_typesystem_checker_infer_expr
compiler_typesystem_checker_infer_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb330
	cmpq $1, %rax
	jz Lbb329
	cmpq $2, %rax
	jz Lbb328
	cmpq $3, %rax
	jz Lbb327
	cmpq $4, %rax
	jz Lbb321
	cmpq $5, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb300
	cmpq $9, %rax
	jz Lbb289
	cmpq $10, %rax
	jz Lbb280
	cmpq $11, %rax
	jz Lbb273
	cmpq $14, %rax
	jz Lbb267
	cmpq $12, %rax
	jz Lbb261
	cmpq $6, %rax
	jz Lbb258
	cmpq $7, %rax
	jz Lbb246
	cmpq $8, %rax
	jz Lbb231
	cmpq $13, %rax
	jz Lbb228
	cmpq $16, %rax
	jz Lbb225
	cmpq $15, %rax
	jz Lbb222
	cmpq $17, %rax
	jz Lbb219
	subq $32, %rsp
	movq %rdx, %rcx
	callq compiler_typesystem_env_fresh_var
	subq $-32, %rsp
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_types_TETodo
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rdi, (%rcx)
	movq %rsi, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	jmp Lbb331
Lbb219:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb221
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %rcx, %rdi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_env_fresh_var
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_typesystem_types_TEPanic
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %rdi, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb221:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb222:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %rdi
	callq compiler_typesystem_checker_build_param_pairs
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq compiler_typesystem_checker_bind_param_pairs
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rdx, %rbx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb224
	movq 8(%rax), %rax
	movq (%rax), %r12
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r12, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %rdi
	callq donna_list_map
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TFnType
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TELambda
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rdi, (%rcx)
	movq %rdx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb224:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb225:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb227
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq compiler_typesystem_types_TNil(%rip), %rdx
	callq compiler_typesystem_types_TEEcho
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %rdi, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb227:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb228:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_typesystem_types_TNil(%rip), %r9
	leaq donna_nil(%rip), %r8
	movq %rdx, %rsi
	callq compiler_typesystem_checker_check_stmts
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb230
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %rdx, %rbx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_typesystem_types_TEBlock
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rdi, (%rcx)
	movq %rdx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb230:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb231:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_infer_exprs
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb245
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb243
	movq 8(%rax), %rax
	movq (%rax), %rdx
	movq 8(%rax), %rbx
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rcx), %rax
	cmpq $1, %rax
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %edx
	jnz Lbb236
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb238
Lbb236:
	movq $1, (%rax)
	movl $1, %eax
Lbb238:
	cmpl $0, %eax
	jnz Lbb241
	subq $32, %rsp
	movq %rcx, %r12
	movq %r13, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rcx
	subq $-32, %rsp
	movq %rax, (%r14)
	movq %rcx, %r12
	movq %rax, %rcx
	jmp Lbb242
Lbb241:
	movq %rcx, %r12
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%r14)
Lbb242:
	subq $32, %rsp
	callq compiler_typesystem_types_TListType
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TEListSpread
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r12, (%rcx)
	movq %rbx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb244
Lbb243:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb244:
	movq %rax, (%rsi)
	jmp Lbb331
Lbb245:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb246:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_infer_exprs
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb257
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %edx
	jnz Lbb250
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb252
Lbb250:
	movq $1, (%rax)
	movl $1, %eax
Lbb252:
	cmpl $0, %eax
	jnz Lbb255
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %rbx, %rcx
	subq $-32, %rsp
	movq (%rax), %rax
	movq %rax, (%r12)
	movq %rcx, %rbx
	movq %rax, %rcx
	jmp Lbb256
Lbb255:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%r12)
Lbb256:
	subq $32, %rsp
	callq compiler_typesystem_types_TListType
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TEList
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %rdi, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb257:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb258:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_infer_exprs
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb260
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rdx
	movq %rcx, %rbx
	callq donna_list_map
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTupleType
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TETuple
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %rdi, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb260:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb261:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %rdi
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb266
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rbx, %rdx
	callq compiler_typesystem_checker_infer_clauses
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb264
	movq 8(%rax), %rax
	movq (%rax), %rdx
	movq 8(%rax), %r8
	subq $32, %rsp
	callq compiler_typesystem_types_TECase
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r12, (%rcx)
	movq %rbx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb265
Lbb264:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb265:
	movq %rax, (%rsi)
	jmp Lbb331
Lbb266:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb267:
	movq %rdx, %rdi
	movq 8(%rcx), %r12
	movq 16(%rcx), %r13
	movq 24(%rcx), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r13), %rax
	cmpq $9, %rax
	jz Lbb271
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdx)
	subq $32, %rsp
	movq %r13, %rcx
	callq compiler_parser_ast_Call
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%rsi)
	movq %rdi, %rdx
	jmp Lbb272
Lbb271:
	movq 8(%r13), %rcx
	movq 16(%r13), %rbx
	movq 24(%r13), %r14
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $32, %rsp
	callq compiler_parser_ast_Call
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%rsi)
Lbb272:
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	subq $-32, %rsp
	jmp Lbb331
Lbb273:
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb279
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb277
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, (%rbx)
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %r13, %rdx
	movq %rax, %r8
	jmp Lbb278
Lbb277:
	subq $32, %rsp
	movq %rcx, %r12
	movq %r13, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq %r8, (%rbx)
Lbb278:
	subq $32, %rsp
	callq compiler_typesystem_types_TEUnaryOp
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %rdi, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb279:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb280:
	movq 8(%rcx), %rdi
	movq %rcx, %rax
	movq 16(%rcx), %rcx
	movq 24(%rax), %rsi
	movq 32(%rax), %r13
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb288
	movq 8(%rax), %rax
	movq (%rax), %rdx
	movq %rdx, %rbx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r14
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb286
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r12
	movq %r12, -16(%rbp)
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r14, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r15, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %r9
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	movq -16(%rbp), %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	movq %rcx, %rbx
	callq compiler_typesystem_checker_check_binop_types
	movq %r15, %r8
	movq %r13, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq %r8, %r15
	movq (%rax), %r8
	cmpq $1, %r8
	jz Lbb284
	subq $32, %rsp
	movq %rcx, %r13
	callq compiler_typesystem_checker_binop_result_type
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TEBinOp
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r13, (%rcx)
	movq %r12, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb285
Lbb284:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb285:
	movq %rax, (%rdi)
	jmp Lbb287
Lbb286:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb287:
	movq %rax, (%rsi)
	jmp Lbb331
Lbb288:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb289:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb299
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_infer_exprs
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb297
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %rbx
	subq $32, %rsp
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rdx
	movq %rcx, %r12
	movq %r14, %rcx
	callq donna_list_map
	movq %r12, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %r8
	cmpq $7, %r8
	jz Lbb294
	subq $32, %rsp
	movq %rcx, %r13
	movq %rbx, %rcx
	callq compiler_typesystem_env_fresh_var
	subq $-32, %rsp
	movq (%rax), %r8
	movq %r8, (%r12)
	movq %r14, %rdx
	movq %r13, %rcx
	jmp Lbb296
Lbb294:
	movq %rcx, %r13
	movq 8(%rax), %rcx
	movq 16(%rax), %r15
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_collect_all_bindings
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_apply_subst
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq %r8, (%r12)
Lbb296:
	subq $32, %rsp
	callq compiler_typesystem_types_TECall
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r12, (%rcx)
	movq %rbx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb298
Lbb297:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb298:
	movq %rax, (%rsi)
	jmp Lbb331
Lbb299:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb300:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %r12
	movq 24(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb320
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $4, %rax
	jz Lbb303
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	movq (%rax), %r9
	movq 8(%rax), %rbx
	subq $32, %rsp
	leaq str1182(%rip), %r8
	movq %rcx, %r14
	callq compiler_typesystem_types_TEFieldAccess
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r12, (%rcx)
	movq %rbx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb319
Lbb303:
	movq %rcx, %r14
	xchgq %r13, %r12
	xchgq %rdx, %r13
	movq 8(%r14), %rcx
	subq $32, %rsp
	movq %rdx, %r15
	movq %rcx, %rdx
	movq %rcx, %rbx
	movq %r12, %rcx
	callq compiler_typesystem_env_env_lookup_module
	movq %r15, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r8
	cmpq $0, %r8
	jz Lbb316
	movq 8(%rax), %r8
	movq %r8, -24(%rbp)
	subq $32, %rsp
	movq %rdx, %r15
	movq %rcx, %rdx
	movq %rcx, %r13
	movq %r12, %rcx
	callq compiler_typesystem_env_env_lookup_alias
	movq %r13, %rcx
	movq %rax, %rdx
	movq -24(%rbp), %r8
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %r9
	cmpq $1, %r9
	jz Lbb309
	movq %rax, %rdx
	movq %r8, %rax
	movq %rcx, (%rdx)
	movq %rcx, %r13
	movq %rax, %rcx
	jmp Lbb311
Lbb309:
	movq %r8, %rcx
	movq 8(%rdx), %r13
	movq %r13, (%rax)
Lbb311:
	movq %r13, -32(%rbp)
	subq $32, %rsp
	callq compiler_typesystem_checker_iface_bindings
	movq %r15, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	callq compiler_typesystem_checker_lookup_binding
	movq %r15, %rdx
	movq %r14, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r14
	movq %rdx, %r15
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb313
	subq $32, %rsp
	movq %rcx, %r13
	movq %r12, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %r15, %rdx
	movq %r13, %rcx
	movq -32(%rbp), %r13
	subq $-32, %rsp
	movq (%rax), %r9
	movq %r9, (%r14)
	jmp Lbb315
Lbb313:
	movq %r15, %rdx
	movq 8(%rax), %r9
	movq %r9, (%r14)
Lbb315:
	subq $32, %rsp
	movq %r13, %r8
	callq compiler_typesystem_types_TEFieldAccess
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r13, (%rcx)
	movq %r12, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb318
Lbb316:
	movq %r13, %rdx
	subq $32, %rsp
	callq errors_error_TypeUndefinedModule
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb318:
	movq %rax, (%rdi)
Lbb319:
	movq %rax, (%rsi)
	jmp Lbb331
Lbb320:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb331
Lbb321:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rdx
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq compiler_typesystem_env_env_lookup
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb324
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %rax
	movq %rax, (%rsi)
	movq %rdx, %rdi
	movq %rax, %rdx
	jmp Lbb326
Lbb324:
	movq %rbx, %rdx
	movq %rdx, %rdi
	movq 8(%rax), %rdx
	movq %rdx, (%rsi)
Lbb326:
	subq $32, %rsp
	callq compiler_typesystem_types_TEVar
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rsi, (%rcx)
	movq %rdx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	jmp Lbb331
Lbb327:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq compiler_typesystem_types_TBool(%rip), %rdx
	callq compiler_typesystem_types_TEBoolLit
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rsi, (%rcx)
	movq %rdx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	jmp Lbb331
Lbb328:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq compiler_typesystem_types_TString(%rip), %rdx
	callq compiler_typesystem_types_TEStringLit
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rsi, (%rcx)
	movq %rdx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	jmp Lbb331
Lbb329:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq compiler_typesystem_types_TFloat(%rip), %rdx
	callq compiler_typesystem_types_TEFloatLit
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rsi, (%rcx)
	movq %rdx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	jmp Lbb331
Lbb330:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq compiler_typesystem_types_TInt(%rip), %rdx
	callq compiler_typesystem_types_TEIntLit
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rsi, (%rcx)
	movq %rdx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb331:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb336
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb335
	movq 8(%rax), %rax
	movq (%rax), %rbx
	movq 8(%rax), %r13
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_exprs
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb338
Lbb335:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb338
Lbb336:
	movq %rdi, %rcx
	movq %rdx, %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rsi, (%rcx)
	movq %rdx, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb338:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_infer_exprs */

.text
.balign 16
compiler_typesystem_checker_infer_clauses:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb341
	subq $32, %rsp
	leaq compiler_typesystem_types_TNil(%rip), %r9
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_infer_clauses_loop
	subq $-32, %rsp
	jmp Lbb342
Lbb341:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	leaq donna_nil(%rip), %rax
	movq %rax, (%rcx)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb342:
	leave
	ret
/* end function compiler_typesystem_checker_infer_clauses */

.text
.balign 16
compiler_typesystem_checker_infer_clauses_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %r9, %rdi
	movq %r8, %r12
	movq %rdx, %r14
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb353
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -16(%rbp)
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	movq 24(%rax), %rdi
	subq $32, %rsp
	movq %r14, %rdx
	movq %rcx, %r15
	movq %rbx, %rcx
	callq compiler_typesystem_checker_bind_pattern
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r15
	callq compiler_typesystem_checker_infer_guard
	movq %r15, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb350
	movq 8(%rax), %rax
	movq %rax, -8(%rbp)
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %r14, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r14
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb347
	movq 8(%rax), %rax
	movq (%rax), %r15
	subq $32, %rsp
	movq %rcx, %r13
	movq %r15, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r9
	movq %rdx, %r14
	movq -8(%rbp), %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r9, %r15
	callq compiler_typesystem_types_TypedClause
	movq %rsi, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %r15, %r9
	movq %r14, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	movq -16(%rbp), %rsi
	subq $-32, %rsp
	movq $1, (%r8)
	movq %r13, 8(%r8)
	movq %r12, 16(%r8)
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_clauses_loop
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb349
Lbb347:
	movq %r13, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb349:
	movq %rax, (%rdi)
	jmp Lbb352
Lbb350:
	movq %r13, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb352:
	movq %rax, (%rsi)
	jmp Lbb355
Lbb353:
	movq %r12, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %r9
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rsi, (%rcx)
	movq %r9, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb355:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_infer_clauses_loop */

.text
.balign 16
compiler_typesystem_checker_infer_guard:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb360
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb359
	movq 8(%rax), %rax
	movq (%rax), %rcx
	subq $32, %rsp
	callq donna_option_Some
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb361
Lbb359:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb361
Lbb360:
	subq $32, %rsp
	leaq donna_option_None(%rip), %rcx
	callq donna_result_Ok
	subq $-32, %rsp
Lbb361:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_infer_guard */

.text
.balign 16
compiler_typesystem_checker_check_stmts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb366
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_checker_check_stmt
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb365
	movq 8(%rax), %rax
	movq (%rax), %rbx
	movq 8(%rax), %r14
	movq 16(%rax), %r13
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r14, %r9
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $32, %rsp
	callq compiler_typesystem_checker_check_stmts
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb368
Lbb365:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb368
Lbb366:
	movq %rdi, %rcx
	movq %r9, %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %r9
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rsi, (%rcx)
	movq %r9, 8(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
Lbb368:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_stmts */

.text
.balign 16
compiler_typesystem_checker_check_stmt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb378
	cmpq $1, %rax
	jz Lbb374
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb373
	movq 8(%rax), %rax
	movq (%rax), %rbx
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq compiler_typesystem_types_TStmtExpr
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r12, (%rcx)
	movq %rbx, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb385
Lbb373:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb385
Lbb374:
	movq %rsi, %rdi
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb377
	movq 8(%rax), %rax
	movq (%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rbx
	movq %rdi, %rdx
	movq %rcx, %rdi
	callq compiler_typesystem_checker_bind_pattern
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TStmtLetPat
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb385
Lbb377:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb385
Lbb378:
	movq 8(%rcx), %rdi
	movq 16(%rcx), %r14
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb384
	movq 8(%rax), %rax
	movq (%rax), %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r14), %rax
	cmpq $0, %rax
	jz Lbb382
	movq %rcx, %rbx
	movq 8(%r14), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%r12)
	movq %r13, %r8
	jmp Lbb383
Lbb382:
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %r8
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%r12)
Lbb383:
	subq $32, %rsp
	movq %r8, %r12
	movq %rbx, %r8
	movq %rdi, %rdx
	callq compiler_typesystem_env_env_bind
	movq %r12, %r8
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %rdx
	callq compiler_typesystem_types_TStmtLet
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq %r12, (%rcx)
	movq %rbx, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb385
Lbb384:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb385:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq %rax, %rsi
	movq (%rcx), %rax
	cmpq $2, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb414
	cmpq $0, %rax
	jz Lbb413
	cmpq $1, %rax
	jz Lbb412
	cmpq $3, %rax
	jz Lbb411
	cmpq $4, %rax
	jz Lbb410
	cmpq $5, %rax
	jz Lbb409
	cmpq $6, %rax
	jz Lbb408
	cmpq $7, %rax
	jz Lbb407
	cmpq $8, %rax
	jz Lbb396
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	jmp Lbb415
Lbb396:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb405
	cmpq $1, %rax
	setz %r13b
	movzbq %r13b, %r13
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r13d
	jnz Lbb400
	movq $0, (%r12)
	movl $0, %eax
	jmp Lbb401
Lbb400:
	movq 8(%rbx), %rcx
	subq $32, %rsp
	leaq str2141(%rip), %rdx
	callq strcmp
	movq %rax, %rcx
	movq %rdi, %rax
	subq $-32, %rsp
	cmpq $0, %rcx
	movq %rax, %rdi
	setz %al
	movzbq %al, %rax
	andq %r13, %rax
	movq %rax, (%r12)
Lbb401:
	cmpl $0, %eax
	jnz Lbb403
	movq 8(%rbx), %rbx
	subq $32, %rsp
	movq %rdi, %rcx
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTypeVar
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TListType
	movq %rbx, %rdx
	movq %rax, %r8
	movq %rdi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb415
Lbb403:
	movq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb415
Lbb405:
	movq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb415
Lbb407:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	jmp Lbb415
Lbb408:
	movq %rsi, %rax
	jmp Lbb415
Lbb409:
	movq %rsi, %rax
	jmp Lbb415
Lbb410:
	movq %rsi, %rax
	jmp Lbb415
Lbb411:
	movq %rsi, %rax
	jmp Lbb415
Lbb412:
	movq %rsi, %rax
	jmp Lbb415
Lbb413:
	movq %rsi, %rax
	jmp Lbb415
Lbb414:
	movq 8(%rcx), %rdi
	subq $32, %rsp
	movq %rsi, %rcx
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTypeVar
	movq %rdi, %rdx
	movq %rax, %r8
	movq %rsi, %rax
	subq $-32, %rsp
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
Lbb415:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_bind_pattern */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rax
	movq %rcx, %rdx
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb418
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rsi
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
Lbb418:
	popq %rsi
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb421
	movl $0, %esi
	jmp Lbb422
Lbb421:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2190(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
Lbb422:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb425
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb426
Lbb425:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb426:
	cmpl $0, %eax
	jnz Lbb489
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb430
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb431
Lbb430:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2221(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb431:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb434
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb435
Lbb434:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb435:
	cmpl $0, %eax
	jnz Lbb488
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb439
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb440
Lbb439:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2252(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb440:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb443
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb444
Lbb443:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb444:
	cmpl $0, %eax
	jnz Lbb487
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb448
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb449
Lbb448:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2283(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb449:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb452
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb453
Lbb452:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb453:
	cmpl $0, %eax
	jnz Lbb486
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb457
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb458
Lbb457:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2314(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb458:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb461
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb462
Lbb461:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb462:
	cmpl $0, %eax
	jnz Lbb485
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb466
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb467
Lbb466:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2345(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb467:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb470
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb475
Lbb470:
	movq 16(%rcx), %rsi
	movq (%rsi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb473
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb474
Lbb473:
	movq 16(%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb474:
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb475:
	cmpl $0, %eax
	jnz Lbb484
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb480
	cmpq $1, %rax
	jz Lbb479
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rsi
	subq $32, %rsp
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rdx
	callq donna_list_map
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TFnType
	subq $-32, %rsp
	jmp Lbb490
Lbb479:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rdx
	callq donna_list_map
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTupleType
	subq $-32, %rsp
	jmp Lbb490
Lbb480:
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rsi
	subq $32, %rsp
	callq compiler_typesystem_checker_unqualify
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq compiler_typesystem_checker_is_type_var
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb482
	subq $32, %rsp
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rdx
	callq donna_list_map
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TNamedType
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb490
Lbb482:
	movq %rdi, %rcx
	subq $32, %rsp
	movl $0, %edx
	callq donna_string_char_at
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTypeVar
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb490
Lbb484:
	movq 16(%rcx), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TListType
	subq $-32, %rsp
	jmp Lbb490
Lbb485:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	jmp Lbb490
Lbb486:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb490
Lbb487:
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb490
Lbb488:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb490
Lbb489:
	leaq compiler_typesystem_types_TInt(%rip), %rax
Lbb490:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_annotation_to_type */

.text
.balign 16
compiler_typesystem_checker_is_type_var:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movl $0, %edx
	callq donna_string_char_at
	movq %rax, %rcx
	subq $-32, %rsp
	cmpq $97, %rcx
	setge %al
	movzbq %al, %rax
	cmpq $122, %rcx
	setle %cl
	movzbq %cl, %rcx
	andq %rcx, %rax
	leave
	ret
/* end function compiler_typesystem_checker_is_type_var */

.text
.balign 16
compiler_typesystem_checker_unqualify:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str2432(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_split
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_last_segment
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_unqualify */

.text
.balign 16
compiler_typesystem_checker_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rax
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb503
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz Lbb499
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb500
Lbb499:
	movq 16(%rcx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb500:
	cmpl $0, %edx
	jnz Lbb502
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_last_segment
	subq $-32, %rsp
	jmp Lbb503
Lbb502:
	movq 8(%rcx), %rax
Lbb503:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_last_segment */

.text
.balign 16
compiler_typesystem_checker_collect_all_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq %rdx, %r8
	movq %rcx, %rdx
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb508
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb507
	movq 8(%r8), %rdx
	movq 16(%r8), %rbx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_collect_all_bindings
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb508
Lbb507:
	movq %rax, (%rsi)
Lbb508:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_all_bindings */

.text
.balign 16
compiler_typesystem_checker_collect_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq (%rcx), %rsi
	cmpq $9, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb531
	cmpq $5, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb527
	cmpq $6, %rsi
	jz Lbb524
	cmpq $7, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb521
	cmpq $8, %rsi
	jnz Lbb536
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $8, %rax
	jz Lbb517
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb536
Lbb517:
	movq %rdx, %r12
	movq 8(%rdx), %rdx
	movq 16(%r12), %r12
	subq $32, %rsp
	callq donna_string_equal
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	movq %rdi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %r8
	jz Lbb519
	movq %rax, (%rdi)
	jmp Lbb520
Lbb519:
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb520:
	movq %rax, (%rsi)
	jmp Lbb536
Lbb521:
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %r8
	cmpq $7, %r8
	jz Lbb523
	movq %rax, (%rsi)
	jmp Lbb536
Lbb523:
	movq %rdx, %rbx
	movq 8(%rdx), %rdx
	movq 16(%rbx), %rbx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_collect_bindings
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb536
Lbb524:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rdi
	cmpq $6, %rdi
	jz Lbb526
	movq %rax, (%rsi)
	jmp Lbb536
Lbb526:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb536
Lbb527:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $5, %rax
	jz Lbb530
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb536
Lbb530:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rdi, %r8
	callq compiler_typesystem_checker_collect_bindings
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb536
Lbb531:
	movq %rax, %rdi
	movq 8(%rcx), %r12
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r12, %rdx
	movq %rdi, %rcx
	callq compiler_typesystem_checker_lookup_int_binding
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rax
	cmpq $1, %rax
	jz Lbb534
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r12, (%rbx)
	movq %rdx, 8(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb536
Lbb534:
	movq %rdi, %rax
	movq %rax, (%rsi)
Lbb536:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_bindings */

.text
.balign 16
compiler_typesystem_checker_collect_bindings_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq %rdx, %r8
	movq %rcx, %rdx
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb541
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb540
	movq 8(%r8), %rdx
	movq 16(%r8), %rbx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb541
Lbb540:
	movq %rax, (%rsi)
Lbb541:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_bindings_list */

.text
.balign 16
compiler_typesystem_checker_lookup_int_binding:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb547
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rsi
	movq 8(%rax), %rax
	cmpq %rsi, %rdx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb545
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_int_binding
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb548
Lbb545:
	movq %rax, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb548
Lbb547:
	leaq donna_option_None(%rip), %rax
Lbb548:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_lookup_int_binding */

.text
.balign 16
compiler_typesystem_checker_apply_subst:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq (%rax), %rdx
	cmpq $9, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb559
	cmpq $5, %rdx
	jz Lbb558
	cmpq $6, %rdx
	jz Lbb557
	cmpq $7, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb555
	cmpq $8, %rdx
	jnz Lbb564
	movq 8(%rax), %rsi
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_apply_subst_list
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TNamedType
	subq $-32, %rsp
	jmp Lbb564
Lbb555:
	movq %rcx, %rdi
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_apply_subst_list
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_apply_subst
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TFnType
	subq $-32, %rsp
	jmp Lbb564
Lbb557:
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_apply_subst_list
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTupleType
	subq $-32, %rsp
	jmp Lbb564
Lbb558:
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TListType
	subq $-32, %rsp
	jmp Lbb564
Lbb559:
	movq %rax, %rsi
	movq 8(%rsi), %rdx
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_int_binding
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rdx), %rsi
	cmpq $1, %rsi
	jz Lbb562
	movq %rax, (%rcx)
	jmp Lbb564
Lbb562:
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
Lbb564:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_apply_subst */

.text
.balign 16
compiler_typesystem_checker_apply_subst_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb567
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	callq compiler_typesystem_checker_apply_subst_list
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb568
Lbb567:
	leaq donna_nil(%rip), %rax
Lbb568:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_apply_subst_list */

.text
.balign 16
compiler_typesystem_checker_check_binop_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r9, %rdi
	movq %r8, %rax
	xchgq %rdx, %rcx
	movq (%rdx), %rdx
	cmpq $5, %rdx
	jz Lbb643
	cmpq $6, %rdx
	jz Lbb636
	cmpq $7, %rdx
	jz Lbb629
	cmpq $8, %rdx
	jz Lbb622
	cmpq $15, %rdx
	jz Lbb615
	cmpq $16, %rdx
	jz Lbb608
	cmpq $17, %rdx
	jz Lbb601
	cmpq $18, %rdx
	jz Lbb594
	cmpq $19, %rdx
	jz Lbb587
	cmpq $20, %rdx
	jz Lbb580
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	jmp Lbb650
Lbb580:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $3, %rdx
	jz Lbb582
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2983(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb582:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $3, %rax
	jz Lbb585
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2978(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb586
Lbb585:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb586:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb587:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $3, %rdx
	jz Lbb589
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2956(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb589:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $3, %rax
	jz Lbb592
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2951(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb593
Lbb592:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb593:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb594:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb596
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2929(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb596:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb599
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2924(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb600
Lbb599:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb600:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb601:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb603
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2902(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb603:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb606
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2897(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb607
Lbb606:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb607:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb608:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb610
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2875(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb610:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb613
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2870(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb614
Lbb613:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb614:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb615:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb617
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2848(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb617:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb620
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2843(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb621
Lbb620:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb621:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb622:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb624
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2821(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb624:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb627
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2816(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb628
Lbb627:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb628:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb629:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb631
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2794(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb631:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb634
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2789(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb635
Lbb634:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb635:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb636:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb638
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2767(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb638:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb641
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2762(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb642
Lbb641:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb642:
	movq %rax, (%rsi)
	jmp Lbb650
Lbb643:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb645
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2740(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb650
Lbb645:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb648
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2735(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb649
Lbb648:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb649:
	movq %rax, (%rsi)
Lbb650:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_binop_types */

.text
.balign 16
compiler_typesystem_checker_binop_result_type:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb693
	cmpq $1, %rax
	jz Lbb692
	cmpq $2, %rax
	jz Lbb691
	cmpq $3, %rax
	jz Lbb690
	cmpq $4, %rax
	jz Lbb689
	cmpq $5, %rax
	jz Lbb688
	cmpq $6, %rax
	jz Lbb687
	cmpq $7, %rax
	jz Lbb686
	cmpq $8, %rax
	jz Lbb685
	cmpq $9, %rax
	jz Lbb684
	cmpq $10, %rax
	jz Lbb683
	cmpq $11, %rax
	jz Lbb682
	cmpq $12, %rax
	jz Lbb681
	cmpq $13, %rax
	jz Lbb680
	cmpq $14, %rax
	jz Lbb679
	cmpq $15, %rax
	jz Lbb678
	cmpq $16, %rax
	jz Lbb677
	cmpq $17, %rax
	jz Lbb676
	cmpq $18, %rax
	jz Lbb675
	cmpq $19, %rax
	jz Lbb674
	cmpq $20, %rax
	jz Lbb673
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb694
Lbb673:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb674:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb675:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb676:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb677:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb678:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb679:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb680:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb681:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb682:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb683:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb684:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb694
Lbb685:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb694
Lbb686:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb694
Lbb687:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb694
Lbb688:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb694
Lbb689:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb694
Lbb690:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb694
Lbb691:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb694
Lbb692:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb694
Lbb693:
	leaq compiler_typesystem_types_TInt(%rip), %rax
Lbb694:
	ret
/* end function compiler_typesystem_checker_binop_result_type */

.text
.balign 16
compiler_typesystem_checker_path_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str3077(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_head
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_path_last_segment */

.text
.balign 16
compiler_typesystem_checker_lookup_binding:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb702
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_string_equal
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb700
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_binding
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb703
Lbb700:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb703
Lbb702:
	leaq donna_option_None(%rip), %rax
Lbb703:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_lookup_binding */

.text
.balign 16
compiler_typesystem_checker_pub_fns_to_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb709
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rdx), %r14
	movq 16(%rdx), %rax
	movq 56(%rdx), %r13
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb707
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_fns_to_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb708
Lbb707:
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_fns_to_bindings
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
Lbb708:
	movq %rax, (%rsi)
	jmp Lbb710
Lbb709:
	leaq donna_nil(%rip), %rax
Lbb710:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_pub_fns_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_consts_to_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb716
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rdx), %r14
	movq 16(%rdx), %rax
	movq 24(%rdx), %r13
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb714
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_consts_to_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb715
Lbb714:
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_consts_to_bindings
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
Lbb715:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb716:
	leaq donna_nil(%rip), %rax
Lbb717:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_pub_consts_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_type_defs_to_ctor_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb724
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rax
	movq 24(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb721
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_types_TNamedType
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_ctors_to_bindings
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb723
Lbb721:
	movq %rbx, %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb723:
	movq %rax, (%rsi)
	jmp Lbb725
Lbb724:
	leaq donna_nil(%rip), %rax
Lbb725:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
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
	pushq %rsi
	pushq %rdi
	movq %rdx, %r13
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb734
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rax), %r12
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_list_is_empty
	movq %r13, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb730
	subq $32, %rsp
	movq %rdx, %r13
	callq compiler_typesystem_types_TFnType
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rdi, (%rbx)
	movq %rdi, %rbx
	jmp Lbb733
Lbb730:
	movq %rdi, %rcx
	movq %rbx, %rdi
	movq %rdx, (%rdi)
	movq %rdx, %rbx
Lbb733:
	subq $32, %rsp
	callq compiler_typesystem_checker_ctors_to_bindings
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r12, (%rbx)
	movq %rdx, 8(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb735
Lbb734:
	leaq donna_nil(%rip), %rax
Lbb735:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_ctors_to_bindings */

.text
.balign 16
compiler_typesystem_checker_pub_type_defs_to_ctor_info:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb742
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rax
	movq 24(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb739
	subq $32, %rsp
	callq compiler_typesystem_checker_ctors_to_info
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb741
Lbb739:
	movq %rbx, %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb741:
	movq %rax, (%rsi)
	jmp Lbb743
Lbb742:
	leaq donna_nil(%rip), %rax
Lbb743:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_info */

.text
.balign 16
compiler_typesystem_checker_ctors_to_info:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb746
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rax), %r13
	movq 16(%rax), %r14
	movq 24(%rax), %rbx
	subq $32, %rsp
	movq %rdx, %r12
	callq compiler_typesystem_checker_ctors_to_info
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rax, %r12
	subq $-32, %rsp
	movq %rdx, (%r12)
	movq %r14, 8(%r12)
	movq %rbx, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb747
Lbb746:
	leaq donna_nil(%rip), %rax
Lbb747:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_ctors_to_info */

