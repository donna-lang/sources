.data
.balign 8
.globl _compiler_parser_ast_BAdd
_compiler_parser_ast_BAdd:
	.quad 0
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BSub
_compiler_parser_ast_BSub:
	.quad 1
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BMul
_compiler_parser_ast_BMul:
	.quad 2
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BDiv
_compiler_parser_ast_BDiv:
	.quad 3
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BMod
_compiler_parser_ast_BMod:
	.quad 4
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BAddDot
_compiler_parser_ast_BAddDot:
	.quad 5
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BSubDot
_compiler_parser_ast_BSubDot:
	.quad 6
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BMulDot
_compiler_parser_ast_BMulDot:
	.quad 7
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BDivDot
_compiler_parser_ast_BDivDot:
	.quad 8
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BEq
_compiler_parser_ast_BEq:
	.quad 9
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BNotEq
_compiler_parser_ast_BNotEq:
	.quad 10
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BLt
_compiler_parser_ast_BLt:
	.quad 11
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BLtEq
_compiler_parser_ast_BLtEq:
	.quad 12
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BGt
_compiler_parser_ast_BGt:
	.quad 13
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BGtEq
_compiler_parser_ast_BGtEq:
	.quad 14
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BLtDot
_compiler_parser_ast_BLtDot:
	.quad 15
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BLtEqDot
_compiler_parser_ast_BLtEqDot:
	.quad 16
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BGtDot
_compiler_parser_ast_BGtDot:
	.quad 17
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BGtEqDot
_compiler_parser_ast_BGtEqDot:
	.quad 18
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BAnd
_compiler_parser_ast_BAnd:
	.quad 19
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BOr
_compiler_parser_ast_BOr:
	.quad 20
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_BConcat
_compiler_parser_ast_BConcat:
	.quad 21
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_UNeg
_compiler_parser_ast_UNeg:
	.quad 0
/* end data */

.data
.balign 8
.globl _compiler_parser_ast_UNot
_compiler_parser_ast_UNot:
	.quad 1
/* end data */

.text
.balign 16
.globl _compiler_parser_ast_Module
_compiler_parser_ast_Module:
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
/* end function compiler_parser_ast_Module */

.text
.balign 16
.globl _compiler_parser_ast_Import
_compiler_parser_ast_Import:
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
/* end function compiler_parser_ast_Import */

.text
.balign 16
.globl _compiler_parser_ast_Const
_compiler_parser_ast_Const:
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
/* end function compiler_parser_ast_Const */

.text
.balign 16
.globl _compiler_parser_ast_Function
_compiler_parser_ast_Function:
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
	callq _malloc
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
/* end function compiler_parser_ast_Function */

.text
.balign 16
.globl _compiler_parser_ast_ExternalFn
_compiler_parser_ast_ExternalFn:
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
/* end function compiler_parser_ast_ExternalFn */

.text
.balign 16
.globl _compiler_parser_ast_Param
_compiler_parser_ast_Param:
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
/* end function compiler_parser_ast_Param */

.text
.balign 16
.globl _compiler_parser_ast_TypeDef
_compiler_parser_ast_TypeDef:
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
	callq _malloc
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
/* end function compiler_parser_ast_TypeDef */

.text
.balign 16
.globl _compiler_parser_ast_ConstructorDef
_compiler_parser_ast_ConstructorDef:
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
/* end function compiler_parser_ast_ConstructorDef */

.text
.balign 16
.globl _compiler_parser_ast_TyName
_compiler_parser_ast_TyName:
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
/* end function compiler_parser_ast_TyName */

.text
.balign 16
.globl _compiler_parser_ast_TyTuple
_compiler_parser_ast_TyTuple:
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
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_TyTuple */

.text
.balign 16
.globl _compiler_parser_ast_TyFn
_compiler_parser_ast_TyFn:
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
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_TyFn */

.text
.balign 16
.globl _compiler_parser_ast_IntLit
_compiler_parser_ast_IntLit:
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
/* end function compiler_parser_ast_IntLit */

.text
.balign 16
.globl _compiler_parser_ast_FloatLit
_compiler_parser_ast_FloatLit:
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
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_FloatLit */

.text
.balign 16
.globl _compiler_parser_ast_StringLit
_compiler_parser_ast_StringLit:
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
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_StringLit */

.text
.balign 16
.globl _compiler_parser_ast_BoolLit
_compiler_parser_ast_BoolLit:
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
	movq $3, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_BoolLit */

.text
.balign 16
.globl _compiler_parser_ast_Var
_compiler_parser_ast_Var:
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
	movq $4, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Var */

.text
.balign 16
.globl _compiler_parser_ast_FieldAccess
_compiler_parser_ast_FieldAccess:
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
	movq $5, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_FieldAccess */

.text
.balign 16
.globl _compiler_parser_ast_Tuple
_compiler_parser_ast_Tuple:
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
	movq $6, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Tuple */

.text
.balign 16
.globl _compiler_parser_ast_EList
_compiler_parser_ast_EList:
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
	movq $7, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_EList */

.text
.balign 16
.globl _compiler_parser_ast_ListSpread
_compiler_parser_ast_ListSpread:
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
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_ListSpread */

.text
.balign 16
.globl _compiler_parser_ast_Call
_compiler_parser_ast_Call:
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
	movq $9, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Call */

.text
.balign 16
.globl _compiler_parser_ast_BinOp
_compiler_parser_ast_BinOp:
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
/* end function compiler_parser_ast_BinOp */

.text
.balign 16
.globl _compiler_parser_ast_UnaryOp
_compiler_parser_ast_UnaryOp:
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
	movq $11, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_UnaryOp */

.text
.balign 16
.globl _compiler_parser_ast_Case
_compiler_parser_ast_Case:
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
	movq $12, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Case */

.text
.balign 16
.globl _compiler_parser_ast_Block
_compiler_parser_ast_Block:
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
	movq $13, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Block */

.text
.balign 16
.globl _compiler_parser_ast_Pipe
_compiler_parser_ast_Pipe:
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
	movq $14, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Pipe */

.text
.balign 16
.globl _compiler_parser_ast_Lambda
_compiler_parser_ast_Lambda:
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
	movq $15, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Lambda */

.text
.balign 16
.globl _compiler_parser_ast_Echo
_compiler_parser_ast_Echo:
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
	movq $16, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Echo */

.text
.balign 16
.globl _compiler_parser_ast_Panic
_compiler_parser_ast_Panic:
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
	movq $17, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Panic */

.text
.balign 16
.globl _compiler_parser_ast_Todo
_compiler_parser_ast_Todo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $18, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_Todo */

.text
.balign 16
.globl _compiler_parser_ast_LetStmt
_compiler_parser_ast_LetStmt:
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
/* end function compiler_parser_ast_LetStmt */

.text
.balign 16
.globl _compiler_parser_ast_LetPatStmt
_compiler_parser_ast_LetPatStmt:
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
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_LetPatStmt */

.text
.balign 16
.globl _compiler_parser_ast_ExprStmt
_compiler_parser_ast_ExprStmt:
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
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_ExprStmt */

.text
.balign 16
.globl _compiler_parser_ast_CaseClause
_compiler_parser_ast_CaseClause:
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
/* end function compiler_parser_ast_CaseClause */

.text
.balign 16
.globl _compiler_parser_ast_PWild
_compiler_parser_ast_PWild:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PWild */

.text
.balign 16
.globl _compiler_parser_ast_PDiscard
_compiler_parser_ast_PDiscard:
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
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PDiscard */

.text
.balign 16
.globl _compiler_parser_ast_PVar
_compiler_parser_ast_PVar:
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
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PVar */

.text
.balign 16
.globl _compiler_parser_ast_PInt
_compiler_parser_ast_PInt:
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
	movq $3, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PInt */

.text
.balign 16
.globl _compiler_parser_ast_PFloat
_compiler_parser_ast_PFloat:
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
	movq $4, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PFloat */

.text
.balign 16
.globl _compiler_parser_ast_PString
_compiler_parser_ast_PString:
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
	movq $5, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PString */

.text
.balign 16
.globl _compiler_parser_ast_PBool
_compiler_parser_ast_PBool:
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
	movq $6, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PBool */

.text
.balign 16
.globl _compiler_parser_ast_PTuple
_compiler_parser_ast_PTuple:
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
	movq $7, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PTuple */

.text
.balign 16
.globl _compiler_parser_ast_PList
_compiler_parser_ast_PList:
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
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_ast_PList */

.text
.balign 16
.globl _compiler_parser_ast_PCons
_compiler_parser_ast_PCons:
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
/* end function compiler_parser_ast_PCons */

