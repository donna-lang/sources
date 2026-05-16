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
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq compiler_parser_parse_functions_parse_pub
	movq (%rax), %rdi
	movq 8(%rax), %rax
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb2
	movl $0, %ecx
	jmp .Lbb11
.Lbb2:
	movq 8(%rax), %rcx
	movq 16(%rax), %r9
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%r9), %rsi
	cmpq $1, %rsi
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %esi
	jnz .Lbb5
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb10
.Lbb5:
	movq 8(%r9), %rsi
	movq 16(%r9), %r9
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%r9), %r10
	cmpq $1, %r10
	setz %r11b
	movzbq %r11b, %r11
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r11d
	jnz .Lbb8
	movq $0, (%r10)
	movl $0, %r9d
	jmp .Lbb9
.Lbb8:
	movq 8(%r9), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $30, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
.Lbb9:
	cmpq $4, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r9, %rsi
	movq %rsi, (%r8)
.Lbb10:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
.Lbb11:
	cmpl $0, %ecx
	jnz .Lbb47
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb15
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb20
.Lbb15:
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
	jnz .Lbb18
	movq $0, (%r8)
	movl $0, %edi
	jmp .Lbb19
.Lbb18:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $5, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
.Lbb19:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
.Lbb20:
	cmpl $0, %ecx
	jnz .Lbb46
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb24
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb30
.Lbb24:
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
	jnz .Lbb27
	movq $0, (%rdi)
	movl $0, %edi
	jmp .Lbb29
.Lbb27:
	movq $1, (%rdi)
	movl $1, %edi
.Lbb29:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
.Lbb30:
	cmpl $0, %ecx
	jnz .Lbb45
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb34
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb35
.Lbb34:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb35:
	cmpl $0, %ecx
	jnz .Lbb44
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb39
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb41
.Lbb39:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb41:
	cmpl $0, %ecx
	jnz .Lbb43
	leaq str373(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq str372(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb67
.Lbb43:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str365(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb67
.Lbb44:
	movq 8(%rax), %rax
	movq 8(%rax), %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq str336(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb67
.Lbb45:
	movq 16(%rax), %rax
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str302(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb67
.Lbb46:
	movq 16(%rax), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rcx), %r13
	movq 8(%rax), %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $11, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb67
.Lbb47:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r14
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rdx
	movq 8(%rdx), %r15
	movq 8(%rcx), %rcx
	movq %rcx, -48(%rbp)
	movq %rdi, %rbx
	movq 16(%rax), %rdi
	callq compiler_parser_parse_params_parse_params
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb66
	movq 8(%rax), %rsi
	movq %rsi, -40(%rbp)
	movq %rdi, %r12
	movq 16(%rax), %rdi
	callq compiler_parser_parse_functions_parse_optional_return
	movq %r12, %rdi
	movq (%rax), %rdx
	movq %rdx, -32(%rbp)
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb51
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb52
.Lbb51:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $24, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb52:
	cmpl $0, %ecx
	jnz .Lbb61
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb56
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb58
.Lbb56:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb58:
	cmpl $0, %ecx
	jnz .Lbb60
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $7, (%r13)
	leaq str187(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb65
.Lbb60:
	movq 8(%rax), %rax
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq $9, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb65
.Lbb61:
	movq %rdi, %r13
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_block
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb63
	movq 8(%rax), %rcx
	movq %rcx, -24(%rbp)
	movq 16(%rax), %r14
	movq %r14, -16(%rbp)
	movq %rdi, %r14
	movl $56, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rdi
	movq %rax, %r15
	movq -16(%rbp), %r14
	movq -24(%rbp), %rcx
	movq -32(%rbp), %rdx
	movq -40(%rbp), %rsi
	movq -48(%rbp), %rax
	movq $0, (%r15)
	movq %r8, 8(%r15)
	movq %rdi, 16(%r15)
	movq %rsi, 24(%r15)
	movq %rdx, 32(%r15)
	movq %rcx, 40(%r15)
	movq %rax, 48(%r15)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp .Lbb64
.Lbb63:
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
.Lbb64:
	movq %rax, (%r12)
.Lbb65:
	movq %rax, (%rbx)
	jmp .Lbb67
.Lbb66:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
.Lbb67:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_functions_parse_function, @function
.size compiler_parser_parse_functions_parse_function, .-compiler_parser_parse_functions_parse_function
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
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb70
	movl $0, %eax
	jmp .Lbb79
.Lbb70:
	movq 8(%rdi), %rax
	movq 16(%rdi), %r8
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r8), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz .Lbb73
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb78
.Lbb73:
	movq 8(%r8), %rdx
	movq 16(%r8), %r8
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	movq (%r8), %r9
	cmpq $1, %r9
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz .Lbb76
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb77
.Lbb76:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $30, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb77:
	cmpq $13, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	andq %r8, %rdx
	movq %rdx, (%rsi)
.Lbb78:
	cmpq $8, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
.Lbb79:
	cmpl $0, %eax
	jnz .Lbb105
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb83
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb89
.Lbb83:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %rsi
	cmpq $1, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz .Lbb86
	movq $0, (%rsi)
	movl $0, %esi
	jmp .Lbb88
.Lbb86:
	movq $1, (%rsi)
	movl $1, %esi
.Lbb88:
	cmpq $8, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
.Lbb89:
	cmpl $0, %eax
	jnz .Lbb104
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb93
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb94
.Lbb93:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $8, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb94:
	cmpl $0, %eax
	jnz .Lbb103
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb98
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb100
.Lbb98:
	movq $1, (%rax)
	movl $1, %eax
.Lbb100:
	cmpl $0, %eax
	jnz .Lbb102
	leaq str881(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq str880(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb158
.Lbb102:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str873(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb158
.Lbb103:
	movq 8(%rdi), %rax
	movq 8(%rax), %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq str844(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb158
.Lbb104:
	movq 16(%rdi), %rax
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str810(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb158
.Lbb105:
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rax
	movq 8(%rcx), %r12
	movq 16(%rax), %rax
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
	jnz .Lbb108
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb121
.Lbb108:
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
	jnz .Lbb111
	movq $0, (%r8)
	movl $0, %edi
	jmp .Lbb120
.Lbb111:
	movq 8(%r9), %rdi
	movq 16(%r9), %r11
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	movq (%r11), %r9
	cmpq $1, %r9
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r9d
	jnz .Lbb114
	movq $0, (%r10)
	movl $0, %r9d
	jmp .Lbb119
.Lbb114:
	movq 8(%r11), %r9
	movq 16(%r11), %r11
	movq (%r9), %r9
	movq (%r9), %r9
	movq (%r11), %r13
	cmpq $1, %r13
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz .Lbb117
	movq $0, (%r13)
	movl $0, %r11d
	jmp .Lbb118
.Lbb117:
	movq 8(%r11), %r11
	movq (%r11), %r11
	movq (%r11), %r11
	cmpq $31, %r11
	setz %r11b
	movzbq %r11b, %r11
	andq $1, %r11
	movq %r11, (%r13)
.Lbb118:
	cmpq $2, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	andq %r11, %r9
	movq %r9, (%r10)
.Lbb119:
	cmpq $25, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	andq %r9, %rdi
	movq %rdi, (%r8)
.Lbb120:
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
.Lbb121:
	cmpl $0, %ecx
	jnz .Lbb130
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb125
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb127
.Lbb125:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb127:
	cmpl $0, %ecx
	jnz .Lbb129
	movl $24, %edi
	callq malloc
	xchgq %rax, %r12
	movq $7, (%r12)
	movq %rax, %r13
	leaq str755(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb158
.Lbb129:
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
	leaq str748(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb158
.Lbb130:
	movq %r12, %r13
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r12
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %rcx
	movq %rcx, -48(%rbp)
	movq 16(%rax), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq compiler_parser_parse_functions_parse_pub
	movq %r12, %rdx
	movq (%rax), %r8
	movq %r8, -40(%rbp)
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq %rdx, %r15
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb134
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb143
.Lbb134:
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
	jnz .Lbb137
	movq $0, (%r8)
	movl $0, %edi
	jmp .Lbb142
.Lbb137:
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
	jnz .Lbb140
	movq $0, (%r10)
	movl $0, %r9d
	jmp .Lbb141
.Lbb140:
	movq 8(%r9), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $30, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
.Lbb141:
	cmpq $4, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	andq %r9, %rdi
	movq %rdi, (%r8)
.Lbb142:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
.Lbb143:
	cmpl $0, %ecx
	jnz .Lbb152
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb147
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb149
.Lbb147:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb149:
	cmpl $0, %ecx
	jnz .Lbb151
	movl $24, %edi
	callq malloc
	xchgq %rax, %r13
	movq $7, (%r13)
	movq %rax, %r14
	leaq str718(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb157
.Lbb151:
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
	leaq str711(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb157
.Lbb152:
	movq %r13, %r14
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r9
	movq %r9, -32(%rbp)
	movq 16(%rax), %rdi
	callq compiler_parser_parse_params_parse_params
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb155
	movq 8(%rax), %rdi
	movq %rdi, -24(%rbp)
	movq 16(%rax), %rdi
	callq compiler_parser_parse_functions_parse_optional_return
	movq (%rax), %rsi
	movq %rsi, -16(%rbp)
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, -8(%rbp)
	movl $64, %edi
	callq malloc
	movq %r15, %rdx
	movq %rax, %r15
	movq %r14, %rax
	movq -8(%rbp), %r14
	movq -16(%rbp), %rsi
	movq -24(%rbp), %rdi
	movq -32(%rbp), %r9
	movq -40(%rbp), %r8
	movq -48(%rbp), %rcx
	movq $1, (%r15)
	movq %r9, 8(%r15)
	movq %r8, 16(%r15)
	movq %rdi, 24(%r15)
	movq %rsi, 32(%r15)
	movq %rdx, 40(%r15)
	movq %rcx, 48(%r15)
	movq %rax, 56(%r15)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp .Lbb156
.Lbb155:
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
.Lbb156:
	movq %rax, (%r12)
.Lbb157:
	movq %rax, (%rbx)
.Lbb158:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_functions_parse_external_fn, @function
.size compiler_parser_parse_functions_parse_external_fn, .-compiler_parser_parse_functions_parse_external_fn
/* end function compiler_parser_parse_functions_parse_external_fn */

.text
.balign 16
compiler_parser_parse_functions_parse_pub:
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
	jnz .Lbb161
	movl $0, %eax
	jmp .Lbb162
.Lbb161:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $20, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb162:
	cmpl $0, %eax
	jnz .Lbb164
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	jmp .Lbb165
.Lbb164:
	movq 16(%rdi), %rbx
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb165:
	popq %rbx
	leave
	ret
.type compiler_parser_parse_functions_parse_pub, @function
.size compiler_parser_parse_functions_parse_pub, .-compiler_parser_parse_functions_parse_pub
/* end function compiler_parser_parse_functions_parse_pub */

.text
.balign 16
compiler_parser_parse_functions_parse_optional_return:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb168
	movl $0, %eax
	jmp .Lbb169
.Lbb168:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $23, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb169:
	cmpl $0, %eax
	jnz .Lbb171
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	leaq donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %rdi, 8(%rax)
	jmp .Lbb174
.Lbb171:
	movq %rdi, %rbx
	movq 16(%rdi), %rdi
	callq compiler_parser_parse_types_parse_type
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz .Lbb173
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	movl $16, %edi
	callq malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb174
.Lbb173:
	movq %rdi, %r12
	movl $16, %edi
	callq malloc
	movq %r12, %rdi
	leaq donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rbx)
.Lbb174:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_functions_parse_optional_return, @function
.size compiler_parser_parse_functions_parse_optional_return, .-compiler_parser_parse_functions_parse_optional_return
/* end function compiler_parser_parse_functions_parse_optional_return */

.section .note.GNU-stack,"",@progbits
