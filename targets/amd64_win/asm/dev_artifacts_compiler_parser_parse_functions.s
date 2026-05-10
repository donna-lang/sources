.data
.balign 8
str175:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str284:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
str314:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str343:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str344:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str669:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str672:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
str699:
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
str702:
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
str754:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
str784:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
str810:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
str813:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
str814:
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
	subq $8, %rsp
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
	movq %rdx, %r12
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
	jnz Lbb5
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb10
Lbb5:
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
	jnz Lbb8
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb9
Lbb8:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $30, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb9:
	cmpq $4, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r8, %rsi
	movq %rsi, (%rdi)
Lbb10:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
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
	leaq str344(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str343(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb67
Lbb43:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str340(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb67
Lbb44:
	movq 8(%rax), %rax
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str314(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb67
Lbb45:
	movq 16(%rax), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str284(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb67
Lbb46:
	movq 16(%rax), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq errors_error_ParseUppercaseFnName
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb67
Lbb47:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %rdx
	movq %rdx, %rdi
	movq 8(%rax), %rdx
	movq 16(%rax), %rax
	movq (%rdx), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rdx), %r13
	movq %rcx, %rsi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_params_parse_params
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdi
	cmpq $1, %rdi
	movq %rdx, %rbx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb66
	movq 8(%rax), %r14
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_functions_parse_optional_return
	movq %r14, %r8
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %r9
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq %r8, %r14
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r11b
	movzbq %r11b, %r11
	subq $16, %rsp
	movq %rsp, %r10
	cmpl $0, %r11d
	jnz Lbb51
	movq $0, (%r10)
	movq %r9, %r15
	movl $0, %r9d
	jmp Lbb52
Lbb51:
	movq 8(%rax), %r11
	movq (%r11), %r11
	movq (%r11), %r11
	cmpq $24, %r11
	movq %r9, %r15
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
Lbb52:
	cmpl $0, %r9d
	jnz Lbb61
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %r8
	jz Lbb56
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb58
Lbb56:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb58:
	cmpl $0, %ecx
	jnz Lbb60
	subq $32, %rsp
	leaq str175(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb65
Lbb60:
	movq 8(%rax), %rax
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq errors_error_ParseMissingColon
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb65
Lbb61:
	movq %rcx, %rbx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_exprs_parse_block
	movq %r15, %r9
	movq %r14, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r10
	cmpq $1, %r10
	setz %r10b
	movzbq %r10b, %r10
	cmpl $0, %r10d
	jnz Lbb63
	movq %rax, %r10
	movq 8(%rax), %rax
	movq 16(%r10), %r12
	subq $48, %rsp
	movq %rsp, %r10
	movq %r13, 40(%r10)
	movq %rax, 32(%r10)
	callq compiler_parser_ast_Function
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-48, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb64
Lbb63:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb64:
	movq %rax, (%rdi)
Lbb65:
	movq %rax, (%rsi)
	jmp Lbb67
Lbb66:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb67:
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
/* end function compiler_parser_parse_functions_parse_function */

.text
.balign 16
.globl compiler_parser_parse_functions_parse_external_fn
compiler_parser_parse_functions_parse_external_fn:
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
	movq %rcx, %rax
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb70
	movl $0, %ecx
	jmp Lbb79
Lbb70:
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
	jnz Lbb73
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb78
Lbb73:
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
	jnz Lbb76
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb77
Lbb76:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $30, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb77:
	cmpq $13, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	andq %r8, %rsi
	movq %rsi, (%rdi)
Lbb78:
	cmpq $8, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
Lbb79:
	cmpl $0, %ecx
	jnz Lbb105
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb83
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb89
Lbb83:
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
	jnz Lbb86
	movq $0, (%rdi)
	movl $0, %edi
	jmp Lbb88
Lbb86:
	movq $1, (%rdi)
	movl $1, %edi
Lbb88:
	cmpq $8, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
Lbb89:
	cmpl $0, %ecx
	jnz Lbb104
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb93
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb94
Lbb93:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $8, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
Lbb94:
	cmpl $0, %ecx
	jnz Lbb103
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb98
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb100
Lbb98:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb100:
	cmpl $0, %ecx
	jnz Lbb102
	subq $32, %rsp
	leaq str814(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str813(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb156
Lbb102:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str810(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb156
Lbb103:
	movq 8(%rax), %rax
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str784(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb156
Lbb104:
	movq 16(%rax), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str754(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb156
Lbb105:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r15
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
	jnz Lbb108
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb121
Lbb108:
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
	jnz Lbb111
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb120
Lbb111:
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
	jnz Lbb114
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb119
Lbb114:
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
	jnz Lbb117
	movq $0, (%r12)
	movl $0, %ebx
	jmp Lbb118
Lbb117:
	movq 8(%rbx), %rbx
	movq (%rbx), %rbx
	movq (%rbx), %rbx
	cmpq $31, %rbx
	setz %bl
	movzbq %bl, %rbx
	andq $1, %rbx
	movq %rbx, (%r12)
Lbb118:
	cmpq $2, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	andq %rbx, %r10
	movq %r10, (%r11)
Lbb119:
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
Lbb120:
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %r8, %rcx
	movq %rcx, (%rdi)
Lbb121:
	cmpl $0, %ecx
	jnz Lbb130
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb125
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb127
Lbb125:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb127:
	cmpl $0, %ecx
	jnz Lbb129
	subq $32, %rsp
	movq %r15, %rdx
	leaq str702(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb156
Lbb129:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str699(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb156
Lbb130:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r13
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r14
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_functions_parse_pub
	subq $-32, %rsp
	movq (%rax), %rdx
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq %rdx, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb133
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb142
Lbb133:
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
	jnz Lbb136
	movq $0, (%r10)
	movl $0, %r9d
	jmp Lbb141
Lbb136:
	movq 8(%r11), %r9
	movq 16(%r11), %r11
	movq (%r9), %r9
	movq (%r9), %r9
	movq (%r11), %rbx
	cmpq $1, %rbx
	setz %bl
	movzbq %bl, %rbx
	movq %rbx, -8(%rbp)
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, -8(%rbp)
	jnz Lbb139
	movq $0, (%rbx)
	movl $0, %r11d
	jmp Lbb140
Lbb139:
	movq 8(%r11), %r11
	movq (%r11), %r11
	movq (%r11), %r11
	cmpq $30, %r11
	setz %r11b
	movzbq %r11b, %r11
	andq $1, %r11
	movq %r11, (%rbx)
Lbb140:
	cmpq $4, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	andq %r11, %r9
	movq %r9, (%r10)
Lbb141:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %r9, %rcx
	movq %rcx, (%r8)
Lbb142:
	cmpl $0, %ecx
	jnz Lbb151
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb146
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb148
Lbb146:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb148:
	cmpl $0, %ecx
	jnz Lbb150
	subq $32, %rsp
	movq %r15, %rdx
	leaq str672(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb155
Lbb150:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rbx, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str669(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb155
Lbb151:
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %rcx
	movq %rcx, -32(%rbp)
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
	jnz Lbb153
	movq 8(%rax), %r8
	movq %r8, -24(%rbp)
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_functions_parse_optional_return
	subq $-32, %rsp
	movq (%rax), %r9
	movq %r9, -16(%rbp)
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r12, %rdx
	movq %rax, %r12
	movq -16(%rbp), %r9
	movq -24(%rbp), %r8
	movq -32(%rbp), %rcx
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rax
	movq %r15, 48(%rax)
	movq %r14, 40(%rax)
	movq %r13, 32(%rax)
	callq compiler_parser_ast_ExternalFn
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-64, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb154
Lbb153:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb154:
	movq %rax, (%rdi)
Lbb155:
	movq %rax, (%rsi)
Lbb156:
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
	jnz Lbb159
	movl $0, %eax
	jmp Lbb160
Lbb159:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $20, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb160:
	cmpl $0, %eax
	jnz Lbb162
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb163
Lbb162:
	movq 16(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb163:
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
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb166
	movl $0, %eax
	jmp Lbb167
Lbb166:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $23, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb167:
	cmpl $0, %eax
	jnz Lbb169
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	leaq donna_option_None(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb172
Lbb169:
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
	jz Lbb171
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq donna_option_Some
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb172
Lbb171:
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
Lbb172:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_functions_parse_optional_return */

