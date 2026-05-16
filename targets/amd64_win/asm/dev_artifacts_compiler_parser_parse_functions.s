.data
.balign 8
str187:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str302:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
str336:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
str365:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str372:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str373:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str711:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str718:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str748:
	.ascii "string literal in @external("
	.byte 34
	.ascii "lang"
	.byte 34
	.ascii ", "
	.byte 34
	.ascii "symbol"
	.byte 34
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str755:
	.ascii "@external("
	.byte 34
	.ascii "lang"
	.byte 34
	.ascii ", "
	.byte 34
	.ascii "symbol"
	.byte 34
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str810:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
str844:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
str873:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
str880:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
str881:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_functions_parse_function
compiler_parser_parse_functions_parse_function:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq compiler_parser_parse_functions_parse_pub
	subq $-32, %rsp
	movq (%rax), %rdx
	movq 8(%rax), %rax
	movq %rdx, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb2
	movl $0, %ecx
	jmp Lbb11
Lbb2:
	movq 8(%rax), %rcx
	movq 16(%rax), %r9
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%r9), %rdi
	cmpq $1, %rdi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edi
	jnz Lbb5
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb10
Lbb5:
	movq 8(%r9), %rdi
	movq 16(%r9), %r9
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	movq (%r9), %r10
	cmpq $1, %r10
	setz %r11b
	movzbq %r11b, %r11
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r11d
	jnz Lbb8
	movq $0, (%r10)
	movl $0, %r9d
	jmp Lbb9
Lbb8:
	movq 8(%r9), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $30, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
Lbb9:
	cmpq $4, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	andq %r9, %rdi
	movq %rdi, (%r8)
Lbb10:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
Lbb11:
	cmpl $0, %ecx
	jnz Lbb47
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb15
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb20
Lbb15:
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb18
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb19
Lbb18:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $5, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb19:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
Lbb20:
	cmpl $0, %ecx
	jnz Lbb46
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb24
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb30
Lbb24:
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rdi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb27
	movq $0, (%rdi)
	movl $0, %edi
	jmp Lbb29
Lbb27:
	movq $1, (%rdi)
	movl $1, %edi
Lbb29:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
Lbb30:
	cmpl $0, %ecx
	jnz Lbb45
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb34
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb35
Lbb34:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb35:
	cmpl $0, %ecx
	jnz Lbb44
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb39
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb41
Lbb39:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb41:
	cmpl $0, %ecx
	jnz Lbb43
	subq $32, %rsp
	leaq str373(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str372(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb69
Lbb43:
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
	leaq str365(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb69
Lbb44:
	movq 8(%rax), %rax
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str336(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb69
Lbb45:
	movq 16(%rax), %rax
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
	leaq str302(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb69
Lbb46:
	movq 16(%rax), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rcx), %rbx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $11, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb69
Lbb47:
	movq %rsi, %rdx
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r12
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq %rdx, %rdi
	movq (%rcx), %rdx
	movq %r12, %rbx
	movq 8(%rdx), %r12
	movq 8(%rcx), %r14
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_params_parse_params
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb68
	movq 8(%rax), %r15
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_functions_parse_optional_return
	movq %r12, %r8
	movq %rdi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	movq %rcx, -32(%rbp)
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdx, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	movq %r8, %r13
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb52
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb53
Lbb52:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $24, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb53:
	cmpl $0, %ecx
	jnz Lbb63
	movq %rbx, %r12
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb58
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb60
Lbb58:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb60:
	cmpl $0, %ecx
	jnz Lbb62
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	leaq str187(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb67
Lbb62:
	movq 8(%rax), %rax
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $9, (%rbx)
	movq %r12, 8(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb67
Lbb63:
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_block
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb65
	movq 8(%rax), %rcx
	movq %rcx, -24(%rbp)
	movq 16(%rax), %rax
	movq %rax, -16(%rbp)
	subq $32, %rsp
	movl $56, %ecx
	callq malloc
	movq %r13, %r8
	movq %r12, %rdx
	movq %rax, %r13
	movq -16(%rbp), %r12
	movq -24(%rbp), %rax
	movq -32(%rbp), %rcx
	subq $-32, %rsp
	movq $0, (%r13)
	movq %r8, 8(%r13)
	movq %rdx, 16(%r13)
	movq %r15, 24(%r13)
	movq %rcx, 32(%r13)
	movq %rax, 40(%r13)
	movq %r14, 48(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb66
Lbb65:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb66:
	movq %rax, (%rdi)
Lbb67:
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
	subq $96, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_functions_parse_function */

.text
.balign 16
.globl compiler_parser_parse_functions_parse_external_fn
compiler_parser_parse_functions_parse_external_fn:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb72
	movl $0, %ecx
	jmp Lbb81
Lbb72:
	movq 8(%rax), %rcx
	movq 16(%rax), %r8
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%r8), %rsi
	cmpq $1, %rsi
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb75
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb80
Lbb75:
	movq 8(%r8), %rsi
	movq 16(%r8), %r8
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%r8), %r9
	cmpq $1, %r9
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz Lbb78
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb79
Lbb78:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $30, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb79:
	cmpq $13, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r8, %rsi
	movq %rsi, (%rdi)
Lbb80:
	cmpq $8, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
Lbb81:
	cmpl $0, %ecx
	jnz Lbb107
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb85
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb91
Lbb85:
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rdi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb88
	movq $0, (%rdi)
	movl $0, %edi
	jmp Lbb90
Lbb88:
	movq $1, (%rdi)
	movl $1, %edi
Lbb90:
	cmpq $8, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
Lbb91:
	cmpl $0, %ecx
	jnz Lbb106
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb95
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb96
Lbb95:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $8, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb96:
	cmpl $0, %ecx
	jnz Lbb105
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb100
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb102
Lbb100:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb102:
	cmpl $0, %ecx
	jnz Lbb104
	subq $32, %rsp
	leaq str881(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str880(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb158
Lbb104:
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
	leaq str873(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb158
Lbb105:
	movq 8(%rax), %rax
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str844(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb158
Lbb106:
	movq 16(%rax), %rax
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
	leaq str810(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb158
Lbb107:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r14
	movq 16(%rax), %rax
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz Lbb110
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb123
Lbb110:
	movq 8(%rax), %rcx
	movq 16(%rax), %r10
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%r10), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r8d
	jnz Lbb113
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb122
Lbb113:
	movq 8(%r10), %r8
	movq 16(%r10), %rbx
	movq (%r8), %r8
	movq (%r8), %r8
	movq (%rbx), %r10
	cmpq $1, %r10
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %r10d
	jnz Lbb116
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb121
Lbb116:
	movq 8(%rbx), %r10
	movq 16(%rbx), %rbx
	movq (%r10), %r10
	movq (%r10), %r10
	movq (%rbx), %r12
	cmpq $1, %r12
	setz %r13b
	movzbq %r13b, %r13
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r13d
	jnz Lbb119
	movq $0, (%r12)
	movl $0, %ebx
	jmp Lbb120
Lbb119:
	movq 8(%rbx), %rbx
	movq (%rbx), %rbx
	movq (%rbx), %rbx
	cmpq $31, %rbx
	setz %bl
	movzbq %bl, %rbx
	andq $1, %rbx
	movq %rbx, (%r12)
Lbb120:
	cmpq $2, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	andq %rbx, %r10
	movq %r10, (%r11)
Lbb121:
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
Lbb122:
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %r8, %rcx
	movq %rcx, (%rdi)
Lbb123:
	cmpl $0, %ecx
	jnz Lbb132
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb127
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb129
Lbb127:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb129:
	cmpl $0, %ecx
	jnz Lbb131
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str755(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r14, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb158
Lbb131:
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
	leaq str748(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb158
Lbb132:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r12
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r15
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_functions_parse_pub
	subq $-32, %rsp
	movq (%rax), %r8
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	movq %r8, %r13
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb135
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb144
Lbb135:
	movq 8(%rax), %rcx
	movq 16(%rax), %r11
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%r11), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r9d
	jnz Lbb138
	movq $0, (%r10)
	movl $0, %r9d
	jmp Lbb143
Lbb138:
	movq 8(%r11), %r9
	movq 16(%r11), %r11
	movq (%r9), %r9
	movq (%r9), %r9
	movq (%r11), %rbx
	cmpq $1, %rbx
	setz %bl
	movzbq %bl, %rbx
	movq %rbx, -16(%rbp)
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, -16(%rbp)
	jnz Lbb141
	movq $0, (%rbx)
	movl $0, %r11d
	jmp Lbb142
Lbb141:
	movq 8(%r11), %r11
	movq (%r11), %r11
	movq (%r11), %r11
	cmpq $30, %r11
	setz %r11b
	movzbq %r11b, %r11
	andq $1, %r11
	movq %r11, (%rbx)
Lbb142:
	cmpq $4, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	andq %r11, %r9
	movq %r9, (%r10)
Lbb143:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %r9, %rcx
	movq %rcx, (%r8)
Lbb144:
	cmpl $0, %ecx
	jnz Lbb153
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb148
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb150
Lbb148:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb150:
	cmpl $0, %ecx
	jnz Lbb152
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	leaq str718(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r14, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb157
Lbb152:
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
	leaq str711(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb157
Lbb153:
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r9
	movq %r9, -48(%rbp)
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_params_parse_params
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb155
	movq 8(%rax), %rdx
	movq %rdx, -40(%rbp)
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_functions_parse_optional_return
	subq $-32, %rsp
	movq (%rax), %rcx
	movq %rcx, -32(%rbp)
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, -24(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movl $64, %ecx
	callq malloc
	movq %r13, %r8
	movq %rax, %r13
	movq %r12, %rax
	movq -24(%rbp), %r12
	movq -32(%rbp), %rcx
	movq -40(%rbp), %rdx
	movq -48(%rbp), %r9
	subq $-32, %rsp
	movq $1, (%r13)
	movq %r9, 8(%r13)
	movq %r8, 16(%r13)
	movq %rdx, 24(%r13)
	movq %rcx, 32(%r13)
	movq %rax, 40(%r13)
	movq %r15, 48(%r13)
	movq %r14, 56(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb156
Lbb155:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb156:
	movq %rax, (%rdi)
Lbb157:
	movq %rax, (%rsi)
Lbb158:
	movq %rbp, %rsp
	subq $112, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_functions_parse_external_fn */

.text
.balign 16
compiler_parser_parse_functions_parse_pub:
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
	jnz Lbb161
	movl $0, %eax
	jmp Lbb162
Lbb161:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $20, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb162:
	cmpl $0, %eax
	jnz Lbb164
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb165
Lbb164:
	movq 16(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb165:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_functions_parse_pub */

.text
.balign 16
compiler_parser_parse_functions_parse_optional_return:
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
	jnz Lbb168
	movl $0, %eax
	jmp Lbb169
Lbb168:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $23, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb169:
	cmpl $0, %eax
	jnz Lbb171
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	leaq donna_option_None(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb174
Lbb171:
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
	jz Lbb173
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
	jmp Lbb174
Lbb173:
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
Lbb174:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_functions_parse_optional_return */

