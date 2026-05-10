.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str734:
	.ascii "import, const, type, fn, or @external"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_parser_parser_ParseOk
_compiler_parser_parser_ParseOk:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_parser_parser_ParseOk */

.text
.balign 16
.globl _compiler_parser_parser_ParseErrors
_compiler_parser_parser_ParseErrors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_parser_parser_ParseErrors */

.text
.balign 16
.globl _compiler_parser_parser_parse
_compiler_parser_parser_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %rcx
	leaq _donna_nil(%rip), %rax
	movq %rax, 0(%rcx)
	leaq _donna_nil(%rip), %r9
	leaq _donna_nil(%rip), %r8
	leaq _donna_nil(%rip), %rcx
	leaq _donna_nil(%rip), %rdx
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	leave
	ret
/* end function compiler_parser_parser_parse */

.text
.balign 16
_compiler_parser_parser_parse_module_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $472, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq 16(%rbp), %r15
	movq %r9, %r14
	movq %r8, %r13
	movq %rcx, %r12
	movq %rdx, %rbx
	movq %rsi, -464(%rbp)
	movq %rbx, -400(%rbp)
	callq _compiler_parser_parse_result_skip_newlines
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rbx
	movq -464(%rbp), %rdi
	movq %rdi, %rax
	movq (%rbx), %rdi
	cmpq $0, %rdi
	jz Lbb151
	cmpq $1, %rdi
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
	movq 8(%rbx), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $64, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb11:
	cmpl $0, %r10d
	jnz Lbb149
	movq %rdi, %rax
	subq $16, %rsp
	movq %rsp, %r10
	cmpq $1, %rax
	jz Lbb16
	movq $0, (%r10)
	movl $0, %edi
	jmp Lbb17
Lbb16:
	movq 8(%rbx), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $3, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r10)
Lbb17:
	cmpl $0, %edi
	jnz Lbb147
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb21
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb22
Lbb21:
	movq 8(%rbx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $16, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb22:
	cmpl $0, %esi
	jnz Lbb142
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb26
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb27
Lbb26:
	movq 8(%rbx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $11, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb27:
	cmpl $0, %esi
	jnz Lbb137
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb31
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb36
Lbb31:
	movq 8(%rbx), %rsi
	movq 16(%rbx), %r10
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%r10), %r11
	cmpq $1, %r11
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %r12d
	jnz Lbb34
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb35
Lbb34:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $11, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb35:
	cmpq $20, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r10, %rsi
	movq %rsi, (%rdi)
Lbb36:
	cmpl $0, %esi
	jnz Lbb132
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb40
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb41
Lbb40:
	movq 8(%rbx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $14, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb41:
	cmpl $0, %esi
	jnz Lbb127
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb45
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb50
Lbb45:
	movq 8(%rbx), %rsi
	movq 16(%rbx), %r10
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%r10), %r11
	cmpq $1, %r11
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %r12d
	jnz Lbb48
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb49
Lbb48:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $14, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb49:
	cmpq $20, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r10, %rsi
	movq %rsi, (%rdi)
Lbb50:
	cmpl $0, %esi
	jnz Lbb122
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb54
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb55
Lbb54:
	movq 8(%rbx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $8, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb55:
	cmpl $0, %esi
	jnz Lbb117
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb59
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb60
Lbb59:
	movq 8(%rbx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $22, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb60:
	cmpl $0, %esi
	jnz Lbb111
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb64
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb69
Lbb64:
	movq 8(%rbx), %rsi
	movq 16(%rbx), %r10
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%r10), %r11
	cmpq $1, %r11
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %r12d
	jnz Lbb67
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb68
Lbb67:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $22, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb68:
	cmpq $20, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r10, %rsi
	movq %rsi, (%rdi)
Lbb69:
	cmpl $0, %esi
	jnz Lbb105
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb73
	movq $0, (%rdi)
	movq %r9, %r15
	movl $0, %esi
	jmp Lbb82
Lbb73:
	movq 8(%rbx), %rsi
	movq 16(%rbx), %r11
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%r11), %r10
	cmpq $1, %r10
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r12d
	jnz Lbb76
	movq $0, (%r10)
	movq %r9, %r15
	movl $0, %r9d
	jmp Lbb81
Lbb76:
	movq 8(%r11), %r12
	movq 16(%r11), %r11
	movq (%r12), %r12
	movq (%r12), %r12
	movq (%r11), %r13
	cmpq $1, %r13
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz Lbb79
	movq $0, (%r13)
	movl $0, %r11d
	jmp Lbb80
Lbb79:
	movq 8(%r11), %r11
	movq (%r11), %r11
	movq (%r11), %r11
	cmpq $22, %r11
	setz %r11b
	movzbq %r11b, %r11
	andq $1, %r11
	movq %r11, (%r13)
Lbb80:
	cmpq $18, %r12
	movq %r9, %r15
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	andq %r11, %r9
	movq %r9, (%r10)
Lbb81:
	cmpq $20, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r9, %rsi
	movq %rsi, (%rdi)
Lbb82:
	cmpl $0, %esi
	jnz Lbb99
	movq %rcx, %r13
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb86
	movq $0, (%rcx)
	movq %r8, %r14
	movl $0, %eax
	jmp Lbb91
Lbb86:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %rdi
	cmpq $1, %rdi
	movq %r8, %r14
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb89
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb90
Lbb89:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $22, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb90:
	cmpq $18, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rcx)
Lbb91:
	cmpl $0, %eax
	jnz Lbb93
	movq 8(%rbx), %rax
	movq (%rax), %rdi
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -16(%rbp)
	callq _compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	movq %rdx, %r12
	movq -16(%rbp), %rdx
	leaq _str734(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rbx, %rcx
	movq %rax, -32(%rbp)
	movq -400(%rbp), %rbx
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -24(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -24(%rbp), %rdi
	movq %r8, %r14
	movq -32(%rbp), %r8
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r8, 8(%rcx)
	movq %r15, 16(%rcx)
	movq %rdx, %rbx
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rcx, 0(%rdx)
	movq %r14, %r9
	movq %r13, %r8
	movq %rbx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	jmp Lbb153
Lbb93:
	movq %rbx, %r12
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_type_defs_parse_type_def
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -72(%rbp)
	movq %rsi, %rbx
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb97
	movq %r13, %rcx
	movq %rcx, %r13
	movq 8(%rax), %rcx
	movq %rcx, -48(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -40(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r13, %rcx
	movq %rbx, %rsi
	movq %rax, %r8
	movq -72(%rbp), %rbx
	movq -40(%rbp), %rdi
	movq %rcx, %r13
	movq -48(%rbp), %rcx
	movq -464(%rbp), %rax
	movq $1, (%r8)
	movq %rcx, 8(%r8)
	movq %r13, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rcx
	movq %r9, 0(%rcx)
	movq %r14, %r9
	movq %r12, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb97:
	movq %r15, %r9
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -64(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -56(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -72(%rbp), %rbx
	movq -56(%rbp), %rdi
	movq %r9, %r15
	movq -64(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r15, 16(%rcx)
	movq %r8, %r14
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb99:
	movq %rbx, %r12
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_type_defs_parse_type_def
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -112(%rbp)
	movq %rsi, %rbx
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb103
	movq %r13, %rcx
	movq %rcx, %r13
	movq 8(%rax), %rcx
	movq %rcx, -88(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -80(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r13, %rcx
	movq %rbx, %rsi
	movq %rax, %r8
	movq -112(%rbp), %rbx
	movq -80(%rbp), %rdi
	movq %rcx, %r13
	movq -88(%rbp), %rcx
	movq -464(%rbp), %rax
	movq $1, (%r8)
	movq %rcx, 8(%r8)
	movq %r13, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rcx
	movq %r9, 0(%rcx)
	movq %r14, %r9
	movq %r12, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb103:
	movq %r15, %r9
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -104(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -96(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -112(%rbp), %rbx
	movq -96(%rbp), %rdi
	movq %r9, %r15
	movq -104(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r15, 16(%rcx)
	movq %r8, %r14
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb105:
	movq %rbx, %r12
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_type_defs_parse_type_def
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -152(%rbp)
	movq %rsi, %rbx
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb109
	movq %r13, %rcx
	movq %rcx, %r13
	movq 8(%rax), %rcx
	movq %rcx, -128(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -120(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r13, %rcx
	movq %rbx, %rsi
	movq %rax, %r8
	movq -152(%rbp), %rbx
	movq -120(%rbp), %rdi
	movq %rcx, %r13
	movq -128(%rbp), %rcx
	movq -464(%rbp), %rax
	movq $1, (%r8)
	movq %rcx, 8(%r8)
	movq %r13, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rcx
	movq %r9, 0(%rcx)
	movq %r14, %r9
	movq %r12, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb109:
	movq %r15, %r9
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -144(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -136(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -152(%rbp), %rbx
	movq -136(%rbp), %rdi
	movq %r9, %r15
	movq -144(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r15, 16(%rcx)
	movq %r8, %r14
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb111:
	movq %rbx, %r12
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_type_defs_parse_type_def
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -192(%rbp)
	movq %rsi, %rbx
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb115
	movq %r13, %rcx
	movq %rcx, %r13
	movq 8(%rax), %rcx
	movq %rcx, -168(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -160(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r13, %rcx
	movq %rbx, %rsi
	movq %rax, %r8
	movq -192(%rbp), %rbx
	movq -160(%rbp), %rdi
	movq %rcx, %r13
	movq -168(%rbp), %rcx
	movq -464(%rbp), %rax
	movq $1, (%r8)
	movq %rcx, 8(%r8)
	movq %r13, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rcx
	movq %r9, 0(%rcx)
	movq %r14, %r9
	movq %r12, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb115:
	movq %r15, %r9
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -184(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -176(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -192(%rbp), %rbx
	movq -176(%rbp), %rdi
	movq %r9, %r14
	movq -184(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r14, 16(%rcx)
	movq %r8, %r15
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r15, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb117:
	movq %rbx, %r12
	movq %r9, %r14
	movq %r8, %r15
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_functions_parse_external_fn
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -232(%rbp)
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rsi, %rbx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb120
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -208(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -200(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %r9
	movq -232(%rbp), %rbx
	movq -200(%rbp), %rdi
	movq %rdx, %r12
	movq -208(%rbp), %rdx
	movq -464(%rbp), %rax
	movq $1, (%r9)
	movq %rdx, 8(%r9)
	movq %r8, 16(%r9)
	movq %rcx, %r13
	subq $16, %rsp
	movq %rsp, %rcx
	movq %r14, 0(%rcx)
	movq %r13, %r8
	movq %r12, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb120:
	movq %r14, %r9
	movq %r15, %r14
	movq %rdx, %r12
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -224(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -216(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -232(%rbp), %rbx
	movq -216(%rbp), %rdi
	movq %r9, %r14
	movq -224(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r14, 16(%rcx)
	movq %r8, %r15
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r15, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb122:
	movq %rbx, %r12
	movq %r9, %r14
	movq %r8, %r15
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_functions_parse_function
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -272(%rbp)
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rsi, %rbx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb125
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -248(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -240(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %r9
	movq -272(%rbp), %rbx
	movq -240(%rbp), %rdi
	movq %rdx, %r12
	movq -248(%rbp), %rdx
	movq -464(%rbp), %rax
	movq $1, (%r9)
	movq %rdx, 8(%r9)
	movq %r8, 16(%r9)
	movq %rcx, %r13
	subq $16, %rsp
	movq %rsp, %rcx
	movq %r14, 0(%rcx)
	movq %r13, %r8
	movq %r12, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb125:
	movq %r14, %r9
	movq %r15, %r14
	movq %rdx, %r12
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -264(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -256(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -272(%rbp), %rbx
	movq -256(%rbp), %rdi
	movq %r9, %r14
	movq -264(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r14, 16(%rcx)
	movq %r8, %r15
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r15, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb127:
	movq %rbx, %r12
	movq %r9, %r14
	movq %r8, %r15
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_functions_parse_function
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -312(%rbp)
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rsi, %rbx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb130
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -288(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -280(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %r9
	movq -312(%rbp), %rbx
	movq -280(%rbp), %rdi
	movq %rdx, %r12
	movq -288(%rbp), %rdx
	movq -464(%rbp), %rax
	movq $1, (%r9)
	movq %rdx, 8(%r9)
	movq %r8, 16(%r9)
	movq %rcx, %r13
	subq $16, %rsp
	movq %rsp, %rcx
	movq %r14, 0(%rcx)
	movq %r13, %r8
	movq %r12, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb130:
	movq %r14, %r9
	movq %r15, %r14
	movq %rdx, %r12
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -304(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -296(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -312(%rbp), %rbx
	movq -296(%rbp), %rdi
	movq %r9, %r15
	movq -304(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r15, 16(%rcx)
	movq %r8, %r14
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb132:
	movq %rbx, %r12
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_constants_parse_const
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -352(%rbp)
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rsi, %rbx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb135
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -328(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -320(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -352(%rbp), %rbx
	movq -320(%rbp), %rdi
	movq %rdx, %r12
	movq -328(%rbp), %rdx
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %rdx, 8(%rcx)
	movq %r12, 16(%rcx)
	subq $16, %rsp
	movq %rsp, %rdx
	movq %r9, 0(%rdx)
	movq %r14, %r9
	movq %r13, %r8
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb135:
	movq %r15, %r9
	movq %rdx, %r12
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -344(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -336(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -352(%rbp), %rbx
	movq -336(%rbp), %rdi
	movq %r9, %r15
	movq -344(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r15, 16(%rcx)
	movq %r8, %r14
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb137:
	movq %rbx, %r12
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_constants_parse_const
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -392(%rbp)
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rsi, %rbx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb140
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -368(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -360(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -392(%rbp), %rbx
	movq -360(%rbp), %rdi
	movq %rdx, %r12
	movq -368(%rbp), %rdx
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %rdx, 8(%rcx)
	movq %r12, 16(%rcx)
	subq $16, %rsp
	movq %rsp, %rdx
	movq %r9, 0(%rdx)
	movq %r14, %r9
	movq %r13, %r8
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb140:
	movq %r15, %r9
	movq %rdx, %r12
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -384(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -376(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -392(%rbp), %rbx
	movq -376(%rbp), %rdi
	movq %r9, %r15
	movq -384(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r9, 8(%rcx)
	movq %r15, 16(%rcx)
	movq %r8, %r14
	subq $16, %rsp
	movq %rsp, %r8
	movq %rcx, 0(%r8)
	movq %r14, %r9
	movq %r13, %r8
	movq %rdx, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb142:
	movq %rbx, %r12
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %rbx
	movq %r12, %rdi
	callq _compiler_parser_parse_imports_parse_import
	movq %r15, %r9
	movq %r12, %rcx
	movq %rbx, %rdx
	movq -400(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rbx, -440(%rbp)
	movq %rsi, %rbx
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r12
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb145
	movq %r9, %r15
	movq 8(%rax), %r9
	movq %r9, -416(%rbp)
	movq 16(%rax), %rdi
	movq %rdi, -408(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %rbx, %rsi
	movq %rax, %rdx
	movq -440(%rbp), %rbx
	movq -408(%rbp), %rdi
	movq %r9, %r15
	movq -416(%rbp), %r9
	movq -464(%rbp), %rax
	movq $1, (%rdx)
	movq %r9, 8(%rdx)
	movq %rsi, 16(%rdx)
	movq %rcx, %r13
	subq $16, %rsp
	movq %rsp, %rcx
	movq %r15, 0(%rcx)
	movq %r8, %r9
	movq %r13, %r8
	movq %r12, %rcx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb145:
	movq %r9, %r15
	movq %r14, %r8
	movq %r8, %r14
	movq 8(%rax), %r8
	movq %r8, -432(%rbp)
	movq %rcx, %rdi
	callq _compiler_parser_parser_sync_to_decl
	movq %rax, -424(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rsi
	movq %rax, %rcx
	movq -440(%rbp), %rbx
	movq -424(%rbp), %rdi
	movq %r8, %r14
	movq -432(%rbp), %r8
	movq -464(%rbp), %rax
	movq $1, (%rcx)
	movq %r8, 8(%rcx)
	movq %r15, 16(%rcx)
	movq %rdx, %r12
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rcx, 0(%rdx)
	movq %r14, %r9
	movq %r13, %r8
	movq %r12, %rcx
	movq %rsi, %rdx
	movq %rax, %rsi
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	movq %rax, (%rbx)
	jmp Lbb153
Lbb147:
	movq %r9, %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rbx, %rcx
	movq %rdx, %r12
	movq %rsi, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq %rdi, -456(%rbp)
	movq (%rax), %rax
	movq 8(%rax), %r10
	movq %r10, -448(%rbp)
	movl $24, %edi
	callq _malloc
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %r12, %rdx
	movq %rax, %rsi
	movq -448(%rbp), %r10
	movq -456(%rbp), %rdi
	movq -464(%rbp), %rax
	movq $1, (%rsi)
	movq %r10, 8(%rsi)
	movq %rax, 16(%rsi)
	subq $16, %rsp
	movq %rsp, %rax
	movq %r9, 0(%rax)
	movq %r8, %r9
	movq %rcx, %r8
	movq %rdx, %rcx
	movq %rbx, %rdx
	callq _compiler_parser_parser_parse_module_loop
	subq $-16, %rsp
	jmp Lbb153
Lbb149:
	movq %rax, %rdi
	callq _compiler_parser_parser_make_output
	jmp Lbb153
Lbb151:
	movq %rax, %rdi
	callq _compiler_parser_parser_make_output
Lbb153:
	movq %rbp, %rsp
	subq $512, %rsp
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
_compiler_parser_parser_make_output:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %r8, %r14
	movq %rcx, %r13
	movq %rdx, %r12
	movq %rsi, %rbx
	movq %rdi, -16(%rbp)
	movq %r9, %rdi
	movq %rdi, %r15
	callq _donna_list_is_empty
	movq %r15, %rdi
	movq %rax, %rcx
	movq -16(%rbp), %rax
	cmpq $1, %rcx
	jz Lbb156
	callq _donna_list_reverse
	movq %rax, %rdi
	callq _compiler_parser_parser_ParseErrors
	jmp Lbb158
Lbb156:
	movq %rax, %rdi
	callq _donna_list_reverse
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _donna_list_reverse
	movq %r12, %rdi
	movq %rax, %r12
	callq _donna_list_reverse
	movq %r13, %rdi
	movq %rax, %r13
	callq _donna_list_reverse
	movq %r14, %rdi
	movq %rax, %r14
	callq _donna_list_reverse
	movq %r14, %rcx
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %r8
	callq _compiler_parser_ast_Module
	movq %rax, %rdi
	callq _compiler_parser_parser_ParseOk
Lbb158:
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parser_make_output */

.text
.balign 16
_compiler_parser_parser_sync_to_decl:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb161
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq _compiler_parser_parser_sync_rest
	jmp Lbb162
Lbb161:
	leaq _donna_nil(%rip), %rax
Lbb162:
	leave
	ret
/* end function compiler_parser_parser_sync_to_decl */

.text
.balign 16
_compiler_parser_parser_sync_rest:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _compiler_parser_parse_result_skip_newlines
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb210
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edx
	jnz Lbb167
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb168
Lbb167:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $64, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb168:
	cmpl $0, %edx
	jnz Lbb211
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb172
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb173
Lbb172:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $14, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb173:
	cmpl $0, %edx
	jnz Lbb211
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb177
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb178
Lbb177:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $20, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb178:
	cmpl $0, %edx
	jnz Lbb211
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb182
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb183
Lbb182:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $22, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb183:
	cmpl $0, %edx
	jnz Lbb211
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb187
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb188
Lbb187:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $18, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb188:
	cmpl $0, %edx
	jnz Lbb211
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb192
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb193
Lbb192:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $11, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb193:
	cmpl $0, %edx
	jnz Lbb211
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb197
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb198
Lbb197:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $16, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb198:
	cmpl $0, %edx
	jnz Lbb211
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb202
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb203
Lbb202:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $8, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb203:
	cmpl $0, %edx
	jnz Lbb211
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb207
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb208
Lbb207:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $3, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb208:
	cmpl $0, %ecx
	jnz Lbb211
	movq 16(%rax), %rdi
	callq _compiler_parser_parser_sync_rest
	jmp Lbb211
Lbb210:
	leaq _donna_nil(%rip), %rax
Lbb211:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parser_sync_rest */

