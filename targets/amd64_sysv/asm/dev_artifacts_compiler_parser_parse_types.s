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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb2
	movl $0, %eax
	jmp .Lbb3
.Lbb2:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $5, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb3:
	cmpl $0, %eax
	jnz .Lbb101
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb7
	movq $0, (%rsi)
	movl $0, %eax
	jmp .Lbb8
.Lbb7:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
.Lbb8:
	cmpl $0, %eax
	jnz .Lbb78
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb12
	movq $0, (%rsi)
	movl $0, %eax
	jmp .Lbb13
.Lbb12:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $29, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
.Lbb13:
	cmpl $0, %eax
	jnz .Lbb61
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb17
	movq $0, (%rsi)
	movl $0, %eax
	jmp .Lbb18
.Lbb17:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $14, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
.Lbb18:
	cmpl $0, %eax
	jnz .Lbb27
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz .Lbb22
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb24
.Lbb22:
	movq $1, (%rax)
	movl $1, %eax
.Lbb24:
	cmpl $0, %eax
	jnz .Lbb26
	leaq str533(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str532(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb112
.Lbb26:
	movq 8(%rcx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq str529(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb112
.Lbb27:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb30
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb31
.Lbb30:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb31:
	cmpl $0, %ecx
	jnz .Lbb40
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb35
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb37
.Lbb35:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb37:
	cmpl $0, %ecx
	jnz .Lbb39
	movq %r12, %rsi
	leaq str502(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb39:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str499(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb40:
	movq 16(%rax), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_types_parse_type_args
	movq %r12, %rdx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb59
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq %rdx, %r15
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb44
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb45
.Lbb44:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $23, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb45:
	cmpl $0, %ecx
	jnz .Lbb54
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb49
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb51
.Lbb49:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb51:
	cmpl $0, %ecx
	jnz .Lbb53
	movq %r15, %rsi
	leaq str471(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
	jmp .Lbb58
.Lbb53:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r14
	callq compiler_lexer_token_to_string
	movq %r14, %rdx
	movq %rax, %rdi
	leaq str468(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
	jmp .Lbb58
.Lbb54:
	movq %rdi, %r14
	movq 16(%rax), %rdi
	callq compiler_parser_parse_types_parse_type
	movq %r15, %rdx
	movq %r14, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb56
	movq 8(%rax), %rsi
	movq 16(%rax), %r15
	callq compiler_parser_ast_TyFn
	movq %r15, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r14)
	jmp .Lbb57
.Lbb56:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r14)
.Lbb57:
	movq %rax, (%r13)
.Lbb58:
	movq %rax, (%r12)
	jmp .Lbb60
.Lbb59:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb60:
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb61:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz .Lbb64
	movq $0, (%rdi)
	movl $0, %ecx
	jmp .Lbb65
.Lbb64:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdi)
.Lbb65:
	cmpl $0, %ecx
	jnz .Lbb74
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb69
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb71
.Lbb69:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb71:
	cmpl $0, %ecx
	jnz .Lbb73
	leaq str324(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str323(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb73:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str320(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb74:
	movq 16(%rax), %rdi
	movq %rsi, %r12
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_types_parse_type_args
	movq %r12, %rsi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb76
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	callq compiler_parser_ast_TyTuple
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb77
.Lbb76:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb77:
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb78:
	movq 8(%rcx), %rax
	movq 16(%rcx), %r12
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq 8(%rax), %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb81
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb86
.Lbb81:
	movq 8(%r12), %rax
	movq 16(%r12), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz .Lbb84
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb85
.Lbb84:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $5, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb85:
	cmpq $26, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rcx)
.Lbb86:
	cmpl $0, %eax
	jnz .Lbb88
	movq %rdx, %r13
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_ast_TyName
	movq %rax, %rdi
	movq %r12, %rsi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb88:
	movq %rdx, %r13
	movq 16(%r12), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %r14
	movq (%rax), %rax
	movq 8(%rax), %rsi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r14), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb92
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb93
.Lbb92:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb93:
	cmpl $0, %eax
	jnz .Lbb95
	movq %rsi, %r15
	leaq str215(%rip), %rsi
	callq __rt_str_concat
	movq %r15, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rax, %rdi
	movq %rdx, %r15
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_ast_TyName
	movq %rax, %rdi
	movq %r14, %rsi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb100
.Lbb95:
	movq %r13, %r15
	movq %rdi, %r13
	movq 16(%r14), %rdi
	movq %rsi, %r14
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_types_parse_type_args
	movq %r14, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb98
	movq 8(%rax), %r14
	movq %r14, -8(%rbp)
	movq 16(%rax), %r14
	movq %r14, -16(%rbp)
	movq %rsi, %r14
	leaq str209(%rip), %rsi
	callq __rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	movq -8(%rbp), %r14
	callq __rt_str_concat
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rax, %rdi
	movq -16(%rbp), %r14
	callq compiler_parser_ast_TyName
	movq %r14, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r13)
	jmp .Lbb99
.Lbb98:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
.Lbb99:
	movq %rax, (%r12)
.Lbb100:
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb101:
	movq 8(%rcx), %rax
	movq 16(%rcx), %r14
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq 8(%rax), %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r14), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb104
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb105
.Lbb104:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb105:
	cmpl $0, %eax
	jnz .Lbb107
	movq %rdx, %r13
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_ast_TyName
	movq %rax, %rdi
	movq %r14, %rsi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb112
.Lbb107:
	movq %rdx, %r13
	movq %rdi, %r12
	movq 16(%r14), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_types_parse_type_args
	movq %r13, %rdx
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb110
	movq 8(%rax), %rsi
	movq 16(%rax), %r13
	callq compiler_parser_ast_TyName
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb111
.Lbb110:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb111:
	movq %rax, (%rbx)
.Lbb112:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_types_parse_type, @function
.size compiler_parser_parse_types_parse_type, .-compiler_parser_parse_types_parse_type
/* end function compiler_parser_parse_types_parse_type */

.text
.balign 16
.globl compiler_parser_parse_types_parse_type_list
compiler_parser_parse_types_parse_type_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_types_parse_type_args
	leave
	ret
.type compiler_parser_parse_types_parse_type_list, @function
.size compiler_parser_parse_types_parse_type_list, .-compiler_parser_parse_types_parse_type_list
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
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb117
	movl $0, %ecx
	jmp .Lbb118
.Lbb117:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb118:
	cmpl $0, %ecx
	jnz .Lbb143
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parse_types_parse_type
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb142
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb123
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb124
.Lbb123:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb124:
	cmpl $0, %ecx
	jnz .Lbb139
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb128
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb129
.Lbb128:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb129:
	cmpl $0, %ecx
	jnz .Lbb138
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb133
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb135
.Lbb133:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb135:
	cmpl $0, %ecx
	jnz .Lbb137
	leaq str678(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str677(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb141
.Lbb137:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %r13, %rdx
	movq %rax, %rdi
	leaq str674(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb141
.Lbb138:
	movq 16(%rax), %r13
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r15, 8(%rdi)
	movq %r14, 16(%rdi)
	callq donna_list_reverse
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb141
.Lbb139:
	movq %r15, %r14
	movq %rdi, %r13
	movq 16(%rax), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	callq compiler_parser_parse_types_parse_type_args
	movq %rax, (%r12)
.Lbb141:
	movq %rax, (%rbx)
	jmp .Lbb144
.Lbb142:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb144
.Lbb143:
	movq 16(%rax), %rbx
	callq donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb144:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_types_parse_type_args, @function
.size compiler_parser_parse_types_parse_type_args, .-compiler_parser_parse_types_parse_type_args
/* end function compiler_parser_parse_types_parse_type_args */

.text
.balign 16
__rt_str_concat:
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
	callq strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
