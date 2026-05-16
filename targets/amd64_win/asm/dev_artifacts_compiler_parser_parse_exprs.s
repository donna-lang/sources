.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str56:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
str63:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
str64:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str248:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str268:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str299:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str392:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str399:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str530:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str537:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str619:
	.ascii "= or :"
	.byte 0
/* end data */

.data
.balign 8
str626:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str2375:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str2382:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str2383:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str3023:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str3030:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str3031:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str3144:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
str3151:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
str3152:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str3304:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str3311:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str3546:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
str3553:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3635:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3642:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3797:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str3947:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
str3954:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
str3955:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str4445:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str4530:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str4688:
	.ascii "->"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_exprs_parse_expr
compiler_parser_parse_exprs_parse_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_pipe
	subq $-32, %rsp
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_expr */

.text
.balign 16
.globl compiler_parser_parse_exprs_parse_block
compiler_parser_parse_exprs_parse_block:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
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
	jnz Lbb4
	movl $0, %eax
	jmp Lbb5
Lbb4:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $62, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb5:
	cmpl $0, %eax
	jnz Lbb14
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb9
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb11
Lbb9:
	movq $1, (%rax)
	movl $1, %eax
Lbb11:
	cmpl $0, %eax
	jnz Lbb13
	subq $32, %rsp
	leaq str64(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str63(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb15
Lbb13:
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
	leaq str56(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb15
Lbb14:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_parser_parse_exprs_parse_block_stmts
	subq $-32, %rsp
Lbb15:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_block */

.text
.balign 16
.globl compiler_parser_parse_exprs_parse_stmt
compiler_parser_parse_exprs_parse_stmt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb18
	movl $0, %eax
	jmp Lbb19
Lbb18:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $17, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb19:
	cmpl $0, %eax
	jnz Lbb23
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb22
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %r13, %rcx
	callq compiler_parser_parse_exprs_expr_span
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $2, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb24
Lbb22:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb24
Lbb23:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_let
	subq $-32, %rsp
Lbb24:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_stmt */

.text
.balign 16
compiler_parser_parse_exprs_parse_block_stmts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rdi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rdx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb27
	movl $0, %esi
	jmp Lbb28
Lbb27:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $63, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb28:
	cmpl $0, %esi
	jnz Lbb34
	cmpq $0, %rdx
	jz Lbb33
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_stmt
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %rdi
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb32
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r13, %rdx
	movq %r12, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $32, %rsp
	movq %rdx, %rdi
	callq compiler_parser_parse_exprs_parse_block_stmts
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb35
Lbb32:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb35
Lbb33:
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $13, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb35
Lbb34:
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $13, (%rdi)
	movq %rbx, 8(%rdi)
	movq %rdx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb35:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_block_stmts */

.text
.balign 16
compiler_parser_parse_exprs_parse_let:
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
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb38
	movl $0, %esi
	jmp Lbb39
Lbb38:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $4, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb39:
	cmpl $0, %esi
	jnz Lbb77
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb43
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb48
Lbb43:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rdi
	cmpq $6, %rdi
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ebx
	jnz Lbb46
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb47
Lbb46:
	movq %rcx, %r12
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %r13
	leaq str248(%rip), %rdx
	callq strcmp
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rbx, %rax
	movq %rax, (%rdi)
Lbb47:
	andq $1, %rax
	movq %rax, (%rsi)
Lbb48:
	cmpl $0, %eax
	jnz Lbb76
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rdx, %rsi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb52
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb53
Lbb52:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb53:
	cmpl $0, %eax
	jnz Lbb74
	subq $32, %rsp
	callq compiler_parser_parse_patterns_parse_pattern
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb73
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdx, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb58
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb59
Lbb58:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $28, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb59:
	cmpl $0, %ecx
	jnz Lbb68
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb63
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb65
Lbb63:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb65:
	cmpl $0, %ecx
	jnz Lbb67
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	leaq str399(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r13, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb72
Lbb67:
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
	leaq str392(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb72
Lbb68:
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb70
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %r13, %rdx
	movq %rax, %r13
	subq $-32, %rsp
	movq $1, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movq %rdx, 24(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb71
Lbb70:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb71:
	movq %rax, (%rdi)
Lbb72:
	movq %rax, (%rsi)
	jmp Lbb78
Lbb73:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb78
Lbb74:
	movq %rsi, %rdx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq %rdx, %rdi
	movq 8(%rax), %rdx
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str299(%rip), %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_let_name
	subq $-32, %rsp
	jmp Lbb78
Lbb76:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	leaq str268(%rip), %r8
	callq compiler_parser_parse_exprs_parse_let_name
	subq $-32, %rsp
	jmp Lbb78
Lbb77:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq 8(%rax), %r8
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_let_name
	subq $-32, %rsp
Lbb78:
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
/* end function compiler_parser_parse_exprs_parse_let */

.text
.balign 16
compiler_parser_parse_exprs_parse_let_name:
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
	movq %r8, %r13
	movq %rdx, %rbx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb81
	movl $0, %eax
	jmp Lbb82
Lbb81:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $24, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb82:
	cmpl $0, %eax
	jnz Lbb99
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb86
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb87
Lbb86:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $28, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb87:
	cmpl $0, %eax
	jnz Lbb96
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb91
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb93
Lbb91:
	movq $1, (%rax)
	movl $1, %eax
Lbb93:
	cmpl $0, %eax
	jnz Lbb95
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str626(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb120
Lbb95:
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
	leaq str619(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb120
Lbb96:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb98
	movq 8(%rax), %r12
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %r13, %r8
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $0, (%rbx)
	movq %r8, 8(%rbx)
	leaq donna_option_None(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movq %rdx, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb120
Lbb98:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb120
Lbb99:
	movq %r13, %rdi
	movq %rbx, %rsi
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type
	movq %rdi, %r8
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb119
	movq 8(%rax), %r15
	movq 16(%rax), %rax
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
	jnz Lbb104
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb105
Lbb104:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $28, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb105:
	cmpl $0, %ecx
	jnz Lbb114
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb109
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb111
Lbb109:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb111:
	cmpl $0, %ecx
	jnz Lbb113
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	leaq str537(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb118
Lbb113:
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
	leaq str530(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb118
Lbb114:
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb116
	movq 8(%rax), %r14
	movq 16(%rax), %rax
	movq %rax, -16(%rbp)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	xchgq %rax, %r15
	subq $-32, %rsp
	movq $1, (%r15)
	movq %rax, 8(%r15)
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %r13, %r8
	movq %r12, %rdx
	movq %rax, %r13
	movq -16(%rbp), %r12
	subq $-32, %rsp
	movq $0, (%r13)
	movq %r8, 8(%r13)
	movq %r15, 16(%r13)
	movq %r14, 24(%r13)
	movq %rdx, 32(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb117
Lbb116:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb117:
	movq %rax, (%rdi)
Lbb118:
	movq %rax, (%rsi)
	jmp Lbb120
Lbb119:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb120:
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
/* end function compiler_parser_parse_exprs_parse_let_name */

.text
.balign 16
compiler_parser_parse_exprs_parse_pipe:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_or_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb123
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_pipe_loop
	subq $-32, %rsp
	jmp Lbb124
Lbb123:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb124:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_pipe */

.text
.balign 16
compiler_parser_parse_exprs_parse_pipe_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	subq $32, %rsp
	movq %rcx, %rsi
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb127
	movl $0, %eax
	jmp Lbb128
Lbb127:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $59, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb128:
	cmpl $0, %eax
	jnz Lbb131
	movq %rsi, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb134
Lbb131:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_or_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb133
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $32, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $14, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	movq %rdi, 24(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_pipe_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb134
Lbb133:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb134:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_pipe_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_or_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_and_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb137
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_or_loop
	subq $-32, %rsp
	jmp Lbb138
Lbb137:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb138:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_or_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_or_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb141
	movl $0, %eax
	jmp Lbb142
Lbb141:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $57, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb142:
	cmpl $0, %eax
	jnz Lbb144
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb147
Lbb144:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_and_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb146
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BOr(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_or_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb147
Lbb146:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb147:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_or_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_and_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_cmp_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb150
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_and_loop
	subq $-32, %rsp
	jmp Lbb151
Lbb150:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb151:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_and_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_and_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb154
	movl $0, %eax
	jmp Lbb155
Lbb154:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $56, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb155:
	cmpl $0, %eax
	jnz Lbb157
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb160
Lbb157:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_cmp_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb159
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BAnd(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_and_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb160
Lbb159:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb160:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_and_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_cmp_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb163
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_cmp_loop
	subq $-32, %rsp
	jmp Lbb164
Lbb163:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb164:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_cmp_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_cmp_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb167
	movl $0, %esi
	jmp Lbb168
Lbb167:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $46, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb168:
	cmpl $0, %esi
	jnz Lbb250
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb172
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb173
Lbb172:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $47, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb173:
	cmpl $0, %esi
	jnz Lbb246
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb177
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb178
Lbb177:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $48, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb178:
	cmpl $0, %esi
	jnz Lbb242
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb182
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb183
Lbb182:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $50, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb183:
	cmpl $0, %esi
	jnz Lbb238
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb187
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb188
Lbb187:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $52, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb188:
	cmpl $0, %esi
	jnz Lbb234
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb192
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb193
Lbb192:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $54, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb193:
	cmpl $0, %esi
	jnz Lbb230
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb197
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb198
Lbb197:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $49, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb198:
	cmpl $0, %esi
	jnz Lbb226
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb202
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb203
Lbb202:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $51, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb203:
	cmpl $0, %esi
	jnz Lbb222
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb207
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb208
Lbb207:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $53, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb208:
	cmpl $0, %esi
	jnz Lbb218
	movq %rdx, %rbx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb212
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb213
Lbb212:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $55, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb213:
	cmpl $0, %eax
	jnz Lbb215
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb254
Lbb215:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb217
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BGtEqDot(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb217:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb218:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb221
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BGtDot(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb221:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb222:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb225
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BLtEqDot(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb225:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb226:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb229
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BLtDot(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb229:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb230:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb233
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BGtEq(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb233:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb234:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb237
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BGt(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb237:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb238:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb241
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BLtEq(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb241:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb242:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb245
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BLt(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb245:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb246:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb249
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BNotEq(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb249:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb250:
	movq %rdx, %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb253
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $10, (%rbx)
	leaq compiler_parser_ast_BEq(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rdx, 16(%rbx)
	movq %r13, 24(%rbx)
	movq %r12, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb254
Lbb253:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb254:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_cmp_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_concat_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb257
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_loop
	subq $-32, %rsp
	jmp Lbb258
Lbb257:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb258:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_concat_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_concat_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb261
	movl $0, %eax
	jmp Lbb262
Lbb261:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $60, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb262:
	cmpl $0, %eax
	jnz Lbb264
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb267
Lbb264:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb266
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BConcat(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb267
Lbb266:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb267:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_concat_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_add_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb270
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	jmp Lbb271
Lbb270:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb271:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_add_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_add_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb274
	movl $0, %edx
	jmp Lbb275
Lbb274:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $37, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb275:
	cmpl $0, %edx
	jnz Lbb301
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb279
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb280
Lbb279:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $39, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb280:
	cmpl $0, %edx
	jnz Lbb298
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb284
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb285
Lbb284:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $38, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb285:
	cmpl $0, %edx
	jnz Lbb295
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb289
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb290
Lbb289:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $40, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb290:
	cmpl $0, %eax
	jnz Lbb292
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb304
Lbb292:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb294
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BSubDot(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb304
Lbb294:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb304
Lbb295:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb297
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BAddDot(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb304
Lbb297:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb304
Lbb298:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb300
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BSub(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb304
Lbb300:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb304
Lbb301:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb303
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BAdd(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb304
Lbb303:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb304:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_add_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_mul_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb307
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	jmp Lbb308
Lbb307:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb308:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_mul_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_mul_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb311
	movl $0, %edx
	jmp Lbb312
Lbb311:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $41, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb312:
	cmpl $0, %edx
	jnz Lbb346
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb316
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb317
Lbb316:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $43, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb317:
	cmpl $0, %edx
	jnz Lbb343
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb321
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb322
Lbb321:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $45, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb322:
	cmpl $0, %edx
	jnz Lbb340
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb326
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb327
Lbb326:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $42, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb327:
	cmpl $0, %edx
	jnz Lbb337
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb331
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb332
Lbb331:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $44, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb332:
	cmpl $0, %eax
	jnz Lbb334
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb349
Lbb334:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb336
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BDivDot(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb349
Lbb336:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb349
Lbb337:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb339
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BMulDot(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb349
Lbb339:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb349
Lbb340:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb342
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BMod(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb349
Lbb342:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb349
Lbb343:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb345
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BDiv(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb349
Lbb345:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb349
Lbb346:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb348
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $10, (%rdx)
	leaq compiler_parser_ast_BMul(%rip), %rax
	movq %rax, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rbx, 24(%rdx)
	movq %rdi, 32(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb349
Lbb348:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb349:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_mul_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_unary_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb352
	movl $0, %edx
	jmp Lbb353
Lbb352:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $39, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb353:
	cmpl $0, %edx
	jnz Lbb363
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb357
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb358
Lbb357:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $58, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb358:
	cmpl $0, %eax
	jnz Lbb360
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_expr
	subq $-32, %rsp
	jmp Lbb366
Lbb360:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb362
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $11, (%rbx)
	leaq compiler_parser_ast_UNot(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb366
Lbb362:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb366
Lbb363:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb365
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $11, (%rbx)
	leaq compiler_parser_ast_UNeg(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r13, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb366
Lbb365:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb366:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_unary_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_primary
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb369
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_loop
	subq $-32, %rsp
	jmp Lbb370
Lbb369:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb370:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_call_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %rdx, %r12
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb373
	movl $0, %edx
	jmp Lbb374
Lbb373:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $30, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb374:
	cmpl $0, %edx
	jnz Lbb396
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb378
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb383
Lbb378:
	movq 8(%rcx), %rdx
	movq 16(%rcx), %rdi
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb381
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb382
Lbb381:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $4, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb382:
	cmpq $26, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	andq %rdi, %rdx
	movq %rdx, (%rsi)
Lbb383:
	cmpl $0, %edx
	jnz Lbb395
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb387
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb392
Lbb387:
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
	jnz Lbb390
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb391
Lbb390:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $5, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb391:
	cmpq $26, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb392:
	cmpl $0, %eax
	jnz Lbb394
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rcx, 16(%rax)
	jmp Lbb399
Lbb394:
	movq 16(%rcx), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rdx
	movq 8(%rdx), %rdi
	movq 8(%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rbx
	movl $32, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $5, (%rdx)
	movq %r12, 8(%rdx)
	movq %rdi, 16(%rdx)
	movq %rsi, 24(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_loop
	subq $-32, %rsp
	jmp Lbb399
Lbb395:
	movq 16(%rcx), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rdx
	movq 8(%rdx), %rdi
	movq 8(%rax), %rsi
	subq $32, %rsp
	movq %rcx, %rbx
	movl $32, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $5, (%rdx)
	movq %r12, 8(%rdx)
	movq %rdi, 16(%rdx)
	movq %rsi, 24(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_loop
	subq $-32, %rsp
	jmp Lbb399
Lbb396:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_exprs_parse_call_args
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb398
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r13
	movl $32, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $9, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	movq %rdi, 24(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb399
Lbb398:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
Lbb399:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_call_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_args:
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
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_strip_arg_label
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb402
	movl $0, %edx
	jmp Lbb403
Lbb402:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb403:
	cmpl $0, %edx
	jnz Lbb428
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_expr
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb427
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
	jnz Lbb408
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb409
Lbb408:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb409:
	cmpl $0, %r8d
	jnz Lbb424
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rdx
	jz Lbb413
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb414
Lbb413:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $31, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb414:
	cmpl $0, %r8d
	jnz Lbb423
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb418
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb420
Lbb418:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb420:
	cmpl $0, %ecx
	jnz Lbb422
	subq $32, %rsp
	leaq str2383(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	leaq str2382(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb426
Lbb422:
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
	leaq str2375(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb426
Lbb423:
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
	jmp Lbb426
Lbb424:
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
	callq compiler_parser_parse_exprs_parse_call_args
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb426:
	movq %rax, (%rsi)
	jmp Lbb429
Lbb427:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb429
Lbb428:
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
Lbb429:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_call_args */

.text
.balign 16
compiler_parser_parse_exprs_strip_arg_label:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb432
	movl $0, %ecx
	jmp Lbb437
Lbb432:
	movq 8(%rax), %rcx
	movq 16(%rax), %rdx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rdx), %rsi
	cmpq $1, %rsi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb435
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb436
Lbb435:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $24, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb436:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdx, %rcx
Lbb437:
	cmpl $0, %ecx
	jz Lbb439
	movq 16(%rax), %rax
	movq 16(%rax), %rax
Lbb439:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_strip_arg_label */

.text
.balign 16
compiler_parser_parse_exprs_parse_primary:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb442
	movl $0, %eax
	jmp Lbb443
Lbb442:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb443:
	cmpl $0, %eax
	jnz Lbb572
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb447
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb448
Lbb447:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb448:
	cmpl $0, %eax
	jnz Lbb571
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb452
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb453
Lbb452:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $2, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb453:
	cmpl $0, %eax
	jnz Lbb570
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb457
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb462
Lbb457:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rdi
	cmpq $7, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb460
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb461
Lbb460:
	movq 8(%rax), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	andq %r8, %rax
	movq %rax, (%rdi)
Lbb461:
	andq $1, %rax
	movq %rax, (%rsi)
Lbb462:
	cmpl $0, %eax
	jnz Lbb569
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb466
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb471
Lbb466:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rdi
	cmpq $7, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb469
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb470
Lbb469:
	movq 8(%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r8, %rax
	movq %rax, (%rdi)
Lbb470:
	andq $1, %rax
	movq %rax, (%rsi)
Lbb471:
	cmpl $0, %eax
	jnz Lbb568
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb475
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb476
Lbb475:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb476:
	cmpl $0, %eax
	jnz Lbb567
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb480
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb481
Lbb480:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $5, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb481:
	cmpl $0, %eax
	jnz Lbb566
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb485
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb486
Lbb485:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $12, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb486:
	cmpl $0, %eax
	jnz Lbb563
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb490
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb491
Lbb490:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $19, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb491:
	cmpl $0, %eax
	jnz Lbb560
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb495
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb496
Lbb495:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $21, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb496:
	cmpl $0, %eax
	jnz Lbb559
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb500
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb505
Lbb500:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb503
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb504
Lbb503:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $30, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb504:
	cmpq $29, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb505:
	cmpl $0, %eax
	jnz Lbb558
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb509
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb510
Lbb509:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb510:
	cmpl $0, %eax
	jnz Lbb557
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb514
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb515
Lbb514:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb515:
	cmpl $0, %eax
	jnz Lbb540
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb519
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb520
Lbb519:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $10, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb520:
	cmpl $0, %eax
	jnz Lbb539
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb524
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb529
Lbb524:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb527
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb528
Lbb527:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $30, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb528:
	cmpq $14, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb529:
	cmpl $0, %eax
	jnz Lbb538
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb533
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb535
Lbb533:
	movq $1, (%rax)
	movl $1, %eax
Lbb535:
	cmpl $0, %eax
	jnz Lbb537
	subq $32, %rsp
	leaq str3152(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str3151(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb573
Lbb537:
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
	leaq str3144(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb573
Lbb538:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_lambda
	subq $-32, %rsp
	jmp Lbb573
Lbb539:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_case_expr
	subq $-32, %rsp
	jmp Lbb573
Lbb540:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb556
	movq 8(%rax), %r12
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb544
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb545
Lbb544:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb545:
	cmpl $0, %ecx
	jnz Lbb554
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb549
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb551
Lbb549:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb551:
	cmpl $0, %ecx
	jnz Lbb553
	subq $32, %rsp
	leaq str3031(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	leaq str3030(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb555
Lbb553:
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
	leaq str3023(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb555
Lbb554:
	movq 16(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
Lbb555:
	movq %rax, (%rsi)
	jmp Lbb573
Lbb556:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb573
Lbb557:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_list_expr
	subq $-32, %rsp
	jmp Lbb573
Lbb558:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_tuple_expr
	subq $-32, %rsp
	jmp Lbb573
Lbb559:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $18, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb573
Lbb560:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb562
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $17, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb573
Lbb562:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb573
Lbb563:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb565
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $16, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb573
Lbb565:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb573
Lbb566:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $4, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb573
Lbb567:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $4, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb573
Lbb568:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $3, (%rdi)
	movq $0, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb573
Lbb569:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $3, (%rdi)
	movq $1, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb573
Lbb570:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $2, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb573
Lbb571:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $1, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb573
Lbb572:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $0, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb573:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_primary */

.text
.balign 16
compiler_parser_parse_exprs_parse_tuple_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb576
	movl $0, %ecx
	jmp Lbb577
Lbb576:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb577:
	cmpl $0, %ecx
	jnz Lbb579
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rdx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_tuple_args
	subq $-32, %rsp
	jmp Lbb581
Lbb579:
	movq %rdx, %rdi
	movq 16(%rax), %rsi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $6, (%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rdx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb581:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_tuple_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_tuple_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rbx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb604
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rdi, 8(%r8)
	movq %rsi, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %eax
	jnz Lbb586
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb587
Lbb586:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
Lbb587:
	cmpl $0, %eax
	jnz Lbb602
	movq %rdx, %rbx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb591
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb592
Lbb591:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $31, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb592:
	cmpl $0, %eax
	jnz Lbb601
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb596
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb598
Lbb596:
	movq $1, (%rax)
	movl $1, %eax
Lbb598:
	cmpl $0, %eax
	jnz Lbb600
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str3311(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb605
Lbb600:
	movq 8(%r12), %rax
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
	leaq str3304(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb605
Lbb601:
	movq 16(%r12), %rdi
	subq $32, %rsp
	movq %r8, %rcx
	callq donna_list_reverse
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $6, (%rbx)
	movq %r12, 8(%rbx)
	movq %rdx, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb605
Lbb602:
	movq %r8, %rbx
	movq %rdx, %rdi
	movq 16(%r12), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_tuple_args
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb605
Lbb604:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb605:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_tuple_args */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb608
	movl $0, %ecx
	jmp Lbb609
Lbb608:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb609:
	cmpl $0, %ecx
	jnz Lbb611
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rdx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_list_args
	subq $-32, %rsp
	jmp Lbb613
Lbb611:
	movq %rdx, %rdi
	movq 16(%rax), %rsi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rdx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb613:
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_list_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %r12
	movq %rdx, %rbx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb655
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rsi, 8(%rcx)
	movq %r8, 16(%rcx)
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r8d
	jnz Lbb618
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb623
Lbb618:
	movq 8(%rdi), %r8
	movq 16(%rdi), %r10
	movq (%r8), %r8
	movq (%r8), %r8
	movq (%r10), %r11
	cmpq $1, %r11
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %r11
	cmpl $0, %ebx
	jnz Lbb621
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb622
Lbb621:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $27, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb622:
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
Lbb623:
	cmpl $0, %r8d
	jnz Lbb653
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz Lbb627
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb628
Lbb627:
	movq 8(%rdi), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb628:
	cmpl $0, %r8d
	jnz Lbb651
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz Lbb632
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb633
Lbb632:
	movq 8(%rdi), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $33, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb633:
	cmpl $0, %r8d
	jnz Lbb649
	subq $16, %rsp
	movq %rsp, %r8
	cmpq $1, %rax
	jz Lbb637
	movq $0, (%r8)
	movq %rdx, %rbx
	movl $0, %edx
	jmp Lbb638
Lbb637:
	movq 8(%rdi), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $27, %r9
	movq %rdx, %rbx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
Lbb638:
	cmpl $0, %edx
	jnz Lbb648
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb643
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb645
Lbb643:
	movq $1, (%rax)
	movl $1, %eax
Lbb645:
	cmpl $0, %eax
	jnz Lbb647
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str3553(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb656
Lbb647:
	movq 8(%rdi), %rax
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
	leaq str3546(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb656
Lbb648:
	movq 16(%rdi), %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq compiler_parser_parse_exprs_parse_list_spread
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb656
Lbb649:
	movq %rdx, %rbx
	movq %rdi, %r12
	movq 16(%rdi), %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	movq %r12, 8(%rbx)
	movq %rdx, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb656
Lbb651:
	movq %rdi, %r12
	movq %rdx, %rbx
	movq %rcx, %rdi
	movq 16(%r12), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %r8
	movq %rdx, %rbx
	callq compiler_parser_parse_exprs_parse_list_args
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb656
Lbb653:
	movq %rdx, %rbx
	movq 16(%rdi), %rax
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_list_spread
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb656
Lbb655:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb656:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_list_args */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_spread:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq %r8, %r13
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb672
	movq 8(%rax), %r12
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz Lbb661
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb662
Lbb661:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdi)
Lbb662:
	cmpl $0, %ecx
	jnz Lbb671
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb666
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb668
Lbb666:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb668:
	cmpl $0, %ecx
	jnz Lbb670
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str3642(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb673
Lbb670:
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
	leaq str3635(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb673
Lbb671:
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %r13, %r8
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $8, (%rbx)
	movq %r8, 8(%rbx)
	movq %r12, 16(%rbx)
	movq %rdx, 24(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb673
Lbb672:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb673:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_list_spread */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_expr:
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
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb702
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb678
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb679
Lbb678:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $24, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb679:
	cmpl $0, %ecx
	jnz Lbb688
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb683
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb685
Lbb683:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb685:
	cmpl $0, %ecx
	jnz Lbb687
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str3797(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rdx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb703
Lbb687:
	movq 8(%rax), %rax
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $9, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb703
Lbb688:
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb691
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb692
Lbb691:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $62, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb692:
	cmpl $0, %ecx
	jnz Lbb697
	subq $32, %rsp
	movq %rdx, %r13
	leaq donna_nil(%rip), %rdx
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_inline_case_arms
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb695
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %r13, %rdx
	movq %rax, %r13
	subq $-32, %rsp
	movq $12, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movq %rdx, 24(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb696
Lbb695:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb696:
	movq %rax, (%rdi)
	jmp Lbb701
Lbb697:
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %r13
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_exprs_parse_case_arms
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb699
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %r13, %rdx
	movq %rax, %r13
	subq $-32, %rsp
	movq $12, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movq %rdx, 24(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb700
Lbb699:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb700:
	movq %rax, (%rdi)
Lbb701:
	movq %rax, (%rsi)
	jmp Lbb703
Lbb702:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb703:
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
/* end function compiler_parser_parse_exprs_parse_case_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_arms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb706
	movl $0, %esi
	jmp Lbb707
Lbb706:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $63, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb707:
	cmpl $0, %esi
	jnz Lbb713
	cmpq $0, %rdx
	jz Lbb712
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_case_arm
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %rdi
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb711
	movq 8(%rax), %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rdi, 16(%rdx)
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_case_arms
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb714
Lbb711:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb714
Lbb712:
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb714
Lbb713:
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
Lbb714:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_case_arms */

.text
.balign 16
compiler_parser_parse_exprs_parse_inline_case_arms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq (%rsi), %rax
	cmpq $0, %rax
	jz Lbb739
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb719
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb720
Lbb719:
	movq 8(%rsi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $63, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb720:
	cmpl $0, %eax
	jnz Lbb738
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq compiler_parser_parse_exprs_is_pattern_start
	movq %rdi, %rcx
	subq $-32, %rsp
	movq %rsi, %r12
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb726
	subq $32, %rsp
	movq %rcx, %rdi
	movq %r12, %rcx
	callq compiler_parser_parse_exprs_parse_case_arm
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %rbx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb724
	movq 8(%rax), %r12
	movq 16(%rax), %rcx
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
	callq compiler_parser_parse_exprs_parse_inline_case_arms
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb725
Lbb724:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb725:
	movq %rax, (%rsi)
	jmp Lbb740
Lbb726:
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb728
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb737
Lbb728:
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz Lbb731
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb733
Lbb731:
	movq $1, (%rax)
	movl $1, %eax
Lbb733:
	cmpl $0, %eax
	jnz Lbb735
	subq $32, %rsp
	leaq str3955(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $7, (%r12)
	leaq str3954(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb736
Lbb735:
	movq 8(%r12), %rax
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
	leaq str3947(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb736:
	movq %rax, (%rdi)
Lbb737:
	movq %rax, (%rsi)
	jmp Lbb740
Lbb738:
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
	jmp Lbb740
Lbb739:
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rsi, 8(%rax)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb740:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_inline_case_arms */

.text
.balign 16
compiler_parser_parse_exprs_is_pattern_start:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb743
	movl $0, %ecx
	jmp Lbb744
Lbb743:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $6, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb744:
	cmpl $0, %ecx
	jnz Lbb804
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb748
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb749
Lbb748:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb749:
	cmpl $0, %ecx
	jnz Lbb803
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb753
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb754
Lbb753:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb754:
	cmpl $0, %ecx
	jnz Lbb802
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb758
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb759
Lbb758:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb759:
	cmpl $0, %ecx
	jnz Lbb801
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb763
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb764
Lbb763:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $7, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb764:
	cmpl $0, %ecx
	jnz Lbb800
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb768
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb769
Lbb768:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $5, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb769:
	cmpl $0, %ecx
	jnz Lbb799
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb773
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb774
Lbb773:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb774:
	cmpl $0, %ecx
	jnz Lbb798
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb778
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb783
Lbb778:
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
	jnz Lbb781
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb782
Lbb781:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $0, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb782:
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
Lbb783:
	cmpl $0, %ecx
	jnz Lbb797
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb787
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb788
Lbb787:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $29, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb788:
	cmpl $0, %ecx
	jnz Lbb796
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb792
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb793
Lbb792:
	movq 8(%rax), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb793:
	cmpl $0, %eax
	jnz Lbb795
	movl $0, %eax
	jmp Lbb805
Lbb795:
	movl $1, %eax
	jmp Lbb805
Lbb796:
	movl $1, %eax
	jmp Lbb805
Lbb797:
	movl $1, %eax
	jmp Lbb805
Lbb798:
	movl $1, %eax
	jmp Lbb805
Lbb799:
	movl $1, %eax
	jmp Lbb805
Lbb800:
	movl $1, %eax
	jmp Lbb805
Lbb801:
	movl $1, %eax
	jmp Lbb805
Lbb802:
	movl $1, %eax
	jmp Lbb805
Lbb803:
	movl $1, %eax
	jmp Lbb805
Lbb804:
	movl $1, %eax
Lbb805:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_is_pattern_start */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_arm:
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
	callq compiler_parser_parse_patterns_parse_pattern
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb851
	movq 8(%rax), %rsi
	movq 16(%rax), %rbx
	subq $32, %rsp
	movq %rsi, %rcx
	callq compiler_parser_parse_exprs_pat_span
	movq %rsi, %rdx
	movq %rax, %r15
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rbx), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %eax
	jnz Lbb810
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb811
Lbb810:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $15, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
Lbb811:
	cmpl $0, %eax
	jnz Lbb829
	movq %rdx, %r12
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb815
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb816
Lbb815:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $23, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb816:
	cmpl $0, %eax
	jnz Lbb825
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb820
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb822
Lbb820:
	movq $1, (%rax)
	movl $1, %eax
Lbb822:
	cmpl $0, %eax
	jnz Lbb824
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str4530(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r15, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb852
Lbb824:
	movq 8(%rbx), %rax
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $10, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb852
Lbb825:
	movq 16(%rbx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_arm_body
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb827
	movq 8(%rax), %r13
	movq 16(%rax), %rbx
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rax, %r12
	subq $-32, %rsp
	movq $0, (%r12)
	movq %rdx, 8(%r12)
	leaq donna_option_None(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movq %r15, 32(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb828
Lbb827:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb828:
	movq %rax, (%rsi)
	jmp Lbb852
Lbb829:
	movq %rdx, %rdi
	movq 16(%rbx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb849
	movq 8(%rax), %r13
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb834
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb835
Lbb834:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $23, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb835:
	cmpl $0, %ecx
	jnz Lbb844
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb839
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb841
Lbb839:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb841:
	cmpl $0, %ecx
	jnz Lbb843
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $7, (%r12)
	leaq str4445(%rip), %rax
	movq %rax, 8(%r12)
	movq %r15, 16(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb848
Lbb843:
	movq 8(%rax), %rax
	movq 8(%rax), %r13
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $10, (%r12)
	movq %r13, 8(%r12)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb848
Lbb844:
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_arm_body
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb846
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 16(%rax), %rax
	movq %rax, -8(%rbp)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r13, 8(%rcx)
	subq $32, %rsp
	movq %rcx, %r13
	movl $40, %ecx
	callq malloc
	movq %r14, %rdx
	movq %r13, %rcx
	movq %rax, %r14
	movq -8(%rbp), %r13
	movq -16(%rbp), %rax
	subq $-32, %rsp
	movq $0, (%r14)
	movq %rdx, 8(%r14)
	movq %rcx, 16(%r14)
	movq %rax, 24(%r14)
	movq %r15, 32(%r14)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb847
Lbb846:
	movq 8(%rax), %r13
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb847:
	movq %rax, (%rbx)
Lbb848:
	movq %rax, (%rdi)
	jmp Lbb850
Lbb849:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb850:
	movq %rax, (%rsi)
	jmp Lbb852
Lbb851:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb852:
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
/* end function compiler_parser_parse_exprs_parse_case_arm */

.text
.balign 16
compiler_parser_parse_exprs_parse_arm_body:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb855
	movl $0, %eax
	jmp Lbb860
Lbb855:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdx
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdx), %rsi
	cmpq $1, %rsi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb858
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb859
Lbb858:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $62, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb859:
	cmpq $61, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
Lbb860:
	cmpl $0, %eax
	jnz Lbb862
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	jmp Lbb863
Lbb862:
	movq 16(%rcx), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_parser_parse_exprs_parse_block_stmts
	subq $-32, %rsp
Lbb863:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_arm_body */

.text
.balign 16
compiler_parser_parse_exprs_parse_lambda:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_params_parse_params
	movq %rsi, %rdx
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb882
	movq 8(%rax), %r14
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz Lbb868
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb869
Lbb868:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $23, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdi)
Lbb869:
	cmpl $0, %ecx
	jnz Lbb878
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb873
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb875
Lbb873:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb875:
	cmpl $0, %ecx
	jnz Lbb877
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str4688(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r12, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb883
Lbb877:
	movq 8(%rax), %rax
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $10, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb883
Lbb878:
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb880
	movq 8(%rax), %r13
	movq 16(%rax), %rbx
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rax, %r12
	subq $-32, %rsp
	movq $15, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movq %rdx, 24(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb881
Lbb880:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb881:
	movq %rax, (%rsi)
	jmp Lbb883
Lbb882:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb883:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_lambda */

.text
.balign 16
.globl compiler_parser_parse_exprs_expr_span
compiler_parser_parse_exprs_expr_span:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb920
	cmpq $1, %rax
	jz Lbb919
	cmpq $2, %rax
	jz Lbb918
	cmpq $3, %rax
	jz Lbb917
	cmpq $4, %rax
	jz Lbb916
	cmpq $5, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb915
	cmpq $6, %rax
	jz Lbb914
	cmpq $7, %rax
	jz Lbb913
	cmpq $8, %rax
	jz Lbb912
	cmpq $9, %rax
	jz Lbb911
	cmpq $10, %rax
	jz Lbb910
	cmpq $11, %rax
	jz Lbb909
	cmpq $12, %rax
	jz Lbb908
	cmpq $13, %rax
	jz Lbb907
	cmpq $14, %rax
	jz Lbb906
	cmpq $15, %rax
	jz Lbb905
	cmpq $16, %rax
	jz Lbb904
	cmpq $17, %rax
	jz Lbb903
	movq 8(%rcx), %rax
	jmp Lbb921
Lbb903:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb904:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb905:
	movq 24(%rcx), %rax
	jmp Lbb921
Lbb906:
	movq 24(%rcx), %rax
	jmp Lbb921
Lbb907:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb908:
	movq 24(%rcx), %rax
	jmp Lbb921
Lbb909:
	movq 24(%rcx), %rax
	jmp Lbb921
Lbb910:
	movq 32(%rcx), %rax
	jmp Lbb921
Lbb911:
	movq 24(%rcx), %rax
	jmp Lbb921
Lbb912:
	movq 24(%rcx), %rax
	jmp Lbb921
Lbb913:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb914:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb915:
	movq 24(%rcx), %rax
	jmp Lbb921
Lbb916:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb917:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb918:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb919:
	movq 16(%rcx), %rax
	jmp Lbb921
Lbb920:
	movq 16(%rcx), %rax
Lbb921:
	ret
/* end function compiler_parser_parse_exprs_expr_span */

.text
.balign 16
compiler_parser_parse_exprs_pat_span:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb940
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb939
	cmpq $2, %rax
	jz Lbb938
	cmpq $3, %rax
	jz Lbb937
	cmpq $4, %rax
	jz Lbb936
	cmpq $5, %rax
	jz Lbb935
	cmpq $6, %rax
	jz Lbb934
	cmpq $7, %rax
	jz Lbb933
	cmpq $8, %rax
	jz Lbb932
	movq 32(%rcx), %rax
	jmp Lbb941
Lbb932:
	movq 24(%rcx), %rax
	jmp Lbb941
Lbb933:
	movq 16(%rcx), %rax
	jmp Lbb941
Lbb934:
	movq 16(%rcx), %rax
	jmp Lbb941
Lbb935:
	movq 16(%rcx), %rax
	jmp Lbb941
Lbb936:
	movq 16(%rcx), %rax
	jmp Lbb941
Lbb937:
	movq 16(%rcx), %rax
	jmp Lbb941
Lbb938:
	movq 16(%rcx), %rax
	jmp Lbb941
Lbb939:
	movq 16(%rcx), %rax
	jmp Lbb941
Lbb940:
	movq 8(%rcx), %rax
Lbb941:
	ret
/* end function compiler_parser_parse_exprs_pat_span */

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

