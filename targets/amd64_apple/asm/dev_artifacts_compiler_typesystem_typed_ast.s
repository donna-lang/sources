.text
.balign 16
.globl _compiler_typesystem_typed_ast_ModuleInterface
_compiler_typesystem_typed_ast_ModuleInterface:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_typed_ast_ModuleInterface */

.text
.balign 16
.globl _compiler_typesystem_typed_ast_TypedModule
_compiler_typesystem_typed_ast_TypedModule:
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
/* end function compiler_typesystem_typed_ast_TypedModule */

.text
.balign 16
.globl _compiler_typesystem_typed_ast_TypedTypeDef
_compiler_typesystem_typed_ast_TypedTypeDef:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq _malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_typed_ast_TypedTypeDef */

.text
.balign 16
.globl _compiler_typesystem_typed_ast_TypedConstructor
_compiler_typesystem_typed_ast_TypedConstructor:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq _malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_typed_ast_TypedConstructor */

.text
.balign 16
.globl _compiler_typesystem_typed_ast_TypedFunction
_compiler_typesystem_typed_ast_TypedFunction:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 16(%rbp), %rax
	movq %rax, -16(%rbp)
	movq %r9, %rbx
	movq %r8, %r12
	movq %rcx, %r13
	movq %rdx, %r14
	movq %rsi, %r15
	movq %rdi, -8(%rbp)
	movl $64, %edi
	callq _malloc
	movq -16(%rbp), %rcx
	movq -8(%rbp), %rdx
	movq $0, (%rax)
	movq %rdx, 8(%rax)
	movq %r15, 16(%rax)
	movq %r14, 24(%rax)
	movq %r13, 32(%rax)
	movq %r12, 40(%rax)
	movq %rbx, 48(%rax)
	movq %rcx, 56(%rax)
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
.globl _compiler_typesystem_typed_ast_TypedConstant
_compiler_typesystem_typed_ast_TypedConstant:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq _malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_typed_ast_TypedConstant */

