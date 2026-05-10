.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.text
.balign 16
.globl _compiler_typesystem_env_Env
_compiler_typesystem_env_Env:
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
	callq _malloc
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
/* end function compiler_typesystem_env_Env */

.text
.balign 16
.globl _compiler_typesystem_env_new_env
_compiler_typesystem_env_new_env:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movl $0, %r8d
	leaq _donna_nil(%rip), %rcx
	leaq _donna_nil(%rip), %rdx
	leaq _donna_nil(%rip), %rsi
	leaq _donna_nil(%rip), %rdi
	callq _compiler_typesystem_env_Env
	leave
	ret
/* end function compiler_typesystem_env_new_env */

.text
.balign 16
.globl _compiler_typesystem_env_env_next_var
_compiler_typesystem_env_env_next_var:
	endbr64
	movq 40(%rdi), %rax
	ret
/* end function compiler_typesystem_env_env_next_var */

.text
.balign 16
.globl _compiler_typesystem_env_env_ctor_info
_compiler_typesystem_env_env_ctor_info:
	endbr64
	movq 32(%rdi), %rax
	ret
/* end function compiler_typesystem_env_env_ctor_info */

.text
.balign 16
.globl _compiler_typesystem_env_fresh_var
_compiler_typesystem_env_fresh_var:
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
	callq _compiler_typesystem_types_TTypeVar
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq %rbx, %r8
	addq $1, %r8
	callq _compiler_typesystem_env_Env
	movq %rax, %rbx
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
/* end function compiler_typesystem_env_fresh_var */

.text
.balign 16
.globl _compiler_typesystem_env_env_lookup
_compiler_typesystem_env_env_lookup:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq 8(%rdi), %rdi
	callq _compiler_typesystem_env_lookup_scheme
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb14
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb13
	movq 16(%rax), %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb15
Lbb13:
	movq 8(%rax), %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb15
Lbb14:
	leaq _donna_option_None(%rip), %rax
Lbb15:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_env_lookup */

.text
.balign 16
.globl _compiler_typesystem_env_env_lookup_module
_compiler_typesystem_env_env_lookup_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 16(%rdi), %rdi
	callq _compiler_typesystem_env_lookup_module
	leave
	ret
/* end function compiler_typesystem_env_env_lookup_module */

.text
.balign 16
.globl _compiler_typesystem_env_env_lookup_alias
_compiler_typesystem_env_env_lookup_alias:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 24(%rdi), %rdi
	callq _compiler_typesystem_env_lookup_string
	leave
	ret
/* end function compiler_typesystem_env_env_lookup_alias */

.text
.balign 16
.globl _compiler_typesystem_env_env_lookup_ctor
_compiler_typesystem_env_env_lookup_ctor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq 32(%rdi), %rdi
	callq _compiler_typesystem_env_lookup_ctor
	leave
	ret
/* end function compiler_typesystem_env_env_lookup_ctor */

.text
.balign 16
.globl _compiler_typesystem_env_env_bind
_compiler_typesystem_env_env_bind:
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
	movq 8(%rax), %rbx
	movq 16(%rax), %r13
	movq 24(%rax), %r14
	movq 32(%rax), %r15
	movq 40(%rax), %r8
	movq %r8, -16(%rbp)
	callq _compiler_typesystem_types_Mono
	movq %rax, -8(%rbp)
	movl $16, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq -8(%rbp), %rax
	movq %rsi, (%r12)
	movq %rax, 8(%r12)
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %rdi
	movq -16(%rbp), %r8
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	callq _compiler_typesystem_env_Env
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
.globl _compiler_typesystem_env_env_register_alias
_compiler_typesystem_env_env_register_alias:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %r14
	movq 24(%rax), %rbx
	movq 32(%rax), %rcx
	movq %rcx, -8(%rbp)
	movq 40(%rax), %r8
	movq %r8, -16(%rbp)
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq -8(%rbp), %r15
	movq %rsi, (%r12)
	movq %rdx, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq -16(%rbp), %r8
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _compiler_typesystem_env_Env
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
.globl _compiler_typesystem_env_env_add_module
_compiler_typesystem_env_env_add_module:
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
	movq %rsi, %r13
	movq %rdi, %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq 24(%rax), %rbx
	movq %rbx, -16(%rbp)
	movq %rcx, %r14
	movq 32(%rax), %rcx
	movq %rcx, -24(%rbp)
	movq 40(%rax), %r8
	movq %r8, -32(%rbp)
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %r14, %rcx
	movq %rbx, %rdi
	movq %rax, %rbx
	movq %r13, (%rbx)
	movq %rcx, 8(%rbx)
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movq %r12, 16(%r14)
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	movq -24(%rbp), %r15
	movq %rsi, (%r12)
	movq %rdx, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq -32(%rbp), %r8
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq _compiler_typesystem_env_Env
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
.globl _compiler_typesystem_env_env_add_ctor
_compiler_typesystem_env_env_add_ctor:
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
	movq %rsi, %r12
	movq %rdi, %rax
	movq 8(%rax), %rdi
	movq 16(%rax), %r14
	movq 24(%rax), %r15
	movq 32(%rax), %rbx
	movq %rbx, -8(%rbp)
	movq 40(%rax), %r8
	movq %r8, -16(%rbp)
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r12
	movq -8(%rbp), %rbx
	movq %rsi, (%r12)
	movq %rdx, 8(%r12)
	movq %rdi, %r13
	movl $24, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rcx
	movq -16(%rbp), %r8
	movq $1, (%rcx)
	movq %r12, 8(%rcx)
	movq %rbx, 16(%rcx)
	callq _compiler_typesystem_env_Env
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
_compiler_typesystem_env_lookup_scheme:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb35
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
	jz Lbb33
	callq _compiler_typesystem_env_lookup_scheme
	movq %rax, (%rbx)
	jmp Lbb36
Lbb33:
	movq %r12, %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb36
Lbb35:
	leaq _donna_option_None(%rip), %rax
Lbb36:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_scheme */

.text
.balign 16
_compiler_typesystem_env_lookup_module:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb42
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
	jz Lbb40
	callq _compiler_typesystem_env_lookup_module
	movq %rax, (%rbx)
	jmp Lbb43
Lbb40:
	movq %r12, %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb43
Lbb42:
	leaq _donna_option_None(%rip), %rax
Lbb43:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_module */

.text
.balign 16
_compiler_typesystem_env_lookup_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb49
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
	jz Lbb47
	callq _compiler_typesystem_env_lookup_string
	movq %rax, (%rbx)
	jmp Lbb50
Lbb47:
	movq %r12, %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb50
Lbb49:
	leaq _donna_option_None(%rip), %rax
Lbb50:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_string */

.text
.balign 16
_compiler_typesystem_env_lookup_ctor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb56
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
	jz Lbb54
	callq _compiler_typesystem_env_lookup_ctor
	movq %rax, (%rbx)
	jmp Lbb57
Lbb54:
	movq %r12, %rdi
	callq _donna_option_Some
	movq %rax, (%rbx)
	jmp Lbb57
Lbb56:
	leaq _donna_option_None(%rip), %rax
Lbb57:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_ctor */

