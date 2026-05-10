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
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rbx
	movq (%rbx), %rax
	cmpq $0, %rax
	jz .Lbb137
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	cmpl $0, %eax
	jnz .Lbb4
	movq $0, (%r12)
	movl $0, %eax
	jmp .Lbb9
.Lbb4:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r14b
	movzbq %r14b, %r14
	subq $16, %rsp
	movq %rsp, %r13
	cmpl $0, %r14d
	jnz .Lbb7
	movq $0, (%r13)
	movl $0, %eax
	jmp .Lbb8
.Lbb7:
	movq 8(%rax), %rdi
	leaq str32(%rip), %rsi
	callq strcmp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r14, %rax
	movq %rax, (%r13)
.Lbb8:
	andq $1, %rax
	movq %rax, (%r12)
.Lbb9:
	cmpl $0, %eax
	jnz .Lbb136
	movq (%rbx), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz .Lbb13
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb14
.Lbb13:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $6, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb14:
	cmpl $0, %ecx
	jnz .Lbb135
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb18
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb19
.Lbb18:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb19:
	cmpl $0, %ecx
	jnz .Lbb134
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb23
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb28
.Lbb23:
	movq 8(%rbx), %rcx
	movq 16(%rbx), %rsi
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	movq (%rsi), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz .Lbb26
	movq $0, (%rdi)
	movl $0, %esi
	jmp .Lbb27
.Lbb26:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
.Lbb27:
	cmpq $39, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rsi, %rcx
	movq %rcx, (%rdx)
.Lbb28:
	cmpl $0, %ecx
	jnz .Lbb133
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb32
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb33
.Lbb32:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb33:
	cmpl $0, %ecx
	jnz .Lbb132
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb37
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb38
.Lbb37:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $2, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb38:
	cmpl $0, %ecx
	jnz .Lbb131
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb42
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb47
.Lbb42:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rsi
	cmpq $7, %rsi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz .Lbb45
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb46
.Lbb45:
	movq 8(%rcx), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
.Lbb46:
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb47:
	cmpl $0, %ecx
	jnz .Lbb130
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb51
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb56
.Lbb51:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rsi
	cmpq $7, %rsi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz .Lbb54
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb55
.Lbb54:
	movq 8(%rcx), %rcx
	cmpq $0, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq %rdi, %rcx
	movq %rcx, (%rsi)
.Lbb55:
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb56:
	cmpl $0, %ecx
	jnz .Lbb129
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb60
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb61
.Lbb60:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $5, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb61:
	cmpl $0, %ecx
	jnz .Lbb118
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb65
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb66
.Lbb65:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb66:
	cmpl $0, %ecx
	jnz .Lbb96
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz .Lbb70
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb71
.Lbb70:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $29, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb71:
	cmpl $0, %ecx
	jnz .Lbb79
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rax
	jz .Lbb75
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb76
.Lbb75:
	movq 8(%rbx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $32, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb76:
	cmpl $0, %eax
	jnz .Lbb78
	movq 8(%rbx), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq str673(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb138
.Lbb78:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rdi
	movq 8(%rax), %rsi
	callq compiler_parser_parse_patterns_parse_list_pattern
	jmp .Lbb138
.Lbb79:
	movq 8(%rbx), %rcx
	movq 16(%rbx), %rax
	movq 8(%rcx), %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz .Lbb82
	movq $0, (%rdi)
	movl $0, %ecx
	jmp .Lbb83
.Lbb82:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdi)
.Lbb83:
	cmpl $0, %ecx
	jnz .Lbb92
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb87
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb89
.Lbb87:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb89:
	cmpl $0, %ecx
	jnz .Lbb91
	leaq str632(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb91:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str629(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb92:
	movq 16(%rax), %rdi
	movq %rsi, %r12
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %r12, %rsi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb94
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	callq compiler_parser_ast_PTuple
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb95
.Lbb94:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb95:
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb96:
	movq 8(%rbx), %rax
	movq 16(%rbx), %r12
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq 8(%rax), %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz .Lbb99
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb104
.Lbb99:
	movq 8(%r12), %rax
	movq 16(%r12), %rsi
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rsi), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz .Lbb102
	movq $0, (%r8)
	movl $0, %esi
	jmp .Lbb103
.Lbb102:
	movq 8(%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $5, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb103:
	cmpq $26, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
.Lbb104:
	cmpl $0, %eax
	jnz .Lbb106
	movq %rcx, %rsi
	callq compiler_parser_ast_PVar
	movq %rax, %rdi
	movq %r12, %rsi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb106:
	movq 16(%r12), %rdx
	movq 8(%rdx), %rax
	movq 16(%rdx), %r14
	movq (%rax), %rax
	movq 8(%rax), %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r14), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rcx, %r15
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb109
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb110
.Lbb109:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb110:
	cmpl $0, %eax
	jnz .Lbb112
	callq donna_option_Some
	movq %r15, %rcx
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rcx, %r15
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_ast_PCons
	movq %rax, %rdi
	movq %r14, %rsi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb117
.Lbb112:
	movq %r13, %rsi
	movq %rdi, %r13
	movq 16(%r14), %rdi
	movq %rsi, %r14
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %r15, %rcx
	movq %r14, %rsi
	movq %r13, %rdi
	subq $16, %rsp
	movq %rsp, %r13
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r15
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb115
	movq 8(%rax), %rdx
	movq %rdx, -8(%rbp)
	movq %rsi, %r14
	movq 16(%rax), %rsi
	movq %rsi, -16(%rbp)
	callq donna_option_Some
	movq %r15, %rcx
	movq %r14, %rsi
	movq %rax, %rdi
	movq -16(%rbp), %r14
	movq -8(%rbp), %rdx
	callq compiler_parser_ast_PCons
	movq %r14, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r13)
	jmp .Lbb116
.Lbb115:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r13)
.Lbb116:
	movq %rax, (%r12)
.Lbb117:
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb118:
	movq 8(%rbx), %rax
	movq 16(%rbx), %r12
	movq (%rax), %rcx
	movq 8(%rcx), %rsi
	movq 8(%rax), %rcx
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz .Lbb121
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb122
.Lbb121:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb122:
	cmpl $0, %eax
	jnz .Lbb124
	movq %rcx, %r13
	leaq donna_nil(%rip), %rdx
	leaq donna_option_None(%rip), %rdi
	callq compiler_parser_ast_PCons
	movq %rax, %rdi
	movq %r12, %rsi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb124:
	movq %rcx, %r13
	movq 16(%r12), %rdi
	movq %rsi, %r12
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %r13, %rcx
	movq %r12, %rsi
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb127
	movq 8(%rax), %rdx
	movq 16(%rax), %r13
	leaq donna_option_None(%rip), %rdi
	callq compiler_parser_ast_PCons
	movq %r13, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp .Lbb128
.Lbb127:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
.Lbb128:
	movq %rax, (%rbx)
	jmp .Lbb138
.Lbb129:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rsi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	movl $0, %edi
	callq compiler_parser_ast_PBool
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb138
.Lbb130:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rsi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	movl $1, %edi
	callq compiler_parser_ast_PBool
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb138
.Lbb131:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_PString
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb138
.Lbb132:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_PFloat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb138
.Lbb133:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rcx
	movq 8(%rax), %rsi
	movq 8(%rcx), %rax
	movq 16(%rcx), %rbx
	movq (%rax), %rax
	movq %rsi, %r12
	movq 8(%rax), %rsi
	leaq str170(%rip), %rdi
	callq __rt_str_concat
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_ast_PInt
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb138
.Lbb134:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_PInt
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb138
.Lbb135:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %rdi
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	callq compiler_parser_ast_PDiscard
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb138
.Lbb136:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rbx
	movq 8(%rax), %rdi
	callq compiler_parser_ast_PWild
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	jmp .Lbb138
.Lbb137:
	leaq str8(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str7(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
.Lbb138:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_patterns_parse_pattern, @function
.size compiler_parser_parse_patterns_parse_pattern, .-compiler_parser_parse_patterns_parse_pattern
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
	pushq %r14
	pushq %r15
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rdi
	callq compiler_parser_parse_patterns_strip_pattern_label
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb141
	movl $0, %ecx
	jmp .Lbb142
.Lbb141:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb142:
	cmpl $0, %ecx
	jnz .Lbb167
	movq %rdi, %rbx
	movq %rax, %rdi
	callq compiler_parser_parse_patterns_parse_pattern
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb166
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
	jnz .Lbb147
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb148
.Lbb147:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb148:
	cmpl $0, %ecx
	jnz .Lbb163
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb152
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb153
.Lbb152:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb153:
	cmpl $0, %ecx
	jnz .Lbb162
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb157
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb159
.Lbb157:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb159:
	cmpl $0, %ecx
	jnz .Lbb161
	leaq str817(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %rsi
	leaq str816(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb165
.Lbb161:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %r13, %rdx
	movq %rax, %rdi
	leaq str813(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%r12)
	jmp .Lbb165
.Lbb162:
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
	jmp .Lbb165
.Lbb163:
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
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %rax, (%r12)
.Lbb165:
	movq %rax, (%rbx)
	jmp .Lbb168
.Lbb166:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb168
.Lbb167:
	movq 16(%rax), %rbx
	callq donna_list_reverse
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb168:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_patterns_parse_paren_patterns, @function
.size compiler_parser_parse_patterns_parse_paren_patterns, .-compiler_parser_parse_patterns_parse_paren_patterns
/* end function compiler_parser_parse_patterns_parse_paren_patterns */

.text
.balign 16
compiler_parser_parse_patterns_strip_pattern_label:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb171
	movl $0, %ecx
	jmp .Lbb176
.Lbb171:
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
	jnz .Lbb174
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb175
.Lbb174:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $24, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb175:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdx, %rcx
.Lbb176:
	cmpl $0, %ecx
	jz .Lbb178
	movq 16(%rax), %rax
	movq 16(%rax), %rax
.Lbb178:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
.type compiler_parser_parse_patterns_strip_pattern_label, @function
.size compiler_parser_parse_patterns_strip_pattern_label, .-compiler_parser_parse_patterns_strip_pattern_label
/* end function compiler_parser_parse_patterns_strip_pattern_label */

.text
.balign 16
compiler_parser_parse_patterns_parse_list_pattern:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rdx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb181
	movl $0, %ecx
	jmp .Lbb182
.Lbb181:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb182:
	cmpl $0, %ecx
	jnz .Lbb184
	movq %rdx, %rbx
	leaq donna_nil(%rip), %rdx
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_patterns_parse_list_elems
	jmp .Lbb185
.Lbb184:
	movq 16(%rax), %rsi
	movq %rsi, %rbx
	leaq donna_option_None(%rip), %rsi
	leaq donna_nil(%rip), %rdi
	callq compiler_parser_ast_PList
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb185:
	popq %rbx
	leave
	ret
.type compiler_parser_parse_patterns_parse_list_pattern, @function
.size compiler_parser_parse_patterns_parse_list_pattern, .-compiler_parser_parse_patterns_parse_list_pattern
/* end function compiler_parser_parse_patterns_parse_list_pattern */

.text
.balign 16
compiler_parser_parse_patterns_parse_list_elems:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rdx, %r14
	movq %rsi, %r13
	callq compiler_parser_parse_patterns_parse_pattern
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb227
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
	jnz .Lbb190
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb195
.Lbb190:
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
	jnz .Lbb193
	movq $0, (%r9)
	movl $0, %r8d
	jmp .Lbb194
.Lbb193:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $27, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
.Lbb194:
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %r8, %rax
	movq %rax, (%rdx)
.Lbb195:
	cmpl $0, %eax
	jnz .Lbb225
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb199
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb200
.Lbb199:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb200:
	cmpl $0, %eax
	jnz .Lbb223
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb204
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb205
.Lbb204:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $33, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb205:
	cmpl $0, %eax
	jnz .Lbb221
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb209
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb210
.Lbb209:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $27, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb210:
	cmpl $0, %eax
	jnz .Lbb219
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb214
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb216
.Lbb214:
	movq $1, (%rax)
	movl $1, %eax
.Lbb216:
	cmpl $0, %eax
	jnz .Lbb218
	movq %rsi, %r13
	leaq str1102(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb228
.Lbb218:
	movq 8(%r12), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str1099(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb228
.Lbb219:
	movq %rsi, %r13
	movq 16(%r12), %r12
	callq donna_list_reverse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rsi, %r13
	callq compiler_parser_parse_patterns_parse_list_spread
	movq %rax, (%rbx)
	jmp .Lbb228
.Lbb221:
	movq %rsi, %r13
	movq %r12, %r14
	movq 16(%r12), %r12
	callq donna_list_reverse
	movq %r12, %rsi
	movq %rax, %rdi
	movq %r13, %rdx
	movq %rsi, %r12
	leaq donna_option_None(%rip), %rsi
	callq compiler_parser_ast_PList
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb228
.Lbb223:
	movq %r12, %r14
	movq %rsi, %r13
	movq %rdi, %r12
	movq 16(%r14), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, %rdx
	movq %rsi, %r13
	callq compiler_parser_parse_patterns_parse_list_elems
	movq %rax, (%rbx)
	jmp .Lbb228
.Lbb225:
	movq %rsi, %r13
	movq 16(%r12), %rax
	movq 16(%rax), %r12
	callq donna_list_reverse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_parser_parse_patterns_parse_list_spread
	movq %rax, (%rbx)
	jmp .Lbb228
.Lbb227:
	movq 8(%rax), %rdi
	callq compiler_parser_parse_result_PErr
.Lbb228:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_patterns_parse_list_elems, @function
.size compiler_parser_parse_patterns_parse_list_elems, .-compiler_parser_parse_patterns_parse_list_elems
/* end function compiler_parser_parse_patterns_parse_list_elems */

.text
.balign 16
compiler_parser_parse_patterns_parse_list_spread:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %r15
	movq %rdi, %rbx
	movq %rdx, %rdi
	movq (%rbx), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb231
	movl $0, %ecx
	jmp .Lbb232
.Lbb231:
	movq 8(%rbx), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb232:
	cmpl $0, %ecx
	jnz .Lbb304
	movq %rbx, %r12
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb236
	movq $0, (%rbx)
	movq %r15, %rdx
	movl $0, %eax
	jmp .Lbb241
.Lbb236:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r13b
	movzbq %r13b, %r13
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -16(%rbp)
	cmpl $0, %r13d
	jnz .Lbb239
	movq $0, (%rcx)
	movq %r15, %rdx
	movl $0, %eax
	jmp .Lbb240
.Lbb239:
	movq %rdi, %r14
	movq 8(%rax), %rdi
	leaq str1160(%rip), %rsi
	callq strcmp
	movq %r15, %rdx
	movq %r14, %rdi
	movq -16(%rbp), %rcx
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r13, %rax
	movq %rax, (%rcx)
.Lbb240:
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb241:
	cmpl $0, %eax
	jnz .Lbb289
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz .Lbb245
	movq $0, (%rsi)
	movl $0, %eax
	jmp .Lbb246
.Lbb245:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
.Lbb246:
	cmpl $0, %eax
	jnz .Lbb274
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb250
	movq $0, (%rsi)
	movl $0, %eax
	jmp .Lbb251
.Lbb250:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
.Lbb251:
	cmpl $0, %eax
	jnz .Lbb260
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb255
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb257
.Lbb255:
	movq $1, (%rax)
	movl $1, %eax
.Lbb257:
	cmpl $0, %eax
	jnz .Lbb259
	movq %rdx, %rsi
	leaq str1453(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb306
.Lbb259:
	movq 8(%r12), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq str1450(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	jmp .Lbb306
.Lbb260:
	movq 8(%r12), %rcx
	movq 16(%r12), %rax
	movq (%rcx), %rcx
	movq %rdi, %r13
	movq 8(%rcx), %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb263
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb264
.Lbb263:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb264:
	cmpl $0, %ecx
	jnz .Lbb273
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb268
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb270
.Lbb268:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb270:
	cmpl $0, %ecx
	jnz .Lbb272
	movq %r14, %rsi
	leaq str1423(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb272:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str1420(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb273:
	movq 16(%rax), %r12
	callq donna_option_Some
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	callq compiler_parser_ast_PList
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb274:
	movq %rdx, %rbx
	movq 8(%r12), %rax
	movq 16(%r12), %r12
	movq (%rax), %rax
	movq 8(%rax), %rsi
	movq %rdi, %r13
	leaq str1272(%rip), %rdi
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	movq %rdx, %r14
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz .Lbb278
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb279
.Lbb278:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $33, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb279:
	cmpl $0, %eax
	jnz .Lbb288
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb283
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb285
.Lbb283:
	movq $1, (%rax)
	movl $1, %eax
.Lbb285:
	cmpl $0, %eax
	jnz .Lbb287
	movq %r14, %rsi
	leaq str1332(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb287:
	movq 8(%r12), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str1329(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb288:
	movq 16(%r12), %r12
	callq donna_option_Some
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	callq compiler_parser_ast_PList
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb289:
	movq %r12, %rbx
	movq 16(%rbx), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rdx, %r14
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb293
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb294
.Lbb293:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb294:
	cmpl $0, %ecx
	jnz .Lbb303
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb298
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb300
.Lbb298:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb300:
	cmpl $0, %ecx
	jnz .Lbb302
	movq %r14, %rsi
	leaq str1239(%rip), %rdi
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb302:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %r12, %rdx
	movq %rax, %rdi
	leaq str1236(%rip), %rsi
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb303:
	movq 16(%rax), %r12
	movq %rdi, %r13
	leaq str1209(%rip), %rdi
	callq donna_option_Some
	movq %r14, %rdx
	movq %r13, %rdi
	movq %rax, %rsi
	movq %rdx, %r13
	callq compiler_parser_ast_PList
	movq %r12, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp .Lbb306
.Lbb304:
	movq %r15, %r13
	movq 16(%rbx), %rbx
	movq %rdi, %r12
	leaq str1136(%rip), %rdi
	callq donna_option_Some
	movq %r13, %rdx
	movq %r12, %rdi
	movq %rax, %rsi
	callq compiler_parser_ast_PList
	movq %rbx, %rsi
	movq %rax, %rdi
	callq compiler_parser_parse_result_POk
.Lbb306:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type compiler_parser_parse_patterns_parse_list_spread, @function
.size compiler_parser_parse_patterns_parse_list_spread, .-compiler_parser_parse_patterns_parse_list_spread
/* end function compiler_parser_parse_patterns_parse_list_spread */

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
