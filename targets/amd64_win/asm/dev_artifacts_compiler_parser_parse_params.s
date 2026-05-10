.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str136:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str139:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str140:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str219:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str250:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str276:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
str279:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
str280:
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
	movq 16(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %rcx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb6:
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
	leaq str140(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str139(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb30
Lbb25:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str136(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
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
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
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
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
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
	leaq str199(%rip), %rdx
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
	leaq str280(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str279(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb60
Lbb56:
	movq 8(%rsi), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str276(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb60
Lbb57:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rcx
	movq (%rax), %rdx
	movq 8(%rdx), %rdx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str250(%rip), %rcx
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
	leaq str219(%rip), %r8
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
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	movq %r8, %rcx
	movq %rdx, %r8
	movq (%rsi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb63
	movl $0, %eax
	jmp Lbb64
Lbb63:
	movq 8(%rsi), %rax
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
	movq %r8, %r12
	leaq donna_option_None(%rip), %rdx
	callq compiler_parser_ast_Param
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb70
Lbb66:
	movq %r8, %r12
	xchgq %rcx, %rsi
	movq 16(%rcx), %rcx
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
	jnz Lbb69
	movq %rcx, %rbx
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq donna_option_Some
	movq %r12, %r8
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_Param
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb70
Lbb69:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb70:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
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

