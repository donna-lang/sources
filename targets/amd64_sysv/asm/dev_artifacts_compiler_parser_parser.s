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
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type compiler_parser_parser_ParseOk, @function
.size compiler_parser_parser_ParseOk, .-compiler_parser_parser_ParseOk
/* end function compiler_parser_parser_ParseOk */

.text
.balign 16
.globl compiler_parser_parser_ParseErrors
compiler_parser_parser_ParseErrors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
.type compiler_parser_parser_ParseErrors, @function
.size compiler_parser_parser_ParseErrors, .-compiler_parser_parser_ParseErrors
/* end function compiler_parser_parser_ParseErrors */

.text
.balign 16
.globl compiler_parser_parser_parse
compiler_parser_parser_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	leaq donna_nil(%rip), %rax
	movq %rax, 0(%rcx)
	leaq donna_nil(%rip), %r9
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rcx
	leaq donna_nil(%rip), %rdx
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	leave
	ret
.type compiler_parser_parser_parse, @function
.size compiler_parser_parser_parse, .-compiler_parser_parser_parse
/* end function compiler_parser_parser_parse */

.text
.balign 16
compiler_parser_parser_parse_module_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $472, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 16(%rbp), %rax
	movq %rax, -464(%rbp)
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %r12
	movq %rsi, %rbx
	movq %r15, -400(%rbp)
	callq compiler_parser_parse_result_skip_newlines
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r12
	movq -464(%rbp), %r9
	movq (%r12), %rax
	cmpq $0, %rax
	jz .Lbb145
	cmpq $1, %rax
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %r10d
	jnz .Lbb10
	movq $0, (%r11)
	movl $0, %r10d
	jmp .Lbb11
.Lbb10:
	movq 8(%r12), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $64, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
.Lbb11:
	cmpl $0, %r10d
	jnz .Lbb144
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb15
	movq $0, (%r9)
	movq %r8, %r15
	movl $0, %r8d
	jmp .Lbb16
.Lbb15:
	movq 8(%r12), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $3, %r10
	movq %r8, %r15
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb16:
	cmpl $0, %r8d
	jnz .Lbb142
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb20
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb21
.Lbb20:
	movq 8(%r12), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $16, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb21:
	cmpl $0, %r8d
	jnz .Lbb137
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb25
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb26
.Lbb25:
	movq 8(%r12), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $11, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb26:
	cmpl $0, %r8d
	jnz .Lbb132
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb30
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb35
.Lbb30:
	movq 8(%r12), %r8
	movq 16(%r12), %r10
	movq (%r8), %r8
	movq (%r8), %r8
	movq (%r10), %r11
	cmpq $1, %r11
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %ebx
	jnz .Lbb33
	movq $0, (%r11)
	movl $0, %r10d
	jmp .Lbb34
.Lbb33:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $11, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
.Lbb34:
	cmpq $20, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
.Lbb35:
	cmpl $0, %r8d
	jnz .Lbb127
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb39
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb40
.Lbb39:
	movq 8(%r12), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $14, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb40:
	cmpl $0, %r8d
	jnz .Lbb122
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb44
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb49
.Lbb44:
	movq 8(%r12), %r8
	movq 16(%r12), %r10
	movq (%r8), %r8
	movq (%r8), %r8
	movq (%r10), %r11
	cmpq $1, %r11
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %ebx
	jnz .Lbb47
	movq $0, (%r11)
	movl $0, %r10d
	jmp .Lbb48
.Lbb47:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $14, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
.Lbb48:
	cmpq $20, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
.Lbb49:
	cmpl $0, %r8d
	jnz .Lbb117
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb53
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb54
.Lbb53:
	movq 8(%r12), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $8, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb54:
	cmpl $0, %r8d
	jnz .Lbb112
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb58
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb59
.Lbb58:
	movq 8(%r12), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $22, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb59:
	cmpl $0, %r8d
	jnz .Lbb107
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb63
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb68
.Lbb63:
	movq 8(%r12), %r8
	movq 16(%r12), %r10
	movq (%r8), %r8
	movq (%r8), %r8
	movq (%r10), %r11
	cmpq $1, %r11
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %ebx
	jnz .Lbb66
	movq $0, (%r11)
	movl $0, %r10d
	jmp .Lbb67
.Lbb66:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $22, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
.Lbb67:
	cmpq $20, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
.Lbb68:
	cmpl $0, %r8d
	jnz .Lbb102
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz .Lbb72
	movq $0, (%r9)
	movq %r12, %rbx
	movl $0, %r8d
	jmp .Lbb81
.Lbb72:
	movq 8(%r12), %r8
	movq 16(%r12), %rbx
	movq (%r8), %r8
	movq (%r8), %r8
	movq (%rbx), %r10
	cmpq $1, %r10
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %r10d
	jnz .Lbb75
	movq $0, (%r11)
	movq %r12, %rbx
	movl $0, %r10d
	jmp .Lbb80
.Lbb75:
	movq 8(%rbx), %r10
	movq 16(%rbx), %rbx
	movq (%r10), %r10
	movq (%r10), %r10
	movq (%rbx), %r13
	cmpq $1, %r13
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz .Lbb78
	movq $0, (%r13)
	movq %r12, %rbx
	movl $0, %r12d
	jmp .Lbb79
.Lbb78:
	movq 8(%rbx), %rbx
	movq (%rbx), %rbx
	movq (%rbx), %rbx
	cmpq $22, %rbx
	movq %r12, %rbx
	setz %r12b
	movzbq %r12b, %r12
	andq $1, %r12
	movq %r12, (%r13)
.Lbb79:
	cmpq $18, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	andq %r12, %r10
	movq %r10, (%r11)
.Lbb80:
	cmpq $20, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
.Lbb81:
	cmpl $0, %r8d
	jnz .Lbb97
	movq %rdx, %r12
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb85
	movq $0, (%rdx)
	movq %rsi, %r14
	movl $0, %eax
	jmp .Lbb90
.Lbb85:
	movq 8(%rbx), %rax
	movq 16(%rbx), %r9
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r9), %r8
	cmpq $1, %r8
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r10d
	jnz .Lbb88
	movq $0, (%r8)
	movq %rsi, %r14
	movl $0, %esi
	jmp .Lbb89
.Lbb88:
	movq 8(%r9), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $22, %r9
	movq %rsi, %r14
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb89:
	cmpq $18, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
.Lbb90:
	cmpl $0, %eax
	jnz .Lbb92
	movq 8(%rbx), %rax
	movq %rdi, %r13
	movq (%rax), %rdi
	movq %rcx, %r15
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	callq compiler_lexer_token_to_string
	movq %r13, %rdi
	movq %rax, -8(%rbp)
	movq %rdi, %r13
	movl $32, %edi
	callq malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq %rbx, %rax
	movq -8(%rbp), %r8
	movq %rcx, %r14
	movq -16(%rbp), %rcx
	movq -400(%rbp), %r15
	movq %rdx, -32(%rbp)
	movq $6, (%rdx)
	movq %r8, 8(%rdx)
	movq %rsi, %r13
	leaq str734(%rip), %rsi
	movq %rsi, 16(%rdx)
	movq %rcx, 24(%rdx)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -24(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rdi, %rbx
	movq -24(%rbp), %rdi
	movq %rdx, %r15
	movq -32(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %rbx, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	jmp .Lbb146
.Lbb92:
	movq %r12, %r15
	movq %rbx, %r12
	movq %r14, %r13
	movq %rcx, %r14
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_type_defs_parse_type_def
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -72(%rbp)
	movq %rsi, %r13
	movq (%rcx), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb95
	movq 8(%rcx), %rax
	movq %rax, -48(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -40(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %r8
	movq -72(%rbp), %rbx
	movq %rdi, %r12
	movq -40(%rbp), %rdi
	movq -48(%rbp), %rax
	movq -464(%rbp), %r9
	movq $1, (%r8)
	movq %rax, 8(%r8)
	movq %r14, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r15, %r9
	movq %rdx, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb95:
	movq %r12, %rdx
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -64(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -56(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -72(%rbp), %rbx
	movq %rdi, %r12
	movq -56(%rbp), %rdi
	movq %rdx, %r15
	movq -64(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb97:
	movq %rbx, %r12
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_type_defs_parse_type_def
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -112(%rbp)
	movq %rsi, %r13
	movq (%rcx), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb100
	movq 8(%rcx), %rax
	movq %rax, -88(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -80(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %r8
	movq -112(%rbp), %rbx
	movq %rdi, %r12
	movq -80(%rbp), %rdi
	movq -88(%rbp), %rax
	movq -464(%rbp), %r9
	movq $1, (%r8)
	movq %rax, 8(%r8)
	movq %r14, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r15, %r9
	movq %rdx, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb100:
	movq %r12, %rdx
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -104(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -96(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -112(%rbp), %rbx
	movq %rdi, %r12
	movq -96(%rbp), %rdi
	movq %rdx, %r15
	movq -104(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb102:
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_type_defs_parse_type_def
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -152(%rbp)
	movq %rsi, %r13
	movq (%rcx), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb105
	movq 8(%rcx), %rax
	movq %rax, -128(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -120(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %r8
	movq -152(%rbp), %rbx
	movq %rdi, %r12
	movq -120(%rbp), %rdi
	movq -128(%rbp), %rax
	movq -464(%rbp), %r9
	movq $1, (%r8)
	movq %rax, 8(%r8)
	movq %r14, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r15, %r9
	movq %rdx, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb105:
	movq %r12, %rdx
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -144(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -136(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -152(%rbp), %rbx
	movq %rdi, %r12
	movq -136(%rbp), %rdi
	movq %rdx, %r15
	movq -144(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb107:
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_type_defs_parse_type_def
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -192(%rbp)
	movq %rsi, %r13
	movq (%rcx), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb110
	movq 8(%rcx), %rax
	movq %rax, -168(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -160(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %r8
	movq -192(%rbp), %rbx
	movq %rdi, %r12
	movq -160(%rbp), %rdi
	movq -168(%rbp), %rax
	movq -464(%rbp), %r9
	movq $1, (%r8)
	movq %rax, 8(%r8)
	movq %r14, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r15, %r9
	movq %rdx, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb110:
	movq %r12, %rdx
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -184(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -176(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -192(%rbp), %rbx
	movq %rdi, %r12
	movq -176(%rbp), %rdi
	movq %rdx, %r15
	movq -184(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb112:
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_functions_parse_external_fn
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r8
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -232(%rbp)
	movq %r8, %r15
	movq (%rcx), %r8
	cmpq $1, %r8
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb115
	movq %rsi, %r12
	movq 8(%rcx), %rsi
	movq %rsi, -208(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -200(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r9
	movq -232(%rbp), %rbx
	movq %rdi, %r12
	movq -200(%rbp), %rdi
	movq %rsi, %r13
	movq -208(%rbp), %rsi
	movq -464(%rbp), %rax
	movq $1, (%r9)
	movq %rsi, 8(%r9)
	movq %r15, 16(%r9)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r14, %r8
	movq %rdx, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb115:
	movq %r13, %rdx
	movq %rsi, %r13
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -224(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -216(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -232(%rbp), %rbx
	movq %rdi, %r12
	movq -216(%rbp), %rdi
	movq %rdx, %r15
	movq -224(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb117:
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_functions_parse_function
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r8
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -272(%rbp)
	movq %r8, %r15
	movq (%rcx), %r8
	cmpq $1, %r8
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb120
	movq %rsi, %r12
	movq 8(%rcx), %rsi
	movq %rsi, -248(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -240(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r9
	movq -272(%rbp), %rbx
	movq %rdi, %r12
	movq -240(%rbp), %rdi
	movq %rsi, %r13
	movq -248(%rbp), %rsi
	movq -464(%rbp), %rax
	movq $1, (%r9)
	movq %rsi, 8(%r9)
	movq %r15, 16(%r9)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r14, %r8
	movq %rdx, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb120:
	movq %r13, %rdx
	movq %rsi, %r13
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -264(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -256(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -272(%rbp), %rbx
	movq %rdi, %r12
	movq -256(%rbp), %rdi
	movq %rdx, %r15
	movq -264(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb122:
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_functions_parse_function
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r8
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -312(%rbp)
	movq %r8, %r15
	movq (%rcx), %r8
	cmpq $1, %r8
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb125
	movq %rsi, %r12
	movq 8(%rcx), %rsi
	movq %rsi, -288(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -280(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r9
	movq -312(%rbp), %rbx
	movq %rdi, %r12
	movq -280(%rbp), %rdi
	movq %rsi, %r13
	movq -288(%rbp), %rsi
	movq -464(%rbp), %rax
	movq $1, (%r9)
	movq %rsi, 8(%r9)
	movq %r15, 16(%r9)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r14, %r8
	movq %rdx, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb125:
	movq %r13, %rdx
	movq %rsi, %r13
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -304(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -296(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -312(%rbp), %rbx
	movq %rdi, %r12
	movq -296(%rbp), %rdi
	movq %rdx, %r15
	movq -304(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb127:
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_constants_parse_const
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -352(%rbp)
	movq %rsi, %r13
	movq (%rcx), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb130
	movq 8(%rcx), %rax
	movq %rax, -328(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -320(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -352(%rbp), %rbx
	movq %rdi, %r12
	movq -320(%rbp), %rdi
	movq -328(%rbp), %rax
	movq -464(%rbp), %r9
	movq $1, (%rcx)
	movq %rax, 8(%rcx)
	movq %rdx, 16(%rcx)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb130:
	movq %r12, %rdx
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -344(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -336(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -352(%rbp), %rbx
	movq %rdi, %r12
	movq -336(%rbp), %rdi
	movq %rdx, %r15
	movq -344(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb132:
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_constants_parse_const
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -392(%rbp)
	movq %rsi, %r13
	movq (%rcx), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb135
	movq 8(%rcx), %rax
	movq %rax, -368(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -360(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rdi
	movq %rax, %rcx
	movq -392(%rbp), %rbx
	movq %rdi, %r12
	movq -360(%rbp), %rdi
	movq -368(%rbp), %rax
	movq -464(%rbp), %r9
	movq $1, (%rcx)
	movq %rax, 8(%rcx)
	movq %rdx, 16(%rcx)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb135:
	movq %r12, %rdx
	movq %rdx, %r12
	movq 8(%rcx), %rdx
	movq %rdx, -384(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -376(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r12, %rdx
	movq %rbx, %rdi
	movq -392(%rbp), %rbx
	movq %rdi, %r12
	movq -376(%rbp), %rdi
	movq %rdx, %r15
	movq -384(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r8, %r9
	movq %r14, %r8
	movq %r15, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb137:
	movq %rcx, %r14
	movq %rdx, %r15
	movq %rsi, %r13
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_imports_parse_import
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq %r12, %rax
	movq -400(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -440(%rbp)
	movq %rsi, %r12
	movq (%rcx), %rsi
	cmpq $1, %rsi
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb140
	movq 8(%rcx), %rax
	movq %rax, -416(%rbp)
	movq 16(%rcx), %rax
	movq %rax, -408(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	movq -440(%rbp), %rbx
	movq %rdi, %r12
	movq -408(%rbp), %rdi
	movq -416(%rbp), %rax
	movq -464(%rbp), %r9
	movq $1, (%rdx)
	movq %rax, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb140:
	movq %r13, %rdx
	movq %rdx, %r13
	movq 8(%rcx), %rdx
	movq %rdx, -432(%rbp)
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parser_sync_to_decl
	movq %rbx, %rdi
	movq %rax, -424(%rbp)
	movq %rdi, %rbx
	movl $24, %edi
	callq malloc
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq -440(%rbp), %rbx
	movq %rdi, %r12
	movq -424(%rbp), %rdi
	movq %rdx, %r13
	movq -432(%rbp), %rdx
	movq -464(%rbp), %r9
	movq $1, (%rax)
	movq %rdx, 8(%rax)
	movq %r9, 16(%rax)
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rax, 0(%rcx)
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %rsi, %rdx
	movq %r12, %rsi
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp .Lbb146
.Lbb142:
	movq %rcx, %r14
	movq %rdx, %r13
	movq %rsi, %rbx
	movq 8(%r12), %rax
	movq 16(%r12), %r10
	movq %r10, -456(%rbp)
	movq (%rax), %rax
	movq 8(%rax), %rax
	movq %rax, -448(%rbp)
	movq %rdi, %r12
	movl $24, %edi
	callq malloc
	movq %r15, %r8
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rdi
	movq %rax, %rsi
	movq -448(%rbp), %rax
	movq %rdi, %r12
	movq -456(%rbp), %rdi
	movq -464(%rbp), %r9
	movq $1, (%rsi)
	movq %rax, 8(%rsi)
	movq %r12, 16(%rsi)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r8, %r9
	movq %rcx, %r8
	movq %rdx, %rcx
	movq %rbx, %rdx
	callq compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	jmp .Lbb146
.Lbb144:
	callq compiler_parser_parser_make_output
	jmp .Lbb146
.Lbb145:
	callq compiler_parser_parser_make_output
.Lbb146:
	movq %rbp, %rsp
	subq $512, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parser_parse_module_loop, @function
.size compiler_parser_parser_parse_module_loop, .-compiler_parser_parser_parse_module_loop
/* end function compiler_parser_parser_parse_module_loop */

.text
.balign 16
compiler_parser_parser_make_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, -16(%rbp)
	movq %rcx, %r13
	movq %rdx, %r14
	movq %rsi, %rbx
	movq %rdi, %r15
	movq %r9, %rdi
	movq %rdi, %r12
	callq donna_list_is_empty
	movq %r12, %rdi
	movq -16(%rbp), %r12
	cmpq $1, %rax
	jz .Lbb149
	callq donna_list_reverse
	movq %rax, %rbx
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb151
.Lbb149:
	movq %r15, %rdi
	callq donna_list_reverse
	movq %rbx, %rdi
	movq %rax, %rbx
	callq donna_list_reverse
	movq %r14, %rdi
	movq %rax, %r15
	callq donna_list_reverse
	movq %r13, %rdi
	movq %rax, %r14
	callq donna_list_reverse
	movq %r12, %rdi
	movq %rax, %r13
	callq donna_list_reverse
	movq %rax, %r12
	movl $48, %edi
	callq malloc
	xchgq %rax, %rbx
	movq $0, (%rbx)
	movq %rax, 8(%rbx)
	movq %r15, 16(%rbx)
	movq %r14, 24(%rbx)
	movq %r13, 32(%rbx)
	movq %r12, 40(%rbx)
	movl $16, %edi
	callq malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
.Lbb151:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parser_make_output, @function
.size compiler_parser_parser_make_output, .-compiler_parser_parser_make_output
/* end function compiler_parser_parser_make_output */

.text
.balign 16
compiler_parser_parser_sync_to_decl:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb154
	movq 16(%rdi), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq compiler_parser_parser_sync_rest
	jmp .Lbb155
.Lbb154:
	leaq donna_nil(%rip), %rax
.Lbb155:
	leave
	ret
.type compiler_parser_parser_sync_to_decl, @function
.size compiler_parser_parser_sync_to_decl, .-compiler_parser_parser_sync_to_decl
/* end function compiler_parser_parser_sync_to_decl */

.text
.balign 16
compiler_parser_parser_sync_rest:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_result_skip_newlines
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb203
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz .Lbb160
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb161
.Lbb160:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $64, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb161:
	cmpl $0, %edx
	jnz .Lbb204
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb165
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb166
.Lbb165:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $14, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb166:
	cmpl $0, %edx
	jnz .Lbb204
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb170
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb171
.Lbb170:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $20, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb171:
	cmpl $0, %edx
	jnz .Lbb204
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb175
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb176
.Lbb175:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $22, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb176:
	cmpl $0, %edx
	jnz .Lbb204
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb180
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb181
.Lbb180:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $18, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb181:
	cmpl $0, %edx
	jnz .Lbb204
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb185
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb186
.Lbb185:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $11, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb186:
	cmpl $0, %edx
	jnz .Lbb204
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb190
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb191
.Lbb190:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $16, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb191:
	cmpl $0, %edx
	jnz .Lbb204
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb195
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb196
.Lbb195:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $8, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb196:
	cmpl $0, %edx
	jnz .Lbb204
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb200
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb201
.Lbb200:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $3, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb201:
	cmpl $0, %ecx
	jnz .Lbb204
	movq 16(%rax), %rdi
	callq compiler_parser_parser_sync_rest
	jmp .Lbb204
.Lbb203:
	leaq donna_nil(%rip), %rax
.Lbb204:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type compiler_parser_parser_sync_rest, @function
.size compiler_parser_parser_sync_rest, .-compiler_parser_parser_sync_rest
/* end function compiler_parser_parser_sync_rest */

.section .note.GNU-stack,"",@progbits
