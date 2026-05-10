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
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #48
	bl	malloc
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x5, #0
	str	x5, [x0]
	mov	x5, #8
	add	x5, x0, x5
	str	x19, [x5]
	mov	x5, #16
	add	x5, x0, x5
	str	x1, [x5]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_ast_Module, @function
.size compiler_parser_ast_Module, .-compiler_parser_ast_Module
/* end function compiler_parser_ast_Module */

.text
.balign 16
.globl compiler_parser_ast_Import
compiler_parser_ast_Import:
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
.type compiler_parser_ast_Import, @function
.size compiler_parser_ast_Import, .-compiler_parser_ast_Import
/* end function compiler_parser_ast_Import */

.text
.balign 16
.globl compiler_parser_ast_Const
compiler_parser_ast_Const:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #48
	bl	malloc
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x5, #0
	str	x5, [x0]
	mov	x5, #8
	add	x5, x0, x5
	str	x19, [x5]
	mov	x5, #16
	add	x5, x0, x5
	str	x1, [x5]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_ast_Const, @function
.size compiler_parser_ast_Const, .-compiler_parser_ast_Const
/* end function compiler_parser_ast_Const */

.text
.balign 16
.globl compiler_parser_ast_Function
compiler_parser_ast_Function:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x24, x5
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #56
	bl	malloc
	mov	x5, x24
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x6, #0
	str	x6, [x0]
	mov	x6, #8
	add	x6, x0, x6
	str	x19, [x6]
	mov	x6, #16
	add	x6, x0, x6
	str	x1, [x6]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	mov	x1, #48
	add	x1, x0, x1
	str	x5, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_ast_Function, @function
.size compiler_parser_ast_Function, .-compiler_parser_ast_Function
/* end function compiler_parser_ast_Function */

.text
.balign 16
.globl compiler_parser_ast_ExternalFn
compiler_parser_ast_ExternalFn:
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	mov	x25, x6
	mov	x24, x5
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #64
	bl	malloc
	mov	x6, x25
	mov	x5, x24
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x7, #1
	str	x7, [x0]
	mov	x7, #8
	add	x7, x0, x7
	str	x19, [x7]
	mov	x7, #16
	add	x7, x0, x7
	str	x1, [x7]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	mov	x1, #48
	add	x1, x0, x1
	str	x5, [x1]
	mov	x1, #56
	add	x1, x0, x1
	str	x6, [x1]
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldp	x29, x30, [sp], 80
	ret
.type compiler_parser_ast_ExternalFn, @function
.size compiler_parser_ast_ExternalFn, .-compiler_parser_ast_ExternalFn
/* end function compiler_parser_ast_ExternalFn */

.text
.balign 16
.globl compiler_parser_ast_Param
compiler_parser_ast_Param:
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
.type compiler_parser_ast_Param, @function
.size compiler_parser_ast_Param, .-compiler_parser_ast_Param
/* end function compiler_parser_ast_Param */

.text
.balign 16
.globl compiler_parser_ast_TypeDef
compiler_parser_ast_TypeDef:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x24, x5
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #56
	bl	malloc
	mov	x5, x24
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x6, #0
	str	x6, [x0]
	mov	x6, #8
	add	x6, x0, x6
	str	x19, [x6]
	mov	x6, #16
	add	x6, x0, x6
	str	x1, [x6]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	mov	x1, #48
	add	x1, x0, x1
	str	x5, [x1]
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
.type compiler_parser_ast_TypeDef, @function
.size compiler_parser_ast_TypeDef, .-compiler_parser_ast_TypeDef
/* end function compiler_parser_ast_TypeDef */

.text
.balign 16
.globl compiler_parser_ast_ConstructorDef
compiler_parser_ast_ConstructorDef:
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
.type compiler_parser_ast_ConstructorDef, @function
.size compiler_parser_ast_ConstructorDef, .-compiler_parser_ast_ConstructorDef
/* end function compiler_parser_ast_ConstructorDef */

.text
.balign 16
.globl compiler_parser_ast_TyName
compiler_parser_ast_TyName:
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
.type compiler_parser_ast_TyName, @function
.size compiler_parser_ast_TyName, .-compiler_parser_ast_TyName
/* end function compiler_parser_ast_TyName */

.text
.balign 16
.globl compiler_parser_ast_TyTuple
compiler_parser_ast_TyTuple:
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
.type compiler_parser_ast_TyTuple, @function
.size compiler_parser_ast_TyTuple, .-compiler_parser_ast_TyTuple
/* end function compiler_parser_ast_TyTuple */

.text
.balign 16
.globl compiler_parser_ast_TyFn
compiler_parser_ast_TyFn:
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
	mov	x3, #2
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
.type compiler_parser_ast_TyFn, @function
.size compiler_parser_ast_TyFn, .-compiler_parser_ast_TyFn
/* end function compiler_parser_ast_TyFn */

.text
.balign 16
.globl compiler_parser_ast_IntLit
compiler_parser_ast_IntLit:
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
.type compiler_parser_ast_IntLit, @function
.size compiler_parser_ast_IntLit, .-compiler_parser_ast_IntLit
/* end function compiler_parser_ast_IntLit */

.text
.balign 16
.globl compiler_parser_ast_FloatLit
compiler_parser_ast_FloatLit:
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
.type compiler_parser_ast_FloatLit, @function
.size compiler_parser_ast_FloatLit, .-compiler_parser_ast_FloatLit
/* end function compiler_parser_ast_FloatLit */

.text
.balign 16
.globl compiler_parser_ast_StringLit
compiler_parser_ast_StringLit:
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
.type compiler_parser_ast_StringLit, @function
.size compiler_parser_ast_StringLit, .-compiler_parser_ast_StringLit
/* end function compiler_parser_ast_StringLit */

.text
.balign 16
.globl compiler_parser_ast_BoolLit
compiler_parser_ast_BoolLit:
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
.type compiler_parser_ast_BoolLit, @function
.size compiler_parser_ast_BoolLit, .-compiler_parser_ast_BoolLit
/* end function compiler_parser_ast_BoolLit */

.text
.balign 16
.globl compiler_parser_ast_Var
compiler_parser_ast_Var:
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
.type compiler_parser_ast_Var, @function
.size compiler_parser_ast_Var, .-compiler_parser_ast_Var
/* end function compiler_parser_ast_Var */

.text
.balign 16
.globl compiler_parser_ast_FieldAccess
compiler_parser_ast_FieldAccess:
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
	mov	x3, #5
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
.type compiler_parser_ast_FieldAccess, @function
.size compiler_parser_ast_FieldAccess, .-compiler_parser_ast_FieldAccess
/* end function compiler_parser_ast_FieldAccess */

.text
.balign 16
.globl compiler_parser_ast_Tuple
compiler_parser_ast_Tuple:
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
	mov	x2, #6
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
.type compiler_parser_ast_Tuple, @function
.size compiler_parser_ast_Tuple, .-compiler_parser_ast_Tuple
/* end function compiler_parser_ast_Tuple */

.text
.balign 16
.globl compiler_parser_ast_EList
compiler_parser_ast_EList:
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
.type compiler_parser_ast_EList, @function
.size compiler_parser_ast_EList, .-compiler_parser_ast_EList
/* end function compiler_parser_ast_EList */

.text
.balign 16
.globl compiler_parser_ast_ListSpread
compiler_parser_ast_ListSpread:
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
.type compiler_parser_ast_ListSpread, @function
.size compiler_parser_ast_ListSpread, .-compiler_parser_ast_ListSpread
/* end function compiler_parser_ast_ListSpread */

.text
.balign 16
.globl compiler_parser_ast_Call
compiler_parser_ast_Call:
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
.type compiler_parser_ast_Call, @function
.size compiler_parser_ast_Call, .-compiler_parser_ast_Call
/* end function compiler_parser_ast_Call */

.text
.balign 16
.globl compiler_parser_ast_BinOp
compiler_parser_ast_BinOp:
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
	mov	x4, #10
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
.type compiler_parser_ast_BinOp, @function
.size compiler_parser_ast_BinOp, .-compiler_parser_ast_BinOp
/* end function compiler_parser_ast_BinOp */

.text
.balign 16
.globl compiler_parser_ast_UnaryOp
compiler_parser_ast_UnaryOp:
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
	mov	x3, #11
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
.type compiler_parser_ast_UnaryOp, @function
.size compiler_parser_ast_UnaryOp, .-compiler_parser_ast_UnaryOp
/* end function compiler_parser_ast_UnaryOp */

.text
.balign 16
.globl compiler_parser_ast_Case
compiler_parser_ast_Case:
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
.type compiler_parser_ast_Case, @function
.size compiler_parser_ast_Case, .-compiler_parser_ast_Case
/* end function compiler_parser_ast_Case */

.text
.balign 16
.globl compiler_parser_ast_Block
compiler_parser_ast_Block:
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
.type compiler_parser_ast_Block, @function
.size compiler_parser_ast_Block, .-compiler_parser_ast_Block
/* end function compiler_parser_ast_Block */

.text
.balign 16
.globl compiler_parser_ast_Pipe
compiler_parser_ast_Pipe:
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
	mov	x3, #14
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
.type compiler_parser_ast_Pipe, @function
.size compiler_parser_ast_Pipe, .-compiler_parser_ast_Pipe
/* end function compiler_parser_ast_Pipe */

.text
.balign 16
.globl compiler_parser_ast_Lambda
compiler_parser_ast_Lambda:
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
.type compiler_parser_ast_Lambda, @function
.size compiler_parser_ast_Lambda, .-compiler_parser_ast_Lambda
/* end function compiler_parser_ast_Lambda */

.text
.balign 16
.globl compiler_parser_ast_Echo
compiler_parser_ast_Echo:
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
.type compiler_parser_ast_Echo, @function
.size compiler_parser_ast_Echo, .-compiler_parser_ast_Echo
/* end function compiler_parser_ast_Echo */

.text
.balign 16
.globl compiler_parser_ast_Panic
compiler_parser_ast_Panic:
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
	mov	x2, #17
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
.type compiler_parser_ast_Panic, @function
.size compiler_parser_ast_Panic, .-compiler_parser_ast_Panic
/* end function compiler_parser_ast_Panic */

.text
.balign 16
.globl compiler_parser_ast_Todo
compiler_parser_ast_Todo:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #18
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type compiler_parser_ast_Todo, @function
.size compiler_parser_ast_Todo, .-compiler_parser_ast_Todo
/* end function compiler_parser_ast_Todo */

.text
.balign 16
.globl compiler_parser_ast_LetStmt
compiler_parser_ast_LetStmt:
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
.type compiler_parser_ast_LetStmt, @function
.size compiler_parser_ast_LetStmt, .-compiler_parser_ast_LetStmt
/* end function compiler_parser_ast_LetStmt */

.text
.balign 16
.globl compiler_parser_ast_LetPatStmt
compiler_parser_ast_LetPatStmt:
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
	mov	x3, #1
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
.type compiler_parser_ast_LetPatStmt, @function
.size compiler_parser_ast_LetPatStmt, .-compiler_parser_ast_LetPatStmt
/* end function compiler_parser_ast_LetPatStmt */

.text
.balign 16
.globl compiler_parser_ast_ExprStmt
compiler_parser_ast_ExprStmt:
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
.type compiler_parser_ast_ExprStmt, @function
.size compiler_parser_ast_ExprStmt, .-compiler_parser_ast_ExprStmt
/* end function compiler_parser_ast_ExprStmt */

.text
.balign 16
.globl compiler_parser_ast_CaseClause
compiler_parser_ast_CaseClause:
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
.type compiler_parser_ast_CaseClause, @function
.size compiler_parser_ast_CaseClause, .-compiler_parser_ast_CaseClause
/* end function compiler_parser_ast_CaseClause */

.text
.balign 16
.globl compiler_parser_ast_PWild
compiler_parser_ast_PWild:
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
.type compiler_parser_ast_PWild, @function
.size compiler_parser_ast_PWild, .-compiler_parser_ast_PWild
/* end function compiler_parser_ast_PWild */

.text
.balign 16
.globl compiler_parser_ast_PDiscard
compiler_parser_ast_PDiscard:
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
.type compiler_parser_ast_PDiscard, @function
.size compiler_parser_ast_PDiscard, .-compiler_parser_ast_PDiscard
/* end function compiler_parser_ast_PDiscard */

.text
.balign 16
.globl compiler_parser_ast_PVar
compiler_parser_ast_PVar:
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
.type compiler_parser_ast_PVar, @function
.size compiler_parser_ast_PVar, .-compiler_parser_ast_PVar
/* end function compiler_parser_ast_PVar */

.text
.balign 16
.globl compiler_parser_ast_PInt
compiler_parser_ast_PInt:
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
.type compiler_parser_ast_PInt, @function
.size compiler_parser_ast_PInt, .-compiler_parser_ast_PInt
/* end function compiler_parser_ast_PInt */

.text
.balign 16
.globl compiler_parser_ast_PFloat
compiler_parser_ast_PFloat:
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
.type compiler_parser_ast_PFloat, @function
.size compiler_parser_ast_PFloat, .-compiler_parser_ast_PFloat
/* end function compiler_parser_ast_PFloat */

.text
.balign 16
.globl compiler_parser_ast_PString
compiler_parser_ast_PString:
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
	mov	x2, #5
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
.type compiler_parser_ast_PString, @function
.size compiler_parser_ast_PString, .-compiler_parser_ast_PString
/* end function compiler_parser_ast_PString */

.text
.balign 16
.globl compiler_parser_ast_PBool
compiler_parser_ast_PBool:
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
	mov	x2, #6
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
.type compiler_parser_ast_PBool, @function
.size compiler_parser_ast_PBool, .-compiler_parser_ast_PBool
/* end function compiler_parser_ast_PBool */

.text
.balign 16
.globl compiler_parser_ast_PTuple
compiler_parser_ast_PTuple:
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
.type compiler_parser_ast_PTuple, @function
.size compiler_parser_ast_PTuple, .-compiler_parser_ast_PTuple
/* end function compiler_parser_ast_PTuple */

.text
.balign 16
.globl compiler_parser_ast_PList
compiler_parser_ast_PList:
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
.type compiler_parser_ast_PList, @function
.size compiler_parser_ast_PList, .-compiler_parser_ast_PList
/* end function compiler_parser_ast_PList */

.text
.balign 16
.globl compiler_parser_ast_PCons
compiler_parser_ast_PCons:
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
	mov	x4, #9
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
.type compiler_parser_ast_PCons, @function
.size compiler_parser_ast_PCons, .-compiler_parser_ast_PCons
/* end function compiler_parser_ast_PCons */

.section .note.GNU-stack,"",@progbits
