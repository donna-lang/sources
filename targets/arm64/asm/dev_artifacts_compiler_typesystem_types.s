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
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #5
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TListType, @function
.size compiler_typesystem_types_TListType, .-compiler_typesystem_types_TListType
/* end function compiler_typesystem_types_TListType */

.text
.balign 16
.globl compiler_typesystem_types_TTupleType
compiler_typesystem_types_TTupleType:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #6
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TTupleType, @function
.size compiler_typesystem_types_TTupleType, .-compiler_typesystem_types_TTupleType
/* end function compiler_typesystem_types_TTupleType */

.text
.balign 16
.globl compiler_typesystem_types_TFnType
compiler_typesystem_types_TFnType:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #7
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TFnType, @function
.size compiler_typesystem_types_TFnType, .-compiler_typesystem_types_TFnType
/* end function compiler_typesystem_types_TFnType */

.text
.balign 16
.globl compiler_typesystem_types_TNamedType
compiler_typesystem_types_TNamedType:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #8
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TNamedType, @function
.size compiler_typesystem_types_TNamedType, .-compiler_typesystem_types_TNamedType
/* end function compiler_typesystem_types_TNamedType */

.text
.balign 16
.globl compiler_typesystem_types_TTypeVar
compiler_typesystem_types_TTypeVar:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #9
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TTypeVar, @function
.size compiler_typesystem_types_TTypeVar, .-compiler_typesystem_types_TTypeVar
/* end function compiler_typesystem_types_TTypeVar */

.text
.balign 16
.globl compiler_typesystem_types_Mono
compiler_typesystem_types_Mono:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_Mono, @function
.size compiler_typesystem_types_Mono, .-compiler_typesystem_types_Mono
/* end function compiler_typesystem_types_Mono */

.text
.balign 16
.globl compiler_typesystem_types_Poly
compiler_typesystem_types_Poly:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_Poly, @function
.size compiler_typesystem_types_Poly, .-compiler_typesystem_types_Poly
/* end function compiler_typesystem_types_Poly */

.text
.balign 16
.globl compiler_typesystem_types_TypeMismatch
compiler_typesystem_types_TypeMismatch:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #0
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TypeMismatch, @function
.size compiler_typesystem_types_TypeMismatch, .-compiler_typesystem_types_TypeMismatch
/* end function compiler_typesystem_types_TypeMismatch */

.text
.balign 16
.globl compiler_typesystem_types_UnboundVariable
compiler_typesystem_types_UnboundVariable:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_UnboundVariable, @function
.size compiler_typesystem_types_UnboundVariable, .-compiler_typesystem_types_UnboundVariable
/* end function compiler_typesystem_types_UnboundVariable */

.text
.balign 16
.globl compiler_typesystem_types_TypeCheckError
compiler_typesystem_types_TypeCheckError:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #2
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TypeCheckError, @function
.size compiler_typesystem_types_TypeCheckError, .-compiler_typesystem_types_TypeCheckError
/* end function compiler_typesystem_types_TypeCheckError */

.text
.balign 16
.globl compiler_typesystem_types_TStmtLet
compiler_typesystem_types_TStmtLet:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #0
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TStmtLet, @function
.size compiler_typesystem_types_TStmtLet, .-compiler_typesystem_types_TStmtLet
/* end function compiler_typesystem_types_TStmtLet */

.text
.balign 16
.globl compiler_typesystem_types_TStmtLetPat
compiler_typesystem_types_TStmtLetPat:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TStmtLetPat, @function
.size compiler_typesystem_types_TStmtLetPat, .-compiler_typesystem_types_TStmtLetPat
/* end function compiler_typesystem_types_TStmtLetPat */

.text
.balign 16
.globl compiler_typesystem_types_TStmtExpr
compiler_typesystem_types_TStmtExpr:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #2
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TStmtExpr, @function
.size compiler_typesystem_types_TStmtExpr, .-compiler_typesystem_types_TStmtExpr
/* end function compiler_typesystem_types_TStmtExpr */

.text
.balign 16
.globl compiler_typesystem_types_TypedClause
compiler_typesystem_types_TypedClause:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #40
	bl	malloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, #0
	str	x4, [x0]
	mov	x4, #8
	add	x4, x0, x4
	str	x19, [x4]
	mov	x4, #16
	add	x4, x0, x4
	str	x1, [x4]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TypedClause, @function
.size compiler_typesystem_types_TypedClause, .-compiler_typesystem_types_TypedClause
/* end function compiler_typesystem_types_TypedClause */

.text
.balign 16
.globl compiler_typesystem_types_TEIntLit
compiler_typesystem_types_TEIntLit:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #0
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEIntLit, @function
.size compiler_typesystem_types_TEIntLit, .-compiler_typesystem_types_TEIntLit
/* end function compiler_typesystem_types_TEIntLit */

.text
.balign 16
.globl compiler_typesystem_types_TEFloatLit
compiler_typesystem_types_TEFloatLit:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEFloatLit, @function
.size compiler_typesystem_types_TEFloatLit, .-compiler_typesystem_types_TEFloatLit
/* end function compiler_typesystem_types_TEFloatLit */

.text
.balign 16
.globl compiler_typesystem_types_TEStringLit
compiler_typesystem_types_TEStringLit:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #2
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEStringLit, @function
.size compiler_typesystem_types_TEStringLit, .-compiler_typesystem_types_TEStringLit
/* end function compiler_typesystem_types_TEStringLit */

.text
.balign 16
.globl compiler_typesystem_types_TEBoolLit
compiler_typesystem_types_TEBoolLit:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #3
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEBoolLit, @function
.size compiler_typesystem_types_TEBoolLit, .-compiler_typesystem_types_TEBoolLit
/* end function compiler_typesystem_types_TEBoolLit */

.text
.balign 16
.globl compiler_typesystem_types_TEVar
compiler_typesystem_types_TEVar:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #4
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEVar, @function
.size compiler_typesystem_types_TEVar, .-compiler_typesystem_types_TEVar
/* end function compiler_typesystem_types_TEVar */

.text
.balign 16
.globl compiler_typesystem_types_TEFieldAccess
compiler_typesystem_types_TEFieldAccess:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #40
	bl	malloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, #5
	str	x4, [x0]
	mov	x4, #8
	add	x4, x0, x4
	str	x19, [x4]
	mov	x4, #16
	add	x4, x0, x4
	str	x1, [x4]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TEFieldAccess, @function
.size compiler_typesystem_types_TEFieldAccess, .-compiler_typesystem_types_TEFieldAccess
/* end function compiler_typesystem_types_TEFieldAccess */

.text
.balign 16
.globl compiler_typesystem_types_TECall
compiler_typesystem_types_TECall:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #6
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TECall, @function
.size compiler_typesystem_types_TECall, .-compiler_typesystem_types_TECall
/* end function compiler_typesystem_types_TECall */

.text
.balign 16
.globl compiler_typesystem_types_TEBinOp
compiler_typesystem_types_TEBinOp:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #40
	bl	malloc
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x4, #7
	str	x4, [x0]
	mov	x4, #8
	add	x4, x0, x4
	str	x19, [x4]
	mov	x4, #16
	add	x4, x0, x4
	str	x1, [x4]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TEBinOp, @function
.size compiler_typesystem_types_TEBinOp, .-compiler_typesystem_types_TEBinOp
/* end function compiler_typesystem_types_TEBinOp */

.text
.balign 16
.globl compiler_typesystem_types_TEUnaryOp
compiler_typesystem_types_TEUnaryOp:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #8
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TEUnaryOp, @function
.size compiler_typesystem_types_TEUnaryOp, .-compiler_typesystem_types_TEUnaryOp
/* end function compiler_typesystem_types_TEUnaryOp */

.text
.balign 16
.globl compiler_typesystem_types_TECase
compiler_typesystem_types_TECase:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #9
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TECase, @function
.size compiler_typesystem_types_TECase, .-compiler_typesystem_types_TECase
/* end function compiler_typesystem_types_TECase */

.text
.balign 16
.globl compiler_typesystem_types_TETuple
compiler_typesystem_types_TETuple:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #10
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TETuple, @function
.size compiler_typesystem_types_TETuple, .-compiler_typesystem_types_TETuple
/* end function compiler_typesystem_types_TETuple */

.text
.balign 16
.globl compiler_typesystem_types_TEList
compiler_typesystem_types_TEList:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #11
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEList, @function
.size compiler_typesystem_types_TEList, .-compiler_typesystem_types_TEList
/* end function compiler_typesystem_types_TEList */

.text
.balign 16
.globl compiler_typesystem_types_TEListSpread
compiler_typesystem_types_TEListSpread:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #12
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TEListSpread, @function
.size compiler_typesystem_types_TEListSpread, .-compiler_typesystem_types_TEListSpread
/* end function compiler_typesystem_types_TEListSpread */

.text
.balign 16
.globl compiler_typesystem_types_TEBlock
compiler_typesystem_types_TEBlock:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #13
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEBlock, @function
.size compiler_typesystem_types_TEBlock, .-compiler_typesystem_types_TEBlock
/* end function compiler_typesystem_types_TEBlock */

.text
.balign 16
.globl compiler_typesystem_types_TEEcho
compiler_typesystem_types_TEEcho:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #14
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEEcho, @function
.size compiler_typesystem_types_TEEcho, .-compiler_typesystem_types_TEEcho
/* end function compiler_typesystem_types_TEEcho */

.text
.balign 16
.globl compiler_typesystem_types_TELambda
compiler_typesystem_types_TELambda:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #15
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_TELambda, @function
.size compiler_typesystem_types_TELambda, .-compiler_typesystem_types_TELambda
/* end function compiler_typesystem_types_TELambda */

.text
.balign 16
.globl compiler_typesystem_types_TEPanic
compiler_typesystem_types_TEPanic:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #16
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TEPanic, @function
.size compiler_typesystem_types_TEPanic, .-compiler_typesystem_types_TEPanic
/* end function compiler_typesystem_types_TEPanic */

.text
.balign 16
.globl compiler_typesystem_types_TETodo
compiler_typesystem_types_TETodo:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #17
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_TETodo, @function
.size compiler_typesystem_types_TETodo, .-compiler_typesystem_types_TETodo
/* end function compiler_typesystem_types_TETodo */

.text
.balign 16
.globl compiler_typesystem_types_type_error_to_string
compiler_typesystem_types_type_error_to_string:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L68
	cmp	x1, #1
	beq	.L67
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L69
.L67:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	adrp	x0, str128
	add	x0, x0, #:lo12:str128
	bl	__rt_str_concat
	adrp	x1, str130
	add	x1, x1, #:lo12:str130
	bl	__rt_str_concat
	b	.L69
.L68:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x2, x0, x2
	ldr	x19, [x2]
	mov	x2, #24
	add	x0, x0, x2
	mov	x20, x1
	ldr	x1, [x0]
	adrp	x0, str114
	add	x0, x0, #:lo12:str114
	bl	__rt_str_concat
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str116
	add	x1, x1, #:lo12:str116
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str119
	add	x1, x1, #:lo12:str119
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
.L69:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_type_error_to_string, @function
.size compiler_typesystem_types_type_error_to_string, .-compiler_typesystem_types_type_error_to_string
/* end function compiler_typesystem_types_type_error_to_string */

.text
.balign 16
.globl compiler_typesystem_types_types_equal
compiler_typesystem_types_types_equal:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x2, x1
	ldr	x1, [x0]
	cmp	x1, #9
	beq	.L139
	cmp	x1, #0
	beq	.L133
	cmp	x1, #1
	beq	.L127
	cmp	x1, #2
	beq	.L121
	cmp	x1, #3
	beq	.L115
	cmp	x1, #4
	beq	.L109
	cmp	x1, #5
	beq	.L104
	cmp	x1, #6
	beq	.L99
	cmp	x1, #7
	beq	.L95
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x2]
	cmp	x1, #8
	beq	.L82
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L140
.L82:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x23, [x2]
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L92
	mov	x21, x0
	bl	donna_list_is_empty
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	.L89
	mov	x22, x0
	mov	x0, x23
	bl	donna_list_is_empty
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x22, sp
	cmp	x2, #1
	beq	.L86
	bl	compiler_typesystem_types_types_equal_list
	str	x0, [x22]
	b	.L88
.L86:
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #1
.L88:
	str	x0, [x21]
	b	.L91
.L89:
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #1
.L91:
	str	x0, [x20]
	b	.L94
.L92:
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
.L94:
	str	x0, [x19]
	b	.L140
.L95:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x2]
	cmp	x1, #7
	beq	.L98
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L140
.L98:
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	bl	compiler_typesystem_types_types_equal_list
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	compiler_typesystem_types_types_equal
	and	x0, x20, x0
	str	x0, [x19]
	b	.L140
.L99:
	mov	x1, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #6
	beq	.L103
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L140
.L103:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_typesystem_types_types_equal_list
	str	x0, [x19]
	b	.L140
.L104:
	mov	x1, x2
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #5
	beq	.L108
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L140
.L108:
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	compiler_typesystem_types_types_equal
	str	x0, [x19]
	b	.L140
.L109:
	mov	x0, x2
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x0, [x0]
	cmp	x0, #4
	beq	.L113
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L140
.L113:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
	b	.L140
.L115:
	mov	x0, x2
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x0, [x0]
	cmp	x0, #3
	beq	.L119
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L140
.L119:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
	b	.L140
.L121:
	mov	x0, x2
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x0, [x0]
	cmp	x0, #2
	beq	.L125
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L140
.L125:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
	b	.L140
.L127:
	mov	x0, x2
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x0, [x0]
	cmp	x0, #1
	beq	.L131
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L140
.L131:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
	b	.L140
.L133:
	mov	x0, x2
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L137
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L140
.L137:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
	b	.L140
.L139:
	mov	x0, #1
.L140:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type compiler_typesystem_types_types_equal, @function
.size compiler_typesystem_types_types_equal, .-compiler_typesystem_types_types_equal
/* end function compiler_typesystem_types_types_equal */

.text
.balign 16
compiler_typesystem_types_types_equal_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x2, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L146
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x1, x1, x3
	ldr	x20, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x2]
	cmp	x1, #0
	beq	.L144
	mov	x1, #8
	add	x1, x2, x1
	ldr	x1, [x1]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	bl	compiler_typesystem_types_types_equal
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	compiler_typesystem_types_types_equal_list
	and	x0, x20, x0
	str	x0, [x19]
	b	.L152
.L144:
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L152
.L146:
	mov	x0, x2
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x0, [x0]
	cmp	x0, #0
	beq	.L150
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #0
	b	.L152
.L150:
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #1
.L152:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type compiler_typesystem_types_types_equal_list, @function
.size compiler_typesystem_types_types_equal_list, .-compiler_typesystem_types_types_equal_list
/* end function compiler_typesystem_types_types_equal_list */

.text
.balign 16
.globl compiler_typesystem_types_type_to_string
compiler_typesystem_types_type_to_string:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L173
	cmp	x1, #1
	beq	.L172
	cmp	x1, #2
	beq	.L171
	cmp	x1, #3
	beq	.L170
	cmp	x1, #4
	beq	.L169
	cmp	x1, #5
	beq	.L168
	cmp	x1, #6
	beq	.L167
	cmp	x1, #7
	beq	.L166
	cmp	x1, #8
	beq	.L163
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_int_to_string
	mov	x1, x0
	adrp	x0, str415
	add	x0, x0, #:lo12:str415
	bl	__rt_str_concat
	b	.L174
.L163:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	mov	x0, x20
	bl	donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L165
	adrp	x1, str404
	add	x1, x1, #:lo12:str404
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, compiler_typesystem_types_type_to_string
	add	x1, x1, #:lo12:compiler_typesystem_types_type_to_string
	bl	donna_list_map
	adrp	x1, str407
	add	x1, x1, #:lo12:str407
	bl	donna_string_join
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str410
	add	x1, x1, #:lo12:str410
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L174
.L165:
	str	x0, [x19]
	b	.L174
.L166:
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, compiler_typesystem_types_type_to_string
	add	x1, x1, #:lo12:compiler_typesystem_types_type_to_string
	bl	donna_list_map
	adrp	x1, str383
	add	x1, x1, #:lo12:str383
	bl	donna_string_join
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str381
	add	x0, x0, #:lo12:str381
	bl	__rt_str_concat
	adrp	x1, str386
	add	x1, x1, #:lo12:str386
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	compiler_typesystem_types_type_to_string
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L174
.L167:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, compiler_typesystem_types_type_to_string
	add	x1, x1, #:lo12:compiler_typesystem_types_type_to_string
	bl	donna_list_map
	adrp	x1, str368
	add	x1, x1, #:lo12:str368
	bl	donna_string_join
	mov	x1, x0
	adrp	x0, str366
	add	x0, x0, #:lo12:str366
	bl	__rt_str_concat
	adrp	x1, str371
	add	x1, x1, #:lo12:str371
	bl	__rt_str_concat
	b	.L174
.L168:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_typesystem_types_type_to_string
	mov	x1, x0
	adrp	x0, str355
	add	x0, x0, #:lo12:str355
	bl	__rt_str_concat
	adrp	x1, str358
	add	x1, x1, #:lo12:str358
	bl	__rt_str_concat
	b	.L174
.L169:
	adrp	x0, str348
	add	x0, x0, #:lo12:str348
	b	.L174
.L170:
	adrp	x0, str343
	add	x0, x0, #:lo12:str343
	b	.L174
.L171:
	adrp	x0, str338
	add	x0, x0, #:lo12:str338
	b	.L174
.L172:
	adrp	x0, str333
	add	x0, x0, #:lo12:str333
	b	.L174
.L173:
	adrp	x0, str328
	add	x0, x0, #:lo12:str328
.L174:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type compiler_typesystem_types_type_to_string, @function
.size compiler_typesystem_types_type_to_string, .-compiler_typesystem_types_type_to_string
/* end function compiler_typesystem_types_type_to_string */

.text
.balign 16
.globl compiler_typesystem_types_typed_expr_type
compiler_typesystem_types_typed_expr_type:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L209
	cmp	x1, #1
	beq	.L208
	cmp	x1, #2
	beq	.L207
	cmp	x1, #3
	beq	.L206
	cmp	x1, #4
	beq	.L205
	cmp	x1, #5
	beq	.L204
	cmp	x1, #6
	beq	.L203
	cmp	x1, #7
	beq	.L202
	cmp	x1, #8
	beq	.L201
	cmp	x1, #9
	beq	.L200
	cmp	x1, #10
	beq	.L199
	cmp	x1, #11
	beq	.L198
	cmp	x1, #12
	beq	.L197
	cmp	x1, #13
	beq	.L196
	cmp	x1, #14
	beq	.L195
	cmp	x1, #15
	beq	.L194
	cmp	x1, #16
	beq	.L193
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L193:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L194:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L195:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L196:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L197:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L198:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L199:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L200:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L201:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L202:
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L203:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L204:
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L205:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L206:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L207:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L208:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L210
.L209:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
.L210:
	ldp	x29, x30, [sp], 16
	ret
.type compiler_typesystem_types_typed_expr_type, @function
.size compiler_typesystem_types_typed_expr_type, .-compiler_typesystem_types_typed_expr_type
/* end function compiler_typesystem_types_typed_expr_type */

.text
.balign 16
__rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	strlen
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	bl	strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
