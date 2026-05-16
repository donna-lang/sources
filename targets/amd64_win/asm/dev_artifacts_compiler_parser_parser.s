.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str734:
	.ascii "import, const, type, fn, or @external"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parser_ParseOk
compiler_parser_parser_ParseOk:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_parser_parser_ParseOk */

.text
.balign 16
.globl compiler_parser_parser_ParseErrors
compiler_parser_parser_ParseErrors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_parser_parser_ParseErrors */

.text
.balign 16
.globl compiler_parser_parser_parse
compiler_parser_parser_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rdx
	leaq donna_nil(%rip), %rax
	movq %rax, 48(%rdx)
	leaq donna_nil(%rip), %rax
	movq %rax, 40(%rdx)
	leaq donna_nil(%rip), %rax
	movq %rax, 32(%rdx)
	leaq donna_nil(%rip), %r9
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	leave
	ret
/* end function compiler_parser_parser_parse */

.text
.balign 16
compiler_parser_parser_parse_module_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $376, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 64(%rbp), %rdi
	movq 56(%rbp), %rsi
	movq 48(%rbp), %r14
	movq %r9, %r13
	movq %r8, %r12
	movq %rdx, %rbx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r14, %r9
	movq %r13, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	movq (%r13), %rax
	cmpq $0, %rax
	jz Lbb140
	cmpq $1, %rax
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %r10d
	jnz Lbb10
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb11
Lbb10:
	movq 8(%r13), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $64, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb11:
	cmpl $0, %r10d
	jnz Lbb139
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb15
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb16
Lbb15:
	movq 8(%r13), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $3, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb16:
	cmpl $0, %r10d
	jnz Lbb137
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb20
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb21
Lbb20:
	movq 8(%r13), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $16, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb21:
	cmpl $0, %r10d
	jnz Lbb132
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb25
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb26
Lbb25:
	movq 8(%r13), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $11, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb26:
	cmpl $0, %r10d
	jnz Lbb128
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb30
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb35
Lbb30:
	movq 8(%r13), %r10
	movq 16(%r13), %rbx
	movq (%r10), %r10
	movq (%r10), %r10
	movq (%rbx), %r12
	cmpq $1, %r12
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r14d
	jnz Lbb33
	movq $0, (%r12)
	movl $0, %ebx
	jmp Lbb34
Lbb33:
	movq 8(%rbx), %rbx
	movq (%rbx), %rbx
	movq (%rbx), %rbx
	cmpq $11, %rbx
	setz %bl
	movzbq %bl, %rbx
	andq $1, %rbx
	movq %rbx, (%r12)
Lbb34:
	cmpq $20, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	andq %rbx, %r10
	movq %r10, (%r11)
Lbb35:
	cmpl $0, %r10d
	jnz Lbb124
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb39
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb40
Lbb39:
	movq 8(%r13), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $14, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb40:
	cmpl $0, %r10d
	jnz Lbb120
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb44
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb49
Lbb44:
	movq 8(%r13), %r10
	movq 16(%r13), %rbx
	movq (%r10), %r10
	movq (%r10), %r10
	movq (%rbx), %r12
	cmpq $1, %r12
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r14d
	jnz Lbb47
	movq $0, (%r12)
	movl $0, %ebx
	jmp Lbb48
Lbb47:
	movq 8(%rbx), %rbx
	movq (%rbx), %rbx
	movq (%rbx), %rbx
	cmpq $14, %rbx
	setz %bl
	movzbq %bl, %rbx
	andq $1, %rbx
	movq %rbx, (%r12)
Lbb48:
	cmpq $20, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	andq %rbx, %r10
	movq %r10, (%r11)
Lbb49:
	cmpl $0, %r10d
	jnz Lbb116
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb53
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb54
Lbb53:
	movq 8(%r13), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $8, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb54:
	cmpl $0, %r10d
	jnz Lbb112
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb58
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb59
Lbb58:
	movq 8(%r13), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $22, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb59:
	cmpl $0, %r10d
	jnz Lbb107
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb63
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb68
Lbb63:
	movq 8(%r13), %r10
	movq 16(%r13), %rbx
	movq (%r10), %r10
	movq (%r10), %r10
	movq (%rbx), %r12
	cmpq $1, %r12
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r14d
	jnz Lbb66
	movq $0, (%r12)
	movl $0, %ebx
	jmp Lbb67
Lbb66:
	movq 8(%rbx), %rbx
	movq (%rbx), %rbx
	movq (%rbx), %rbx
	cmpq $22, %rbx
	setz %bl
	movzbq %bl, %rbx
	andq $1, %rbx
	movq %rbx, (%r12)
Lbb67:
	cmpq $20, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	andq %rbx, %r10
	movq %r10, (%r11)
Lbb68:
	cmpl $0, %r10d
	jnz Lbb102
	subq $16, %rsp
	movq %rsp, %r11
	cmpq $1, %rax
	jz Lbb72
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb81
Lbb72:
	movq 8(%r13), %r10
	movq 16(%r13), %r14
	movq (%r10), %r10
	movq (%r10), %r10
	movq (%r14), %rbx
	cmpq $1, %rbx
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %ebx
	jnz Lbb75
	movq $0, (%r12)
	movl $0, %ebx
	jmp Lbb80
Lbb75:
	movq 8(%r14), %rbx
	movq 16(%r14), %r14
	movq (%rbx), %rbx
	movq (%rbx), %rbx
	movq (%r14), %r15
	cmpq $1, %r15
	setz %r15b
	movzbq %r15b, %r15
	movq %r15, -16(%rbp)
	subq $16, %rsp
	movq %rsp, %r15
	cmpl $0, -16(%rbp)
	jnz Lbb78
	movq $0, (%r15)
	movl $0, %r14d
	jmp Lbb79
Lbb78:
	movq 8(%r14), %r14
	movq (%r14), %r14
	movq (%r14), %r14
	cmpq $22, %r14
	setz %r14b
	movzbq %r14b, %r14
	andq $1, %r14
	movq %r14, (%r15)
Lbb79:
	cmpq $18, %rbx
	setz %bl
	movzbq %bl, %rbx
	andq $1, %rbx
	andq %r14, %rbx
	movq %rbx, (%r12)
Lbb80:
	cmpq $20, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	andq %rbx, %r10
	movq %r10, (%r11)
Lbb81:
	cmpl $0, %r10d
	jnz Lbb97
	movq %r8, %r14
	subq $16, %rsp
	movq %rsp, %r8
	cmpq $1, %rax
	jz Lbb85
	movq $0, (%r8)
	movq %r9, %r15
	movl $0, %eax
	jmp Lbb90
Lbb85:
	movq 8(%r13), %rax
	movq 16(%r13), %r11
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r11), %r10
	cmpq $1, %r10
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %ebx
	jnz Lbb88
	movq $0, (%r10)
	movq %r9, %r15
	movl $0, %r9d
	jmp Lbb89
Lbb88:
	movq 8(%r11), %r11
	movq (%r11), %r11
	movq (%r11), %r11
	cmpq $22, %r11
	movq %r9, %r15
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
Lbb89:
	cmpq $18, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %r9, %rax
	movq %rax, (%r8)
Lbb90:
	cmpl $0, %eax
	jnz Lbb92
	movq 8(%r13), %rax
	movq %rcx, %rbx
	movq (%rax), %rcx
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -32(%rbp)
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rbx, %rcx
	movq %rax, -24(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $32, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r12
	movq %r13, %rax
	movq %rdi, %rbx
	movq -24(%rbp), %rdi
	movq %rdx, %r13
	movq -32(%rbp), %rdx
	subq $-32, %rsp
	movq $6, (%r12)
	movq %rdi, 8(%r12)
	movq %rsi, %rdi
	leaq str734(%rip), %rsi
	movq %rsi, 16(%r12)
	movq %rdx, 24(%r12)
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rsi, %rcx
	movq %rax, -40(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rdx
	movq %rcx, %rsi
	movq -40(%rbp), %rcx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rdi, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rsi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	jmp Lbb141
Lbb92:
	movq %r13, %rbx
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_type_defs_parse_type_def
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r9, %r15
	movq (%rdx), %r9
	cmpq $1, %r9
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb95
	movq %r8, %r14
	movq 8(%rdx), %r8
	movq %r8, -56(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -48(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rcx, %rdi
	movq -48(%rbp), %rcx
	movq %r8, %r14
	movq -56(%rbp), %r8
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r8, 8(%rax)
	movq %r15, 16(%rax)
	movq %rdx, %r13
	subq $64, %rsp
	movq %rsp, %rdx
	movq %r12, 48(%rdx)
	movq %rbx, 40(%rdx)
	movq %rax, 32(%rdx)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb95:
	movq %r8, %r14
	movq 8(%rdx), %rdx
	movq %rdx, -72(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -64(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -64(%rbp), %rcx
	movq -72(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb97:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_type_defs_parse_type_def
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r9, %r15
	movq (%rdx), %r9
	cmpq $1, %r9
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb100
	movq %r8, %r14
	movq 8(%rdx), %r8
	movq %r8, -88(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -80(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rcx, %rdi
	movq -80(%rbp), %rcx
	movq %r8, %r14
	movq -88(%rbp), %r8
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r8, 8(%rax)
	movq %r15, 16(%rax)
	movq %rdx, %r13
	subq $64, %rsp
	movq %rsp, %rdx
	movq %r12, 48(%rdx)
	movq %rbx, 40(%rdx)
	movq %rax, 32(%rdx)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb100:
	movq %r8, %r14
	movq 8(%rdx), %rdx
	movq %rdx, -104(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -96(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -96(%rbp), %rcx
	movq -104(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb102:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_type_defs_parse_type_def
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r9, %r15
	movq (%rdx), %r9
	cmpq $1, %r9
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb105
	movq %r8, %r14
	movq 8(%rdx), %r8
	movq %r8, -120(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -112(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rcx, %rdi
	movq -112(%rbp), %rcx
	movq %r8, %r14
	movq -120(%rbp), %r8
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r8, 8(%rax)
	movq %r15, 16(%rax)
	movq %rdx, %r13
	subq $64, %rsp
	movq %rsp, %rdx
	movq %r12, 48(%rdx)
	movq %rbx, 40(%rdx)
	movq %rax, 32(%rdx)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb105:
	movq %r8, %r14
	movq 8(%rdx), %rdx
	movq %rdx, -136(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -128(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -128(%rbp), %rcx
	movq -136(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb107:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_type_defs_parse_type_def
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r9, %r15
	movq (%rdx), %r9
	cmpq $1, %r9
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb110
	movq %r8, %r14
	movq 8(%rdx), %r8
	movq %r8, -152(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -144(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %r14, %r8
	movq %r13, %rdx
	movq %rdi, %rcx
	movq %rcx, %rdi
	movq -144(%rbp), %rcx
	movq %r8, %r14
	movq -152(%rbp), %r8
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r8, 8(%rax)
	movq %r15, 16(%rax)
	movq %rdx, %r13
	subq $64, %rsp
	movq %rsp, %rdx
	movq %r12, 48(%rdx)
	movq %rbx, 40(%rdx)
	movq %rax, 32(%rdx)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb110:
	movq %r8, %r14
	movq 8(%rdx), %rdx
	movq %rdx, -168(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -160(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -160(%rbp), %rcx
	movq -168(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb112:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_functions_parse_external_fn
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r8, %r14
	movq (%rdx), %r8
	cmpq $1, %r8
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb115
	movq 8(%rdx), %rax
	movq %rax, -184(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -176(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -176(%rbp), %rcx
	movq -184(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r12, 48(%rax)
	movq %rdx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb115:
	movq 8(%rdx), %rdx
	movq %rdx, -200(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -192(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -192(%rbp), %rcx
	movq -200(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb116:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_functions_parse_function
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r8, %r14
	movq (%rdx), %r8
	cmpq $1, %r8
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb119
	movq 8(%rdx), %rax
	movq %rax, -216(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -208(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -208(%rbp), %rcx
	movq -216(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r12, 48(%rax)
	movq %rdx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb119:
	movq 8(%rdx), %rdx
	movq %rdx, -232(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -224(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -224(%rbp), %rcx
	movq -232(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb120:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_functions_parse_function
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r8, %r14
	movq (%rdx), %r8
	cmpq $1, %r8
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb123
	movq 8(%rdx), %rax
	movq %rax, -248(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -240(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -240(%rbp), %rcx
	movq -248(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r12, 48(%rax)
	movq %rdx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb123:
	movq 8(%rdx), %rdx
	movq %rdx, -264(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -256(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -256(%rbp), %rcx
	movq -264(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb124:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_constants_parse_const
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r8, %r14
	movq (%rdx), %r8
	cmpq $1, %r8
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb127
	movq 8(%rdx), %rax
	movq %rax, -280(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -272(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %r9
	movq %rcx, %rdi
	movq -272(%rbp), %rcx
	movq -280(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%r9)
	movq %rax, 8(%r9)
	movq %r14, 16(%r9)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r12, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb127:
	movq 8(%rdx), %rdx
	movq %rdx, -296(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -288(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -288(%rbp), %rcx
	movq -296(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb128:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_constants_parse_const
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r8, %r14
	movq (%rdx), %r8
	cmpq $1, %r8
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb131
	movq 8(%rdx), %rax
	movq %rax, -312(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -304(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %r9
	movq %rcx, %rdi
	movq -304(%rbp), %rcx
	movq -312(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%r9)
	movq %rax, 8(%r9)
	movq %r14, 16(%r9)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r12, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb131:
	movq 8(%rdx), %rdx
	movq %rdx, -328(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %rdi, %rcx
	movq %rax, -320(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rcx, %rdi
	movq -320(%rbp), %rcx
	movq -328(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rdx, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb132:
	movq %r13, %rbx
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %r13
	subq $32, %rsp
	movq %rcx, %r12
	movq %rbx, %rcx
	callq compiler_parser_parse_imports_parse_import
	movq %r14, %r8
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq %r8, %r14
	movq (%rdx), %r8
	cmpq $1, %r8
	movq %rdi, %r12
	setz %dil
	movzbq %dil, %rdi
	cmpl $0, %edi
	jnz Lbb135
	movq 8(%rdx), %rax
	movq %rax, -344(%rbp)
	movq 16(%rdx), %rax
	movq %rax, -336(%rbp)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %r8
	movq %rcx, %rdi
	movq -336(%rbp), %rcx
	movq -344(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rax, 8(%r8)
	movq %r13, 16(%r8)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r12, 48(%rax)
	movq %rbx, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %rdi, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb135:
	movq %rbx, %rdi
	movq %r12, %rbx
	movq 8(%rdx), %rdx
	movq %rdx, -360(%rbp)
	subq $32, %rsp
	movq %rcx, %r12
	movq %rax, %rcx
	callq compiler_parser_parser_sync_to_decl
	movq %r12, %rcx
	movq %rax, -352(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	movq %rcx, %r12
	movq -352(%rbp), %rcx
	movq -360(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rax, 8(%r8)
	movq %rbx, 16(%r8)
	subq $64, %rsp
	movq %rsp, %rax
	movq %r8, 48(%rax)
	movq %rdi, 40(%rax)
	movq %r15, 32(%rax)
	movq %r14, %r9
	movq %rdx, %r8
	movq %r12, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb137:
	movq %rdi, %rbx
	movq %rsi, %rdi
	movq %r9, %r15
	movq %r8, %r14
	movq %rdx, %rsi
	movq %rcx, %r12
	movq 8(%r13), %rax
	movq 16(%r13), %rcx
	movq (%rax), %rax
	movq 8(%rax), %rax
	movq %rax, -368(%rbp)
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %rax, %rdx
	movq -368(%rbp), %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	subq $64, %rsp
	movq %rsp, %rax
	movq %rbx, 48(%rax)
	movq %rdi, 40(%rax)
	movq %r9, 32(%rax)
	movq %r8, %r9
	movq %rsi, %r8
	callq compiler_parser_parser_parse_module_loop
	subq $-64, %rsp
	jmp Lbb141
Lbb139:
	subq $48, %rsp
	movq %rsp, %rax
	movq %rdi, 40(%rax)
	movq %rsi, 32(%rax)
	callq compiler_parser_parser_make_output
	subq $-48, %rsp
	jmp Lbb141
Lbb140:
	subq $48, %rsp
	movq %rsp, %rax
	movq %rdi, 40(%rax)
	movq %rsi, 32(%rax)
	callq compiler_parser_parser_make_output
	subq $-48, %rsp
Lbb141:
	movq %rbp, %rsp
	subq $432, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parser_parse_module_loop */

.text
.balign 16
compiler_parser_parser_make_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq 56(%rbp), %r13
	movq 48(%rbp), %rsi
	movq %r9, %rdi
	movq %r8, %rbx
	movq %rdx, %r12
	xchgq %rcx, %r13
	subq $32, %rsp
	movq %rcx, %r14
	callq donna_list_is_empty
	movq %r14, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb144
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb146
Lbb144:
	movq %r13, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	movq %r12, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $48, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $0, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	movq %r12, 24(%rsi)
	movq %rbx, 32(%rsi)
	movq %rdi, 40(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
Lbb146:
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parser_make_output */

.text
.balign 16
compiler_parser_parser_sync_to_decl:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb149
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parser_sync_rest
	subq $-32, %rsp
	jmp Lbb150
Lbb149:
	leaq donna_nil(%rip), %rax
Lbb150:
	leave
	ret
/* end function compiler_parser_parser_sync_to_decl */

.text
.balign 16
compiler_parser_parser_sync_rest:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb198
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz Lbb155
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb156
Lbb155:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $64, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb156:
	cmpl $0, %edx
	jnz Lbb199
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb160
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb161
Lbb160:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $14, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb161:
	cmpl $0, %edx
	jnz Lbb199
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb165
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb166
Lbb165:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $20, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb166:
	cmpl $0, %edx
	jnz Lbb199
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb170
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb171
Lbb170:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $22, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb171:
	cmpl $0, %edx
	jnz Lbb199
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb175
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb176
Lbb175:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $18, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb176:
	cmpl $0, %edx
	jnz Lbb199
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb180
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb181
Lbb180:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $11, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb181:
	cmpl $0, %edx
	jnz Lbb199
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb185
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb186
Lbb185:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $16, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb186:
	cmpl $0, %edx
	jnz Lbb199
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb190
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb191
Lbb190:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $8, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb191:
	cmpl $0, %edx
	jnz Lbb199
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb195
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb196
Lbb195:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $3, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb196:
	cmpl $0, %ecx
	jnz Lbb199
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parser_sync_rest
	subq $-32, %rsp
	jmp Lbb199
Lbb198:
	leaq donna_nil(%rip), %rax
Lbb199:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rsi
	leave
	ret
/* end function compiler_parser_parser_sync_rest */

