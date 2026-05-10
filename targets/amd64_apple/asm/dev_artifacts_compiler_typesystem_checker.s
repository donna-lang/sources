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
.balign 16
.globl _compiler_typesystem_checker_check_module
_compiler_typesystem_checker_check_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_check_module_with_imports
	leave
	ret
/* end function compiler_typesystem_checker_check_module */

.text
.balign 16
.globl _compiler_typesystem_checker_check_module_with_imports
_compiler_typesystem_checker_check_module_with_imports:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r12
	movq %rdi, %rax
	movq %rdx, %rdi
	movq 16(%rax), %r13
	movq 24(%rax), %rbx
	movq %rbx, -8(%rbp)
	movq 32(%rax), %r14
	movq 40(%rax), %rbx
	leaq _donna_nil(%rip), %rsi
	movq %rdi, %r15
	movq %r13, %rdi
	callq _compiler_typesystem_checker_collect_declared_aliases
	movq %r15, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, %r15
	callq _compiler_typesystem_env_new_env
	movq %r13, %rdi
	movq %rax, %rsi
	movq -8(%rbp), %r13
	callq _compiler_typesystem_checker_register_import_aliases
	movq %r15, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_add_imports_to_env
	movq %r14, %rdi
	movq %rax, %r15
	movq %rdi, %r14
	movq %r15, %rdi
	callq _compiler_typesystem_env_env_ctor_info
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, -16(%rbp)
	callq _compiler_typesystem_checker_check_type_defs
	movq %r13, %rdi
	movq (%rax), %r13
	movq 8(%rax), %rsi
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_check_constants
	movq %r13, %rcx
	movq %rbx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r15
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb7
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq 8(%rax), %r14
	callq _compiler_typesystem_checker_check_functions
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %rbx
	callq _donna_list_is_empty
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb6
	movq %r12, %rdi
	movq %rdi, %r12
	movq %r15, %rdi
	callq _compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq -16(%rbp), %rsi
	callq _donna_list_append
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r8
	callq _compiler_typesystem_typed_ast_TypedModule
	movq %rax, %rdi
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb8
Lbb6:
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb8
Lbb7:
	movq 8(%rax), %rbx
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	callq _donna_result_Error
Lbb8:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_module_with_imports */

.text
.balign 16
.globl _compiler_typesystem_checker_extract_interface
_compiler_typesystem_checker_extract_interface:
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
	callq _compiler_typesystem_checker_pub_fns_to_bindings
	movq %r12, %rdi
	movq %rax, %r12
	callq _compiler_typesystem_checker_pub_consts_to_bindings
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rdi, %r13
	callq _compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %r13, %rdi
	movq %rax, %r13
	callq _compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_list_append
	movq %r12, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %rbx, %rsi
	movq %rax, %rdi
	callq _compiler_typesystem_typed_ast_ModuleInterface
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_extract_interface */

.text
.balign 16
_compiler_typesystem_checker_add_imports_to_env:
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
	jz Lbb13
	movq %rax, %r12
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %r14
	movq 8(%rax), %rdi
	movq %rdi, %r13
	movq %r14, %rdi
	callq _compiler_typesystem_checker_path_last_segment
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	movq %r12, %rax
	movq %rdi, %rcx
	movq %rdi, %r12
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_add_module
	movq %r12, %rdi
	movq %rax, %r12
	callq _compiler_typesystem_checker_iface_ctor_info
	movq %r12, %rsi
	movq %rax, %rdi
	callq _compiler_typesystem_checker_add_iface_ctors_to_env
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_add_imports_to_env
Lbb13:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_add_imports_to_env */

.text
.balign 16
_compiler_typesystem_checker_add_iface_ctors_to_env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb16
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	movq (%rcx), %rsi
	movq 8(%rcx), %rdx
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_add_ctor
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_add_iface_ctors_to_env
Lbb16:
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_add_iface_ctors_to_env */

.text
.balign 16
_compiler_typesystem_checker_register_import_aliases:
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
	jz Lbb19
	movq %rax, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	movq 8(%rax), %rdi
	movq 16(%rax), %rsi
	movq %rsi, %r13
	leaq _str137(%rip), %rsi
	callq _donna_string_join
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rbx, %rax
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_register_alias
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_register_import_aliases
Lbb19:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_register_import_aliases */

.text
.balign 16
_compiler_typesystem_checker_collect_declared_aliases:
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
	jz Lbb22
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _compiler_typesystem_checker_collect_declared_aliases
	jmp Lbb24
Lbb22:
	movq %rbx, %rdi
	callq _donna_list_reverse
Lbb24:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_declared_aliases */

.text
.balign 16
_compiler_typesystem_checker_filter_imports_by_alias:
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
	jz Lbb29
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %r15
	movq 8(%rax), %r14
	movq %rdi, %rbx
	movq %r15, %rdi
	callq _compiler_typesystem_checker_path_last_segment
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _donna_list_contains_str
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb28
	callq _compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, (%rbx)
	jmp Lbb30
Lbb28:
	callq _compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb30
Lbb29:
	leaq _donna_nil(%rip), %rax
Lbb30:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_filter_imports_by_alias */

.text
.balign 16
_compiler_typesystem_checker_iface_ctor_info:
	endbr64
	movq 16(%rdi), %rax
	ret
/* end function compiler_typesystem_checker_iface_ctor_info */

.text
.balign 16
_compiler_typesystem_checker_iface_bindings:
	endbr64
	movq 8(%rdi), %rax
	ret
/* end function compiler_typesystem_checker_iface_bindings */

.text
.balign 16
_compiler_typesystem_checker_check_type_defs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_check_type_defs_loop
	leave
	ret
/* end function compiler_typesystem_checker_check_type_defs */

.text
.balign 16
_compiler_typesystem_checker_check_type_defs_loop:
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
	jz Lbb39
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq _compiler_typesystem_checker_check_type_def
	movq %r12, %rdi
	movq (%rax), %r12
	movq 8(%rax), %r14
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _compiler_typesystem_checker_check_type_defs_loop
	jmp Lbb41
Lbb39:
	movq %rbx, %rdi
	movq %rsi, %r12
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rbx, (%rax)
	movq %rsi, 8(%rax)
Lbb41:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_type_defs_loop */

.text
.balign 16
_compiler_typesystem_checker_check_type_def:
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
	leaq _donna_nil(%rip), %rsi
	callq _compiler_typesystem_checker_collect_param_vars
	movq %r13, %rsi
	movq %r12, %rdi
	movq (%rax), %r14
	movq 8(%rax), %r15
	movq %rsi, %r12
	leaq _compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r13
	movq %r14, %rdi
	callq _donna_list_map
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq _compiler_typesystem_types_TNamedType
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdi
	movq %rax, %rsi
	subq $16, %rsp
	movq %rsp, %rdx
	leaq _donna_nil(%rip), %rax
	movq %rax, 0(%rdx)
	movl $0, %r9d
	movq %rbx, %rdx
	callq _compiler_typesystem_checker_check_ctors
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $-16, %rsp
	movq (%rax), %rdx
	movq 8(%rax), %rbx
	callq _compiler_typesystem_typed_ast_TypedTypeDef
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, (%rax)
	movq %rbx, 8(%rax)
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_type_def */

.text
.balign 16
_compiler_typesystem_checker_collect_param_vars:
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
	jz Lbb46
	movq 8(%rdi), %r15
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	movq %rdx, %rdi
	callq _compiler_typesystem_env_fresh_var
	movq %r12, %rdi
	movq (%rax), %r13
	movq 8(%rax), %r14
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq %r15, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rbx, 16(%rsi)
	callq _compiler_typesystem_checker_collect_param_vars
	jmp Lbb48
Lbb46:
	movq %rdx, %r12
	movq %rbx, %rdi
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rdx
	movq %rbx, (%rax)
	movq %rdx, 8(%rax)
Lbb48:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_param_vars */

.text
.balign 16
_compiler_typesystem_checker_pair_snd:
	endbr64
	movq 8(%rdi), %rax
	ret
/* end function compiler_typesystem_checker_pair_snd */

.text
.balign 16
_compiler_typesystem_checker_check_ctors:
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
	movq %r12, -8(%rbp)
	movq %r9, %rbx
	movq %r8, %rax
	movq %rcx, %r15
	movq %rdx, -40(%rbp)
	movq %rsi, %r13
	movq %rdi, %rcx
	movq %r12, %rdi
	movq %rax, -16(%rbp)
	movq %r15, -32(%rbp)
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb58
	movq 8(%rcx), %rax
	movq 16(%rcx), %r12
	movq %r12, -48(%rbp)
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -56(%rbp)
	movq 8(%rax), %rsi
	movq %rdi, %r12
	movq 24(%rax), %rdi
	movq %rsi, %r14
	leaq _compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq _donna_list_map
	movq %r14, %rsi
	movq %rax, %rdi
	movq %rsi, %r14
	movq %r15, %rsi
	callq _compiler_typesystem_checker_subst_list
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rbx, %rdx
	movq %rsi, %r15
	movq %r12, %rsi
	movq %rdi, %r14
	movq %r15, %rdi
	callq _compiler_typesystem_typed_ast_TypedConstructor
	movq %r14, %rdi
	movq %rax, -80(%rbp)
	movq %rdi, %r14
	movq %r12, %rdi
	callq _donna_list_is_empty
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq %rax, %r12
	movq -16(%rbp), %rax
	subq $16, %rsp
	movq %rsp, %r15
	cmpq $1, %rcx
	jz Lbb54
	movq %rsi, %r14
	movq %r13, %rsi
	movq %r12, %rdi
	callq _compiler_typesystem_types_TFnType
	movq %r15, %rcx
	movq %r14, %rsi
	movq %rax, %r15
	movq %r12, %rax
	movq -8(%rbp), %r12
	movq %rax, %r14
	movq -16(%rbp), %rax
	movq %r15, (%rcx)
	jmp Lbb57
Lbb54:
	movq %r12, %r14
	movq %rdi, %r12
	movq %r13, (%r15)
	movq %r13, %r15
Lbb57:
	movq %r15, %rdx
	movq %rsi, %r15
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_bind
	movq %rax, -24(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %rax, %rdx
	movq %r14, %rax
	movq -24(%rbp), %rdi
	movq -32(%rbp), %r15
	movq -40(%rbp), %r14
	movq %r14, (%rdx)
	movq %rax, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _compiler_typesystem_env_env_add_ctor
	movq %rax, -72(%rbp)
	movq -48(%rbp), %rdi
	movq %rbx, %r9
	addq $1, %r9
	movq %r9, -64(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
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
	callq _compiler_typesystem_checker_check_ctors
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb60
Lbb58:
	movq %rax, %rbx
	callq _donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, (%rax)
	movq %rbx, 8(%rax)
Lbb60:
	movq %rbp, %rsp
	subq $128, %rsp
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
_compiler_typesystem_checker_subst_type_params:
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
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	movq %r12, %rsi
	callq _compiler_typesystem_checker_subst_list
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %r12, %rsi
	callq _compiler_typesystem_checker_subst_type_params
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_types_TFnType
	jmp Lbb81
Lbb70:
	movq %r12, %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq _compiler_typesystem_checker_subst_list
	movq %rax, %rdi
	callq _compiler_typesystem_types_TTupleType
	jmp Lbb81
Lbb72:
	movq %r12, %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq _compiler_typesystem_checker_subst_type_params
	movq %rax, %rdi
	callq _compiler_typesystem_types_TListType
	jmp Lbb81
Lbb74:
	movq %r12, %rdi
	movq 8(%rax), %rbx
	movq %rdi, %r12
	movq 16(%rax), %rdi
	movq %r12, %rsi
	callq _compiler_typesystem_checker_subst_list
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_types_TNamedType
	jmp Lbb81
Lbb76:
	movq %r12, %rdi
	movq %rax, %rbx
	movq 8(%rbx), %rsi
	callq _compiler_typesystem_checker_lookup_type_var
	movq %rax, %rdx
	movq %rbx, %rax
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
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_subst_type_params */

.text
.balign 16
_compiler_typesystem_checker_subst_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb84
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rsi, %r12
	callq _compiler_typesystem_checker_subst_list
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_typesystem_checker_subst_type_params
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb85
Lbb84:
	leaq _donna_nil(%rip), %rax
Lbb85:
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_subst_list */

.text
.balign 16
_compiler_typesystem_checker_lookup_type_var:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb91
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq 8(%rax), %r12
	movq %rsi, %r13
	callq _donna_string_equal
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb89
	callq _compiler_typesystem_checker_lookup_type_var
	movq %rax, (%rbx)
	jmp Lbb92
Lbb89:
	movq %r12, %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb92
Lbb91:
	leaq _donna_option_None(%rip), %rax
Lbb92:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_lookup_type_var */

.text
.balign 16
_compiler_typesystem_checker_check_constants:
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
	jz Lbb97
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq _compiler_typesystem_checker_check_constant
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb96
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq _compiler_typesystem_checker_check_constants
	movq %rax, (%rbx)
	jmp Lbb99
Lbb96:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb99
Lbb97:
	movq %r12, %rdi
	movq %rsi, %r12
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, (%rdi)
	movq %rbx, 8(%rdi)
	callq _donna_result_Ok
Lbb99:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_constants */

.text
.balign 16
_compiler_typesystem_checker_check_constant:
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
	callq _compiler_typesystem_checker_infer_expr
	movq %r13, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb106
	movq 8(%rcx), %rcx
	movq (%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq %rcx, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb104
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq _compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %rdx
	movq %rdx, (%r12)
	movq %r15, %rsi
	jmp Lbb105
Lbb104:
	movq %rdi, %r13
	movq %r14, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq %rdx, (%r12)
Lbb105:
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rbx, %rsi
	callq _compiler_typesystem_env_env_bind
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_typesystem_typed_ast_TypedConstant
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	callq _donna_result_Ok
	jmp Lbb108
Lbb106:
	movq %rcx, %rax
	movq 8(%rax), %rdi
	callq _donna_result_Error
Lbb108:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_constant */

.text
.balign 16
_compiler_typesystem_checker_check_functions:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _compiler_typesystem_checker_register_fn_sigs
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	callq _compiler_typesystem_checker_infer_return_types
	movq %rbx, %rdi
	movq %rax, %rsi
	leaq _donna_nil(%rip), %rcx
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_check_function_bodies
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_functions */

.text
.balign 16
_compiler_typesystem_checker_infer_return_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq %rdi, %rcx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb113
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rbx
	movq %rax, %rsi
	callq _compiler_typesystem_checker_infer_return_type_one
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_infer_return_types
Lbb113:
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_infer_return_types */

.text
.balign 16
_compiler_typesystem_checker_infer_return_type_one:
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
	jz Lbb123
	movq 8(%rcx), %rsi
	movq 24(%rcx), %rdi
	movq %rax, %r13
	movq 32(%rcx), %rax
	movq 40(%rcx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rax
	cmpq $1, %rax
	jz Lbb121
	movq %rsi, %r14
	movq %r13, %rsi
	callq _compiler_typesystem_checker_build_param_pairs
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rsi, %r14
	movq %r13, %rsi
	movq %rdi, %r15
	movq %r12, %rdi
	callq _compiler_typesystem_checker_bind_param_pairs
	movq %r15, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb118
	movq 8(%rax), %rax
	movq %rdi, %r15
	movq (%rax), %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	leaq _compiler_typesystem_checker_pair_snd(%rip), %rsi
	callq _donna_list_map
	movq %r15, %rsi
	movq %rax, %rdi
	callq _compiler_typesystem_types_TFnType
	movq %r14, %rsi
	movq %rax, %rdx
	movq %r13, %rax
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_bind
	movq %rax, (%r12)
	jmp Lbb120
Lbb118:
	movq %r13, %rax
	movq %rax, (%r12)
Lbb120:
	movq %rax, (%rbx)
	jmp Lbb123
Lbb121:
	movq %r13, %rax
	movq %rax, (%rbx)
Lbb123:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_infer_return_type_one */

.text
.balign 16
_compiler_typesystem_checker_register_fn_sigs:
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
	jz Lbb126
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq _compiler_typesystem_checker_fn_name
	movq %r13, %rdi
	movq %rax, %r13
	callq _compiler_typesystem_checker_function_sig_type
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rbx, %rax
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_bind
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_register_fn_sigs
	jmp Lbb127
Lbb126:
	movq %rbx, %rax
Lbb127:
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_register_fn_sigs */

.text
.balign 16
_compiler_typesystem_checker_fn_name:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb130
	movq 8(%rdi), %rax
	jmp Lbb131
Lbb130:
	movq 8(%rdi), %rax
Lbb131:
	ret
/* end function compiler_typesystem_checker_fn_name */

.text
.balign 16
_compiler_typesystem_checker_function_sig_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _compiler_typesystem_checker_fn_params
	movq %rax, %rdi
	callq _compiler_typesystem_checker_params_to_types
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_typesystem_checker_fn_return_type
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb134
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	callq _compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rdi
	movq %rax, %rsi
	jmp Lbb136
Lbb134:
	leaq _compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %rsi
Lbb136:
	callq _compiler_typesystem_types_TFnType
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_function_sig_type */

.text
.balign 16
_compiler_typesystem_checker_fn_params:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb140
	movq 24(%rdi), %rax
	jmp Lbb141
Lbb140:
	movq 24(%rdi), %rax
Lbb141:
	ret
/* end function compiler_typesystem_checker_fn_params */

.text
.balign 16
_compiler_typesystem_checker_fn_return_type:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb144
	movq 32(%rdi), %rax
	jmp Lbb145
Lbb144:
	movq 32(%rdi), %rax
Lbb145:
	ret
/* end function compiler_typesystem_checker_fn_return_type */

.text
.balign 16
_compiler_typesystem_checker_params_to_types:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb151
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb149
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq _compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r12)
	jmp Lbb150
Lbb149:
	movq %rdi, %r13
	movl $0, %edi
	callq _compiler_typesystem_types_TTypeVar
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r12)
Lbb150:
	callq _compiler_typesystem_checker_params_to_types
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb152
Lbb151:
	leaq _donna_nil(%rip), %rax
Lbb152:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_params_to_types */

.text
.balign 16
_compiler_typesystem_checker_check_function_bodies:
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
	jz Lbb160
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %r12, -8(%rbp)
	movq %rsi, %r13
	callq _compiler_typesystem_checker_check_function
	movq %rbx, %rdi
	movq %rax, %rcx
	movq (%rcx), %rax
	movq 8(%rcx), %rbx
	movq 16(%rcx), %r13
	subq $16, %rsp
	movq %rsp, %r15
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb157
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r12, %rax
	movq -16(%rbp), %rcx
	movq -8(%rbp), %r12
	movq $1, (%rdi)
	movq %rcx, 8(%rdi)
	movq %rax, 16(%rdi)
	movq %rdi, (%r15)
	xchgq %rbx, %rdi
	jmp Lbb159
Lbb157:
	movq %rdi, (%r15)
	xchgq %rbx, %rdi
Lbb159:
	callq _donna_list_reverse
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r14, %rsi
	callq _donna_list_append
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rdx
	callq _compiler_typesystem_checker_check_function_bodies
	jmp Lbb162
Lbb160:
	movq %r14, %rbx
	movq %rsi, %r13
	callq _donna_list_reverse
	movq %rbx, %rdi
	movq %rax, %r12
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rsi, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb162:
	movq %rbp, %rsp
	subq $64, %rsp
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
_compiler_typesystem_checker_check_function:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $104, %rsp
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
	jnz Lbb182
	movq 8(%rax), %r12
	movq 16(%rax), %rsi
	movq %rsi, -40(%rbp)
	movq 24(%rax), %rdi
	movq 32(%rax), %rbx
	movq 40(%rax), %rcx
	movq %rcx, -8(%rbp)
	movq 48(%rax), %rdx
	movq %rdx, -32(%rbp)
	movq %r13, %rsi
	callq _compiler_typesystem_checker_build_param_pairs
	movq %r13, %rdi
	movq %rax, %r14
	subq $16, %rsp
	movq %rsp, %r15
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb167
	movq %rdi, %r13
	movq 8(%rbx), %rdi
	callq _compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r15)
	movq %r13, %r15
	jmp Lbb170
Lbb167:
	movq %r15, %r13
	leaq _compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%r13)
	leaq _compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %r15
Lbb170:
	leaq _compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r13
	movq %r14, %rdi
	callq _donna_list_map
	movq %rax, %rdi
	movq %r15, %rsi
	callq _compiler_typesystem_types_TFnType
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, -16(%rbp)
	movq %rdx, %r13
	movq %rax, %rdx
	movq %r12, %rsi
	callq _compiler_typesystem_env_env_bind
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, %rsi
	movq %rdi, %r14
	movq %r13, %rdi
	callq _compiler_typesystem_checker_bind_param_pairs
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	movq -8(%rbp), %rdi
	callq _compiler_typesystem_checker_infer_expr
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -56(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb180
	movq 8(%rax), %rax
	movq (%rax), %r8
	movq %r8, -24(%rbp)
	movq %rdi, %r14
	movq %r8, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r14, %rdi
	movq %rax, %r14
	movq -24(%rbp), %r8
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -48(%rbp)
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb177
	movq %r15, %rsi
	movq %rdi, %rbx
	movq %r14, %rdi
	callq _compiler_typesystem_types_types_equal
	movq %r14, %rcx
	movq %r13, %rdx
	movq %rbx, %rdi
	movq %rax, %r9
	movq %r12, %r14
	movq -48(%rbp), %r12
	movq -56(%rbp), %rbx
	movq -24(%rbp), %r8
	movq -16(%rbp), %rax
	movq -40(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $0, %r9
	jz Lbb174
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	leaq _donna_option_None(%rip), %r9
	movq %r15, %rcx
	callq _compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rdi
	subq $-16, %rsp
	callq _donna_option_Some
	movq %rax, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, (%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp Lbb176
Lbb174:
	movq %r15, %rdi
	movq %rcx, %r15
	callq _compiler_typesystem_types_type_to_string
	movq %r15, %rcx
	movq %rax, %rdi
	movq %rdi, %r15
	movq %rcx, %rdi
	callq _compiler_typesystem_types_type_to_string
	movq %r15, %rdi
	movq %rax, %rsi
	movq -32(%rbp), %rdx
	callq _errors_error_TypeInvalidReturn
	movq %rax, %r15
	movl $24, %edi
	callq _malloc
	xchgq %rax, %r15
	movq $1, (%r15)
	movq %rax, 8(%r15)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r15)
	movl $24, %edi
	callq _malloc
	leaq _donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
Lbb176:
	movq %rax, (%r12)
	jmp Lbb179
Lbb177:
	movq %r8, %r15
	leaq _compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _donna_list_map
	movq %rax, %rdi
	movq %r14, %rsi
	callq _compiler_typesystem_types_TFnType
	movq %r13, %rdx
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -40(%rbp), %rsi
	movq %rcx, -64(%rbp)
	movq %rdx, %r13
	movq %rcx, %rdx
	movq %rsi, %r12
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_bind
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r13
	movq -48(%rbp), %r12
	movq -56(%rbp), %rbx
	movq -64(%rbp), %rax
	subq $16, %rsp
	movq %rsp, %r9
	movq %rax, 0(%r9)
	leaq _donna_option_None(%rip), %r9
	callq _compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rdi
	subq $-16, %rsp
	callq _donna_option_Some
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, (%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
Lbb179:
	movq %rax, (%rbx)
	jmp Lbb190
Lbb180:
	movq %r14, %rbx
	movq 8(%rax), %r14
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $24, %edi
	callq _malloc
	leaq _donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb190
Lbb182:
	movq %r13, %rdi
	movq 8(%rax), %rbx
	movq 16(%rax), %rsi
	movq %rdi, %r13
	movq 24(%rax), %rdi
	movq 32(%rax), %r12
	movq 40(%rax), %rcx
	movq %rcx, -80(%rbp)
	movq 48(%rax), %rax
	movq %rax, -72(%rbp)
	movq %rsi, %r15
	movq %r13, %rsi
	callq _compiler_typesystem_checker_build_param_pairs
	movq %r13, %rdi
	movq %rax, %r14
	movq %r12, %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb186
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq _compiler_typesystem_checker_annotation_to_type
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq %rcx, (%r12)
	movq %rcx, %r15
	jmp Lbb189
Lbb186:
	movq %r15, %rsi
	leaq _compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%r12)
	leaq _compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %r15
Lbb189:
	movq %rsi, %r13
	leaq _compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r12
	movq %r14, %rdi
	callq _donna_list_map
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r15, %rsi
	callq _compiler_typesystem_types_TFnType
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdx, %r14
	movq %r12, %rdx
	movq %rsi, %r13
	movq %rbx, %rsi
	callq _compiler_typesystem_env_env_bind
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, -96(%rbp)
	movq %rsi, %r13
	leaq _compiler_typesystem_types_TNil(%rip), %rsi
	movq %rdi, %rbx
	leaq _str855(%rip), %rdi
	callq _compiler_typesystem_types_TEIntLit
	movq %rbx, %rdi
	movq %rax, -88(%rbp)
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %r15, %rcx
	movq %rax, %rdi
	movq -72(%rbp), %rax
	movq %rcx, %r15
	movq -80(%rbp), %rcx
	movq %rcx, (%rdi)
	movq %rax, 8(%rdi)
	callq _donna_option_Some
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %r9
	movq -88(%rbp), %r8
	movq -96(%rbp), %rbx
	subq $16, %rsp
	movq %rsp, %rax
	movq %r12, 0(%rax)
	callq _compiler_typesystem_typed_ast_TypedFunction
	movq %rax, %rdi
	subq $-16, %rsp
	callq _donna_option_Some
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq %r12, (%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rbx, 16(%rax)
Lbb190:
	movq %rbp, %rsp
	subq $144, %rsp
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
_compiler_typesystem_checker_build_param_pairs:
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
	jz Lbb198
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
	jz Lbb195
	movq %rdi, %r12
	movq 8(%rax), %rdi
	callq _compiler_typesystem_checker_annotation_to_type
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, (%r13)
	movq %r14, %rsi
	movq %r12, %r14
	jmp Lbb197
Lbb195:
	movq %r13, %r12
	movq %rdi, %r13
	movq %r14, %rdi
	callq _compiler_typesystem_env_env_next_var
	movq %rax, %rdi
	callq _compiler_typesystem_types_TTypeVar
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r14
	movq %r14, (%r12)
Lbb197:
	callq _compiler_typesystem_checker_build_param_pairs
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb199
Lbb198:
	leaq _donna_nil(%rip), %rax
Lbb199:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_build_param_pairs */

.text
.balign 16
_compiler_typesystem_checker_bind_param_pairs:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb202
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	movq (%rcx), %rsi
	movq 8(%rcx), %rdx
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_bind
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_bind_param_pairs
Lbb202:
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_bind_param_pairs */

.text
.balign 16
.globl _compiler_typesystem_checker_infer_expr
_compiler_typesystem_checker_infer_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $120, %rsp
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
	jnz Lbb334
	cmpq $1, %rax
	jz Lbb333
	cmpq $2, %rax
	jz Lbb332
	cmpq $3, %rax
	jz Lbb331
	cmpq $4, %rax
	jz Lbb325
	cmpq $5, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb303
	cmpq $9, %rax
	jz Lbb293
	cmpq $10, %rax
	jz Lbb284
	cmpq $11, %rax
	jz Lbb277
	cmpq $14, %rax
	jz Lbb271
	cmpq $12, %rax
	jz Lbb265
	cmpq $6, %rax
	jz Lbb262
	cmpq $7, %rax
	jz Lbb250
	cmpq $8, %rax
	jz Lbb234
	cmpq $13, %rax
	jz Lbb231
	cmpq $16, %rax
	jz Lbb228
	cmpq $15, %rax
	jz Lbb225
	cmpq $17, %rax
	jz Lbb222
	movq %rsi, %rdi
	callq _compiler_typesystem_env_fresh_var
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_typesystem_types_TETodo
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	callq _donna_result_Ok
	jmp Lbb335
Lbb222:
	movq 8(%rdi), %rdi
	callq _compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb224
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq %rdi, %r12
	movq 8(%rax), %rdi
	callq _compiler_typesystem_env_fresh_var
	movq %r12, %rdi
	movq (%rax), %rsi
	movq 8(%rax), %r12
	callq _compiler_typesystem_types_TEPanic
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb335
Lbb224:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb225:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq _compiler_typesystem_checker_build_param_pairs
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rsi, %r13
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _compiler_typesystem_checker_bind_param_pairs
	movq %r12, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb227
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq %rdi, %r12
	movq %r14, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	leaq _compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r12
	callq _donna_list_map
	movq %r15, %rsi
	movq %rax, %rdi
	callq _compiler_typesystem_types_TFnType
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _compiler_typesystem_types_TELambda
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rsi, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb335
Lbb227:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb228:
	movq 8(%rdi), %rdi
	callq _compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb230
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	leaq _compiler_typesystem_types_TNil(%rip), %rsi
	callq _compiler_typesystem_types_TEEcho
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb335
Lbb230:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb231:
	movq 8(%rdi), %rdi
	leaq _compiler_typesystem_types_TNil(%rip), %rcx
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %rbx
	callq _compiler_typesystem_checker_check_stmts
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb233
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq %rsi, %r13
	movq 8(%rax), %rsi
	callq _compiler_typesystem_types_TEBlock
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, (%rdi)
	movq %rsi, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb335
Lbb233:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb234:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_infer_exprs
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb249
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %rsi
	callq _compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb247
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r13
	movq %r13, -8(%rbp)
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
	jnz Lbb239
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb241
Lbb239:
	movq $1, (%rax)
	movl $1, %eax
Lbb241:
	cmpl $0, %eax
	jnz Lbb244
	movq %rdi, %r13
	movq %r15, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r13, %rdi
	movq -8(%rbp), %r13
	movq %rax, (%r14)
	movq %rdi, %r14
	movq %rax, %rdi
	jmp Lbb246
Lbb244:
	movq %r14, %r13
	movq %rdi, %r14
	movq 8(%rdi), %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %rax, %rdi
	movq %r13, %rax
	movq -8(%rbp), %r13
	movq %rdi, (%rax)
Lbb246:
	callq _compiler_typesystem_types_TListType
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	callq _compiler_typesystem_types_TEListSpread
	movq %rax, %r14
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%r12)
	jmp Lbb248
Lbb247:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
Lbb248:
	movq %rax, (%rbx)
	jmp Lbb335
Lbb249:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb250:
	movq 8(%rdi), %rdi
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_infer_exprs
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb261
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
	jnz Lbb254
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb256
Lbb254:
	movq $1, (%rax)
	movl $1, %eax
Lbb256:
	cmpl $0, %eax
	jnz Lbb259
	movq %rdi, %r13
	movq %r12, %rdi
	callq _compiler_typesystem_env_fresh_var
	movq %r13, %rdi
	movq (%rax), %rax
	movq %rax, (%r14)
	movq %rdi, %r13
	movq %rax, %rdi
	jmp Lbb260
Lbb259:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %rax, %rdi
	movq %rdi, (%r14)
Lbb260:
	callq _compiler_typesystem_types_TListType
	movq %r13, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_types_TEList
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb335
Lbb261:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb262:
	movq 8(%rdi), %rdi
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_infer_exprs
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb264
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	leaq _compiler_typesystem_types_typed_expr_type(%rip), %rsi
	movq %rdi, %r13
	callq _donna_list_map
	movq %rax, %rdi
	callq _compiler_typesystem_types_TTupleType
	movq %r13, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_types_TETuple
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb335
Lbb264:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb265:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq _compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb270
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %r13
	movq %r13, %rsi
	callq _compiler_typesystem_checker_infer_clauses
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb268
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq 8(%rax), %rdx
	callq _compiler_typesystem_types_TECase
	movq %rax, %r14
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%r12)
	jmp Lbb269
Lbb268:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
Lbb269:
	movq %rax, (%rbx)
	jmp Lbb335
Lbb270:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb271:
	movq %rsi, %r12
	movq 8(%rdi), %r14
	movq 16(%rdi), %r15
	movq 24(%rdi), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r15), %rax
	cmpq $9, %rax
	jz Lbb275
	movl $24, %edi
	callq _malloc
	movq %r13, %rdx
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	movq %r15, %rdi
	callq _compiler_parser_ast_Call
	movq %rax, %rdi
	movq %rdi, (%rbx)
	movq %r12, %rsi
	jmp Lbb276
Lbb275:
	movq 8(%r15), %rdi
	movq %rdi, -16(%rbp)
	movq 16(%r15), %r13
	movq 24(%r15), %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdx
	movq %rax, %rsi
	movq -16(%rbp), %rdi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	callq _compiler_parser_ast_Call
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rdi, (%rbx)
Lbb276:
	callq _compiler_typesystem_checker_infer_expr
	jmp Lbb335
Lbb277:
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	callq _compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb283
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb281
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, (%r13)
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	movq %r15, %rsi
	movq %rax, %rdx
	jmp Lbb282
Lbb281:
	movq %rdi, %r14
	movq %r15, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq %rdx, (%r13)
Lbb282:
	callq _compiler_typesystem_types_TEUnaryOp
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb335
Lbb283:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb284:
	movq 8(%rdi), %r12
	movq %rdi, %rax
	movq 16(%rdi), %rdi
	movq 24(%rax), %rbx
	movq 32(%rax), %rcx
	movq %rcx, -24(%rbp)
	callq _compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb292
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq %rsi, %r15
	movq 8(%rax), %rsi
	callq _compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb290
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq %r14, -40(%rbp)
	movq 8(%rax), %r13
	movq %r13, -32(%rbp)
	movq %rdi, %r13
	movq %r15, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %r14
	movq %rdi, %r13
	movq %rdx, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq -24(%rbp), %rcx
	movq %rsi, %r14
	movq %rdi, %r13
	callq _compiler_typesystem_checker_check_binop_types
	movq %r14, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb288
	movq %rdi, %r14
	callq _compiler_typesystem_checker_binop_result_type
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rcx
	movq -32(%rbp), %r14
	movq -40(%rbp), %rdx
	callq _compiler_typesystem_types_TEBinOp
	movq %rax, %r15
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r15, (%rdi)
	movq %r14, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%r13)
	jmp Lbb289
Lbb288:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r13)
Lbb289:
	movq %rax, (%r12)
	jmp Lbb291
Lbb290:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
Lbb291:
	movq %rax, (%rbx)
	jmp Lbb335
Lbb292:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb293:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	callq _compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb302
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq %r12, -56(%rbp)
	movq 8(%rax), %rsi
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_infer_exprs
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb300
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r13
	leaq _compiler_typesystem_types_typed_expr_type(%rip), %rsi
	movq %rdi, %r14
	movq %r15, %rdi
	callq _donna_list_map
	movq %r14, %rdi
	movq %rax, %r14
	callq _compiler_typesystem_types_typed_expr_type
	movq %r14, %rsi
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rcx
	cmpq $7, %rcx
	jz Lbb298
	movq %r13, %rdi
	callq _compiler_typesystem_env_fresh_var
	movq -56(%rbp), %rdi
	movq (%rax), %rdx
	movq %rdx, (%r14)
	movq %r15, %rsi
	jmp Lbb299
Lbb298:
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq %rax, -48(%rbp)
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_collect_all_bindings
	movq %rax, %rsi
	movq -48(%rbp), %rdi
	callq _compiler_typesystem_checker_apply_subst
	movq %r15, %rsi
	movq %rax, %rdx
	movq -56(%rbp), %rdi
	movq %rdx, (%r14)
Lbb299:
	callq _compiler_typesystem_types_TECall
	movq %rax, %r14
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%r12)
	jmp Lbb301
Lbb300:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
Lbb301:
	movq %rax, (%rbx)
	jmp Lbb335
Lbb302:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb303:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %r14
	movq 24(%rax), %rcx
	movq %rcx, -64(%rbp)
	callq _compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -80(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb324
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r15
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -112(%rbp)
	movq (%rdi), %rax
	cmpq $4, %rax
	jz Lbb306
	movq %rdi, %r13
	movq %r15, %rdi
	callq _compiler_typesystem_env_fresh_var
	movq %r14, %rsi
	movq %r13, %rdi
	movq (%rax), %rcx
	movq 8(%rax), %r13
	leaq _str1182(%rip), %rdx
	callq _compiler_typesystem_types_TEFieldAccess
	movq %rax, %r14
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%r12)
	jmp Lbb323
Lbb306:
	movq %rdi, %r13
	movq %r14, %rsi
	movq %r15, %r14
	movq 8(%r13), %rdi
	movq %rsi, %r15
	movq %rdi, %rsi
	movq %rdi, %r12
	movq %r14, %rdi
	callq _compiler_typesystem_env_env_lookup_module
	movq %r15, %rsi
	movq %r12, %rdi
	movq -112(%rbp), %r12
	movq -64(%rbp), %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -104(%rbp)
	movq (%rax), %r8
	cmpq $0, %r8
	jz Lbb320
	movq 8(%rax), %rdx
	movq %rdx, -72(%rbp)
	movq %rsi, %r15
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %r14, %rdi
	callq _compiler_typesystem_env_env_lookup_alias
	movq %r15, %rsi
	movq %rbx, %rdi
	movq -80(%rbp), %rbx
	movq -72(%rbp), %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rsi, %r15
	movq (%rax), %rsi
	cmpq $1, %rsi
	jz Lbb312
	movq %rdx, %rax
	movq %rdi, (%rcx)
	movq %rdi, -88(%rbp)
	movq %rax, %rdi
	jmp Lbb315
Lbb312:
	movq %rdx, %rdi
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	movq %rax, -88(%rbp)
Lbb315:
	callq _compiler_typesystem_checker_iface_bindings
	movq %r15, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	callq _compiler_typesystem_checker_lookup_binding
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -88(%rbp), %r15
	movq -104(%rbp), %rdx
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -96(%rbp)
	movq %rsi, %r13
	movq (%rcx), %rsi
	cmpq $1, %rsi
	jz Lbb317
	movq %rdi, %r12
	movq %r14, %rdi
	callq _compiler_typesystem_env_fresh_var
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rcx
	movq -96(%rbp), %rax
	movq -104(%rbp), %r13
	movq -112(%rbp), %r12
	movq (%rcx), %rcx
	movq %rcx, (%rax)
	jmp Lbb319
Lbb317:
	movq %r13, %rsi
	movq %rdx, %r13
	movq 8(%rcx), %rcx
	movq %rcx, (%rax)
Lbb319:
	movq %r15, %rdx
	callq _compiler_typesystem_types_TEFieldAccess
	movq %rax, %r15
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r15, (%rdi)
	movq %r14, 8(%rdi)
	callq _donna_result_Ok
	movq %rax, (%r13)
	jmp Lbb322
Lbb320:
	movq %rdx, %r13
	movq %rcx, %rsi
	callq _errors_error_TypeUndefinedModule
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r13)
Lbb322:
	movq %rax, (%r12)
Lbb323:
	movq %rax, (%rbx)
	jmp Lbb335
Lbb324:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb335
Lbb325:
	movq 8(%rdi), %rdi
	movq %rsi, %r13
	movq %rdi, %rsi
	movq %rdi, %rbx
	movq %r13, %rdi
	callq _compiler_typesystem_env_env_lookup
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb328
	movq %rdi, %r12
	movq %r13, %rdi
	callq _compiler_typesystem_env_fresh_var
	movq %r13, %rsi
	movq %r12, %rdi
	movq (%rax), %rax
	movq %rax, (%rbx)
	movq %rsi, %r12
	movq %rax, %rsi
	jmp Lbb330
Lbb328:
	movq %r13, %rsi
	movq %rsi, %r12
	movq 8(%rax), %rsi
	movq %rsi, (%rbx)
Lbb330:
	callq _compiler_typesystem_types_TEVar
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq _donna_result_Ok
	jmp Lbb335
Lbb331:
	movq 8(%rdi), %rdi
	movq %rsi, %r12
	leaq _compiler_typesystem_types_TBool(%rip), %rsi
	callq _compiler_typesystem_types_TEBoolLit
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq _donna_result_Ok
	jmp Lbb335
Lbb332:
	movq 8(%rdi), %rdi
	movq %rsi, %r12
	leaq _compiler_typesystem_types_TString(%rip), %rsi
	callq _compiler_typesystem_types_TEStringLit
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq _donna_result_Ok
	jmp Lbb335
Lbb333:
	movq 8(%rdi), %rdi
	movq %rsi, %r12
	leaq _compiler_typesystem_types_TFloat(%rip), %rsi
	callq _compiler_typesystem_types_TEFloatLit
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq _donna_result_Ok
	jmp Lbb335
Lbb334:
	movq 8(%rdi), %rdi
	movq %rsi, %r12
	leaq _compiler_typesystem_types_TInt(%rip), %rsi
	callq _compiler_typesystem_types_TEIntLit
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq _donna_result_Ok
Lbb335:
	movq %rbp, %rsp
	subq $160, %rsp
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
_compiler_typesystem_checker_infer_exprs:
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
	jz Lbb340
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq _compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb339
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq _compiler_typesystem_checker_infer_exprs
	movq %rax, (%rbx)
	jmp Lbb342
Lbb339:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb342
Lbb340:
	movq %r12, %rdi
	movq %rsi, %r12
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rsi, 8(%rdi)
	callq _donna_result_Ok
Lbb342:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_infer_exprs */

.text
.balign 16
_compiler_typesystem_checker_infer_clauses:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb345
	leaq _compiler_typesystem_types_TNil(%rip), %rcx
	leaq _donna_nil(%rip), %rdx
	callq _compiler_typesystem_checker_infer_clauses_loop
	jmp Lbb346
Lbb345:
	movl $16, %edi
	callq _malloc
	movq %rax, %rdi
	leaq _donna_nil(%rip), %rax
	movq %rax, (%rdi)
	leaq _compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rdi)
	callq _donna_result_Ok
Lbb346:
	leave
	ret
/* end function compiler_typesystem_checker_infer_clauses */

.text
.balign 16
_compiler_typesystem_checker_infer_clauses_loop:
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
	movq %rsi, -24(%rbp)
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb357
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, -40(%rbp)
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -48(%rbp)
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq 24(%rax), %r12
	movq %rdi, %r15
	movq %r13, %rdi
	callq _compiler_typesystem_checker_bind_pattern
	movq %r15, %rdi
	movq %rax, %rsi
	movq %rsi, %r15
	callq _compiler_typesystem_checker_infer_guard
	movq %r15, %rsi
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb354
	movq 8(%rax), %rax
	movq %rax, -16(%rbp)
	callq _compiler_typesystem_checker_infer_expr
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb351
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq %rdi, %r14
	movq %r15, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r15, %rdx
	movq %r14, %rdi
	movq %rax, %rcx
	movq -16(%rbp), %rsi
	movq -24(%rbp), %r14
	movq %rcx, %r15
	callq _compiler_typesystem_types_TypedClause
	movq %rbx, %rdi
	movq %rax, -32(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	movq -48(%rbp), %rbx
	movq -32(%rbp), %rax
	movq %rdi, %r14
	movq -40(%rbp), %rdi
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r14, 16(%rdx)
	callq _compiler_typesystem_checker_infer_clauses_loop
	movq %rax, (%r13)
	jmp Lbb353
Lbb351:
	movq %r14, %rbx
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r13)
Lbb353:
	movq %rax, (%r12)
	jmp Lbb356
Lbb354:
	movq %r14, %rbx
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
Lbb356:
	movq %rax, (%rbx)
	jmp Lbb359
Lbb357:
	movq %rbx, %rdi
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rcx
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rcx, 8(%rdi)
	callq _donna_result_Ok
Lbb359:
	movq %rbp, %rsp
	subq $96, %rsp
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
_compiler_typesystem_checker_infer_guard:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb364
	movq 8(%rdi), %rdi
	callq _compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb363
	movq 8(%rax), %rax
	movq (%rax), %rdi
	callq _donna_option_Some
	movq %rax, %rdi
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb365
Lbb363:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb365
Lbb364:
	leaq _donna_option_None(%rip), %rdi
	callq _donna_result_Ok
Lbb365:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_infer_guard */

.text
.balign 16
_compiler_typesystem_checker_check_stmts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rbx
	movq %rdi, %rax
	movq %rcx, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb370
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq %rax, -16(%rbp)
	callq _compiler_typesystem_checker_check_stmt
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb369
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r15
	movq 16(%rax), %r14
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rdi, %r12
	movq -16(%rbp), %rdi
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq _compiler_typesystem_checker_check_stmts
	movq %rax, (%rbx)
	jmp Lbb372
Lbb369:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb372
Lbb370:
	movq %rbx, %rdi
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq _malloc
	movq %r12, %rcx
	movq %rax, %rdi
	movq %rbx, (%rdi)
	movq %rcx, 8(%rdi)
	callq _donna_result_Ok
Lbb372:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_stmts */

.text
.balign 16
_compiler_typesystem_checker_check_stmt:
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
	jnz Lbb382
	cmpq $1, %rax
	jz Lbb378
	movq 8(%rdi), %rdi
	movq %rbx, %rsi
	callq _compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb377
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq %rdi, %r12
	movq %r13, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	movq %r13, %rdi
	callq _compiler_typesystem_types_TStmtExpr
	movq %r12, %rdi
	movq %rax, %r14
	movq %rdi, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb391
Lbb377:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb391
Lbb378:
	movq %rbx, %r12
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %r12, %rsi
	callq _compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb381
	movq 8(%rax), %rax
	movq (%rax), %rsi
	movq %rsi, %r13
	movq %r12, %rsi
	movq %rdi, %r12
	callq _compiler_typesystem_checker_bind_pattern
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq _compiler_typesystem_types_TStmtLetPat
	movq %rax, %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r13, (%rdi)
	leaq _compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb391
Lbb381:
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb391
Lbb382:
	movq %rbx, %r13
	movq 8(%rdi), %r12
	movq 16(%rdi), %rbx
	movq 24(%rdi), %rdi
	movq %r13, %rsi
	callq _compiler_typesystem_checker_infer_expr
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
	jnz Lbb389
	movq 8(%rcx), %rcx
	movq (%rcx), %r15
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb387
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq _compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r14)
	movq %r15, %rdx
	jmp Lbb388
Lbb387:
	movq %rdi, %r13
	movq %r15, %rdi
	callq _compiler_typesystem_types_typed_expr_type
	movq %r15, %rdx
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r14)
Lbb388:
	movq %rdx, %r14
	movq %r13, %rdx
	movq %r12, %rsi
	callq _compiler_typesystem_env_env_bind
	movq %r14, %rdx
	movq %r12, %rdi
	movq %rax, %r12
	movq %r13, %rsi
	callq _compiler_typesystem_types_TStmtLet
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq %r14, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _donna_result_Ok
	movq %rax, (%rbx)
	jmp Lbb391
Lbb389:
	movq %rcx, %rax
	movq 8(%rax), %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
Lbb391:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_stmt */

.text
.balign 16
_compiler_typesystem_checker_bind_pattern:
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
	jnz Lbb420
	cmpq $0, %rax
	jz Lbb419
	cmpq $1, %rax
	jz Lbb418
	cmpq $3, %rax
	jz Lbb417
	cmpq $4, %rax
	jz Lbb416
	cmpq $5, %rax
	jz Lbb415
	cmpq $6, %rax
	jz Lbb414
	cmpq $7, %rax
	jz Lbb413
	cmpq $8, %rax
	jz Lbb402
	movq 24(%rdi), %rdi
	movq %rbx, %rsi
	callq _compiler_typesystem_checker_bind_pattern_list
	jmp Lbb421
Lbb402:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %r13
	movq %rbx, %rsi
	callq _compiler_typesystem_checker_bind_pattern_list
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%r13), %rax
	cmpq $0, %rax
	jz Lbb411
	cmpq $1, %rax
	setz %r15b
	movzbq %r15b, %r15
	subq $16, %rsp
	movq %rsp, %r14
	cmpl $0, %r15d
	jnz Lbb406
	movq $0, (%r14)
	movl $0, %eax
	jmp Lbb407
Lbb406:
	movq 8(%r13), %rdi
	leaq _str2141(%rip), %rsi
	callq _strcmp
	movq %rax, %rcx
	movq %r12, %rax
	cmpq $0, %rcx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	andq %r15, %rax
	movq %rax, (%r14)
Lbb407:
	cmpl $0, %eax
	jnz Lbb409
	movq 8(%r13), %r13
	movq %r12, %rdi
	callq _compiler_typesystem_env_env_next_var
	movq %rax, %rdi
	callq _compiler_typesystem_types_TTypeVar
	movq %rax, %rdi
	callq _compiler_typesystem_types_TListType
	movq %r13, %rsi
	movq %rax, %rdx
	movq %r12, %rax
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_bind
	movq %rax, (%rbx)
	jmp Lbb421
Lbb409:
	movq %r12, %rax
	movq %rax, (%rbx)
	jmp Lbb421
Lbb411:
	movq %r12, %rax
	movq %rax, (%rbx)
	jmp Lbb421
Lbb413:
	movq 8(%rdi), %rdi
	movq %rbx, %rsi
	callq _compiler_typesystem_checker_bind_pattern_list
	jmp Lbb421
Lbb414:
	movq %rbx, %rax
	jmp Lbb421
Lbb415:
	movq %rbx, %rax
	jmp Lbb421
Lbb416:
	movq %rbx, %rax
	jmp Lbb421
Lbb417:
	movq %rbx, %rax
	jmp Lbb421
Lbb418:
	movq %rbx, %rax
	jmp Lbb421
Lbb419:
	movq %rbx, %rax
	jmp Lbb421
Lbb420:
	movq 8(%rdi), %r12
	movq %rbx, %rdi
	callq _compiler_typesystem_env_env_next_var
	movq %rax, %rdi
	callq _compiler_typesystem_types_TTypeVar
	movq %r12, %rsi
	movq %rax, %rdx
	movq %rbx, %rax
	movq %rax, %rdi
	callq _compiler_typesystem_env_env_bind
Lbb421:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_bind_pattern */

.text
.balign 16
_compiler_typesystem_checker_bind_pattern_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rax
	movq %rdi, %rcx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb424
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rbx
	movq %rax, %rsi
	callq _compiler_typesystem_checker_bind_pattern
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_bind_pattern_list
Lbb424:
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_bind_pattern_list */

.text
.balign 16
.globl _compiler_typesystem_checker_annotation_to_type
_compiler_typesystem_checker_annotation_to_type:
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
	jnz Lbb427
	movl $0, %edx
	jmp Lbb428
Lbb427:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq _str2190(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rbx, %rdx
	andq %rax, %rdx
Lbb428:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz Lbb431
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb432
Lbb431:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb432:
	cmpl $0, %eax
	jnz Lbb495
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz Lbb436
	movq $0, (%rbx)
	movl $0, %edx
	jmp Lbb437
Lbb436:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq _str2221(%rip), %rsi
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
Lbb437:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz Lbb440
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb441
Lbb440:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb441:
	cmpl $0, %eax
	jnz Lbb494
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz Lbb445
	movq $0, (%rbx)
	movl $0, %edx
	jmp Lbb446
Lbb445:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq _str2252(%rip), %rsi
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
Lbb446:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz Lbb449
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb450
Lbb449:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb450:
	cmpl $0, %eax
	jnz Lbb493
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz Lbb454
	movq $0, (%rbx)
	movl $0, %edx
	jmp Lbb455
Lbb454:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq _str2283(%rip), %rsi
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
Lbb455:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz Lbb458
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb459
Lbb458:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb459:
	cmpl $0, %eax
	jnz Lbb492
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz Lbb463
	movq $0, (%rbx)
	movl $0, %edx
	jmp Lbb464
Lbb463:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq _str2314(%rip), %rsi
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
Lbb464:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz Lbb467
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb468
Lbb467:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb468:
	cmpl $0, %eax
	jnz Lbb491
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz Lbb472
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb473
Lbb472:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq _str2345(%rip), %rsi
	callq _strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r12, %rax
	movq %rax, (%rbx)
Lbb473:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb476
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb481
Lbb476:
	movq 16(%rdi), %rdx
	movq (%rdx), %rsi
	cmpq $1, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz Lbb479
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb480
Lbb479:
	movq 16(%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb480:
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb481:
	cmpl $0, %eax
	jnz Lbb490
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb486
	cmpq $1, %rax
	jz Lbb485
	movq %rdi, %rbx
	movq 8(%rdi), %rdi
	movq 16(%rbx), %rbx
	leaq _compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq _donna_list_map
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_types_TFnType
	jmp Lbb496
Lbb485:
	movq 8(%rdi), %rdi
	leaq _compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq _donna_list_map
	movq %rax, %rdi
	callq _compiler_typesystem_types_TTupleType
	jmp Lbb496
Lbb486:
	movq %rdi, %rbx
	movq 8(%rdi), %rdi
	movq 16(%rbx), %rbx
	callq _compiler_typesystem_checker_unqualify
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _compiler_typesystem_checker_is_type_var
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb488
	leaq _compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq _donna_list_map
	movq %r12, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_types_TNamedType
	movq %rax, (%rbx)
	jmp Lbb496
Lbb488:
	movq %r12, %rdi
	movl $0, %esi
	callq _donna_string_char_at
	movq %rax, %rdi
	callq _compiler_typesystem_types_TTypeVar
	movq %rax, (%rbx)
	jmp Lbb496
Lbb490:
	movq 16(%rdi), %rax
	movq 8(%rax), %rdi
	callq _compiler_typesystem_checker_annotation_to_type
	movq %rax, %rdi
	callq _compiler_typesystem_types_TListType
	jmp Lbb496
Lbb491:
	leaq _compiler_typesystem_types_TNil(%rip), %rax
	jmp Lbb496
Lbb492:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb496
Lbb493:
	leaq _compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb496
Lbb494:
	leaq _compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb496
Lbb495:
	leaq _compiler_typesystem_types_TInt(%rip), %rax
Lbb496:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_annotation_to_type */

.text
.balign 16
_compiler_typesystem_checker_is_type_var:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %esi
	callq _donna_string_char_at
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
/* end function compiler_typesystem_checker_is_type_var */

.text
.balign 16
_compiler_typesystem_checker_unqualify:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rsi
	movq %rsi, %rbx
	leaq _str2432(%rip), %rsi
	movq %rbx, %rdi
	callq _donna_string_split
	movq %rbx, %rsi
	movq %rax, %rdi
	callq _compiler_typesystem_checker_last_segment
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_unqualify */

.text
.balign 16
_compiler_typesystem_checker_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rsi, %rax
	movq (%rdi), %rcx
	cmpq $0, %rcx
	jz Lbb509
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz Lbb505
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb506
Lbb505:
	movq 16(%rdi), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb506:
	cmpl $0, %ecx
	jnz Lbb508
	movq 16(%rdi), %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_last_segment
	jmp Lbb509
Lbb508:
	movq 8(%rdi), %rax
Lbb509:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_typesystem_checker_last_segment */

.text
.balign 16
_compiler_typesystem_checker_collect_all_bindings:
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
	jz Lbb514
	movq 8(%rdx), %rdi
	movq 16(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb513
	movq 8(%rcx), %rsi
	movq 16(%rcx), %r13
	movq %rax, %rdx
	callq _compiler_typesystem_checker_collect_bindings
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _compiler_typesystem_checker_collect_all_bindings
	movq %rax, (%rbx)
	jmp Lbb514
Lbb513:
	movq %rax, (%rbx)
Lbb514:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_all_bindings */

.text
.balign 16
_compiler_typesystem_checker_collect_bindings:
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
	jnz Lbb537
	cmpq $5, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb533
	cmpq $6, %rcx
	jz Lbb530
	cmpq $7, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb527
	cmpq $8, %rcx
	jnz Lbb542
	movq %rdi, %rcx
	movq 8(%rdi), %rdi
	movq 16(%rcx), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%rsi), %rax
	cmpq $8, %rax
	jz Lbb523
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp Lbb542
Lbb523:
	movq %rsi, %r14
	movq 8(%rsi), %rsi
	movq 16(%r14), %r14
	callq _donna_string_equal
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rcx
	jz Lbb525
	movq %rax, (%r12)
	jmp Lbb526
Lbb525:
	movq %rax, %rdx
	callq _compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%r12)
Lbb526:
	movq %rax, (%rbx)
	jmp Lbb542
Lbb527:
	movq %rdi, %rcx
	movq 8(%rdi), %rdi
	movq 16(%rcx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rcx
	cmpq $7, %rcx
	jz Lbb529
	movq %rax, (%rbx)
	jmp Lbb542
Lbb529:
	movq %rsi, %r13
	movq 8(%rsi), %rsi
	movq 16(%r13), %r13
	movq %rax, %rdx
	callq _compiler_typesystem_checker_collect_bindings_list
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _compiler_typesystem_checker_collect_bindings
	movq %rax, (%rbx)
	jmp Lbb542
Lbb530:
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rcx
	cmpq $6, %rcx
	jz Lbb532
	movq %rax, (%rbx)
	jmp Lbb542
Lbb532:
	movq 8(%rsi), %rsi
	movq %rax, %rdx
	callq _compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%rbx)
	jmp Lbb542
Lbb533:
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%rsi), %rax
	cmpq $5, %rax
	jz Lbb536
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp Lbb542
Lbb536:
	movq 8(%rsi), %rsi
	movq %r12, %rdx
	callq _compiler_typesystem_checker_collect_bindings
	movq %rax, (%rbx)
	jmp Lbb542
Lbb537:
	movq %rax, %r12
	movq 8(%rdi), %r14
	movq %rsi, %r13
	movq %r14, %rsi
	movq %r12, %rdi
	callq _compiler_typesystem_checker_lookup_int_binding
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rax
	cmpq $1, %rax
	jz Lbb540
	movl $16, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq %r14, (%r13)
	movq %rsi, 8(%r13)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb542
Lbb540:
	movq %r12, %rax
	movq %rax, (%rbx)
Lbb542:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_bindings */

.text
.balign 16
_compiler_typesystem_checker_collect_bindings_list:
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
	jz Lbb547
	movq 8(%rdx), %rdi
	movq 16(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb546
	movq 8(%rcx), %rsi
	movq 16(%rcx), %r13
	movq %rax, %rdx
	callq _compiler_typesystem_checker_collect_bindings
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%rbx)
	jmp Lbb547
Lbb546:
	movq %rax, (%rbx)
Lbb547:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_collect_bindings_list */

.text
.balign 16
_compiler_typesystem_checker_lookup_int_binding:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb553
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
	jz Lbb551
	callq _compiler_typesystem_checker_lookup_int_binding
	movq %rax, (%rbx)
	jmp Lbb554
Lbb551:
	movq %rax, %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb554
Lbb553:
	leaq _donna_option_None(%rip), %rax
Lbb554:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_lookup_int_binding */

.text
.balign 16
_compiler_typesystem_checker_apply_subst:
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
	jnz Lbb565
	cmpq $5, %rcx
	jz Lbb564
	cmpq $6, %rcx
	jz Lbb563
	cmpq $7, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb561
	cmpq $8, %rcx
	jnz Lbb570
	movq 8(%rax), %rbx
	movq %rdi, %r12
	movq 16(%rax), %rdi
	movq %r12, %rsi
	callq _compiler_typesystem_checker_apply_subst_list
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_types_TNamedType
	jmp Lbb570
Lbb561:
	movq %rdi, %r12
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	movq %r12, %rsi
	callq _compiler_typesystem_checker_apply_subst_list
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %r12, %rsi
	callq _compiler_typesystem_checker_apply_subst
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_types_TFnType
	jmp Lbb570
Lbb563:
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq _compiler_typesystem_checker_apply_subst_list
	movq %rax, %rdi
	callq _compiler_typesystem_types_TTupleType
	jmp Lbb570
Lbb564:
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq _compiler_typesystem_checker_apply_subst
	movq %rax, %rdi
	callq _compiler_typesystem_types_TListType
	jmp Lbb570
Lbb565:
	movq %rax, %rbx
	movq 8(%rbx), %rsi
	callq _compiler_typesystem_checker_lookup_int_binding
	movq %rax, %rdx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rdx), %rsi
	cmpq $1, %rsi
	jz Lbb568
	movq %rax, (%rcx)
	jmp Lbb570
Lbb568:
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
Lbb570:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_apply_subst */

.text
.balign 16
_compiler_typesystem_checker_apply_subst_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb573
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rsi, %r12
	callq _compiler_typesystem_checker_apply_subst_list
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_typesystem_checker_apply_subst
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb574
Lbb573:
	leaq _donna_nil(%rip), %rax
Lbb574:
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_apply_subst_list */

.text
.balign 16
_compiler_typesystem_checker_check_binop_types:
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
	jz Lbb649
	cmpq $6, %rcx
	jz Lbb642
	cmpq $7, %rcx
	jz Lbb635
	cmpq $8, %rcx
	jz Lbb628
	cmpq $15, %rcx
	jz Lbb621
	cmpq $16, %rcx
	jz Lbb614
	cmpq $17, %rcx
	jz Lbb607
	cmpq $18, %rcx
	jz Lbb600
	cmpq $19, %rcx
	jz Lbb593
	cmpq $20, %rcx
	jz Lbb586
	movl $1, %edi
	callq _donna_result_Ok
	jmp Lbb656
Lbb586:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $3, %rcx
	jz Lbb588
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2983(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb588:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $3, %rax
	jz Lbb591
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2978(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb592
Lbb591:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb592:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb593:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $3, %rcx
	jz Lbb595
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2956(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb595:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $3, %rax
	jz Lbb598
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2951(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb599
Lbb598:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb599:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb600:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz Lbb602
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2929(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb602:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb605
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2924(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb606
Lbb605:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb606:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb607:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz Lbb609
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2902(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb609:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb612
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2897(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb613
Lbb612:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb613:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb614:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz Lbb616
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2875(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb616:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb619
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2870(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb620
Lbb619:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb620:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb621:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz Lbb623
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2848(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb623:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb626
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2843(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb627
Lbb626:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb627:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb628:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz Lbb630
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2821(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb630:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb633
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2816(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb634
Lbb633:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb634:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb635:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz Lbb637
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2794(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb637:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb640
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2789(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb641
Lbb640:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb641:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb642:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz Lbb644
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2767(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb644:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb647
	movq %rdi, %rax
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2762(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb648
Lbb647:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb648:
	movq %rax, (%rbx)
	jmp Lbb656
Lbb649:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz Lbb651
	callq _compiler_typesystem_types_type_to_string
	movq %r12, %rdx
	movq %rax, %rsi
	movq %rdx, %r13
	leaq _str2740(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%rbx)
	jmp Lbb656
Lbb651:
	movq %r12, %r13
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz Lbb654
	callq _compiler_typesystem_types_type_to_string
	movq %r13, %rdx
	movq %rax, %rsi
	leaq _str2735(%rip), %rdi
	callq _errors_error_TypeMismatch
	movq %rax, %rdi
	callq _donna_result_Error
	movq %rax, (%r12)
	jmp Lbb655
Lbb654:
	movl $1, %edi
	callq _donna_result_Ok
	movq %rax, (%r12)
Lbb655:
	movq %rax, (%rbx)
Lbb656:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_check_binop_types */

.text
.balign 16
_compiler_typesystem_checker_binop_result_type:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb699
	cmpq $1, %rax
	jz Lbb698
	cmpq $2, %rax
	jz Lbb697
	cmpq $3, %rax
	jz Lbb696
	cmpq $4, %rax
	jz Lbb695
	cmpq $5, %rax
	jz Lbb694
	cmpq $6, %rax
	jz Lbb693
	cmpq $7, %rax
	jz Lbb692
	cmpq $8, %rax
	jz Lbb691
	cmpq $9, %rax
	jz Lbb690
	cmpq $10, %rax
	jz Lbb689
	cmpq $11, %rax
	jz Lbb688
	cmpq $12, %rax
	jz Lbb687
	cmpq $13, %rax
	jz Lbb686
	cmpq $14, %rax
	jz Lbb685
	cmpq $15, %rax
	jz Lbb684
	cmpq $16, %rax
	jz Lbb683
	cmpq $17, %rax
	jz Lbb682
	cmpq $18, %rax
	jz Lbb681
	cmpq $19, %rax
	jz Lbb680
	cmpq $20, %rax
	jz Lbb679
	leaq _compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb700
Lbb679:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb680:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb681:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb682:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb683:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb684:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb685:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb686:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb687:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb688:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb689:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb690:
	leaq _compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb700
Lbb691:
	leaq _compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb700
Lbb692:
	leaq _compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb700
Lbb693:
	leaq _compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb700
Lbb694:
	leaq _compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb700
Lbb695:
	leaq _compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb700
Lbb696:
	leaq _compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb700
Lbb697:
	leaq _compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb700
Lbb698:
	leaq _compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb700
Lbb699:
	leaq _compiler_typesystem_types_TInt(%rip), %rax
Lbb700:
	ret
/* end function compiler_typesystem_checker_binop_result_type */

.text
.balign 16
_compiler_typesystem_checker_path_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rsi
	movq %rsi, %rbx
	leaq _str3077(%rip), %rsi
	movq %rbx, %rdi
	callq _donna_string_split
	movq %rax, %rdi
	callq _donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	callq _donna_list_head
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_path_last_segment */

.text
.balign 16
_compiler_typesystem_checker_lookup_binding:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb708
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq 8(%rax), %r12
	movq %rsi, %r13
	callq _donna_string_equal
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb706
	callq _compiler_typesystem_checker_lookup_binding
	movq %rax, (%rbx)
	jmp Lbb709
Lbb706:
	movq %r12, %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb709
Lbb708:
	leaq _donna_option_None(%rip), %rax
Lbb709:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_lookup_binding */

.text
.balign 16
_compiler_typesystem_checker_pub_fns_to_bindings:
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
	jz Lbb715
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
	jz Lbb713
	callq _compiler_typesystem_checker_pub_fns_to_bindings
	movq %rax, (%r12)
	jmp Lbb714
Lbb713:
	callq _compiler_typesystem_checker_pub_fns_to_bindings
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	xchgq %rax, %r14
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
Lbb714:
	movq %rax, (%rbx)
	jmp Lbb716
Lbb715:
	leaq _donna_nil(%rip), %rax
Lbb716:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_pub_fns_to_bindings */

.text
.balign 16
_compiler_typesystem_checker_pub_consts_to_bindings:
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
	jz Lbb722
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
	jz Lbb720
	callq _compiler_typesystem_checker_pub_consts_to_bindings
	movq %rax, (%r12)
	jmp Lbb721
Lbb720:
	callq _compiler_typesystem_checker_pub_consts_to_bindings
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	xchgq %rax, %r14
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
Lbb721:
	movq %rax, (%rbx)
	jmp Lbb723
Lbb722:
	leaq _donna_nil(%rip), %rax
Lbb723:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_pub_consts_to_bindings */

.text
.balign 16
_compiler_typesystem_checker_pub_type_defs_to_ctor_bindings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb730
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
	jz Lbb727
	leaq _donna_nil(%rip), %rsi
	callq _compiler_typesystem_types_TNamedType
	movq %r14, %rdi
	movq %rax, %rsi
	callq _compiler_typesystem_checker_ctors_to_bindings
	movq %r13, %rdi
	movq %rax, %r13
	callq _compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %r13, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %rax, (%r12)
	jmp Lbb729
Lbb727:
	movq %r13, %rdi
	callq _compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %rax, (%r12)
Lbb729:
	movq %rax, (%rbx)
	jmp Lbb731
Lbb730:
	leaq _donna_nil(%rip), %rax
Lbb731:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_bindings */

.text
.balign 16
_compiler_typesystem_checker_ctors_to_bindings:
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
	jz Lbb740
	movq 8(%rdi), %rax
	movq 16(%rdi), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rax), %r14
	movq 16(%rax), %rdi
	movq %rdi, %r13
	callq _donna_list_is_empty
	movq %r15, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb736
	movq %rsi, %r15
	callq _compiler_typesystem_types_TFnType
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, (%r13)
	movq %r12, %r13
	jmp Lbb739
Lbb736:
	movq %r12, %rdi
	movq %r13, %r12
	movq %rsi, (%r12)
	movq %rsi, %r13
Lbb739:
	callq _compiler_typesystem_checker_ctors_to_bindings
	movq %rax, %r12
	movl $16, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq %r14, (%r13)
	movq %rsi, 8(%r13)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb741
Lbb740:
	leaq _donna_nil(%rip), %rax
Lbb741:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_ctors_to_bindings */

.text
.balign 16
_compiler_typesystem_checker_pub_type_defs_to_ctor_info:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb748
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
	jz Lbb745
	callq _compiler_typesystem_checker_ctors_to_info
	movq %r13, %rdi
	movq %rax, %r13
	callq _compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r13, %rdi
	movq %rax, %rsi
	callq _donna_list_append
	movq %rax, (%r12)
	jmp Lbb747
Lbb745:
	movq %r13, %rdi
	callq _compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %rax, (%r12)
Lbb747:
	movq %rax, (%rbx)
	jmp Lbb749
Lbb748:
	leaq _donna_nil(%rip), %rax
Lbb749:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_pub_type_defs_to_ctor_info */

.text
.balign 16
_compiler_typesystem_checker_ctors_to_info:
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
	jz Lbb752
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rax), %r15
	movq 16(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 24(%rax), %r13
	movq %rsi, %r14
	callq _compiler_typesystem_checker_ctors_to_info
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq %r14, %rsi
	movq %rax, %r14
	movq -16(%rbp), %rax
	movq %rsi, (%r14)
	movq %rax, 8(%r14)
	movq %r13, 16(%r14)
	movl $16, %edi
	callq _malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $24, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb753
Lbb752:
	leaq _donna_nil(%rip), %rax
Lbb753:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_ctors_to_info */

