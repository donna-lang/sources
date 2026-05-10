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
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_parse_pipe
	leave
	ret
.type compiler_parser_parse_exprs_parse_expr, @function
.size compiler_parser_parse_exprs_parse_expr, .-compiler_parser_parse_exprs_parse_expr
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
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb4
	movl $0, %eax
	jmp .Lbb5
.Lbb4:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $62, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb5:
	cmpl $0, %eax
	jnz .Lbb14
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz .Lbb9
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb11
.Lbb9:
	movq $1, (%rax)
	movl $1, %eax
.Lbb11:
	cmpl $0, %eax
	jnz .Lbb13
	leaq str60(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str59(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb15
.Lbb13:
	movq 8(%rcx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq str56(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb15
.Lbb14:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq 8(%rax), %rsi
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_exprs_parse_block_stmts
.Lbb15:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_block, @function
.size compiler_parser_parse_exprs_parse_block, .-compiler_parser_parse_exprs_parse_block
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
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb18
	movl $0, %eax
	jmp .Lbb19
.Lbb18:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $17, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb19:
	cmpl $0, %eax
	jnz .Lbb23
	movq %rcx, %rdi
	callq compiler_parser_parse_exprs_parse_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb22
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %r13
	callq compiler_parser_parse_exprs_expr_span
	movq %r13, %rdi
	movq %rax, %rsi
	callq compiler_parser_ast_ExprStmt
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb24
.Lbb22:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb24
.Lbb23:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq 8(%rax), %rsi
	callq compiler_parser_parse_exprs_parse_let
.Lbb24:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_stmt, @function
.size compiler_parser_parse_exprs_parse_stmt, .-compiler_parser_parse_exprs_parse_stmt
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
	pushq %r14
	pushq %r15
	movq %rdx, %rbx
	movq %rsi, %r15
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb27
	movl $0, %edx
	jmp .Lbb28
.Lbb27:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $63, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
.Lbb28:
	cmpl $0, %edx
	jnz .Lbb35
	cmpq $0, %rcx
	jz .Lbb33
	movq %rdi, %r12
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_parse_stmt
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb32
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r15, %rsi
	movq %r14, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %r12, 16(%rdx)
	callq compiler_parser_parse_exprs_parse_block_stmts
	movq %rax, (%rbx)
	jmp .Lbb37
.Lbb32:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb37
.Lbb33:
	movq %r15, %rbx
	callq donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq compiler_parser_ast_Block
	movq %rax, %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_result_POk
	jmp .Lbb37
.Lbb35:
	movq %r15, %r12
	movq 16(%rax), %rbx
	callq donna_list_reverse
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_ast_Block
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb37:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_block_stmts, @function
.size compiler_parser_parse_exprs_parse_block_stmts, .-compiler_parser_parse_exprs_parse_block_stmts
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
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb40
	movl $0, %ecx
	jmp .Lbb41
.Lbb40:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb41:
	cmpl $0, %ecx
	jnz .Lbb81
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz .Lbb45
	movq $0, (%r12)
	movq %rsi, %rbx
	movl $0, %eax
	jmp .Lbb50
.Lbb45:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz .Lbb48
	movq $0, (%r13)
	movq %rsi, %rbx
	movl $0, %eax
	jmp .Lbb49
.Lbb48:
	movq %rdi, %r15
	movq 8(%rax), %rdi
	movq %rsi, %rbx
	leaq str227(%rip), %rsi
	callq strcmp
	movq %r15, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r14, %rax
	movq %rax, (%r13)
.Lbb49:
	andq $1, %rax
	movq %rax, (%r12)
.Lbb50:
	cmpl $0, %eax
	jnz .Lbb79
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb54
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb55
.Lbb54:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb55:
	cmpl $0, %eax
	jnz .Lbb77
	callq compiler_parser_parse_patterns_parse_pattern
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb76
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz .Lbb60
	movq $0, (%r8)
	movl $0, %ecx
	jmp .Lbb61
.Lbb60:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $28, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
.Lbb61:
	cmpl $0, %ecx
	jnz .Lbb70
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb65
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb67
.Lbb65:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb67:
	cmpl $0, %ecx
	jnz .Lbb69
	movq %rsi, %r14
	leaq str367(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb75
.Lbb69:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %r13, %rdx
	movq %rax, %rdi
	leaq str364(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb75
.Lbb70:
	movq %rsi, %r14
	movq %rdi, %r13
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_expr
	movq %r14, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb73
	movq %rsi, %r15
	movq 8(%rax), %rsi
	movq 16(%rax), %r14
	movq %r15, %rdx
	callq compiler_parser_ast_LetPatStmt
	movq %r14, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r13)
	jmp .Lbb74
.Lbb73:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
.Lbb74:
	movq %rax, (%r12)
.Lbb75:
	movq %rax, (%rbx)
	jmp .Lbb82
.Lbb76:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb82
.Lbb77:
	movq %rbx, %rsi
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rax
	movq %rsi, %r12
	movq 8(%rax), %rsi
	movq %rdi, %rbx
	leaq str278(%rip), %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rdx
	callq compiler_parser_parse_exprs_parse_let_name
	jmp .Lbb82
.Lbb79:
	movq %rbx, %rsi
	movq 16(%rdi), %rdi
	leaq str247(%rip), %rdx
	callq compiler_parser_parse_exprs_parse_let_name
	jmp .Lbb82
.Lbb81:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rax
	movq 8(%rax), %rdx
	callq compiler_parser_parse_exprs_parse_let_name
.Lbb82:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_let, @function
.size compiler_parser_parse_exprs_parse_let, .-compiler_parser_parse_exprs_parse_let
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
	movq %rdx, %rbx
	movq %rsi, %rcx
	movq %rcx, %r12
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb85
	movl $0, %eax
	jmp .Lbb86
.Lbb85:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $24, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb86:
	cmpl $0, %eax
	jnz .Lbb103
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb90
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb91
.Lbb90:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $28, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb91:
	cmpl $0, %eax
	jnz .Lbb100
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb95
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb97
.Lbb95:
	movq $1, (%rax)
	movl $1, %eax
.Lbb97:
	cmpl $0, %eax
	jnz .Lbb99
	movq %r12, %rsi
	leaq str564(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb124
.Lbb99:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq str561(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb124
.Lbb100:
	movq 16(%rdi), %rdi
	callq compiler_parser_parse_exprs_parse_expr
	movq %r12, %rcx
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb102
	movq 8(%rax), %rdx
	movq 16(%rax), %rsi
	movq %rcx, %r12
	movq %rsi, %r12
	leaq donna_option_None(%rip), %rsi
	callq compiler_parser_ast_LetStmt
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb124
.Lbb102:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb124
.Lbb103:
	movq 16(%rdi), %rdi
	callq compiler_parser_parse_types_parse_type
	movq %r12, %rcx
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb123
	movq %rdi, %r14
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %esi
	jnz .Lbb107
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb108
.Lbb107:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $28, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb108:
	cmpl $0, %esi
	jnz .Lbb117
	movq %rcx, %r15
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb112
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb114
.Lbb112:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb114:
	cmpl $0, %ecx
	jnz .Lbb116
	movq %r15, %rsi
	leaq str489(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb122
.Lbb116:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %r13, %rdx
	movq %rax, %rdi
	leaq str486(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb122
.Lbb117:
	movq %rcx, %r15
	movq %rdi, %r13
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_expr
	movq %r15, %rcx
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r15
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb120
	movq 8(%rax), %rdx
	movq %rdx, -8(%rbp)
	movq 16(%rax), %rsi
	movq %rsi, -16(%rbp)
	callq donna_option_Some
	movq %r15, %rcx
	movq %r14, %rdi
	movq %rax, %rsi
	movq -16(%rbp), %r14
	movq -8(%rbp), %rdx
	callq compiler_parser_ast_LetStmt
	movq %r14, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r13)
	jmp .Lbb121
.Lbb120:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
.Lbb121:
	movq %rax, (%r12)
.Lbb122:
	movq %rax, (%rbx)
	jmp .Lbb124
.Lbb123:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb124:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_let_name, @function
.size compiler_parser_parse_exprs_parse_let_name, .-compiler_parser_parse_exprs_parse_let_name
/* end function compiler_parser_parse_exprs_parse_let_name */

.text
.balign 16
compiler_parser_parse_exprs_parse_pipe:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_exprs_parse_or_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb127
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_pipe_loop
	jmp .Lbb128
.Lbb127:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb128:
	leave
	ret
.type compiler_parser_parse_exprs_parse_pipe, @function
.size compiler_parser_parse_exprs_parse_pipe, .-compiler_parser_parse_exprs_parse_pipe
/* end function compiler_parser_parse_exprs_parse_pipe */

.text
.balign 16
compiler_parser_parse_exprs_parse_pipe_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %r12
	movq %rsi, %rdi
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %r12, %rsi
	movq %rbx, %rdi
	movq %rax, %rcx
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb131
	movl $0, %eax
	jmp .Lbb132
.Lbb131:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $59, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb132:
	cmpl $0, %eax
	jnz .Lbb134
	callq compiler_parser_parse_result_POk
	jmp .Lbb137
.Lbb134:
	movq 8(%rcx), %rax
	movq %rdi, %rbx
	movq 16(%rcx), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_or_expr
	movq %r12, %rdx
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb136
	movq 8(%rax), %rsi
	movq 16(%rax), %r12
	callq compiler_parser_ast_Pipe
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_pipe_loop
	movq %rax, (%rbx)
	jmp .Lbb137
.Lbb136:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb137:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_pipe_loop, @function
.size compiler_parser_parse_exprs_parse_pipe_loop, .-compiler_parser_parse_exprs_parse_pipe_loop
/* end function compiler_parser_parse_exprs_parse_pipe_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_or_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_exprs_parse_and_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb140
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_or_loop
	jmp .Lbb141
.Lbb140:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb141:
	leave
	ret
.type compiler_parser_parse_exprs_parse_or_expr, @function
.size compiler_parser_parse_exprs_parse_or_expr, .-compiler_parser_parse_exprs_parse_or_expr
/* end function compiler_parser_parse_exprs_parse_or_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_or_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb144
	movl $0, %eax
	jmp .Lbb145
.Lbb144:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $57, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb145:
	cmpl $0, %eax
	jnz .Lbb147
	movq %rsi, %rbx
	movq %rdi, %rsi
	movq %rbx, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb151
.Lbb147:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_and_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb150
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BOr(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_or_loop
	movq %rax, (%rbx)
	jmp .Lbb151
.Lbb150:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb151:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_or_loop, @function
.size compiler_parser_parse_exprs_parse_or_loop, .-compiler_parser_parse_exprs_parse_or_loop
/* end function compiler_parser_parse_exprs_parse_or_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_and_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_exprs_parse_cmp_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb154
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_and_loop
	jmp .Lbb155
.Lbb154:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb155:
	leave
	ret
.type compiler_parser_parse_exprs_parse_and_expr, @function
.size compiler_parser_parse_exprs_parse_and_expr, .-compiler_parser_parse_exprs_parse_and_expr
/* end function compiler_parser_parse_exprs_parse_and_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_and_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb158
	movl $0, %eax
	jmp .Lbb159
.Lbb158:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $56, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb159:
	cmpl $0, %eax
	jnz .Lbb161
	movq %rsi, %rbx
	movq %rdi, %rsi
	movq %rbx, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb165
.Lbb161:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_cmp_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb164
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BAnd(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_and_loop
	movq %rax, (%rbx)
	jmp .Lbb165
.Lbb164:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb165:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_and_loop, @function
.size compiler_parser_parse_exprs_parse_and_loop, .-compiler_parser_parse_exprs_parse_and_loop
/* end function compiler_parser_parse_exprs_parse_and_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_cmp_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb168
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_cmp_loop
	jmp .Lbb169
.Lbb168:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb169:
	leave
	ret
.type compiler_parser_parse_exprs_parse_cmp_expr, @function
.size compiler_parser_parse_exprs_parse_cmp_expr, .-compiler_parser_parse_exprs_parse_cmp_expr
/* end function compiler_parser_parse_exprs_parse_cmp_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_cmp_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb172
	movl $0, %ecx
	jmp .Lbb173
.Lbb172:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $46, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb173:
	cmpl $0, %ecx
	jnz .Lbb256
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb177
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb178
.Lbb177:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $47, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb178:
	cmpl $0, %ecx
	jnz .Lbb252
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb182
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb183
.Lbb182:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $48, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb183:
	cmpl $0, %ecx
	jnz .Lbb248
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb187
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb188
.Lbb187:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $50, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb188:
	cmpl $0, %ecx
	jnz .Lbb244
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb192
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb193
.Lbb192:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $52, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb193:
	cmpl $0, %ecx
	jnz .Lbb240
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb197
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb198
.Lbb197:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $54, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb198:
	cmpl $0, %ecx
	jnz .Lbb236
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb202
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb203
.Lbb202:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $49, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb203:
	cmpl $0, %ecx
	jnz .Lbb232
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb207
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb208
.Lbb207:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $51, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb208:
	cmpl $0, %ecx
	jnz .Lbb228
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb212
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb213
.Lbb212:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $53, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb213:
	cmpl $0, %ecx
	jnz .Lbb224
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz .Lbb217
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb218
.Lbb217:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $55, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb218:
	cmpl $0, %eax
	jnz .Lbb220
	movq %rsi, %rbx
	movq %rdi, %rsi
	movq %rbx, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb260
.Lbb220:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb223
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BGtEqDot(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb223:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb224:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb227
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BGtDot(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb227:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb228:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb231
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BLtEqDot(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb231:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb232:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb235
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BLtDot(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb235:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb236:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb239
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BGtEq(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb239:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb240:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb243
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BGt(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb243:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb244:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb247
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BLtEq(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb247:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb248:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb251
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BLt(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb251:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb252:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb255
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BNotEq(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb255:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb256:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_concat_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb259
	movq 8(%rax), %rdx
	movq 16(%rax), %r12
	leaq compiler_parser_ast_BEq(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb260
.Lbb259:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb260:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_cmp_loop, @function
.size compiler_parser_parse_exprs_parse_cmp_loop, .-compiler_parser_parse_exprs_parse_cmp_loop
/* end function compiler_parser_parse_exprs_parse_cmp_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_concat_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_exprs_parse_add_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb263
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_concat_loop
	jmp .Lbb264
.Lbb263:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb264:
	leave
	ret
.type compiler_parser_parse_exprs_parse_concat_expr, @function
.size compiler_parser_parse_exprs_parse_concat_expr, .-compiler_parser_parse_exprs_parse_concat_expr
/* end function compiler_parser_parse_exprs_parse_concat_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_concat_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb267
	movl $0, %eax
	jmp .Lbb268
.Lbb267:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $60, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb268:
	cmpl $0, %eax
	jnz .Lbb270
	movq %rsi, %rbx
	movq %rdi, %rsi
	movq %rbx, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb274
.Lbb270:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_add_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb273
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BConcat(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_concat_loop
	movq %rax, (%rbx)
	jmp .Lbb274
.Lbb273:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb274:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_concat_loop, @function
.size compiler_parser_parse_exprs_parse_concat_loop, .-compiler_parser_parse_exprs_parse_concat_loop
/* end function compiler_parser_parse_exprs_parse_concat_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_add_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb277
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_add_loop
	jmp .Lbb278
.Lbb277:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb278:
	leave
	ret
.type compiler_parser_parse_exprs_parse_add_expr, @function
.size compiler_parser_parse_exprs_parse_add_expr, .-compiler_parser_parse_exprs_parse_add_expr
/* end function compiler_parser_parse_exprs_parse_add_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_add_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb281
	movl $0, %ecx
	jmp .Lbb282
.Lbb281:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $37, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb282:
	cmpl $0, %ecx
	jnz .Lbb311
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb286
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb287
.Lbb286:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb287:
	cmpl $0, %ecx
	jnz .Lbb307
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb291
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb292
.Lbb291:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $38, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb292:
	cmpl $0, %ecx
	jnz .Lbb303
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz .Lbb296
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb297
.Lbb296:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $40, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb297:
	cmpl $0, %eax
	jnz .Lbb299
	movq %rsi, %rbx
	movq %rdi, %rsi
	movq %rbx, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb315
.Lbb299:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb302
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BSubDot(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_add_loop
	movq %rax, (%rbx)
	jmp .Lbb315
.Lbb302:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb315
.Lbb303:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb306
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BAddDot(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_add_loop
	movq %rax, (%rbx)
	jmp .Lbb315
.Lbb306:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb315
.Lbb307:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb310
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BSub(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_add_loop
	movq %rax, (%rbx)
	jmp .Lbb315
.Lbb310:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb315
.Lbb311:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_mul_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb314
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BAdd(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_add_loop
	movq %rax, (%rbx)
	jmp .Lbb315
.Lbb314:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb315:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_add_loop, @function
.size compiler_parser_parse_exprs_parse_add_loop, .-compiler_parser_parse_exprs_parse_add_loop
/* end function compiler_parser_parse_exprs_parse_add_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_mul_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb318
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_mul_loop
	jmp .Lbb319
.Lbb318:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb319:
	leave
	ret
.type compiler_parser_parse_exprs_parse_mul_expr, @function
.size compiler_parser_parse_exprs_parse_mul_expr, .-compiler_parser_parse_exprs_parse_mul_expr
/* end function compiler_parser_parse_exprs_parse_mul_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_mul_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb322
	movl $0, %ecx
	jmp .Lbb323
.Lbb322:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $41, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb323:
	cmpl $0, %ecx
	jnz .Lbb361
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb327
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb328
.Lbb327:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $43, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb328:
	cmpl $0, %ecx
	jnz .Lbb357
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb332
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb333
.Lbb332:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $45, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb333:
	cmpl $0, %ecx
	jnz .Lbb353
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb337
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb338
.Lbb337:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $42, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb338:
	cmpl $0, %ecx
	jnz .Lbb349
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz .Lbb342
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb343
.Lbb342:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $44, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb343:
	cmpl $0, %eax
	jnz .Lbb345
	movq %rsi, %rbx
	movq %rdi, %rsi
	movq %rbx, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb365
.Lbb345:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb348
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BDivDot(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb348:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb349:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb352
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BMulDot(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb352:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb353:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb356
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BMod(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb356:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb357:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb360
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BDiv(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb360:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb361:
	movq %rsi, %rbx
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	callq compiler_parser_parse_exprs_parse_unary_expr
	movq %r12, %rcx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb364
	movq 8(%rax), %rdx
	movq 16(%rax), %rdi
	movq %rdi, %r12
	leaq compiler_parser_ast_BMul(%rip), %rdi
	callq compiler_parser_ast_BinOp
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_mul_loop
	movq %rax, (%rbx)
	jmp .Lbb365
.Lbb364:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb365:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_mul_loop, @function
.size compiler_parser_parse_exprs_parse_mul_loop, .-compiler_parser_parse_exprs_parse_mul_loop
/* end function compiler_parser_parse_exprs_parse_mul_loop */

.text
.balign 16
compiler_parser_parse_exprs_parse_unary_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb368
	movl $0, %ecx
	jmp .Lbb369
.Lbb368:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb369:
	cmpl $0, %ecx
	jnz .Lbb379
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz .Lbb373
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb374
.Lbb373:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $58, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb374:
	cmpl $0, %eax
	jnz .Lbb376
	callq compiler_parser_parse_exprs_parse_call_expr
	jmp .Lbb382
.Lbb376:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rbx
	callq compiler_parser_parse_exprs_parse_call_expr
	movq %rbx, %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb378
	movq 8(%rax), %rsi
	movq 16(%rax), %r12
	leaq compiler_parser_ast_UNot(%rip), %rdi
	callq compiler_parser_ast_UnaryOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb382
.Lbb378:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb382
.Lbb379:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rbx
	callq compiler_parser_parse_exprs_parse_call_expr
	movq %rbx, %rdx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb381
	movq 8(%rax), %rsi
	movq 16(%rax), %r12
	leaq compiler_parser_ast_UNeg(%rip), %rdi
	callq compiler_parser_ast_UnaryOp
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb382
.Lbb381:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb382:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_unary_expr, @function
.size compiler_parser_parse_exprs_parse_unary_expr, .-compiler_parser_parse_exprs_parse_unary_expr
/* end function compiler_parser_parse_exprs_parse_unary_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq compiler_parser_parse_exprs_parse_primary
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb385
	movq 8(%rax), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_call_loop
	jmp .Lbb386
.Lbb385:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb386:
	leave
	ret
.type compiler_parser_parse_exprs_parse_call_expr, @function
.size compiler_parser_parse_exprs_parse_call_expr, .-compiler_parser_parse_exprs_parse_call_expr
/* end function compiler_parser_parse_exprs_parse_call_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_call_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdi, %rax
	movq %rsi, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb389
	movl $0, %edx
	jmp .Lbb390
.Lbb389:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $30, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
.Lbb390:
	cmpl $0, %edx
	jnz .Lbb412
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb394
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb399
.Lbb394:
	movq 8(%rax), %rdx
	movq 16(%rax), %r8
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	movq (%r8), %r9
	cmpq $1, %r9
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz .Lbb397
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb398
.Lbb397:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $4, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb398:
	cmpq $26, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	andq %r8, %rdx
	movq %rdx, (%rsi)
.Lbb399:
	cmpl $0, %edx
	jnz .Lbb411
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb403
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb408
.Lbb403:
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz .Lbb406
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb407
.Lbb406:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $5, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb407:
	cmpq $26, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
	movq %rcx, (%rdx)
.Lbb408:
	cmpl $0, %ecx
	jnz .Lbb410
	movq %rax, %rsi
	callq compiler_parser_parse_result_POk
	jmp .Lbb416
.Lbb410:
	movq 16(%rax), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %rsi
	movq 8(%rax), %rdx
	callq compiler_parser_ast_FieldAccess
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_call_loop
	jmp .Lbb416
.Lbb411:
	movq 16(%rax), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %rsi
	movq 8(%rax), %rdx
	callq compiler_parser_ast_FieldAccess
	movq %rbx, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_call_loop
	jmp .Lbb416
.Lbb412:
	movq %rdi, %rbx
	movq %rax, %rdi
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r12
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_exprs_parse_call_args
	movq %r12, %rdx
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb415
	movq 8(%rax), %rsi
	movq 16(%rax), %r12
	callq compiler_parser_ast_Call
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_parse_exprs_parse_call_loop
	movq %rax, (%rbx)
	jmp .Lbb416
.Lbb415:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
.Lbb416:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_call_loop, @function
.size compiler_parser_parse_exprs_parse_call_loop, .-compiler_parser_parse_exprs_parse_call_loop
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
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_strip_arg_label
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb419
	movl $0, %ecx
	jmp .Lbb420
.Lbb419:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb420:
	cmpl $0, %ecx
	jnz .Lbb445
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_parse_expr
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb444
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
	jnz .Lbb425
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb426
.Lbb425:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb426:
	cmpl $0, %ecx
	jnz .Lbb441
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb430
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb431
.Lbb430:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb431:
	cmpl $0, %ecx
	jnz .Lbb440
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb435
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb437
.Lbb435:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb437:
	cmpl $0, %ecx
	jnz .Lbb439
	leaq str2129(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str2128(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb443
.Lbb439:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %r13, %rdx
	movq %rax, %rdi
	leaq str2125(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb443
.Lbb440:
	movq 16(%rax), %r13
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r15, 8(%rdi)
	movq %r14, 16(%rdi)
	callq donna_list_reverse
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb443
.Lbb441:
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
	callq compiler_parser_parse_exprs_parse_call_args
	movq %rax, (%r12)
.Lbb443:
	movq %rax, (%rbx)
	jmp .Lbb446
.Lbb444:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb446
.Lbb445:
	movq 16(%rax), %rbx
	callq donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb446:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_call_args, @function
.size compiler_parser_parse_exprs_parse_call_args, .-compiler_parser_parse_exprs_parse_call_args
/* end function compiler_parser_parse_exprs_parse_call_args */

.text
.balign 16
compiler_parser_parse_exprs_strip_arg_label:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb449
	movl $0, %ecx
	jmp .Lbb454
.Lbb449:
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
	jnz .Lbb452
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb453
.Lbb452:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $24, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb453:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdx, %rcx
.Lbb454:
	cmpl $0, %ecx
	jz .Lbb456
	movq 16(%rax), %rax
	movq 16(%rax), %rax
.Lbb456:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type compiler_parser_parse_exprs_strip_arg_label, @function
.size compiler_parser_parse_exprs_strip_arg_label, .-compiler_parser_parse_exprs_strip_arg_label
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
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb459
	movl $0, %eax
	jmp .Lbb460
.Lbb459:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
.Lbb460:
	cmpl $0, %eax
	jnz .Lbb589
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb464
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb465
.Lbb464:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb465:
	cmpl $0, %eax
	jnz .Lbb588
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb469
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb470
.Lbb469:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $2, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb470:
	cmpl $0, %eax
	jnz .Lbb587
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb474
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb479
.Lbb474:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rsi
	cmpq $7, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz .Lbb477
	movq $0, (%rsi)
	movl $0, %eax
	jmp .Lbb478
.Lbb477:
	movq 8(%rax), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	andq %r8, %rax
	movq %rax, (%rsi)
.Lbb478:
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb479:
	cmpl $0, %eax
	jnz .Lbb586
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb483
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb488
.Lbb483:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rsi
	cmpq $7, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r8d
	jnz .Lbb486
	movq $0, (%rsi)
	movl $0, %eax
	jmp .Lbb487
.Lbb486:
	movq 8(%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r8, %rax
	movq %rax, (%rsi)
.Lbb487:
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb488:
	cmpl $0, %eax
	jnz .Lbb585
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb492
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb493
.Lbb492:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb493:
	cmpl $0, %eax
	jnz .Lbb584
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb497
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb498
.Lbb497:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $5, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb498:
	cmpl $0, %eax
	jnz .Lbb583
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb502
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb503
.Lbb502:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $12, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb503:
	cmpl $0, %eax
	jnz .Lbb580
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb507
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb508
.Lbb507:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $19, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb508:
	cmpl $0, %eax
	jnz .Lbb577
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb512
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb513
.Lbb512:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $21, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb513:
	cmpl $0, %eax
	jnz .Lbb576
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb517
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb522
.Lbb517:
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
	jnz .Lbb520
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb521
.Lbb520:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $30, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb521:
	cmpq $29, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
.Lbb522:
	cmpl $0, %eax
	jnz .Lbb575
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb526
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb527
.Lbb526:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb527:
	cmpl $0, %eax
	jnz .Lbb574
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb531
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb532
.Lbb531:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb532:
	cmpl $0, %eax
	jnz .Lbb557
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb536
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb537
.Lbb536:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $10, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb537:
	cmpl $0, %eax
	jnz .Lbb556
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb541
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb546
.Lbb541:
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
	jnz .Lbb544
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb545
.Lbb544:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $30, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb545:
	cmpq $14, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
.Lbb546:
	cmpl $0, %eax
	jnz .Lbb555
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb550
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb552
.Lbb550:
	movq $1, (%rax)
	movl $1, %eax
.Lbb552:
	cmpl $0, %eax
	jnz .Lbb554
	leaq str2840(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str2839(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb590
.Lbb554:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq str2836(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb590
.Lbb555:
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rax
	movq 8(%rcx), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_lambda
	jmp .Lbb590
.Lbb556:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rsi
	callq compiler_parser_parse_exprs_parse_case_expr
	jmp .Lbb590
.Lbb557:
	movq 16(%rdi), %rdi
	callq compiler_parser_parse_exprs_parse_expr
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb573
	movq 8(%rax), %rdi
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
	jnz .Lbb561
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb562
.Lbb561:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb562:
	cmpl $0, %ecx
	jnz .Lbb571
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb566
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb568
.Lbb566:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb568:
	cmpl $0, %ecx
	jnz .Lbb570
	leaq str2726(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str2725(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb572
.Lbb570:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %r13, %rdx
	movq %rax, %rdi
	leaq str2722(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb572
.Lbb571:
	movq 16(%rax), %rsi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
.Lbb572:
	movq %rax, (%rbx)
	jmp .Lbb590
.Lbb573:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb590
.Lbb574:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rsi
	callq compiler_parser_parse_exprs_parse_list_expr
	jmp .Lbb590
.Lbb575:
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rax
	movq 8(%rcx), %rsi
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_tuple_expr
	jmp .Lbb590
.Lbb576:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rbx
	movq 8(%rax), %rdi
	callq compiler_parser_ast_Todo
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb590
.Lbb577:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rbx
	callq compiler_parser_parse_exprs_parse_expr
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb579
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq compiler_parser_ast_Panic
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb590
.Lbb579:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb590
.Lbb580:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %rbx
	callq compiler_parser_parse_exprs_parse_expr
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb582
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq compiler_parser_ast_Echo
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb590
.Lbb582:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb590
.Lbb583:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_Var
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb590
.Lbb584:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_Var
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb590
.Lbb585:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	movl $0, %edi
	callq compiler_parser_ast_BoolLit
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb590
.Lbb586:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	movl $1, %edi
	callq compiler_parser_ast_BoolLit
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb590
.Lbb587:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_StringLit
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb590
.Lbb588:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_FloatLit
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb590
.Lbb589:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_IntLit
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb590:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_primary, @function
.size compiler_parser_parse_exprs_parse_primary, .-compiler_parser_parse_exprs_parse_primary
/* end function compiler_parser_parse_exprs_parse_primary */

.text
.balign 16
compiler_parser_parse_exprs_parse_tuple_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb593
	movl $0, %ecx
	jmp .Lbb594
.Lbb593:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb594:
	cmpl $0, %ecx
	jnz .Lbb596
	leaq donna_nil(%rip), %rdx
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_parse_tuple_args
	jmp .Lbb597
.Lbb596:
	movq 16(%rax), %rbx
	leaq donna_nil(%rip), %rdi
	callq compiler_parser_ast_Tuple
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb597:
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_tuple_expr, @function
.size compiler_parser_parse_exprs_parse_tuple_expr, .-compiler_parser_parse_exprs_parse_tuple_expr
/* end function compiler_parser_parse_exprs_parse_tuple_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_tuple_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %rbx
	movq %rsi, %r13
	callq compiler_parser_parse_exprs_parse_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb621
	movq 8(%rax), %r12
	movq 16(%rax), %r14
	movl $24, %edi
	callq malloc
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
	jnz .Lbb602
	movq $0, (%rdi)
	movl $0, %eax
	jmp .Lbb603
.Lbb602:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
.Lbb603:
	cmpl $0, %eax
	jnz .Lbb619
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rcx
	jz .Lbb607
	movq $0, (%rdi)
	movl $0, %eax
	jmp .Lbb608
.Lbb607:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $31, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
.Lbb608:
	cmpl $0, %eax
	jnz .Lbb617
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb612
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb614
.Lbb612:
	movq $1, (%rax)
	movl $1, %eax
.Lbb614:
	cmpl $0, %eax
	jnz .Lbb616
	movq %rsi, %r13
	leaq str2983(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb622
.Lbb616:
	movq 8(%r14), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str2980(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb622
.Lbb617:
	movq %rsi, %r13
	movq 16(%r14), %r12
	movq %rdx, %rdi
	callq donna_list_reverse
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_ast_Tuple
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb622
.Lbb619:
	movq %rdx, %r13
	movq %rsi, %r12
	movq 16(%r14), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %r13, %rdx
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_parse_tuple_args
	movq %rax, (%rbx)
	jmp .Lbb622
.Lbb621:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb622:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_tuple_args, @function
.size compiler_parser_parse_exprs_parse_tuple_args, .-compiler_parser_parse_exprs_parse_tuple_args
/* end function compiler_parser_parse_exprs_parse_tuple_args */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb625
	movl $0, %ecx
	jmp .Lbb626
.Lbb625:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb626:
	cmpl $0, %ecx
	jnz .Lbb628
	leaq donna_nil(%rip), %rdx
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_parse_list_args
	jmp .Lbb629
.Lbb628:
	movq 16(%rax), %rbx
	leaq donna_nil(%rip), %rdi
	callq compiler_parser_ast_EList
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb629:
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_list_expr, @function
.size compiler_parser_parse_exprs_parse_list_expr, .-compiler_parser_parse_exprs_parse_list_expr
/* end function compiler_parser_parse_exprs_parse_list_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_args:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %r14
	movq %rsi, %r13
	callq compiler_parser_parse_exprs_parse_expr
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb671
	movq 8(%rax), %rbx
	movq 16(%rax), %r12
	movl $24, %edi
	callq malloc
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
	jnz .Lbb634
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb639
.Lbb634:
	movq 8(%r12), %rax
	movq 16(%r12), %r8
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r8), %r9
	cmpq $1, %r9
	setz %r10b
	movzbq %r10b, %r10
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz .Lbb637
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb638
.Lbb637:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $27, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb638:
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %r8, %rax
	movq %rax, (%rdx)
.Lbb639:
	cmpl $0, %eax
	jnz .Lbb669
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb643
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb644
.Lbb643:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb644:
	cmpl $0, %eax
	jnz .Lbb667
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb648
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb649
.Lbb648:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $33, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb649:
	cmpl $0, %eax
	jnz .Lbb665
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb653
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb654
.Lbb653:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $27, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb654:
	cmpl $0, %eax
	jnz .Lbb663
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb658
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb660
.Lbb658:
	movq $1, (%rax)
	movl $1, %eax
.Lbb660:
	cmpl $0, %eax
	jnz .Lbb662
	movq %rsi, %r13
	leaq str3209(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb672
.Lbb662:
	movq 8(%r12), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str3206(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb672
.Lbb663:
	movq %rsi, %r13
	movq 16(%r12), %r12
	callq donna_list_reverse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rsi, %r13
	callq compiler_parser_parse_exprs_parse_list_spread
	movq %rax, (%rbx)
	jmp .Lbb672
.Lbb665:
	movq %rsi, %r13
	movq %r12, %r14
	movq 16(%r12), %r12
	callq donna_list_reverse
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	callq compiler_parser_ast_EList
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb672
.Lbb667:
	movq %r12, %r14
	movq %rsi, %r13
	movq %rdi, %r12
	movq 16(%r14), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, %rdx
	movq %rsi, %r13
	callq compiler_parser_parse_exprs_parse_list_args
	movq %rax, (%rbx)
	jmp .Lbb672
.Lbb669:
	movq %rsi, %r13
	movq 16(%r12), %rax
	movq 16(%rax), %r12
	callq donna_list_reverse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_parser_parse_exprs_parse_list_spread
	movq %rax, (%rbx)
	jmp .Lbb672
.Lbb671:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb672:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_list_args, @function
.size compiler_parser_parse_exprs_parse_list_args, .-compiler_parser_parse_exprs_parse_list_args
/* end function compiler_parser_parse_exprs_parse_list_args */

.text
.balign 16
compiler_parser_parse_exprs_parse_list_spread:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rdx, %rbx
	movq %rsi, %r12
	callq compiler_parser_parse_exprs_parse_expr
	movq %r12, %rdx
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb689
	movq 8(%rax), %rsi
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rsi, %rcx
	movq (%rax), %rsi
	cmpq $1, %rsi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r8d
	jnz .Lbb677
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb678
.Lbb677:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $33, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb678:
	cmpl $0, %r8d
	jnz .Lbb687
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rsi
	jz .Lbb682
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb684
.Lbb682:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb684:
	cmpl $0, %ecx
	jnz .Lbb686
	movq %rdx, %rsi
	leaq str3285(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb690
.Lbb686:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str3282(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb690
.Lbb687:
	movq %rcx, %rsi
	movq 16(%rax), %r12
	callq compiler_parser_ast_ListSpread
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb690
.Lbb689:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb690:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_list_spread, @function
.size compiler_parser_parse_exprs_parse_list_spread, .-compiler_parser_parse_exprs_parse_list_spread
/* end function compiler_parser_parse_exprs_parse_list_spread */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_expr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rbx
	callq compiler_parser_parse_exprs_parse_expr
	movq %rbx, %rdx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb719
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb695
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb696
.Lbb695:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $24, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb696:
	cmpl $0, %ecx
	jnz .Lbb705
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb700
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb702
.Lbb700:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb702:
	cmpl $0, %ecx
	jnz .Lbb704
	movq %r13, %rsi
	leaq str3422(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb720
.Lbb704:
	movq 8(%rax), %rax
	movq 8(%rax), %rdi
	callq errors_error_ParseMissingColon
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb720
.Lbb705:
	movq %rdi, %r12
	movq 16(%rax), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %r13, %rdx
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	movq %rdx, %r14
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz .Lbb708
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb709
.Lbb708:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $62, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb709:
	cmpl $0, %ecx
	jnz .Lbb714
	leaq donna_nil(%rip), %rsi
	movq %rdi, %r13
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_parse_inline_case_arms
	movq %r14, %rdx
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb712
	movq 8(%rax), %rsi
	movq 16(%rax), %r14
	callq compiler_parser_ast_Case
	movq %r14, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r13)
	jmp .Lbb713
.Lbb712:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
.Lbb713:
	movq %rax, (%r12)
	jmp .Lbb718
.Lbb714:
	movq %rdi, %r13
	movq 16(%rax), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_exprs_parse_case_arms
	movq %r14, %rdx
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb716
	movq 8(%rax), %rsi
	movq 16(%rax), %r14
	callq compiler_parser_ast_Case
	movq %r14, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r13)
	jmp .Lbb717
.Lbb716:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
.Lbb717:
	movq %rax, (%r12)
.Lbb718:
	movq %rax, (%rbx)
	jmp .Lbb720
.Lbb719:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb720:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_case_expr, @function
.size compiler_parser_parse_exprs_parse_case_expr, .-compiler_parser_parse_exprs_parse_case_expr
/* end function compiler_parser_parse_exprs_parse_case_expr */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_arms:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb723
	movl $0, %edx
	jmp .Lbb724
.Lbb723:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $63, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
.Lbb724:
	cmpl $0, %edx
	jnz .Lbb730
	cmpq $0, %rcx
	jz .Lbb729
	movq %rdi, %r12
	movq %rax, %rdi
	callq compiler_parser_parse_exprs_parse_case_arm
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb728
	movq 8(%rax), %r13
	movq 16(%rax), %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq compiler_parser_parse_exprs_parse_case_arms
	movq %rax, (%rbx)
	jmp .Lbb731
.Lbb728:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb731
.Lbb729:
	callq donna_list_reverse
	movq %rax, %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_result_POk
	jmp .Lbb731
.Lbb730:
	movq 16(%rax), %rbx
	callq donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb731:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_case_arms, @function
.size compiler_parser_parse_exprs_parse_case_arms, .-compiler_parser_parse_exprs_parse_case_arms
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
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdi
	movq %rax, %r12
	movq (%r12), %rax
	cmpq $0, %rax
	jz .Lbb759
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb736
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb737
.Lbb736:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $63, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb737:
	cmpl $0, %eax
	jnz .Lbb757
	movq %rdi, %rbx
	movq %r12, %rdi
	callq compiler_parser_parse_exprs_is_pattern_start
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz .Lbb743
	movq %rdi, %r13
	movq %rsi, %rdi
	callq compiler_parser_parse_exprs_parse_case_arm
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb741
	movq 8(%rax), %r14
	movq 16(%rax), %rdi
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	callq compiler_parser_parse_exprs_parse_inline_case_arms
	movq %rax, (%r12)
	jmp .Lbb742
.Lbb741:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb742:
	movq %rax, (%rbx)
	jmp .Lbb760
.Lbb743:
	movq %rsi, %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb746
	callq donna_list_reverse
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb756
.Lbb746:
	movq %r13, %rsi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rsi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpl $0, %ecx
	jnz .Lbb750
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb752
.Lbb750:
	movq $1, (%rax)
	movl $1, %eax
.Lbb752:
	cmpl $0, %eax
	jnz .Lbb754
	leaq str3564(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str3563(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
	jmp .Lbb755
.Lbb754:
	movq 8(%rsi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r14
	callq compiler_lexer_token_to_string
	movq %r14, %rdx
	movq %rax, %rdi
	leaq str3560(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
.Lbb755:
	movq %rax, (%r12)
.Lbb756:
	movq %rax, (%rbx)
	jmp .Lbb760
.Lbb757:
	movq %r12, %rbx
	callq donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb760
.Lbb759:
	callq donna_list_reverse
	movq %rax, %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_result_POk
.Lbb760:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_inline_case_arms, @function
.size compiler_parser_parse_exprs_parse_inline_case_arms, .-compiler_parser_parse_exprs_parse_inline_case_arms
/* end function compiler_parser_parse_exprs_parse_inline_case_arms */

.text
.balign 16
compiler_parser_parse_exprs_is_pattern_start:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb763
	movl $0, %ecx
	jmp .Lbb764
.Lbb763:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $6, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb764:
	cmpl $0, %ecx
	jnz .Lbb824
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb768
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb769
.Lbb768:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb769:
	cmpl $0, %ecx
	jnz .Lbb823
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb773
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb774
.Lbb773:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb774:
	cmpl $0, %ecx
	jnz .Lbb822
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb778
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb779
.Lbb778:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb779:
	cmpl $0, %ecx
	jnz .Lbb821
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb783
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb784
.Lbb783:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $7, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb784:
	cmpl $0, %ecx
	jnz .Lbb820
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb788
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb789
.Lbb788:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $5, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb789:
	cmpl $0, %ecx
	jnz .Lbb819
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb793
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb794
.Lbb793:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb794:
	cmpl $0, %ecx
	jnz .Lbb818
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb798
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb803
.Lbb798:
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
	jnz .Lbb801
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb802
.Lbb801:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb802:
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
	movq %rcx, (%rdx)
.Lbb803:
	cmpl $0, %ecx
	jnz .Lbb817
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb807
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb808
.Lbb807:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $29, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb808:
	cmpl $0, %ecx
	jnz .Lbb816
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz .Lbb812
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb813
.Lbb812:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb813:
	cmpl $0, %eax
	jnz .Lbb815
	movl $0, %eax
	jmp .Lbb825
.Lbb815:
	movl $1, %eax
	jmp .Lbb825
.Lbb816:
	movl $1, %eax
	jmp .Lbb825
.Lbb817:
	movl $1, %eax
	jmp .Lbb825
.Lbb818:
	movl $1, %eax
	jmp .Lbb825
.Lbb819:
	movl $1, %eax
	jmp .Lbb825
.Lbb820:
	movl $1, %eax
	jmp .Lbb825
.Lbb821:
	movl $1, %eax
	jmp .Lbb825
.Lbb822:
	movl $1, %eax
	jmp .Lbb825
.Lbb823:
	movl $1, %eax
	jmp .Lbb825
.Lbb824:
	movl $1, %eax
.Lbb825:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type compiler_parser_parse_exprs_is_pattern_start, @function
.size compiler_parser_parse_exprs_is_pattern_start, .-compiler_parser_parse_exprs_is_pattern_start
/* end function compiler_parser_parse_exprs_is_pattern_start */

.text
.balign 16
compiler_parser_parse_exprs_parse_case_arm:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq compiler_parser_parse_patterns_parse_pattern
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb875
	movq 8(%rax), %rdi
	movq 16(%rax), %r14
	movq %rdi, %rbx
	callq compiler_parser_parse_exprs_pat_span
	movq %rbx, %rdi
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rcx, %r13
	movq (%r14), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz .Lbb830
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb831
.Lbb830:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $15, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb831:
	cmpl $0, %eax
	jnz .Lbb849
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb835
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb836
.Lbb835:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $23, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb836:
	cmpl $0, %eax
	jnz .Lbb845
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb840
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb842
.Lbb840:
	movq $1, (%rax)
	movl $1, %eax
.Lbb842:
	cmpl $0, %eax
	jnz .Lbb844
	movq %r13, %rsi
	leaq str4109(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb876
.Lbb844:
	movq 8(%r14), %rax
	movq 8(%rax), %rdi
	callq errors_error_ParseMissingArrow
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb876
.Lbb845:
	movq %rdi, %r12
	movq 16(%r14), %rdi
	callq compiler_parser_parse_exprs_parse_arm_body
	movq %r13, %rcx
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb847
	movq 8(%rax), %rdx
	movq 16(%rax), %rsi
	movq %rcx, %r13
	movq %rsi, %r13
	leaq donna_option_None(%rip), %rsi
	callq compiler_parser_ast_CaseClause
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb848
.Lbb847:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb848:
	movq %rax, (%rbx)
	jmp .Lbb876
.Lbb849:
	movq %rdi, %r12
	movq 16(%r14), %rdi
	callq compiler_parser_parse_exprs_parse_expr
	movq %r13, %rcx
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq %r14, -32(%rbp)
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb872
	movq 8(%rax), %rdx
	movq %rdx, -8(%rbp)
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %esi
	jnz .Lbb853
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb854
.Lbb853:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $23, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb854:
	cmpl $0, %esi
	jnz .Lbb865
	movq %rcx, %r15
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb858
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb860
.Lbb858:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb860:
	cmpl $0, %ecx
	jnz .Lbb863
	movq %r15, %rsi
	leaq str4036(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
	movq %r14, %r12
	jmp .Lbb871
.Lbb863:
	movq 8(%rax), %rax
	movq 8(%rax), %rdi
	callq errors_error_ParseMissingArrow
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
	movq %r14, %r12
	jmp .Lbb871
.Lbb865:
	movq %rcx, %r15
	movq %rdi, %r12
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_arm_body
	movq %r14, %rcx
	movq %r12, %rdi
	movq %rdi, %r12
	movq -8(%rbp), %rdi
	subq $16, %rsp
	movq %rsp, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb868
	movq 8(%rax), %rdx
	movq %rdx, -16(%rbp)
	movq 16(%rax), %rsi
	movq %rsi, -24(%rbp)
	callq donna_option_Some
	movq %r15, %rcx
	movq %r12, %rdi
	movq %rax, %rsi
	movq -32(%rbp), %r12
	movq -24(%rbp), %r15
	movq -16(%rbp), %rdx
	callq compiler_parser_ast_CaseClause
	movq %r15, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r14)
	jmp .Lbb870
.Lbb868:
	movq %rcx, %r12
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r14)
.Lbb870:
	movq %rax, (%r13)
.Lbb871:
	movq %rax, (%r12)
	jmp .Lbb874
.Lbb872:
	movq %r14, %r12
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb874:
	movq %rax, (%rbx)
	jmp .Lbb876
.Lbb875:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb876:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_case_arm, @function
.size compiler_parser_parse_exprs_parse_case_arm, .-compiler_parser_parse_exprs_parse_case_arm
/* end function compiler_parser_parse_exprs_parse_case_arm */

.text
.balign 16
compiler_parser_parse_exprs_parse_arm_body:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb879
	movl $0, %eax
	jmp .Lbb884
.Lbb879:
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
	jnz .Lbb882
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb883
.Lbb882:
	movq 8(%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $62, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb883:
	cmpq $61, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rcx, %rax
.Lbb884:
	cmpl $0, %eax
	jnz .Lbb886
	callq compiler_parser_parse_exprs_parse_expr
	jmp .Lbb887
.Lbb886:
	movq 16(%rdi), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq 8(%rax), %rsi
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_exprs_parse_block_stmts
.Lbb887:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type compiler_parser_parse_exprs_parse_arm_body, @function
.size compiler_parser_parse_exprs_parse_arm_body, .-compiler_parser_parse_exprs_parse_arm_body
/* end function compiler_parser_parse_exprs_parse_arm_body */

.text
.balign 16
compiler_parser_parse_exprs_parse_lambda:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %rbx
	callq compiler_parser_parse_params_parse_params
	movq %rbx, %rdx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb906
	movq 8(%rax), %rdi
	movq 16(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb892
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb893
.Lbb892:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $23, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb893:
	cmpl $0, %ecx
	jnz .Lbb902
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb897
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb899
.Lbb897:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb899:
	cmpl $0, %ecx
	jnz .Lbb901
	movq %r13, %rsi
	leaq str4255(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb907
.Lbb901:
	movq 8(%rax), %rax
	movq 8(%rax), %rdi
	callq errors_error_ParseMissingArrow
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb907
.Lbb902:
	movq %rdi, %r12
	movq 16(%rax), %rdi
	callq compiler_parser_parse_exprs_parse_expr
	movq %r13, %rdx
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb904
	movq 8(%rax), %rsi
	movq 16(%rax), %r13
	callq compiler_parser_ast_Lambda
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb905
.Lbb904:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb905:
	movq %rax, (%rbx)
	jmp .Lbb907
.Lbb906:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb907:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_exprs_parse_lambda, @function
.size compiler_parser_parse_exprs_parse_lambda, .-compiler_parser_parse_exprs_parse_lambda
/* end function compiler_parser_parse_exprs_parse_lambda */

.text
.balign 16
.globl compiler_parser_parse_exprs_expr_span
compiler_parser_parse_exprs_expr_span:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb944
	cmpq $1, %rax
	jz .Lbb943
	cmpq $2, %rax
	jz .Lbb942
	cmpq $3, %rax
	jz .Lbb941
	cmpq $4, %rax
	jz .Lbb940
	cmpq $5, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb939
	cmpq $6, %rax
	jz .Lbb938
	cmpq $7, %rax
	jz .Lbb937
	cmpq $8, %rax
	jz .Lbb936
	cmpq $9, %rax
	jz .Lbb935
	cmpq $10, %rax
	jz .Lbb934
	cmpq $11, %rax
	jz .Lbb933
	cmpq $12, %rax
	jz .Lbb932
	cmpq $13, %rax
	jz .Lbb931
	cmpq $14, %rax
	jz .Lbb930
	cmpq $15, %rax
	jz .Lbb929
	cmpq $16, %rax
	jz .Lbb928
	cmpq $17, %rax
	jz .Lbb927
	movq 8(%rdi), %rax
	jmp .Lbb945
.Lbb927:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb928:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb929:
	movq 24(%rdi), %rax
	jmp .Lbb945
.Lbb930:
	movq 24(%rdi), %rax
	jmp .Lbb945
.Lbb931:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb932:
	movq 24(%rdi), %rax
	jmp .Lbb945
.Lbb933:
	movq 24(%rdi), %rax
	jmp .Lbb945
.Lbb934:
	movq 32(%rdi), %rax
	jmp .Lbb945
.Lbb935:
	movq 24(%rdi), %rax
	jmp .Lbb945
.Lbb936:
	movq 24(%rdi), %rax
	jmp .Lbb945
.Lbb937:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb938:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb939:
	movq 24(%rdi), %rax
	jmp .Lbb945
.Lbb940:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb941:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb942:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb943:
	movq 16(%rdi), %rax
	jmp .Lbb945
.Lbb944:
	movq 16(%rdi), %rax
.Lbb945:
	ret
.type compiler_parser_parse_exprs_expr_span, @function
.size compiler_parser_parse_exprs_expr_span, .-compiler_parser_parse_exprs_expr_span
/* end function compiler_parser_parse_exprs_expr_span */

.text
.balign 16
compiler_parser_parse_exprs_pat_span:
	endbr64
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb964
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb963
	cmpq $2, %rax
	jz .Lbb962
	cmpq $3, %rax
	jz .Lbb961
	cmpq $4, %rax
	jz .Lbb960
	cmpq $5, %rax
	jz .Lbb959
	cmpq $6, %rax
	jz .Lbb958
	cmpq $7, %rax
	jz .Lbb957
	cmpq $8, %rax
	jz .Lbb956
	movq 32(%rdi), %rax
	jmp .Lbb965
.Lbb956:
	movq 24(%rdi), %rax
	jmp .Lbb965
.Lbb957:
	movq 16(%rdi), %rax
	jmp .Lbb965
.Lbb958:
	movq 16(%rdi), %rax
	jmp .Lbb965
.Lbb959:
	movq 16(%rdi), %rax
	jmp .Lbb965
.Lbb960:
	movq 16(%rdi), %rax
	jmp .Lbb965
.Lbb961:
	movq 16(%rdi), %rax
	jmp .Lbb965
.Lbb962:
	movq 16(%rdi), %rax
	jmp .Lbb965
.Lbb963:
	movq 16(%rdi), %rax
	jmp .Lbb965
.Lbb964:
	movq 8(%rdi), %rax
.Lbb965:
	ret
.type compiler_parser_parse_exprs_pat_span, @function
.size compiler_parser_parse_exprs_pat_span, .-compiler_parser_parse_exprs_pat_span
/* end function compiler_parser_parse_exprs_pat_span */

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
