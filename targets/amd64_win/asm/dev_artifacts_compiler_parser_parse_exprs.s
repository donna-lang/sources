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
str59:
	.ascii "indented block"
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str247:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str278:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str364:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str367:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str486:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str489:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str561:
	.ascii "= or :"
	.byte 0
/* end data */

.data
.balign 8
str564:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str2125:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str2128:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str2129:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str2722:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str2725:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str2726:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str2836:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
str2839:
	.ascii "expression"
	.byte 0
/* end data */

.data
.balign 8
str2840:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str2980:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str2983:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str3206:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
str3209:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3282:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3285:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str3422:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str3560:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
str3563:
	.ascii "case arm pattern"
	.byte 0
/* end data */

.data
.balign 8
str3564:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str4036:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str4109:
	.ascii "->"
	.byte 0
/* end data */

.data
.balign 8
str4255:
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
	pushq %rsi
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
	leaq str60(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str59(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb15
Lbb13:
	movq 8(%rcx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str56(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
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
	subq $16, %rsp
	popq %rsi
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
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	callq compiler_parser_parse_exprs_expr_span
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_ExprStmt
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb24
Lbb22:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
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
	subq $32, %rsp
	popq %rdi
	popq %rsi
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
	jnz Lbb35
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
	callq compiler_parser_parse_exprs_parse_block_stmts
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb36
Lbb32:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb36
Lbb33:
	movq %rdi, %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	callq compiler_parser_ast_Block
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb36
Lbb35:
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_Block
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb36:
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
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb39
	movl $0, %esi
	jmp Lbb40
Lbb39:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $4, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb40:
	cmpl $0, %esi
	jnz Lbb79
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb44
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb49
Lbb44:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rdi
	cmpq $6, %rdi
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ebx
	jnz Lbb47
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb48
Lbb47:
	movq %rcx, %r12
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %r13
	leaq str227(%rip), %rdx
	callq strcmp
	movq %r13, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rbx, %rax
	movq %rax, (%rdi)
Lbb48:
	andq $1, %rax
	movq %rax, (%rsi)
Lbb49:
	cmpl $0, %eax
	jnz Lbb78
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rdx, %rsi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb53
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb54
Lbb53:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb54:
	cmpl $0, %eax
	jnz Lbb76
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
	jnz Lbb75
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r9d
	jnz Lbb59
	movq $0, (%r10)
	movl $0, %r9d
	jmp Lbb60
Lbb59:
	movq 8(%rax), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $28, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
Lbb60:
	cmpl $0, %r9d
	jnz Lbb69
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %r8
	jz Lbb64
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb66
Lbb64:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb66:
	cmpl $0, %ecx
	jnz Lbb68
	subq $32, %rsp
	movq %rdx, %r12
	leaq str367(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb74
Lbb68:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rbx, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str364(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb74
Lbb69:
	movq %rdx, %r12
	movq %rcx, %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
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
	jnz Lbb72
	movq %rdx, %r13
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	subq $32, %rsp
	movq %r13, %r8
	callq compiler_parser_ast_LetPatStmt
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb73
Lbb72:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb73:
	movq %rax, (%rdi)
Lbb74:
	movq %rax, (%rsi)
	jmp Lbb80
Lbb75:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb80
Lbb76:
	movq %rsi, %rdx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq %rdx, %rdi
	movq 8(%rax), %rdx
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str278(%rip), %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rsi, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_let_name
	subq $-32, %rsp
	jmp Lbb80
Lbb78:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	leaq str247(%rip), %r8
	callq compiler_parser_parse_exprs_parse_let_name
	subq $-32, %rsp
	jmp Lbb80
Lbb79:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq 8(%rax), %r8
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_let_name
	subq $-32, %rsp
Lbb80:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
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
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rdi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb83
	movl $0, %eax
	jmp Lbb84
Lbb83:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $24, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb84:
	cmpl $0, %eax
	jnz Lbb101
	subq $16, %rsp
	movq %rsp, %r8
	cmpq $1, %rdx
	jz Lbb88
	movq $0, (%r8)
	movl $0, %eax
	jmp Lbb89
Lbb88:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $28, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%r8)
Lbb89:
	cmpl $0, %eax
	jnz Lbb98
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb93
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb95
Lbb93:
	movq $1, (%rax)
	movl $1, %eax
Lbb95:
	cmpl $0, %eax
	jnz Lbb97
	subq $32, %rsp
	movq %rdi, %rdx
	leaq str564(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb121
Lbb97:
	movq 8(%rcx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str561(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb121
Lbb98:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rdi, %r9
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb100
	movq 8(%rax), %r8
	movq 16(%rax), %rdx
	subq $32, %rsp
	movq %r9, %rdi
	movq %rdx, %rdi
	leaq donna_option_None(%rip), %rdx
	callq compiler_parser_ast_LetStmt
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb121
Lbb100:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb121
Lbb101:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type
	movq %rdi, %r9
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb120
	movq %rcx, %r13
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %r8b
	movzbq %r8b, %r8
	movq %r9, %r15
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r8d
	jnz Lbb105
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb106
Lbb105:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $28, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb106:
	cmpl $0, %r8d
	jnz Lbb115
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb110
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb112
Lbb110:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb112:
	cmpl $0, %ecx
	jnz Lbb114
	subq $32, %rsp
	movq %r15, %rdx
	leaq str489(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb119
Lbb114:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rbx, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str486(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb119
Lbb115:
	movq %rcx, %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb117
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	subq $32, %rsp
	callq donna_option_Some
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_LetStmt
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb118
Lbb117:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb118:
	movq %rax, (%rdi)
Lbb119:
	movq %rax, (%rsi)
	jmp Lbb121
Lbb120:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb121:
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
/* end function compiler_parser_parse_exprs_parse_let_name */

.text
.balign 16
compiler_parser_parse_exprs_parse_pipe:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_or_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb124
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_pipe_loop
	subq $-32, %rsp
	jmp Lbb125
Lbb124:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb125:
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_pipe */

.text
.balign 16
compiler_parser_parse_exprs_parse_pipe_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rdi
	movq %rdx, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rdi, %rcx
	callq compiler_parser_parse_result_skip_newlines
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb128
	movl $0, %eax
	jmp Lbb129
Lbb128:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $59, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb129:
	cmpl $0, %eax
	jnz Lbb132
	movq %rsi, %rcx
	subq $32, %rsp
	movq %rcx, %rsi
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb135
Lbb132:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_or_expr
	movq %rdi, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb134
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_ast_Pipe
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_pipe_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb135
Lbb134:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb135:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_pipe_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_or_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_and_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb138
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_or_loop
	subq $-32, %rsp
	jmp Lbb139
Lbb138:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb139:
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_or_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_or_loop:
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
	jnz Lbb142
	movl $0, %eax
	jmp Lbb143
Lbb142:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $57, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb143:
	cmpl $0, %eax
	jnz Lbb145
	subq $32, %rsp
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq %rsi, %rcx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb149
Lbb145:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_and_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb148
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BOr(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_or_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb149
Lbb148:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb149:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_or_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_and_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_cmp_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb152
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_and_loop
	subq $-32, %rsp
	jmp Lbb153
Lbb152:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb153:
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_and_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_and_loop:
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
	jnz Lbb156
	movl $0, %eax
	jmp Lbb157
Lbb156:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $56, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb157:
	cmpl $0, %eax
	jnz Lbb159
	subq $32, %rsp
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq %rsi, %rcx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb163
Lbb159:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_cmp_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb162
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BAnd(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_and_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb163
Lbb162:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb163:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_and_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_cmp_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb166
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_cmp_loop
	subq $-32, %rsp
	jmp Lbb167
Lbb166:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb167:
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_cmp_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_cmp_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb170
	movl $0, %esi
	jmp Lbb171
Lbb170:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $46, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb171:
	cmpl $0, %esi
	jnz Lbb254
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb175
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb176
Lbb175:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $47, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb176:
	cmpl $0, %esi
	jnz Lbb250
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb180
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb181
Lbb180:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $48, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb181:
	cmpl $0, %esi
	jnz Lbb246
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb185
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb186
Lbb185:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $50, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb186:
	cmpl $0, %esi
	jnz Lbb242
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb190
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb191
Lbb190:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $52, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb191:
	cmpl $0, %esi
	jnz Lbb238
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb195
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb196
Lbb195:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $54, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb196:
	cmpl $0, %esi
	jnz Lbb234
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb200
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb201
Lbb200:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $49, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb201:
	cmpl $0, %esi
	jnz Lbb230
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb205
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb206
Lbb205:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $51, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb206:
	cmpl $0, %esi
	jnz Lbb226
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb210
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb211
Lbb210:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $53, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb211:
	cmpl $0, %esi
	jnz Lbb222
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb215
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb216
Lbb215:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $55, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb216:
	cmpl $0, %eax
	jnz Lbb218
	subq $32, %rsp
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq %rsi, %rcx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb258
Lbb218:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb221
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BGtEqDot(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb221:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb222:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb225
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BGtDot(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb225:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb226:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb229
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BLtEqDot(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb229:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb230:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb233
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BLtDot(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb233:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb234:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb237
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BGtEq(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb237:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb238:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb241
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BGt(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb241:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb242:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb245
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BLtEq(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb245:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb246:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb249
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BLt(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb249:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb250:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb253
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BNotEq(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb253:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb254:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb257
	movq 8(%rax), %r8
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_BEq(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb258
Lbb257:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb258:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_cmp_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_concat_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb261
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_loop
	subq $-32, %rsp
	jmp Lbb262
Lbb261:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb262:
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_concat_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_concat_loop:
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
	jnz Lbb265
	movl $0, %eax
	jmp Lbb266
Lbb265:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $60, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb266:
	cmpl $0, %eax
	jnz Lbb268
	subq $32, %rsp
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq %rsi, %rcx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb272
Lbb268:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb271
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BConcat(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_concat_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb272
Lbb271:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb272:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_concat_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_add_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb275
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	jmp Lbb276
Lbb275:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb276:
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_add_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_add_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb279
	movl $0, %esi
	jmp Lbb280
Lbb279:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $37, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb280:
	cmpl $0, %esi
	jnz Lbb309
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb284
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb285
Lbb284:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $39, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb285:
	cmpl $0, %esi
	jnz Lbb305
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb289
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb290
Lbb289:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $38, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb290:
	cmpl $0, %esi
	jnz Lbb301
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb294
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb295
Lbb294:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $40, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb295:
	cmpl $0, %eax
	jnz Lbb297
	subq $32, %rsp
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq %rsi, %rcx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb313
Lbb297:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb300
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BSubDot(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb313
Lbb300:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb313
Lbb301:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb304
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BAddDot(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb313
Lbb304:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb313
Lbb305:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb308
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BSub(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb313
Lbb308:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb313
Lbb309:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb312
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BAdd(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_add_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb313
Lbb312:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb313:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_add_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_mul_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb316
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	jmp Lbb317
Lbb316:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb317:
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_mul_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_mul_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb320
	movl $0, %esi
	jmp Lbb321
Lbb320:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $41, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb321:
	cmpl $0, %esi
	jnz Lbb359
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb325
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb326
Lbb325:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $43, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb326:
	cmpl $0, %esi
	jnz Lbb355
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb330
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb331
Lbb330:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $45, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb331:
	cmpl $0, %esi
	jnz Lbb351
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb335
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb336
Lbb335:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $42, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb336:
	cmpl $0, %esi
	jnz Lbb347
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb340
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb341
Lbb340:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $44, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb341:
	cmpl $0, %eax
	jnz Lbb343
	subq $32, %rsp
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq %rsi, %rcx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb363
Lbb343:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb346
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BDivDot(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb346:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb347:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb350
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BMulDot(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb350:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb351:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb354
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BMod(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb354:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb355:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb358
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BDiv(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb358:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb359:
	movq %rdx, %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %rdi, %r9
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb362
	movq 8(%rax), %r8
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rcx, %rdi
	leaq compiler_parser_ast_BMul(%rip), %rcx
	callq compiler_parser_ast_BinOp
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_mul_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb363
Lbb362:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb363:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_mul_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_unary_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb366
	movl $0, %edx
	jmp Lbb367
Lbb366:
	movq 8(%rcx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $39, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb367:
	cmpl $0, %edx
	jnz Lbb377
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb371
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb372
Lbb371:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $58, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb372:
	cmpl $0, %eax
	jnz Lbb374
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_expr
	subq $-32, %rsp
	jmp Lbb380
Lbb374:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_expr
	movq %rsi, %r8
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb376
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_UNot(%rip), %rcx
	callq compiler_parser_ast_UnaryOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb380
Lbb376:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb380
Lbb377:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_expr
	movq %rsi, %r8
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb379
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	subq $32, %rsp
	leaq compiler_parser_ast_UNeg(%rip), %rcx
	callq compiler_parser_ast_UnaryOp
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb380
Lbb379:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb380:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_unary_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_primary
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb383
	movq 8(%rax), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_loop
	subq $-32, %rsp
	jmp Lbb384
Lbb383:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb384:
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_call_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq %rdx, %rcx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb387
	movl $0, %esi
	jmp Lbb388
Lbb387:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $30, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb388:
	cmpl $0, %esi
	jnz Lbb410
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rdx
	jz Lbb392
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb397
Lbb392:
	movq 8(%rax), %rsi
	movq 16(%rax), %r8
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%r8), %r9
	cmpq $1, %r9
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz Lbb395
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb396
Lbb395:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $4, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb396:
	cmpq $26, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r8, %rsi
	movq %rsi, (%rdi)
Lbb397:
	cmpl $0, %esi
	jnz Lbb409
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb401
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb406
Lbb401:
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb404
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb405
Lbb404:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $5, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb405:
	cmpq $26, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	andq %rdi, %rdx
	movq %rdx, (%rsi)
Lbb406:
	cmpl $0, %edx
	jnz Lbb408
	subq $32, %rsp
	movq %rax, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb414
Lbb408:
	movq 16(%rax), %rdx
	movq 8(%rdx), %rax
	movq 16(%rdx), %rsi
	movq (%rax), %rdx
	movq 8(%rdx), %rdx
	movq 8(%rax), %r8
	subq $32, %rsp
	callq compiler_parser_ast_FieldAccess
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_loop
	subq $-32, %rsp
	jmp Lbb414
Lbb409:
	movq 16(%rax), %rdx
	movq 8(%rdx), %rax
	movq 16(%rdx), %rsi
	movq (%rax), %rdx
	movq 8(%rdx), %rdx
	movq 8(%rax), %r8
	subq $32, %rsp
	callq compiler_parser_ast_FieldAccess
	movq %rsi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_loop
	subq $-32, %rsp
	jmp Lbb414
Lbb410:
	movq %rcx, %rsi
	movq %rax, %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_exprs_parse_call_args
	movq %rdi, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb413
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_ast_Call
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_call_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb414
Lbb413:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb414:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
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
	jnz Lbb417
	movl $0, %edx
	jmp Lbb418
Lbb417:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb418:
	cmpl $0, %edx
	jnz Lbb443
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
	jnz Lbb442
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
	jnz Lbb423
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb424
Lbb423:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb424:
	cmpl $0, %r8d
	jnz Lbb439
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rdx
	jz Lbb428
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb429
Lbb428:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $31, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb429:
	cmpl $0, %r8d
	jnz Lbb438
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb433
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb435
Lbb433:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb435:
	cmpl $0, %ecx
	jnz Lbb437
	subq $32, %rsp
	leaq str2129(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2128(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb441
Lbb437:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rbx, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2125(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb441
Lbb438:
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
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb441
Lbb439:
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
Lbb441:
	movq %rax, (%rsi)
	jmp Lbb444
Lbb442:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb444
Lbb443:
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb444:
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
	jnz Lbb447
	movl $0, %ecx
	jmp Lbb452
Lbb447:
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
	jnz Lbb450
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb451
Lbb450:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $24, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb451:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdx, %rcx
Lbb452:
	cmpl $0, %ecx
	jz Lbb454
	movq 16(%rax), %rax
	movq 16(%rax), %rax
Lbb454:
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
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb457
	movl $0, %eax
	jmp Lbb458
Lbb457:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb458:
	cmpl $0, %eax
	jnz Lbb587
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb462
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb463
Lbb462:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb463:
	cmpl $0, %eax
	jnz Lbb586
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb467
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb468
Lbb467:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $2, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb468:
	cmpl $0, %eax
	jnz Lbb585
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb472
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb477
Lbb472:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rdi
	cmpq $7, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb475
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb476
Lbb475:
	movq 8(%rax), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	andq %r8, %rax
	movq %rax, (%rdi)
Lbb476:
	andq $1, %rax
	movq %rax, (%rsi)
Lbb477:
	cmpl $0, %eax
	jnz Lbb584
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb481
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb486
Lbb481:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rdi
	cmpq $7, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb484
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb485
Lbb484:
	movq 8(%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r8, %rax
	movq %rax, (%rdi)
Lbb485:
	andq $1, %rax
	movq %rax, (%rsi)
Lbb486:
	cmpl $0, %eax
	jnz Lbb583
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
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb491:
	cmpl $0, %eax
	jnz Lbb582
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
	cmpq $5, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb496:
	cmpl $0, %eax
	jnz Lbb581
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb500
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb501
Lbb500:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $12, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb501:
	cmpl $0, %eax
	jnz Lbb578
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb505
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb506
Lbb505:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $19, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb506:
	cmpl $0, %eax
	jnz Lbb575
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb510
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb511
Lbb510:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $21, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb511:
	cmpl $0, %eax
	jnz Lbb574
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb515
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb520
Lbb515:
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
	jnz Lbb518
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb519
Lbb518:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $30, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb519:
	cmpq $29, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb520:
	cmpl $0, %eax
	jnz Lbb573
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb524
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb525
Lbb524:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb525:
	cmpl $0, %eax
	jnz Lbb572
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb529
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb530
Lbb529:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb530:
	cmpl $0, %eax
	jnz Lbb555
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb534
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb535
Lbb534:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $10, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb535:
	cmpl $0, %eax
	jnz Lbb554
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb539
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb544
Lbb539:
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
	jnz Lbb542
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb543
Lbb542:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $30, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb543:
	cmpq $14, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb544:
	cmpl $0, %eax
	jnz Lbb553
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb548
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb550
Lbb548:
	movq $1, (%rax)
	movl $1, %eax
Lbb550:
	cmpl $0, %eax
	jnz Lbb552
	subq $32, %rsp
	leaq str2840(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2839(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb588
Lbb552:
	movq 8(%rcx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2836(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb588
Lbb553:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_lambda
	subq $-32, %rsp
	jmp Lbb588
Lbb554:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_case_expr
	subq $-32, %rsp
	jmp Lbb588
Lbb555:
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
	jnz Lbb571
	movq 8(%rax), %rcx
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
	jnz Lbb559
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb560
Lbb559:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $31, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb560:
	cmpl $0, %r8d
	jnz Lbb569
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb564
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb566
Lbb564:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb566:
	cmpl $0, %ecx
	jnz Lbb568
	subq $32, %rsp
	leaq str2726(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2725(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb570
Lbb568:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rbx, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2722(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb570
Lbb569:
	movq 16(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb570:
	movq %rax, (%rsi)
	jmp Lbb588
Lbb571:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb588
Lbb572:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_list_expr
	subq $-32, %rsp
	jmp Lbb588
Lbb573:
	movq %rcx, %rax
	movq 8(%rcx), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_tuple_expr
	subq $-32, %rsp
	jmp Lbb588
Lbb574:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_ast_Todo
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb588
Lbb575:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb577
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_ast_Panic
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb588
Lbb577:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb588
Lbb578:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rsi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb580
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_ast_Echo
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb588
Lbb580:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb588
Lbb581:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_Var
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb588
Lbb582:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_Var
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb588
Lbb583:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	movl $0, %ecx
	callq compiler_parser_ast_BoolLit
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb588
Lbb584:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	movl $1, %ecx
	callq compiler_parser_ast_BoolLit
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb588
Lbb585:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_StringLit
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb588
Lbb586:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_FloatLit
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb588
Lbb587:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_IntLit
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb588:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
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
	subq $8, %rsp
	pushq %rsi
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
	jnz Lbb591
	movl $0, %ecx
	jmp Lbb592
Lbb591:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb592:
	cmpl $0, %ecx
	jnz Lbb594
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_tuple_args
	subq $-32, %rsp
	jmp Lbb595
Lbb594:
	movq 16(%rax), %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %rcx
	callq compiler_parser_ast_Tuple
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb595:
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
	jnz Lbb619
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
	jnz Lbb600
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb601
Lbb600:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
Lbb601:
	cmpl $0, %eax
	jnz Lbb617
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rcx
	jz Lbb605
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb606
Lbb605:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $31, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
Lbb606:
	cmpl $0, %eax
	jnz Lbb615
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb610
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb612
Lbb610:
	movq $1, (%rax)
	movl $1, %eax
Lbb612:
	cmpl $0, %eax
	jnz Lbb614
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str2983(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb620
Lbb614:
	movq 8(%r12), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str2980(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb620
Lbb615:
	movq %rdx, %rbx
	movq 16(%r12), %rdi
	subq $32, %rsp
	movq %r8, %rcx
	callq donna_list_reverse
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_Tuple
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb620
Lbb617:
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
	jmp Lbb620
Lbb619:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb620:
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
	subq $8, %rsp
	pushq %rsi
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
	jnz Lbb623
	movl $0, %ecx
	jmp Lbb624
Lbb623:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb624:
	cmpl $0, %ecx
	jnz Lbb626
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_list_args
	subq $-32, %rsp
	jmp Lbb627
Lbb626:
	movq 16(%rax), %rsi
	subq $32, %rsp
	leaq donna_nil(%rip), %rcx
	callq compiler_parser_ast_EList
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb627:
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
	jnz Lbb670
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
	jnz Lbb632
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb637
Lbb632:
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
	jnz Lbb635
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb636
Lbb635:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $27, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb636:
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
Lbb637:
	cmpl $0, %r8d
	jnz Lbb668
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz Lbb641
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb642
Lbb641:
	movq 8(%rdi), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb642:
	cmpl $0, %r8d
	jnz Lbb666
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz Lbb646
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb647
Lbb646:
	movq 8(%rdi), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $33, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb647:
	cmpl $0, %r8d
	jnz Lbb664
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz Lbb651
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb652
Lbb651:
	movq 8(%rdi), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $27, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb652:
	cmpl $0, %r8d
	jnz Lbb662
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb657
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb659
Lbb657:
	movq $1, (%rax)
	movl $1, %eax
Lbb659:
	cmpl $0, %eax
	jnz Lbb661
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str3209(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb671
Lbb661:
	movq 8(%rdi), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3206(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb671
Lbb662:
	movq %rdx, %rbx
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
	jmp Lbb671
Lbb664:
	movq %rdx, %rbx
	movq %rdi, %r12
	movq 16(%rdi), %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq compiler_parser_ast_EList
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb671
Lbb666:
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
	jmp Lbb671
Lbb668:
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
	jmp Lbb671
Lbb670:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb671:
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
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rdi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rdi, %r8
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb688
	movq 8(%rax), %rdx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r9d
	jnz Lbb676
	movq $0, (%r10)
	movl $0, %r9d
	jmp Lbb677
Lbb676:
	movq 8(%rax), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $33, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
Lbb677:
	cmpl $0, %r9d
	jnz Lbb686
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb681
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb683
Lbb681:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb683:
	cmpl $0, %ecx
	jnz Lbb685
	subq $32, %rsp
	movq %r8, %rdx
	leaq str3285(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb689
Lbb685:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3282(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb689
Lbb686:
	movq %rdi, %rdx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_ast_ListSpread
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb689
Lbb688:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb689:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_exprs_parse_list_spread */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rsi, %r8
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb718
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	movq %r8, %rbx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edi
	jnz Lbb694
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb695
Lbb694:
	movq 8(%rax), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $24, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb695:
	cmpl $0, %edi
	jnz Lbb704
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb699
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb701
Lbb699:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb701:
	cmpl $0, %ecx
	jnz Lbb703
	subq $32, %rsp
	movq %rbx, %rdx
	leaq str3422(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb719
Lbb703:
	movq 8(%rax), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq errors_error_ParseMissingColon
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb719
Lbb704:
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %r8
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	movq %r8, %r12
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edx
	jnz Lbb707
	movq $0, (%r8)
	movl $0, %edx
	jmp Lbb708
Lbb707:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $62, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
Lbb708:
	cmpl $0, %edx
	jnz Lbb713
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	movq %rcx, %rbx
	movq %rax, %rcx
	callq compiler_parser_parse_exprs_parse_inline_case_arms
	movq %r12, %r8
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb711
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_ast_Case
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb712
Lbb711:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb712:
	movq %rax, (%rdi)
	jmp Lbb717
Lbb713:
	movq %rcx, %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_exprs_parse_case_arms
	movq %r12, %r8
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb715
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_ast_Case
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb716
Lbb715:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb716:
	movq %rax, (%rdi)
Lbb717:
	movq %rax, (%rsi)
	jmp Lbb719
Lbb718:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb719:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
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
	jnz Lbb722
	movl $0, %esi
	jmp Lbb723
Lbb722:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $63, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb723:
	cmpl $0, %esi
	jnz Lbb729
	cmpq $0, %rdx
	jz Lbb728
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
	jnz Lbb727
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
	jmp Lbb730
Lbb727:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb730
Lbb728:
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb730
Lbb729:
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb730:
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
	movq %rax, %rdx
	subq $-32, %rsp
	movq (%rdx), %rax
	cmpq $0, %rax
	jz Lbb757
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rdx, %rbx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb735
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb736
Lbb735:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $63, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb736:
	cmpl $0, %eax
	jnz Lbb755
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rbx, %rcx
	callq compiler_parser_parse_exprs_is_pattern_start
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb742
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
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
	jnz Lbb740
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
	jmp Lbb741
Lbb740:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb741:
	movq %rax, (%rsi)
	jmp Lbb758
Lbb742:
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb744
	subq $32, %rsp
	callq donna_list_reverse
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb754
Lbb744:
	movq %rbx, %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rdx), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz Lbb748
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb750
Lbb748:
	movq $1, (%rax)
	movl $1, %eax
Lbb750:
	cmpl $0, %eax
	jnz Lbb752
	subq $32, %rsp
	leaq str3564(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3563(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb753
Lbb752:
	movq 8(%rdx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %r12, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str3560(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb753:
	movq %rax, (%rdi)
Lbb754:
	movq %rax, (%rsi)
	jmp Lbb758
Lbb755:
	movq %rbx, %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb758
Lbb757:
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb758:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
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
	jnz Lbb761
	movl $0, %ecx
	jmp Lbb762
Lbb761:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $6, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb762:
	cmpl $0, %ecx
	jnz Lbb822
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb766
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb767
Lbb766:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb767:
	cmpl $0, %ecx
	jnz Lbb821
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb771
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb772
Lbb771:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb772:
	cmpl $0, %ecx
	jnz Lbb820
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb776
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb777
Lbb776:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb777:
	cmpl $0, %ecx
	jnz Lbb819
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb781
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb782
Lbb781:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $7, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb782:
	cmpl $0, %ecx
	jnz Lbb818
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb786
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb787
Lbb786:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $5, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb787:
	cmpl $0, %ecx
	jnz Lbb817
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb791
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb792
Lbb791:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb792:
	cmpl $0, %ecx
	jnz Lbb816
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb796
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb801
Lbb796:
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
	jnz Lbb799
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb800
Lbb799:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $0, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb800:
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
Lbb801:
	cmpl $0, %ecx
	jnz Lbb815
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb805
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb806
Lbb805:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $29, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb806:
	cmpl $0, %ecx
	jnz Lbb814
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb810
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb811
Lbb810:
	movq 8(%rax), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb811:
	cmpl $0, %eax
	jnz Lbb813
	movl $0, %eax
	jmp Lbb823
Lbb813:
	movl $1, %eax
	jmp Lbb823
Lbb814:
	movl $1, %eax
	jmp Lbb823
Lbb815:
	movl $1, %eax
	jmp Lbb823
Lbb816:
	movl $1, %eax
	jmp Lbb823
Lbb817:
	movl $1, %eax
	jmp Lbb823
Lbb818:
	movl $1, %eax
	jmp Lbb823
Lbb819:
	movl $1, %eax
	jmp Lbb823
Lbb820:
	movl $1, %eax
	jmp Lbb823
Lbb821:
	movl $1, %eax
	jmp Lbb823
Lbb822:
	movl $1, %eax
Lbb823:
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
	jnz Lbb869
	movq 8(%rax), %rcx
	movq 16(%rax), %r12
	subq $32, %rsp
	movq %rcx, %rsi
	callq compiler_parser_parse_exprs_pat_span
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r12), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %edx
	jnz Lbb828
	movq $0, (%rdi)
	movl $0, %edx
	jmp Lbb829
Lbb828:
	movq 8(%r12), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $15, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rdi)
Lbb829:
	cmpl $0, %edx
	jnz Lbb848
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb833
	movq $0, (%rdi)
	movl $0, %edx
	jmp Lbb834
Lbb833:
	movq 8(%r12), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $23, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rdi)
Lbb834:
	cmpl $0, %edx
	jnz Lbb844
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb839
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb841
Lbb839:
	movq $1, (%rax)
	movl $1, %eax
Lbb841:
	cmpl $0, %eax
	jnz Lbb843
	subq $32, %rsp
	movq %rbx, %rdx
	leaq str4109(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb870
Lbb843:
	movq 8(%r12), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq errors_error_ParseMissingArrow
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb870
Lbb844:
	movq %rcx, %rdi
	movq 16(%r12), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_arm_body
	movq %rbx, %r9
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb846
	movq 8(%rax), %r8
	movq 16(%rax), %rdx
	subq $32, %rsp
	movq %r9, %rbx
	movq %rdx, %rbx
	leaq donna_option_None(%rip), %rdx
	callq compiler_parser_ast_CaseClause
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb847
Lbb846:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb847:
	movq %rax, (%rsi)
	jmp Lbb870
Lbb848:
	movq %rcx, %rdi
	movq 16(%r12), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rbx, %r9
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb867
	movq %rcx, %r13
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %r8b
	movzbq %r8b, %r8
	movq %r9, %r15
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r8d
	jnz Lbb852
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb853
Lbb852:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $23, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb853:
	cmpl $0, %r8d
	jnz Lbb862
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb857
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb859
Lbb857:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb859:
	cmpl $0, %ecx
	jnz Lbb861
	subq $32, %rsp
	movq %r15, %rdx
	leaq str4036(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb866
Lbb861:
	movq 8(%rax), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq errors_error_ParseMissingArrow
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb866
Lbb862:
	movq %rcx, %r12
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_arm_body
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb864
	movq 8(%rax), %r14
	movq 16(%rax), %rdx
	movq %rdx, -16(%rbp)
	subq $32, %rsp
	callq donna_option_Some
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rcx
	movq %rax, %rdx
	movq -16(%rbp), %r13
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_CaseClause
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb865
Lbb864:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%r12)
Lbb865:
	movq %rax, (%rbx)
Lbb866:
	movq %rax, (%rdi)
	jmp Lbb868
Lbb867:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb868:
	movq %rax, (%rsi)
	jmp Lbb870
Lbb869:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb870:
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
	jnz Lbb873
	movl $0, %eax
	jmp Lbb878
Lbb873:
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
	jnz Lbb876
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb877
Lbb876:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $62, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb877:
	cmpq $61, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
Lbb878:
	cmpl $0, %eax
	jnz Lbb880
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	subq $-32, %rsp
	jmp Lbb881
Lbb880:
	movq 16(%rcx), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	callq compiler_parser_parse_exprs_parse_block_stmts
	subq $-32, %rsp
Lbb881:
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
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_params_parse_params
	movq %rsi, %r8
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb900
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	movq %r8, %rbx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edi
	jnz Lbb886
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb887
Lbb886:
	movq 8(%rax), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $23, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb887:
	cmpl $0, %edi
	jnz Lbb896
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb891
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb893
Lbb891:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb893:
	cmpl $0, %ecx
	jnz Lbb895
	subq $32, %rsp
	movq %rbx, %rdx
	leaq str4255(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb901
Lbb895:
	movq 8(%rax), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq errors_error_ParseMissingArrow
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb901
Lbb896:
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_expr
	movq %rbx, %r8
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb898
	movq 8(%rax), %rdx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq compiler_parser_ast_Lambda
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb899
Lbb898:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb899:
	movq %rax, (%rsi)
	jmp Lbb901
Lbb900:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb901:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
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
	jnz Lbb938
	cmpq $1, %rax
	jz Lbb937
	cmpq $2, %rax
	jz Lbb936
	cmpq $3, %rax
	jz Lbb935
	cmpq $4, %rax
	jz Lbb934
	cmpq $5, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb933
	cmpq $6, %rax
	jz Lbb932
	cmpq $7, %rax
	jz Lbb931
	cmpq $8, %rax
	jz Lbb930
	cmpq $9, %rax
	jz Lbb929
	cmpq $10, %rax
	jz Lbb928
	cmpq $11, %rax
	jz Lbb927
	cmpq $12, %rax
	jz Lbb926
	cmpq $13, %rax
	jz Lbb925
	cmpq $14, %rax
	jz Lbb924
	cmpq $15, %rax
	jz Lbb923
	cmpq $16, %rax
	jz Lbb922
	cmpq $17, %rax
	jz Lbb921
	movq 8(%rcx), %rax
	jmp Lbb939
Lbb921:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb922:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb923:
	movq 24(%rcx), %rax
	jmp Lbb939
Lbb924:
	movq 24(%rcx), %rax
	jmp Lbb939
Lbb925:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb926:
	movq 24(%rcx), %rax
	jmp Lbb939
Lbb927:
	movq 24(%rcx), %rax
	jmp Lbb939
Lbb928:
	movq 32(%rcx), %rax
	jmp Lbb939
Lbb929:
	movq 24(%rcx), %rax
	jmp Lbb939
Lbb930:
	movq 24(%rcx), %rax
	jmp Lbb939
Lbb931:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb932:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb933:
	movq 24(%rcx), %rax
	jmp Lbb939
Lbb934:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb935:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb936:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb937:
	movq 16(%rcx), %rax
	jmp Lbb939
Lbb938:
	movq 16(%rcx), %rax
Lbb939:
	ret
/* end function compiler_parser_parse_exprs_expr_span */

.text
.balign 16
compiler_parser_parse_exprs_pat_span:
	endbr64
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb958
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb957
	cmpq $2, %rax
	jz Lbb956
	cmpq $3, %rax
	jz Lbb955
	cmpq $4, %rax
	jz Lbb954
	cmpq $5, %rax
	jz Lbb953
	cmpq $6, %rax
	jz Lbb952
	cmpq $7, %rax
	jz Lbb951
	cmpq $8, %rax
	jz Lbb950
	movq 32(%rcx), %rax
	jmp Lbb959
Lbb950:
	movq 24(%rcx), %rax
	jmp Lbb959
Lbb951:
	movq 16(%rcx), %rax
	jmp Lbb959
Lbb952:
	movq 16(%rcx), %rax
	jmp Lbb959
Lbb953:
	movq 16(%rcx), %rax
	jmp Lbb959
Lbb954:
	movq 16(%rcx), %rax
	jmp Lbb959
Lbb955:
	movq 16(%rcx), %rax
	jmp Lbb959
Lbb956:
	movq 16(%rcx), %rax
	jmp Lbb959
Lbb957:
	movq 16(%rcx), %rax
	jmp Lbb959
Lbb958:
	movq 8(%rcx), %rax
Lbb959:
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

