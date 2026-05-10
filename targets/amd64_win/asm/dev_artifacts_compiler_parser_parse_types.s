.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str209:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str215:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str320:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str323:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str324:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str468:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str471:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str499:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str502:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str529:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str532:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str533:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str674:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str677:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str678:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_types_parse_type
compiler_parser_parse_types_parse_type:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb2
	movl $0, %eax
	jmp Lbb3
Lbb2:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $5, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb3:
	cmpl $0, %eax
	jnz Lbb101
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb7
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb8
Lbb7:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb8:
	cmpl $0, %eax
	jnz Lbb79
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb12
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb13
Lbb12:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $29, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb13:
	cmpl $0, %eax
	jnz Lbb61
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb17
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb18
Lbb17:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $14, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb18:
	cmpl $0, %eax
	jnz Lbb27
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb22
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb24
Lbb22:
	movq $1, (%rax)
	movl $1, %eax
Lbb24:
	cmpl $0, %eax
	jnz Lbb26
	subq $32, %rsp
	leaq str533(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str532(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb112
Lbb26:
	movq 8(%rcx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str529(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb112
Lbb27:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r8
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	movq %r8, %rdi
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb30
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb31
Lbb30:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb31:
	cmpl $0, %ecx
	jnz Lbb40
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb35
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb37
Lbb35:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb37:
	cmpl $0, %ecx
	jnz Lbb39
	subq $32, %rsp
	movq %rdi, %rdx
	leaq str502(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb112
Lbb39:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str499(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb112
Lbb40:
	movq 16(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_types_parse_type_args
	movq %rdi, %r8
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb59
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz Lbb44
	movq $0, (%r9)
	movq %r8, %r13
	movl $0, %r8d
	jmp Lbb45
Lbb44:
	movq 8(%rax), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $23, %r10
	movq %r8, %r13
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb45:
	cmpl $0, %r8d
	jnz Lbb54
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb49
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb51
Lbb49:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb51:
	cmpl $0, %ecx
	jnz Lbb53
	subq $32, %rsp
	movq %r13, %rdx
	leaq str471(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb58
Lbb53:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %r12, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str468(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb58
Lbb54:
	movq %rcx, %r12
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type
	movq %r13, %r8
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb56
	movq 8(%rax), %rdx
	movq 16(%rax), %r13
	subq $32, %rsp
	callq compiler_parser_ast_TyFn
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb57
Lbb56:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%r12)
Lbb57:
	movq %rax, (%rbx)
Lbb58:
	movq %rax, (%rdi)
	jmp Lbb60
Lbb59:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb60:
	movq %rax, (%rsi)
	jmp Lbb112
Lbb61:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb64
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb65
Lbb64:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb65:
	cmpl $0, %ecx
	jnz Lbb74
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb69
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb71
Lbb69:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb71:
	cmpl $0, %ecx
	jnz Lbb73
	subq $32, %rsp
	leaq str324(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str323(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb112
Lbb73:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str320(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb112
Lbb74:
	movq %rdi, %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_types_parse_type_args
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb77
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq compiler_parser_ast_TyTuple
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb78
Lbb77:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb78:
	movq %rax, (%rsi)
	jmp Lbb112
Lbb79:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %r8
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb82
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb87
Lbb82:
	movq 8(%rdi), %rax
	movq 16(%rdi), %r9
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r9), %r10
	cmpq $1, %r10
	setz %r11b
	movzbq %r11b, %r11
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r11d
	jnz Lbb85
	movq $0, (%r10)
	movl $0, %r9d
	jmp Lbb86
Lbb85:
	movq 8(%r9), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $5, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
Lbb86:
	cmpq $26, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %r9, %rax
	movq %rax, (%rdx)
Lbb87:
	cmpl $0, %eax
	jnz Lbb89
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_ast_TyName
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb112
Lbb89:
	movq 16(%rdi), %rdx
	movq 8(%rdx), %rax
	movq 16(%rdx), %r12
	movq (%rax), %rax
	movq 8(%rax), %rdx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r12), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %r8, %rbx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %eax
	jnz Lbb92
	movq $0, (%r8)
	movl $0, %eax
	jmp Lbb93
Lbb92:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%r8)
Lbb93:
	cmpl $0, %eax
	jnz Lbb95
	subq $32, %rsp
	movq %rdx, %r13
	leaq str215(%rip), %rdx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rbx, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r13
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_ast_TyName
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb100
Lbb95:
	movq %rbx, %r13
	movq %rcx, %rbx
	movq 16(%r12), %rcx
	subq $32, %rsp
	movq %rdx, %r12
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_types_parse_type_args
	movq %r13, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r9
	cmpq $1, %r9
	movq %r8, %r14
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb98
	movq 8(%rax), %r13
	movq 16(%rax), %r12
	subq $32, %rsp
	movq %rdx, %r15
	leaq str209(%rip), %rdx
	callq __rt_str_concat
	movq %r15, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %r14, %r8
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_TyName
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb99
Lbb98:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb99:
	movq %rax, (%rdi)
Lbb100:
	movq %rax, (%rsi)
	jmp Lbb112
Lbb101:
	movq 8(%rcx), %rax
	movq 16(%rcx), %r12
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %r8
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r12), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb104
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb105
Lbb104:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb105:
	cmpl $0, %eax
	jnz Lbb107
	subq $32, %rsp
	movq %r8, %rbx
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_ast_TyName
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb112
Lbb107:
	movq %r8, %rbx
	movq %rcx, %rdi
	movq 16(%r12), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_types_parse_type_args
	movq %rbx, %r8
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb110
	movq 8(%rax), %rdx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq compiler_parser_ast_TyName
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb111
Lbb110:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb111:
	movq %rax, (%rsi)
Lbb112:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_types_parse_type */

.text
.balign 16
.globl compiler_parser_parse_types_parse_type_list
compiler_parser_parse_types_parse_type_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type_args
	subq $-32, %rsp
	leave
	ret
/* end function compiler_parser_parse_types_parse_type_list */

.text
.balign 16
compiler_parser_parse_types_parse_type_args:
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
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb117
	movl $0, %edx
	jmp Lbb118
Lbb117:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb118:
	cmpl $0, %edx
	jnz Lbb143
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
	jnz Lbb142
	movq 8(%rax), %r13
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r8d
	jnz Lbb123
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb124
Lbb123:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb124:
	cmpl $0, %r8d
	jnz Lbb139
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rdx
	jz Lbb128
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb129
Lbb128:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $31, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb129:
	cmpl $0, %r8d
	jnz Lbb138
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb133
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb135
Lbb133:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb135:
	cmpl $0, %ecx
	jnz Lbb137
	subq $32, %rsp
	leaq str678(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str677(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb141
Lbb137:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rbx, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str674(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb141
Lbb138:
	movq 16(%rax), %rbx
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r13, 8(%rcx)
	movq %r12, 16(%rcx)
	subq $32, %rsp
	callq donna_list_reverse
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb141
Lbb139:
	movq %r13, %r12
	movq %rcx, %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
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
	callq compiler_parser_parse_types_parse_type_args
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb141:
	movq %rax, (%rsi)
	jmp Lbb144
Lbb142:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb144
Lbb143:
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb144:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_types_parse_type_args */

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

