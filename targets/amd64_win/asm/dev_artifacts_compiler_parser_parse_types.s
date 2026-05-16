.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str221:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str352:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str359:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str360:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str514:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str521:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str552:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str559:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str589:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str596:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str597:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str746:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str753:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str754:
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
	jnz Lbb99
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
	jnz Lbb78
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
	leaq str597(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str596(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb109
Lbb26:
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
	leaq str589(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb109
Lbb27:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r15
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz Lbb30
	movq $0, (%rdi)
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
	movq %rcx, (%rdi)
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
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str559(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r15, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb109
Lbb39:
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
	leaq str552(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb109
Lbb40:
	movq 16(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_types_parse_type_args
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
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r8d
	jnz Lbb44
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb45
Lbb44:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $23, %r8
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
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $7, (%r12)
	leaq str521(%rip), %rax
	movq %rax, 8(%r12)
	movq %r15, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb58
Lbb53:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %r13
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq str514(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb58
Lbb54:
	movq %rcx, %r12
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type
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
	movq 8(%rax), %r13
	movq 16(%rax), %r14
	movq %r14, -16(%rbp)
	subq $32, %rsp
	movq %rcx, %r14
	movl $32, %ecx
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq %r13, %rax
	movq -16(%rbp), %r13
	subq $-32, %rsp
	movq $2, (%r14)
	movq %rcx, 8(%r14)
	movq %rax, 16(%r14)
	movq %r15, 24(%r14)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb57
Lbb56:
	movq 8(%rax), %r13
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb57:
	movq %rax, (%rbx)
Lbb58:
	movq %rax, (%rdi)
	jmp Lbb60
Lbb59:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb60:
	movq %rax, (%rsi)
	jmp Lbb109
Lbb61:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r13
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz Lbb64
	movq $0, (%rdi)
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
	movq %rcx, (%rdi)
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
	leaq str360(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str359(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb109
Lbb73:
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
	leaq str352(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb109
Lbb74:
	movq 16(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_types_parse_type_args
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb76
	movq 8(%rax), %r14
	movq 16(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb77
Lbb76:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb77:
	movq %rax, (%rsi)
	jmp Lbb109
Lbb78:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %r14
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb81
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb86
Lbb81:
	movq 8(%rdi), %rax
	movq 16(%rdi), %r8
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r8), %r9
	cmpq $1, %r9
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz Lbb84
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb85
Lbb84:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $5, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb85:
	cmpq $26, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %r8, %rax
	movq %rax, (%rdx)
Lbb86:
	cmpl $0, %eax
	jnz Lbb88
	subq $32, %rsp
	movq %rcx, %rbx
	movl $32, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $0, (%rbx)
	movq %rcx, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r14, 24(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb109
Lbb88:
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
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %eax
	jnz Lbb91
	movq $0, (%r8)
	movl $0, %eax
	jmp Lbb92
Lbb91:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%r8)
Lbb92:
	cmpl $0, %eax
	jnz Lbb94
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str232(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $0, (%rbx)
	movq %r13, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r14, 24(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb98
Lbb94:
	movq %rcx, %rbx
	movq 16(%r12), %rcx
	subq $32, %rsp
	movq %rdx, %r12
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_types_parse_type_args
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb96
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	subq $32, %rsp
	movq %rdx, %r13
	leaq str221(%rip), %rdx
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	xchgq %rax, %r13
	subq $-32, %rsp
	movq $0, (%r13)
	movq %rax, 8(%r13)
	movq %r15, 16(%r13)
	movq %r14, 24(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb97
Lbb96:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb97:
	movq %rax, (%rdi)
Lbb98:
	movq %rax, (%rsi)
	jmp Lbb109
Lbb99:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %r15
	movq 8(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb102
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb103
Lbb102:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb103:
	cmpl $0, %eax
	jnz Lbb105
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $0, (%rbx)
	movq %r15, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r13, 24(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb109
Lbb105:
	movq 16(%rdi), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_types_parse_type_args
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb107
	movq 8(%rax), %r14
	movq 16(%rax), %rbx
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $0, (%r12)
	movq %r15, 8(%r12)
	movq %r14, 16(%r12)
	movq %r13, 24(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb108
Lbb107:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb108:
	movq %rax, (%rsi)
Lbb109:
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
	jnz Lbb114
	movl $0, %edx
	jmp Lbb115
Lbb114:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb115:
	cmpl $0, %edx
	jnz Lbb140
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
	jnz Lbb139
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
	jnz Lbb120
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb121
Lbb120:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb121:
	cmpl $0, %r8d
	jnz Lbb136
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rdx
	jz Lbb125
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb126
Lbb125:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $31, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb126:
	cmpl $0, %r8d
	jnz Lbb135
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb130
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb132
Lbb130:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb132:
	cmpl $0, %ecx
	jnz Lbb134
	subq $32, %rsp
	leaq str754(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	leaq str753(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb138
Lbb134:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str746(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb138
Lbb135:
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
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb138
Lbb136:
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
Lbb138:
	movq %rax, (%rsi)
	jmp Lbb141
Lbb139:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb141
Lbb140:
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb141:
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

