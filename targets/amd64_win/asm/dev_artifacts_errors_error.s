.text
.balign 16
.globl errors_error_LexUnexpectedChar
errors_error_LexUnexpectedChar:
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
/* end function errors_error_LexUnexpectedChar */

.text
.balign 16
.globl errors_error_LexUnterminatedString
errors_error_LexUnterminatedString:
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
/* end function errors_error_LexUnterminatedString */

.text
.balign 16
.globl errors_error_LexInvalidEscape
errors_error_LexInvalidEscape:
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
/* end function errors_error_LexInvalidEscape */

.text
.balign 16
.globl errors_error_LexInvalidHexEscape
errors_error_LexInvalidHexEscape:
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
	movq $3, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function errors_error_LexInvalidHexEscape */

.text
.balign 16
.globl errors_error_LexInvalidUnicodeEscape
errors_error_LexInvalidUnicodeEscape:
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
	movq $4, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function errors_error_LexInvalidUnicodeEscape */

.text
.balign 16
.globl errors_error_LexEmptyNumberLiteral
errors_error_LexEmptyNumberLiteral:
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
/* end function errors_error_LexEmptyNumberLiteral */

.text
.balign 16
.globl errors_error_ParseUnexpectedToken
errors_error_ParseUnexpectedToken:
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
/* end function errors_error_ParseUnexpectedToken */

.text
.balign 16
.globl errors_error_ParseUnexpectedEof
errors_error_ParseUnexpectedEof:
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
/* end function errors_error_ParseUnexpectedEof */

.text
.balign 16
.globl errors_error_ParseInvalidIndent
errors_error_ParseInvalidIndent:
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
	movq $8, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function errors_error_ParseInvalidIndent */

.text
.balign 16
.globl errors_error_ParseMissingColon
errors_error_ParseMissingColon:
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
/* end function errors_error_ParseMissingColon */

.text
.balign 16
.globl errors_error_ParseMissingArrow
errors_error_ParseMissingArrow:
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
	movq $10, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function errors_error_ParseMissingArrow */

.text
.balign 16
.globl errors_error_ParseUppercaseFnName
errors_error_ParseUppercaseFnName:
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
/* end function errors_error_ParseUppercaseFnName */

.text
.balign 16
.globl errors_error_ParseLowercaseTypeName
errors_error_ParseLowercaseTypeName:
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
	movq $12, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function errors_error_ParseLowercaseTypeName */

.text
.balign 16
.globl errors_error_TypeMismatch
errors_error_TypeMismatch:
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
	movq $13, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function errors_error_TypeMismatch */

.text
.balign 16
.globl errors_error_TypeUndefinedVar
errors_error_TypeUndefinedVar:
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
/* end function errors_error_TypeUndefinedVar */

.text
.balign 16
.globl errors_error_TypeUndefinedModule
errors_error_TypeUndefinedModule:
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
	movq $15, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function errors_error_TypeUndefinedModule */

.text
.balign 16
.globl errors_error_TypeWrongArgCount
errors_error_TypeWrongArgCount:
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
	movq $16, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function errors_error_TypeWrongArgCount */

.text
.balign 16
.globl errors_error_TypeNotAFunction
errors_error_TypeNotAFunction:
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
/* end function errors_error_TypeNotAFunction */

.text
.balign 16
.globl errors_error_TypeDuplicateFunction
errors_error_TypeDuplicateFunction:
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
	movq $18, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function errors_error_TypeDuplicateFunction */

.text
.balign 16
.globl errors_error_TypeInvalidReturn
errors_error_TypeInvalidReturn:
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
	movq $19, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function errors_error_TypeInvalidReturn */

.text
.balign 16
.globl errors_error_WarnUnusedVariable
errors_error_WarnUnusedVariable:
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
/* end function errors_error_WarnUnusedVariable */

.text
.balign 16
.globl errors_error_WarnUnusedParam
errors_error_WarnUnusedParam:
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
/* end function errors_error_WarnUnusedParam */

.text
.balign 16
.globl errors_error_WarnUnusedFunction
errors_error_WarnUnusedFunction:
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
/* end function errors_error_WarnUnusedFunction */

.text
.balign 16
.globl errors_error_WarnUnusedImport
errors_error_WarnUnusedImport:
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
/* end function errors_error_WarnUnusedImport */

.text
.balign 16
.globl errors_error_WarnUnreachableCode
errors_error_WarnUnreachableCode:
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
	movq $4, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function errors_error_WarnUnreachableCode */

.text
.balign 16
.globl errors_error_WarnTodo
errors_error_WarnTodo:
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
/* end function errors_error_WarnTodo */

.text
.balign 16
.globl errors_error_error_span
errors_error_error_span:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb90
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
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
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
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
	movq 24(%rcx), %rax
	jmp Lbb91
Lbb72:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb73:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb74:
	movq 24(%rcx), %rax
	jmp Lbb91
Lbb75:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb76:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb77:
	movq 24(%rcx), %rax
	jmp Lbb91
Lbb78:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb79:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb80:
	movq 8(%rcx), %rax
	jmp Lbb91
Lbb81:
	movq 8(%rcx), %rax
	jmp Lbb91
Lbb82:
	movq 8(%rcx), %rax
	jmp Lbb91
Lbb83:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb84:
	movq 24(%rcx), %rax
	jmp Lbb91
Lbb85:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb86:
	movq 8(%rcx), %rax
	jmp Lbb91
Lbb87:
	movq 8(%rcx), %rax
	jmp Lbb91
Lbb88:
	movq 16(%rcx), %rax
	jmp Lbb91
Lbb89:
	movq 8(%rcx), %rax
	jmp Lbb91
Lbb90:
	movq 16(%rcx), %rax
Lbb91:
	ret
/* end function errors_error_error_span */

.text
.balign 16
.globl errors_error_warning_span
errors_error_warning_span:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
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
	movq 8(%rcx), %rax
	jmp Lbb103
Lbb98:
	movq 8(%rcx), %rax
	jmp Lbb103
Lbb99:
	movq 16(%rcx), %rax
	jmp Lbb103
Lbb100:
	movq 16(%rcx), %rax
	jmp Lbb103
Lbb101:
	movq 24(%rcx), %rax
	jmp Lbb103
Lbb102:
	movq 16(%rcx), %rax
Lbb103:
	ret
/* end function errors_error_warning_span */

