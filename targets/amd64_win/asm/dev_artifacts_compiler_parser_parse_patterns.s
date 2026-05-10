.data
.balign 8
str7:
	.ascii "pattern"
	.byte 0
/* end data */

.data
.balign 8
str8:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str170:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str629:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str632:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str673:
	.ascii "pattern"
	.byte 0
/* end data */

.data
.balign 8
str813:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str816:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str817:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str1099:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
str1102:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1136:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str1160:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str1209:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str1236:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1239:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1272:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str1329:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1332:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1420:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1423:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1450:
	.ascii "name or _"
	.byte 0
/* end data */

.data
.balign 8
str1453:
	.ascii "spread variable"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_patterns_parse_pattern
compiler_parser_parse_patterns_parse_pattern:
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
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rsi
	subq $-32, %rsp
	movq (%rsi), %rax
	cmpq $0, %rax
	jz Lbb137
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %eax
	jnz Lbb4
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb9
Lbb4:
	movq 8(%rsi), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz Lbb7
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb8
Lbb7:
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str32(%rip), %rdx
	callq strcmp
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r12, %rax
	movq %rax, (%rbx)
Lbb8:
	andq $1, %rax
	movq %rax, (%rdi)
Lbb9:
	cmpl $0, %eax
	jnz Lbb136
	movq (%rsi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz Lbb13
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb14
Lbb13:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $6, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb14:
	cmpl $0, %ecx
	jnz Lbb135
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb18
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb19
Lbb18:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb19:
	cmpl $0, %ecx
	jnz Lbb134
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb23
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb28
Lbb23:
	movq 8(%rsi), %rcx
	movq 16(%rsi), %rdi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rdi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb26
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb27
Lbb26:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $0, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb27:
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rdx)
Lbb28:
	cmpl $0, %ecx
	jnz Lbb133
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb32
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb33
Lbb32:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb33:
	cmpl $0, %ecx
	jnz Lbb132
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb37
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb38
Lbb37:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb38:
	cmpl $0, %ecx
	jnz Lbb131
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb42
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb47
Lbb42:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rdi
	cmpq $7, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb45
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb46
Lbb45:
	movq 8(%rcx), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq %r8, %rcx
	movq %rcx, (%rdi)
Lbb46:
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb47:
	cmpl $0, %ecx
	jnz Lbb130
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb51
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb56
Lbb51:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rdi
	cmpq $7, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz Lbb54
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb55
Lbb54:
	movq 8(%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq %r8, %rcx
	movq %rcx, (%rdi)
Lbb55:
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb56:
	cmpl $0, %ecx
	jnz Lbb129
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb60
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb61
Lbb60:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $5, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb61:
	cmpl $0, %ecx
	jnz Lbb118
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb65
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb66
Lbb65:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb66:
	cmpl $0, %ecx
	jnz Lbb96
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb70
	movq $0, (%rdx)
	movl $0, %ecx
	jmp Lbb71
Lbb70:
	movq 8(%rsi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $29, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
Lbb71:
	cmpl $0, %ecx
	jnz Lbb79
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz Lbb75
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb76
Lbb75:
	movq 8(%rsi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb76:
	cmpl $0, %eax
	jnz Lbb78
	movq 8(%rsi), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str673(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb138
Lbb78:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_patterns_parse_list_pattern
	subq $-32, %rsp
	jmp Lbb138
Lbb79:
	movq 8(%rsi), %rcx
	movq 16(%rsi), %rax
	movq 8(%rcx), %rdx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdi
	cmpq $1, %rdi
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %ecx
	jnz Lbb82
	movq $0, (%r8)
	movl $0, %ecx
	jmp Lbb83
Lbb82:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%r8)
Lbb83:
	cmpl $0, %ecx
	jnz Lbb92
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdi
	jz Lbb87
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb89
Lbb87:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb89:
	cmpl $0, %ecx
	jnz Lbb91
	subq $32, %rsp
	leaq str632(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb138
Lbb91:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str629(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb138
Lbb92:
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb94
	movq 8(%rax), %rcx
	movq 16(%rax), %rbx
	subq $32, %rsp
	callq compiler_parser_ast_PTuple
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb95
Lbb94:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb95:
	movq %rax, (%rsi)
	jmp Lbb138
Lbb96:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %r9
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb99
	movq $0, (%rdx)
	movq %r9, %r13
	movl $0, %eax
	jmp Lbb104
Lbb99:
	movq 8(%rdi), %rax
	movq 16(%rdi), %r8
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r8), %r10
	cmpq $1, %r10
	setz %r10b
	movzbq %r10b, %r10
	movq %r9, %r13
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r10d
	jnz Lbb102
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb103
Lbb102:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $5, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb103:
	cmpq $26, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %r8, %rax
	movq %rax, (%rdx)
Lbb104:
	cmpl $0, %eax
	jnz Lbb106
	subq $32, %rsp
	movq %r13, %rdx
	callq compiler_parser_ast_PVar
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb138
Lbb106:
	movq 16(%rdi), %rdx
	movq 8(%rdx), %rax
	movq 16(%rdx), %r12
	movq (%rax), %rax
	movq 8(%rax), %rdx
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r12), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rdx, %rbx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb109
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb110
Lbb109:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb110:
	cmpl $0, %eax
	jnz Lbb112
	subq $32, %rsp
	callq donna_option_Some
	movq %r13, %r9
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r9, %r15
	leaq donna_nil(%rip), %r8
	callq compiler_parser_ast_PCons
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb117
Lbb112:
	movq %rbx, %rdx
	movq %r13, %r15
	movq %rcx, %rbx
	movq 16(%r12), %rcx
	subq $32, %rsp
	movq %rdx, %r12
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %r8
	cmpq $1, %r8
	movq %rdx, %r13
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb115
	movq 8(%rax), %r14
	movq 16(%rax), %r12
	subq $32, %rsp
	callq donna_option_Some
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_PCons
	movq %r12, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rbx)
	jmp Lbb116
Lbb115:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb116:
	movq %rax, (%rdi)
Lbb117:
	movq %rax, (%rsi)
	jmp Lbb138
Lbb118:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %rdx
	movq 8(%rax), %r9
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb121
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb122
Lbb121:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb122:
	cmpl $0, %eax
	jnz Lbb124
	subq $32, %rsp
	movq %r9, %rbx
	leaq donna_nil(%rip), %r8
	leaq donna_option_None(%rip), %rcx
	callq compiler_parser_ast_PCons
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb138
Lbb124:
	movq %r9, %rbx
	movq 16(%rdi), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %rbx, %r9
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb127
	movq 8(%rax), %r8
	movq 16(%rax), %rbx
	subq $32, %rsp
	leaq donna_option_None(%rip), %rcx
	callq compiler_parser_ast_PCons
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb128
Lbb127:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb128:
	movq %rax, (%rsi)
	jmp Lbb138
Lbb129:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	movl $0, %ecx
	callq compiler_parser_ast_PBool
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb138
Lbb130:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	movl $1, %ecx
	callq compiler_parser_ast_PBool
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb138
Lbb131:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_PString
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb138
Lbb132:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_PFloat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb138
Lbb133:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rcx
	movq 8(%rax), %rdx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rax
	movq %rdx, %rdi
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str170(%rip), %rcx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_PInt
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb138
Lbb134:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_PInt
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb138
Lbb135:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdx
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_ast_PDiscard
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb138
Lbb136:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_ast_PWild
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	jmp Lbb138
Lbb137:
	subq $32, %rsp
	leaq str8(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str7(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb138:
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
/* end function compiler_parser_parse_patterns_parse_pattern */

.text
.balign 16
compiler_parser_parse_patterns_parse_paren_patterns:
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
	callq compiler_parser_parse_patterns_strip_pattern_label
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb141
	movl $0, %edx
	jmp Lbb142
Lbb141:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb142:
	cmpl $0, %edx
	jnz Lbb167
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_parser_parse_patterns_parse_pattern
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb166
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
	jnz Lbb147
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb148
Lbb147:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb148:
	cmpl $0, %r8d
	jnz Lbb163
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rdx
	jz Lbb152
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb153
Lbb152:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $31, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb153:
	cmpl $0, %r8d
	jnz Lbb162
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb157
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb159
Lbb157:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb159:
	cmpl $0, %ecx
	jnz Lbb161
	subq $32, %rsp
	leaq str817(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str816(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb165
Lbb161:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rbx, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str813(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb165
Lbb162:
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
	jmp Lbb165
Lbb163:
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
	callq compiler_parser_parse_patterns_parse_paren_patterns
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb165:
	movq %rax, (%rsi)
	jmp Lbb168
Lbb166:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb168
Lbb167:
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb168:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_patterns_parse_paren_patterns */

.text
.balign 16
compiler_parser_parse_patterns_strip_pattern_label:
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
	jnz Lbb171
	movl $0, %ecx
	jmp Lbb176
Lbb171:
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
	jnz Lbb174
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb175
Lbb174:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $24, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb175:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdx, %rcx
Lbb176:
	cmpl $0, %ecx
	jz Lbb178
	movq 16(%rax), %rax
	movq 16(%rax), %rax
Lbb178:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_patterns_strip_pattern_label */

.text
.balign 16
compiler_parser_parse_patterns_parse_list_pattern:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %r8
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb181
	movl $0, %ecx
	jmp Lbb182
Lbb181:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb182:
	cmpl $0, %ecx
	jnz Lbb184
	subq $32, %rsp
	movq %r8, %rsi
	leaq donna_nil(%rip), %r8
	movq %rsi, %rdx
	movq %rax, %rcx
	callq compiler_parser_parse_patterns_parse_list_elems
	subq $-32, %rsp
	jmp Lbb185
Lbb184:
	movq 16(%rax), %rdx
	subq $32, %rsp
	movq %rdx, %rsi
	leaq donna_option_None(%rip), %rdx
	leaq donna_nil(%rip), %rcx
	callq compiler_parser_ast_PList
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb185:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_patterns_parse_list_pattern */

.text
.balign 16
compiler_parser_parse_patterns_parse_list_elems:
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
	callq compiler_parser_parse_patterns_parse_pattern
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb228
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
	jnz Lbb190
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb195
Lbb190:
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
	jnz Lbb193
	movq $0, (%r11)
	movl $0, %r10d
	jmp Lbb194
Lbb193:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $27, %r10
	setz %r10b
	movzbq %r10b, %r10
	andq $1, %r10
	movq %r10, (%r11)
Lbb194:
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	andq %r10, %r8
	movq %r8, (%r9)
Lbb195:
	cmpl $0, %r8d
	jnz Lbb226
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz Lbb199
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb200
Lbb199:
	movq 8(%rdi), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb200:
	cmpl $0, %r8d
	jnz Lbb224
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz Lbb204
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb205
Lbb204:
	movq 8(%rdi), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $33, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb205:
	cmpl $0, %r8d
	jnz Lbb222
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rax
	jz Lbb209
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb210
Lbb209:
	movq 8(%rdi), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $27, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb210:
	cmpl $0, %r8d
	jnz Lbb220
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb215
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb217
Lbb215:
	movq $1, (%rax)
	movl $1, %eax
Lbb217:
	cmpl $0, %eax
	jnz Lbb219
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str1102(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb229
Lbb219:
	movq 8(%rdi), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str1099(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb229
Lbb220:
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
	callq compiler_parser_parse_patterns_parse_list_spread
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb229
Lbb222:
	movq %rdx, %rbx
	movq %rdi, %r12
	movq 16(%rdi), %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %r8
	movq %rdx, %rdi
	leaq donna_option_None(%rip), %rdx
	callq compiler_parser_ast_PList
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb229
Lbb224:
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
	callq compiler_parser_parse_patterns_parse_list_elems
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb229
Lbb226:
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
	callq compiler_parser_parse_patterns_parse_list_spread
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb229
Lbb228:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
Lbb229:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_patterns_parse_list_elems */

.text
.balign 16
compiler_parser_parse_patterns_parse_list_spread:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %rdx, %r14
	movq %rcx, %rsi
	movq %r8, %rcx
	movq (%rsi), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb232
	movl $0, %edx
	jmp Lbb233
Lbb232:
	movq 8(%rsi), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $33, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb233:
	cmpl $0, %edx
	jnz Lbb306
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb237
	movq $0, (%rdi)
	movq %r14, %r8
	movl $0, %eax
	jmp Lbb242
Lbb237:
	movq 8(%rsi), %rax
	movq (%rax), %rax
	movq (%rax), %rdx
	cmpq $6, %rdx
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %r12d
	jnz Lbb240
	movq $0, (%rbx)
	movq %r14, %r8
	movl $0, %eax
	jmp Lbb241
Lbb240:
	movq %rcx, %r13
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str1160(%rip), %rdx
	callq strcmp
	movq %r14, %r8
	movq %r13, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r12, %rax
	movq %rax, (%rbx)
Lbb241:
	andq $1, %rax
	movq %rax, (%rdi)
Lbb242:
	cmpl $0, %eax
	jnz Lbb292
	movq (%rsi), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %edx
	jnz Lbb246
	movq $0, (%rdi)
	movl $0, %edx
	jmp Lbb247
Lbb246:
	movq 8(%rsi), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $6, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rdi)
Lbb247:
	cmpl $0, %edx
	jnz Lbb276
	movq %rsi, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb251
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb252
Lbb251:
	movq 8(%rdi), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $4, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb252:
	cmpl $0, %edx
	jnz Lbb262
	movq %rax, %rcx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb257
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb259
Lbb257:
	movq $1, (%rax)
	movl $1, %eax
Lbb259:
	cmpl $0, %eax
	jnz Lbb261
	subq $32, %rsp
	movq %r8, %rdx
	leaq str1453(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb308
Lbb261:
	movq 8(%rdi), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str1450(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb308
Lbb262:
	movq %rcx, %rbx
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	movq %r8, %r12
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edi
	jnz Lbb265
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb266
Lbb265:
	movq 8(%rax), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $33, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb266:
	cmpl $0, %edi
	jnz Lbb275
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb270
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb272
Lbb270:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb272:
	cmpl $0, %ecx
	jnz Lbb274
	subq $32, %rsp
	movq %r12, %rdx
	leaq str1423(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb274:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str1420(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb275:
	movq 16(%rax), %rdi
	subq $32, %rsp
	callq donna_option_Some
	movq %r12, %r8
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	callq compiler_parser_ast_PList
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb276:
	movq %rcx, %rbx
	movq %rsi, %rdi
	movq %r8, %rsi
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq (%rax), %rax
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str1272(%rip), %rcx
	callq __rt_str_concat
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rcx, %rax
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	movq %r8, %r12
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edx
	jnz Lbb280
	movq $0, (%r8)
	movl $0, %edx
	jmp Lbb281
Lbb280:
	movq 8(%rdi), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $33, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
Lbb281:
	cmpl $0, %edx
	jnz Lbb290
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb285
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb287
Lbb285:
	movq $1, (%rax)
	movl $1, %eax
Lbb287:
	cmpl $0, %eax
	jnz Lbb289
	subq $32, %rsp
	movq %r12, %rdx
	leaq str1332(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb289:
	movq 8(%rdi), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str1329(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb290:
	movq %rax, %rcx
	movq 16(%rdi), %rdi
	subq $32, %rsp
	callq donna_option_Some
	movq %r12, %r8
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_PList
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb292:
	movq 16(%rsi), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	movq %r8, %r12
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edi
	jnz Lbb295
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb296
Lbb295:
	movq 8(%rax), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $33, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb296:
	cmpl $0, %edi
	jnz Lbb305
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb300
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb302
Lbb300:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb302:
	cmpl $0, %ecx
	jnz Lbb304
	subq $32, %rsp
	movq %r12, %rdx
	leaq str1239(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb304:
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rdi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str1236(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb305:
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str1209(%rip), %rcx
	callq donna_option_Some
	movq %r12, %r8
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %rbx
	callq compiler_parser_ast_PList
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb308
Lbb306:
	movq %r14, %rbx
	movq 16(%rsi), %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str1136(%rip), %rcx
	callq donna_option_Some
	movq %rbx, %r8
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_PList
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
Lbb308:
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
/* end function compiler_parser_parse_patterns_parse_list_spread */

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

