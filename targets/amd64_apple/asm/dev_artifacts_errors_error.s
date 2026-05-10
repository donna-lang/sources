.text
.balign 16
.globl _errors_error_LexUnexpectedChar
_errors_error_LexUnexpectedChar:
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
/* end function errors_error_LexUnexpectedChar */

.text
.balign 16
.globl _errors_error_LexUnterminatedString
_errors_error_LexUnterminatedString:
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
/* end function errors_error_LexUnterminatedString */

.text
.balign 16
.globl _errors_error_LexInvalidEscape
_errors_error_LexInvalidEscape:
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
/* end function errors_error_LexInvalidEscape */

.text
.balign 16
.globl _errors_error_LexInvalidHexEscape
_errors_error_LexInvalidHexEscape:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $3, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function errors_error_LexInvalidHexEscape */

.text
.balign 16
.globl _errors_error_LexInvalidUnicodeEscape
_errors_error_LexInvalidUnicodeEscape:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $4, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function errors_error_LexInvalidUnicodeEscape */

.text
.balign 16
.globl _errors_error_LexEmptyNumberLiteral
_errors_error_LexEmptyNumberLiteral:
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
/* end function errors_error_LexEmptyNumberLiteral */

.text
.balign 16
.globl _errors_error_ParseUnexpectedToken
_errors_error_ParseUnexpectedToken:
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
/* end function errors_error_ParseUnexpectedToken */

.text
.balign 16
.globl _errors_error_ParseUnexpectedEof
_errors_error_ParseUnexpectedEof:
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
/* end function errors_error_ParseUnexpectedEof */

.text
.balign 16
.globl _errors_error_ParseInvalidIndent
_errors_error_ParseInvalidIndent:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $8, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function errors_error_ParseInvalidIndent */

.text
.balign 16
.globl _errors_error_ParseMissingColon
_errors_error_ParseMissingColon:
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
/* end function errors_error_ParseMissingColon */

.text
.balign 16
.globl _errors_error_ParseMissingArrow
_errors_error_ParseMissingArrow:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $10, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function errors_error_ParseMissingArrow */

.text
.balign 16
.globl _errors_error_ParseUppercaseFnName
_errors_error_ParseUppercaseFnName:
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
/* end function errors_error_ParseUppercaseFnName */

.text
.balign 16
.globl _errors_error_ParseLowercaseTypeName
_errors_error_ParseLowercaseTypeName:
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
	movq $12, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_error_ParseLowercaseTypeName */

.text
.balign 16
.globl _errors_error_TypeMismatch
_errors_error_TypeMismatch:
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
	movq $13, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_error_TypeMismatch */

.text
.balign 16
.globl _errors_error_TypeUndefinedVar
_errors_error_TypeUndefinedVar:
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
/* end function errors_error_TypeUndefinedVar */

.text
.balign 16
.globl _errors_error_TypeUndefinedModule
_errors_error_TypeUndefinedModule:
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
	movq $15, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_error_TypeUndefinedModule */

.text
.balign 16
.globl _errors_error_TypeWrongArgCount
_errors_error_TypeWrongArgCount:
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
	movq $16, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_error_TypeWrongArgCount */

.text
.balign 16
.globl _errors_error_TypeNotAFunction
_errors_error_TypeNotAFunction:
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
/* end function errors_error_TypeNotAFunction */

.text
.balign 16
.globl _errors_error_TypeDuplicateFunction
_errors_error_TypeDuplicateFunction:
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
	movq $18, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_error_TypeDuplicateFunction */

.text
.balign 16
.globl _errors_error_TypeInvalidReturn
_errors_error_TypeInvalidReturn:
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
	movq $19, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	movq %rdx, 24(%rax)
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function errors_error_TypeInvalidReturn */

.text
.balign 16
.globl _errors_error_WarnUnusedVariable
_errors_error_WarnUnusedVariable:
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
/* end function errors_error_WarnUnusedVariable */

.text
.balign 16
.globl _errors_error_WarnUnusedParam
_errors_error_WarnUnusedParam:
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
/* end function errors_error_WarnUnusedParam */

.text
.balign 16
.globl _errors_error_WarnUnusedFunction
_errors_error_WarnUnusedFunction:
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
/* end function errors_error_WarnUnusedFunction */

.text
.balign 16
.globl _errors_error_WarnUnusedImport
_errors_error_WarnUnusedImport:
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
/* end function errors_error_WarnUnusedImport */

.text
.balign 16
.globl _errors_error_WarnUnreachableCode
_errors_error_WarnUnreachableCode:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $4, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function errors_error_WarnUnreachableCode */

.text
.balign 16
.globl _errors_error_WarnTodo
_errors_error_WarnTodo:
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
/* end function errors_error_WarnTodo */

.text
.balign 16
.globl _errors_error_error_span
_errors_error_error_span:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb90
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb89
	cmpq $2, %rax
	jz Lbb88
	cmpq $3, %rax
	jz Lbb87
	cmpq $4, %rax
	jz Lbb86
	cmpq $5, %rax
	jz Lbb85
	cmpq $6, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb84
	cmpq $7, %rax
	jz Lbb83
	cmpq $8, %rax
	jz Lbb82
	cmpq $9, %rax
	jz Lbb81
	cmpq $10, %rax
	jz Lbb80
	cmpq $11, %rax
	jz Lbb79
	cmpq $12, %rax
	jz Lbb78
	cmpq $13, %rax
	jz Lbb77
	cmpq $14, %rax
	jz Lbb76
	cmpq $15, %rax
	jz Lbb75
	cmpq $16, %rax
	jz Lbb74
	cmpq $17, %rax
	jz Lbb73
	cmpq $18, %rax
	jz Lbb72
	movq 24(%rdi), %rax
	jmp Lbb91
Lbb72:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb73:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb74:
	movq 24(%rdi), %rax
	jmp Lbb91
Lbb75:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb76:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb77:
	movq 24(%rdi), %rax
	jmp Lbb91
Lbb78:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb79:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb80:
	movq 8(%rdi), %rax
	jmp Lbb91
Lbb81:
	movq 8(%rdi), %rax
	jmp Lbb91
Lbb82:
	movq 8(%rdi), %rax
	jmp Lbb91
Lbb83:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb84:
	movq 24(%rdi), %rax
	jmp Lbb91
Lbb85:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb86:
	movq 8(%rdi), %rax
	jmp Lbb91
Lbb87:
	movq 8(%rdi), %rax
	jmp Lbb91
Lbb88:
	movq 16(%rdi), %rax
	jmp Lbb91
Lbb89:
	movq 8(%rdi), %rax
	jmp Lbb91
Lbb90:
	movq 16(%rdi), %rax
Lbb91:
	ret
/* end function errors_error_error_span */

.text
.balign 16
.globl _errors_error_warning_span
_errors_error_warning_span:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb102
	cmpq $1, %rax
	jz Lbb101
	cmpq $2, %rax
	jz Lbb100
	cmpq $3, %rax
	jz Lbb99
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb98
	movq 8(%rdi), %rax
	jmp Lbb103
Lbb98:
	movq 8(%rdi), %rax
	jmp Lbb103
Lbb99:
	movq 16(%rdi), %rax
	jmp Lbb103
Lbb100:
	movq 16(%rdi), %rax
	jmp Lbb103
Lbb101:
	movq 24(%rdi), %rax
	jmp Lbb103
Lbb102:
	movq 16(%rdi), %rax
Lbb103:
	ret
/* end function errors_error_warning_span */

