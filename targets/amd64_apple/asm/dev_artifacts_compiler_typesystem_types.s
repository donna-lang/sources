.data
.balign 8
.globl _compiler_typesystem_types_TInt
_compiler_typesystem_types_TInt:
	.quad 0
/* end data */

.data
.balign 8
.globl _compiler_typesystem_types_TFloat
_compiler_typesystem_types_TFloat:
	.quad 1
/* end data */

.data
.balign 8
.globl _compiler_typesystem_types_TString
_compiler_typesystem_types_TString:
	.quad 2
/* end data */

.data
.balign 8
.globl _compiler_typesystem_types_TBool
_compiler_typesystem_types_TBool:
	.quad 3
/* end data */

.data
.balign 8
.globl _compiler_typesystem_types_TNil
_compiler_typesystem_types_TNil:
	.quad 4
/* end data */

.data
.balign 8
_str114:
	.ascii "type mismatch in "
	.byte 0
/* end data */

.data
.balign 8
_str116:
	.ascii ": expected "
	.byte 0
/* end data */

.data
.balign 8
_str119:
	.ascii ", found "
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.ascii "unbound variable `"
	.byte 0
/* end data */

.data
.balign 8
_str130:
	.ascii "`"
	.byte 0
/* end data */

.data
.balign 8
_str328:
	.ascii "Int"
	.byte 0
/* end data */

.data
.balign 8
_str333:
	.ascii "Float"
	.byte 0
/* end data */

.data
.balign 8
_str338:
	.ascii "String"
	.byte 0
/* end data */

.data
.balign 8
_str343:
	.ascii "Bool"
	.byte 0
/* end data */

.data
.balign 8
_str348:
	.ascii "Nil"
	.byte 0
/* end data */

.data
.balign 8
_str355:
	.ascii "List("
	.byte 0
/* end data */

.data
.balign 8
_str358:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str366:
	.ascii "#("
	.byte 0
/* end data */

.data
.balign 8
_str368:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
_str371:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str381:
	.ascii "fn("
	.byte 0
/* end data */

.data
.balign 8
_str383:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
_str386:
	.ascii ") -> "
	.byte 0
/* end data */

.data
.balign 8
_str404:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
_str407:
	.ascii ", "
	.byte 0
/* end data */

.data
.balign 8
_str410:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str415:
	.ascii "a"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_typesystem_types_TListType
_compiler_typesystem_types_TListType:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $5, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TListType */

.text
.balign 16
.globl _compiler_typesystem_types_TTupleType
_compiler_typesystem_types_TTupleType:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $6, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TTupleType */

.text
.balign 16
.globl _compiler_typesystem_types_TFnType
_compiler_typesystem_types_TFnType:
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
/* end function compiler_typesystem_types_TFnType */

.text
.balign 16
.globl _compiler_typesystem_types_TNamedType
_compiler_typesystem_types_TNamedType:
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
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TNamedType */

.text
.balign 16
.globl _compiler_typesystem_types_TTypeVar
_compiler_typesystem_types_TTypeVar:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $9, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TTypeVar */

.text
.balign 16
.globl _compiler_typesystem_types_Mono
_compiler_typesystem_types_Mono:
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
/* end function compiler_typesystem_types_Mono */

.text
.balign 16
.globl _compiler_typesystem_types_Poly
_compiler_typesystem_types_Poly:
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
/* end function compiler_typesystem_types_Poly */

.text
.balign 16
.globl _compiler_typesystem_types_TypeMismatch
_compiler_typesystem_types_TypeMismatch:
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
/* end function compiler_typesystem_types_TypeMismatch */

.text
.balign 16
.globl _compiler_typesystem_types_UnboundVariable
_compiler_typesystem_types_UnboundVariable:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_UnboundVariable */

.text
.balign 16
.globl _compiler_typesystem_types_TypeCheckError
_compiler_typesystem_types_TypeCheckError:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $2, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TypeCheckError */

.text
.balign 16
.globl _compiler_typesystem_types_TStmtLet
_compiler_typesystem_types_TStmtLet:
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
/* end function compiler_typesystem_types_TStmtLet */

.text
.balign 16
.globl _compiler_typesystem_types_TStmtLetPat
_compiler_typesystem_types_TStmtLetPat:
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
/* end function compiler_typesystem_types_TStmtLetPat */

.text
.balign 16
.globl _compiler_typesystem_types_TStmtExpr
_compiler_typesystem_types_TStmtExpr:
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
/* end function compiler_typesystem_types_TStmtExpr */

.text
.balign 16
.globl _compiler_typesystem_types_TypedClause
_compiler_typesystem_types_TypedClause:
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
/* end function compiler_typesystem_types_TypedClause */

.text
.balign 16
.globl _compiler_typesystem_types_TEIntLit
_compiler_typesystem_types_TEIntLit:
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
/* end function compiler_typesystem_types_TEIntLit */

.text
.balign 16
.globl _compiler_typesystem_types_TEFloatLit
_compiler_typesystem_types_TEFloatLit:
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
/* end function compiler_typesystem_types_TEFloatLit */

.text
.balign 16
.globl _compiler_typesystem_types_TEStringLit
_compiler_typesystem_types_TEStringLit:
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
/* end function compiler_typesystem_types_TEStringLit */

.text
.balign 16
.globl _compiler_typesystem_types_TEBoolLit
_compiler_typesystem_types_TEBoolLit:
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
/* end function compiler_typesystem_types_TEBoolLit */

.text
.balign 16
.globl _compiler_typesystem_types_TEVar
_compiler_typesystem_types_TEVar:
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
/* end function compiler_typesystem_types_TEVar */

.text
.balign 16
.globl _compiler_typesystem_types_TEFieldAccess
_compiler_typesystem_types_TEFieldAccess:
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
	movq $5, (%rax)
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
/* end function compiler_typesystem_types_TEFieldAccess */

.text
.balign 16
.globl _compiler_typesystem_types_TECall
_compiler_typesystem_types_TECall:
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
	movq $6, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TECall */

.text
.balign 16
.globl _compiler_typesystem_types_TEBinOp
_compiler_typesystem_types_TEBinOp:
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
	movq $7, (%rax)
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
/* end function compiler_typesystem_types_TEBinOp */

.text
.balign 16
.globl _compiler_typesystem_types_TEUnaryOp
_compiler_typesystem_types_TEUnaryOp:
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
/* end function compiler_typesystem_types_TEUnaryOp */

.text
.balign 16
.globl _compiler_typesystem_types_TECase
_compiler_typesystem_types_TECase:
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
/* end function compiler_typesystem_types_TECase */

.text
.balign 16
.globl _compiler_typesystem_types_TETuple
_compiler_typesystem_types_TETuple:
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
	movq $10, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TETuple */

.text
.balign 16
.globl _compiler_typesystem_types_TEList
_compiler_typesystem_types_TEList:
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
	movq $11, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TEList */

.text
.balign 16
.globl _compiler_typesystem_types_TEListSpread
_compiler_typesystem_types_TEListSpread:
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
/* end function compiler_typesystem_types_TEListSpread */

.text
.balign 16
.globl _compiler_typesystem_types_TEBlock
_compiler_typesystem_types_TEBlock:
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
/* end function compiler_typesystem_types_TEBlock */

.text
.balign 16
.globl _compiler_typesystem_types_TEEcho
_compiler_typesystem_types_TEEcho:
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
	movq $14, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TEEcho */

.text
.balign 16
.globl _compiler_typesystem_types_TELambda
_compiler_typesystem_types_TELambda:
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
/* end function compiler_typesystem_types_TELambda */

.text
.balign 16
.globl _compiler_typesystem_types_TEPanic
_compiler_typesystem_types_TEPanic:
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
/* end function compiler_typesystem_types_TEPanic */

.text
.balign 16
.globl _compiler_typesystem_types_TETodo
_compiler_typesystem_types_TETodo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $17, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_TETodo */

.text
.balign 16
.globl _compiler_typesystem_types_type_error_to_string
_compiler_typesystem_types_type_error_to_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb68
	cmpq $1, %rax
	jz Lbb67
	movq 8(%rdi), %rax
	jmp Lbb69
Lbb67:
	movq 8(%rdi), %rsi
	leaq _str128(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str130(%rip), %rsi
	callq ___rt_str_concat
	jmp Lbb69
Lbb68:
	movq 8(%rdi), %rsi
	movq 16(%rdi), %rbx
	movq %rsi, %r12
	movq 24(%rdi), %rsi
	leaq _str114(%rip), %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	leaq _str116(%rip), %rsi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str119(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
Lbb69:
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_type_error_to_string */

.text
.balign 16
.globl _compiler_typesystem_types_types_equal
_compiler_typesystem_types_types_equal:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
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
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb103
	cmpq $6, %rax
	jz Lbb99
	cmpq $7, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb95
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rax
	cmpq $8, %rax
	jz Lbb82
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb133
Lbb82:
	movq %rsi, %rax
	movq 8(%rsi), %rsi
	movq 16(%rax), %r15
	callq _donna_string_equal
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $0, %rax
	jz Lbb92
	movq %rdi, %r13
	callq _donna_list_is_empty
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	cmpq $1, %rax
	jz Lbb89
	movq %rdi, %r14
	movq %r15, %rdi
	callq _donna_list_is_empty
	movq %r15, %rsi
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	cmpq $1, %rax
	jz Lbb86
	callq _compiler_typesystem_types_types_equal_list
	movq %rax, (%r14)
	jmp Lbb88
Lbb86:
	movq $1, (%r14)
	movl $1, %eax
Lbb88:
	movq %rax, (%r13)
	jmp Lbb91
Lbb89:
	movq $1, (%r13)
	movl $1, %eax
Lbb91:
	movq %rax, (%r12)
	jmp Lbb94
Lbb92:
	movq $0, (%r12)
	movl $0, %eax
Lbb94:
	movq %rax, (%rbx)
	jmp Lbb133
Lbb95:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rax
	cmpq $7, %rax
	jz Lbb98
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb133
Lbb98:
	movq %rsi, %rax
	movq 8(%rsi), %rsi
	movq 16(%rax), %r13
	callq _compiler_typesystem_types_types_equal_list
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq _compiler_typesystem_types_types_equal
	andq %r12, %rax
	movq %rax, (%rbx)
	jmp Lbb133
Lbb99:
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rax
	cmpq $6, %rax
	jz Lbb102
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb133
Lbb102:
	movq 8(%rsi), %rsi
	callq _compiler_typesystem_types_types_equal_list
	movq %rax, (%rbx)
	jmp Lbb133
Lbb103:
	movq 8(%rdi), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rax
	cmpq $5, %rax
	jz Lbb106
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb133
Lbb106:
	movq 8(%rsi), %rsi
	callq _compiler_typesystem_types_types_equal
	movq %rax, (%rbx)
	jmp Lbb133
Lbb107:
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rsi), %rcx
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
	movq (%rsi), %rcx
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
	movq (%rsi), %rcx
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
	movq (%rsi), %rcx
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
	movq (%rsi), %rcx
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
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_types_equal */

.text
.balign 16
_compiler_typesystem_types_types_equal_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb139
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rsi), %rax
	cmpq $0, %rax
	jz Lbb137
	movq %rsi, %rax
	movq 8(%rsi), %rsi
	movq 16(%rax), %r13
	callq _compiler_typesystem_types_types_equal
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %r12
	callq _compiler_typesystem_types_types_equal_list
	andq %r12, %rax
	movq %rax, (%rbx)
	jmp Lbb144
Lbb137:
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb144
Lbb139:
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rsi), %rcx
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
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_types_equal_list */

.text
.balign 16
.globl _compiler_typesystem_types_type_to_string
_compiler_typesystem_types_type_to_string:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
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
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb160
	cmpq $6, %rax
	jz Lbb159
	cmpq $7, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb158
	cmpq $8, %rax
	jz Lbb155
	movq 8(%rdi), %rdi
	callq _donna_int_to_string
	movq %rax, %rsi
	leaq _str415(%rip), %rdi
	callq ___rt_str_concat
	jmp Lbb166
Lbb155:
	movq 8(%rdi), %rbx
	movq 16(%rdi), %rdi
	movq %rdi, %r12
	callq _donna_list_is_empty
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	jz Lbb157
	leaq _str404(%rip), %rsi
	movq %rdi, %r12
	movq %rax, %rdi
	callq ___rt_str_concat
	movq %r12, %rdi
	movq %rax, %r12
	leaq _compiler_typesystem_types_type_to_string(%rip), %rsi
	callq _donna_list_map
	movq %rax, %rdi
	leaq _str407(%rip), %rsi
	callq _donna_string_join
	movq %r12, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str410(%rip), %rsi
	callq ___rt_str_concat
	movq %rax, (%rbx)
	jmp Lbb166
Lbb157:
	movq %rax, (%rbx)
	jmp Lbb166
Lbb158:
	movq %rdi, %rax
	movq 8(%rdi), %rdi
	movq 16(%rax), %rbx
	leaq _compiler_typesystem_types_type_to_string(%rip), %rsi
	callq _donna_list_map
	movq %rax, %rdi
	leaq _str383(%rip), %rsi
	callq _donna_string_join
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rdi, %rbx
	leaq _str381(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str386(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _compiler_typesystem_types_type_to_string
	movq %rbx, %rdi
	movq %rax, %rsi
	callq ___rt_str_concat
	jmp Lbb166
Lbb159:
	movq 8(%rdi), %rdi
	leaq _compiler_typesystem_types_type_to_string(%rip), %rsi
	callq _donna_list_map
	movq %rax, %rdi
	leaq _str368(%rip), %rsi
	callq _donna_string_join
	movq %rax, %rsi
	leaq _str366(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str371(%rip), %rsi
	callq ___rt_str_concat
	jmp Lbb166
Lbb160:
	movq 8(%rdi), %rdi
	callq _compiler_typesystem_types_type_to_string
	movq %rax, %rsi
	leaq _str355(%rip), %rdi
	callq ___rt_str_concat
	movq %rax, %rdi
	leaq _str358(%rip), %rsi
	callq ___rt_str_concat
	jmp Lbb166
Lbb161:
	leaq _str348(%rip), %rax
	jmp Lbb166
Lbb162:
	leaq _str343(%rip), %rax
	jmp Lbb166
Lbb163:
	leaq _str338(%rip), %rax
	jmp Lbb166
Lbb164:
	leaq _str333(%rip), %rax
	jmp Lbb166
Lbb165:
	leaq _str328(%rip), %rax
Lbb166:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_typesystem_types_type_to_string */

.text
.balign 16
.globl _compiler_typesystem_types_typed_expr_type
_compiler_typesystem_types_typed_expr_type:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
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
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb196
	cmpq $6, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
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
	movq 8(%rdi), %rax
	jmp Lbb202
Lbb185:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb186:
	movq 24(%rdi), %rax
	jmp Lbb202
Lbb187:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb188:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb189:
	movq 24(%rdi), %rax
	jmp Lbb202
Lbb190:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb191:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb192:
	movq 24(%rdi), %rax
	jmp Lbb202
Lbb193:
	movq 24(%rdi), %rax
	jmp Lbb202
Lbb194:
	movq 32(%rdi), %rax
	jmp Lbb202
Lbb195:
	movq 24(%rdi), %rax
	jmp Lbb202
Lbb196:
	movq 32(%rdi), %rax
	jmp Lbb202
Lbb197:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb198:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb199:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb200:
	movq 16(%rdi), %rax
	jmp Lbb202
Lbb201:
	movq 16(%rdi), %rax
Lbb202:
	ret
/* end function compiler_typesystem_types_typed_expr_type */

.text
.balign 16
___rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

