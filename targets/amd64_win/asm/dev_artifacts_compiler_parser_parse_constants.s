.data
.balign 8
str144:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str151:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str152:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str208:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
str242:
	.ascii "constant name"
	.byte 0
/* end data */

.data
.balign 8
str271:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
str278:
	.ascii "const"
	.byte 0
/* end data */

.data
.balign 8
str279:
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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq compiler_parser_parse_constants_parse_pub
	movq %rax, %rcx
	subq $-32, %rsp
	movq (%rcx), %rax
	movq 8(%rcx), %rcx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb2
	movl $0, %esi
	jmp Lbb7
Lbb2:
	movq 8(%rcx), %rsi
	movq 16(%rcx), %rdi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb5
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb6
Lbb5:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $4, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb6:
	cmpq $11, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %rdi, %rsi
Lbb7:
	cmpl $0, %esi
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
	leaq str279(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str278(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb50
Lbb30:
	movq 8(%rcx), %rax
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
	leaq str271(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb50
Lbb31:
	movq 8(%rcx), %rax
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str242(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb50
Lbb32:
	movq 16(%rcx), %rax
	movq 8(%rax), %rax
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
	leaq str208(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb50
Lbb33:
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rcx
	movq 8(%rdx), %r13
	movq %rax, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_parser_parse_constants_parse_optional_annotation
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %r15
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
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
	leaq str152(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str151(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb50
Lbb45:
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
	leaq str144(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb50
Lbb46:
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb48
	movq 8(%rax), %r14
	movq %rcx, %r12
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r12, %rcx
	movq %rax, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $48, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	subq $-32, %rsp
	movq $0, (%r12)
	movq %rcx, 8(%r12)
	movq %rax, 16(%r12)
	movq %r15, 24(%r12)
	movq %r14, 32(%r12)
	movq %r13, 40(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb49
Lbb48:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb49:
	movq %rax, (%rsi)
Lbb50:
	movq %rbp, %rsp
	subq $80, %rsp
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
	pushq %rbx
	pushq %r12
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
	movq 8(%rax), %r12
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r12, 8(%rbx)
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
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_constants_parse_optional_annotation */

