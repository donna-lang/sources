.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str56:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
_str63:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
_str64:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str248:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str268:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str299:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str392:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str399:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str530:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str537:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str619:
	.ascii "= or :"
	.byte 0
/* end data */

.data
.balign 8
_str626:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
_str2375:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str2382:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str2383:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str3023:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str3030:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str3031:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str3144:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
_str3151:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
_str3152:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str3304:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
_str3311:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
_str3546:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
_str3553:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str3635:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str3642:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
_str3797:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str3947:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
_str3954:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
_str3955:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str4445:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
_str4530:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
_str4688:
	.ascii "->"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_parser_parse_exprs_parse_expr
_compiler_parser_parse_exprs_parse_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_parse_pipe
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_expr */

.text
.balign 16
.globl _compiler_parser_parse_exprs_parse_block
_compiler_parser_parse_exprs_parse_block:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
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
	leaq _str64(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq _str63(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb15
Lbb13:
	movq 8(%rcx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq _compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq _malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq _str56(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb15
Lbb14:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq 8(%rax), %rsi
	leaq _donna_nil(%rip), %rdx
	callq _compiler_parser_parse_exprs_parse_block_stmts
Lbb15:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_block */

.text
.balign 16
.globl _compiler_parser_parse_exprs_parse_stmt
_compiler_parser_parse_exprs_parse_stmt:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
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
	movq %rcx, %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb22
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movq %r15, %rdi
	callq _compiler_parser_parse_exprs_expr_span
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $2, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb24
Lbb22:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb24
Lbb23:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq 8(%rax), %rsi
	callq _compiler_parser_parse_exprs_parse_let
Lbb24:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_stmt */

.text
.balign 16
_compiler_parser_parse_exprs_parse_block_stmts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %rbx
	movq %rsi, %r15
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb27
	movl $0, %edx
	jmp Lbb28
Lbb27:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $63, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb28:
	cmpl $0, %edx
	jnz Lbb35
	cmpq $0, %rcx
	jz Lbb33
	movq %rdi, %r12
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_parse_stmt
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb32
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	movq %rsi, %r12
	callq _compiler_parser_parse_exprs_parse_block_stmts
	movq %rax, (%rbx)
	jmp Lbb37
Lbb32:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb37
Lbb33:
	movq %r15, %r12
	callq _donna_list_reverse
	movq %rax, %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $13, (%rbx)
	movq %r13, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb37
Lbb35:
	movq %r15, %r12
	movq 16(%rax), %rbx
	callq _donna_list_reverse
	movq %rax, %r13
	movl $24, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq $13, (%r12)
	movq %r13, 8(%r12)
	movq %rsi, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb37:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_block_stmts */

.text
.balign 16
_compiler_parser_parse_exprs_parse_let:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb40
	movl $0, %ecx
	jmp Lbb41
Lbb40:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb41:
	cmpl $0, %ecx
	jnz Lbb80
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb45
	movq $0, (%r12)
	movq %rsi, %rbx
	movl $0, %eax
	jmp Lbb50
Lbb45:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz Lbb48
	movq $0, (%r13)
	movq %rsi, %rbx
	movl $0, %eax
	jmp Lbb49
Lbb48:
	movq %rdi, %r15
	movq 8(%rax), %rdi
	movq %rsi, %rbx
	leaq _str248(%rip), %rsi
	callq _strcmp
	movq %r15, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r14, %rax
	movq %rax, (%r13)
Lbb49:
	andq $1, %rax
	movq %rax, (%r12)
Lbb50:
	cmpl $0, %eax
	jnz Lbb78
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb54
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb55
Lbb54:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb55:
	cmpl $0, %eax
	jnz Lbb76
	callq _compiler_parser_parse_patterns_parse_pattern
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb75
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	movq %rsi, %r14
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb60
	movq $0, (%rsi)
	movq %rcx, %r13
	movl $0, %ecx
	jmp Lbb61
Lbb60:
	movq 8(%rax), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $28, %rdi
	movq %rcx, %r13
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb61:
	cmpl $0, %ecx
	jnz Lbb70
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb65
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb67
Lbb65:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb67:
	cmpl $0, %ecx
	jnz Lbb69
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $7, (%r13)
	leaq _str399(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb74
Lbb69:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r14
	callq _compiler_lexer_token_to_string
	movq %rax, %r15
	movl $32, %edi
	callq _malloc
	movq %rax, %r13
	movq $6, (%r13)
	movq %r15, 8(%r13)
	leaq _str392(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb74
Lbb70:
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	movq %r13, %rcx
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb72
	movq %rcx, %r15
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 16(%rax), %rax
	movq %rax, -8(%rbp)
	movl $32, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %rax, %r15
	movq -8(%rbp), %r14
	movq -16(%rbp), %rax
	movq $1, (%r15)
	movq %rcx, 8(%r15)
	movq %rax, 16(%r15)
	movq %rsi, 24(%r15)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp Lbb73
Lbb72:
	movq 8(%rax), %r14
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb73:
	movq %rax, (%r12)
Lbb74:
	movq %rax, (%rbx)
	jmp Lbb81
Lbb75:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb81
Lbb76:
	movq %rbx, %rsi
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rax
	movq %rsi, %r12
	movq 8(%rax), %rsi
	movq %rdi, %rbx
	leaq _str299(%rip), %rdi
	callq ___rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq _compiler_parser_parse_exprs_parse_let_name
	jmp Lbb81
Lbb78:
	movq %rbx, %rsi
	movq 16(%rdi), %rdi
	leaq _str268(%rip), %rdx
	callq _compiler_parser_parse_exprs_parse_let_name
	jmp Lbb81
Lbb80:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rax
	movq 8(%rax), %rdx
	callq _compiler_parser_parse_exprs_parse_let_name
Lbb81:
	movq %rbp, %rsp
	subq $64, %rsp
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
_compiler_parser_parse_exprs_parse_let_name:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r13
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb84
	movl $0, %eax
	jmp Lbb85
Lbb84:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $24, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb85:
	cmpl $0, %eax
	jnz Lbb102
	movq %rdx, %r15
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb89
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb90
Lbb89:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $28, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb90:
	cmpl $0, %eax
	jnz Lbb99
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb94
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb96
Lbb94:
	movq $1, (%rax)
	movl $1, %eax
Lbb96:
	cmpl $0, %eax
	jnz Lbb98
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq _str626(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r13, 16(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb124
Lbb98:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq _compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq _malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq _str619(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb124
Lbb99:
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb101
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rax, %r13
	movq $0, (%r13)
	movq %rdx, 8(%r13)
	leaq _donna_option_None(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movq %rsi, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb124
Lbb101:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb124
Lbb102:
	movq %rdx, %r12
	movq %r13, %rbx
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_types_parse_type
	movq %r12, %rdx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb123
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	movq %rsi, %r13
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz Lbb107
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb108
Lbb107:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $28, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb108:
	cmpl $0, %ecx
	jnz Lbb117
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb112
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb114
Lbb112:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb114:
	cmpl $0, %ecx
	jnz Lbb116
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $7, (%r13)
	leaq _str537(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb122
Lbb116:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r14
	callq _compiler_lexer_token_to_string
	movq %rax, %r15
	movl $32, %edi
	callq _malloc
	movq %rax, %r13
	movq $6, (%r13)
	movq %r15, 8(%r13)
	leaq _str530(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb122
Lbb117:
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	movq %r14, %rdx
	movq %r13, %rsi
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -32(%rbp)
	movq %rsi, %r13
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r14
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb119
	movq 8(%rax), %rcx
	movq %rcx, -24(%rbp)
	movq 16(%rax), %rax
	movq %rax, -16(%rbp)
	movl $16, %edi
	callq _malloc
	xchgq %rax, %r15
	movq $1, (%r15)
	movq %rax, 8(%r15)
	movl $40, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %r15
	movq -32(%rbp), %r13
	movq -16(%rbp), %r14
	movq -24(%rbp), %rax
	movq $0, (%r15)
	movq %rdx, 8(%r15)
	movq %rcx, 16(%r15)
	movq %rax, 24(%r15)
	movq %rsi, 32(%r15)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp Lbb121
Lbb119:
	movq %rcx, %r13
	movq 8(%rax), %r14
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb121:
	movq %rax, (%r12)
Lbb122:
	movq %rax, (%rbx)
	jmp Lbb124
Lbb123:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb124:
	movq %rbp, %rsp
	subq $80, %rsp
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
_compiler_parser_parse_exprs_parse_pipe:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _compiler_parser_parse_exprs_parse_or_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb127
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_pipe_loop
	jmp Lbb128
Lbb127:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb128:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_pipe */

.text
.balign 16
_compiler_parser_parse_exprs_parse_pipe_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq %rdi, %rbx
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq %rax, %rcx
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb131
	movl $0, %eax
	jmp Lbb132
Lbb131:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $59, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb132:
	cmpl $0, %eax
	jnz Lbb134
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rdi, 16(%rax)
	jmp Lbb137
Lbb134:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_or_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb136
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $32, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $14, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	movq %r12, 24(%rsi)
	callq _compiler_parser_parse_exprs_parse_pipe_loop
	movq %rax, (%rbx)
	jmp Lbb137
Lbb136:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb137:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_pipe_loop */

.text
.balign 16
_compiler_parser_parse_exprs_parse_or_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _compiler_parser_parse_exprs_parse_and_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb140
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_or_loop
	jmp Lbb141
Lbb140:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb141:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_or_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_or_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb144
	movl $0, %eax
	jmp Lbb145
Lbb144:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $57, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb145:
	cmpl $0, %eax
	jnz Lbb147
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rdi, 16(%rax)
	jmp Lbb150
Lbb147:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_and_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb149
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BOr(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_or_loop
	movq %rax, (%rbx)
	jmp Lbb150
Lbb149:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb150:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_or_loop */

.text
.balign 16
_compiler_parser_parse_exprs_parse_and_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _compiler_parser_parse_exprs_parse_cmp_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb153
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_and_loop
	jmp Lbb154
Lbb153:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb154:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_and_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_and_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb157
	movl $0, %eax
	jmp Lbb158
Lbb157:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $56, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb158:
	cmpl $0, %eax
	jnz Lbb160
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rdi, 16(%rax)
	jmp Lbb163
Lbb160:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_cmp_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb162
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BAnd(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_and_loop
	movq %rax, (%rbx)
	jmp Lbb163
Lbb162:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb163:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_and_loop */

.text
.balign 16
_compiler_parser_parse_exprs_parse_cmp_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _compiler_parser_parse_exprs_parse_concat_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb166
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_cmp_loop
	jmp Lbb167
Lbb166:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb167:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_cmp_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_cmp_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r13
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb170
	movl $0, %ecx
	jmp Lbb171
Lbb170:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $46, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb171:
	cmpl $0, %ecx
	jnz Lbb245
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb175
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb176
Lbb175:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $47, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb176:
	cmpl $0, %ecx
	jnz Lbb242
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb180
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb181
Lbb180:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $48, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb181:
	cmpl $0, %ecx
	jnz Lbb239
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb185
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb186
Lbb185:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $50, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb186:
	cmpl $0, %ecx
	jnz Lbb236
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb190
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb191
Lbb190:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $52, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb191:
	cmpl $0, %ecx
	jnz Lbb233
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb195
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb196
Lbb195:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $54, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb196:
	cmpl $0, %ecx
	jnz Lbb230
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb200
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb201
Lbb200:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $49, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb201:
	cmpl $0, %ecx
	jnz Lbb227
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb205
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb206
Lbb205:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $51, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb206:
	cmpl $0, %ecx
	jnz Lbb224
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb210
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb211
Lbb210:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $53, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb211:
	cmpl $0, %ecx
	jnz Lbb221
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb215
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb216
Lbb215:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $55, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb216:
	cmpl $0, %eax
	jnz Lbb218
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %rdi, 16(%rax)
	jmp Lbb248
Lbb218:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb220
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BGtEqDot(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb220:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb221:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb223
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BGtDot(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb223:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb224:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb226
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BLtEqDot(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb226:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb227:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb229
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BLtDot(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb229:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb230:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb232
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BGtEq(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb232:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb233:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb235
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BGt(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb235:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb236:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb238
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BLtEq(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb238:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb239:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb241
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BLt(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb241:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb242:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb244
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BNotEq(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb244:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb245:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_concat_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb247
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $40, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $10, (%r13)
	leaq _compiler_parser_ast_BEq(%rip), %rax
	movq %rax, 8(%r13)
	movq %rsi, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb248
Lbb247:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb248:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_cmp_loop */

.text
.balign 16
_compiler_parser_parse_exprs_parse_concat_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _compiler_parser_parse_exprs_parse_add_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb251
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_concat_loop
	jmp Lbb252
Lbb251:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb252:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_concat_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_concat_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb255
	movl $0, %eax
	jmp Lbb256
Lbb255:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $60, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb256:
	cmpl $0, %eax
	jnz Lbb258
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rdi, 16(%rax)
	jmp Lbb261
Lbb258:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_add_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb260
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BConcat(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_concat_loop
	movq %rax, (%rbx)
	jmp Lbb261
Lbb260:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb261:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_concat_loop */

.text
.balign 16
_compiler_parser_parse_exprs_parse_add_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _compiler_parser_parse_exprs_parse_mul_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb264
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_add_loop
	jmp Lbb265
Lbb264:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb265:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_add_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_add_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb268
	movl $0, %ecx
	jmp Lbb269
Lbb268:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $37, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb269:
	cmpl $0, %ecx
	jnz Lbb295
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb273
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb274
Lbb273:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb274:
	cmpl $0, %ecx
	jnz Lbb292
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb278
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb279
Lbb278:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $38, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb279:
	cmpl $0, %ecx
	jnz Lbb289
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb283
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb284
Lbb283:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $40, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb284:
	cmpl $0, %eax
	jnz Lbb286
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rdi, 16(%rax)
	jmp Lbb298
Lbb286:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_mul_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb288
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BSubDot(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_add_loop
	movq %rax, (%rbx)
	jmp Lbb298
Lbb288:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb298
Lbb289:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_mul_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb291
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BAddDot(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_add_loop
	movq %rax, (%rbx)
	jmp Lbb298
Lbb291:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb298
Lbb292:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_mul_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb294
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BSub(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_add_loop
	movq %rax, (%rbx)
	jmp Lbb298
Lbb294:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb298
Lbb295:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_mul_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb297
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BAdd(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_add_loop
	movq %rax, (%rbx)
	jmp Lbb298
Lbb297:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb298:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_add_loop */

.text
.balign 16
_compiler_parser_parse_exprs_parse_mul_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _compiler_parser_parse_exprs_parse_unary_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb301
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_mul_loop
	jmp Lbb302
Lbb301:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb302:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_mul_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_mul_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb305
	movl $0, %ecx
	jmp Lbb306
Lbb305:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $41, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb306:
	cmpl $0, %ecx
	jnz Lbb340
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb310
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb311
Lbb310:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $43, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb311:
	cmpl $0, %ecx
	jnz Lbb337
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb315
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb316
Lbb315:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $45, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb316:
	cmpl $0, %ecx
	jnz Lbb334
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb320
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb321
Lbb320:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $42, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb321:
	cmpl $0, %ecx
	jnz Lbb331
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb325
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb326
Lbb325:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $44, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb326:
	cmpl $0, %eax
	jnz Lbb328
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rdi, 16(%rax)
	jmp Lbb343
Lbb328:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_unary_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb330
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BDivDot(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp Lbb343
Lbb330:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb343
Lbb331:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_unary_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb333
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BMulDot(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp Lbb343
Lbb333:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb343
Lbb334:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_unary_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb336
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BMod(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp Lbb343
Lbb336:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb343
Lbb337:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_unary_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb339
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BDiv(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp Lbb343
Lbb339:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb343
Lbb340:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq _compiler_parser_parse_exprs_parse_unary_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb342
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $40, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $10, (%rsi)
	leaq _compiler_parser_ast_BMul(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r14, 16(%rsi)
	movq %r13, 24(%rsi)
	movq %r12, 32(%rsi)
	callq _compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp Lbb343
Lbb342:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb343:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_mul_loop */

.text
.balign 16
_compiler_parser_parse_exprs_parse_unary_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb346
	movl $0, %ecx
	jmp Lbb347
Lbb346:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb347:
	cmpl $0, %ecx
	jnz Lbb357
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb351
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb352
Lbb351:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $58, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb352:
	cmpl $0, %eax
	jnz Lbb354
	callq _compiler_parser_parse_exprs_parse_call_expr
	jmp Lbb360
Lbb354:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_call_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb356
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $32, %edi
	callq _malloc
	movq %rax, %r13
	movq $11, (%r13)
	leaq _compiler_parser_ast_UNot(%rip), %rax
	movq %rax, 8(%r13)
	movq %r15, 16(%r13)
	movq %r14, 24(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb360
Lbb356:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb360
Lbb357:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_call_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb359
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $32, %edi
	callq _malloc
	movq %rax, %r13
	movq $11, (%r13)
	leaq _compiler_parser_ast_UNeg(%rip), %rax
	movq %rax, 8(%r13)
	movq %r15, 16(%r13)
	movq %r14, 24(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb360
Lbb359:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb360:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_unary_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_call_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _compiler_parser_parse_exprs_parse_primary
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb363
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_call_loop
	jmp Lbb364
Lbb363:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb364:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_call_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_call_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r14
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb367
	movl $0, %ecx
	jmp Lbb368
Lbb367:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb368:
	cmpl $0, %ecx
	jnz Lbb390
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb372
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb377
Lbb372:
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rsi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb375
	movq $0, (%r8)
	movl $0, %esi
	jmp Lbb376
Lbb375:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $4, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
Lbb376:
	cmpq $26, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
	movq %rcx, (%rdx)
Lbb377:
	cmpl $0, %ecx
	jnz Lbb389
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb381
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb386
Lbb381:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdx
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdx), %rsi
	cmpq $1, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz Lbb384
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb385
Lbb384:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $5, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb385:
	cmpq $26, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb386:
	cmpl $0, %eax
	jnz Lbb388
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %rdi, 16(%rax)
	jmp Lbb393
Lbb388:
	movq 16(%rdi), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	movq %rdi, %r13
	movl $32, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $5, (%rsi)
	movq %r14, 8(%rsi)
	movq %r12, 16(%rsi)
	movq %rbx, 24(%rsi)
	callq _compiler_parser_parse_exprs_parse_call_loop
	jmp Lbb393
Lbb389:
	movq 16(%rdi), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	movq %rdi, %r13
	movl $32, %edi
	callq _malloc
	movq %r13, %rdi
	movq %rax, %rsi
	movq $5, (%rsi)
	movq %r14, 8(%rsi)
	movq %r12, 16(%rsi)
	movq %rbx, 24(%rsi)
	callq _compiler_parser_parse_exprs_parse_call_loop
	jmp Lbb393
Lbb390:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parse_exprs_parse_call_args
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb392
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $32, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $9, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	movq %r12, 24(%rsi)
	callq _compiler_parser_parse_exprs_parse_call_loop
	movq %rax, (%rbx)
	jmp Lbb393
Lbb392:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb393:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_call_loop */

.text
.balign 16
_compiler_parser_parse_exprs_parse_call_args:
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
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_strip_arg_label
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb396
	movl $0, %ecx
	jmp Lbb397
Lbb396:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb397:
	cmpl $0, %ecx
	jnz Lbb422
	movq %rdi, %rbx
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb421
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
	jnz Lbb402
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb403
Lbb402:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb403:
	cmpl $0, %ecx
	jnz Lbb418
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb407
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb408
Lbb407:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb408:
	cmpl $0, %ecx
	jnz Lbb417
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb412
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb414
Lbb412:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb414:
	cmpl $0, %ecx
	jnz Lbb416
	leaq _str2383(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $7, (%r13)
	leaq _str2382(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb420
Lbb416:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r14
	callq _compiler_lexer_token_to_string
	movq %rax, %r15
	movl $32, %edi
	callq _malloc
	movq %rax, %r13
	movq $6, (%r13)
	movq %r15, 8(%r13)
	leaq _str2375(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb420
Lbb417:
	movq 16(%rax), %r13
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r15, 8(%rdi)
	movq %r14, 16(%rdi)
	callq _donna_list_reverse
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb420
Lbb418:
	movq %r15, %r14
	movq %rdi, %r13
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	movq %rdi, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	callq _compiler_parser_parse_exprs_parse_call_args
	movq %rax, (%r12)
Lbb420:
	movq %rax, (%rbx)
	jmp Lbb423
Lbb421:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb423
Lbb422:
	movq 16(%rax), %rbx
	callq _donna_list_reverse
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb423:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_call_args */

.text
.balign 16
_compiler_parser_parse_exprs_strip_arg_label:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb426
	movl $0, %ecx
	jmp Lbb431
Lbb426:
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
	jnz Lbb429
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb430
Lbb429:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $24, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb430:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdx, %rcx
Lbb431:
	cmpl $0, %ecx
	jz Lbb433
	movq 16(%rax), %rax
	movq 16(%rax), %rax
Lbb433:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_exprs_strip_arg_label */

.text
.balign 16
_compiler_parser_parse_exprs_parse_primary:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
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
	jnz Lbb436
	movl $0, %eax
	jmp Lbb437
Lbb436:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb437:
	cmpl $0, %eax
	jnz Lbb566
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb441
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb442
Lbb441:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb442:
	cmpl $0, %eax
	jnz Lbb565
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb446
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb447
Lbb446:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $2, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb447:
	cmpl $0, %eax
	jnz Lbb564
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb451
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb456
Lbb451:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rsi
	cmpq $7, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz Lbb454
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb455
Lbb454:
	movq 8(%rax), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	andq %r8, %rax
	movq %rax, (%rsi)
Lbb455:
	andq $1, %rax
	movq %rax, (%rdx)
Lbb456:
	cmpl $0, %eax
	jnz Lbb563
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb460
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb465
Lbb460:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rsi
	cmpq $7, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz Lbb463
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb464
Lbb463:
	movq 8(%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r8, %rax
	movq %rax, (%rsi)
Lbb464:
	andq $1, %rax
	movq %rax, (%rdx)
Lbb465:
	cmpl $0, %eax
	jnz Lbb562
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb469
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb470
Lbb469:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb470:
	cmpl $0, %eax
	jnz Lbb561
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb474
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb475
Lbb474:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $5, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb475:
	cmpl $0, %eax
	jnz Lbb560
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb479
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb480
Lbb479:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $12, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb480:
	cmpl $0, %eax
	jnz Lbb557
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb484
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb485
Lbb484:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $19, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb485:
	cmpl $0, %eax
	jnz Lbb554
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb489
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb490
Lbb489:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $21, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb490:
	cmpl $0, %eax
	jnz Lbb553
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb494
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb499
Lbb494:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb497
	movq $0, (%r8)
	movl $0, %esi
	jmp Lbb498
Lbb497:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $30, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
Lbb498:
	cmpq $29, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb499:
	cmpl $0, %eax
	jnz Lbb552
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb503
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb504
Lbb503:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb504:
	cmpl $0, %eax
	jnz Lbb551
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb508
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb509
Lbb508:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb509:
	cmpl $0, %eax
	jnz Lbb534
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb513
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb514
Lbb513:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $10, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb514:
	cmpl $0, %eax
	jnz Lbb533
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb518
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb523
Lbb518:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb521
	movq $0, (%r8)
	movl $0, %esi
	jmp Lbb522
Lbb521:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $30, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
Lbb522:
	cmpq $14, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb523:
	cmpl $0, %eax
	jnz Lbb532
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb527
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb529
Lbb527:
	movq $1, (%rax)
	movl $1, %eax
Lbb529:
	cmpl $0, %eax
	jnz Lbb531
	leaq _str3152(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq _str3151(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb567
Lbb531:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq _compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq _malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq _str3144(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb567
Lbb532:
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rax
	movq 8(%rcx), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_lambda
	jmp Lbb567
Lbb533:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rsi
	callq _compiler_parser_parse_exprs_parse_case_expr
	jmp Lbb567
Lbb534:
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb550
	movq 8(%rax), %r14
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
	jnz Lbb538
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb539
Lbb538:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb539:
	cmpl $0, %ecx
	jnz Lbb548
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb543
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb545
Lbb543:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb545:
	cmpl $0, %ecx
	jnz Lbb547
	leaq _str3031(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $7, (%r13)
	leaq _str3030(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb549
Lbb547:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r14
	callq _compiler_lexer_token_to_string
	movq %rax, %r15
	movl $32, %edi
	callq _malloc
	movq %rax, %r13
	movq $6, (%r13)
	movq %r15, 8(%r13)
	leaq _str3023(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp Lbb549
Lbb548:
	movq 16(%rax), %r13
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
Lbb549:
	movq %rax, (%rbx)
	jmp Lbb567
Lbb550:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb567
Lbb551:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rsi
	callq _compiler_parser_parse_exprs_parse_list_expr
	jmp Lbb567
Lbb552:
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rax
	movq 8(%rcx), %rsi
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_tuple_expr
	jmp Lbb567
Lbb553:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %r12
	movq $18, (%r12)
	movq %r13, 8(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb567
Lbb554:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb556
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $17, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb567
Lbb556:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb567
Lbb557:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r14
	callq _compiler_parser_parse_exprs_parse_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb559
	movq 8(%rax), %r15
	movq 16(%rax), %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $16, (%r13)
	movq %r15, 8(%r13)
	movq %r14, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb567
Lbb559:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb567
Lbb560:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $4, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb567
Lbb561:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $4, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb567
Lbb562:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq 8(%rax), %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $3, (%r12)
	movq $0, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb567
Lbb563:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq 8(%rax), %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $3, (%r12)
	movq $1, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb567
Lbb564:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $2, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb567
Lbb565:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb567
Lbb566:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $0, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb567:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_primary */

.text
.balign 16
_compiler_parser_parse_exprs_parse_tuple_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rbx
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb570
	movl $0, %ecx
	jmp Lbb571
Lbb570:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb571:
	cmpl $0, %ecx
	jnz Lbb573
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r12
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_parse_tuple_args
	jmp Lbb575
Lbb573:
	movq %rsi, %r12
	movq 16(%rax), %rbx
	movl $24, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq $6, (%r12)
	leaq _donna_nil(%rip), %rax
	movq %rax, 8(%r12)
	movq %rsi, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb575:
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_tuple_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_tuple_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rbx
	movq %rsi, %r13
	callq _compiler_parser_parse_exprs_parse_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb598
	movq 8(%rax), %r12
	movq 16(%rax), %r14
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r14), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %eax
	jnz Lbb580
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb581
Lbb580:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
Lbb581:
	cmpl $0, %eax
	jnz Lbb596
	movq %rsi, %r13
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz Lbb585
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb586
Lbb585:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $31, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb586:
	cmpl $0, %eax
	jnz Lbb595
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb590
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb592
Lbb590:
	movq $1, (%rax)
	movl $1, %eax
Lbb592:
	cmpl $0, %eax
	jnz Lbb594
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq _str3311(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb599
Lbb594:
	movq 8(%r14), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq _compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq _malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq _str3304(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb599
Lbb595:
	movq 16(%r14), %r12
	movq %rdx, %rdi
	callq _donna_list_reverse
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $6, (%r13)
	movq %r14, 8(%r13)
	movq %rsi, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb599
Lbb596:
	movq %rdx, %r13
	movq %rsi, %r12
	movq 16(%r14), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_parse_tuple_args
	movq %rax, (%rbx)
	jmp Lbb599
Lbb598:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb599:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_tuple_args */

.text
.balign 16
_compiler_parser_parse_exprs_parse_list_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %rbx
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb602
	movl $0, %ecx
	jmp Lbb603
Lbb602:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb603:
	cmpl $0, %ecx
	jnz Lbb605
	leaq _donna_nil(%rip), %rdx
	movq %rsi, %r12
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_parse_list_args
	jmp Lbb607
Lbb605:
	movq %rsi, %r12
	movq 16(%rax), %rbx
	movl $24, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq $7, (%r12)
	leaq _donna_nil(%rip), %rax
	movq %rax, 8(%r12)
	movq %rsi, 16(%r12)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb607:
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_list_expr */

.text
.balign 16
_compiler_parser_parse_exprs_parse_list_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %r14
	movq %rsi, %r13
	callq _compiler_parser_parse_exprs_parse_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb646
	movq 8(%rax), %rbx
	movq 16(%rax), %r12
	movl $24, %edi
	callq _malloc
	movq %r14, %rdx
	movq %r13, %rsi
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %rbx, 8(%rdi)
	movq %rdx, 16(%rdi)
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb612
	movq $0, (%rdx)
	movq %rsi, %r13
	movl $0, %eax
	jmp Lbb617
Lbb612:
	movq 8(%r12), %rax
	movq 16(%r12), %r9
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r9), %r8
	cmpq $1, %r8
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r10d
	jnz Lbb615
	movq $0, (%r8)
	movq %rsi, %r13
	movl $0, %esi
	jmp Lbb616
Lbb615:
	movq 8(%r9), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $27, %r9
	movq %rsi, %r13
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
Lbb616:
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb617:
	cmpl $0, %eax
	jnz Lbb645
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb621
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb622
Lbb621:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb622:
	cmpl $0, %eax
	jnz Lbb643
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb626
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb627
Lbb626:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $33, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb627:
	cmpl $0, %eax
	jnz Lbb642
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb631
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb632
Lbb631:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $27, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb632:
	cmpl $0, %eax
	jnz Lbb641
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb636
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb638
Lbb636:
	movq $1, (%rax)
	movl $1, %eax
Lbb638:
	cmpl $0, %eax
	jnz Lbb640
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq _str3553(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb647
Lbb640:
	movq 8(%r12), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq _compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq _malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq _str3546(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb647
Lbb641:
	movq 16(%r12), %r12
	callq _donna_list_reverse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rsi, %r13
	callq _compiler_parser_parse_exprs_parse_list_spread
	movq %rax, (%rbx)
	jmp Lbb647
Lbb642:
	movq %r12, %r14
	movq 16(%r12), %r12
	callq _donna_list_reverse
	movq %rax, %r14
	movl $24, %edi
	callq _malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $7, (%r13)
	movq %r14, 8(%r13)
	movq %rsi, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb647
Lbb643:
	movq %r12, %r14
	movq %rdi, %r12
	movq 16(%r14), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, %rdx
	movq %rsi, %r13
	callq _compiler_parser_parse_exprs_parse_list_args
	movq %rax, (%rbx)
	jmp Lbb647
Lbb645:
	movq 16(%r12), %rax
	movq 16(%rax), %r12
	callq _donna_list_reverse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq _compiler_parser_parse_exprs_parse_list_spread
	movq %rax, (%rbx)
	jmp Lbb647
Lbb646:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb647:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_list_args */

.text
.balign 16
_compiler_parser_parse_exprs_parse_list_spread:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdx, %r12
	movq %rsi, %rbx
	callq _compiler_parser_parse_exprs_parse_expr
	movq %r12, %rdx
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb663
	movq 8(%rax), %r14
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r15
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	movq %rsi, %r13
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz Lbb652
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb653
Lbb652:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb653:
	cmpl $0, %ecx
	jnz Lbb662
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb657
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb659
Lbb657:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb659:
	cmpl $0, %ecx
	jnz Lbb661
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq _str3642(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb664
Lbb661:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq _compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq _malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq _str3635(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb664
Lbb662:
	movq 16(%rax), %r12
	movl $32, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rax, %r13
	movq $8, (%r13)
	movq %rdx, 8(%r13)
	movq %r14, 16(%r13)
	movq %rsi, 24(%r13)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb664
Lbb663:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb664:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_list_spread */

.text
.balign 16
_compiler_parser_parse_exprs_parse_case_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	callq _compiler_parser_parse_exprs_parse_expr
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb693
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	movq %rsi, %r12
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb669
	movq $0, (%rsi)
	movq %rcx, %r13
	movl $0, %ecx
	jmp Lbb670
Lbb669:
	movq 8(%rax), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $24, %rdi
	movq %rcx, %r13
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb670:
	cmpl $0, %ecx
	jnz Lbb679
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb674
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb676
Lbb674:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb676:
	cmpl $0, %ecx
	jnz Lbb678
	movl $24, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq $7, (%r12)
	leaq _str3797(%rip), %rax
	movq %rax, 8(%r12)
	movq %rsi, 16(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb694
Lbb678:
	movq 8(%rax), %rax
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %r12
	movq $9, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb694
Lbb679:
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r13, %rcx
	movq %r12, %rsi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %edi
	jnz Lbb682
	movq $0, (%rdx)
	movq %rcx, %r13
	movl $0, %ecx
	jmp Lbb683
Lbb682:
	movq 8(%rax), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $62, %rdi
	movq %rcx, %r13
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb683:
	cmpl $0, %ecx
	jnz Lbb688
	movq %rsi, %r14
	leaq _donna_nil(%rip), %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_parse_inline_case_arms
	movq %r13, %rcx
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb686
	movq %rcx, %r15
	movq 8(%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 16(%rax), %rax
	movq %rax, -8(%rbp)
	movl $32, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %rax, %r15
	movq -8(%rbp), %r14
	movq -16(%rbp), %rax
	movq $12, (%r15)
	movq %rcx, 8(%r15)
	movq %rax, 16(%r15)
	movq %rsi, 24(%r15)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp Lbb687
Lbb686:
	movq 8(%rax), %r14
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb687:
	movq %rax, (%r12)
	jmp Lbb692
Lbb688:
	movq 16(%rax), %rdi
	movq %rsi, %r14
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parse_exprs_parse_case_arms
	movq %r13, %rcx
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb690
	movq %rcx, %r15
	movq 8(%rax), %rcx
	movq %rcx, -32(%rbp)
	movq 16(%rax), %rax
	movq %rax, -24(%rbp)
	movl $32, %edi
	callq _malloc
	movq %r15, %rcx
	movq %r14, %rsi
	movq %rax, %r15
	movq -24(%rbp), %r14
	movq -32(%rbp), %rax
	movq $12, (%r15)
	movq %rcx, 8(%r15)
	movq %rax, 16(%r15)
	movq %rsi, 24(%r15)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp Lbb691
Lbb690:
	movq 8(%rax), %r14
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb691:
	movq %rax, (%r12)
Lbb692:
	movq %rax, (%rbx)
	jmp Lbb694
Lbb693:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb694:
	movq %rbp, %rsp
	subq $80, %rsp
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
_compiler_parser_parse_exprs_parse_case_arms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rbx
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb697
	movl $0, %edx
	jmp Lbb698
Lbb697:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $63, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb698:
	cmpl $0, %edx
	jnz Lbb704
	cmpq $0, %rcx
	jz Lbb703
	movq %rdi, %r12
	movq %rax, %rdi
	callq _compiler_parser_parse_exprs_parse_case_arm
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb702
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _compiler_parser_parse_exprs_parse_case_arms
	movq %rax, (%rbx)
	jmp Lbb705
Lbb702:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb705
Lbb703:
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
	jmp Lbb705
Lbb704:
	movq 16(%rax), %rbx
	callq _donna_list_reverse
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
Lbb705:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_case_arms */

.text
.balign 16
_compiler_parser_parse_exprs_parse_inline_case_arms:
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
	callq _compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq %rax, %rbx
	movq (%rbx), %rax
	cmpq $0, %rax
	jz Lbb730
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb710
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb711
Lbb710:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $63, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb711:
	cmpl $0, %eax
	jnz Lbb729
	movq %rdi, %r12
	movq %rbx, %rdi
	callq _compiler_parser_parse_exprs_is_pattern_start
	movq %r12, %rdi
	movq %rbx, %r14
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb717
	movq %rdi, %r13
	movq %r14, %rdi
	callq _compiler_parser_parse_exprs_parse_case_arm
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb715
	movq 8(%rax), %r14
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $24, %edi
	callq _malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	callq _compiler_parser_parse_exprs_parse_inline_case_arms
	movq %rax, (%r12)
	jmp Lbb716
Lbb715:
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb716:
	movq %rax, (%rbx)
	jmp Lbb731
Lbb717:
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb719
	callq _donna_list_reverse
	movq %rax, %r13
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb728
Lbb719:
	subq $16, %rsp
	movq %rsp, %r13
	movq (%r14), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz Lbb722
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb724
Lbb722:
	movq $1, (%rax)
	movl $1, %eax
Lbb724:
	cmpl $0, %eax
	jnz Lbb726
	leaq _str3955(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %r15
	movl $24, %edi
	callq _malloc
	movq %rax, %r14
	movq $7, (%r14)
	leaq _str3954(%rip), %rax
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
	jmp Lbb727
Lbb726:
	movq 8(%r14), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r15
	callq _compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq _malloc
	xchgq %rax, %r14
	movq $6, (%r14)
	movq %rax, 8(%r14)
	leaq _str3947(%rip), %rax
	movq %rax, 16(%r14)
	movq %r15, 24(%r14)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
Lbb727:
	movq %rax, (%r12)
Lbb728:
	movq %rax, (%rbx)
	jmp Lbb731
Lbb729:
	callq _donna_list_reverse
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp Lbb731
Lbb730:
	callq _donna_list_reverse
	movq %rax, %rbx
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	leaq _donna_nil(%rip), %rcx
	movq %rcx, 16(%rax)
Lbb731:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_inline_case_arms */

.text
.balign 16
_compiler_parser_parse_exprs_is_pattern_start:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb734
	movl $0, %ecx
	jmp Lbb735
Lbb734:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $6, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb735:
	cmpl $0, %ecx
	jnz Lbb795
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb739
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb740
Lbb739:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb740:
	cmpl $0, %ecx
	jnz Lbb794
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb744
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb745
Lbb744:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb745:
	cmpl $0, %ecx
	jnz Lbb793
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb749
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb750
Lbb749:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb750:
	cmpl $0, %ecx
	jnz Lbb792
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb754
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb755
Lbb754:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $7, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb755:
	cmpl $0, %ecx
	jnz Lbb791
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb759
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb760
Lbb759:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $5, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb760:
	cmpl $0, %ecx
	jnz Lbb790
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb764
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb765
Lbb764:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb765:
	cmpl $0, %ecx
	jnz Lbb789
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb769
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb774
Lbb769:
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rsi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb772
	movq $0, (%r8)
	movl $0, %esi
	jmp Lbb773
Lbb772:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
Lbb773:
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
	movq %rcx, (%rdx)
Lbb774:
	cmpl $0, %ecx
	jnz Lbb788
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb778
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb779
Lbb778:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $29, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb779:
	cmpl $0, %ecx
	jnz Lbb787
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb783
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb784
Lbb783:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb784:
	cmpl $0, %eax
	jnz Lbb786
	movl $0, %eax
	jmp Lbb796
Lbb786:
	movl $1, %eax
	jmp Lbb796
Lbb787:
	movl $1, %eax
	jmp Lbb796
Lbb788:
	movl $1, %eax
	jmp Lbb796
Lbb789:
	movl $1, %eax
	jmp Lbb796
Lbb790:
	movl $1, %eax
	jmp Lbb796
Lbb791:
	movl $1, %eax
	jmp Lbb796
Lbb792:
	movl $1, %eax
	jmp Lbb796
Lbb793:
	movl $1, %eax
	jmp Lbb796
Lbb794:
	movl $1, %eax
	jmp Lbb796
Lbb795:
	movl $1, %eax
Lbb796:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_exprs_is_pattern_start */

.text
.balign 16
_compiler_parser_parse_exprs_parse_case_arm:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq _compiler_parser_parse_patterns_parse_pattern
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb848
	movq 8(%rax), %rbx
	movq 16(%rax), %r12
	movq %rbx, %rdi
	callq _compiler_parser_parse_exprs_pat_span
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz Lbb801
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb802
Lbb801:
	movq 8(%r12), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $15, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdi)
Lbb802:
	cmpl $0, %ecx
	jnz Lbb822
	movq %rsi, %r14
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb806
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb807
Lbb806:
	movq 8(%r12), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $23, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb807:
	cmpl $0, %ecx
	jnz Lbb817
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb811
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb813
Lbb811:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb813:
	cmpl $0, %ecx
	jnz Lbb816
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	xchgq %rax, %r12
	movq $7, (%r12)
	movq %rax, %r13
	leaq _str4530(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb849
Lbb816:
	movq 8(%r12), %rax
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %r12
	movq $10, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb849
Lbb817:
	movq %rax, %r13
	movq 16(%r12), %rdi
	callq _compiler_parser_parse_exprs_parse_arm_body
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb820
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	movq %rax, -8(%rbp)
	movl $40, %edi
	callq _malloc
	movq %r14, %rsi
	movq %rax, %r14
	movq %r13, %rax
	movq -8(%rbp), %r13
	movq $0, (%r14)
	movq %rsi, 8(%r14)
	leaq _donna_option_None(%rip), %rcx
	movq %rcx, 16(%r14)
	movq %r15, 24(%r14)
	movq %rax, 32(%r14)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb821
Lbb820:
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb821:
	movq %rax, (%rbx)
	jmp Lbb849
Lbb822:
	movq %r12, %r14
	movq %rax, %r12
	movq %rsi, %r13
	movq 16(%r14), %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	movq %r13, %rsi
	subq $16, %rsp
	movq %rsp, %r15
	movq %r15, -40(%rbp)
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb845
	movq 8(%rax), %r13
	movq %r13, -16(%rbp)
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	movq %rsi, %r14
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz Lbb827
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb828
Lbb827:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $23, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb828:
	cmpl $0, %ecx
	jnz Lbb839
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb832
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb834
Lbb832:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb834:
	cmpl $0, %ecx
	jnz Lbb837
	movl $24, %edi
	callq _malloc
	xchgq %rax, %r12
	movq $7, (%r12)
	leaq _str4445(%rip), %rcx
	movq %rcx, 8(%r12)
	movq %rax, 16(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%r13)
	movq %r15, %r12
	jmp Lbb844
Lbb837:
	movq 8(%rax), %rax
	movq 8(%rax), %r14
	movl $16, %edi
	callq _malloc
	movq %rax, %r12
	movq $10, (%r12)
	movq %r14, 8(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%r13)
	movq %r15, %r12
	jmp Lbb844
Lbb839:
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_arm_body
	movq %r15, %rcx
	movq %r14, %rsi
	movq -16(%rbp), %r15
	subq $16, %rsp
	movq %rsp, %rdx
	movq %rdx, -32(%rbp)
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rsi, %r14
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb841
	movq 8(%rax), %rcx
	movq %rcx, -24(%rbp)
	movq 16(%rax), %rcx
	movq %rcx, -48(%rbp)
	movl $16, %edi
	callq _malloc
	xchgq %rax, %r15
	movq $1, (%r15)
	movq %rax, 8(%r15)
	movl $40, %edi
	callq _malloc
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rax, %r15
	movq %r12, %rax
	movq -32(%rbp), %r14
	movq -40(%rbp), %r12
	movq -24(%rbp), %rcx
	movq $0, (%r15)
	movq %rsi, 8(%r15)
	movq %rdx, 16(%r15)
	movq %rcx, 24(%r15)
	movq %rax, 32(%r15)
	movl $24, %edi
	callq _malloc
	movq -48(%rbp), %rcx
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %rcx, 16(%rax)
	movq %rax, (%r14)
	jmp Lbb843
Lbb841:
	movq %rdx, %r14
	movq %rcx, %r12
	movq 8(%rax), %r15
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r15, 8(%rax)
	movq %rax, (%r14)
Lbb843:
	movq %rax, (%r13)
Lbb844:
	movq %rax, (%r12)
	jmp Lbb847
Lbb845:
	movq %r15, %r12
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb847:
	movq %rax, (%rbx)
	jmp Lbb849
Lbb848:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb849:
	movq %rbp, %rsp
	subq $96, %rsp
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
_compiler_parser_parse_exprs_parse_arm_body:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb852
	movl $0, %eax
	jmp Lbb857
Lbb852:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rcx
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %esi
	jnz Lbb855
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb856
Lbb855:
	movq 8(%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $62, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb856:
	cmpq $61, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rcx, %rax
Lbb857:
	cmpl $0, %eax
	jnz Lbb859
	callq _compiler_parser_parse_exprs_parse_expr
	jmp Lbb860
Lbb859:
	movq 16(%rdi), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq 8(%rax), %rsi
	leaq _donna_nil(%rip), %rdx
	callq _compiler_parser_parse_exprs_parse_block_stmts
Lbb860:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_arm_body */

.text
.balign 16
_compiler_parser_parse_exprs_parse_lambda:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	callq _compiler_parser_parse_params_parse_params
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb879
	movq 8(%rax), %r13
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	movq %rsi, %r14
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz Lbb865
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb866
Lbb865:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $23, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb866:
	cmpl $0, %ecx
	jnz Lbb875
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb870
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb872
Lbb870:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb872:
	cmpl $0, %ecx
	jnz Lbb874
	movl $24, %edi
	callq _malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq _str4688(%rip), %rax
	movq %rax, 8(%r12)
	movq %r14, 16(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb880
Lbb874:
	movq 8(%rax), %rax
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq %rax, %r12
	movq $10, (%r12)
	movq %r13, 8(%r12)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb880
Lbb875:
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_expr
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb877
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	movq %rax, -16(%rbp)
	movl $32, %edi
	callq _malloc
	movq %r14, %rsi
	movq %rax, %r14
	movq %r13, %rax
	movq -16(%rbp), %r13
	movq $15, (%r14)
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movq %rsi, 24(%r14)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb878
Lbb877:
	movq 8(%rax), %r13
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
Lbb878:
	movq %rax, (%rbx)
	jmp Lbb880
Lbb879:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb880:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_lambda */

.text
.balign 16
.globl _compiler_parser_parse_exprs_expr_span
_compiler_parser_parse_exprs_expr_span:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb917
	cmpq $1, %rax
	jz Lbb916
	cmpq $2, %rax
	jz Lbb915
	cmpq $3, %rax
	jz Lbb914
	cmpq $4, %rax
	jz Lbb913
	cmpq $5, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb912
	cmpq $6, %rax
	jz Lbb911
	cmpq $7, %rax
	jz Lbb910
	cmpq $8, %rax
	jz Lbb909
	cmpq $9, %rax
	jz Lbb908
	cmpq $10, %rax
	jz Lbb907
	cmpq $11, %rax
	jz Lbb906
	cmpq $12, %rax
	jz Lbb905
	cmpq $13, %rax
	jz Lbb904
	cmpq $14, %rax
	jz Lbb903
	cmpq $15, %rax
	jz Lbb902
	cmpq $16, %rax
	jz Lbb901
	cmpq $17, %rax
	jz Lbb900
	movq 8(%rdi), %rax
	jmp Lbb918
Lbb900:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb901:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb902:
	movq 24(%rdi), %rax
	jmp Lbb918
Lbb903:
	movq 24(%rdi), %rax
	jmp Lbb918
Lbb904:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb905:
	movq 24(%rdi), %rax
	jmp Lbb918
Lbb906:
	movq 24(%rdi), %rax
	jmp Lbb918
Lbb907:
	movq 32(%rdi), %rax
	jmp Lbb918
Lbb908:
	movq 24(%rdi), %rax
	jmp Lbb918
Lbb909:
	movq 24(%rdi), %rax
	jmp Lbb918
Lbb910:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb911:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb912:
	movq 24(%rdi), %rax
	jmp Lbb918
Lbb913:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb914:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb915:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb916:
	movq 16(%rdi), %rax
	jmp Lbb918
Lbb917:
	movq 16(%rdi), %rax
Lbb918:
	ret
/* end function compiler_parser_parse_exprs_expr_span */

.text
.balign 16
_compiler_parser_parse_exprs_pat_span:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb937
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb936
	cmpq $2, %rax
	jz Lbb935
	cmpq $3, %rax
	jz Lbb934
	cmpq $4, %rax
	jz Lbb933
	cmpq $5, %rax
	jz Lbb932
	cmpq $6, %rax
	jz Lbb931
	cmpq $7, %rax
	jz Lbb930
	cmpq $8, %rax
	jz Lbb929
	movq 32(%rdi), %rax
	jmp Lbb938
Lbb929:
	movq 24(%rdi), %rax
	jmp Lbb938
Lbb930:
	movq 16(%rdi), %rax
	jmp Lbb938
Lbb931:
	movq 16(%rdi), %rax
	jmp Lbb938
Lbb932:
	movq 16(%rdi), %rax
	jmp Lbb938
Lbb933:
	movq 16(%rdi), %rax
	jmp Lbb938
Lbb934:
	movq 16(%rdi), %rax
	jmp Lbb938
Lbb935:
	movq 16(%rdi), %rax
	jmp Lbb938
Lbb936:
	movq 16(%rdi), %rax
	jmp Lbb938
Lbb937:
	movq 8(%rdi), %rax
Lbb938:
	ret
/* end function compiler_parser_parse_exprs_pat_span */

.text
.balign 16
___rt_str_concat:
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
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

