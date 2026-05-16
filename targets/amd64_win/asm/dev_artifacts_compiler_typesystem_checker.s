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
str2352:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str2493:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str2562:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str2587:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str2650:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
str2681:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str2712:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
str2743:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str2774:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
str2805:
	.ascii "List"
	.byte 0
/* end data */

.data
.balign 8
str2899:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str3210:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3219:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3246:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3255:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3282:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3291:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3318:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3327:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3354:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3363:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3390:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3399:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3426:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3435:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3462:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3471:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str3498:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3507:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3534:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3543:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str3642:
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
	subq $56, %rsp
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
	jnz Lbb324
	cmpq $1, %rax
	jz Lbb322
	cmpq $2, %rax
	jz Lbb320
	cmpq $3, %rax
	jz Lbb318
	cmpq $4, %rax
	jz Lbb314
	cmpq $5, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb296
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
	jmp Lbb326
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
	jmp Lbb326
Lbb220:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	jmp Lbb326
Lbb223:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	jmp Lbb326
Lbb226:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	jmp Lbb326
Lbb229:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	jmp Lbb326
Lbb243:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	jmp Lbb326
Lbb254:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	jmp Lbb326
Lbb257:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	jmp Lbb326
Lbb263:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	jmp Lbb326
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
	jmp Lbb326
Lbb277:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
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
	movq %r13, -16(%rbp)
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
	movq -16(%rbp), %r13
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
	movq %rax, -24(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r14
	movl $40, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq -24(%rbp), %rax
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
	jmp Lbb326
Lbb286:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
Lbb287:
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
	jnz Lbb295
	movq 8(%rax), %rax
	movq (%rax), %r15
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_infer_exprs
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb293
	movq 8(%rax), %rax
	movq (%rax), %r14
	movq 8(%rax), %r12
	subq $32, %rsp
	leaq compiler_typesystem_types_typed_expr_type(%rip), %rdx
	movq %r14, %rcx
	callq donna_list_map
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r15, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %rbx, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $7, %rcx
	jz Lbb291
	subq $32, %rsp
	movq %r12, %rcx
	callq compiler_typesystem_env_fresh_var
	subq $-32, %rsp
	movq (%rax), %rbx
	movq %rbx, (%r13)
	jmp Lbb292
Lbb291:
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_typesystem_checker_collect_all_bindings
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_checker_apply_subst
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%r13)
Lbb292:
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $6, (%r13)
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
	jmp Lbb294
Lbb293:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb294:
	movq %rax, (%rsi)
	jmp Lbb326
Lbb295:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
Lbb296:
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
	jnz Lbb313
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq %r13, %r12
	movq 8(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $4, %rax
	jz Lbb299
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
	jmp Lbb312
Lbb299:
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
	jz Lbb309
	movq 8(%rax), %rax
	movq %rax, -32(%rbp)
	subq $32, %rsp
	movq %r14, %rdx
	movq %rcx, %r12
	movq %r13, %rcx
	callq compiler_typesystem_env_env_lookup_alias
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rcx, %r12
	movq -32(%rbp), %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %r8
	cmpq $1, %r8
	jz Lbb302
	movq %r14, (%rax)
	jmp Lbb303
Lbb302:
	movq 8(%rdx), %r14
	movq %r14, (%rax)
Lbb303:
	movq %r14, -40(%rbp)
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
	jz Lbb306
	subq $32, %rsp
	movq %rcx, %r12
	movq %r13, %rcx
	callq compiler_typesystem_env_fresh_var
	movq %r12, %rcx
	movq -40(%rbp), %r12
	subq $-32, %rsp
	movq (%rax), %rax
	movq %rax, (%r14)
	movq %rax, -48(%rbp)
	jmp Lbb308
Lbb306:
	movq 8(%rax), %rax
	movq %rax, (%r14)
	movq %rax, -48(%rbp)
Lbb308:
	subq $32, %rsp
	movq %rcx, %r14
	movl $40, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq -48(%rbp), %rax
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
	jmp Lbb311
Lbb309:
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
Lbb311:
	movq %rax, (%rdi)
Lbb312:
	movq %rax, (%rsi)
	jmp Lbb326
Lbb313:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb326
Lbb314:
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
	jz Lbb316
	subq $32, %rsp
	movq %rsi, %rcx
	callq compiler_typesystem_env_fresh_var
	subq $-32, %rsp
	movq (%rax), %rbx
	movq %rbx, (%rdi)
	jmp Lbb317
Lbb316:
	movq 8(%rax), %rbx
	movq %rbx, (%rdi)
Lbb317:
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
	jmp Lbb326
Lbb318:
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
	jmp Lbb326
Lbb320:
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
	jmp Lbb326
Lbb322:
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
	jmp Lbb326
Lbb324:
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
Lbb326:
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
	jz Lbb331
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
	jnz Lbb330
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
	jmp Lbb333
Lbb330:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb333
Lbb331:
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
Lbb333:
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
	jz Lbb336
	subq $48, %rsp
	movq %rsp, %rsi
	leaq compiler_typesystem_types_TNil(%rip), %rax
	movq %rax, 32(%rsi)
	leaq donna_nil(%rip), %r9
	callq compiler_typesystem_checker_infer_clauses_loop
	subq $-48, %rsp
	jmp Lbb337
Lbb336:
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
Lbb337:
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
	jz Lbb346
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
	jnz Lbb344
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
	jnz Lbb342
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
	jmp Lbb343
Lbb342:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb343:
	movq %rax, (%rdi)
	jmp Lbb345
Lbb344:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb345:
	movq %rax, (%rsi)
	jmp Lbb348
Lbb346:
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
Lbb348:
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
	jz Lbb353
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
	jnz Lbb352
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
	jmp Lbb354
Lbb352:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb354
Lbb353:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq donna_option_None(%rip), %rcx
	movq %rcx, 8(%rax)
Lbb354:
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
	jz Lbb359
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
	jnz Lbb358
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
	jmp Lbb361
Lbb358:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb361
Lbb359:
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
Lbb361:
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
	jnz Lbb370
	cmpq $1, %rax
	jz Lbb367
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
	jnz Lbb366
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
	jmp Lbb376
Lbb366:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb376
Lbb367:
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
	jnz Lbb369
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
	jmp Lbb376
Lbb369:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb376
Lbb370:
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
	jnz Lbb375
	movq 8(%rax), %rax
	movq (%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r13), %rax
	cmpq $0, %rax
	jz Lbb373
	movq %rcx, %r12
	movq 8(%r13), %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_annotation_to_type
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rbx)
	jmp Lbb374
Lbb373:
	subq $32, %rsp
	movq %rcx, %r12
	movq %rdi, %rcx
	callq compiler_typesystem_types_typed_expr_type
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq %r12, (%rbx)
Lbb374:
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
	jmp Lbb376
Lbb375:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb376:
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
	jnz Lbb412
	cmpq $0, %rdx
	jz Lbb410
	cmpq $1, %rdx
	jz Lbb408
	cmpq $3, %rdx
	jz Lbb406
	cmpq $4, %rdx
	jz Lbb404
	cmpq $5, %rdx
	jz Lbb402
	cmpq $6, %rdx
	jz Lbb400
	cmpq $7, %rdx
	jz Lbb398
	cmpq $8, %rdx
	jz Lbb387
	movq 24(%rcx), %rcx
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	jmp Lbb414
Lbb387:
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
	jz Lbb396
	cmpq $1, %rax
	setz %r13b
	movzbq %r13b, %r13
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r13d
	jnz Lbb391
	movq $0, (%r12)
	movl $0, %eax
	jmp Lbb392
Lbb391:
	movq 8(%rdi), %rcx
	subq $32, %rsp
	leaq str2352(%rip), %rdx
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
Lbb392:
	cmpl $0, %eax
	jnz Lbb394
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
	jmp Lbb414
Lbb394:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb414
Lbb396:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb414
Lbb398:
	movq %rax, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	jmp Lbb414
Lbb400:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb414
Lbb402:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb414
Lbb404:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb414
Lbb406:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb414
Lbb408:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb414
Lbb410:
	movq %rax, %rdi
	movq %rdi, %rax
	jmp Lbb414
Lbb412:
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
Lbb414:
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
	jnz Lbb453
	cmpq $0, %rax
	jz Lbb452
	cmpq $1, %rax
	jz Lbb451
	cmpq $3, %rax
	jz Lbb450
	cmpq $4, %rax
	jz Lbb449
	cmpq $5, %rax
	jz Lbb448
	cmpq $6, %rax
	jz Lbb447
	cmpq $7, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb443
	cmpq $8, %rax
	jz Lbb427
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
	jz Lbb426
	movq 8(%rdx), %rdx
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_bind_pattern_typed_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb455
Lbb426:
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb455
Lbb427:
	movq %rsi, %rax
	movq %rcx, %rdx
	movq 8(%rcx), %rcx
	movq 16(%rdx), %r12
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%r8), %rax
	cmpq $5, %rax
	jz Lbb430
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
	jmp Lbb432
Lbb430:
	movq %rdi, %rax
	movq 8(%r8), %rdi
	movq %rdi, (%rsi)
Lbb432:
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
	jz Lbb441
	cmpq $1, %rax
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz Lbb436
	movq $0, (%r13)
	movl $0, %eax
	jmp Lbb437
Lbb436:
	movq 8(%r12), %rcx
	subq $32, %rsp
	leaq str2493(%rip), %rdx
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
Lbb437:
	cmpl $0, %eax
	jnz Lbb439
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
	jmp Lbb455
Lbb439:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb455
Lbb441:
	movq %rbx, %rax
	movq %rax, (%rsi)
	jmp Lbb455
Lbb443:
	movq %rsi, %rax
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $6, %rdx
	jz Lbb446
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb455
Lbb446:
	movq 8(%r8), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_bind_pattern_typed_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb455
Lbb447:
	movq %rsi, %rax
	jmp Lbb455
Lbb448:
	movq %rsi, %rax
	jmp Lbb455
Lbb449:
	movq %rsi, %rax
	jmp Lbb455
Lbb450:
	movq %rsi, %rax
	jmp Lbb455
Lbb451:
	movq %rsi, %rax
	jmp Lbb455
Lbb452:
	movq %rsi, %rax
	jmp Lbb455
Lbb453:
	movq %rsi, %rax
	movq 8(%rcx), %rdx
	subq $32, %rsp
	movq %rax, %rcx
	callq compiler_typesystem_env_env_bind
	subq $-32, %rsp
Lbb455:
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
	jnz Lbb458
	movl $0, %edx
	jmp Lbb459
Lbb458:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq %rcx, %rdx
Lbb459:
	cmpl $0, %edx
	jnz Lbb467
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $9, %rsi
	jz Lbb463
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb464
Lbb463:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq %rsi, %rcx
	movq %rcx, (%rdx)
Lbb464:
	cmpl $0, %ecx
	jnz Lbb466
	leaq str2587(%rip), %rax
	jmp Lbb468
Lbb466:
	movq 16(%rax), %rax
	jmp Lbb468
Lbb467:
	movq 8(%rax), %rcx
	movq 8(%rcx), %rcx
	movq 16(%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str2562(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb468:
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
	jz Lbb474
	movq 8(%rcx), %r9
	movq 16(%rcx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb473
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
	jmp Lbb474
Lbb473:
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_bind_pattern_list
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb474:
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
	jz Lbb477
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
Lbb477:
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
	jz Lbb480
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
Lbb480:
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
	jnz Lbb483
	movl $0, %esi
	jmp Lbb484
Lbb483:
	movq %rcx, %rdi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2650(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
Lbb484:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb487
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb488
Lbb487:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb488:
	cmpl $0, %eax
	jnz Lbb551
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb492
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb493
Lbb492:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2681(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb493:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb496
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb497
Lbb496:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb497:
	cmpl $0, %eax
	jnz Lbb550
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb501
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb502
Lbb501:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2712(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb502:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb505
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb506
Lbb505:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb506:
	cmpl $0, %eax
	jnz Lbb549
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb510
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb511
Lbb510:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2743(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb511:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb514
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb515
Lbb514:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb515:
	cmpl $0, %eax
	jnz Lbb548
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb519
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb520
Lbb519:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2774(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rax, %rsi
	movq %rsi, (%rdi)
Lbb520:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb523
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb524
Lbb523:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb524:
	cmpl $0, %eax
	jnz Lbb547
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb528
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb529
Lbb528:
	movq %rcx, %rbx
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq str2805(%rip), %rdx
	callq strcmp
	movq %rbx, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb529:
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb532
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb537
Lbb532:
	movq 16(%rcx), %rsi
	movq (%rsi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb535
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb536
Lbb535:
	movq 16(%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb536:
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb537:
	cmpl $0, %eax
	jnz Lbb546
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb542
	cmpq $1, %rax
	jz Lbb541
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
	jmp Lbb552
Lbb541:
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
	jmp Lbb552
Lbb542:
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
	jz Lbb544
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
	jmp Lbb552
Lbb544:
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
	jmp Lbb552
Lbb546:
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
	jmp Lbb552
Lbb547:
	leaq compiler_typesystem_types_TNil(%rip), %rax
	jmp Lbb552
Lbb548:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb552
Lbb549:
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb552
Lbb550:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb552
Lbb551:
	leaq compiler_typesystem_types_TInt(%rip), %rax
Lbb552:
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
	leaq str2899(%rip), %rdx
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
	jz Lbb565
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz Lbb561
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb562
Lbb561:
	movq 16(%rcx), %rdx
	movq (%rdx), %rdx
	cmpq $0, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb562:
	cmpl $0, %edx
	jnz Lbb564
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_typesystem_checker_last_segment
	subq $-32, %rsp
	jmp Lbb565
Lbb564:
	movq 8(%rcx), %rax
Lbb565:
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
	jz Lbb570
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb569
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
	jmp Lbb570
Lbb569:
	movq %rax, (%rsi)
Lbb570:
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
	jnz Lbb593
	cmpq $5, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb589
	cmpq $6, %rsi
	jz Lbb586
	cmpq $7, %rsi
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb583
	cmpq $8, %rsi
	jnz Lbb598
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $8, %rax
	jz Lbb579
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb598
Lbb579:
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
	jz Lbb581
	movq %rax, (%rdi)
	jmp Lbb582
Lbb581:
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb582:
	movq %rax, (%rsi)
	jmp Lbb598
Lbb583:
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %r8
	cmpq $7, %r8
	jz Lbb585
	movq %rax, (%rsi)
	jmp Lbb598
Lbb585:
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
	jmp Lbb598
Lbb586:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rdi
	cmpq $6, %rdi
	jz Lbb588
	movq %rax, (%rsi)
	jmp Lbb598
Lbb588:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rax, %r8
	callq compiler_typesystem_checker_collect_bindings_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb598
Lbb589:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rax, %rdi
	movq (%rdx), %rax
	cmpq $5, %rax
	jz Lbb592
	movq %rdi, (%rsi)
	movq %rdi, %rax
	jmp Lbb598
Lbb592:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	movq %rdi, %r8
	callq compiler_typesystem_checker_collect_bindings
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb598
Lbb593:
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
	jz Lbb596
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
	jmp Lbb598
Lbb596:
	movq %rdi, %rax
	movq %rax, (%rsi)
Lbb598:
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
	jz Lbb603
	movq 8(%rdx), %rcx
	movq 16(%rdx), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r8), %rdx
	cmpq $0, %rdx
	jz Lbb602
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
	jmp Lbb603
Lbb602:
	movq %rax, (%rsi)
Lbb603:
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
	jz Lbb608
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
	jz Lbb607
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_int_binding
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb609
Lbb607:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb609
Lbb608:
	leaq donna_option_None(%rip), %rax
Lbb609:
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
	jnz Lbb620
	cmpq $5, %rdx
	jz Lbb619
	cmpq $6, %rdx
	jz Lbb618
	cmpq $7, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb616
	cmpq $8, %rdx
	jnz Lbb625
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
	jmp Lbb625
Lbb616:
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
	jmp Lbb625
Lbb618:
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
	jmp Lbb625
Lbb619:
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
	jmp Lbb625
Lbb620:
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
	jz Lbb623
	movq %rax, (%rcx)
	jmp Lbb625
Lbb623:
	movq %rdx, %rax
	movq 8(%rax), %rax
	movq %rax, (%rcx)
Lbb625:
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
	jz Lbb628
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
	jmp Lbb629
Lbb628:
	leaq donna_nil(%rip), %rax
Lbb629:
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
	jz Lbb704
	cmpq $6, %rdx
	jz Lbb697
	cmpq $7, %rdx
	jz Lbb690
	cmpq $8, %rdx
	jz Lbb683
	cmpq $15, %rdx
	jz Lbb676
	cmpq $16, %rdx
	jz Lbb669
	cmpq $17, %rdx
	jz Lbb662
	cmpq $18, %rdx
	jz Lbb655
	cmpq $19, %rdx
	jz Lbb648
	cmpq $20, %rdx
	jz Lbb641
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	jmp Lbb711
Lbb641:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $3, %rdx
	jz Lbb643
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
	leaq str3543(%rip), %rax
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
	jmp Lbb711
Lbb643:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $3, %rax
	jz Lbb646
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
	leaq str3534(%rip), %rax
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
	jmp Lbb647
Lbb646:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb647:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb648:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $3, %rdx
	jz Lbb650
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
	leaq str3507(%rip), %rax
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
	jmp Lbb711
Lbb650:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $3, %rax
	jz Lbb653
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
	leaq str3498(%rip), %rax
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
	jmp Lbb654
Lbb653:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb654:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb655:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb657
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
	leaq str3471(%rip), %rax
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
	jmp Lbb711
Lbb657:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb660
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
	leaq str3462(%rip), %rax
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
	jmp Lbb661
Lbb660:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb661:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb662:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb664
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
	leaq str3435(%rip), %rax
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
	jmp Lbb711
Lbb664:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb667
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
	leaq str3426(%rip), %rax
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
	jmp Lbb668
Lbb667:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb668:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb669:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb671
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
	leaq str3399(%rip), %rax
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
	jmp Lbb711
Lbb671:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb674
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
	leaq str3390(%rip), %rax
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
	jmp Lbb675
Lbb674:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb675:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb676:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb678
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
	leaq str3363(%rip), %rax
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
	jmp Lbb711
Lbb678:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb681
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
	leaq str3354(%rip), %rax
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
	jmp Lbb682
Lbb681:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb682:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb683:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb685
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
	leaq str3327(%rip), %rax
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
	jmp Lbb711
Lbb685:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb688
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
	leaq str3318(%rip), %rax
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
	jmp Lbb689
Lbb688:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb689:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb690:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb692
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
	leaq str3291(%rip), %rax
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
	jmp Lbb711
Lbb692:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb695
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
	leaq str3282(%rip), %rax
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
	jmp Lbb696
Lbb695:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb696:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb697:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb699
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
	leaq str3255(%rip), %rax
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
	jmp Lbb711
Lbb699:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb702
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
	leaq str3246(%rip), %rax
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
	jmp Lbb703
Lbb702:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb703:
	movq %rax, (%rsi)
	jmp Lbb711
Lbb704:
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	jz Lbb706
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
	leaq str3219(%rip), %rax
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
	jmp Lbb711
Lbb706:
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	jz Lbb709
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
	leaq str3210(%rip), %rax
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
	jmp Lbb710
Lbb709:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq $1, 8(%rax)
	movq %rax, (%rdi)
Lbb710:
	movq %rax, (%rsi)
Lbb711:
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
	jz Lbb754
	cmpq $1, %rax
	jz Lbb753
	cmpq $2, %rax
	jz Lbb752
	cmpq $3, %rax
	jz Lbb751
	cmpq $4, %rax
	jz Lbb750
	cmpq $5, %rax
	jz Lbb749
	cmpq $6, %rax
	jz Lbb748
	cmpq $7, %rax
	jz Lbb747
	cmpq $8, %rax
	jz Lbb746
	cmpq $9, %rax
	jz Lbb745
	cmpq $10, %rax
	jz Lbb744
	cmpq $11, %rax
	jz Lbb743
	cmpq $12, %rax
	jz Lbb742
	cmpq $13, %rax
	jz Lbb741
	cmpq $14, %rax
	jz Lbb740
	cmpq $15, %rax
	jz Lbb739
	cmpq $16, %rax
	jz Lbb738
	cmpq $17, %rax
	jz Lbb737
	cmpq $18, %rax
	jz Lbb736
	cmpq $19, %rax
	jz Lbb735
	cmpq $20, %rax
	jz Lbb734
	leaq compiler_typesystem_types_TString(%rip), %rax
	jmp Lbb755
Lbb734:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb735:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb736:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb737:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb738:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb739:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb740:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb741:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb742:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb743:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb744:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb745:
	leaq compiler_typesystem_types_TBool(%rip), %rax
	jmp Lbb755
Lbb746:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb755
Lbb747:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb755
Lbb748:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb755
Lbb749:
	leaq compiler_typesystem_types_TFloat(%rip), %rax
	jmp Lbb755
Lbb750:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb755
Lbb751:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb755
Lbb752:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb755
Lbb753:
	leaq compiler_typesystem_types_TInt(%rip), %rax
	jmp Lbb755
Lbb754:
	leaq compiler_typesystem_types_TInt(%rip), %rax
Lbb755:
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
	leaq str3642(%rip), %rdx
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
	jz Lbb762
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
	jz Lbb761
	subq $32, %rsp
	callq compiler_typesystem_checker_lookup_binding
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb763
Lbb761:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb763
Lbb762:
	leaq donna_option_None(%rip), %rax
Lbb763:
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
	jz Lbb769
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
	jz Lbb767
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_fns_to_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb768
Lbb767:
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
Lbb768:
	movq %rax, (%rsi)
	jmp Lbb770
Lbb769:
	leaq donna_nil(%rip), %rax
Lbb770:
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
	jz Lbb776
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
	jz Lbb774
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_consts_to_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb775
Lbb774:
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
Lbb775:
	movq %rax, (%rsi)
	jmp Lbb777
Lbb776:
	leaq donna_nil(%rip), %rax
Lbb777:
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
	jz Lbb784
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
	jz Lbb781
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
	jmp Lbb783
Lbb781:
	movq %rbx, %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_bindings
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb783:
	movq %rax, (%rsi)
	jmp Lbb785
Lbb784:
	leaq donna_nil(%rip), %rax
Lbb785:
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
	jz Lbb794
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
	jz Lbb790
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
	jmp Lbb793
Lbb790:
	movq %rbx, %rdi
	movq %r14, %rdx
	movq %rdx, (%rdi)
	movq %rdx, %rbx
Lbb793:
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
	jmp Lbb795
Lbb794:
	leaq donna_nil(%rip), %rax
Lbb795:
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
	jz Lbb802
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
	jz Lbb799
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
	jmp Lbb801
Lbb799:
	movq %rbx, %rcx
	subq $32, %rsp
	callq compiler_typesystem_checker_pub_type_defs_to_ctor_info
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb801:
	movq %rax, (%rsi)
	jmp Lbb803
Lbb802:
	leaq donna_nil(%rip), %rax
Lbb803:
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
	jz Lbb806
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
	jmp Lbb807
Lbb806:
	leaq donna_nil(%rip), %rax
Lbb807:
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

