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
	subq $72, %rsp
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
	jnz .Lbb103
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
	jnz .Lbb80
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
	jnz .Lbb63
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
	leaq str597(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq str596(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb113
.Lbb26:
	movq 8(%rcx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str589(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb113
.Lbb27:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r12
	subq $16, %rsp
	movq %rsp, %rbx
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
	movl $24, %edi
	callq malloc
	xchgq %rax, %r12
	movq $7, (%r12)
	movq %rax, %r14
	leaq str559(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb39:
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
	leaq str552(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb40:
	movq %r12, %r14
	movq 16(%rax), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_types_parse_type_args
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb61
	movq 8(%rax), %rdx
	movq %rdx, -24(%rbp)
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb45
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb46
.Lbb45:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $23, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb46:
	cmpl $0, %ecx
	jnz .Lbb55
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb50
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb52
.Lbb50:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb52:
	cmpl $0, %ecx
	jnz .Lbb54
	movl $24, %edi
	callq malloc
	xchgq %rax, %r14
	movq $7, (%r14)
	movq %rax, %r15
	leaq str521(%rip), %rax
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
	jmp .Lbb60
.Lbb54:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r15
	callq compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	xchgq %rax, %r14
	movq $6, (%r14)
	movq %rax, 8(%r14)
	leaq str514(%rip), %rax
	movq %rax, 16(%r14)
	movq %r15, 24(%r14)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
	jmp .Lbb60
.Lbb55:
	movq %r14, %r15
	movq 16(%rax), %rdi
	callq compiler_parser_parse_types_parse_type
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb58
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 16(%rax), %rcx
	movq %rcx, -32(%rbp)
	movl $32, %edi
	callq malloc
	xchgq %rax, %r15
	movq -16(%rbp), %rcx
	movq -24(%rbp), %rdx
	movq $2, (%r15)
	movq %rdx, 8(%r15)
	movq %rcx, 16(%r15)
	movq %rax, 24(%r15)
	movl $24, %edi
	callq malloc
	movq -32(%rbp), %rcx
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %rcx, 16(%rax)
	movq %rax, (%r14)
	jmp .Lbb59
.Lbb58:
	movq 8(%rax), %r15
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
.Lbb59:
	movq %rax, (%r13)
.Lbb60:
	movq %rax, (%r12)
	jmp .Lbb62
.Lbb61:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb62:
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb63:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb66
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb67
.Lbb66:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb67:
	cmpl $0, %ecx
	jnz .Lbb76
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb71
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb73
.Lbb71:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb73:
	cmpl $0, %ecx
	jnz .Lbb75
	leaq str360(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq str359(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb75:
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
	leaq str352(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb76:
	movq 16(%rax), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_types_parse_type_args
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb78
	movq 8(%rax), %r14
	movq 16(%rax), %r13
	movl $24, %edi
	callq malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp .Lbb79
.Lbb78:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb79:
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb80:
	movq 8(%rcx), %rax
	movq 16(%rcx), %r12
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb83
	movq $0, (%rcx)
	movq %rax, %r13
	movl $0, %eax
	jmp .Lbb88
.Lbb83:
	movq 8(%r12), %rsi
	movq 16(%r12), %rdx
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rdx), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz .Lbb86
	movq $0, (%r8)
	movl $0, %edx
	jmp .Lbb87
.Lbb86:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $5, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
.Lbb87:
	cmpq $26, %rsi
	movq %rax, %r13
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb88:
	cmpl $0, %eax
	jnz .Lbb90
	movq %rdi, %r14
	movl $32, %edi
	callq malloc
	movq %r14, %rdi
	xchgq %rax, %r13
	movq $0, (%r13)
	movq %rdi, 8(%r13)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%r13)
	movq %rax, 24(%r13)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb90:
	movq %r13, %rax
	movq 16(%r12), %rdx
	movq 8(%rdx), %rcx
	movq 16(%rdx), %r15
	movq (%rcx), %rcx
	movq 8(%rcx), %rsi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r15), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb94
	movq $0, (%rcx)
	movq %rax, %r13
	movl $0, %eax
	jmp .Lbb95
.Lbb94:
	movq 8(%r15), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $30, %rdx
	movq %rax, %r13
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb95:
	cmpl $0, %eax
	jnz .Lbb97
	movq %rsi, %r14
	leaq str232(%rip), %rsi
	callq __rt_str_concat
	movq %r14, %rsi
	movq %rax, %rdi
	callq __rt_str_concat
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	xchgq %rax, %r13
	movq $0, (%r13)
	movq %r14, 8(%r13)
	movq %rax, %r14
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r15, 16(%rax)
	movq %rax, (%r12)
	jmp .Lbb102
.Lbb97:
	movq %r13, %r14
	movq %rdi, %r13
	movq 16(%r15), %rdi
	movq %rsi, %r15
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_types_parse_type_args
	movq %r15, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb100
	movq 8(%rax), %r15
	movq %r15, -40(%rbp)
	movq 16(%rax), %r15
	movq %r15, -56(%rbp)
	movq %rsi, %r15
	leaq str221(%rip), %rsi
	callq __rt_str_concat
	movq %r15, %rsi
	movq %rax, %rdi
	movq -40(%rbp), %r15
	callq __rt_str_concat
	movq %rax, -48(%rbp)
	movl $32, %edi
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %r14, %rax
	movq -48(%rbp), %rdx
	movq -56(%rbp), %r14
	movq $0, (%r15)
	movq %rdx, 8(%r15)
	movq %rcx, 16(%r15)
	movq %rax, 24(%r15)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp .Lbb101
.Lbb100:
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
.Lbb101:
	movq %rax, (%r12)
.Lbb102:
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb103:
	movq 8(%rcx), %rax
	movq 16(%rcx), %r13
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rcx, %r12
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb106
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb107
.Lbb106:
	movq 8(%r13), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb107:
	cmpl $0, %eax
	jnz .Lbb109
	movl $32, %edi
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq $0, (%r12)
	movq %rcx, 8(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%r12)
	movq %r15, 24(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb113
.Lbb109:
	movq 16(%r13), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_types_parse_type_args
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r14
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb111
	movq 8(%rax), %r13
	movq 16(%rax), %rax
	movq %rax, -64(%rbp)
	movl $32, %edi
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq %r13, %rax
	movq -64(%rbp), %r13
	movq $0, (%r14)
	movq %rcx, 8(%r14)
	movq %rax, 16(%r14)
	movq %r15, 24(%r14)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp .Lbb112
.Lbb111:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb112:
	movq %rax, (%rbx)
.Lbb113:
	movq %rbp, %rsp
	subq $112, %rsp
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
	jnz .Lbb118
	movl $0, %ecx
	jmp .Lbb119
.Lbb118:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb119:
	cmpl $0, %ecx
	jnz .Lbb144
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
	jnz .Lbb143
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
	jnz .Lbb124
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb125
.Lbb124:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb125:
	cmpl $0, %ecx
	jnz .Lbb140
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb129
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb130
.Lbb129:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb130:
	cmpl $0, %ecx
	jnz .Lbb139
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb134
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb136
.Lbb134:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb136:
	cmpl $0, %ecx
	jnz .Lbb138
	leaq str754(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $7, (%r13)
	leaq str753(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb142
.Lbb138:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r14
	callq compiler_lexer_token_to_string
	movq %rax, %r15
	movl $32, %edi
	callq malloc
	movq %rax, %r13
	movq $6, (%r13)
	movq %r15, 8(%r13)
	leaq str746(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb142
.Lbb139:
	movq 16(%rax), %r13
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r15, 8(%rdi)
	movq %r14, 16(%rdi)
	callq donna_list_reverse
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp .Lbb142
.Lbb140:
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
.Lbb142:
	movq %rax, (%rbx)
	jmp .Lbb145
.Lbb143:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb145
.Lbb144:
	movq 16(%rax), %rbx
	callq donna_list_reverse
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb145:
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
