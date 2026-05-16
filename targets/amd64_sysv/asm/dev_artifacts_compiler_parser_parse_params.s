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
	pushq %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb2
	movl $0, %ecx
	jmp .Lbb3
.Lbb2:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb3:
	cmpl $0, %ecx
	jnz .Lbb5
	leaq donna_nil(%rip), %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_params_parse_param_list
	jmp .Lbb6
.Lbb5:
	movq 16(%rax), %rbx
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb6:
	popq %rbx
	leave
	ret
.type compiler_parser_parse_params_parse_params, @function
.size compiler_parser_parse_params_parse_params, .-compiler_parser_parse_params_parse_params
/* end function compiler_parser_parse_params_parse_params */

.text
.balign 16
compiler_parser_parse_params_parse_param_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	callq compiler_parser_parse_params_parse_param
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb29
	movq 8(%rax), %r14
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb11
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb12
.Lbb11:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb12:
	cmpl $0, %ecx
	jnz .Lbb27
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb16
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb17
.Lbb16:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb17:
	cmpl $0, %ecx
	jnz .Lbb26
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb21
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb23
.Lbb21:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb23:
	cmpl $0, %ecx
	jnz .Lbb25
	leaq str149(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq str148(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb30
.Lbb25:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq str141(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb30
.Lbb26:
	movq %r12, %r13
	movq 16(%rax), %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %r13, 16(%rdi)
	callq donna_list_reverse
	movq %rax, %r13
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb30
.Lbb27:
	movq %r14, %r13
	movq 16(%rax), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq compiler_parser_parse_params_parse_param_list
	movq %rax, (%rbx)
	jmp .Lbb30
.Lbb29:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb30:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_params_parse_param_list, @function
.size compiler_parser_parse_params_parse_param_list, .-compiler_parser_parse_params_parse_param_list
/* end function compiler_parser_parse_params_parse_param_list */

.text
.balign 16
compiler_parser_parse_params_parse_param:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rbx
	movq (%rbx), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb33
	movl $0, %ecx
	jmp .Lbb34
.Lbb33:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb34:
	cmpl $0, %ecx
	jnz .Lbb59
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb38
	movq $0, (%r12)
	movl $0, %eax
	jmp .Lbb43
.Lbb38:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz .Lbb41
	movq $0, (%r13)
	movl $0, %eax
	jmp .Lbb42
.Lbb41:
	movq 8(%rax), %rdi
	leaq str211(%rip), %rsi
	callq strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r14, %rax
	movq %rax, (%r13)
.Lbb42:
	andq $1, %rax
	movq %rax, (%r12)
.Lbb43:
	cmpl $0, %eax
	jnz .Lbb58
	movq (%rbx), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz .Lbb47
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb48
.Lbb47:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb48:
	cmpl $0, %eax
	jnz .Lbb57
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb52
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb54
.Lbb52:
	movq $1, (%rax)
	movl $1, %eax
.Lbb54:
	cmpl $0, %eax
	jnz .Lbb56
	leaq str296(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq str295(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb60
.Lbb56:
	movq 8(%rbx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str288(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb60
.Lbb57:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rsi
	movq 8(%rax), %r12
	movq %rdi, %rbx
	leaq str262(%rip), %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq compiler_parser_parse_params_parse_param_with_name
	jmp .Lbb60
.Lbb58:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rdi
	movq 8(%rax), %rsi
	leaq str231(%rip), %rdx
	callq compiler_parser_parse_params_parse_param_with_name
	jmp .Lbb60
.Lbb59:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rdx
	movq 8(%rax), %rsi
	callq compiler_parser_parse_params_parse_param_with_name
.Lbb60:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_params_parse_param, @function
.size compiler_parser_parse_params_parse_param, .-compiler_parser_parse_params_parse_param
/* end function compiler_parser_parse_params_parse_param */

.text
.balign 16
compiler_parser_parse_params_parse_param_with_name:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r15
	movq %rsi, %r13
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb63
	movl $0, %eax
	jmp .Lbb64
.Lbb63:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $24, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb64:
	cmpl $0, %eax
	jnz .Lbb66
	movq %rdi, %rbx
	movl $32, %edi
	callq malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $0, (%rbx)
	movq %r15, 8(%rbx)
	leaq donna_option_None(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r12, %rdi
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	jmp .Lbb69
.Lbb66:
	movq 16(%rdi), %rdi
	callq compiler_parser_parse_types_parse_type
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb68
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movl $32, %edi
	callq malloc
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rax, %r13
	movq $0, (%r13)
	movq %rdx, 8(%r13)
	movq %r14, 16(%r13)
	movq %rsi, 24(%r13)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb69
.Lbb68:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
.Lbb69:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_params_parse_param_with_name, @function
.size compiler_parser_parse_params_parse_param_with_name, .-compiler_parser_parse_params_parse_param_with_name
/* end function compiler_parser_parse_params_parse_param_with_name */

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
