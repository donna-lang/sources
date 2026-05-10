.data
.balign 8
str136:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str139:
	.ascii "="
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
str193:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
str249:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
str252:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_constants_parse_const
compiler_parser_parse_constants_parse_const:
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
	callq compiler_parser_parse_constants_parse_pub
	subq $-32, %rsp
	movq (%rax), %rdx
	movq 8(%rax), %rcx
	movq %rdx, %rdi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb2
	movl $0, %eax
	jmp Lbb7
Lbb2:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
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
	cmpq $4, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
Lbb6:
	cmpq $11, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
Lbb7:
	cmpl $0, %eax
	jnz Lbb33
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb11
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb17
Lbb11:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb14
	movq $0, (%rdi)
	movl $0, %edi
	jmp Lbb16
Lbb14:
	movq $1, (%rdi)
	movl $1, %edi
Lbb16:
	cmpq $11, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb17:
	cmpl $0, %eax
	jnz Lbb32
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb21
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb22
Lbb21:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $11, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb22:
	cmpl $0, %eax
	jnz Lbb31
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb26
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb28
Lbb26:
	movq $1, (%rax)
	movl $1, %eax
Lbb28:
	cmpl $0, %eax
	jnz Lbb30
	subq $32, %rsp
	leaq str253(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str252(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb50
Lbb30:
	movq 8(%rcx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str249(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb50
Lbb31:
	movq 8(%rcx), %rax
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str223(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb50
Lbb32:
	movq 16(%rcx), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str193(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb50
Lbb33:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_parser_parse_constants_parse_optional_annotation
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %r8
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	movq %r8, %r13
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edi
	jnz Lbb36
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb37
Lbb36:
	movq 8(%rax), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $28, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb37:
	cmpl $0, %edi
	jnz Lbb46
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb41
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb43
Lbb41:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb43:
	cmpl $0, %ecx
	jnz Lbb45
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
	jmp Lbb50
Lbb45:
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
	jmp Lbb50
Lbb46:
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %r13, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq %r8, %r14
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb48
	movq 8(%rax), %r15
	movq %rcx, %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $48, %rsp
	movq %rsp, %rax
	movq %r12, 32(%rax)
	callq compiler_parser_ast_Const
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
/* end function compiler_parser_parse_constants_parse_const */

.text
.balign 16
compiler_parser_parse_constants_parse_pub:
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
/* end function compiler_parser_parse_constants_parse_pub */

.text
.balign 16
compiler_parser_parse_constants_parse_optional_annotation:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
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
	cmpq $24, %rax
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
	leaq donna_option_None(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb66
Lbb63:
	movq %rcx, %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb65
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq donna_option_Some
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb66
Lbb65:
	subq $32, %rsp
	movq %rcx, %rdi
	movl $16, %ecx
	callq malloc
	movq %rdi, %rcx
	subq $-32, %rsp
	leaq donna_option_None(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
	movq %rax, (%rsi)
Lbb66:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_constants_parse_optional_annotation */

