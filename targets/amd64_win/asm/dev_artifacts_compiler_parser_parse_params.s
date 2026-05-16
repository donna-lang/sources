.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str141:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str148:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str149:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str211:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str231:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str262:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str288:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
str295:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
str296:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_params_parse_params
compiler_parser_parse_params_parse_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb2
	movl $0, %ecx
	jmp Lbb3
Lbb2:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb3:
	cmpl $0, %ecx
	jnz Lbb5
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	movq %rax, %rcx
	callq compiler_parser_parse_params_parse_param_list
	subq $-32, %rsp
	jmp Lbb6
Lbb5:
	movq 16(%rax), %rsi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rsi, 16(%rax)
Lbb6:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_params_parse_params */

.text
.balign 16
compiler_parser_parse_params_parse_param_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	callq compiler_parser_parse_params_parse_param
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb29
	movq 8(%rax), %r12
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb11
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb12
Lbb11:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb12:
	cmpl $0, %ecx
	jnz Lbb27
	subq $16, %rsp
	movq %rsp, %r8
	cmpq $1, %rdx
	jz Lbb16
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb17
Lbb16:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb17:
	cmpl $0, %ecx
	jnz Lbb26
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb21
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb23
Lbb21:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb23:
	cmpl $0, %ecx
	jnz Lbb25
	subq $32, %rsp
	leaq str149(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str148(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb30
Lbb25:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $6, (%rdi)
	movq %r12, 8(%rdi)
	leaq str141(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb30
Lbb26:
	movq %rdi, %rbx
	movq 16(%rax), %rdi
	subq $32, %rsp
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
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb30
Lbb27:
	movq %r12, %rbx
	movq 16(%rax), %rcx
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
	callq compiler_parser_parse_params_parse_param_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb30
Lbb29:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb30:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_params_parse_param_list */

.text
.balign 16
compiler_parser_parse_params_parse_param:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rsi
	subq $-32, %rsp
	movq (%rsi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb33
	movl $0, %ecx
	jmp Lbb34
Lbb33:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb34:
	cmpl $0, %ecx
	jnz Lbb59
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb38
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb43
Lbb38:
	movq 8(%rsi), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz Lbb41
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb42
Lbb41:
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str211(%rip), %rdx
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r12, %rax
	movq %rax, (%rbx)
Lbb42:
	andq $1, %rax
	movq %rax, (%rdi)
Lbb43:
	cmpl $0, %eax
	jnz Lbb58
	movq (%rsi), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb47
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb48
Lbb47:
	movq 8(%rsi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb48:
	cmpl $0, %eax
	jnz Lbb57
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb52
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb54
Lbb52:
	movq $1, (%rax)
	movl $1, %eax
Lbb54:
	cmpl $0, %eax
	jnz Lbb56
	subq $32, %rsp
	leaq str296(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str295(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb60
Lbb56:
	movq 8(%rsi), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $6, (%rsi)
	movq %rbx, 8(%rsi)
	leaq str288(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb60
Lbb57:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rcx
	movq (%rax), %rdx
	movq 8(%rdx), %rdx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str262(%rip), %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_params_parse_param_with_name
	subq $-32, %rsp
	jmp Lbb60
Lbb58:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str231(%rip), %r8
	callq compiler_parser_parse_params_parse_param_with_name
	subq $-32, %rsp
	jmp Lbb60
Lbb59:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rcx
	movq (%rax), %rdx
	movq 8(%rdx), %r8
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_params_parse_param_with_name
	subq $-32, %rsp
Lbb60:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_params_parse_param */

.text
.balign 16
compiler_parser_parse_params_parse_param_with_name:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %r13
	movq %rdx, %rbx
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb63
	movl $0, %eax
	jmp Lbb64
Lbb63:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $24, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb64:
	cmpl $0, %eax
	jnz Lbb66
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $0, (%rsi)
	movq %r13, 8(%rsi)
	leaq donna_option_None(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rbx, 24(%rsi)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb69
Lbb66:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb68
	movq 8(%rax), %r14
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r14, 8(%r12)
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %r13, %r8
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $0, (%rbx)
	movq %r8, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %rdx, 24(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb69
Lbb68:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb69:
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
/* end function compiler_parser_parse_params_parse_param_with_name */

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

