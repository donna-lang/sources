.data
.balign 8
.globl compiler_typesystem_types_TInt
compiler_typesystem_types_TInt:
	.quad 0
/* end data */

.data
.balign 8
.globl compiler_typesystem_types_TFloat
compiler_typesystem_types_TFloat:
	.quad 1
/* end data */

.data
.balign 8
.globl compiler_typesystem_types_TString
compiler_typesystem_types_TString:
	.quad 2
/* end data */

.data
.balign 8
.globl compiler_typesystem_types_TBool
compiler_typesystem_types_TBool:
	.quad 3
/* end data */

.data
.balign 8
.globl compiler_typesystem_types_TNil
compiler_typesystem_types_TNil:
	.quad 4
/* end data */

.data
.balign 8
str114:
	.ascii "type mismatch in "
	.byte 0
/* end data */

.data
.balign 8
str116:
	.ascii ": expected "
	.byte 0
/* end data */

.data
.balign 8
str119:
	.ascii ", found "
	.byte 0
/* end data */

.data
.balign 8
str128:
	.ascii "unbound variable `"
	.byte 0
/* end data */

.data
.balign 8
str130:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
str328:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
str333:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
str338:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
str343:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
str348:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
str355:
	.ascii "List("
	.byte 0
/* end data */

.data
.balign 8
str358:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str366:
	.ascii "#("
	.byte 0
/* end data */

.data
.balign 8
str368:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
str371:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str381:
	.ascii "fn("
	.byte 0
/* end data */

.data
.balign 8
str383:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
str386:
	.ascii ") -> "
	.byte 0
/* end data */

.data
.balign 8
str404:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str407:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
str410:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str415:
	.ascii "a"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_typesystem_types_TListType
compiler_typesystem_types_TListType:
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
	movq $5, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TListType */

.text
.balign 16
.globl compiler_typesystem_types_TTupleType
compiler_typesystem_types_TTupleType:
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
	movq $6, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TTupleType */

.text
.balign 16
.globl compiler_typesystem_types_TFnType
compiler_typesystem_types_TFnType:
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
/* end function compiler_typesystem_types_TFnType */

.text
.balign 16
.globl compiler_typesystem_types_TNamedType
compiler_typesystem_types_TNamedType:
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
	movq $8, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TNamedType */

.text
.balign 16
.globl compiler_typesystem_types_TTypeVar
compiler_typesystem_types_TTypeVar:
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
	movq $9, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TTypeVar */

.text
.balign 16
.globl compiler_typesystem_types_Mono
compiler_typesystem_types_Mono:
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
/* end function compiler_typesystem_types_Mono */

.text
.balign 16
.globl compiler_typesystem_types_Poly
compiler_typesystem_types_Poly:
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
/* end function compiler_typesystem_types_Poly */

.text
.balign 16
.globl compiler_typesystem_types_TypeMismatch
compiler_typesystem_types_TypeMismatch:
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
/* end function compiler_typesystem_types_TypeMismatch */

.text
.balign 16
.globl compiler_typesystem_types_UnboundVariable
compiler_typesystem_types_UnboundVariable:
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
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_UnboundVariable */

.text
.balign 16
.globl compiler_typesystem_types_TypeCheckError
compiler_typesystem_types_TypeCheckError:
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
	movq $2, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TypeCheckError */

.text
.balign 16
.globl compiler_typesystem_types_TStmtLet
compiler_typesystem_types_TStmtLet:
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
/* end function compiler_typesystem_types_TStmtLet */

.text
.balign 16
.globl compiler_typesystem_types_TStmtLetPat
compiler_typesystem_types_TStmtLetPat:
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
/* end function compiler_typesystem_types_TStmtLetPat */

.text
.balign 16
.globl compiler_typesystem_types_TStmtExpr
compiler_typesystem_types_TStmtExpr:
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
/* end function compiler_typesystem_types_TStmtExpr */

.text
.balign 16
.globl compiler_typesystem_types_TypedClause
compiler_typesystem_types_TypedClause:
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
/* end function compiler_typesystem_types_TypedClause */

.text
.balign 16
.globl compiler_typesystem_types_TEIntLit
compiler_typesystem_types_TEIntLit:
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
/* end function compiler_typesystem_types_TEIntLit */

.text
.balign 16
.globl compiler_typesystem_types_TEFloatLit
compiler_typesystem_types_TEFloatLit:
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
/* end function compiler_typesystem_types_TEFloatLit */

.text
.balign 16
.globl compiler_typesystem_types_TEStringLit
compiler_typesystem_types_TEStringLit:
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
/* end function compiler_typesystem_types_TEStringLit */

.text
.balign 16
.globl compiler_typesystem_types_TEBoolLit
compiler_typesystem_types_TEBoolLit:
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
/* end function compiler_typesystem_types_TEBoolLit */

.text
.balign 16
.globl compiler_typesystem_types_TEVar
compiler_typesystem_types_TEVar:
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
/* end function compiler_typesystem_types_TEVar */

.text
.balign 16
.globl compiler_typesystem_types_TEFieldAccess
compiler_typesystem_types_TEFieldAccess:
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
	movq $5, (%rax)
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
/* end function compiler_typesystem_types_TEFieldAccess */

.text
.balign 16
.globl compiler_typesystem_types_TECall
compiler_typesystem_types_TECall:
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
	movq $6, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TECall */

.text
.balign 16
.globl compiler_typesystem_types_TEBinOp
compiler_typesystem_types_TEBinOp:
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
	movq $7, (%rax)
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
/* end function compiler_typesystem_types_TEBinOp */

.text
.balign 16
.globl compiler_typesystem_types_TEUnaryOp
compiler_typesystem_types_TEUnaryOp:
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
/* end function compiler_typesystem_types_TEUnaryOp */

.text
.balign 16
.globl compiler_typesystem_types_TECase
compiler_typesystem_types_TECase:
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
/* end function compiler_typesystem_types_TECase */

.text
.balign 16
.globl compiler_typesystem_types_TETuple
compiler_typesystem_types_TETuple:
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
	movq $10, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TETuple */

.text
.balign 16
.globl compiler_typesystem_types_TEList
compiler_typesystem_types_TEList:
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
	movq $11, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TEList */

.text
.balign 16
.globl compiler_typesystem_types_TEListSpread
compiler_typesystem_types_TEListSpread:
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
/* end function compiler_typesystem_types_TEListSpread */

.text
.balign 16
.globl compiler_typesystem_types_TEBlock
compiler_typesystem_types_TEBlock:
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
/* end function compiler_typesystem_types_TEBlock */

.text
.balign 16
.globl compiler_typesystem_types_TEEcho
compiler_typesystem_types_TEEcho:
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
	movq $14, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TEEcho */

.text
.balign 16
.globl compiler_typesystem_types_TELambda
compiler_typesystem_types_TELambda:
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
/* end function compiler_typesystem_types_TELambda */

.text
.balign 16
.globl compiler_typesystem_types_TEPanic
compiler_typesystem_types_TEPanic:
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
/* end function compiler_typesystem_types_TEPanic */

.text
.balign 16
.globl compiler_typesystem_types_TETodo
compiler_typesystem_types_TETodo:
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
	movq $17, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_TETodo */

.text
.balign 16
.globl compiler_typesystem_types_type_error_to_string
compiler_typesystem_types_type_error_to_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb68
	cmpq $1, %rax
	jz Lbb67
	movq 8(%rcx), %rax
	jmp Lbb69
Lbb67:
	movq 8(%rcx), %rdx
	subq $32, %rsp
	leaq str128(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str130(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb69
Lbb68:
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rsi
	movq %rdx, %rdi
	movq 24(%rcx), %rdx
	subq $32, %rsp
	leaq str114(%rip), %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str116(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str119(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb69:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_type_error_to_string */

.text
.balign 16
.globl compiler_typesystem_types_types_equal
compiler_typesystem_types_types_equal:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $9, %rax
	jz Lbb132
	cmpq $0, %rax
	jz Lbb127
	cmpq $1, %rax
	jz Lbb122
	cmpq $2, %rax
	jz Lbb117
	cmpq $3, %rax
	jz Lbb112
	cmpq $4, %rax
	jz Lbb107
	cmpq $5, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb103
	cmpq $6, %rax
	jz Lbb99
	cmpq $7, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb95
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rax
	cmpq $8, %rax
	jz Lbb82
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb133
Lbb82:
	movq %rdx, %rax
	movq 8(%rdx), %rdx
	movq 16(%rax), %r13
	subq $32, %rsp
	callq donna_string_equal
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $0, %rax
	jz Lbb92
	subq $32, %rsp
	movq %rcx, %rbx
	callq donna_list_is_empty
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb89
	subq $32, %rsp
	movq %rcx, %r12
	movq %r13, %rcx
	callq donna_list_is_empty
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb86
	subq $32, %rsp
	callq compiler_typesystem_types_types_equal_list
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb88
Lbb86:
	movq $1, (%r12)
	movl $1, %eax
Lbb88:
	movq %rax, (%rbx)
	jmp Lbb91
Lbb89:
	movq $1, (%rbx)
	movl $1, %eax
Lbb91:
	movq %rax, (%rdi)
	jmp Lbb94
Lbb92:
	movq $0, (%rdi)
	movl $0, %eax
Lbb94:
	movq %rax, (%rsi)
	jmp Lbb133
Lbb95:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rax
	cmpq $7, %rax
	jz Lbb98
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb133
Lbb98:
	movq %rdx, %rax
	movq 8(%rdx), %rdx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq compiler_typesystem_types_types_equal_list
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_types_equal
	subq $-32, %rsp
	andq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb133
Lbb99:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rax
	cmpq $6, %rax
	jz Lbb102
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb133
Lbb102:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	callq compiler_typesystem_types_types_equal_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb133
Lbb103:
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rax
	cmpq $5, %rax
	jz Lbb106
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb133
Lbb106:
	movq 8(%rdx), %rdx
	subq $32, %rsp
	callq compiler_typesystem_types_types_equal
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb133
Lbb107:
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %rcx
	cmpq $4, %rcx
	jz Lbb110
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb133
Lbb110:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb133
Lbb112:
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %rcx
	cmpq $3, %rcx
	jz Lbb115
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb133
Lbb115:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb133
Lbb117:
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %rcx
	cmpq $2, %rcx
	jz Lbb120
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb133
Lbb120:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb133
Lbb122:
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %rcx
	cmpq $1, %rcx
	jz Lbb125
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb133
Lbb125:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb133
Lbb127:
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb130
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb133
Lbb130:
	movq $1, (%rax)
	movl $1, %eax
	jmp Lbb133
Lbb132:
	movl $1, %eax
Lbb133:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_types_equal */

.text
.balign 16
compiler_typesystem_types_types_equal_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb139
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdx), %rax
	cmpq $0, %rax
	jz Lbb137
	movq %rdx, %rax
	movq 8(%rdx), %rdx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq compiler_typesystem_types_types_equal
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_types_equal_list
	subq $-32, %rsp
	andq %rdi, %rax
	movq %rax, (%rsi)
	jmp Lbb144
Lbb137:
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb144
Lbb139:
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %rcx
	cmpq $0, %rcx
	jz Lbb142
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb144
Lbb142:
	movq $1, (%rax)
	movl $1, %eax
Lbb144:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_types_equal_list */

.text
.balign 16
.globl compiler_typesystem_types_type_to_string
compiler_typesystem_types_type_to_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb165
	cmpq $1, %rax
	jz Lbb164
	cmpq $2, %rax
	jz Lbb163
	cmpq $3, %rax
	jz Lbb162
	cmpq $4, %rax
	jz Lbb161
	cmpq $5, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb160
	cmpq $6, %rax
	jz Lbb159
	cmpq $7, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb158
	cmpq $8, %rax
	jz Lbb155
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq donna_int_to_string
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str415(%rip), %rcx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb166
Lbb155:
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_list_is_empty
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb157
	subq $32, %rsp
	leaq str404(%rip), %rdx
	movq %rcx, %rdi
	movq %rax, %rcx
	callq __rt_str_concat
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq compiler_typesystem_types_type_to_string(%rip), %rdx
	callq donna_list_map
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str407(%rip), %rdx
	callq donna_string_join
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str410(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb166
Lbb157:
	movq %rax, (%rsi)
	jmp Lbb166
Lbb158:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	leaq compiler_typesystem_types_type_to_string(%rip), %rdx
	callq donna_list_map
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str383(%rip), %rdx
	callq donna_string_join
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str381(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str386(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb166
Lbb159:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	leaq compiler_typesystem_types_type_to_string(%rip), %rdx
	callq donna_list_map
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str368(%rip), %rdx
	callq donna_string_join
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str366(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str371(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb166
Lbb160:
	movq 8(%rcx), %rcx
	subq $32, %rsp
	callq compiler_typesystem_types_type_to_string
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str355(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str358(%rip), %rdx
	callq __rt_str_concat
	subq $-32, %rsp
	jmp Lbb166
Lbb161:
	leaq str348(%rip), %rax
	jmp Lbb166
Lbb162:
	leaq str343(%rip), %rax
	jmp Lbb166
Lbb163:
	leaq str338(%rip), %rax
	jmp Lbb166
Lbb164:
	leaq str333(%rip), %rax
	jmp Lbb166
Lbb165:
	leaq str328(%rip), %rax
Lbb166:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_typesystem_types_type_to_string */

.text
.balign 16
.globl compiler_typesystem_types_typed_expr_type
compiler_typesystem_types_typed_expr_type:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb201
	cmpq $1, %rax
	jz Lbb200
	cmpq $2, %rax
	jz Lbb199
	cmpq $3, %rax
	jz Lbb198
	cmpq $4, %rax
	jz Lbb197
	cmpq $5, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb196
	cmpq $6, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb195
	cmpq $7, %rax
	jz Lbb194
	cmpq $8, %rax
	jz Lbb193
	cmpq $9, %rax
	jz Lbb192
	cmpq $10, %rax
	jz Lbb191
	cmpq $11, %rax
	jz Lbb190
	cmpq $12, %rax
	jz Lbb189
	cmpq $13, %rax
	jz Lbb188
	cmpq $14, %rax
	jz Lbb187
	cmpq $15, %rax
	jz Lbb186
	cmpq $16, %rax
	jz Lbb185
	movq 8(%rcx), %rax
	jmp Lbb202
Lbb185:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb186:
	movq 24(%rcx), %rax
	jmp Lbb202
Lbb187:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb188:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb189:
	movq 24(%rcx), %rax
	jmp Lbb202
Lbb190:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb191:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb192:
	movq 24(%rcx), %rax
	jmp Lbb202
Lbb193:
	movq 24(%rcx), %rax
	jmp Lbb202
Lbb194:
	movq 32(%rcx), %rax
	jmp Lbb202
Lbb195:
	movq 24(%rcx), %rax
	jmp Lbb202
Lbb196:
	movq 32(%rcx), %rax
	jmp Lbb202
Lbb197:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb198:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb199:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb200:
	movq 16(%rcx), %rax
	jmp Lbb202
Lbb201:
	movq 16(%rcx), %rax
Lbb202:
	ret
/* end function compiler_typesystem_types_typed_expr_type */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq strlen
	subq $-32, %rsp
	addq %rbx, %rax
	movq %rax, %rcx
	addq $1, %rcx
	subq $32, %rsp
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcpy
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcat
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

