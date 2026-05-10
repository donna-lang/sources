.text
.balign 16
.globl compiler_typesystem_typed_ast_ModuleInterface
compiler_typesystem_typed_ast_ModuleInterface:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_typed_ast_ModuleInterface */

.text
.balign 16
.globl compiler_typesystem_typed_ast_TypedModule
compiler_typesystem_typed_ast_TypedModule:
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
/* end function compiler_typesystem_typed_ast_TypedModule */

.text
.balign 16
.globl compiler_typesystem_typed_ast_TypedTypeDef
compiler_typesystem_typed_ast_TypedTypeDef:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_typed_ast_TypedTypeDef */

.text
.balign 16
.globl compiler_typesystem_typed_ast_TypedConstructor
compiler_typesystem_typed_ast_TypedConstructor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_typed_ast_TypedConstructor */

.text
.balign 16
.globl compiler_typesystem_typed_ast_TypedFunction
compiler_typesystem_typed_ast_TypedFunction:
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
	movq 64(%rbp), %rsi
	movq 56(%rbp), %rdi
	movq 48(%rbp), %rbx
	movq %r9, %r12
	movq %r8, %r13
	movq %rdx, %r14
	movq %rcx, %r15
	subq $32, %rsp
	movl $64, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %r13, 24(%rax)
	movq %r12, 32(%rax)
	movq %rbx, 40(%rax)
	movq %rdi, 48(%rax)
	movq %rsi, 56(%rax)
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_typed_ast_TypedFunction */

.text
.balign 16
.globl compiler_typesystem_typed_ast_TypedConstant
compiler_typesystem_typed_ast_TypedConstant:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r9, %r12
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $40, %ecx
	callq malloc
	movq %r12, %r9
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	movq %r9, 32(%rax)
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_typed_ast_TypedConstant */

