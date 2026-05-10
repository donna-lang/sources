.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str136:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str140:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str199:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str219:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str250:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str276:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
_str279:
	.ascii "parameter name"
	.byte 0
/* end data */

.data
.balign 8
_str280:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_parser_parse_params_parse_params
_compiler_parser_parse_params_parse_params:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _compiler_parser_parse_result_skip_newlines
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
	leaq _donna_nil(%rip), %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_params_parse_param_list
	jmp Lbb6
Lbb5:
	movq 16(%rax), %rsi
	leaq _donna_nil(%rip), %rdi
	callq _compiler_parser_parse_result_POk
Lbb6:
	leave
	ret
/* end function compiler_parser_parse_params_parse_params */

.text
.balign 16
_compiler_parser_parse_params_parse_param_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	callq _compiler_parser_parse_params_parse_param
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb29
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
	jnz Lbb11
	movq $0, (%rsi)
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
	movq %rcx, (%rsi)
Lbb12:
	cmpl $0, %ecx
	jnz Lbb27
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb16
	movq $0, (%rsi)
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
	movq %rcx, (%rsi)
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
	leaq _str140(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str139(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb30
Lbb25:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq _compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq _str136(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb30
Lbb26:
	movq %r12, %r13
	movq 16(%rax), %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r14, 8(%rdi)
	movq %r13, 16(%rdi)
	callq _donna_list_reverse
	movq %r12, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp Lbb30
Lbb27:
	movq %r14, %r13
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _compiler_parser_parse_params_parse_param_list
	movq %rax, (%rbx)
	jmp Lbb30
Lbb29:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
Lbb30:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_params_parse_param_list */

.text
.balign 16
_compiler_parser_parse_params_parse_param:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rbx
	movq (%rbx), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb33
	movl $0, %ecx
	jmp Lbb34
Lbb33:
	movq 8(%rbx), %rcx
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
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb38
	movq $0, (%r12)
	movl $0, %eax
	jmp Lbb43
Lbb38:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz Lbb41
	movq $0, (%r13)
	movl $0, %eax
	jmp Lbb42
Lbb41:
	movq 8(%rax), %rdi
	leaq _str199(%rip), %rsi
	callq _strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r14, %rax
	movq %rax, (%r13)
Lbb42:
	andq $1, %rax
	movq %rax, (%r12)
Lbb43:
	cmpl $0, %eax
	jnz Lbb58
	movq (%rbx), %rcx
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
	movq 8(%rbx), %rax
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
	leaq _str280(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str279(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb60
Lbb56:
	movq 8(%rbx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str276(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb60
Lbb57:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rsi
	movq 8(%rax), %r12
	movq %rdi, %rbx
	leaq _str250(%rip), %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq _compiler_parser_parse_params_parse_param_with_name
	jmp Lbb60
Lbb58:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rdi
	movq 8(%rax), %rsi
	leaq _str219(%rip), %rdx
	callq _compiler_parser_parse_params_parse_param_with_name
	jmp Lbb60
Lbb59:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rdx
	movq 8(%rax), %rsi
	callq _compiler_parser_parse_params_parse_param_with_name
Lbb60:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_params_parse_param */

.text
.balign 16
_compiler_parser_parse_params_parse_param_with_name:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdi, %rbx
	movq %rdx, %rdi
	movq %rsi, %rdx
	movq (%rbx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb63
	movl $0, %eax
	jmp Lbb64
Lbb63:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $24, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb64:
	cmpl $0, %eax
	jnz Lbb66
	movq %rdx, %r14
	leaq _donna_option_None(%rip), %rsi
	callq _compiler_parser_ast_Param
	movq %rax, %rdi
	movq %rbx, %rsi
	callq _compiler_parser_parse_result_POk
	jmp Lbb70
Lbb66:
	movq %rdx, %r14
	xchgq %rdi, %rbx
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_types_parse_type
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb69
	movq %rdi, %r13
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq _donna_option_Some
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	callq _compiler_parser_ast_Param
	movq %r12, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp Lbb70
Lbb69:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
Lbb70:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_params_parse_param_with_name */

.text
.balign 16
___rt_str_concat:
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
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

