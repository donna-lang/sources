.text
.balign 4
.globl _errors_error_LexUnexpectedChar
_errors_error_LexUnexpectedChar:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_LexUnexpectedChar */

.text
.balign 4
.globl _errors_error_LexUnterminatedString
_errors_error_LexUnterminatedString:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_error_LexUnterminatedString */

.text
.balign 4
.globl _errors_error_LexInvalidEscape
_errors_error_LexInvalidEscape:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_LexInvalidEscape */

.text
.balign 4
.globl _errors_error_LexInvalidHexEscape
_errors_error_LexInvalidHexEscape:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #3
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_error_LexInvalidHexEscape */

.text
.balign 4
.globl _errors_error_LexInvalidUnicodeEscape
_errors_error_LexInvalidUnicodeEscape:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #4
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_error_LexInvalidUnicodeEscape */

.text
.balign 4
.globl _errors_error_LexEmptyNumberLiteral
_errors_error_LexEmptyNumberLiteral:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_LexEmptyNumberLiteral */

.text
.balign 4
.globl _errors_error_ParseUnexpectedToken
_errors_error_ParseUnexpectedToken:
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
	bl	_malloc
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
/* end function errors_error_ParseUnexpectedToken */

.text
.balign 4
.globl _errors_error_ParseUnexpectedEof
_errors_error_ParseUnexpectedEof:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_ParseUnexpectedEof */

.text
.balign 4
.globl _errors_error_ParseInvalidIndent
_errors_error_ParseInvalidIndent:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #8
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_error_ParseInvalidIndent */

.text
.balign 4
.globl _errors_error_ParseMissingColon
_errors_error_ParseMissingColon:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #9
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_error_ParseMissingColon */

.text
.balign 4
.globl _errors_error_ParseMissingArrow
_errors_error_ParseMissingArrow:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #10
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_error_ParseMissingArrow */

.text
.balign 4
.globl _errors_error_ParseUppercaseFnName
_errors_error_ParseUppercaseFnName:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_ParseUppercaseFnName */

.text
.balign 4
.globl _errors_error_ParseLowercaseTypeName
_errors_error_ParseLowercaseTypeName:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x2, #12
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
/* end function errors_error_ParseLowercaseTypeName */

.text
.balign 4
.globl _errors_error_TypeMismatch
_errors_error_TypeMismatch:
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
	bl	_malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #13
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
/* end function errors_error_TypeMismatch */

.text
.balign 4
.globl _errors_error_TypeUndefinedVar
_errors_error_TypeUndefinedVar:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_TypeUndefinedVar */

.text
.balign 4
.globl _errors_error_TypeUndefinedModule
_errors_error_TypeUndefinedModule:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x2, #15
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
/* end function errors_error_TypeUndefinedModule */

.text
.balign 4
.globl _errors_error_TypeWrongArgCount
_errors_error_TypeWrongArgCount:
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
	bl	_malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #16
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
/* end function errors_error_TypeWrongArgCount */

.text
.balign 4
.globl _errors_error_TypeNotAFunction
_errors_error_TypeNotAFunction:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_TypeNotAFunction */

.text
.balign 4
.globl _errors_error_TypeDuplicateFunction
_errors_error_TypeDuplicateFunction:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x2, #18
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
/* end function errors_error_TypeDuplicateFunction */

.text
.balign 4
.globl _errors_error_TypeInvalidReturn
_errors_error_TypeInvalidReturn:
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
	bl	_malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #19
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
/* end function errors_error_TypeInvalidReturn */

.text
.balign 4
.globl _errors_error_WarnUnusedVariable
_errors_error_WarnUnusedVariable:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_WarnUnusedVariable */

.text
.balign 4
.globl _errors_error_WarnUnusedParam
_errors_error_WarnUnusedParam:
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
	bl	_malloc
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
/* end function errors_error_WarnUnusedParam */

.text
.balign 4
.globl _errors_error_WarnUnusedFunction
_errors_error_WarnUnusedFunction:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_WarnUnusedFunction */

.text
.balign 4
.globl _errors_error_WarnUnusedImport
_errors_error_WarnUnusedImport:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function errors_error_WarnUnusedImport */

.text
.balign 4
.globl _errors_error_WarnUnreachableCode
_errors_error_WarnUnreachableCode:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #4
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_error_WarnUnreachableCode */

.text
.balign 4
.globl _errors_error_WarnTodo
_errors_error_WarnTodo:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #5
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function errors_error_WarnTodo */

.text
.balign 4
.globl _errors_error_error_span
_errors_error_error_span:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L90
	cmp	x1, #1
	beq	L89
	cmp	x1, #2
	beq	L88
	cmp	x1, #3
	beq	L87
	cmp	x1, #4
	beq	L86
	cmp	x1, #5
	beq	L85
	cmp	x1, #6
	beq	L84
	cmp	x1, #7
	beq	L83
	cmp	x1, #8
	beq	L82
	cmp	x1, #9
	beq	L81
	cmp	x1, #10
	beq	L80
	cmp	x1, #11
	beq	L79
	cmp	x1, #12
	beq	L78
	cmp	x1, #13
	beq	L77
	cmp	x1, #14
	beq	L76
	cmp	x1, #15
	beq	L75
	cmp	x1, #16
	beq	L74
	cmp	x1, #17
	beq	L73
	cmp	x1, #18
	beq	L72
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L72:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L73:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L74:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L75:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L76:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L77:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L78:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L79:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L80:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L81:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L82:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L83:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L84:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L85:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L86:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L87:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L88:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L89:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L91
L90:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
L91:
	ldp	x29, x30, [sp], 16
	ret
/* end function errors_error_error_span */

.text
.balign 4
.globl _errors_error_warning_span
_errors_error_warning_span:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L102
	cmp	x1, #1
	beq	L101
	cmp	x1, #2
	beq	L100
	cmp	x1, #3
	beq	L99
	cmp	x1, #4
	beq	L98
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L103
L98:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L103
L99:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L103
L100:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L103
L101:
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L103
L102:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
L103:
	ldp	x29, x30, [sp], 16
	ret
/* end function errors_error_warning_span */

