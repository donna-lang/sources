.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str141:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str228:
	.ascii "type name"
	.byte 0
/* end data */

.data
.balign 8
str254:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str257:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str258:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str566:
	.ascii "indented constructor block"
	.byte 0
/* end data */

.data
.balign 8
str569:
	.ascii "constructor"
	.byte 0
/* end data */

.data
.balign 8
str570:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str718:
	.ascii "constructor name"
	.byte 0
/* end data */

.data
.balign 8
str882:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_type_defs_parse_type_def
compiler_parser_parse_type_defs_parse_type_def:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_pub
	subq $-32, %rsp
	movq (%rax), %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_opaque
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %r8
	movq 8(%rax), %rcx
	movq %rdx, %rdi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb2
	movq %r8, %rbx
	movl $0, %eax
	jmp Lbb7
Lbb2:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	movq %r8, %rbx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb5
	movq $0, (%r8)
	movl $0, %esi
	jmp Lbb6
Lbb5:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $5, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
Lbb6:
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
Lbb7:
	cmpl $0, %eax
	jnz Lbb32
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb11
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb16
Lbb11:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb14
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb15
Lbb14:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $4, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb15:
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb16:
	cmpl $0, %eax
	jnz Lbb31
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb20
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb21
Lbb20:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb21:
	cmpl $0, %eax
	jnz Lbb30
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb25
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb27
Lbb25:
	movq $1, (%rax)
	movl $1, %eax
Lbb27:
	cmpl $0, %eax
	jnz Lbb29
	subq $32, %rsp
	leaq str258(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str257(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb50
Lbb29:
	movq 8(%rcx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str254(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb50
Lbb30:
	movq 8(%rcx), %rax
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str228(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb50
Lbb31:
	movq 16(%rcx), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq errors_error_ParseLowercaseTypeName
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb50
Lbb32:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_type_params
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %r9
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %r10b
	movzbq %r10b, %r10
	movq %r9, %r14
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz Lbb35
	movq $0, (%r9)
	movq %r8, %r13
	movl $0, %r8d
	jmp Lbb36
Lbb35:
	movq 8(%rax), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $24, %r10
	movq %r8, %r13
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb36:
	cmpl $0, %r8d
	jnz Lbb45
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb40
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb42
Lbb40:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb42:
	cmpl $0, %ecx
	jnz Lbb44
	subq $32, %rsp
	movq %r12, %rdx
	leaq str141(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb50
Lbb44:
	movq 8(%rax), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq errors_error_ParseMissingColon
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb50
Lbb45:
	movq %rdi, %rdx
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rbx
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_type_defs_parse_constructors
	movq %r14, %r9
	movq %r13, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r10
	cmpq $1, %r10
	setz %r10b
	movzbq %r10b, %r10
	cmpl $0, %r10d
	jnz Lbb48
	movq %rax, %r10
	movq 8(%rax), %rax
	movq 16(%r10), %rbx
	subq $48, %rsp
	movq %rsp, %r10
	movq %r12, 40(%r10)
	movq %rax, 32(%r10)
	callq compiler_parser_ast_TypeDef
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-48, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb49
Lbb48:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb49:
	movq %rax, (%rsi)
Lbb50:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_type_def */

.text
.balign 16
compiler_parser_parse_type_defs_parse_pub:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb53
	movl $0, %eax
	jmp Lbb54
Lbb53:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $20, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb54:
	cmpl $0, %eax
	jnz Lbb56
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb57
Lbb56:
	movq 16(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb57:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_pub */

.text
.balign 16
compiler_parser_parse_type_defs_parse_opaque:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb60
	movl $0, %eax
	jmp Lbb61
Lbb60:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $18, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb61:
	cmpl $0, %eax
	jnz Lbb63
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb64
Lbb63:
	movq 16(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb64:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_opaque */

.text
.balign 16
compiler_parser_parse_type_defs_parse_type_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb67
	movl $0, %eax
	jmp Lbb68
Lbb67:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb68:
	cmpl $0, %eax
	jnz Lbb70
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	leaq donna_nil(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb71
Lbb70:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_type_defs_parse_type_param_list
	subq $-32, %rsp
Lbb71:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_type_params */

.text
.balign 16
compiler_parser_parse_type_defs_parse_type_param_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	movq %rdx, %rcx
	movq (%rsi), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb74
	movl $0, %edx
	jmp Lbb75
Lbb74:
	movq 8(%rsi), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb75:
	cmpl $0, %edx
	jnz Lbb96
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb79
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb80
Lbb79:
	movq 8(%rsi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb80:
	cmpl $0, %eax
	jnz Lbb82
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb97
Lbb82:
	movq 8(%rsi), %rax
	movq 16(%rsi), %r12
	movq (%rax), %rax
	movq %r12, %rdi
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edx
	jnz Lbb85
	movq $0, (%r8)
	movl $0, %edx
	jmp Lbb86
Lbb85:
	movq 8(%rdi), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $25, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
Lbb86:
	cmpl $0, %edx
	jnz Lbb94
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb90
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb91
Lbb90:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $31, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb91:
	cmpl $0, %eax
	jnz Lbb93
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r12, 8(%rcx)
	movq %rbx, 16(%rcx)
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb97
Lbb93:
	movq 16(%rdi), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r12, 8(%rcx)
	movq %rbx, 16(%rcx)
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb97
Lbb94:
	movq %r12, %rbx
	movq %rdi, %r12
	movq %rcx, %rdi
	movq 16(%r12), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_type_param_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb97
Lbb96:
	movq 16(%rsi), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
Lbb97:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_type_param_list */

.text
.balign 16
compiler_parser_parse_type_defs_parse_constructors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rdx
	subq $-32, %rsp
	movq %rdx, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb100
	movl $0, %ecx
	jmp Lbb101
Lbb100:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $62, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb101:
	cmpl $0, %ecx
	jnz Lbb110
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb105
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb107
Lbb105:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb107:
	cmpl $0, %ecx
	jnz Lbb109
	subq $32, %rsp
	leaq str570(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str569(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb112
Lbb109:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str566(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb112
Lbb110:
	movq %rsi, %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_ctor_block
	subq $-32, %rsp
Lbb112:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_constructors */

.text
.balign 16
compiler_parser_parse_type_defs_parse_ctor_block:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	cmpq $1, %rsi
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb115
	movl $0, %edx
	jmp Lbb116
Lbb115:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $63, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb116:
	cmpl $0, %edx
	jnz Lbb141
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rsi
	jz Lbb120
	movq $0, (%rdi)
	movl $0, %edx
	jmp Lbb121
Lbb120:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $5, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rdi)
Lbb121:
	cmpl $0, %edx
	jnz Lbb130
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rsi
	jz Lbb125
	movq $0, (%rdx)
	movl $0, %edx
	jmp Lbb127
Lbb125:
	movq $1, (%rdx)
	movl $1, %edx
Lbb127:
	cmpl $0, %edx
	jnz Lbb129
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb142
Lbb129:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str718(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb142
Lbb130:
	movq %rax, %rdx
	movq 8(%rax), %rax
	movq 16(%rdx), %r13
	movq %rcx, %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %r9
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb133
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb134
Lbb133:
	movq 8(%r13), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb134:
	cmpl $0, %eax
	jnz Lbb136
	subq $32, %rsp
	movq %r9, %r12
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_ast_ConstructorDef
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $32, %rsp
	movq %r13, %rcx
	callq compiler_parser_parse_type_defs_parse_ctor_block
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb142
Lbb136:
	movq %r9, %r12
	movq %rdi, %rbx
	movq %rcx, %rdi
	movq 16(%r13), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_type_defs_parse_field_list
	movq %r12, %r9
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb139
	movq 8(%rax), %r8
	movq (%r8), %rdx
	movq 8(%r8), %r8
	movq 16(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_ast_ConstructorDef
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_ctor_block
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb140
Lbb139:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb140:
	movq %rax, (%rsi)
	jmp Lbb142
Lbb141:
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb142:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_ctor_block */

.text
.balign 16
compiler_parser_parse_type_defs_parse_field_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rbx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb145
	movl $0, %esi
	jmp Lbb146
Lbb145:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $31, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb146:
	cmpl $0, %esi
	jnz Lbb178
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb150
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb155
Lbb150:
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb153
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb154
Lbb153:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $24, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb154:
	cmpq $4, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	andq %rdi, %rdx
	movq %rdx, (%rsi)
Lbb155:
	cmpl $0, %edx
	jnz Lbb167
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_parser_parse_types_parse_type
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb166
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	leaq str882(%rip), %rax
	movq %rax, 8(%r12)
	movq %rbx, 16(%r12)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rdi, 8(%r8)
	movq %rcx, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb160
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb161
Lbb160:
	movq 8(%r13), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb161:
	cmpl $0, %eax
	jnz Lbb163
	subq $32, %rsp
	movq %r8, %r12
	movq %rdx, %rbx
	movq %r13, %rcx
	callq compiler_parser_parse_type_defs_parse_field_list
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb165
Lbb163:
	movq %r8, %r12
	movq %rdx, %rbx
	movq 16(%r13), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_field_list
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb165:
	movq %rax, (%rsi)
	jmp Lbb180
Lbb166:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb180
Lbb167:
	movq 8(%rax), %rdx
	movq 16(%rax), %rax
	movq (%rdx), %rdx
	movq 8(%rdx), %r14
	movq %rcx, %rsi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb177
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r14, 8(%r12)
	movq %rbx, 16(%r12)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rdi, 8(%r8)
	movq %rcx, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb171
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb172
Lbb171:
	movq 8(%r13), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb172:
	cmpl $0, %eax
	jnz Lbb174
	subq $32, %rsp
	movq %r8, %r12
	movq %rdx, %rbx
	movq %r13, %rcx
	callq compiler_parser_parse_type_defs_parse_field_list
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb176
Lbb174:
	movq %r8, %r12
	movq %rdx, %rbx
	movq 16(%r13), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_field_list
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb176:
	movq %rax, (%rsi)
	jmp Lbb180
Lbb177:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb180
Lbb178:
	movq %rcx, %rsi
	movq %rbx, %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rdi, (%rcx)
	movq %rsi, 8(%rcx)
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb180:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_field_list */

