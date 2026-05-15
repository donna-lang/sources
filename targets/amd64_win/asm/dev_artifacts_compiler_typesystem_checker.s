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
	movq %rcx, %r12
	movq %rdi, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
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
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb341
	subq $48, %rsp
	movq %rsp, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 32(%rsi)
	leaq donna_nil(%rip), %r9
	callq compiler_typesystem_checker_infer_clauses_loop
	subq $-48, %rsp
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
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_infer_clauses */

.text
.balign 16
compiler_typesystem_checker_infer_clauses_loop:
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
	movq 48(%rbp), %rsi
	movq %r9, %r13
	movq %rdx, %r12
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb351
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq %rsi, -16(%rbp)
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -24(%rbp)
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	movq 24(%rax), %rdi
	subq $32, %rsp
	movq %r8, %r15
	movq %r12, %r8
	movq %r15, %rdx
	movq %rcx, %r14
	movq %rbx, %rcx
	callq compiler_typesystem_checker_bind_pattern_typed
	movq %r14, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	callq compiler_typesystem_checker_infer_guard
	movq %r15, %r8
	movq %r14, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r9
	cmpq $1, %r9
	movq %r8, %r14
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb349
	movq 8(%rax), %rax
	movq %rax, -8(%rbp)
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq %r8, %r15
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb347
	movq 8(%rax), %rax
	movq (%rax), %r14
	subq $32, %rsp
	movq %rcx, %rsi
	movq %r14, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r14, %r8
	movq %r12, %rdx
	movq %rsi, %rcx
	movq %rax, %r12
	movq %rdx, %r14
	movq -8(%rbp), %rdx
	movq -16(%rbp), %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %r9
	callq compiler_typesystem_types_TypedClause
	movq %rsi, %rcx
	movq %rax, -32(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %r15, %r8
	movq %r14, %rdx
	movq %rsi, %rcx
	movq %rax, %r9
	movq -24(%rbp), %rsi
	movq -32(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%r9)
	movq %rax, 8(%r9)
	movq %r13, 16(%r9)
	subq $48, %rsp
	movq %rsp, %rax
	movq %r12, 32(%rax)
	callq compiler_typesystem_checker_infer_clauses_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb348
Lbb347:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb348:
	movq %rax, (%rdi)
	jmp Lbb350
Lbb349:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb350:
	movq %rax, (%rsi)
	jmp Lbb353
Lbb351:
	movq %r13, %rcx
	subq $32, %rsp
	callq donna_list_reverse
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
Lbb353:
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
	jz Lbb358
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
	jnz Lbb357
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
	jmp Lbb359
Lbb357:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb359
Lbb358:
	subq $32, %rsp
	leaq donna_option_None(%rip), %rcx
	callq donna_result_Ok
	subq $-32, %rsp
Lbb359:
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
	jz Lbb364
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
	jnz Lbb363
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
	jmp Lbb366
Lbb363:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb366
Lbb364:
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
Lbb366:
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
	jnz Lbb376
	cmpq $1, %rax
	jz Lbb372
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
	jnz Lbb371
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
	jmp Lbb383
Lbb371:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb383
Lbb372:
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
	jnz Lbb375
	movq 8(%rax), %rax
	movq (%rax), %rbx
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %r8
	movq %rcx, %rdi
	callq compiler_typesystem_checker_bind_pattern_typed
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
	jmp Lbb383
Lbb375:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb383
Lbb376:
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
	jnz Lbb382
	movq 8(%rax), %rax
	movq (%rax), %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r14), %rax
	cmpq $0, %rax
	jz Lbb380
	movq %rcx, %rbx
	movq 8(%r14), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%r12)
	movq %r13, %r8
	jmp Lbb381
Lbb380:
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %r8
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%r12)
Lbb381:
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
	jmp Lbb383
Lbb382:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb383:
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
	jnz Lbb412
	cmpq $0, %rax
	jz Lbb411
	cmpq $1, %rax
	jz Lbb410
	cmpq $3, %rax
	jz Lbb409
	cmpq $4, %rax
	jz Lbb408
	cmpq $5, %rax
	jz Lbb407
	cmpq $6, %rax
	jz Lbb406
	cmpq $7, %rax
	jz Lbb405
	cmpq $8, %rax
	jz Lbb394
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	jmp Lbb413
Lbb394:
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
	jz Lbb403
	cmpq $1, %rax
	setz %r13b
	movzbq %r13b, %r13
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r13d
	jnz Lbb398
	movq $0, (%r12)
	movl $0, %eax
	jmp Lbb399
Lbb398:
	movq 8(%rbx), %rcx
	subq $32, %rsp
	leaq str2143(%rip), %rdx
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
Lbb399:
	cmpl $0, %eax
	jnz Lbb401
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
	jmp Lbb413
Lbb401:
	movq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb413
Lbb403:
	movq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb413
Lbb405:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	jmp Lbb413
Lbb406:
	movq %rsi, %rax
	jmp Lbb413
Lbb407:
	movq %rsi, %rax
	jmp Lbb413
Lbb408:
	movq %rsi, %rax
	jmp Lbb413
Lbb409:
	movq %rsi, %rax
	jmp Lbb413
Lbb410:
	movq %rsi, %rax
	jmp Lbb413
Lbb411:
	movq %rsi, %rax
	jmp Lbb413
Lbb412:
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
Lbb413:
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
compiler_typesystem_checker_bind_pattern_typed:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq %rdx, %r8
	movq (%rcx), %rdx
	cmpq $2, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb445
	cmpq $0, %rdx
	jz Lbb446
	cmpq $1, %rdx
	jz Lbb446
	cmpq $3, %rdx
	jz Lbb446
	cmpq $4, %rdx
	jz Lbb446
	cmpq $5, %rdx
	jz Lbb446
	cmpq $6, %rdx
	jz Lbb446
	cmpq $7, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb442
	cmpq $8, %rdx
	movq %rax, %rsi
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb426
	movq 16(%rcx), %rdx
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq compiler_typesystem_env_env_lookup_ctor
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rdi
	cmpq $0, %rdi
	jz Lbb425
	movq 8(%rdx), %rdx
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_bind_pattern_typed_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb446
Lbb425:
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb446
Lbb426:
	movq %rsi, %rax
	movq %rcx, %rdx
	movq 8(%rcx), %rcx
	movq 16(%rdx), %rbx
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rax, %rsi
	movq (%r8), %rax
	cmpq $5, %rax
	jz Lbb429
	subq $32, %rsp
	movq %rcx, %r12
	movq %rsi, %rcx
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTypeVar
	movq %r12, %rcx
	xchgq %rax, %rsi
	subq $-32, %rsp
	movq %rsi, (%rdi)
	jmp Lbb431
Lbb429:
	movq %rsi, %rax
	movq 8(%r8), %rsi
	movq %rsi, (%rdi)
Lbb431:
	subq $32, %rsp
	movq %rax, %r8
	movq %rsi, %rdx
	callq compiler_typesystem_checker_bind_pattern_typed_repeated
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb440
	cmpq $1, %rax
	setz %r13b
	movzbq %r13b, %r13
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r13d
	jnz Lbb435
	movq $0, (%r12)
	movl $0, %eax
	jmp Lbb436
Lbb435:
	movq %rcx, %r14
	movq 8(%rbx), %rcx
	subq $32, %rsp
	leaq str2281(%rip), %rdx
	callq strcmp
	movq %r14, %rcx
	movq %rax, %rdx
	movq %rdi, %rax
	subq $-32, %rsp
	cmpq $0, %rdx
	movq %rax, %rdi
	setz %al
	movzbq %al, %rax
	andq %r13, %rax
	movq %rax, (%r12)
Lbb436:
	cmpl $0, %eax
	jnz Lbb438
	movq 8(%rbx), %rbx
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
	jmp Lbb446
Lbb438:
	movq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb446
Lbb440:
	movq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb446
Lbb442:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $6, %rdx
	jz Lbb444
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb446
Lbb444:
	movq 8(%r8), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_bind_pattern_typed_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb446
Lbb445:
	movq 8(%rcx), %rdx
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
Lbb446:
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
/* end function compiler_typesystem_checker_bind_pattern_typed */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_typed_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq %rdx, %r8
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb452
	movq 8(%rcx), %r9
	movq 16(%rcx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb451
	movq %r9, %rcx
	movq 8(%r8), %rdx
	movq 16(%r8), %rbx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_bind_pattern_typed
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_bind_pattern_typed_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb452
Lbb451:
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb452:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_checker_bind_pattern_typed_list */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_typed_repeated:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq %rcx, %rsi
	movq (%rsi), %rcx
	cmpq $0, %rcx
	jz Lbb455
	movq 8(%rsi), %rcx
	movq 16(%rsi), %rsi
	subq $32, %rsp
	movq %rax, %r8
	movq %rdx, %rdi
	callq compiler_typesystem_checker_bind_pattern_typed
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_bind_pattern_typed_repeated
	subq $-32, %rsp
Lbb455:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_bind_pattern_typed_repeated */

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
	jz Lbb458
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
Lbb458:
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
	jnz Lbb461
	movl $0, %esi
	jmp Lbb462
Lbb461:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2383(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
Lbb462:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb465
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb466
Lbb465:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb466:
	cmpl $0, %eax
	jnz Lbb529
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb470
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb471
Lbb470:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2414(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb471:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb474
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb475
Lbb474:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb475:
	cmpl $0, %eax
	jnz Lbb528
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb479
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb480
Lbb479:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2445(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb480:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb483
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb484
Lbb483:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb484:
	cmpl $0, %eax
	jnz Lbb527
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb488
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb489
Lbb488:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2476(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb489:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb492
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb493
Lbb492:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb493:
	cmpl $0, %eax
	jnz Lbb526
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb497
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb498
Lbb497:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2507(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb498:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb501
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb502
Lbb501:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb502:
	cmpl $0, %eax
	jnz Lbb525
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb506
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb507
Lbb506:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2538(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb507:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb510
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb515
Lbb510:
	movq 16(%rcx), %rsi
	movq (%rsi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb513
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb514
Lbb513:
	movq 16(%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb514:
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb515:
	cmpl $0, %eax
	jnz Lbb524
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb520
	cmpq $1, %rax
	jz Lbb519
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
	jmp Lbb530
Lbb519:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rdx
	callq donna_list_map
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TTupleType
	subq $-32, %rsp
	jmp Lbb530
Lbb520:
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
	jz Lbb522
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
	jmp Lbb530
Lbb522:
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
	jmp Lbb530
Lbb524:
	movq 16(%rcx), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_TListType
	subq $-32, %rsp
	jmp Lbb530
Lbb525:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	jmp Lbb530
Lbb526:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb530
Lbb527:
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb530
Lbb528:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb530
Lbb529:
	leaq compiler_typesystem_types_TInt(%rip), %rax
Lbb530:
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
	leaq str2625(%rip), %rdx
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
	jz Lbb543
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz Lbb539
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb540
Lbb539:
	movq 16(%rcx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb540:
	cmpl $0, %edx
	jnz Lbb542
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_last_segment
	subq $-32, %rsp
	jmp Lbb543
Lbb542:
	movq 8(%rcx), %rax
Lbb543:
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
	jz Lbb548
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb547
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
	jmp Lbb548
Lbb547:
	movq %rax, (%rsi)
Lbb548:
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
	jnz Lbb571
	cmpq $5, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb567
	cmpq $6, %rsi
	jz Lbb564
	cmpq $7, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb561
	cmpq $8, %rsi
	jnz Lbb576
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $8, %rax
	jz Lbb557
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb576
Lbb557:
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
	jz Lbb559
	movq %rax, (%rdi)
	jmp Lbb560
Lbb559:
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb560:
	movq %rax, (%rsi)
	jmp Lbb576
Lbb561:
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %r8
	cmpq $7, %r8
	jz Lbb563
	movq %rax, (%rsi)
	jmp Lbb576
Lbb563:
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
	jmp Lbb576
Lbb564:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rdi
	cmpq $6, %rdi
	jz Lbb566
	movq %rax, (%rsi)
	jmp Lbb576
Lbb566:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb576
Lbb567:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $5, %rax
	jz Lbb570
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb576
Lbb570:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rdi, %r8
	callq compiler_typesystem_checker_collect_bindings
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb576
Lbb571:
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
	jz Lbb574
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
	jmp Lbb576
Lbb574:
	movq %rdi, %rax
	movq %rax, (%rsi)
Lbb576:
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
	jz Lbb581
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb580
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
	jmp Lbb581
Lbb580:
	movq %rax, (%rsi)
Lbb581:
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
	jz Lbb587
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
	jz Lbb585
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_int_binding
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb588
Lbb585:
	movq %rax, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb588
Lbb587:
	leaq donna_option_None(%rip), %rax
Lbb588:
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
	jnz Lbb599
	cmpq $5, %rdx
	jz Lbb598
	cmpq $6, %rdx
	jz Lbb597
	cmpq $7, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb595
	cmpq $8, %rdx
	jnz Lbb604
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
	jmp Lbb604
Lbb595:
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
	jmp Lbb604
Lbb597:
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
	jmp Lbb604
Lbb598:
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
	jmp Lbb604
Lbb599:
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
	jz Lbb602
	movq %rax, (%rcx)
	jmp Lbb604
Lbb602:
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
Lbb604:
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
	jz Lbb607
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
	jmp Lbb608
Lbb607:
	leaq donna_nil(%rip), %rax
Lbb608:
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
	jz Lbb683
	cmpq $6, %rdx
	jz Lbb676
	cmpq $7, %rdx
	jz Lbb669
	cmpq $8, %rdx
	jz Lbb662
	cmpq $15, %rdx
	jz Lbb655
	cmpq $16, %rdx
	jz Lbb648
	cmpq $17, %rdx
	jz Lbb641
	cmpq $18, %rdx
	jz Lbb634
	cmpq $19, %rdx
	jz Lbb627
	cmpq $20, %rdx
	jz Lbb620
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	jmp Lbb690
Lbb620:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $3, %rdx
	jz Lbb622
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str3176(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb622:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $3, %rax
	jz Lbb625
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3171(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb626
Lbb625:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb626:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb627:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $3, %rdx
	jz Lbb629
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str3149(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb629:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $3, %rax
	jz Lbb632
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3144(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb633
Lbb632:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb633:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb634:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb636
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str3122(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb636:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb639
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3117(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb640
Lbb639:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb640:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb641:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb643
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str3095(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb643:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb646
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3090(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb647
Lbb646:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb647:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb648:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb650
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str3068(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb650:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb653
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3063(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb654
Lbb653:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb654:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb655:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb657
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str3041(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb657:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb660
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3036(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb661
Lbb660:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb661:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb662:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb664
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str3014(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb664:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb667
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3009(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb668
Lbb667:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb668:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb669:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb671
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2987(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb671:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb674
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2982(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb675
Lbb674:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb675:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb676:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb678
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2960(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb678:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb681
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2955(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb682
Lbb681:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb682:
	movq %rax, (%rsi)
	jmp Lbb690
Lbb683:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb685
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rdi, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	leaq str2933(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb690
Lbb685:
	movq %rdi, %rbx
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb688
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rbx, %r8
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2928(%rip), %rcx
	callq errors_error_TypeMismatch
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_result_Error
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb689
Lbb688:
	subq $32, %rsp
	movl $1, %ecx
	callq donna_result_Ok
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb689:
	movq %rax, (%rsi)
Lbb690:
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
	jz Lbb733
	cmpq $1, %rax
	jz Lbb732
	cmpq $2, %rax
	jz Lbb731
	cmpq $3, %rax
	jz Lbb730
	cmpq $4, %rax
	jz Lbb729
	cmpq $5, %rax
	jz Lbb728
	cmpq $6, %rax
	jz Lbb727
	cmpq $7, %rax
	jz Lbb726
	cmpq $8, %rax
	jz Lbb725
	cmpq $9, %rax
	jz Lbb724
	cmpq $10, %rax
	jz Lbb723
	cmpq $11, %rax
	jz Lbb722
	cmpq $12, %rax
	jz Lbb721
	cmpq $13, %rax
	jz Lbb720
	cmpq $14, %rax
	jz Lbb719
	cmpq $15, %rax
	jz Lbb718
	cmpq $16, %rax
	jz Lbb717
	cmpq $17, %rax
	jz Lbb716
	cmpq $18, %rax
	jz Lbb715
	cmpq $19, %rax
	jz Lbb714
	cmpq $20, %rax
	jz Lbb713
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb734
Lbb713:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb714:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb715:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb716:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb717:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb718:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb719:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb720:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb721:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb722:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb723:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb724:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb734
Lbb725:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb734
Lbb726:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb734
Lbb727:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb734
Lbb728:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb734
Lbb729:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb734
Lbb730:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb734
Lbb731:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb734
Lbb732:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb734
Lbb733:
	leaq compiler_typesystem_types_TInt(%rip), %rax
Lbb734:
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
	leaq str3270(%rip), %rdx
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
	jz Lbb742
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
	jz Lbb740
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_binding
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb743
Lbb740:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb743
Lbb742:
	leaq donna_option_None(%rip), %rax
Lbb743:
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
	jz Lbb749
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
	jz Lbb747
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_fns_to_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb748
Lbb747:
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
Lbb748:
	movq %rax, (%rsi)
	jmp Lbb750
Lbb749:
	leaq donna_nil(%rip), %rax
Lbb750:
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
	jz Lbb756
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
	jz Lbb754
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_consts_to_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb755
Lbb754:
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
Lbb755:
	movq %rax, (%rsi)
	jmp Lbb757
Lbb756:
	leaq donna_nil(%rip), %rax
Lbb757:
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
	jz Lbb764
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
	jz Lbb761
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
	jmp Lbb763
Lbb761:
	movq %rbx, %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb763:
	movq %rax, (%rsi)
	jmp Lbb765
Lbb764:
	leaq donna_nil(%rip), %rax
Lbb765:
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
	jz Lbb774
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
	jz Lbb770
	subq $32, %rsp
	movq %rdx, %r13
	callq compiler_typesystem_types_TFnType
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rdi, (%rbx)
	movq %rdi, %rbx
	jmp Lbb773
Lbb770:
	movq %rdi, %rcx
	movq %rbx, %rdi
	movq %rdx, (%rdi)
	movq %rdx, %rbx
Lbb773:
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
	jmp Lbb775
Lbb774:
	leaq donna_nil(%rip), %rax
Lbb775:
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
	jz Lbb782
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
	jz Lbb779
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
	jmp Lbb781
Lbb779:
	movq %rbx, %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb781:
	movq %rax, (%rsi)
	jmp Lbb783
Lbb782:
	leaq donna_nil(%rip), %rax
Lbb783:
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
	jz Lbb786
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
	jmp Lbb787
Lbb786:
	leaq donna_nil(%rip), %rax
Lbb787:
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

