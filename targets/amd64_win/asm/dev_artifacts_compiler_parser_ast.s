.data
.balign 8
.globl compiler_parser_ast_BAdd
compiler_parser_ast_BAdd:
	.quad 0
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BSub
compiler_parser_ast_BSub:
	.quad 1
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BMul
compiler_parser_ast_BMul:
	.quad 2
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BDiv
compiler_parser_ast_BDiv:
	.quad 3
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BMod
compiler_parser_ast_BMod:
	.quad 4
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BAddDot
compiler_parser_ast_BAddDot:
	.quad 5
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BSubDot
compiler_parser_ast_BSubDot:
	.quad 6
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BMulDot
compiler_parser_ast_BMulDot:
	.quad 7
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BDivDot
compiler_parser_ast_BDivDot:
	.quad 8
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BEq
compiler_parser_ast_BEq:
	.quad 9
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BNotEq
compiler_parser_ast_BNotEq:
	.quad 10
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BLt
compiler_parser_ast_BLt:
	.quad 11
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BLtEq
compiler_parser_ast_BLtEq:
	.quad 12
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BGt
compiler_parser_ast_BGt:
	.quad 13
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BGtEq
compiler_parser_ast_BGtEq:
	.quad 14
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BLtDot
compiler_parser_ast_BLtDot:
	.quad 15
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BLtEqDot
compiler_parser_ast_BLtEqDot:
	.quad 16
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BGtDot
compiler_parser_ast_BGtDot:
	.quad 17
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BGtEqDot
compiler_parser_ast_BGtEqDot:
	.quad 18
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BAnd
compiler_parser_ast_BAnd:
	.quad 19
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BOr
compiler_parser_ast_BOr:
	.quad 20
/* end data */

.data
.balign 8
.globl compiler_parser_ast_BConcat
compiler_parser_ast_BConcat:
	.quad 21
/* end data */

.data
.balign 8
.globl compiler_parser_ast_UNeg
compiler_parser_ast_UNeg:
	.quad 0
/* end data */

.data
.balign 8
.globl compiler_parser_ast_UNot
compiler_parser_ast_UNot:
	.quad 1
/* end data */

.text
.balign 16
.globl compiler_parser_ast_Module
compiler_parser_ast_Module:
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
/* end function compiler_parser_ast_Module */

.text
.balign 16
.globl compiler_parser_ast_Import
compiler_parser_ast_Import:
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
/* end function compiler_parser_ast_Import */

.text
.balign 16
.globl compiler_parser_ast_Const
compiler_parser_ast_Const:
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
/* end function compiler_parser_ast_Const */

.text
.balign 16
.globl compiler_parser_ast_Function
compiler_parser_ast_Function:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq 56(%rbp), %rsi
	movq 48(%rbp), %rdi
	movq %r9, %rbx
	movq %r8, %r12
	movq %rdx, %r13
	movq %rcx, %r14
	subq $32, %rsp
	movl $56, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %r12, 24(%rax)
	movq %rbx, 32(%rax)
	movq %rdi, 40(%rax)
	movq %rsi, 48(%rax)
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Function */

.text
.balign 16
.globl compiler_parser_ast_ExternalFn
compiler_parser_ast_ExternalFn:
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
	movq $1, (%rax)
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
/* end function compiler_parser_ast_ExternalFn */

.text
.balign 16
.globl compiler_parser_ast_Param
compiler_parser_ast_Param:
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
/* end function compiler_parser_ast_Param */

.text
.balign 16
.globl compiler_parser_ast_TypeDef
compiler_parser_ast_TypeDef:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq 56(%rbp), %rsi
	movq 48(%rbp), %rdi
	movq %r9, %rbx
	movq %r8, %r12
	movq %rdx, %r13
	movq %rcx, %r14
	subq $32, %rsp
	movl $56, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %r12, 24(%rax)
	movq %rbx, 32(%rax)
	movq %rdi, 40(%rax)
	movq %rsi, 48(%rax)
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_TypeDef */

.text
.balign 16
.globl compiler_parser_ast_ConstructorDef
compiler_parser_ast_ConstructorDef:
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
/* end function compiler_parser_ast_ConstructorDef */

.text
.balign 16
.globl compiler_parser_ast_TyName
compiler_parser_ast_TyName:
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
/* end function compiler_parser_ast_TyName */

.text
.balign 16
.globl compiler_parser_ast_TyTuple
compiler_parser_ast_TyTuple:
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
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_TyTuple */

.text
.balign 16
.globl compiler_parser_ast_TyFn
compiler_parser_ast_TyFn:
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
	movq $2, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_TyFn */

.text
.balign 16
.globl compiler_parser_ast_IntLit
compiler_parser_ast_IntLit:
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
/* end function compiler_parser_ast_IntLit */

.text
.balign 16
.globl compiler_parser_ast_FloatLit
compiler_parser_ast_FloatLit:
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
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_FloatLit */

.text
.balign 16
.globl compiler_parser_ast_StringLit
compiler_parser_ast_StringLit:
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
	movq $2, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_StringLit */

.text
.balign 16
.globl compiler_parser_ast_BoolLit
compiler_parser_ast_BoolLit:
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
	movq $3, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_BoolLit */

.text
.balign 16
.globl compiler_parser_ast_Var
compiler_parser_ast_Var:
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
	movq $4, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_Var */

.text
.balign 16
.globl compiler_parser_ast_FieldAccess
compiler_parser_ast_FieldAccess:
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
	movq $5, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_FieldAccess */

.text
.balign 16
.globl compiler_parser_ast_Tuple
compiler_parser_ast_Tuple:
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
	movq $6, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_Tuple */

.text
.balign 16
.globl compiler_parser_ast_EList
compiler_parser_ast_EList:
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
	movq $7, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_EList */

.text
.balign 16
.globl compiler_parser_ast_ListSpread
compiler_parser_ast_ListSpread:
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
	movq $8, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_ListSpread */

.text
.balign 16
.globl compiler_parser_ast_Call
compiler_parser_ast_Call:
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
	movq $9, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Call */

.text
.balign 16
.globl compiler_parser_ast_BinOp
compiler_parser_ast_BinOp:
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
	movq $10, (%rax)
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
/* end function compiler_parser_ast_BinOp */

.text
.balign 16
.globl compiler_parser_ast_UnaryOp
compiler_parser_ast_UnaryOp:
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
	movq $11, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_UnaryOp */

.text
.balign 16
.globl compiler_parser_ast_Case
compiler_parser_ast_Case:
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
	movq $12, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Case */

.text
.balign 16
.globl compiler_parser_ast_Block
compiler_parser_ast_Block:
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
	movq $13, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_Block */

.text
.balign 16
.globl compiler_parser_ast_Pipe
compiler_parser_ast_Pipe:
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
	movq $14, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Pipe */

.text
.balign 16
.globl compiler_parser_ast_Lambda
compiler_parser_ast_Lambda:
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
	movq $15, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Lambda */

.text
.balign 16
.globl compiler_parser_ast_Echo
compiler_parser_ast_Echo:
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
	movq $16, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_Echo */

.text
.balign 16
.globl compiler_parser_ast_Panic
compiler_parser_ast_Panic:
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
	movq $17, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_Panic */

.text
.balign 16
.globl compiler_parser_ast_Todo
compiler_parser_ast_Todo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $18, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_Todo */

.text
.balign 16
.globl compiler_parser_ast_LetStmt
compiler_parser_ast_LetStmt:
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
/* end function compiler_parser_ast_LetStmt */

.text
.balign 16
.globl compiler_parser_ast_LetPatStmt
compiler_parser_ast_LetPatStmt:
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
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_LetPatStmt */

.text
.balign 16
.globl compiler_parser_ast_ExprStmt
compiler_parser_ast_ExprStmt:
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
	movq $2, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_ExprStmt */

.text
.balign 16
.globl compiler_parser_ast_CaseClause
compiler_parser_ast_CaseClause:
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
/* end function compiler_parser_ast_CaseClause */

.text
.balign 16
.globl compiler_parser_ast_PWild
compiler_parser_ast_PWild:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_PWild */

.text
.balign 16
.globl compiler_parser_ast_PDiscard
compiler_parser_ast_PDiscard:
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
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_PDiscard */

.text
.balign 16
.globl compiler_parser_ast_PVar
compiler_parser_ast_PVar:
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
	movq $2, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_PVar */

.text
.balign 16
.globl compiler_parser_ast_PInt
compiler_parser_ast_PInt:
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
	movq $3, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_PInt */

.text
.balign 16
.globl compiler_parser_ast_PFloat
compiler_parser_ast_PFloat:
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
	movq $4, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_PFloat */

.text
.balign 16
.globl compiler_parser_ast_PString
compiler_parser_ast_PString:
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
	movq $5, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_PString */

.text
.balign 16
.globl compiler_parser_ast_PBool
compiler_parser_ast_PBool:
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
	movq $6, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_PBool */

.text
.balign 16
.globl compiler_parser_ast_PTuple
compiler_parser_ast_PTuple:
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
	movq $7, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_ast_PTuple */

.text
.balign 16
.globl compiler_parser_ast_PList
compiler_parser_ast_PList:
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
	movq $8, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PList */

.text
.balign 16
.globl compiler_parser_ast_PCons
compiler_parser_ast_PCons:
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
	movq $9, (%rax)
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
/* end function compiler_parser_ast_PCons */

