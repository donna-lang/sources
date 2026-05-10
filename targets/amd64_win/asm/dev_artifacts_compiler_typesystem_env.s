.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl compiler_typesystem_env_Env
compiler_typesystem_env_Env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq 48(%rbp), %rsi
	movq %r9, %rdi
	movq %r8, %rbx
	movq %rdx, %r12
	movq %rcx, %r13
	subq $32, %rsp
	movl $48, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rbx, 24(%rax)
	movq %rdi, 32(%rax)
	movq %rsi, 40(%rax)
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_Env */

.text
.balign 16
.globl compiler_typesystem_env_new_env
compiler_typesystem_env_new_env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp
	movq %rsp, %rax
	movq $0, 32(%rax)
	leaq donna_nil(%rip), %r9
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rdx
	leaq donna_nil(%rip), %rcx
	callq compiler_typesystem_env_Env
	subq $-48, %rsp
	leave
	ret
/* end function compiler_typesystem_env_new_env */

.text
.balign 16
.globl compiler_typesystem_env_env_next_var
compiler_typesystem_env_env_next_var:
	endbr64
	movq 40(%rcx), %rax
	ret
/* end function compiler_typesystem_env_env_next_var */

.text
.balign 16
.globl compiler_typesystem_env_env_ctor_info
compiler_typesystem_env_env_ctor_info:
	endbr64
	movq 32(%rcx), %rax
	ret
/* end function compiler_typesystem_env_env_ctor_info */

.text
.balign 16
.globl compiler_typesystem_env_fresh_var
compiler_typesystem_env_fresh_var:
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
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	movq 24(%rax), %r12
	movq 32(%rax), %r13
	movq 40(%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq compiler_typesystem_types_TTypeVar
	movq %r13, %r9
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %rsi, %rax
	addq $1, %rax
	subq $48, %rsp
	movq %rsp, %rsi
	movq %rax, 32(%rsi)
	callq compiler_typesystem_env_Env
	movq %rax, %rsi
	subq $-48, %rsp
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
/* end function compiler_typesystem_env_fresh_var */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup
compiler_typesystem_env_env_lookup:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_scheme
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb14
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb13
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb15
Lbb13:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb15
Lbb14:
	leaq donna_option_None(%rip), %rax
Lbb15:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_env_env_lookup */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_module
compiler_typesystem_env_env_lookup_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_module
	subq $-32, %rsp
	leave
	ret
/* end function compiler_typesystem_env_env_lookup_module */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_alias
compiler_typesystem_env_env_lookup_alias:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 24(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_string
	subq $-32, %rsp
	leave
	ret
/* end function compiler_typesystem_env_env_lookup_alias */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_ctor
compiler_typesystem_env_env_lookup_ctor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 32(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_ctor
	subq $-32, %rsp
	leave
	ret
/* end function compiler_typesystem_env_env_lookup_ctor */

.text
.balign 16
.globl compiler_typesystem_env_env_bind
compiler_typesystem_env_env_bind:
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
	movq %rdx, %rbx
	movq %rcx, %rax
	movq %r8, %rcx
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq 24(%rax), %r13
	movq 32(%rax), %r14
	movq 40(%rax), %rsi
	subq $32, %rsp
	callq compiler_typesystem_types_Mono
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rdx, (%rbx)
	movq %r15, 8(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %r14, %r9
	movq %r13, %r8
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rbx, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $48, %rsp
	movq %rsp, %rax
	movq %rsi, 32(%rax)
	callq compiler_typesystem_env_Env
	subq $-48, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_env_bind */

.text
.balign 16
.globl compiler_typesystem_env_env_register_alias
compiler_typesystem_env_env_register_alias:
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
	movq %r8, %r15
	movq %rdx, %r12
	movq %rcx, %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %r13
	movq 24(%rax), %rdi
	movq 32(%rax), %r14
	movq 40(%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %r15, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rdx, (%rbx)
	movq %r8, 8(%rbx)
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
	subq $48, %rsp
	movq %rsp, %rax
	movq %rsi, 32(%rax)
	callq compiler_typesystem_env_Env
	subq $-48, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_env_register_alias */

.text
.balign 16
.globl compiler_typesystem_env_env_add_module
compiler_typesystem_env_env_add_module:
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
	movq %r9, %r13
	movq %r8, %r15
	movq %rdx, %r12
	movq %rcx, %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	movq 24(%rax), %rdi
	movq 32(%rax), %r14
	movq 40(%rax), %rsi
	movq %rsi, -16(%rbp)
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %r13, %r9
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq %r12, (%rsi)
	movq %r9, 8(%rsi)
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq %rsi, %rax
	movq -16(%rbp), %rsi
	subq $-32, %rsp
	movq $1, (%r13)
	movq %rax, 8(%r13)
	movq %rbx, 16(%r13)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %r15, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rdx, (%rbx)
	movq %r8, 8(%rbx)
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
	subq $48, %rsp
	movq %rsp, %rax
	movq %rsi, 32(%rax)
	callq compiler_typesystem_env_Env
	subq $-48, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_env_add_module */

.text
.balign 16
.globl compiler_typesystem_env_env_add_ctor
compiler_typesystem_env_env_add_ctor:
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
	movq %r8, %r15
	movq %rdx, %r12
	movq %rcx, %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %r13
	movq 24(%rax), %r14
	movq 32(%rax), %rdi
	movq 40(%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %r15, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rdx, (%rbx)
	movq %r8, 8(%rbx)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r9
	subq $-32, %rsp
	movq $1, (%r9)
	movq %rbx, 8(%r9)
	movq %rdi, 16(%r9)
	subq $48, %rsp
	movq %rsp, %rax
	movq %rsi, 32(%rax)
	callq compiler_typesystem_env_Env
	subq $-48, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_env_add_ctor */

.text
.balign 16
compiler_typesystem_env_lookup_scheme:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb35
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
	jz Lbb33
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_scheme
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb36
Lbb33:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb36
Lbb35:
	leaq donna_option_None(%rip), %rax
Lbb36:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_scheme */

.text
.balign 16
compiler_typesystem_env_lookup_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb42
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
	jz Lbb40
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_module
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb43
Lbb40:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb43
Lbb42:
	leaq donna_option_None(%rip), %rax
Lbb43:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_module */

.text
.balign 16
compiler_typesystem_env_lookup_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb49
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
	jz Lbb47
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_string
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb50
Lbb47:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb50
Lbb49:
	leaq donna_option_None(%rip), %rax
Lbb50:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_string */

.text
.balign 16
compiler_typesystem_env_lookup_ctor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb56
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
	jz Lbb54
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_ctor
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb57
Lbb54:
	movq %rdi, %rcx
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb57
Lbb56:
	leaq donna_option_None(%rip), %rax
Lbb57:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_ctor */

