.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str129:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str151:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str901:
	.ascii "0"
	.byte 0
/* end data */

.data
.balign 8
str1287:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str2378:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str2519:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str2588:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str2613:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str2676:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
str2707:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2738:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
str2769:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str2800:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
str2831:
	.ascii "List"
	.byte 0
/* end data */

.data
.balign 8
str2925:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str3236:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3245:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3272:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3281:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3308:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3317:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3344:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3353:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3380:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3389:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3416:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3425:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3452:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3461:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3488:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3497:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3524:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3533:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3560:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3569:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3668:
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
	movq %rsi, %r13
	movq %rdi, %rax
	movq %rdx, %rdi
	movq 16(%rax), %r15
	movq 24(%rax), %r12
	movq 32(%rax), %r14
	movq 40(%rax), %rbx
	movq %rbx, -8(%rbp)
	leaq donna_nil(%rip), %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq compiler_typesystem_checker_collect_declared_aliases
	movq %rbx, %rdi
	movq %rax, %rsi
	movq -8(%rbp), %rbx
	callq compiler_typesystem_checker_filter_imports_by_alias
	movq %rax, -16(%rbp)
	callq compiler_typesystem_env_new_env
	movq %r15, %rdi
	movq %rax, %rsi
	movq -16(%rbp), %r15
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
	movq %rax, %r15
	callq compiler_typesystem_checker_check_type_defs
	movq %r13, %rsi
	movq %r12, %rdi
	movq (%rax), %r13
	movq %rsi, %r12
	movq 8(%rax), %rsi
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_check_constants
	movq %r12, %rsi
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb7
	movq 8(%rax), %rax
	movq %rsi, %rbx
	movq (%rax), %rsi
	movq 8(%rax), %r14
	callq compiler_typesystem_checker_check_functions
	movq 8(%rax), %r12
	movq %r12, -24(%rbp)
	movq 16(%rax), %r12
	movq %r12, %rdi
	callq donna_list_is_empty
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz .Lbb6
	movq %rsi, %r12
	movq %r13, %rdi
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r15, %rsi
	movq %rax, %rdi
	movq -24(%rbp), %r15
	callq donna_list_append
	movq %rax, -32(%rbp)
	movl $48, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq -32(%rbp), %rax
	movq $0, (%r12)
	movq %rsi, 8(%r12)
	movq %r15, 16(%r12)
	movq %r14, 24(%r12)
	movq %r13, 32(%r12)
	movq %rax, 40(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb8
.Lbb6:
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb8
.Lbb7:
	movq 8(%rax), %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %r12, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
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
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
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
	xchgq %rax, %r12
	movq %rdi, %rcx
	movq %r12, %rsi
	movq %rdi, %r13
	movq %rax, %rdi
	callq compiler_typesystem_env_env_add_module
	movq %r13, %rdi
	movq %rax, %r13
	callq compiler_typesystem_checker_iface_ctor_info
	movq %r13, %rdx
	movq %r12, %rdi
	movq %rax, %rsi
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
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rax
	movq %rdi, %rbx
	movq (%rsi), %rcx
	cmpq $0, %rcx
	jz .Lbb16
	movq 8(%rsi), %rcx
	movq 16(%rsi), %r12
	movq (%rcx), %rsi
	movq 8(%rcx), %rdx
	movq %rdx, %r14
	movq %rsi, %r13
	movq %rax, %rdi
	callq compiler_typesystem_env_env_add_ctor
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	leaq str129(%rip), %rsi
	movq %rdi, %r13
	movq %rbx, %rdi
	callq __rt_str_concat
	movq %r15, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_env_env_add_ctor
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_checker_add_iface_ctors_to_env
.Lbb16:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
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
	leaq str151(%rip), %rsi
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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rdx
	movq %rdi, %rax
	movq 8(%rax), %r15
	movq 16(%rax), %r14
	movq 32(%rax), %rdi
	movq 40(%rax), %rbx
	leaq donna_nil(%rip), %rsi
	callq compiler_typesystem_checker_collect_param_vars
	movq %rbx, %rdi
	movq (%rax), %r12
	movq 8(%rax), %r13
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq donna_list_map
	movq %rbx, %rdi
	movq %rax, -16(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r13, %r8
	movq %r12, %rcx
	movq %rbx, %rdi
	movq %rax, %rsi
	movq -16(%rbp), %rax
	movq $8, (%rsi)
	movq %r15, 8(%rsi)
	movq %rax, 16(%rsi)
	subq $16, %rsp
	movq %rsp, %rdx
	leaq donna_nil(%rip), %rax
	movq %rax, 0(%rdx)
	movl $0, %r9d
	movq %r15, %rdx
	callq compiler_typesystem_checker_check_ctors
	subq $-16, %rsp
	movq (%rax), %r13
	movq 8(%rax), %rbx
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $0, (%r12)
	movq %r15, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
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
	movq 16(%rbp), %r13
	movq %r13, -48(%rbp)
	movq %r9, %rbx
	movq %r8, %rax
	movq %rcx, %r14
	movq %rdx, -40(%rbp)
	movq %rsi, %r12
	movq %rdi, %rcx
	movq %r13, %rdi
	movq %rax, -16(%rbp)
	movq %r14, -32(%rbp)
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb58
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq %rdi, -80(%rbp)
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -56(%rbp)
	movq 8(%rax), %rsi
	movq 24(%rax), %rdi
	movq %rsi, %r13
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq donna_list_map
	movq %r14, %rcx
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r15
	movq %rcx, %rsi
	callq compiler_typesystem_checker_subst_list
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r13
	movq $0, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movq %rbx, 24(%r13)
	movq %r14, %rdi
	callq donna_list_is_empty
	movq %rax, %rdx
	movq %r14, %rax
	movq %rax, %r14
	movq -16(%rbp), %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -8(%rbp)
	cmpq $1, %rdx
	jz .Lbb54
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %rax, %r15
	movq %r14, %rax
	movq -8(%rbp), %rcx
	movq %rax, %r14
	movq -16(%rbp), %rax
	movq $7, (%r15)
	movq %r14, 8(%r15)
	movq %r12, 16(%r15)
	movq %r15, (%rcx)
	jmp .Lbb57
.Lbb54:
	movq %r15, %rsi
	movq %r12, (%rcx)
	movq %r12, %r15
.Lbb57:
	movq %r15, %rdx
	movq %rsi, %r15
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rax, -24(%rbp)
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %rax, %rdx
	movq %r14, %rax
	movq -24(%rbp), %rdi
	movq -32(%rbp), %r15
	movq -40(%rbp), %r14
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
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -56(%rbp), %rbx
	movq -64(%rbp), %r9
	movq -72(%rbp), %r8
	movq %rdi, %r12
	movq -80(%rbp), %rdi
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	subq $16, %rsp
	movq %rsp, %r10
	movq %rax, 0(%r10)
	callq compiler_typesystem_checker_check_ctors
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb60
.Lbb58:
	movq %rax, %rbx
	callq donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %r12, (%rax)
	movq %rbx, 8(%rax)
.Lbb60:
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
	movq %rsi, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $8, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb63
	movl $0, %edx
	jmp .Lbb64
.Lbb63:
	movq 16(%rax), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq %rsi, %rdx
.Lbb64:
	cmpl $0, %edx
	jnz .Lbb76
	cmpq $8, %rcx
	jz .Lbb74
	cmpq $5, %rcx
	jz .Lbb72
	cmpq $6, %rcx
	jz .Lbb70
	cmpq $7, %rcx
	jnz .Lbb81
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rbx, %rsi
	callq compiler_typesystem_checker_subst_list
	movq %r12, %rdi
	movq %rax, %r12
	movq %rbx, %rsi
	callq compiler_typesystem_checker_subst_type_params
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $7, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb81
.Lbb70:
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_subst_list
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq $6, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb81
.Lbb72:
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_subst_type_params
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq $5, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb81
.Lbb74:
	movq %rbx, %rdi
	movq 8(%rax), %r12
	movq %rdi, %rbx
	movq 16(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_subst_list
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $8, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb81
.Lbb76:
	movq %rbx, %rdi
	movq %rax, %rbx
	movq 8(%rbx), %rsi
	callq compiler_typesystem_checker_lookup_type_var
	movq %rax, %rdx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rdx), %rsi
	cmpq $0, %rsi
	jz .Lbb80
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	jmp .Lbb81
.Lbb80:
	movq %rax, (%rcx)
.Lbb81:
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
	jz .Lbb84
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
	jmp .Lbb85
.Lbb84:
	leaq donna_nil(%rip), %rax
.Lbb85:
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
	jz .Lbb90
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
	jz .Lbb89
	callq compiler_typesystem_checker_lookup_type_var
	movq %rax, (%rbx)
	jmp .Lbb91
.Lbb89:
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb91
.Lbb90:
	leaq donna_option_None(%rip), %rax
.Lbb91:
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
	jz .Lbb96
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
	jnz .Lbb95
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
	jmp .Lbb98
.Lbb95:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb98
.Lbb96:
	movq %r12, %rdi
	movq %rsi, %rbx
	callq donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rsi, (%rbx)
	movq %r12, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
.Lbb98:
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
	movq %rsi, %r12
	movq 8(%rdi), %r13
	movq 16(%rdi), %r15
	movq 24(%rdi), %rbx
	movq 32(%rdi), %rdi
	movq %r12, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb104
	movq 8(%rcx), %rcx
	movq (%rcx), %rbx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb102
	movq %rdi, %r14
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r14, %rdi
	movq %rax, %r14
	movq %r14, (%r12)
	jmp .Lbb103
.Lbb102:
	movq %rdi, %r14
	movq %rbx, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r14, %rdi
	movq %rax, %r14
	movq %r14, (%r12)
.Lbb103:
	movq %r14, %rdx
	movq %r13, %rsi
	callq compiler_typesystem_env_env_bind
	movq %rax, %r12
	movl $40, %edi
	callq malloc
	xchgq %rax, %r13
	movq $0, (%r13)
	movq %rax, 8(%r13)
	movq %r15, 16(%r13)
	movq %r14, 24(%r13)
	movq %rbx, 32(%r13)
	movl $16, %edi
	callq malloc
	movq %rax, %rbx
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb106
.Lbb104:
	movq %rcx, %rax
	movq 8(%rax), %rbx
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb106:
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
	jz .Lbb111
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rbx
	movq %rax, %rsi
	callq compiler_typesystem_checker_infer_return_type_one
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_infer_return_types
.Lbb111:
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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rax
	movq %rdi, %rcx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz .Lbb121
	movq 8(%rcx), %rsi
	movq 24(%rcx), %rdi
	movq %rax, %r14
	movq 32(%rcx), %rax
	movq 40(%rcx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rax
	cmpq $1, %rax
	jz .Lbb119
	movq %rsi, %r13
	movq %r14, %rsi
	callq compiler_typesystem_checker_build_param_pairs
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rsi, %r15
	movq %r14, %rsi
	movq %rdi, %r13
	movq %r12, %rdi
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r13, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb116
	movq 8(%rax), %rax
	movq %rdi, %r13
	movq (%rax), %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rsi
	movq %r13, %rdi
	movq %rax, %r13
	movq %rsi, %r15
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	callq donna_list_map
	movq %rax, -16(%rbp)
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %rax, %rdx
	movq %r14, %rax
	movq -16(%rbp), %rcx
	movq $7, (%rdx)
	movq %rcx, 8(%rdx)
	movq %r13, 16(%rdx)
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rax, (%r12)
	jmp .Lbb118
.Lbb116:
	movq %r14, %rax
	movq %rax, (%r12)
.Lbb118:
	movq %rax, (%rbx)
	jmp .Lbb121
.Lbb119:
	movq %r14, %rax
	movq %rax, (%rbx)
.Lbb121:
	movq %rbp, %rsp
	subq $64, %rsp
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
	jz .Lbb124
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
	jmp .Lbb125
.Lbb124:
	movq %rbx, %rax
.Lbb125:
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
	jnz .Lbb128
	movq 8(%rdi), %rax
	jmp .Lbb129
.Lbb128:
	movq 8(%rdi), %rax
.Lbb129:
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
	pushq %rbx
	pushq %r12
	movq %rdi, %rbx
	callq compiler_typesystem_checker_fn_params
	movq %rax, %rdi
	callq compiler_typesystem_checker_params_to_types
	movq %rbx, %rdi
	movq %rax, %r12
	callq compiler_typesystem_checker_fn_return_type
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb132
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rbx
	jmp .Lbb134
.Lbb132:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %rbx
.Lbb134:
	movl $24, %edi
	callq malloc
	movq $7, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	popq %r12
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
	jnz .Lbb138
	movq 24(%rdi), %rax
	jmp .Lbb139
.Lbb138:
	movq 24(%rdi), %rax
.Lbb139:
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
	jnz .Lbb142
	movq 32(%rdi), %rax
	jmp .Lbb143
.Lbb142:
	movq 32(%rdi), %rax
.Lbb143:
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
	jz .Lbb149
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb147
	movq %rdi, %r13
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdi
	movq %rax, %r13
	movq %r13, (%r12)
	jmp .Lbb148
.Lbb147:
	movq %rdi, %r13
	movl $16, %edi
	callq malloc
	movq %r13, %rdi
	movq %rax, %r13
	movq $9, (%r13)
	movq $0, 8(%r13)
	movq %r13, (%r12)
.Lbb148:
	callq compiler_typesystem_checker_params_to_types
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb150
.Lbb149:
	leaq donna_nil(%rip), %rax
.Lbb150:
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
	jz .Lbb158
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
	jz .Lbb155
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
	jmp .Lbb157
.Lbb155:
	movq %rdi, (%r15)
	xchgq %rbx, %rdi
.Lbb157:
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
	jmp .Lbb160
.Lbb158:
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
.Lbb160:
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
	subq $152, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb180
	movq 8(%rax), %r12
	movq 16(%rax), %rsi
	movq %rsi, -112(%rbp)
	movq 24(%rax), %rdi
	movq 32(%rax), %r14
	movq %r14, -24(%rbp)
	movq 40(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 48(%rax), %r15
	movq %r15, -56(%rbp)
	movq %rbx, %rsi
	callq compiler_typesystem_checker_build_param_pairs
	movq %rbx, %rdi
	movq %rax, %r15
	subq $16, %rsp
	movq %rsp, %r13
	movq (%r14), %rax
	cmpq $0, %rax
	jz .Lbb165
	movq %rdi, %rbx
	movq 8(%r14), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %rbx, (%r13)
	movq %rbx, %r13
	jmp .Lbb168
.Lbb165:
	movq %r13, %rbx
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%rbx)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %r13
.Lbb168:
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %rbx
	movq %r15, %rdi
	callq donna_list_map
	movq %rbx, %rdi
	movq %rax, %r14
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %rdx
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $7, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %rdx, %r15
	movq %rbx, %rdx
	movq %r12, %rsi
	callq compiler_typesystem_env_env_bind
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, %rsi
	movq %rdi, %r14
	movq %r15, %rdi
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdi, %r14
	movq -16(%rbp), %rdi
	callq compiler_typesystem_checker_infer_expr
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -104(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb178
	movq 8(%rax), %rax
	movq (%rax), %rax
	movq %rax, -48(%rbp)
	movq %rdi, %r14
	movq %rax, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rdx
	movq %r14, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	movq %rax, %rbx
	movq -48(%rbp), %rax
	movq -24(%rbp), %r14
	movq %rcx, -32(%rbp)
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -96(%rbp)
	movq %rdx, %r15
	movq (%r14), %rdx
	cmpq $0, %rdx
	jz .Lbb175
	movq %r13, %rsi
	movq %rdi, %r14
	movq %rcx, %rdi
	callq compiler_typesystem_types_types_equal
	movq %r15, %rdx
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rbx, %rax
	movq -96(%rbp), %rcx
	movq %rax, %rbx
	movq -104(%rbp), %rax
	movq -32(%rbp), %r15
	movq %rdx, %r14
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -40(%rbp)
	cmpq $0, %rsi
	jz .Lbb172
	movq %rdi, %r15
	movl $64, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %r15
	movq %rbx, %rax
	movq -40(%rbp), %r13
	movq %r12, %r14
	movq -96(%rbp), %r12
	movq -104(%rbp), %rbx
	movq -48(%rbp), %rcx
	movq -112(%rbp), %rsi
	movq $0, (%r15)
	movq %r8, 8(%r15)
	movq %rsi, 16(%r15)
	movq %rdx, 24(%r15)
	movq %rdi, 32(%r15)
	movq %rcx, 40(%r15)
	leaq donna_option_None(%rip), %rcx
	movq %rcx, 48(%r15)
	movq %rax, 56(%r15)
	movl $16, %edi
	callq malloc
	xchgq %rax, %r15
	movq $1, (%r15)
	movq %rax, 8(%r15)
	movl $24, %edi
	callq malloc
	movq %r15, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp .Lbb174
.Lbb172:
	movq %r13, %rdi
	movq %rdx, %r13
	movq %rax, %rbx
	movq %r12, %r14
	movq %rcx, %r12
	callq compiler_typesystem_types_type_to_string
	movq %r15, %rcx
	movq %rax, -72(%rbp)
	movq -56(%rbp), %r15
	movq %rcx, %rdi
	callq compiler_typesystem_types_type_to_string
	movq %rax, -64(%rbp)
	movl $32, %edi
	callq malloc
	xchgq %rax, %r15
	movq -64(%rbp), %rcx
	movq -72(%rbp), %rdx
	movq $19, (%r15)
	movq %rdx, 8(%r15)
	movq %rcx, 16(%r15)
	movq %rax, 24(%r15)
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
.Lbb174:
	movq %rax, (%r12)
	jmp .Lbb177
.Lbb175:
	movq %rax, %rbx
	movq %r15, %r14
	movq %rcx, %r15
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r13
	movq %r14, %rdi
	callq donna_list_map
	movq %r13, %rdi
	movq %rax, -80(%rbp)
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %r14
	movq %r12, %rax
	movq %rcx, %r15
	movq -80(%rbp), %rcx
	movq $7, (%r14)
	movq %rcx, 8(%r14)
	movq %r15, 16(%r14)
	movq %rdx, %r13
	movq %r14, %rdx
	movq %rdi, %rsi
	movq %rdi, %r12
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %r12, %rdi
	movq %rax, -88(%rbp)
	movq %rdi, %r12
	movl $64, %edi
	callq malloc
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rdi
	movq %rax, %r15
	movq %rbx, %rax
	movq -96(%rbp), %r12
	movq -104(%rbp), %rbx
	movq -88(%rbp), %r13
	movq -112(%rbp), %rsi
	movq $0, (%r15)
	movq %rdi, 8(%r15)
	movq %rsi, 16(%r15)
	movq %rdx, 24(%r15)
	movq %rcx, 32(%r15)
	movq %rax, 40(%r15)
	leaq donna_option_None(%rip), %rax
	movq %rax, 48(%r15)
	movq %r14, 56(%r15)
	movl $16, %edi
	callq malloc
	movq %rax, %r14
	movq $1, (%r14)
	movq %r15, 8(%r14)
	movl $24, %edi
	callq malloc
	movq %r14, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
.Lbb177:
	movq %rax, (%rbx)
	jmp .Lbb186
.Lbb178:
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
	jmp .Lbb186
.Lbb180:
	movq %rbx, %rdi
	movq 8(%rax), %rsi
	movq 16(%rax), %rdx
	movq %rdx, -136(%rbp)
	movq %rdi, %r12
	movq 24(%rax), %rdi
	movq 32(%rax), %rbx
	movq 40(%rax), %r14
	movq 48(%rax), %rax
	movq %rax, -120(%rbp)
	movq %rsi, %r13
	movq %r12, %rsi
	callq compiler_typesystem_checker_build_param_pairs
	movq %r14, %rcx
	movq %r12, %rdi
	movq %rax, %r15
	movq %rbx, %rax
	movq %r15, -144(%rbp)
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r14
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb183
	movq %rdi, %r12
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r15, %rcx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, (%rbx)
	jmp .Lbb185
.Lbb183:
	movq %r15, %rcx
	movq %r13, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, (%rbx)
	leaq compiler_typesystem_types_TNil(%rip), %rax
.Lbb185:
	movq %rax, %rbx
	movq %rsi, %r15
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %rdi, %r12
	movq %rcx, %rdi
	callq donna_list_map
	movq %r12, %rdi
	movq %rax, %r13
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq $7, (%r12)
	movq %r13, 8(%r12)
	movq %rbx, 16(%r12)
	movq %r12, %rdx
	movq %rsi, %r13
	callq compiler_typesystem_env_env_bind
	movq %rax, -128(%rbp)
	movl $24, %edi
	callq malloc
	movq %rax, %r15
	movq $0, (%r15)
	leaq str901(%rip), %rax
	movq %rax, 8(%r15)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 16(%r15)
	movl $16, %edi
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq -120(%rbp), %rax
	movq %rcx, (%r14)
	movq %rax, 8(%r14)
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movl $64, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq %rbx, %rax
	movq -128(%rbp), %rbx
	movq -144(%rbp), %rcx
	movq -136(%rbp), %rdx
	movq $0, (%r13)
	movq %rsi, 8(%r13)
	movq %rdx, 16(%r13)
	movq %rcx, 24(%r13)
	movq %rax, 32(%r13)
	movq %r15, 40(%r13)
	movq %r14, 48(%r13)
	movq %r12, 56(%r13)
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r13, 8(%r12)
	movl $24, %edi
	callq malloc
	movq %r12, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb186:
	movq %rbp, %rsp
	subq $192, %rsp
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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb194
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -16(%rbp)
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb191
	movq %rdi, %r12
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r12, %rdi
	movq %rax, %r12
	movq %r12, (%r13)
	movq %r14, %rsi
	movq %r12, %r14
	jmp .Lbb193
.Lbb191:
	movq %r13, %r12
	movq %rdi, %rbx
	movq %r14, %rdi
	callq compiler_typesystem_env_env_next_var
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %r14, %rsi
	movq %rbx, %rdi
	movq %rax, %r14
	movq -16(%rbp), %rbx
	movq $9, (%r14)
	movq %r13, 8(%r14)
	movq %r14, (%r12)
.Lbb193:
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
	jmp .Lbb195
.Lbb194:
	leaq donna_nil(%rip), %rax
.Lbb195:
	movq %rbp, %rsp
	subq $64, %rsp
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
	jz .Lbb198
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
.Lbb198:
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
	subq $232, %rsp
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
	jnz .Lbb337
	cmpq $1, %rax
	jz .Lbb335
	cmpq $2, %rax
	jz .Lbb333
	cmpq $3, %rax
	jz .Lbb331
	cmpq $4, %rax
	jz .Lbb327
	cmpq $5, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb305
	cmpq $9, %rax
	jz .Lbb290
	cmpq $10, %rax
	jz .Lbb280
	cmpq $11, %rax
	jz .Lbb271
	cmpq $14, %rax
	jz .Lbb264
	cmpq $12, %rax
	jz .Lbb258
	cmpq $6, %rax
	jz .Lbb255
	cmpq $7, %rax
	jz .Lbb244
	cmpq $8, %rax
	jz .Lbb230
	cmpq $13, %rax
	jz .Lbb227
	cmpq $16, %rax
	jz .Lbb224
	cmpq $15, %rax
	jz .Lbb221
	cmpq $17, %rax
	jz .Lbb218
	movq %rsi, %rdi
	callq compiler_typesystem_env_fresh_var
	movq (%rax), %rbx
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq $17, (%r13)
	movq %rbx, 8(%r13)
	movl $16, %edi
	callq malloc
	movq %rax, %rbx
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb339
.Lbb218:
	movq 8(%rdi), %rdi
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb220
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %rdi
	callq compiler_typesystem_env_fresh_var
	movq (%rax), %r12
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r14
	movq $16, (%r14)
	movq %r15, 8(%r14)
	movq %r12, 16(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb220:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb221:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r12
	callq compiler_typesystem_checker_build_param_pairs
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %r13, %rdi
	callq compiler_typesystem_checker_bind_param_pairs
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb223
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq %r15, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rsi
	movq %rax, %r14
	movq %rsi, %r12
	leaq compiler_typesystem_checker_pair_snd(%rip), %rsi
	movq %r13, %rdi
	callq donna_list_map
	movq %rax, -8(%rbp)
	movl $24, %edi
	callq malloc
	xchgq %rax, %r14
	movq -8(%rbp), %rcx
	movq $7, (%r14)
	movq %rcx, 8(%r14)
	movq %rax, 16(%r14)
	movl $32, %edi
	callq malloc
	xchgq %rax, %r13
	movq $15, (%r13)
	movq %rax, 8(%r13)
	movq %r15, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq %r13, (%r12)
	movq %rsi, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb223:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb224:
	movq 8(%rdi), %rdi
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb226
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r14
	movq $14, (%r14)
	movq %r12, 8(%r14)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 16(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb226:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb227:
	movq 8(%rdi), %rdi
	leaq compiler_typesystem_types_TNil(%rip), %rcx
	leaq donna_nil(%rip), %rdx
	movq %rsi, %r12
	callq compiler_typesystem_checker_check_stmts
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb229
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $13, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq %r13, (%r12)
	movq %rsi, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb229:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb230:
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
	jnz .Lbb243
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb241
	movq 8(%rax), %rdx
	movq (%rdx), %rax
	movq 8(%rdx), %r14
	movq %r14, -16(%rbp)
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rcx), %rdx
	cmpq $1, %rdx
	movq %rcx, %r15
	setz %cl
	movzbq %cl, %rcx
	movq %rax, %r14
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz .Lbb235
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb237
.Lbb235:
	movq $1, (%rax)
	movl $1, %eax
.Lbb237:
	cmpl $0, %eax
	jnz .Lbb239
	movq %r14, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, (%r13)
	jmp .Lbb240
.Lbb239:
	movq 8(%r15), %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, (%r13)
.Lbb240:
	movq %rax, %r13
	movl $16, %edi
	callq malloc
	xchgq %rax, %r13
	movq $5, (%r13)
	movq %rax, 8(%r13)
	movl $32, %edi
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %r14, %rax
	movq -16(%rbp), %r14
	movq $12, (%r15)
	movq %rcx, 8(%r15)
	movq %rax, 16(%r15)
	movq %r13, 24(%r15)
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb242
.Lbb241:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb242:
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb243:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb244:
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
	jnz .Lbb254
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r15), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz .Lbb248
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb250
.Lbb248:
	movq $1, (%rax)
	movl $1, %eax
.Lbb250:
	cmpl $0, %eax
	jnz .Lbb252
	movq %r13, %rdi
	callq compiler_typesystem_env_fresh_var
	movq (%rax), %r14
	movq %r14, (%r12)
	jmp .Lbb253
.Lbb252:
	movq 8(%r15), %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %r14
	movq %r14, (%r12)
.Lbb253:
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq $5, (%r12)
	movq %r14, 8(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %r14
	movq $11, (%r14)
	movq %r15, 8(%r14)
	movq %r12, 16(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb254:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb255:
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
	jnz .Lbb257
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r13
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rsi
	movq %r15, %rdi
	callq donna_list_map
	movq %rax, %r14
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	movl $24, %edi
	callq malloc
	movq %rax, %r14
	movq $10, (%r14)
	movq %r15, 8(%r14)
	movq %r12, 16(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb257:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb258:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq %rsi, %r15
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb263
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %r14
	movq %rdi, %r13
	movq %r12, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rdi
	movq %rax, %rdx
	movq %r14, %rsi
	callq compiler_typesystem_checker_infer_clauses
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r15
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb261
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %rax
	movq %rax, -24(%rbp)
	movl $32, %edi
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq -24(%rbp), %rax
	movq $9, (%r15)
	movq %rcx, 8(%r15)
	movq %r13, 16(%r15)
	movq %rax, 24(%r15)
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb262
.Lbb261:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb262:
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb263:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb264:
	movq %rsi, %r15
	movq 8(%rdi), %r14
	movq 16(%rdi), %rax
	movq 24(%rdi), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r13
	movq (%rax), %rax
	cmpq $9, %rax
	jz .Lbb268
	movl $24, %edi
	callq malloc
	movq %r14, %rcx
	xchgq %rax, %r13
	movq $1, (%r13)
	movq %rcx, 8(%r13)
	movq %rax, %r14
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $32, %edi
	callq malloc
	movq %rax, %rdi
	movq %r14, %rax
	movq $9, (%rdi)
	movq %rax, 8(%rdi)
	movq %r13, 16(%rdi)
	movq %r12, 24(%rdi)
	movq %rdi, (%rbx)
	movq %r15, %rsi
	jmp .Lbb270
.Lbb268:
	movq %r13, %rax
	movq %r14, %r13
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	movq 24(%rax), %rax
	movq %rax, -32(%rbp)
	movl $24, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq %r12, %rax
	movq -32(%rbp), %r12
	movq $1, (%r13)
	movq %rcx, 8(%r13)
	movq %rax, 16(%r13)
	movl $32, %edi
	callq malloc
	movq %r15, %rsi
	movq %rax, %rdi
	movq $9, (%rdi)
	movq %r14, 8(%rdi)
	movq %r13, 16(%rdi)
	movq %r12, 24(%rdi)
	movq %rdi, (%rbx)
.Lbb270:
	callq compiler_typesystem_checker_infer_expr
	jmp .Lbb339
.Lbb271:
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	callq compiler_typesystem_checker_infer_expr
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb278
	movq 8(%rcx), %rcx
	movq (%rcx), %r15
	movq 8(%rcx), %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb275
	leaq compiler_typesystem_types_TBool(%rip), %rcx
	movq %rcx, (%r12)
	movq %rax, %r14
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, %r12
	jmp .Lbb277
.Lbb275:
	movq %rax, %r14
	movq %r15, %rdi
	callq compiler_typesystem_types_typed_expr_type
	xchgq %rax, %r12
	movq %r12, (%rax)
.Lbb277:
	movl $32, %edi
	callq malloc
	xchgq %rax, %r14
	movq $8, (%r14)
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movq %r12, 24(%r14)
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb278:
	movq %rcx, %rax
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb280:
	movq 8(%rdi), %r12
	movq %rdi, %rax
	movq 16(%rdi), %rdi
	movq 24(%rax), %rbx
	movq 32(%rax), %rcx
	movq %rcx, -40(%rbp)
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb289
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq %rsi, %r13
	movq 8(%rax), %rsi
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -48(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb287
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r12
	movq %r12, -64(%rbp)
	movq %r14, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %r12
	movq %r15, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rcx
	movq %r12, %rsi
	movq %rax, %rdx
	movq %rcx, %r15
	movq -40(%rbp), %rcx
	movq %rsi, %r12
	movq %r13, %rdi
	callq compiler_typesystem_checker_check_binop_types
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r12, %rsi
	movq -48(%rbp), %r12
	movq %rcx, %r15
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -72(%rbp)
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz .Lbb284
	movq %r13, %rdi
	callq compiler_typesystem_checker_binop_result_type
	movq %rax, -56(%rbp)
	movl $40, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq -72(%rbp), %r13
	movq %rax, %r14
	movq -56(%rbp), %rax
	movq -64(%rbp), %r15
	movq $7, (%r14)
	movq %rsi, 8(%r14)
	movq %rdx, 16(%r14)
	movq %rcx, 24(%r14)
	movq %rax, 32(%r14)
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
	jmp .Lbb286
.Lbb284:
	movq %rcx, %r13
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
.Lbb286:
	movq %rax, (%r12)
	jmp .Lbb288
.Lbb287:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb288:
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb289:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb290:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	movq 24(%rax), %r15
	movq %r15, -144(%rbp)
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -104(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb304
	movq 8(%rax), %rax
	movq (%rax), %rdx
	movq 8(%rax), %rsi
	movq %rdx, %r12
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_infer_exprs
	movq %rbx, %r14
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -96(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb301
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r13
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rsi
	movq %r15, %rdi
	callq donna_list_map
	movq %rax, %rdi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r14, %rcx
	movq %r12, %rdx
	movq -96(%rbp), %r12
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -128(%rbp)
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $7, %rdx
	jz .Lbb295
	movq %rcx, %rbx
	movq %r13, %rdi
	callq compiler_typesystem_env_fresh_var
	movq (%rax), %rax
	movq %rax, -80(%rbp)
	movl $32, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rdx
	movq %rax, %r15
	movq %r13, %rax
	movq -128(%rbp), %r14
	movq %rax, %r13
	movq -80(%rbp), %rax
	movq $6, (%r15)
	movq %rdx, 8(%r15)
	movq %rcx, 16(%r15)
	movq %rax, 24(%r15)
	movl $16, %edi
	callq malloc
	xchgq %rax, %r13
	movq %r15, (%r13)
	movq %rax, 8(%r13)
	movl $16, %edi
	callq malloc
	movq %r14, %rcx
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%rcx)
	jmp .Lbb300
.Lbb295:
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	movq %rax, -112(%rbp)
	movq %rdi, %r12
	callq donna_list_length
	movq %r12, %rdi
	movq %rax, -88(%rbp)
	movq %rdi, %r12
	movq %rbx, %rdi
	callq donna_list_length
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rbx, %rax
	movq %rcx, %r15
	movq -128(%rbp), %rcx
	movq -96(%rbp), %r12
	movq -104(%rbp), %rbx
	movq -88(%rbp), %r8
	cmpq %rsi, %r8
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -136(%rbp)
	cmpq $0, %rsi
	jz .Lbb297
	movq %rdx, %r14
	leaq donna_nil(%rip), %rdx
	movq %rax, %rsi
	callq compiler_typesystem_checker_collect_all_bindings
	movq %rax, %rsi
	movq -112(%rbp), %rdi
	callq compiler_typesystem_checker_apply_subst
	movq %rax, -120(%rbp)
	movl $32, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rdx
	movq %rax, %r15
	movq %r13, %rax
	movq -128(%rbp), %r13
	movq %rax, %r14
	movq -120(%rbp), %rax
	movq $6, (%r15)
	movq %rdx, 8(%r15)
	movq %rcx, 16(%r15)
	movq %rax, 24(%r15)
	movl $16, %edi
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %r14, %rax
	movq -136(%rbp), %r14
	movq %rcx, (%r15)
	movq %rax, 8(%r15)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
	jmp .Lbb299
.Lbb297:
	movq %rcx, %r13
	movq %rax, %r15
	callq donna_list_length
	movq %r15, %rdi
	movq %rax, -160(%rbp)
	movq -144(%rbp), %r15
	callq donna_list_length
	movq %rax, -152(%rbp)
	movl $32, %edi
	callq malloc
	xchgq %rax, %r15
	movq -152(%rbp), %rcx
	movq -160(%rbp), %rdx
	movq $16, (%r15)
	movq %rdx, 8(%r15)
	movq %rcx, 16(%r15)
	movq %rax, 24(%r15)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
.Lbb299:
	movq %rax, (%r13)
.Lbb300:
	movq %rax, (%r12)
	jmp .Lbb303
.Lbb301:
	movq %rbx, %r12
	movq %r14, %rbx
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb303:
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb304:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb305:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rdx
	movq %rdx, %r15
	movq 24(%rax), %rdx
	movq %rdx, -176(%rbp)
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
	movq (%rax), %r14
	movq 8(%rax), %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -192(%rbp)
	movq (%r14), %rax
	cmpq $4, %rax
	jz .Lbb308
	movq %r13, %rdi
	callq compiler_typesystem_env_fresh_var
	movq (%rax), %r13
	movq 8(%rax), %rax
	movq %rax, -168(%rbp)
	movl $40, %edi
	callq malloc
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rax, %r15
	movq -168(%rbp), %r14
	movq $5, (%r15)
	movq %rsi, 8(%r15)
	movq %rdx, 16(%r15)
	leaq str1287(%rip), %rax
	movq %rax, 24(%r15)
	movq %r13, 32(%r15)
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb325
.Lbb308:
	movq %r14, %rsi
	xchgq %r13, %r15
	movq 8(%rsi), %r14
	movq %rsi, %r12
	movq %r14, %rsi
	movq %r15, %rdi
	callq compiler_typesystem_env_env_lookup_module
	movq %r13, %rdx
	movq %r12, %rsi
	movq -192(%rbp), %r12
	movq %rdx, %r13
	movq -176(%rbp), %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -224(%rbp)
	movq (%rax), %rdi
	cmpq $0, %rdi
	jz .Lbb322
	movq 8(%rax), %rdi
	movq %rdi, -184(%rbp)
	movq %rsi, %r12
	movq %r14, %rsi
	movq %r15, %rdi
	callq compiler_typesystem_env_env_lookup_alias
	movq %r13, %rdx
	movq %r12, %rsi
	movq -192(%rbp), %r12
	movq -184(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rsi, %r13
	movq (%rax), %rsi
	cmpq $1, %rsi
	jz .Lbb313
	movq %r14, (%rcx)
	movq %r14, -216(%rbp)
	movq %rdx, %r14
	jmp .Lbb316
.Lbb313:
	movq %rdx, %r14
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	movq %rax, -216(%rbp)
.Lbb316:
	callq compiler_typesystem_checker_iface_bindings
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	movq %r14, %rsi
	callq compiler_typesystem_checker_lookup_binding
	movq %r14, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -200(%rbp)
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz .Lbb319
	movq %r15, %rdi
	callq compiler_typesystem_env_fresh_var
	movq -200(%rbp), %rcx
	movq (%rax), %rax
	movq %rax, (%rcx)
	movq %rax, -208(%rbp)
	jmp .Lbb321
.Lbb319:
	movq 8(%rax), %rax
	movq %rax, (%rcx)
	movq %rax, -208(%rbp)
.Lbb321:
	movl $40, %edi
	callq malloc
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %r14
	movq -208(%rbp), %rax
	movq -216(%rbp), %rcx
	movq -224(%rbp), %r13
	movq $5, (%r14)
	movq %rsi, 8(%r14)
	movq %rdx, 16(%r14)
	movq %rcx, 24(%r14)
	movq %rax, 32(%r14)
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
	jmp .Lbb324
.Lbb322:
	movq %rcx, %r13
	movq %rdx, %r15
	movl $24, %edi
	callq malloc
	xchgq %rax, %r14
	movq $15, (%r14)
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
.Lbb324:
	movq %rax, (%r12)
.Lbb325:
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb326:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb339
.Lbb327:
	movq 8(%rdi), %r14
	movq %rsi, %rbx
	movq %r14, %rsi
	movq %rbx, %rdi
	callq compiler_typesystem_env_env_lookup
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb329
	movq %rbx, %rdi
	callq compiler_typesystem_env_fresh_var
	movq (%rax), %r13
	movq %r13, (%r12)
	jmp .Lbb330
.Lbb329:
	movq 8(%rax), %r13
	movq %r13, (%r12)
.Lbb330:
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $4, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %rsi, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb339
.Lbb331:
	movq %rsi, %rbx
	movq 8(%rdi), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $3, (%r12)
	movq %r13, 8(%r12)
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, 16(%r12)
	movl $16, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %rsi, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb339
.Lbb333:
	movq %rsi, %rbx
	movq 8(%rdi), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $2, (%r12)
	movq %r13, 8(%r12)
	leaq compiler_typesystem_types_TString(%rip), %rax
	movq %rax, 16(%r12)
	movl $16, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %rsi, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb339
.Lbb335:
	movq %rsi, %rbx
	movq 8(%rdi), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r13, 8(%r12)
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	movq %rax, 16(%r12)
	movl $16, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %rsi, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb339
.Lbb337:
	movq %rsi, %rbx
	movq 8(%rdi), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $0, (%r12)
	movq %r13, 8(%r12)
	leaq compiler_typesystem_types_TInt(%rip), %rax
	movq %rax, 16(%r12)
	movl $16, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %rsi, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
.Lbb339:
	movq %rbp, %rsp
	subq $272, %rsp
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
	jz .Lbb344
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
	jnz .Lbb343
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
	jmp .Lbb346
.Lbb343:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb346
.Lbb344:
	movq %r12, %rdi
	movq %rsi, %rbx
	callq donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %rsi, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
.Lbb346:
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
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb349
	leaq compiler_typesystem_types_TNil(%rip), %r8
	leaq donna_nil(%rip), %rcx
	callq compiler_typesystem_checker_infer_clauses_loop
	jmp .Lbb350
.Lbb349:
	movl $16, %edi
	callq malloc
	movq %rax, %rbx
	leaq donna_nil(%rip), %rax
	movq %rax, (%rbx)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
.Lbb350:
	popq %rbx
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
	subq $72, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rcx, %rbx
	movq %rsi, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb361
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, -48(%rbp)
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -40(%rbp)
	movq 8(%rax), %r15
	movq 16(%rax), %rdi
	movq 24(%rax), %rax
	movq %rax, -16(%rbp)
	movq %rdx, %r14
	movq %r12, %rdx
	movq %r14, %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq compiler_typesystem_checker_bind_pattern_typed
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rsi, %r13
	callq compiler_typesystem_checker_infer_guard
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rcx, %r15
	movq -40(%rbp), %rcx
	movq %rdi, %rbx
	movq -16(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -64(%rbp)
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb358
	movq 8(%rax), %rax
	movq %rax, -24(%rbp)
	callq compiler_typesystem_checker_infer_expr
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -40(%rbp), %rbx
	movq %rcx, %r15
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -56(%rbp)
	movq %rsi, %r12
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb355
	movq 8(%rax), %rax
	movq (%rax), %rbx
	movq %rdi, %r14
	movq %rbx, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r14, %rdi
	movq %rax, -32(%rbp)
	movq %rdi, %r14
	movl $40, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rdi
	movq %rax, %r15
	movq -32(%rbp), %r14
	movq -24(%rbp), %rax
	movq $0, (%r15)
	movq %rcx, 8(%r15)
	movq %rax, 16(%r15)
	movq %rbx, 24(%r15)
	movq %r14, 32(%r15)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -56(%rbp), %r13
	movq -64(%rbp), %r12
	movq -40(%rbp), %rbx
	movq %rdi, %r14
	movq -48(%rbp), %rdi
	movq $1, (%rcx)
	movq %r15, 8(%rcx)
	movq %r14, 16(%rcx)
	callq compiler_typesystem_checker_infer_clauses_loop
	movq %rax, (%r13)
	jmp .Lbb357
.Lbb355:
	movq %rcx, %r13
	movq %r14, %r12
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
.Lbb357:
	movq %rax, (%r12)
	jmp .Lbb360
.Lbb358:
	movq %r14, %r12
	movq %rcx, %rbx
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb360:
	movq %rax, (%rbx)
	jmp .Lbb363
.Lbb361:
	movq %rbx, %rdi
	movq %r8, %rbx
	callq donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rbx, %r8
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %r8, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
.Lbb363:
	movq %rbp, %rsp
	subq $112, %rsp
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
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb368
	movq 8(%rdi), %rdi
	callq compiler_typesystem_checker_infer_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb367
	movq 8(%rax), %rax
	movq (%rax), %r13
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb369
.Lbb367:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb369
.Lbb368:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	leaq donna_option_None(%rip), %rcx
	movq %rcx, 8(%rax)
.Lbb369:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
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
	movq %rcx, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb374
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
	jnz .Lbb373
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
	jmp .Lbb376
.Lbb373:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb376
.Lbb374:
	movq %r12, %rdi
	callq donna_list_reverse
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	movq %r12, (%rbx)
	movq %rcx, 8(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
.Lbb376:
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
	jnz .Lbb385
	cmpq $1, %rax
	jz .Lbb382
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
	jnz .Lbb381
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq %rdi, %r13
	movq %r12, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq $2, (%r14)
	movq %r13, 8(%r14)
	movq %r12, 16(%r14)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq %rax, %r12
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb381:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb382:
	movq 8(%rdi), %r15
	movq 16(%rdi), %rdi
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
	jnz .Lbb384
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq %rdi, %r13
	movq %r12, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdi, %rdx
	movq %r15, %rdi
	callq compiler_typesystem_checker_bind_pattern_typed
	movq %rax, %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r14
	movq $1, (%r14)
	movq %r15, 8(%r14)
	movq %r12, 16(%r14)
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq %r14, (%r12)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb384:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb385:
	movq %rbx, %r12
	movq 8(%rdi), %r15
	movq 16(%rdi), %rbx
	movq 24(%rdi), %rdi
	movq %r12, %rsi
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rdi
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
	movq (%rcx), %r12
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb389
	movq %rdi, %r14
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %r14, %rdi
	movq %rax, %r14
	movq %r14, (%r13)
	jmp .Lbb390
.Lbb389:
	movq %rdi, %r14
	movq %r12, %rdi
	callq compiler_typesystem_types_typed_expr_type
	movq %r14, %rdi
	movq %rax, %r14
	movq %r14, (%r13)
.Lbb390:
	movq %r14, %rdx
	movq %r15, %rsi
	callq compiler_typesystem_env_env_bind
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	xchgq %rax, %r15
	movq $0, (%r15)
	movq %rax, 8(%r15)
	movq %r14, 16(%r15)
	movq %r12, 24(%r15)
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq %r15, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb393
.Lbb391:
	movq %rcx, %rax
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
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
	movq (%rdi), %rcx
	cmpq $2, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb429
	cmpq $0, %rcx
	jz .Lbb427
	cmpq $1, %rcx
	jz .Lbb425
	cmpq $3, %rcx
	jz .Lbb423
	cmpq $4, %rcx
	jz .Lbb421
	cmpq $5, %rcx
	jz .Lbb419
	cmpq $6, %rcx
	jz .Lbb417
	cmpq $7, %rcx
	jz .Lbb415
	cmpq $8, %rcx
	jz .Lbb404
	movq 24(%rdi), %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	jmp .Lbb431
.Lbb404:
	movq %rdi, %rcx
	movq 8(%rdi), %rdi
	movq 16(%rcx), %r12
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r13
	movq (%r12), %rax
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
	movq 8(%r12), %rdi
	leaq str2378(%rip), %rsi
	callq strcmp
	movq %rax, %rcx
	movq %r13, %rax
	cmpq $0, %rcx
	movq %rax, %r13
	setz %al
	movzbq %al, %rax
	andq %r15, %rax
	movq %rax, (%r14)
.Lbb409:
	cmpl $0, %eax
	jnz .Lbb411
	movq 8(%r12), %r14
	movq %r13, %rdi
	callq compiler_typesystem_env_env_next_var
	movq %rax, %r15
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq $9, (%r12)
	movq %r15, 8(%r12)
	movl $16, %edi
	callq malloc
	movq %r14, %rsi
	movq %rax, %rdx
	movq %r13, %rax
	movq $5, (%rdx)
	movq %r12, 8(%rdx)
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rax, (%rbx)
	jmp .Lbb431
.Lbb411:
	movq %r13, %rax
	movq %rax, (%rbx)
	jmp .Lbb431
.Lbb413:
	movq %r13, %rax
	movq %rax, (%rbx)
	jmp .Lbb431
.Lbb415:
	movq %rax, %r12
	movq 8(%rdi), %rdi
	movq %r12, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	jmp .Lbb431
.Lbb417:
	movq %rax, %r12
	movq %r12, %rax
	jmp .Lbb431
.Lbb419:
	movq %rax, %r12
	movq %r12, %rax
	jmp .Lbb431
.Lbb421:
	movq %rax, %r12
	movq %r12, %rax
	jmp .Lbb431
.Lbb423:
	movq %rax, %r12
	movq %r12, %rax
	jmp .Lbb431
.Lbb425:
	movq %rax, %r12
	movq %r12, %rax
	jmp .Lbb431
.Lbb427:
	movq %rax, %r12
	movq %r12, %rax
	jmp .Lbb431
.Lbb429:
	movq %rax, %r12
	movq 8(%rdi), %r13
	movq %r12, %rdi
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %rdx
	movq %r12, %rax
	movq $9, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
.Lbb431:
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
compiler_typesystem_checker_bind_pattern_typed:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rax
	movq %rsi, %rdx
	movq %rax, %rbx
	movq (%rdi), %rax
	cmpq $2, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb470
	cmpq $0, %rax
	jz .Lbb469
	cmpq $1, %rax
	jz .Lbb468
	cmpq $3, %rax
	jz .Lbb467
	cmpq $4, %rax
	jz .Lbb466
	cmpq $5, %rax
	jz .Lbb465
	cmpq $6, %rax
	jz .Lbb464
	cmpq $7, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb460
	cmpq $8, %rax
	jz .Lbb444
	movq 24(%rdi), %r12
	callq compiler_typesystem_checker_pattern_ctor_key
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdi, %r12
	movq %rbx, %rdi
	callq compiler_typesystem_env_env_lookup_ctor
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb443
	movq 8(%rcx), %rcx
	movq 8(%rcx), %rsi
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_typed_list
	movq %rax, (%rbx)
	jmp .Lbb472
.Lbb443:
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	movq %rax, (%rbx)
	jmp .Lbb472
.Lbb444:
	movq %rbx, %rax
	movq %rdi, %rcx
	movq 8(%rdi), %rdi
	movq 16(%rcx), %r14
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%rdx), %rax
	cmpq $5, %rax
	jz .Lbb447
	movq %rdi, %r13
	movq %r12, %rdi
	callq compiler_typesystem_env_env_next_var
	movq %r13, %rdi
	movq %rax, %r13
	movq %rdi, %r15
	movl $16, %edi
	callq malloc
	movq %r15, %rdi
	xchgq %rax, %r12
	movq $9, (%r12)
	movq %r13, 8(%r12)
	movq %r12, (%rbx)
	jmp .Lbb449
.Lbb447:
	movq %r12, %rax
	movq 8(%rdx), %r12
	movq %r12, (%rbx)
.Lbb449:
	movq %rax, %rdx
	movq %r12, %rsi
	callq compiler_typesystem_checker_bind_pattern_typed_repeated
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r13
	movq (%r14), %rax
	cmpq $0, %rax
	jz .Lbb458
	cmpq $1, %rax
	setz %r15b
	movzbq %r15b, %r15
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -16(%rbp)
	cmpl $0, %r15d
	jnz .Lbb453
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb454
.Lbb453:
	movq 8(%r14), %rdi
	leaq str2519(%rip), %rsi
	callq strcmp
	movq %rax, %rdx
	movq %r13, %rax
	movq -16(%rbp), %rcx
	cmpq $0, %rdx
	movq %rax, %r13
	setz %al
	movzbq %al, %rax
	andq %r15, %rax
	movq %rax, (%rcx)
.Lbb454:
	cmpl $0, %eax
	jnz .Lbb456
	movq 8(%r14), %r14
	movl $16, %edi
	callq malloc
	movq %r14, %rsi
	movq %rax, %rdx
	movq %r13, %rax
	movq $5, (%rdx)
	movq %r12, 8(%rdx)
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
	movq %rax, (%rbx)
	jmp .Lbb472
.Lbb456:
	movq %r13, %rax
	movq %rax, (%rbx)
	jmp .Lbb472
.Lbb458:
	movq %r13, %rax
	movq %rax, (%rbx)
	jmp .Lbb472
.Lbb460:
	movq %rbx, %rax
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdx), %rcx
	cmpq $6, %rcx
	jz .Lbb463
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	movq %rax, (%rbx)
	jmp .Lbb472
.Lbb463:
	movq 8(%rdx), %rsi
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_typed_list
	movq %rax, (%rbx)
	jmp .Lbb472
.Lbb464:
	movq %rbx, %rax
	jmp .Lbb472
.Lbb465:
	movq %rbx, %rax
	jmp .Lbb472
.Lbb466:
	movq %rbx, %rax
	jmp .Lbb472
.Lbb467:
	movq %rbx, %rax
	jmp .Lbb472
.Lbb468:
	movq %rbx, %rax
	jmp .Lbb472
.Lbb469:
	movq %rbx, %rax
	jmp .Lbb472
.Lbb470:
	movq %rbx, %rax
	movq 8(%rdi), %rsi
	movq %rax, %rdi
	callq compiler_typesystem_env_env_bind
.Lbb472:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_bind_pattern_typed, @function
.size compiler_typesystem_checker_bind_pattern_typed, .-compiler_typesystem_checker_bind_pattern_typed
/* end function compiler_typesystem_checker_bind_pattern_typed */

.text
.balign 16
compiler_typesystem_checker_pattern_ctor_key:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rax
	movq (%rax), %rsi
	cmpq $9, %rsi
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb475
	movl $0, %edx
	jmp .Lbb476
.Lbb475:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq %rcx, %rdx
.Lbb476:
	cmpl $0, %edx
	jnz .Lbb484
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $9, %rsi
	jz .Lbb480
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb481
.Lbb480:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq %rsi, %rcx
	movq %rcx, (%rdx)
.Lbb481:
	cmpl $0, %ecx
	jnz .Lbb483
	leaq str2613(%rip), %rax
	jmp .Lbb485
.Lbb483:
	movq 16(%rax), %rax
	jmp .Lbb485
.Lbb484:
	movq 8(%rax), %rcx
	movq 8(%rcx), %rdi
	movq 16(%rax), %rsi
	movq %rsi, %rbx
	leaq str2588(%rip), %rsi
	callq __rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
.Lbb485:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_pattern_ctor_key, @function
.size compiler_typesystem_checker_pattern_ctor_key, .-compiler_typesystem_checker_pattern_ctor_key
/* end function compiler_typesystem_checker_pattern_ctor_key */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_typed_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %rax
	movq %rsi, %rcx
	movq (%rdi), %rdx
	cmpq $0, %rdx
	jz .Lbb491
	movq 8(%rdi), %r8
	movq 16(%rdi), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb490
	movq %r8, %rdi
	movq 8(%rcx), %rsi
	movq 16(%rcx), %r13
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_typed
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_typed_list
	movq %rax, (%rbx)
	jmp .Lbb491
.Lbb490:
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
	movq %rax, (%rbx)
.Lbb491:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_bind_pattern_typed_list, @function
.size compiler_typesystem_checker_bind_pattern_typed_list, .-compiler_typesystem_checker_bind_pattern_typed_list
/* end function compiler_typesystem_checker_bind_pattern_typed_list */

.text
.balign 16
compiler_typesystem_checker_bind_pattern_typed_repeated:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdx, %rax
	movq %rdi, %rcx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb494
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rbx
	movq %rax, %rdx
	movq %rsi, %r12
	callq compiler_typesystem_checker_bind_pattern_typed
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_typed_repeated
.Lbb494:
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_checker_bind_pattern_typed_repeated, @function
.size compiler_typesystem_checker_bind_pattern_typed_repeated, .-compiler_typesystem_checker_bind_pattern_typed_repeated
/* end function compiler_typesystem_checker_bind_pattern_typed_repeated */

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
	jz .Lbb497
	movq 8(%rcx), %rdi
	movq 16(%rcx), %rbx
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_bind_pattern_list
.Lbb497:
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
	jnz .Lbb500
	movl $0, %edx
	jmp .Lbb501
.Lbb500:
	movq %rdi, %r12
	movq 8(%rdi), %rdi
	leaq str2676(%rip), %rsi
	callq strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rbx, %rdx
	andq %rax, %rdx
.Lbb501:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb504
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb505
.Lbb504:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb505:
	cmpl $0, %eax
	jnz .Lbb568
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb509
	movq $0, (%rbx)
	movl $0, %edx
	jmp .Lbb510
.Lbb509:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2707(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
.Lbb510:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb513
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb514
.Lbb513:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb514:
	cmpl $0, %eax
	jnz .Lbb567
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb518
	movq $0, (%rbx)
	movl $0, %edx
	jmp .Lbb519
.Lbb518:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2738(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
.Lbb519:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb522
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb523
.Lbb522:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb523:
	cmpl $0, %eax
	jnz .Lbb566
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb527
	movq $0, (%rbx)
	movl $0, %edx
	jmp .Lbb528
.Lbb527:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2769(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
.Lbb528:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb531
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb532
.Lbb531:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb532:
	cmpl $0, %eax
	jnz .Lbb565
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb536
	movq $0, (%rbx)
	movl $0, %edx
	jmp .Lbb537
.Lbb536:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2800(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	movq %rax, %rdx
	andq %r12, %rdx
	movq %rdx, (%rbx)
.Lbb537:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb540
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb541
.Lbb540:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb541:
	cmpl $0, %eax
	jnz .Lbb564
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz .Lbb545
	movq $0, (%rbx)
	movl $0, %eax
	jmp .Lbb546
.Lbb545:
	movq %rdi, %r13
	movq 8(%rdi), %rdi
	leaq str2831(%rip), %rsi
	callq strcmp
	movq %r13, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r12, %rax
	movq %rax, (%rbx)
.Lbb546:
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb549
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb554
.Lbb549:
	movq 16(%rdi), %rdx
	movq (%rdx), %rsi
	cmpq $1, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz .Lbb552
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb553
.Lbb552:
	movq 16(%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb553:
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb554:
	cmpl $0, %eax
	jnz .Lbb563
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb559
	cmpq $1, %rax
	jz .Lbb558
	movq %rdi, %rbx
	movq 8(%rdi), %rdi
	movq 16(%rbx), %rbx
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq donna_list_map
	movq %rbx, %rdi
	movq %rax, %r12
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $7, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb569
.Lbb558:
	movq 8(%rdi), %rdi
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq donna_list_map
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq $6, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb569
.Lbb559:
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
	jz .Lbb561
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rsi
	callq donna_list_map
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r13, %rdi
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb569
.Lbb561:
	movq %r12, %rdi
	movl $0, %esi
	callq donna_string_char_at
	movq %rax, %r12
	movl $16, %edi
	callq malloc
	movq $9, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb569
.Lbb563:
	movq 16(%rdi), %rax
	movq 8(%rax), %rdi
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq $5, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb569
.Lbb564:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	jmp .Lbb569
.Lbb565:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb569
.Lbb566:
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp .Lbb569
.Lbb567:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb569
.Lbb568:
	leaq compiler_typesystem_types_TInt(%rip), %rax
.Lbb569:
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
	leaq str2925(%rip), %rsi
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
	jz .Lbb582
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz .Lbb578
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb579
.Lbb578:
	movq 16(%rdi), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb579:
	cmpl $0, %ecx
	jnz .Lbb581
	movq 16(%rdi), %rdi
	movq %rax, %rsi
	callq compiler_typesystem_checker_last_segment
	jmp .Lbb582
.Lbb581:
	movq 8(%rdi), %rax
.Lbb582:
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
	jz .Lbb587
	movq 8(%rdx), %rdi
	movq 16(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb586
	movq 8(%rcx), %rsi
	movq 16(%rcx), %r13
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_all_bindings
	movq %rax, (%rbx)
	jmp .Lbb587
.Lbb586:
	movq %rax, (%rbx)
.Lbb587:
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
	jnz .Lbb610
	cmpq $5, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb606
	cmpq $6, %rcx
	jz .Lbb603
	cmpq $7, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb600
	cmpq $8, %rcx
	jnz .Lbb615
	movq %rdi, %rcx
	movq 8(%rdi), %rdi
	movq 16(%rcx), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%rsi), %rax
	cmpq $8, %rax
	jz .Lbb596
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp .Lbb615
.Lbb596:
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
	jz .Lbb598
	movq %rax, (%r12)
	jmp .Lbb599
.Lbb598:
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%r12)
.Lbb599:
	movq %rax, (%rbx)
	jmp .Lbb615
.Lbb600:
	movq %rdi, %rcx
	movq 8(%rdi), %rdi
	movq 16(%rcx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rcx
	cmpq $7, %rcx
	jz .Lbb602
	movq %rax, (%rbx)
	jmp .Lbb615
.Lbb602:
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
	jmp .Lbb615
.Lbb603:
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rcx
	cmpq $6, %rcx
	jz .Lbb605
	movq %rax, (%rbx)
	jmp .Lbb615
.Lbb605:
	movq 8(%rsi), %rsi
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%rbx)
	jmp .Lbb615
.Lbb606:
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r12
	movq (%rsi), %rax
	cmpq $5, %rax
	jz .Lbb609
	movq %r12, (%rbx)
	movq %r12, %rax
	jmp .Lbb615
.Lbb609:
	movq 8(%rsi), %rsi
	movq %r12, %rdx
	callq compiler_typesystem_checker_collect_bindings
	movq %rax, (%rbx)
	jmp .Lbb615
.Lbb610:
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
	jz .Lbb613
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
	jmp .Lbb615
.Lbb613:
	movq %r12, %rax
	movq %rax, (%rbx)
.Lbb615:
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
	jz .Lbb620
	movq 8(%rdx), %rdi
	movq 16(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz .Lbb619
	movq 8(%rcx), %rsi
	movq 16(%rcx), %r13
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_bindings_list
	movq %rax, (%rbx)
	jmp .Lbb620
.Lbb619:
	movq %rax, (%rbx)
.Lbb620:
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
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb625
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	movq (%rcx), %rax
	movq 8(%rcx), %r12
	cmpq %rax, %rsi
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb624
	callq compiler_typesystem_checker_lookup_int_binding
	movq %rax, (%rbx)
	jmp .Lbb626
.Lbb624:
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb626
.Lbb625:
	leaq donna_option_None(%rip), %rax
.Lbb626:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
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
	jnz .Lbb637
	cmpq $5, %rcx
	jz .Lbb636
	cmpq $6, %rcx
	jz .Lbb635
	cmpq $7, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb633
	cmpq $8, %rcx
	jnz .Lbb642
	movq 8(%rax), %r12
	movq %rdi, %rbx
	movq 16(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_apply_subst_list
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $8, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb642
.Lbb633:
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rbx, %rsi
	callq compiler_typesystem_checker_apply_subst_list
	movq %r12, %rdi
	movq %rax, %r12
	movq %rbx, %rsi
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %rbx
	movl $24, %edi
	callq malloc
	movq $7, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb642
.Lbb635:
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_apply_subst_list
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq $6, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb642
.Lbb636:
	movq %rdi, %rbx
	movq 8(%rax), %rdi
	movq %rbx, %rsi
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq $5, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb642
.Lbb637:
	movq %rax, %rbx
	movq 8(%rbx), %rsi
	callq compiler_typesystem_checker_lookup_int_binding
	movq %rax, %rdx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	movq (%rdx), %rsi
	cmpq $1, %rsi
	jz .Lbb640
	movq %rax, (%rcx)
	jmp .Lbb642
.Lbb640:
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
.Lbb642:
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
	jz .Lbb645
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
	jmp .Lbb646
.Lbb645:
	leaq donna_nil(%rip), %rax
.Lbb646:
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rax
	movq %rdi, %rdx
	movq %rsi, %rdi
	movq (%rdx), %rdx
	cmpq $5, %rdx
	jz .Lbb721
	cmpq $6, %rdx
	jz .Lbb714
	cmpq $7, %rdx
	jz .Lbb707
	cmpq $8, %rdx
	jz .Lbb700
	cmpq $15, %rdx
	jz .Lbb693
	cmpq $16, %rdx
	jz .Lbb686
	cmpq $17, %rdx
	jz .Lbb679
	cmpq $18, %rdx
	jz .Lbb672
	cmpq $19, %rdx
	jz .Lbb665
	cmpq $20, %rdx
	jz .Lbb658
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	jmp .Lbb728
.Lbb658:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $3, %rcx
	jz .Lbb660
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3569(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb660:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $3, %rax
	jz .Lbb663
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3560(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb664
.Lbb663:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb664:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb665:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $3, %rcx
	jz .Lbb667
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3533(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb667:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $3, %rax
	jz .Lbb670
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3524(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb671
.Lbb670:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb671:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb672:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb674
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3497(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb674:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb677
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3488(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb678
.Lbb677:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb678:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb679:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb681
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3461(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb681:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb684
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3452(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb685
.Lbb684:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb685:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb686:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb688
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3425(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb688:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb691
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3416(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb692
.Lbb691:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb692:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb693:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb695
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3389(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb695:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb698
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3380(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb699
.Lbb698:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb699:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb700:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb702
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3353(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb702:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb705
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3344(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb706
.Lbb705:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb706:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb707:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb709
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3317(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb709:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb712
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3308(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb713
.Lbb712:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb713:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb714:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb716
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3281(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb716:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb719
	movq %rdi, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3272(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb720
.Lbb719:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb720:
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb721:
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	jz .Lbb723
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $13, (%r12)
	leaq str3245(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb728
.Lbb723:
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	jz .Lbb726
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq $13, (%r13)
	leaq str3236(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movq %rcx, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb727
.Lbb726:
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%r12)
.Lbb727:
	movq %rax, (%rbx)
.Lbb728:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
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
	jz .Lbb771
	cmpq $1, %rax
	jz .Lbb770
	cmpq $2, %rax
	jz .Lbb769
	cmpq $3, %rax
	jz .Lbb768
	cmpq $4, %rax
	jz .Lbb767
	cmpq $5, %rax
	jz .Lbb766
	cmpq $6, %rax
	jz .Lbb765
	cmpq $7, %rax
	jz .Lbb764
	cmpq $8, %rax
	jz .Lbb763
	cmpq $9, %rax
	jz .Lbb762
	cmpq $10, %rax
	jz .Lbb761
	cmpq $11, %rax
	jz .Lbb760
	cmpq $12, %rax
	jz .Lbb759
	cmpq $13, %rax
	jz .Lbb758
	cmpq $14, %rax
	jz .Lbb757
	cmpq $15, %rax
	jz .Lbb756
	cmpq $16, %rax
	jz .Lbb755
	cmpq $17, %rax
	jz .Lbb754
	cmpq $18, %rax
	jz .Lbb753
	cmpq $19, %rax
	jz .Lbb752
	cmpq $20, %rax
	jz .Lbb751
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp .Lbb772
.Lbb751:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb752:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb753:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb754:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb755:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb756:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb757:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb758:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb759:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb760:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb761:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb762:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp .Lbb772
.Lbb763:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb772
.Lbb764:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb772
.Lbb765:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb772
.Lbb766:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp .Lbb772
.Lbb767:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp .Lbb772
.Lbb768:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp .Lbb772
.Lbb769:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp .Lbb772
.Lbb770:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp .Lbb772
.Lbb771:
	leaq compiler_typesystem_types_TInt(%rip), %rax
.Lbb772:
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
	leaq str3668(%rip), %rsi
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
	jz .Lbb779
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
	jz .Lbb778
	callq compiler_typesystem_checker_lookup_binding
	movq %rax, (%rbx)
	jmp .Lbb780
.Lbb778:
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb780
.Lbb779:
	leaq donna_option_None(%rip), %rax
.Lbb780:
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
	jz .Lbb786
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
	jz .Lbb784
	callq compiler_typesystem_checker_pub_fns_to_bindings
	movq %rax, (%r12)
	jmp .Lbb785
.Lbb784:
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
.Lbb785:
	movq %rax, (%rbx)
	jmp .Lbb787
.Lbb786:
	leaq donna_nil(%rip), %rax
.Lbb787:
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
	jz .Lbb793
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
	jz .Lbb791
	callq compiler_typesystem_checker_pub_consts_to_bindings
	movq %rax, (%r12)
	jmp .Lbb792
.Lbb791:
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
.Lbb792:
	movq %rax, (%rbx)
	jmp .Lbb794
.Lbb793:
	leaq donna_nil(%rip), %rax
.Lbb794:
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
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb801
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq 8(%rcx), %r14
	movq 16(%rcx), %rax
	movq %rdi, %r13
	movq 24(%rcx), %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz .Lbb798
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $8, (%rsi)
	movq %r14, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	callq compiler_typesystem_checker_ctors_to_bindings
	movq %r13, %rdi
	movq %rax, %r13
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_list_append
	movq %rax, (%r12)
	jmp .Lbb800
.Lbb798:
	movq %r13, %rdi
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	movq %rax, (%r12)
.Lbb800:
	movq %rax, (%rbx)
	jmp .Lbb802
.Lbb801:
	leaq donna_nil(%rip), %rax
.Lbb802:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb811
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -16(%rbp)
	movq 8(%rax), %r14
	movq 16(%rax), %r15
	movq %rdi, %r13
	movq %r15, %rdi
	callq donna_list_is_empty
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz .Lbb807
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r12
	movq -16(%rbp), %rbx
	movq $7, (%r12)
	movq %r15, 8(%r12)
	movq %rsi, 16(%r12)
	movq %r12, (%r13)
	movq %r12, %r13
	jmp .Lbb810
.Lbb807:
	movq %r12, %rsi
	movq %r13, %r12
	movq %rsi, (%r12)
	movq %rsi, %r13
.Lbb810:
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
	jmp .Lbb812
.Lbb811:
	leaq donna_nil(%rip), %rax
.Lbb812:
	movq %rbp, %rsp
	subq $64, %rsp
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
	jz .Lbb819
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
	jz .Lbb816
	callq compiler_typesystem_checker_ctors_to_info
	movq %r13, %rdi
	movq %rax, %r13
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %r13, %rdi
	movq %rax, %rsi
	callq donna_list_append
	movq %rax, (%r12)
	jmp .Lbb818
.Lbb816:
	movq %r13, %rdi
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %rax, (%r12)
.Lbb818:
	movq %rax, (%rbx)
	jmp .Lbb820
.Lbb819:
	leaq donna_nil(%rip), %rax
.Lbb820:
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
	jz .Lbb823
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
	jmp .Lbb824
.Lbb823:
	leaq donna_nil(%rip), %rax
.Lbb824:
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

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
