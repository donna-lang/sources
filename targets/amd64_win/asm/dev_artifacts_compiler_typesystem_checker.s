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
	movq %rdx, %r12
	movq %rcx, %rax
	movq %r8, %rcx
	movq 16(%rax), %r14
	movq 24(%rax), %rdi
	movq 32(%rax), %rbx
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
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq compiler_typesystem_env_env_ctor_info
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_check_type_defs
	movq %r12, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %r12
	movq %rdx, %rdi
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_check_constants
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	cmpq $1, %rsi
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb7
	movq 8(%rax), %rax
	movq %rdx, %rsi
	movq (%rax), %rdx
	movq 8(%rax), %r13
	subq $32, %rsp
	callq compiler_typesystem_checker_check_functions
	subq $-32, %rsp
	movq 8(%rax), %r14
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_list_is_empty
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb6
	movq %rdx, %rdi
	subq $32, %rsp
	movq %r12, %rcx
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_append
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $48, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $0, (%rdi)
	movq %rdx, 8(%rdi)
	movq %r14, 16(%rdi)
	movq %r13, 24(%rdi)
	movq %r12, 32(%rdi)
	movq %rbx, 40(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb8
Lbb6:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb8
Lbb7:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %rdi, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
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
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
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
	xchgq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r9
	movq %rdi, %rdx
	movq %rcx, %rbx
	movq %rax, %rcx
	callq compiler_typesystem_env_env_add_module
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_iface_ctor_info
	movq %rbx, %r8
	movq %rdi, %rcx
	movq %rax, %rdx
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %rax
	movq %rcx, %rsi
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb16
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	movq (%rcx), %rdx
	movq 8(%rcx), %r8
	subq $32, %rsp
	movq %r8, %r12
	movq %rdx, %rbx
	movq %rax, %rcx
	callq compiler_typesystem_env_env_add_ctor
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str129(%rip), %rdx
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r12, %r8
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_env_env_add_ctor
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_add_iface_ctors_to_env
	subq $-32, %rsp
Lbb16:
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
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
	leaq str151(%rip), %rdx
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %r8
	movq %rcx, %rax
	movq 8(%rax), %r13
	movq 16(%rax), %r12
	movq 32(%rax), %rcx
	movq 40(%rax), %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_typesystem_checker_collect_param_vars
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %r14
	movq 8(%rax), %rsi
	subq $32, %rsp
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %rdi
	movq %r14, %rcx
	callq donna_list_map
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %r14, %r9
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $8, (%rdx)
	movq %r13, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	leaq donna_nil(%rip), %rdi
	movq %rdi, 48(%rax)
	movq $0, 40(%rax)
	movq %rsi, 32(%rax)
	movq %r13, %r8
	callq compiler_typesystem_checker_check_ctors
	subq $-64, %rsp
	movq (%rax), %rbx
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $0, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
	popq %rdi
	popq %rsi
	popq %r14
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
	movq 64(%rbp), %rbx
	movq %rbx, -48(%rbp)
	movq 56(%rbp), %rsi
	movq 48(%rbp), %rax
	movq %rax, -24(%rbp)
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	movq (%rcx), %rdx
	cmpq $0, %rdx
	jz Lbb58
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq %rdi, -40(%rbp)
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
	movq %rdx, %rbx
	movq %r15, %rdx
	callq compiler_typesystem_checker_subst_list
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $0, (%r12)
	movq %rbx, 8(%r12)
	movq %rdi, 16(%r12)
	movq %rsi, 24(%r12)
	subq $32, %rsp
	movq %rdi, %rcx
	callq donna_list_is_empty
	movq %rax, %rdx
	movq %rdi, %rax
	movq %rax, %rdi
	movq -24(%rbp), %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -16(%rbp)
	cmpq $1, %rdx
	jz Lbb54
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %rbx, %rdx
	movq %rax, %rbx
	movq %rdi, %rax
	movq -16(%rbp), %rcx
	movq %rax, %rdi
	movq -24(%rbp), %rax
	subq $-32, %rsp
	movq $7, (%rbx)
	movq %rdi, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %rbx, (%rcx)
	jmp Lbb57
Lbb54:
	movq %rbx, %rdx
	movq %r14, %r8
	movq %r13, (%rcx)
	movq %r13, %rbx
Lbb57:
	subq $32, %rsp
	movq %r8, %r14
	movq %rbx, %r8
	movq %rdx, %rbx
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	movq %rax, -32(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %r8
	movq %rdi, %rax
	movq -32(%rbp), %rcx
	movq -40(%rbp), %rdi
	movq -48(%rbp), %rbx
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
	movq %rbx, %rcx
	movq %rax, %rsi
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
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $8, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb63
	movl $0, %edx
	jmp Lbb64
Lbb63:
	movq 16(%rax), %rdi
	movq (%rdi), %rdi
	cmpq $0, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq %rdi, %rdx
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
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_subst_list
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_subst_type_params
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $7, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb81
Lbb70:
	movq %rsi, %rcx
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_subst_list
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $6, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb81
Lbb72:
	movq %rsi, %rcx
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_subst_type_params
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $5, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb81
Lbb74:
	movq %rsi, %rcx
	movq 8(%rax), %rdi
	movq %rcx, %rsi
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_subst_list
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb81
Lbb76:
	movq %rsi, %rcx
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
	jz Lbb90
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
	jmp Lbb91
Lbb89:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb91
Lbb90:
	leaq donna_option_None(%rip), %rax
Lbb91:
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
	jz Lbb96
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
	jnz Lbb95
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
	jmp Lbb98
Lbb95:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb98
Lbb96:
	movq %rdi, %rcx
	movq %rdx, %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdx, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb98:
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
	movq %rdx, %rsi
	movq 8(%rcx), %r14
	movq 16(%rcx), %r13
	movq 24(%rcx), %r12
	movq 32(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_infer_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb104
	movq 8(%rax), %rax
	movq (%rax), %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r12), %rax
	cmpq $0, %rax
	jz Lbb102
	movq %rcx, %rbx
	movq 8(%r12), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rdi)
	jmp Lbb103
Lbb102:
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rdi)
Lbb103:
	subq $32, %rsp
	movq %r12, %r8
	movq %r14, %rdx
	callq compiler_typesystem_env_env_bind
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $0, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %r12, 24(%rbx)
	movq %rsi, 32(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rbx, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb105
Lbb104:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb105:
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
	jz Lbb110
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
Lbb110:
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq %rcx, %rsi
	movq (%rsi), %rcx
	cmpq $1, %rcx
	jz Lbb120
	movq 8(%rsi), %rdx
	movq 24(%rsi), %rcx
	movq %rax, %r13
	movq 32(%rsi), %rax
	movq 40(%rsi), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rax
	cmpq $1, %rax
	jz Lbb118
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r13, %rdx
	callq compiler_typesystem_checker_build_param_pairs
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	movq %r13, %rdx
	movq %rcx, %r12
	movq %rdi, %rcx
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdx, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb115
	movq 8(%rax), %rax
	movq %rcx, %rbx
	movq (%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	callq donna_list_map
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %rax, %r8
	movq %r13, %rax
	subq $-32, %rsp
	movq $7, (%r8)
	movq %r12, 8(%r8)
	movq %rbx, 16(%r8)
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb117
Lbb115:
	movq %r13, %rax
	movq %rax, (%rdi)
Lbb117:
	movq %rax, (%rsi)
	jmp Lbb120
Lbb118:
	movq %r13, %rax
	movq %rax, (%rsi)
Lbb120:
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
	jz Lbb123
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
	jmp Lbb124
Lbb123:
	movq %rsi, %rax
Lbb124:
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
	jnz Lbb127
	movq 8(%rcx), %rax
	jmp Lbb128
Lbb127:
	movq 8(%rcx), %rax
Lbb128:
	ret
/* end function compiler_typesystem_checker_fn_name */

.text
.balign 16
compiler_typesystem_checker_function_sig_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq compiler_typesystem_checker_fn_params
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_params_to_types
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_fn_return_type
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb131
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rsi
	subq $-32, %rsp
	jmp Lbb133
Lbb131:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %rsi
Lbb133:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $7, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %rdi
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
	jnz Lbb137
	movq 24(%rcx), %rax
	jmp Lbb138
Lbb137:
	movq 24(%rcx), %rax
Lbb138:
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
	jnz Lbb141
	movq 32(%rcx), %rax
	jmp Lbb142
Lbb141:
	movq 32(%rcx), %rax
Lbb142:
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
	jz Lbb148
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb146
	movq %rcx, %rbx
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%rdi)
	jmp Lbb147
Lbb146:
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $9, (%rbx)
	movq $0, 8(%rbx)
	movq %rbx, (%rdi)
Lbb147:
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
	jmp Lbb149
Lbb148:
	leaq donna_nil(%rip), %rax
Lbb149:
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
	jz Lbb157
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
	jz Lbb154
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
	jmp Lbb156
Lbb154:
	movq %rcx, (%r13)
	xchgq %rsi, %rcx
Lbb156:
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
	jmp Lbb159
Lbb157:
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
Lbb159:
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
	subq $88, %rsp
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
	movq 8(%rax), %rdx
	movq 16(%rax), %rbx
	movq %rbx, -24(%rbp)
	movq %rcx, %rsi
	movq 24(%rax), %rcx
	movq 32(%rax), %r14
	movq 40(%rax), %rdi
	movq 48(%rax), %r9
	movq %r9, -16(%rbp)
	subq $32, %rsp
	movq %rdx, %r13
	movq %rsi, %rdx
	callq compiler_typesystem_checker_build_param_pairs
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %rsi
	movq (%r14), %rax
	cmpq $0, %rax
	jz Lbb164
	movq %rcx, %r12
	movq 8(%r14), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %r13, %rdx
	movq %r12, %rcx
	xchgq %rax, %rsi
	subq $-32, %rsp
	movq %rsi, (%rbx)
	movq %rsi, %rbx
	movq %rax, %rsi
	jmp Lbb167
Lbb164:
	movq %rsi, %rax
	movq %r13, %rdx
	leaq compiler_typesystem_types_TNil(%rip), %rsi
	movq %rsi, (%rbx)
	movq %rax, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %rbx
Lbb167:
	subq $32, %rsp
	movq %rdx, %r15
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %r12
	movq %rsi, %rcx
	callq donna_list_map
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r15, %rdx
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	movq $7, (%r13)
	movq %r12, 8(%r13)
	movq %rbx, 16(%r13)
	subq $32, %rsp
	movq %r13, %r8
	movq %rdx, %r12
	callq compiler_typesystem_env_env_bind
	movq %r12, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	movq %rdi, %rdx
	movq %rcx, %r15
	movq %rsi, %rcx
	callq compiler_typesystem_checker_bind_param_pairs
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -40(%rbp)
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r15
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb178
	movq 8(%rax), %rax
	movq (%rax), %r12
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r12, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r15, %rdx
	movq %rbx, %rcx
	movq %rax, %r15
	movq %rsi, %rax
	movq %rax, %rsi
	movq -40(%rbp), %rax
	movq -24(%rbp), %rbx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r8
	movq %r8, -64(%rbp)
	movq (%r14), %r8
	cmpq $0, %r8
	jz Lbb175
	subq $32, %rsp
	movq %rdx, %r14
	movq %rcx, %rdx
	movq %rcx, %rbx
	movq %r15, %rcx
	callq compiler_typesystem_types_types_equal
	movq %r14, %rdx
	movq %rbx, %rcx
	movq %rax, %r10
	movq %rsi, %rax
	movq %rdx, %r14
	movq -64(%rbp), %rdx
	movq %rax, %rsi
	movq -40(%rbp), %rax
	movq -16(%rbp), %r9
	movq %rcx, %rbx
	movq -24(%rbp), %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r8
	movq %r8, -32(%rbp)
	cmpq $0, %r10
	jz Lbb172
	movq %r12, %r15
	subq $32, %rsp
	movq %rcx, %r12
	movl $64, %ecx
	callq malloc
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r14
	movq %rsi, %rax
	movq -32(%rbp), %rbx
	movq %rdi, %r12
	movq -64(%rbp), %rdi
	movq -40(%rbp), %rsi
	subq $-32, %rsp
	movq $0, (%r14)
	movq %r8, 8(%r14)
	movq %rdx, 16(%r14)
	movq %rax, 24(%r14)
	movq %rcx, 32(%r14)
	movq %r15, 40(%r14)
	leaq donna_option_None(%rip), %rax
	movq %rax, 48(%r14)
	movq %r13, 56(%r14)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $1, (%r13)
	movq %r14, 8(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq %r13, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb174
Lbb172:
	movq %rbx, %rcx
	movq %r8, %rbx
	movq %rax, %rsi
	movq %rdi, %r12
	movq %rdx, %rdi
	movq %r9, %r13
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %r15, %rcx
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	xchgq %rax, %r14
	subq $-32, %rsp
	movq $19, (%r14)
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movq %r13, 24(%r14)
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
Lbb174:
	movq %rax, (%rdi)
	jmp Lbb177
Lbb175:
	movq %r12, %r14
	movq %rbx, %rcx
	movq %rdi, %rbx
	movq %rsi, %rdi
	movq %rax, %rsi
	subq $32, %rsp
	movq %rdx, %r13
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %r12
	movq %rdi, %rcx
	callq donna_list_map
	movq %r12, %rcx
	movq %rax, -48(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r12
	movq %rbx, %rax
	movq -48(%rbp), %r8
	subq $-32, %rsp
	movq $7, (%r12)
	movq %r8, 8(%r12)
	movq %r15, 16(%r12)
	subq $32, %rsp
	movq %r12, %r8
	movq %rdx, %r13
	movq %rcx, %rbx
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	movq %rbx, %rcx
	movq %rax, -56(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $64, %ecx
	callq malloc
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %r13
	movq %rdi, %rax
	movq -64(%rbp), %rdi
	movq -56(%rbp), %rbx
	subq $-32, %rsp
	movq $0, (%r13)
	movq %rdx, 8(%r13)
	movq %rcx, 16(%r13)
	movq %rax, 24(%r13)
	movq %r15, 32(%r13)
	movq %r14, 40(%r13)
	leaq donna_option_None(%rip), %rax
	movq %rax, 48(%r13)
	movq %r12, 56(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq %r12, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
Lbb177:
	movq %rax, (%rsi)
	jmp Lbb187
Lbb178:
	movq %rbx, %rsi
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
	movq 8(%rax), %rbx
	movq 16(%rax), %rsi
	movq %rcx, %rdi
	movq 24(%rax), %rcx
	movq 32(%rax), %r14
	movq 40(%rax), %r12
	movq 48(%rax), %rax
	movq %rax, -72(%rbp)
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_build_param_pairs
	movq %rdi, %rcx
	movq %rax, %r15
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%r14), %rax
	cmpq $0, %rax
	jz Lbb183
	movq %rcx, %r13
	movq 8(%r14), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %r13, %rcx
	movq %rax, %r14
	movq %rdi, %rax
	subq $-32, %rsp
	movq %r14, (%rsi)
	movq %rax, %rsi
	jmp Lbb186
Lbb183:
	movq %rdi, %rax
	leaq compiler_typesystem_types_TNil(%rip), %rdx
	movq %rdx, (%rsi)
	movq %rax, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, %r14
Lbb186:
	subq $32, %rsp
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %rcx, %rdi
	movq %r15, %rcx
	callq donna_list_map
	movq %rdi, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	movq %r13, 8(%rdi)
	movq %r14, 16(%rdi)
	subq $32, %rsp
	movq %rdi, %r8
	movq %rbx, %rdx
	callq compiler_typesystem_env_env_bind
	movq %rbx, %rcx
	movq %rax, -80(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %r13
	movq %rsi, %rax
	subq $-32, %rsp
	movq $0, (%r13)
	leaq str901(%rip), %rdx
	movq %rdx, 8(%r13)
	movq %rax, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 16(%r13)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	movq %rsi, %rax
	movq %rax, %rsi
	movq -72(%rbp), %rax
	subq $-32, %rsp
	movq %r12, (%rbx)
	movq %rax, 8(%rbx)
	subq $32, %rsp
	movq %rcx, %r12
	movl $16, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %rbx, 8(%r12)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $64, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	movq %rsi, %rax
	movq -80(%rbp), %rsi
	subq $-32, %rsp
	movq $0, (%rbx)
	movq %rcx, 8(%rbx)
	movq %rax, 16(%rbx)
	movq %r15, 24(%rbx)
	movq %r14, 32(%rbx)
	movq %r13, 40(%rbx)
	movq %r12, 48(%rbx)
	movq %rdi, 56(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
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
	subq $144, %rsp
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb194
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rax), %r13
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb192
	movq %rcx, %rbx
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %r14, %rdx
	jmp Lbb193
Lbb192:
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r14, %rcx
	callq compiler_typesystem_env_env_next_var
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $16, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $9, (%r12)
	movq %rbx, 8(%r12)
	movq %r12, (%rdi)
Lbb193:
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
	jmp Lbb195
Lbb194:
	leaq donna_nil(%rip), %rax
Lbb195:
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
	jz Lbb198
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
Lbb198:
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
	subq $88, %rsp
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
	jz Lbb328
	cmpq $2, %rax
	jz Lbb326
	cmpq $3, %rax
	jz Lbb324
	cmpq $4, %rax
	jz Lbb320
	cmpq $5, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb302
	cmpq $9, %rax
	jz Lbb287
	cmpq $10, %rax
	jz Lbb278
	cmpq $11, %rax
	jz Lbb271
	cmpq $14, %rax
	jz Lbb264
	cmpq $12, %rax
	jz Lbb258
	cmpq $6, %rax
	jz Lbb255
	cmpq $7, %rax
	jz Lbb244
	cmpq $8, %rax
	jz Lbb230
	cmpq $13, %rax
	jz Lbb227
	cmpq $16, %rax
	jz Lbb224
	cmpq $15, %rax
	jz Lbb221
	cmpq $17, %rax
	jz Lbb218
	subq $32, %rsp
	movq %rdx, %rcx
	callq compiler_typesystem_env_fresh_var
	subq $-32, %rsp
	movq (%rax), %rsi
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $17, (%rbx)
	movq %rsi, 8(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rbx, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb332
Lbb218:
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
	jnz Lbb220
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_env_fresh_var
	subq $-32, %rsp
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $16, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb220:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb221:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %rdi
	callq compiler_typesystem_checker_build_param_pairs
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	movq %rcx, %rsi
	movq %r14, %rcx
	callq compiler_typesystem_checker_bind_param_pairs
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
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
	jnz Lbb223
	movq 8(%rax), %rax
	movq (%rax), %r13
	subq $32, %rsp
	movq %r13, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rdi, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq compiler_typesystem_checker_pair_snd(%rip), %rdx
	movq %r14, %rcx
	callq donna_list_map
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $7, (%r12)
	movq %r15, 8(%r12)
	movq %rbx, 16(%r12)
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $15, (%rbx)
	movq %r14, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rbx, (%rdi)
	movq %rdx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb223:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb224:
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
	jnz Lbb226
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $14, (%r12)
	movq %rdi, 8(%r12)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb226:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb227:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_typesystem_types_TNil(%rip), %r9
	leaq donna_nil(%rip), %r8
	movq %rdx, %rdi
	callq compiler_typesystem_checker_check_stmts
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb229
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rbx, (%rdi)
	movq %rdx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb229:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb230:
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
	jnz Lbb243
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb241
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r15), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz Lbb235
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb237
Lbb235:
	movq $1, (%rax)
	movl $1, %eax
Lbb237:
	cmpl $0, %eax
	jnz Lbb239
	subq $32, %rsp
	movq %r14, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %r13
	subq $-32, %rsp
	movq %r13, (%rbx)
	jmp Lbb240
Lbb239:
	movq 8(%r15), %rcx
	subq $32, %rsp
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %r13
	subq $-32, %rsp
	movq %r13, (%rbx)
Lbb240:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $5, (%rbx)
	movq %r13, 8(%rbx)
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $12, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movq %rbx, 24(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb242
Lbb241:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb242:
	movq %rax, (%rsi)
	jmp Lbb332
Lbb243:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb244:
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
	jnz Lbb254
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %rbx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r13), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz Lbb248
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb250
Lbb248:
	movq $1, (%rax)
	movl $1, %eax
Lbb250:
	cmpl $0, %eax
	jnz Lbb252
	subq $32, %rsp
	movq %rbx, %rcx
	callq compiler_typesystem_env_fresh_var
	subq $-32, %rsp
	movq (%rax), %r12
	movq %r12, (%rdi)
	jmp Lbb253
Lbb252:
	movq 8(%r13), %rcx
	subq $32, %rsp
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rdi)
Lbb253:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $5, (%rdi)
	movq %r12, 8(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $11, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb254:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb255:
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
	movq (%rax), %r13
	movq 8(%rax), %rbx
	subq $32, %rsp
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rdx
	movq %r13, %rcx
	callq donna_list_map
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $6, (%rdi)
	movq %r12, 8(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $10, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb257:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb258:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %r13
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
	jnz Lbb263
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r12
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r15, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rdx
	callq compiler_typesystem_checker_infer_clauses
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb261
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $9, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movq %rbx, 24(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb262
Lbb261:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb262:
	movq %rax, (%rsi)
	jmp Lbb332
Lbb263:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb264:
	movq %rdx, %r13
	movq 8(%rcx), %r15
	movq 16(%rcx), %rdi
	movq %rdi, %r12
	movq 24(%rcx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r12), %rax
	cmpq $9, %rax
	jz Lbb268
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r15, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $9, (%rcx)
	movq %r12, 8(%rcx)
	movq %rbx, 16(%rcx)
	movq %rdi, 24(%rcx)
	movq %rcx, (%rsi)
	movq %r13, %rdx
	jmp Lbb270
Lbb268:
	movq %r12, %rdi
	movq 8(%rdi), %r12
	movq 16(%rdi), %r14
	movq 24(%rdi), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r15, 8(%rbx)
	movq %r14, 16(%rbx)
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq $9, (%rcx)
	movq %r12, 8(%rcx)
	movq %rbx, 16(%rcx)
	movq %rdi, 24(%rcx)
	movq %rcx, (%rsi)
Lbb270:
	subq $32, %rsp
	callq compiler_typesystem_checker_infer_expr
	subq $-32, %rsp
	jmp Lbb332
Lbb271:
	movq 8(%rcx), %r14
	movq 16(%rcx), %rcx
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
	jnz Lbb277
	movq 8(%rax), %rax
	movq (%rax), %r13
	movq 8(%rax), %rbx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r14), %rax
	cmpq $0, %rax
	jz Lbb275
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, (%r12)
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, %rdi
	jmp Lbb276
Lbb275:
	subq $32, %rsp
	movq %r13, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rdi, (%r12)
Lbb276:
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $8, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movq %rdi, 24(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb277:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb278:
	movq 8(%rcx), %rdi
	movq %rcx, %rax
	movq 16(%rcx), %rcx
	movq 24(%rax), %rsi
	movq 32(%rax), %r14
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
	jnz Lbb286
	movq 8(%rax), %rax
	movq (%rax), %r15
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
	jnz Lbb284
	movq 8(%rax), %rax
	movq (%rax), %r12
	movq 8(%rax), %r13
	movq %r13, -8(%rbp)
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r15, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r12, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r14, %r9
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	movq -8(%rbp), %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r14
	movq %rcx, %rbx
	callq compiler_typesystem_checker_check_binop_types
	movq %r14, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r8
	cmpq $1, %r8
	jz Lbb282
	subq $32, %rsp
	movq %rcx, %r14
	callq compiler_typesystem_checker_binop_result_type
	movq %r14, %rcx
	movq %rax, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movl $40, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq -16(%rbp), %rax
	subq $-32, %rsp
	movq $7, (%r14)
	movq %rcx, 8(%r14)
	movq %r15, 16(%r14)
	movq %r12, 24(%r14)
	movq %rax, 32(%r14)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb283
Lbb282:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb283:
	movq %rax, (%rdi)
	jmp Lbb285
Lbb284:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb285:
	movq %rax, (%rsi)
	jmp Lbb332
Lbb286:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb287:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	movq 24(%rax), %r14
	movq %r14, -32(%rbp)
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
	jnz Lbb301
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
	jnz Lbb299
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %r14
	subq $32, %rsp
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rdx
	movq %rcx, %rbx
	movq %r15, %rcx
	callq donna_list_map
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -40(%rbp)
	movq (%rax), %rdx
	cmpq $7, %rdx
	jz Lbb292
	movq %r12, %rbx
	subq $32, %rsp
	movq %rcx, %r12
	movq %r14, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %r12, %rcx
	subq $-32, %rsp
	movq (%rax), %r12
	subq $32, %rsp
	movq %rcx, %r13
	movl $32, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	movq $6, (%r13)
	movq %rcx, 8(%r13)
	movq %r15, 16(%r13)
	movq %r12, 24(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq %r13, (%r12)
	movq %r14, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb298
Lbb292:
	movq %r15, %r13
	movq %rcx, %r15
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq %rax, -48(%rbp)
	subq $32, %rsp
	movq %rcx, %r12
	callq donna_list_length
	movq %r12, %rcx
	movq %rax, -24(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq donna_list_length
	movq %r12, %rcx
	movq %rax, %r8
	movq %rbx, %rax
	movq -40(%rbp), %rbx
	movq -24(%rbp), %r9
	movq -32(%rbp), %rdx
	subq $-32, %rsp
	cmpq %r8, %r9
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %r8
	jz Lbb295
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rax, %rdx
	callq compiler_typesystem_checker_collect_all_bindings
	movq %r15, %rcx
	movq %rax, %rdx
	movq %rcx, %r15
	movq -48(%rbp), %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_apply_subst
	movq %r15, %rcx
	movq %rax, -56(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r15
	movl $32, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq -56(%rbp), %rax
	subq $-32, %rsp
	movq $6, (%r15)
	movq %rcx, 8(%r15)
	movq %r13, 16(%r15)
	movq %rax, 24(%r15)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq %r15, (%r13)
	movq %r14, 8(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb297
Lbb295:
	movq %rax, %r13
	movq %rdx, %r14
	subq $32, %rsp
	callq donna_list_length
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_length
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	xchgq %rax, %r13
	subq $-32, %rsp
	movq $16, (%r13)
	movq %rax, 8(%r13)
	movq %r15, 16(%r13)
	movq %r14, 24(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb297:
	movq %rax, (%rbx)
Lbb298:
	movq %rax, (%rdi)
	jmp Lbb300
Lbb299:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb300:
	movq %rax, (%rsi)
	jmp Lbb332
Lbb301:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb302:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %r15
	movq 24(%rax), %r13
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
	jnz Lbb319
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %r13, %r12
	movq 8(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $4, %rax
	jz Lbb305
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %rbx, %rcx
	subq $-32, %rsp
	movq (%rax), %rbx
	movq 8(%rax), %r12
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	movq $5, (%r13)
	movq %rcx, 8(%r13)
	movq %r15, 16(%r13)
	leaq str1287(%rip), %rax
	movq %rax, 24(%r13)
	movq %rbx, 32(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r13, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb318
Lbb305:
	movq 8(%rcx), %r14
	subq $32, %rsp
	movq %r14, %rdx
	movq %rcx, %rbx
	movq %r13, %rcx
	callq compiler_typesystem_env_env_lookup_module
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $0, %rdx
	jz Lbb315
	movq 8(%rax), %rax
	movq %rax, -64(%rbp)
	subq $32, %rsp
	movq %r14, %rdx
	movq %rcx, %r12
	movq %r13, %rcx
	callq compiler_typesystem_env_env_lookup_alias
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rcx, %r12
	movq -64(%rbp), %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %r8
	cmpq $1, %r8
	jz Lbb308
	movq %r14, (%rax)
	jmp Lbb309
Lbb308:
	movq 8(%rdx), %r14
	movq %r14, (%rax)
Lbb309:
	movq %r14, -72(%rbp)
	subq $32, %rsp
	callq compiler_typesystem_checker_iface_bindings
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r15, %rdx
	callq compiler_typesystem_checker_lookup_binding
	movq %r12, %rcx
	subq $-32, %rsp
	movq %r14, %r12
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb312
	subq $32, %rsp
	movq %rcx, %r12
	movq %r13, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %r12, %rcx
	movq -72(%rbp), %r12
	subq $-32, %rsp
	movq (%rax), %rax
	movq %rax, (%r14)
	movq %rax, -80(%rbp)
	jmp Lbb314
Lbb312:
	movq 8(%rax), %rax
	movq %rax, (%r14)
	movq %rax, -80(%rbp)
Lbb314:
	subq $32, %rsp
	movq %rcx, %r14
	movl $40, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq -80(%rbp), %rax
	subq $-32, %rsp
	movq $5, (%r14)
	movq %rcx, 8(%r14)
	movq %r15, 16(%r14)
	movq %r12, 24(%r14)
	movq %rax, 32(%r14)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq %r14, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb317
Lbb315:
	movq %r12, %r13
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $15, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb317:
	movq %rax, (%rdi)
Lbb318:
	movq %rax, (%rsi)
	jmp Lbb332
Lbb319:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb332
Lbb320:
	movq 8(%rcx), %r12
	subq $32, %rsp
	movq %rdx, %rsi
	movq %r12, %rdx
	movq %rsi, %rcx
	callq compiler_typesystem_env_env_lookup
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb322
	subq $32, %rsp
	movq %rsi, %rcx
	callq compiler_typesystem_env_fresh_var
	subq $-32, %rsp
	movq (%rax), %rbx
	movq %rbx, (%rdi)
	jmp Lbb323
Lbb322:
	movq 8(%rax), %rbx
	movq %rbx, (%rdi)
Lbb323:
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $4, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, (%rsi)
	movq %rdx, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb332
Lbb324:
	movq %rdx, %rsi
	movq 8(%rcx), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $3, (%rdi)
	movq %rbx, 8(%rdi)
	leaq compiler_typesystem_types_TBool(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, (%rsi)
	movq %rdx, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb332
Lbb326:
	movq %rdx, %rsi
	movq 8(%rcx), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $2, (%rdi)
	movq %rbx, 8(%rdi)
	leaq compiler_typesystem_types_TString(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, (%rsi)
	movq %rdx, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb332
Lbb328:
	movq %rdx, %rsi
	movq 8(%rcx), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, (%rsi)
	movq %rdx, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb332
Lbb330:
	movq %rdx, %rsi
	movq 8(%rcx), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $0, (%rdi)
	movq %rbx, 8(%rdi)
	leaq compiler_typesystem_types_TInt(%rip), %rax
	movq %rax, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, (%rsi)
	movq %rdx, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb332:
	movq %rbp, %rsp
	subq $144, %rsp
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
	jz Lbb337
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
	jnz Lbb336
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
	jmp Lbb339
Lbb336:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb339
Lbb337:
	movq %rdi, %rcx
	movq %rdx, %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, (%rsi)
	movq %rdx, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb339:
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
	jz Lbb342
	subq $48, %rsp
	movq %rsp, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 32(%rsi)
	leaq donna_nil(%rip), %r9
	callq compiler_typesystem_checker_infer_clauses_loop
	subq $-48, %rsp
	jmp Lbb343
Lbb342:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	leaq donna_nil(%rip), %rax
	movq %rax, (%rsi)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb343:
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
	movq 48(%rbp), %rdi
	movq %r9, %rbx
	movq %rdx, %r13
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb352
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, -32(%rbp)
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rsi, -24(%rbp)
	movq 8(%rax), %r12
	movq 16(%rax), %rcx
	movq 24(%rax), %rdi
	subq $32, %rsp
	movq %r8, %r15
	movq %r13, %r8
	movq %r15, %rdx
	movq %rcx, %r14
	movq %r12, %rcx
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
	jnz Lbb350
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
	movq %rbx, -16(%rbp)
	movq %r8, %r15
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r14
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb348
	movq 8(%rax), %rax
	movq (%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rsi, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $40, %ecx
	callq malloc
	movq %r14, %rdx
	movq %rbx, %rcx
	movq %rax, %r14
	movq -16(%rbp), %rbx
	movq -8(%rbp), %rax
	subq $-32, %rsp
	movq $0, (%r14)
	movq %rdx, 8(%r14)
	movq %rax, 16(%r14)
	movq %rsi, 24(%r14)
	movq %r12, 32(%r14)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %r15, %r8
	movq %r13, %rdx
	movq %rsi, %rcx
	movq %rax, %r9
	movq -24(%rbp), %rsi
	movq %rcx, %r13
	movq -32(%rbp), %rcx
	subq $-32, %rsp
	movq $1, (%r9)
	movq %r14, 8(%r9)
	movq %r13, 16(%r9)
	subq $48, %rsp
	movq %rsp, %rax
	movq %r12, 32(%rax)
	callq compiler_typesystem_checker_infer_clauses_loop
	subq $-48, %rsp
	movq %rax, (%rbx)
	jmp Lbb349
Lbb348:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb349:
	movq %rax, (%rdi)
	jmp Lbb351
Lbb350:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb351:
	movq %rax, (%rsi)
	jmp Lbb354
Lbb352:
	movq %rbx, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rbx, (%rsi)
	movq %rdi, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb354:
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
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb359
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
	jnz Lbb358
	movq 8(%rax), %rax
	movq (%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb360
Lbb358:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb360
Lbb359:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq donna_option_None(%rip), %rcx
	movq %rcx, 8(%rax)
Lbb360:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
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
	movq %r9, %rsi
	movq %rcx, %rax
	movq %r8, %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb365
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
	jnz Lbb364
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
	jmp Lbb367
Lbb364:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb367
Lbb365:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rsi, %r9
	movq %rax, %rsi
	subq $-32, %rsp
	movq %rdi, (%rsi)
	movq %r9, 8(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb367:
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
	jz Lbb373
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
	jnz Lbb372
	movq 8(%rax), %rax
	movq (%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $2, (%r12)
	movq %rbx, 8(%r12)
	movq %rdi, 16(%r12)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	movq %rcx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb382
Lbb372:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb382
Lbb373:
	movq 8(%rcx), %r13
	movq 16(%rcx), %rcx
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
	jnz Lbb375
	movq 8(%rax), %rax
	movq (%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r8
	movq %r13, %rcx
	callq compiler_typesystem_checker_bind_pattern_typed
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r13, 8(%r12)
	movq %rdi, 16(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb382
Lbb375:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb382
Lbb376:
	movq 8(%rcx), %r14
	movq 16(%rcx), %r13
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
	jnz Lbb381
	movq 8(%rax), %rax
	movq (%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r13), %rax
	cmpq $0, %rax
	jz Lbb379
	movq %rcx, %r12
	movq 8(%r13), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rbx)
	jmp Lbb380
Lbb379:
	subq $32, %rsp
	movq %rcx, %r12
	movq %rdi, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rbx)
Lbb380:
	subq $32, %rsp
	movq %r12, %r8
	movq %r14, %rdx
	callq compiler_typesystem_env_env_bind
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $0, (%r13)
	movq %r14, 8(%r13)
	movq %r12, 16(%r13)
	movq %rdi, 24(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r13, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb382
Lbb381:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb382:
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
	movq (%rcx), %rdx
	cmpq $2, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb418
	cmpq $0, %rdx
	jz Lbb416
	cmpq $1, %rdx
	jz Lbb414
	cmpq $3, %rdx
	jz Lbb412
	cmpq $4, %rdx
	jz Lbb410
	cmpq $5, %rdx
	jz Lbb408
	cmpq $6, %rdx
	jz Lbb406
	cmpq $7, %rdx
	jz Lbb404
	cmpq $8, %rdx
	jz Lbb393
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	jmp Lbb420
Lbb393:
	movq %rcx, %rdx
	movq 8(%rcx), %rcx
	movq 16(%rdx), %rdi
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb402
	cmpq $1, %rax
	setz %r13b
	movzbq %r13b, %r13
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r13d
	jnz Lbb397
	movq $0, (%r12)
	movl $0, %eax
	jmp Lbb398
Lbb397:
	movq 8(%rdi), %rcx
	subq $32, %rsp
	leaq str2378(%rip), %rdx
	callq strcmp
	movq %rax, %rcx
	movq %rbx, %rax
	subq $-32, %rsp
	cmpq $0, %rcx
	movq %rax, %rbx
	setz %al
	movzbq %al, %rax
	andq %r13, %rax
	movq %rax, (%r12)
Lbb398:
	cmpl $0, %eax
	jnz Lbb400
	movq 8(%rdi), %r12
	subq $32, %rsp
	movq %rbx, %rcx
	callq compiler_typesystem_env_env_next_var
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $9, (%rdi)
	movq %r13, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rax, %r8
	movq %rbx, %rax
	subq $-32, %rsp
	movq $5, (%r8)
	movq %rdi, 8(%r8)
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb420
Lbb400:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb420
Lbb402:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb420
Lbb404:
	movq %rax, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	jmp Lbb420
Lbb406:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb420
Lbb408:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb420
Lbb410:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb420
Lbb412:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb420
Lbb414:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb420
Lbb416:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb420
Lbb418:
	movq %rax, %rdi
	movq 8(%rcx), %rbx
	subq $32, %rsp
	movq %rdi, %rcx
	callq compiler_typesystem_env_env_next_var
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %r8
	movq %rdi, %rax
	subq $-32, %rsp
	movq $9, (%r8)
	movq %rsi, 8(%r8)
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
Lbb420:
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
	movq %rax, %rsi
	movq (%rcx), %rax
	cmpq $2, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb459
	cmpq $0, %rax
	jz Lbb458
	cmpq $1, %rax
	jz Lbb457
	cmpq $3, %rax
	jz Lbb456
	cmpq $4, %rax
	jz Lbb455
	cmpq $5, %rax
	jz Lbb454
	cmpq $6, %rax
	jz Lbb453
	cmpq $7, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb449
	cmpq $8, %rax
	jz Lbb433
	movq 24(%rcx), %rdi
	subq $32, %rsp
	callq compiler_typesystem_checker_pattern_ctor_key
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
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
	jz Lbb432
	movq 8(%rdx), %rdx
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_bind_pattern_typed_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb461
Lbb432:
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb461
Lbb433:
	movq %rsi, %rax
	movq %rcx, %rdx
	movq 8(%rcx), %rcx
	movq 16(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%r8), %rax
	cmpq $5, %rax
	jz Lbb436
	subq $32, %rsp
	movq %rcx, %rbx
	movq %rdi, %rcx
	callq compiler_typesystem_env_env_next_var
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $16, %ecx
	callq malloc
	movq %r13, %rcx
	xchgq %rax, %rdi
	subq $-32, %rsp
	movq $9, (%rdi)
	movq %rbx, 8(%rdi)
	movq %rdi, (%rsi)
	jmp Lbb438
Lbb436:
	movq %rdi, %rax
	movq 8(%r8), %rdi
	movq %rdi, (%rsi)
Lbb438:
	subq $32, %rsp
	movq %rax, %r8
	movq %rdi, %rdx
	callq compiler_typesystem_checker_bind_pattern_typed_repeated
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rbx
	movq (%r12), %rax
	cmpq $0, %rax
	jz Lbb447
	cmpq $1, %rax
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz Lbb442
	movq $0, (%r13)
	movl $0, %eax
	jmp Lbb443
Lbb442:
	movq 8(%r12), %rcx
	subq $32, %rsp
	leaq str2519(%rip), %rdx
	callq strcmp
	movq %rax, %rcx
	movq %rbx, %rax
	subq $-32, %rsp
	cmpq $0, %rcx
	movq %rax, %rbx
	setz %al
	movzbq %al, %rax
	andq %r14, %rax
	movq %rax, (%r13)
Lbb443:
	cmpl $0, %eax
	jnz Lbb445
	movq 8(%r12), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rax, %r8
	movq %rbx, %rax
	subq $-32, %rsp
	movq $5, (%r8)
	movq %rdi, 8(%r8)
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb461
Lbb445:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb461
Lbb447:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb461
Lbb449:
	movq %rsi, %rax
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $6, %rdx
	jz Lbb452
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb461
Lbb452:
	movq 8(%r8), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_bind_pattern_typed_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb461
Lbb453:
	movq %rsi, %rax
	jmp Lbb461
Lbb454:
	movq %rsi, %rax
	jmp Lbb461
Lbb455:
	movq %rsi, %rax
	jmp Lbb461
Lbb456:
	movq %rsi, %rax
	jmp Lbb461
Lbb457:
	movq %rsi, %rax
	jmp Lbb461
Lbb458:
	movq %rsi, %rax
	jmp Lbb461
Lbb459:
	movq %rsi, %rax
	movq 8(%rcx), %rdx
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
Lbb461:
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
compiler_typesystem_checker_pattern_ctor_key:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rax
	movq (%rax), %rsi
	cmpq $9, %rsi
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb464
	movl $0, %edx
	jmp Lbb465
Lbb464:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq %rcx, %rdx
Lbb465:
	cmpl $0, %edx
	jnz Lbb473
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $9, %rsi
	jz Lbb469
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb470
Lbb469:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq %rsi, %rcx
	movq %rcx, (%rdx)
Lbb470:
	cmpl $0, %ecx
	jnz Lbb472
	leaq str2613(%rip), %rax
	jmp Lbb474
Lbb472:
	movq 16(%rax), %rax
	jmp Lbb474
Lbb473:
	movq 8(%rax), %rcx
	movq 8(%rcx), %rcx
	movq 16(%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str2588(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb474:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_checker_pattern_ctor_key */

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
	jz Lbb480
	movq 8(%rcx), %r9
	movq 16(%rcx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb479
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
	jmp Lbb480
Lbb479:
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb480:
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
	jz Lbb483
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
Lbb483:
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
	jz Lbb486
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
Lbb486:
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
	jnz Lbb489
	movl $0, %esi
	jmp Lbb490
Lbb489:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2676(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
Lbb490:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb493
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb494
Lbb493:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb494:
	cmpl $0, %eax
	jnz Lbb557
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb498
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb499
Lbb498:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2707(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb499:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb502
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb503
Lbb502:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb503:
	cmpl $0, %eax
	jnz Lbb556
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb507
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb508
Lbb507:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2738(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb508:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb511
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb512
Lbb511:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb512:
	cmpl $0, %eax
	jnz Lbb555
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb516
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb517
Lbb516:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2769(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb517:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb520
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb521
Lbb520:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb521:
	cmpl $0, %eax
	jnz Lbb554
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb525
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb526
Lbb525:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2800(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb526:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb529
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb530
Lbb529:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb530:
	cmpl $0, %eax
	jnz Lbb553
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb534
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb535
Lbb534:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2831(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb535:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb538
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb543
Lbb538:
	movq 16(%rcx), %rsi
	movq (%rsi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb541
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb542
Lbb541:
	movq 16(%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb542:
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb543:
	cmpl $0, %eax
	jnz Lbb552
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb548
	cmpq $1, %rax
	jz Lbb547
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rsi
	subq $32, %rsp
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rdx
	callq donna_list_map
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $7, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb558
Lbb547:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rdx
	callq donna_list_map
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $6, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb558
Lbb548:
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
	jz Lbb550
	subq $32, %rsp
	leaq compiler_typesystem_checker_annotation_to_type(%rip), %rdx
	callq donna_list_map
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	subq $-32, %rsp
	movq $8, (%rax)
	movq %rcx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb558
Lbb550:
	movq %rdi, %rcx
	subq $32, %rsp
	movl $0, %edx
	callq donna_string_char_at
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $9, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb558
Lbb552:
	movq 16(%rcx), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $5, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb558
Lbb553:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	jmp Lbb558
Lbb554:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb558
Lbb555:
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb558
Lbb556:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb558
Lbb557:
	leaq compiler_typesystem_types_TInt(%rip), %rax
Lbb558:
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
	leaq str2925(%rip), %rdx
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
	jz Lbb571
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz Lbb567
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb568
Lbb567:
	movq 16(%rcx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb568:
	cmpl $0, %edx
	jnz Lbb570
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_last_segment
	subq $-32, %rsp
	jmp Lbb571
Lbb570:
	movq 8(%rcx), %rax
Lbb571:
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
	jz Lbb576
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb575
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
	jmp Lbb576
Lbb575:
	movq %rax, (%rsi)
Lbb576:
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
	jnz Lbb599
	cmpq $5, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb595
	cmpq $6, %rsi
	jz Lbb592
	cmpq $7, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb589
	cmpq $8, %rsi
	jnz Lbb604
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $8, %rax
	jz Lbb585
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb604
Lbb585:
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
	jz Lbb587
	movq %rax, (%rdi)
	jmp Lbb588
Lbb587:
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb588:
	movq %rax, (%rsi)
	jmp Lbb604
Lbb589:
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %r8
	cmpq $7, %r8
	jz Lbb591
	movq %rax, (%rsi)
	jmp Lbb604
Lbb591:
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
	jmp Lbb604
Lbb592:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rdi
	cmpq $6, %rdi
	jz Lbb594
	movq %rax, (%rsi)
	jmp Lbb604
Lbb594:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb604
Lbb595:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $5, %rax
	jz Lbb598
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb604
Lbb598:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rdi, %r8
	callq compiler_typesystem_checker_collect_bindings
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb604
Lbb599:
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
	jz Lbb602
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
	jmp Lbb604
Lbb602:
	movq %rdi, %rax
	movq %rax, (%rsi)
Lbb604:
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
	jz Lbb609
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb608
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
	jmp Lbb609
Lbb608:
	movq %rax, (%rsi)
Lbb609:
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
	jz Lbb614
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	movq (%rsi), %rax
	movq 8(%rsi), %rdi
	cmpq %rax, %rdx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb613
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_int_binding
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb615
Lbb613:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb615
Lbb614:
	leaq donna_option_None(%rip), %rax
Lbb615:
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
	jnz Lbb626
	cmpq $5, %rdx
	jz Lbb625
	cmpq $6, %rdx
	jz Lbb624
	cmpq $7, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb622
	cmpq $8, %rdx
	jnz Lbb631
	movq 8(%rax), %rdi
	movq %rcx, %rsi
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_apply_subst_list
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb631
Lbb622:
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_apply_subst_list
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $7, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb631
Lbb624:
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_apply_subst_list
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $6, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb631
Lbb625:
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $5, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb631
Lbb626:
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
	jz Lbb629
	movq %rax, (%rcx)
	jmp Lbb631
Lbb629:
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
Lbb631:
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
	jz Lbb634
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
	jmp Lbb635
Lbb634:
	leaq donna_nil(%rip), %rax
Lbb635:
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
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %rbx
	movq %r8, %rax
	xchgq %rdx, %rcx
	movq (%rdx), %rdx
	cmpq $5, %rdx
	jz Lbb710
	cmpq $6, %rdx
	jz Lbb703
	cmpq $7, %rdx
	jz Lbb696
	cmpq $8, %rdx
	jz Lbb689
	cmpq $15, %rdx
	jz Lbb682
	cmpq $16, %rdx
	jz Lbb675
	cmpq $17, %rdx
	jz Lbb668
	cmpq $18, %rdx
	jz Lbb661
	cmpq $19, %rdx
	jz Lbb654
	cmpq $20, %rdx
	jz Lbb647
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	jmp Lbb717
Lbb647:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $3, %rdx
	jz Lbb649
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3569(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb649:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $3, %rax
	jz Lbb652
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3560(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb653
Lbb652:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb653:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb654:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $3, %rdx
	jz Lbb656
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3533(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb656:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $3, %rax
	jz Lbb659
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3524(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb660
Lbb659:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb660:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb661:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb663
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3497(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb663:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb666
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3488(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb667
Lbb666:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb667:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb668:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb670
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3461(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb670:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb673
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3452(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb674
Lbb673:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb674:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb675:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb677
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3425(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb677:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb680
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3416(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb681
Lbb680:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb681:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb682:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb684
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3389(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb684:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb687
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3380(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb688
Lbb687:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb688:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb689:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb691
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3353(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb691:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb694
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3344(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb695
Lbb694:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb695:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb696:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb698
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3317(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb698:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb701
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3308(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb702
Lbb701:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb702:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb703:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb705
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3281(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb705:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb708
	subq $32, %rsp
	movq %rcx, %rax
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3272(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb709
Lbb708:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb709:
	movq %rax, (%rsi)
	jmp Lbb717
Lbb710:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb712
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	leaq str3245(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb717
Lbb712:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb715
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %r9
	movq %rax, %rbx
	subq $-32, %rsp
	movq $13, (%rbx)
	leaq str3236(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %r9, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb716
Lbb715:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb716:
	movq %rax, (%rsi)
Lbb717:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
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
	jz Lbb760
	cmpq $1, %rax
	jz Lbb759
	cmpq $2, %rax
	jz Lbb758
	cmpq $3, %rax
	jz Lbb757
	cmpq $4, %rax
	jz Lbb756
	cmpq $5, %rax
	jz Lbb755
	cmpq $6, %rax
	jz Lbb754
	cmpq $7, %rax
	jz Lbb753
	cmpq $8, %rax
	jz Lbb752
	cmpq $9, %rax
	jz Lbb751
	cmpq $10, %rax
	jz Lbb750
	cmpq $11, %rax
	jz Lbb749
	cmpq $12, %rax
	jz Lbb748
	cmpq $13, %rax
	jz Lbb747
	cmpq $14, %rax
	jz Lbb746
	cmpq $15, %rax
	jz Lbb745
	cmpq $16, %rax
	jz Lbb744
	cmpq $17, %rax
	jz Lbb743
	cmpq $18, %rax
	jz Lbb742
	cmpq $19, %rax
	jz Lbb741
	cmpq $20, %rax
	jz Lbb740
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb761
Lbb740:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb741:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb742:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb743:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb744:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb745:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb746:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb747:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb748:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb749:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb750:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb751:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb761
Lbb752:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb761
Lbb753:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb761
Lbb754:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb761
Lbb755:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb761
Lbb756:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb761
Lbb757:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb761
Lbb758:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb761
Lbb759:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb761
Lbb760:
	leaq compiler_typesystem_types_TInt(%rip), %rax
Lbb761:
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
	leaq str3668(%rip), %rdx
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
	jz Lbb768
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
	jz Lbb767
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_binding
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb769
Lbb767:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb769
Lbb768:
	leaq donna_option_None(%rip), %rax
Lbb769:
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
	jz Lbb775
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
	jz Lbb773
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_fns_to_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb774
Lbb773:
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
Lbb774:
	movq %rax, (%rsi)
	jmp Lbb776
Lbb775:
	leaq donna_nil(%rip), %rax
Lbb776:
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
	jz Lbb782
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
	jz Lbb780
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_consts_to_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb781
Lbb780:
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
Lbb781:
	movq %rax, (%rsi)
	jmp Lbb783
Lbb782:
	leaq donna_nil(%rip), %rax
Lbb783:
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
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb790
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rcx), %r12
	movq 16(%rcx), %rax
	movq 24(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb787
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $8, (%rdx)
	movq %r12, 8(%rdx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdx)
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
	jmp Lbb789
Lbb787:
	movq %rbx, %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb789:
	movq %rax, (%rsi)
	jmp Lbb791
Lbb790:
	leaq donna_nil(%rip), %rax
Lbb791:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %r14
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb800
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq 8(%rax), %r12
	movq 16(%rax), %r13
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r13, %rcx
	callq donna_list_is_empty
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb796
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %r14, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	movq %r13, 8(%rdi)
	movq %rdx, 16(%rdi)
	movq %rdi, (%rbx)
	movq %rdi, %rbx
	jmp Lbb799
Lbb796:
	movq %rbx, %rdi
	movq %r14, %rdx
	movq %rdx, (%rdi)
	movq %rdx, %rbx
Lbb799:
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
	jmp Lbb801
Lbb800:
	leaq donna_nil(%rip), %rax
Lbb801:
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
	jz Lbb808
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
	jz Lbb805
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
	jmp Lbb807
Lbb805:
	movq %rbx, %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb807:
	movq %rax, (%rsi)
	jmp Lbb809
Lbb808:
	leaq donna_nil(%rip), %rax
Lbb809:
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
	jz Lbb812
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
	jmp Lbb813
Lbb812:
	leaq donna_nil(%rip), %rax
Lbb813:
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

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq strlen
	subq $-32, %rsp
	addq %rbx, %rax
	movq %rax, %rcx
	addq $1, %rcx
	subq $32, %rsp
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcpy
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcat
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

