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
.type compiler_parser_ast_Module, @function
.size compiler_parser_ast_Module, .-compiler_parser_ast_Module
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
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
.type compiler_parser_ast_Import, @function
.size compiler_parser_ast_Import, .-compiler_parser_ast_Import
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
.type compiler_parser_ast_Const, @function
.size compiler_parser_ast_Const, .-compiler_parser_ast_Const
/* end function compiler_parser_ast_Const */

.text
.balign 16
.globl compiler_parser_ast_Function
compiler_parser_ast_Function:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %r12
	movq %rsi, %rbx
	movq %rdi, -16(%rbp)
	movl $56, %edi
	callq malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq -16(%rbp), %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	movq %r8, 40(%rax)
	movq %r9, 48(%rax)
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Function, @function
.size compiler_parser_ast_Function, .-compiler_parser_ast_Function
/* end function compiler_parser_ast_Function */

.text
.balign 16
.globl compiler_parser_ast_ExternalFn
compiler_parser_ast_ExternalFn:
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
	callq malloc
	movq -16(%rbp), %rcx
	movq -8(%rbp), %rdx
	movq $1, (%rax)
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
.type compiler_parser_ast_ExternalFn, @function
.size compiler_parser_ast_ExternalFn, .-compiler_parser_ast_ExternalFn
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
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
.type compiler_parser_ast_Param, @function
.size compiler_parser_ast_Param, .-compiler_parser_ast_Param
/* end function compiler_parser_ast_Param */

.text
.balign 16
.globl compiler_parser_ast_TypeDef
compiler_parser_ast_TypeDef:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %r12
	movq %rsi, %rbx
	movq %rdi, -16(%rbp)
	movl $56, %edi
	callq malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq -16(%rbp), %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	movq %rcx, 32(%rax)
	movq %r8, 40(%rax)
	movq %r9, 48(%rax)
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_TypeDef, @function
.size compiler_parser_ast_TypeDef, .-compiler_parser_ast_TypeDef
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
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq malloc
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
.type compiler_parser_ast_ConstructorDef, @function
.size compiler_parser_ast_ConstructorDef, .-compiler_parser_ast_ConstructorDef
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
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
.type compiler_parser_ast_TyName, @function
.size compiler_parser_ast_TyName, .-compiler_parser_ast_TyName
/* end function compiler_parser_ast_TyName */

.text
.balign 16
.globl compiler_parser_ast_TyTuple
compiler_parser_ast_TyTuple:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_TyTuple, @function
.size compiler_parser_ast_TyTuple, .-compiler_parser_ast_TyTuple
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_TyFn, @function
.size compiler_parser_ast_TyFn, .-compiler_parser_ast_TyFn
/* end function compiler_parser_ast_TyFn */

.text
.balign 16
.globl compiler_parser_ast_IntLit
compiler_parser_ast_IntLit:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_IntLit, @function
.size compiler_parser_ast_IntLit, .-compiler_parser_ast_IntLit
/* end function compiler_parser_ast_IntLit */

.text
.balign 16
.globl compiler_parser_ast_FloatLit
compiler_parser_ast_FloatLit:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_FloatLit, @function
.size compiler_parser_ast_FloatLit, .-compiler_parser_ast_FloatLit
/* end function compiler_parser_ast_FloatLit */

.text
.balign 16
.globl compiler_parser_ast_StringLit
compiler_parser_ast_StringLit:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_StringLit, @function
.size compiler_parser_ast_StringLit, .-compiler_parser_ast_StringLit
/* end function compiler_parser_ast_StringLit */

.text
.balign 16
.globl compiler_parser_ast_BoolLit
compiler_parser_ast_BoolLit:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $3, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_BoolLit, @function
.size compiler_parser_ast_BoolLit, .-compiler_parser_ast_BoolLit
/* end function compiler_parser_ast_BoolLit */

.text
.balign 16
.globl compiler_parser_ast_Var
compiler_parser_ast_Var:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $4, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Var, @function
.size compiler_parser_ast_Var, .-compiler_parser_ast_Var
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $5, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_FieldAccess, @function
.size compiler_parser_ast_FieldAccess, .-compiler_parser_ast_FieldAccess
/* end function compiler_parser_ast_FieldAccess */

.text
.balign 16
.globl compiler_parser_ast_Tuple
compiler_parser_ast_Tuple:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $6, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Tuple, @function
.size compiler_parser_ast_Tuple, .-compiler_parser_ast_Tuple
/* end function compiler_parser_ast_Tuple */

.text
.balign 16
.globl compiler_parser_ast_EList
compiler_parser_ast_EList:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $7, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_EList, @function
.size compiler_parser_ast_EList, .-compiler_parser_ast_EList
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_ListSpread, @function
.size compiler_parser_ast_ListSpread, .-compiler_parser_ast_ListSpread
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $9, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Call, @function
.size compiler_parser_ast_Call, .-compiler_parser_ast_Call
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
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $10, (%rax)
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
.type compiler_parser_ast_BinOp, @function
.size compiler_parser_ast_BinOp, .-compiler_parser_ast_BinOp
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $11, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_UnaryOp, @function
.size compiler_parser_ast_UnaryOp, .-compiler_parser_ast_UnaryOp
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $12, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Case, @function
.size compiler_parser_ast_Case, .-compiler_parser_ast_Case
/* end function compiler_parser_ast_Case */

.text
.balign 16
.globl compiler_parser_ast_Block
compiler_parser_ast_Block:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $13, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Block, @function
.size compiler_parser_ast_Block, .-compiler_parser_ast_Block
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $14, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Pipe, @function
.size compiler_parser_ast_Pipe, .-compiler_parser_ast_Pipe
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $15, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Lambda, @function
.size compiler_parser_ast_Lambda, .-compiler_parser_ast_Lambda
/* end function compiler_parser_ast_Lambda */

.text
.balign 16
.globl compiler_parser_ast_Echo
compiler_parser_ast_Echo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $16, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Echo, @function
.size compiler_parser_ast_Echo, .-compiler_parser_ast_Echo
/* end function compiler_parser_ast_Echo */

.text
.balign 16
.globl compiler_parser_ast_Panic
compiler_parser_ast_Panic:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $17, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Panic, @function
.size compiler_parser_ast_Panic, .-compiler_parser_ast_Panic
/* end function compiler_parser_ast_Panic */

.text
.balign 16
.globl compiler_parser_ast_Todo
compiler_parser_ast_Todo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $18, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type compiler_parser_ast_Todo, @function
.size compiler_parser_ast_Todo, .-compiler_parser_ast_Todo
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
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq malloc
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
.type compiler_parser_ast_LetStmt, @function
.size compiler_parser_ast_LetStmt, .-compiler_parser_ast_LetStmt
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_LetPatStmt, @function
.size compiler_parser_ast_LetPatStmt, .-compiler_parser_ast_LetPatStmt
/* end function compiler_parser_ast_LetPatStmt */

.text
.balign 16
.globl compiler_parser_ast_ExprStmt
compiler_parser_ast_ExprStmt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_ExprStmt, @function
.size compiler_parser_ast_ExprStmt, .-compiler_parser_ast_ExprStmt
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
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq malloc
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
.type compiler_parser_ast_CaseClause, @function
.size compiler_parser_ast_CaseClause, .-compiler_parser_ast_CaseClause
/* end function compiler_parser_ast_CaseClause */

.text
.balign 16
.globl compiler_parser_ast_PWild
compiler_parser_ast_PWild:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PWild, @function
.size compiler_parser_ast_PWild, .-compiler_parser_ast_PWild
/* end function compiler_parser_ast_PWild */

.text
.balign 16
.globl compiler_parser_ast_PDiscard
compiler_parser_ast_PDiscard:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PDiscard, @function
.size compiler_parser_ast_PDiscard, .-compiler_parser_ast_PDiscard
/* end function compiler_parser_ast_PDiscard */

.text
.balign 16
.globl compiler_parser_ast_PVar
compiler_parser_ast_PVar:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PVar, @function
.size compiler_parser_ast_PVar, .-compiler_parser_ast_PVar
/* end function compiler_parser_ast_PVar */

.text
.balign 16
.globl compiler_parser_ast_PInt
compiler_parser_ast_PInt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $3, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PInt, @function
.size compiler_parser_ast_PInt, .-compiler_parser_ast_PInt
/* end function compiler_parser_ast_PInt */

.text
.balign 16
.globl compiler_parser_ast_PFloat
compiler_parser_ast_PFloat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $4, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PFloat, @function
.size compiler_parser_ast_PFloat, .-compiler_parser_ast_PFloat
/* end function compiler_parser_ast_PFloat */

.text
.balign 16
.globl compiler_parser_ast_PString
compiler_parser_ast_PString:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $5, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PString, @function
.size compiler_parser_ast_PString, .-compiler_parser_ast_PString
/* end function compiler_parser_ast_PString */

.text
.balign 16
.globl compiler_parser_ast_PBool
compiler_parser_ast_PBool:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $6, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PBool, @function
.size compiler_parser_ast_PBool, .-compiler_parser_ast_PBool
/* end function compiler_parser_ast_PBool */

.text
.balign 16
.globl compiler_parser_ast_PTuple
compiler_parser_ast_PTuple:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $7, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PTuple, @function
.size compiler_parser_ast_PTuple, .-compiler_parser_ast_PTuple
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
	pushq %r12
	pushq %r13
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_ast_PList, @function
.size compiler_parser_ast_PList, .-compiler_parser_ast_PList
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
	pushq %r13
	pushq %r14
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $40, %edi
	callq malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $9, (%rax)
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
.type compiler_parser_ast_PCons, @function
.size compiler_parser_ast_PCons, .-compiler_parser_ast_PCons
/* end function compiler_parser_ast_PCons */

.section .note.GNU-stack,"",@progbits
