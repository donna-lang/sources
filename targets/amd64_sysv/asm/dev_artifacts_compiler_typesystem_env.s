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
	pushq %r14
	pushq %r15
	movq %r8, %r15
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $48, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	movq %r8, 40(%rax)
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_Env, @function
.size compiler_typesystem_env_Env, .-compiler_typesystem_env_Env
/* end function compiler_typesystem_env_Env */

.text
.balign 16
.globl compiler_typesystem_env_new_env
compiler_typesystem_env_new_env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %r8d
	leaq donna_nil(%rip), %rcx
	leaq donna_nil(%rip), %rdx
	leaq donna_nil(%rip), %rsi
	leaq donna_nil(%rip), %rdi
	callq compiler_typesystem_env_Env
	leave
	ret
.type compiler_typesystem_env_new_env, @function
.size compiler_typesystem_env_new_env, .-compiler_typesystem_env_new_env
/* end function compiler_typesystem_env_new_env */

.text
.balign 16
.globl compiler_typesystem_env_env_next_var
compiler_typesystem_env_env_next_var:
	endbr64
	movq 40(%rdi), %rax
	ret
.type compiler_typesystem_env_env_next_var, @function
.size compiler_typesystem_env_env_next_var, .-compiler_typesystem_env_env_next_var
/* end function compiler_typesystem_env_env_next_var */

.text
.balign 16
.globl compiler_typesystem_env_env_ctor_info
compiler_typesystem_env_env_ctor_info:
	endbr64
	movq 32(%rdi), %rax
	ret
.type compiler_typesystem_env_env_ctor_info, @function
.size compiler_typesystem_env_env_ctor_info, .-compiler_typesystem_env_env_ctor_info
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
	pushq %r14
	pushq %r15
	movq %rdi, %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	movq 24(%rax), %r14
	movq 32(%rax), %r15
	movq 40(%rax), %rbx
	movq %rdi, %r12
	movq %rbx, %rdi
	callq compiler_typesystem_types_TTypeVar
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rbx, %r8
	addq $1, %r8
	callq compiler_typesystem_env_Env
	movq %rax, %rbx
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
.type compiler_typesystem_env_fresh_var, @function
.size compiler_typesystem_env_fresh_var, .-compiler_typesystem_env_fresh_var
/* end function compiler_typesystem_env_fresh_var */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup
compiler_typesystem_env_env_lookup:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq 8(%rdi), %rdi
	callq compiler_typesystem_env_lookup_scheme
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb14
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb13
	movq 16(%rax), %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb15
.Lbb13:
	movq 8(%rax), %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb15
.Lbb14:
	leaq donna_option_None(%rip), %rax
.Lbb15:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_env_lookup, @function
.size compiler_typesystem_env_env_lookup, .-compiler_typesystem_env_env_lookup
/* end function compiler_typesystem_env_env_lookup */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_module
compiler_typesystem_env_env_lookup_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rdi), %rdi
	callq compiler_typesystem_env_lookup_module
	leave
	ret
.type compiler_typesystem_env_env_lookup_module, @function
.size compiler_typesystem_env_env_lookup_module, .-compiler_typesystem_env_env_lookup_module
/* end function compiler_typesystem_env_env_lookup_module */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_alias
compiler_typesystem_env_env_lookup_alias:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 24(%rdi), %rdi
	callq compiler_typesystem_env_lookup_string
	leave
	ret
.type compiler_typesystem_env_env_lookup_alias, @function
.size compiler_typesystem_env_env_lookup_alias, .-compiler_typesystem_env_env_lookup_alias
/* end function compiler_typesystem_env_env_lookup_alias */

.text
.balign 16
.globl compiler_typesystem_env_env_lookup_ctor
compiler_typesystem_env_env_lookup_ctor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 32(%rdi), %rdi
	callq compiler_typesystem_env_lookup_ctor
	leave
	ret
.type compiler_typesystem_env_env_lookup_ctor, @function
.size compiler_typesystem_env_env_lookup_ctor, .-compiler_typesystem_env_env_lookup_ctor
/* end function compiler_typesystem_env_env_lookup_ctor */

.text
.balign 16
.globl compiler_typesystem_env_env_bind
compiler_typesystem_env_env_bind:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, -8(%rbp)
	movq %rdi, %rax
	movq %rdx, %rdi
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 16(%rax), %r12
	movq 24(%rax), %r13
	movq 32(%rax), %r14
	movq 40(%rax), %r15
	callq compiler_typesystem_types_Mono
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq %r12, %rsi
	xchgq %rax, %rbx
	movq %rsi, %r12
	movq -8(%rbp), %rsi
	movq %rsi, (%rbx)
	movq %rax, 8(%rbx)
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %rdi
	movq -16(%rbp), %rax
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	movq %rax, 16(%rdi)
	callq compiler_typesystem_env_Env
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_env_bind, @function
.size compiler_typesystem_env_env_bind, .-compiler_typesystem_env_env_bind
/* end function compiler_typesystem_env_env_bind */

.text
.balign 16
.globl compiler_typesystem_env_env_register_alias
compiler_typesystem_env_env_register_alias:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r13
	movq %rsi, -8(%rbp)
	movq 8(%rdi), %rax
	movq %rax, -16(%rbp)
	movq 16(%rdi), %r12
	movq 24(%rdi), %rbx
	movq 32(%rdi), %r14
	movq 40(%rdi), %r15
	movl $16, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %r12
	movq %rsi, %r13
	movq -8(%rbp), %rsi
	movq %rsi, (%r12)
	movq %rdx, 8(%r12)
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rsi
	movq %rax, %rdx
	movq -16(%rbp), %rdi
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq compiler_typesystem_env_Env
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_env_register_alias, @function
.size compiler_typesystem_env_env_register_alias, .-compiler_typesystem_env_env_register_alias
/* end function compiler_typesystem_env_env_register_alias */

.text
.balign 16
.globl compiler_typesystem_env_env_add_module
compiler_typesystem_env_env_add_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r15
	movq %rsi, %r12
	movq 8(%rdi), %rax
	movq %rax, -32(%rbp)
	movq 16(%rdi), %r13
	movq 24(%rdi), %rbx
	movq %rcx, %r14
	movq 32(%rdi), %rcx
	movq %rcx, -16(%rbp)
	movq 40(%rdi), %r8
	movq %r8, -24(%rbp)
	movl $16, %edi
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq %r12, (%r14)
	movq %rcx, 8(%r14)
	movl $24, %edi
	callq malloc
	movq %r14, %rcx
	xchgq %rax, %r13
	movq -16(%rbp), %r14
	movq $1, (%r13)
	movq %rcx, 8(%r13)
	movq %rax, 16(%r13)
	movl $16, %edi
	callq malloc
	movq %r15, %rdx
	movq %r12, %rsi
	movq %rax, %r12
	movq -24(%rbp), %r15
	movq %rsi, (%r12)
	movq %rdx, 8(%r12)
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rsi
	movq %rax, %rdx
	movq -32(%rbp), %rdi
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq compiler_typesystem_env_Env
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_env_add_module, @function
.size compiler_typesystem_env_env_add_module, .-compiler_typesystem_env_env_add_module
/* end function compiler_typesystem_env_env_add_module */

.text
.balign 16
.globl compiler_typesystem_env_env_add_ctor
compiler_typesystem_env_env_add_ctor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r13
	movq %rsi, -8(%rbp)
	movq 8(%rdi), %rax
	movq %rax, -16(%rbp)
	movq 16(%rdi), %r12
	movq 24(%rdi), %r14
	movq 32(%rdi), %rbx
	movq 40(%rdi), %r15
	movl $16, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %r12
	movq %rsi, %r13
	movq -8(%rbp), %rsi
	movq %rsi, (%r12)
	movq %rdx, 8(%r12)
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %rcx
	movq -16(%rbp), %rdi
	movq $1, (%rcx)
	movq %r12, 8(%rcx)
	movq %rbx, 16(%rcx)
	callq compiler_typesystem_env_Env
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_env_add_ctor, @function
.size compiler_typesystem_env_env_add_ctor, .-compiler_typesystem_env_env_add_ctor
/* end function compiler_typesystem_env_env_add_ctor */

.text
.balign 16
compiler_typesystem_env_lookup_scheme:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb35
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
	jz .Lbb33
	callq compiler_typesystem_env_lookup_scheme
	movq %rax, (%rbx)
	jmp .Lbb36
.Lbb33:
	movq %r12, %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb36
.Lbb35:
	leaq donna_option_None(%rip), %rax
.Lbb36:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_lookup_scheme, @function
.size compiler_typesystem_env_lookup_scheme, .-compiler_typesystem_env_lookup_scheme
/* end function compiler_typesystem_env_lookup_scheme */

.text
.balign 16
compiler_typesystem_env_lookup_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb42
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
	jz .Lbb40
	callq compiler_typesystem_env_lookup_module
	movq %rax, (%rbx)
	jmp .Lbb43
.Lbb40:
	movq %r12, %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb43
.Lbb42:
	leaq donna_option_None(%rip), %rax
.Lbb43:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_lookup_module, @function
.size compiler_typesystem_env_lookup_module, .-compiler_typesystem_env_lookup_module
/* end function compiler_typesystem_env_lookup_module */

.text
.balign 16
compiler_typesystem_env_lookup_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb49
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
	jz .Lbb47
	callq compiler_typesystem_env_lookup_string
	movq %rax, (%rbx)
	jmp .Lbb50
.Lbb47:
	movq %r12, %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb50
.Lbb49:
	leaq donna_option_None(%rip), %rax
.Lbb50:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_lookup_string, @function
.size compiler_typesystem_env_lookup_string, .-compiler_typesystem_env_lookup_string
/* end function compiler_typesystem_env_lookup_string */

.text
.balign 16
compiler_typesystem_env_lookup_ctor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb56
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
	jz .Lbb54
	callq compiler_typesystem_env_lookup_ctor
	movq %rax, (%rbx)
	jmp .Lbb57
.Lbb54:
	movq %r12, %rdi
	callq donna_option_Some
	movq %rax, (%rbx)
	jmp .Lbb57
.Lbb56:
	leaq donna_option_None(%rip), %rax
.Lbb57:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_typesystem_env_lookup_ctor, @function
.size compiler_typesystem_env_lookup_ctor, .-compiler_typesystem_env_lookup_ctor
/* end function compiler_typesystem_env_lookup_ctor */

.section .note.GNU-stack,"",@progbits
