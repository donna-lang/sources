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
	movl $48, %edi
	callq _malloc
	movq $0, (%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 24(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 32(%rax)
	movq $0, 40(%rax)
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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 8(%rdi), %rbx
	movq 16(%rdi), %r15
	movq 24(%rdi), %r14
	movq 32(%rdi), %r13
	movq 40(%rdi), %r12
	movl $16, %edi
	callq _malloc
	xchgq %rax, %r12
	movq $9, (%r12)
	movq %rax, 8(%r12)
	addq $1, %rax
	movq %rax, -16(%rbp)
	movl $48, %edi
	callq _malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	movq -16(%rbp), %rax
	movq $0, (%rbx)
	movq %rcx, 8(%rbx)
	movq %r15, 16(%rbx)
	movq %r14, 24(%rbx)
	movq %r13, 32(%rbx)
	movq %rax, 40(%rbx)
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
	pushq %rbx
	pushq %r12
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
	movq 16(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb15
Lbb13:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb15
Lbb14:
	leaq _donna_option_None(%rip), %rax
Lbb15:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
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
	movq %rdx, %r12
	movq %rsi, %r15
	movq 8(%rdi), %rbx
	movq 16(%rdi), %r14
	movq 24(%rdi), %r13
	movq 32(%rdi), %rax
	movq %rax, -8(%rbp)
	movq 40(%rdi), %rax
	movq %rax, -16(%rbp)
	movl $16, %edi
	callq _malloc
	movq %r12, %rdx
	movq %rax, %r12
	movq $0, (%r12)
	movq %rdx, 8(%r12)
	movl $16, %edi
	callq _malloc
	movq %r15, %rsi
	movq %rax, %r15
	movq %r12, %rax
	movq -8(%rbp), %r12
	movq %rsi, (%r15)
	movq %rax, 8(%r15)
	movl $24, %edi
	callq _malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq $1, (%r15)
	movq %rcx, 8(%r15)
	movq %rax, 16(%r15)
	movl $48, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %r13, 24(%rax)
	movq %r12, 32(%rax)
	movq %rbx, 40(%rax)
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
	movq %rdx, %r13
	movq %rsi, %r12
	movq 8(%rdi), %r15
	movq 16(%rdi), %r14
	movq 24(%rdi), %rax
	movq 32(%rdi), %rbx
	movq %rbx, -8(%rbp)
	movq %rax, %rbx
	movq 40(%rdi), %rax
	movq %rax, -16(%rbp)
	movl $16, %edi
	callq _malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %r13
	movq -8(%rbp), %r12
	movq %rsi, (%r13)
	movq %rdx, 8(%r13)
	movl $24, %edi
	callq _malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq $1, (%r13)
	movq %rcx, 8(%r13)
	movq %rax, 16(%r13)
	movl $48, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %r13, 24(%rax)
	movq %r12, 32(%rax)
	movq %rbx, 40(%rax)
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
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq 8(%rdi), %r15
	movq 16(%rdi), %rax
	movq 24(%rdi), %rbx
	movq %rbx, -16(%rbp)
	movq 32(%rdi), %rbx
	movq %rbx, -24(%rbp)
	movq %rax, %rbx
	movq 40(%rdi), %rax
	movq %rax, -32(%rbp)
	movl $16, %edi
	callq _malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq %r12, (%r14)
	movq %rcx, 8(%r14)
	movl $24, %edi
	callq _malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq $1, (%r14)
	movq %rcx, 8(%r14)
	movq %rax, 16(%r14)
	movl $16, %edi
	callq _malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %r13
	movq -24(%rbp), %r12
	movq %rsi, (%r13)
	movq %rdx, 8(%r13)
	movl $24, %edi
	callq _malloc
	movq %r13, %rcx
	movq %rax, %r13
	movq %rbx, %rax
	movq -32(%rbp), %rbx
	movq $1, (%r13)
	movq %rcx, 8(%r13)
	movq %rax, 16(%r13)
	movl $48, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %r13, 24(%rax)
	movq %r12, 32(%rax)
	movq %rbx, 40(%rax)
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
	movq %rdx, %r12
	movq %rsi, %rbx
	movq 8(%rdi), %r15
	movq 16(%rdi), %r14
	movq 24(%rdi), %r13
	movq 32(%rdi), %rax
	movq %rax, -8(%rbp)
	movq 40(%rdi), %rax
	movq %rax, -16(%rbp)
	movl $16, %edi
	callq _malloc
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %r12
	movq -8(%rbp), %rbx
	movq %rsi, (%r12)
	movq %rdx, 8(%r12)
	movl $24, %edi
	callq _malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq $1, (%r12)
	movq %rcx, 8(%r12)
	movq %rax, 16(%r12)
	movl $48, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %r13, 24(%rax)
	movq %r12, 32(%rax)
	movq %rbx, 40(%rax)
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
	jz Lbb34
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
	jmp Lbb35
Lbb33:
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb35
Lbb34:
	leaq _donna_option_None(%rip), %rax
Lbb35:
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
	jz Lbb40
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
	jz Lbb39
	callq _compiler_typesystem_env_lookup_module
	movq %rax, (%rbx)
	jmp Lbb41
Lbb39:
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb41
Lbb40:
	leaq _donna_option_None(%rip), %rax
Lbb41:
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
	jz Lbb46
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
	jz Lbb45
	callq _compiler_typesystem_env_lookup_string
	movq %rax, (%rbx)
	jmp Lbb47
Lbb45:
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb47
Lbb46:
	leaq _donna_option_None(%rip), %rax
Lbb47:
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
	jz Lbb52
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
	jz Lbb51
	callq _compiler_typesystem_env_lookup_ctor
	movq %rax, (%rbx)
	jmp Lbb53
Lbb51:
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb53
Lbb52:
	leaq _donna_option_None(%rip), %rax
Lbb53:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_env_lookup_ctor */

