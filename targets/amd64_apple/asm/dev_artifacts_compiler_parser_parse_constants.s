.data
.balign 8
_str136:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.ascii "="
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
_str193:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
_str223:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
_str249:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
_str252:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_parser_parse_constants_parse_const
_compiler_parser_parse_constants_parse_const:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq _compiler_parser_parse_constants_parse_pub
	movq (%rax), %rsi
	movq %rsi, -8(%rbp)
	movq 8(%rax), %rcx
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
	movq (%rsi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb5
	movq $0, (%rdi)
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
	movq %rsi, (%rdi)
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
	leaq _str253(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str252(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb50
Lbb30:
	movq 8(%rcx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str249(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb50
Lbb31:
	movq 8(%rcx), %rax
	movq 8(%rax), %rsi
	leaq _str223(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb50
Lbb32:
	movq 16(%rcx), %rax
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str193(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb50
Lbb33:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r8
	movq %r8, -16(%rbp)
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq 8(%rax), %rbx
	callq _compiler_parser_parse_constants_parse_optional_annotation
	movq %rbx, %rdi
	movq (%rax), %rdx
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz Lbb36
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb37
Lbb36:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $28, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb37:
	cmpl $0, %ecx
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
	leaq _str140(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str139(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb50
Lbb45:
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
	jmp Lbb50
Lbb46:
	movq %rdi, %r12
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb48
	movq 8(%rax), %r15
	movq %rdi, %r13
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	movq -16(%rbp), %r8
	movq %rsi, %r13
	movq -8(%rbp), %rsi
	callq _compiler_parser_ast_Const
	movq %r13, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp Lbb49
Lbb48:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r12)
Lbb49:
	movq %rax, (%rbx)
Lbb50:
	movq %rbp, %rsp
	subq $64, %rsp
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
_compiler_parser_parse_constants_parse_pub:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb53
	movl $0, %eax
	jmp Lbb54
Lbb53:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $20, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb54:
	cmpl $0, %eax
	jnz Lbb56
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	jmp Lbb57
Lbb56:
	movq 16(%rdi), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb57:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_constants_parse_pub */

.text
.balign 16
_compiler_parser_parse_constants_parse_optional_annotation:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb60
	movl $0, %eax
	jmp Lbb61
Lbb60:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $24, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb61:
	cmpl $0, %eax
	jnz Lbb63
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	leaq _donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %rdi, 8(%rax)
	jmp Lbb66
Lbb63:
	movq %rdi, %rbx
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_types_parse_type
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb65
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq _donna_option_Some
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb66
Lbb65:
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, %rdi
	leaq _donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rbx)
Lbb66:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_constants_parse_optional_annotation */

