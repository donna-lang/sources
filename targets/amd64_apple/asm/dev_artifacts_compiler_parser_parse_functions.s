.data
.balign 8
_str175:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
_str284:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
_str314:
	.ascii "function name"
	.byte 0
/* end data */

.data
.balign 8
_str340:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str343:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str344:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str669:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str672:
	.ascii "fn"
	.byte 0
/* end data */

.data
.balign 8
_str699:
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
_str702:
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
_str754:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
_str784:
	.ascii "external"
	.byte 0
/* end data */

.data
.balign 8
_str810:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
_str813:
	.ascii "@"
	.byte 0
/* end data */

.data
.balign 8
_str814:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_parser_parse_functions_parse_function
_compiler_parser_parse_functions_parse_function:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq _compiler_parser_parse_functions_parse_pub
	movq (%rax), %rsi
	movq %rsi, -8(%rbp)
	movq 8(%rax), %rax
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
	leaq _str344(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str343(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb67
Lbb43:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str340(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb67
Lbb44:
	movq 8(%rax), %rax
	movq 8(%rax), %rsi
	leaq _str314(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb67
Lbb45:
	movq 16(%rax), %rax
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str284(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb67
Lbb46:
	movq 16(%rax), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq 8(%rax), %rsi
	callq _errors_error_ParseUppercaseFnName
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb67
Lbb47:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rcx), %r13
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rdx
	movq 8(%rdx), %rdi
	movq 8(%rcx), %r15
	movq %rdi, %rbx
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_params_parse_params
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb66
	movq 8(%rax), %r14
	movq %rdi, %r12
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_functions_parse_optional_return
	movq %r14, %rdx
	movq %r13, %rsi
	movq %r12, %rdi
	movq (%rax), %rcx
	movq %rcx, -16(%rbp)
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb51
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb52
Lbb51:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $24, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb52:
	cmpl $0, %ecx
	jnz Lbb61
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
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
	leaq _str175(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp Lbb65
Lbb60:
	movq 8(%rax), %rax
	movq 8(%rax), %rdi
	callq _errors_error_ParseMissingColon
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp Lbb65
Lbb61:
	movq %rdi, %r13
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_exprs_parse_block
	movq %r15, %r9
	movq %r14, %rdx
	movq %r13, %rdi
	movq -16(%rbp), %rcx
	movq -8(%rbp), %rsi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb63
	movq 8(%rax), %r8
	movq 16(%rax), %r14
	callq _compiler_parser_ast_Function
	movq %r14, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_result_POk
	movq %rax, (%r13)
	jmp Lbb64
Lbb63:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r13)
Lbb64:
	movq %rax, (%r12)
Lbb65:
	movq %rax, (%rbx)
	jmp Lbb67
Lbb66:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
Lbb67:
	movq %rbp, %rsp
	subq $64, %rsp
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
.globl _compiler_parser_parse_functions_parse_external_fn
_compiler_parser_parse_functions_parse_external_fn:
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
	jnz Lbb70
	movl $0, %eax
	jmp Lbb79
Lbb70:
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
	jnz Lbb73
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb78
Lbb73:
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
	cmpq $13, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	andq %r8, %rdx
	movq %rdx, (%rsi)
Lbb78:
	cmpq $8, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
Lbb79:
	cmpl $0, %eax
	jnz Lbb105
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb83
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb89
Lbb83:
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
	jnz Lbb86
	movq $0, (%rsi)
	movl $0, %esi
	jmp Lbb88
Lbb86:
	movq $1, (%rsi)
	movl $1, %esi
Lbb88:
	cmpq $8, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
Lbb89:
	cmpl $0, %eax
	jnz Lbb104
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz Lbb93
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb94
Lbb93:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $8, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb94:
	cmpl $0, %eax
	jnz Lbb103
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb98
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb100
Lbb98:
	movq $1, (%rax)
	movl $1, %eax
Lbb100:
	cmpl $0, %eax
	jnz Lbb102
	leaq _str814(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str813(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb156
Lbb102:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str810(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb156
Lbb103:
	movq 8(%rdi), %rax
	movq 8(%rax), %rsi
	leaq _str784(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb156
Lbb104:
	movq 16(%rdi), %rax
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str754(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb156
Lbb105:
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rax
	movq 8(%rcx), %r15
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
	jnz Lbb108
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb121
Lbb108:
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
	jnz Lbb111
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb120
Lbb111:
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
	jnz Lbb114
	movq $0, (%r10)
	movl $0, %r9d
	jmp Lbb119
Lbb114:
	movq 8(%r11), %r9
	movq 16(%r11), %r11
	movq (%r9), %r9
	movq (%r9), %r9
	movq (%r11), %r12
	cmpq $1, %r12
	setz %r13b
	movzbq %r13b, %r13
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %r13d
	jnz Lbb117
	movq $0, (%r12)
	movl $0, %r11d
	jmp Lbb118
Lbb117:
	movq 8(%r11), %r11
	movq (%r11), %r11
	movq (%r11), %r11
	cmpq $31, %r11
	setz %r11b
	movzbq %r11b, %r11
	andq $1, %r11
	movq %r11, (%r12)
Lbb118:
	cmpq $2, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	andq %r11, %r9
	movq %r9, (%r10)
Lbb119:
	cmpq $25, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	andq %r9, %rdi
	movq %rdi, (%r8)
Lbb120:
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
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
	movq %r15, %rsi
	leaq _str702(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb156
Lbb129:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq _compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq _str699(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp Lbb156
Lbb130:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r8
	movq %r8, -16(%rbp)
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r9
	movq %r9, -24(%rbp)
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq _compiler_parser_parse_functions_parse_pub
	movq (%rax), %rsi
	movq %rsi, -32(%rbp)
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
	jnz Lbb133
	movq $0, (%rsi)
	movl $0, %ecx
	jmp Lbb142
Lbb133:
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
	jnz Lbb136
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb141
Lbb136:
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
	jnz Lbb139
	movq $0, (%r10)
	movl $0, %r9d
	jmp Lbb140
Lbb139:
	movq 8(%r9), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $30, %r9
	setz %r9b
	movzbq %r9b, %r9
	andq $1, %r9
	movq %r9, (%r10)
Lbb140:
	cmpq $4, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	andq %r9, %rdi
	movq %rdi, (%r8)
Lbb141:
	cmpq $14, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
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
	movq %r15, %rsi
	leaq _str672(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp Lbb155
Lbb150:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq _compiler_lexer_token_to_string
	movq %r13, %rdx
	movq %rax, %rdi
	leaq _str669(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp Lbb155
Lbb151:
	movq 16(%rax), %rax
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %rdi
	movq %rdi, %r13
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_params_parse_params
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb153
	movq 8(%rax), %rdx
	movq %rdx, -48(%rbp)
	movq %rdi, %r14
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_functions_parse_optional_return
	movq %r14, %rdi
	movq (%rax), %rcx
	movq %rcx, -40(%rbp)
	movq %rdi, %r14
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r14, %rdi
	movq %rax, %rsi
	movq -40(%rbp), %rcx
	movq -48(%rbp), %rdx
	movq %rsi, %r14
	movq -32(%rbp), %rsi
	movq -24(%rbp), %r9
	movq -16(%rbp), %r8
	subq $16, %rsp
	movq %rsp, %rax
	movq %r15, 0(%rax)
	callq _compiler_parser_ast_ExternalFn
	movq %r14, %rsi
	movq %rax, %rdi
	subq $-16, %rsp
	callq _compiler_parser_parse_result_POk
	movq %rax, (%r13)
	jmp Lbb154
Lbb153:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%r13)
Lbb154:
	movq %rax, (%r12)
Lbb155:
	movq %rax, (%rbx)
Lbb156:
	movq %rbp, %rsp
	subq $96, %rsp
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
_compiler_parser_parse_functions_parse_pub:
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
	jnz Lbb159
	movl $0, %eax
	jmp Lbb160
Lbb159:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $20, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb160:
	cmpl $0, %eax
	jnz Lbb162
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	jmp Lbb163
Lbb162:
	movq 16(%rdi), %rbx
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
Lbb163:
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_functions_parse_pub */

.text
.balign 16
_compiler_parser_parse_functions_parse_optional_return:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb166
	movl $0, %eax
	jmp Lbb167
Lbb166:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $23, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb167:
	cmpl $0, %eax
	jnz Lbb169
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	leaq _donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %rdi, 8(%rax)
	jmp Lbb172
Lbb169:
	movq %rdi, %rbx
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_types_parse_type
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb171
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	callq _donna_option_Some
	movq %rax, %r13
	movl $16, %edi
	callq _malloc
	movq %r13, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp Lbb172
Lbb171:
	movq %rdi, %r12
	movl $16, %edi
	callq _malloc
	movq %r12, %rdi
	leaq _donna_option_None(%rip), %rcx
	movq %rcx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rbx)
Lbb172:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_functions_parse_optional_return */

