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
	subq $32, %rsp
	movl $48, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 24(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 32(%rax)
	movq $0, 40(%rax)
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
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 8(%rcx), %r15
	movq 16(%rcx), %r14
	movq 24(%rcx), %r13
	movq 32(%rcx), %r12
	movq 40(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $9, (%rdi)
	movq %rsi, 8(%rdi)
	movq %rsi, %rbx
	addq $1, %rbx
	subq $32, %rsp
	movl $48, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $0, (%rsi)
	movq %r15, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	movq %rbx, 40(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
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
	pushq %rsi
	pushq %rdi
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
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb15
Lbb13:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb15
Lbb14:
	leaq donna_option_None(%rip), %rax
Lbb15:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
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
	movq %r8, %r13
	movq %rdx, %r15
	movq 8(%rcx), %r14
	movq 16(%rcx), %r12
	movq 24(%rcx), %rbx
	movq 32(%rcx), %rdi
	movq 40(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %r13, %r8
	movq %rax, %r13
	subq $-32, %rsp
	movq $0, (%r13)
	movq %r8, 8(%r13)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %r15, %rdx
	movq %rax, %r15
	subq $-32, %rsp
	movq %rdx, (%r15)
	movq %r13, 8(%r15)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $1, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
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
	movq %rdx, %rbx
	movq 8(%rcx), %r13
	movq 16(%rcx), %r12
	movq 24(%rcx), %r14
	movq 32(%rcx), %rdi
	movq 40(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %r15, %r8
	movq %rbx, %rdx
	movq %rax, %r15
	subq $-32, %rsp
	movq %rdx, (%r15)
	movq %r8, 8(%r15)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r15, 8(%rbx)
	movq %r14, 16(%rbx)
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
	movq %r9, %r12
	movq %r8, %r15
	movq %rdx, %rbx
	movq 8(%rcx), %r13
	movq 16(%rcx), %rax
	movq 24(%rcx), %r14
	movq 32(%rcx), %rdi
	movq %rax, %rsi
	movq 40(%rcx), %rax
	movq %rax, -16(%rbp)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %r12, %r9
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rbx, (%rcx)
	movq %r9, 8(%rcx)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq %rsi, %rax
	movq -16(%rbp), %rsi
	subq $-32, %rsp
	movq $1, (%r12)
	movq %rcx, 8(%r12)
	movq %rax, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %r15, %r8
	movq %rbx, %rdx
	movq %rax, %r15
	subq $-32, %rsp
	movq %rdx, (%r15)
	movq %r8, 8(%r15)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r15, 8(%rbx)
	movq %r14, 16(%rbx)
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
	movq %rdx, %rdi
	movq 8(%rcx), %r13
	movq 16(%rcx), %r12
	movq 24(%rcx), %rbx
	movq 32(%rcx), %r14
	movq 40(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %r15, %r8
	movq %rdi, %rdx
	movq %rax, %r15
	subq $-32, %rsp
	movq %rdx, (%r15)
	movq %r8, 8(%r15)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %r15, 8(%rdi)
	movq %r14, 16(%rdi)
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
	jz Lbb34
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
	jmp Lbb35
Lbb33:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb35
Lbb34:
	leaq donna_option_None(%rip), %rax
Lbb35:
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
	jz Lbb40
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
	jz Lbb39
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_module
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb41
Lbb39:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb41
Lbb40:
	leaq donna_option_None(%rip), %rax
Lbb41:
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
	jz Lbb46
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
	jz Lbb45
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_string
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb47
Lbb45:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb47
Lbb46:
	leaq donna_option_None(%rip), %rax
Lbb47:
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
	jz Lbb52
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
	jz Lbb51
	subq $32, %rsp
	callq compiler_typesystem_env_lookup_ctor
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb53
Lbb51:
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb53
Lbb52:
	leaq donna_option_None(%rip), %rax
Lbb53:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_ctor */

