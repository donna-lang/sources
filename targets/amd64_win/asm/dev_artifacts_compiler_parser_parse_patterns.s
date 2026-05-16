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
str35:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str184:
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
str700:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str707:
	.ascii "("
	.byte 0
/* end data */

.data
.balign 8
str751:
	.ascii "pattern"
	.byte 0
/* end data */

.data
.balign 8
str900:
	.ascii ", or )"
	.byte 0
/* end data */

.data
.balign 8
str907:
	.ascii ")"
	.byte 0
/* end data */

.data
.balign 8
str908:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str1204:
	.ascii ", ] or .."
	.byte 0
/* end data */

.data
.balign 8
str1211:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1248:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str1278:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str1327:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str1360:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1367:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1403:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str1466:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1473:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1570:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1577:
	.ascii "]"
	.byte 0
/* end data */

.data
.balign 8
str1607:
	.ascii "name or _"
	.byte 0
/* end data */

.data
.balign 8
str1614:
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
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rsi
	subq $-32, %rsp
	movq (%rsi), %rax
	cmpq $0, %rax
	jz Lbb136
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
	leaq str35(%rip), %rdx
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
	jnz Lbb135
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
	jnz Lbb134
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
	jnz Lbb133
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
	jnz Lbb132
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
	jnz Lbb131
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
	jnz Lbb130
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
	jnz Lbb129
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
	jnz Lbb128
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
	leaq str751(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb137
Lbb78:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rcx
	movq 8(%rax), %rdx
	subq $32, %rsp
	callq compiler_parser_parse_patterns_parse_list_pattern
	subq $-32, %rsp
	jmp Lbb137
Lbb79:
	movq 8(%rsi), %rcx
	movq 16(%rsi), %rax
	movq 8(%rcx), %r13
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ecx
	jnz Lbb82
	movq $0, (%rdi)
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
	movq %rcx, (%rdi)
Lbb83:
	cmpl $0, %ecx
	jnz Lbb92
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
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
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str707(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r13, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb137
Lbb91:
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
	leaq str700(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb137
Lbb92:
	movq 16(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_patterns_parse_paren_patterns
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb94
	movq 8(%rax), %r14
	movq 16(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $7, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb95
Lbb94:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb95:
	movq %rax, (%rsi)
	jmp Lbb137
Lbb96:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %r15
	movq 8(%rax), %r14
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb99
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb104
Lbb99:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdx
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdx), %r8
	cmpq $1, %r8
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %r9d
	jnz Lbb102
	movq $0, (%r8)
	movl $0, %edx
	jmp Lbb103
Lbb102:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $5, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
Lbb103:
	cmpq $26, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb104:
	cmpl $0, %eax
	jnz Lbb106
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $2, (%rbx)
	movq %r15, 8(%rbx)
	movq %r14, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb137
Lbb106:
	movq 16(%rdi), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rbx
	movq (%rax), %rax
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rbx), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz Lbb109
	movq $0, (%rcx)
	movq %rax, %r12
	movl $0, %eax
	jmp Lbb110
Lbb109:
	movq 8(%rbx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $30, %rdx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb110:
	cmpl $0, %eax
	jnz Lbb112
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r13
	subq $-32, %rsp
	movq $1, (%r13)
	movq %r15, 8(%r13)
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	xchgq %rax, %r12
	subq $-32, %rsp
	movq $9, (%r12)
	movq %r13, 8(%r12)
	movq %rax, 16(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 24(%r12)
	movq %r14, 32(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb117
Lbb112:
	movq %r15, %r13
	movq 16(%rbx), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_patterns_parse_paren_patterns
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb115
	movq 8(%rax), %r15
	movq 16(%rax), %rax
	movq %rax, -16(%rbp)
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
	movq %r13, %rcx
	movq %rax, %r13
	movq %r12, %rax
	movq -16(%rbp), %r12
	subq $-32, %rsp
	movq $9, (%r13)
	movq %rcx, 8(%r13)
	movq %rax, 16(%r13)
	movq %r15, 24(%r13)
	movq %r14, 32(%r13)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb116
Lbb115:
	movq 8(%rax), %r12
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb116:
	movq %rax, (%rdi)
Lbb117:
	movq %rax, (%rsi)
	jmp Lbb137
Lbb118:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rdi
	movq (%rax), %rcx
	movq 8(%rcx), %r15
	movq 8(%rax), %r13
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
	movl $40, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $9, (%rbx)
	leaq donna_option_None(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r15, 16(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 24(%rbx)
	movq %r13, 32(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb137
Lbb124:
	movq 16(%rdi), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_patterns_parse_paren_patterns
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb126
	movq 8(%rax), %r14
	movq 16(%rax), %rbx
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $9, (%r12)
	leaq donna_option_None(%rip), %rax
	movq %rax, 8(%r12)
	movq %r15, 16(%r12)
	movq %r14, 24(%r12)
	movq %r13, 32(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb127
Lbb126:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb127:
	movq %rax, (%rsi)
	jmp Lbb137
Lbb128:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rsi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $6, (%rdi)
	movq $0, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb137
Lbb129:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rsi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $6, (%rdi)
	movq $1, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb137
Lbb130:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $5, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb137
Lbb131:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rsi
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
	jmp Lbb137
Lbb132:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rcx
	movq 8(%rax), %rbx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rsi
	movq (%rax), %rax
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str184(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $3, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb137
Lbb133:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rsi
	movq (%rax), %rcx
	movq 8(%rcx), %r12
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $3, (%rdi)
	movq %r12, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb137
Lbb134:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rsi
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
	jmp Lbb137
Lbb135:
	movq 8(%rsi), %rax
	movq 16(%rsi), %rsi
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $0, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	jmp Lbb137
Lbb136:
	subq $32, %rsp
	leaq str8(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str7(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb137:
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
	jnz Lbb140
	movl $0, %edx
	jmp Lbb141
Lbb140:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb141:
	cmpl $0, %edx
	jnz Lbb166
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
	jnz Lbb165
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
	jnz Lbb146
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb147
Lbb146:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $25, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb147:
	cmpl $0, %r8d
	jnz Lbb162
	subq $16, %rsp
	movq %rsp, %r9
	cmpq $1, %rdx
	jz Lbb151
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb152
Lbb151:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $31, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb152:
	cmpl $0, %r8d
	jnz Lbb161
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb156
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb158
Lbb156:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb158:
	cmpl $0, %ecx
	jnz Lbb160
	subq $32, %rsp
	leaq str908(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $7, (%rbx)
	leaq str907(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb164
Lbb160:
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
	leaq str900(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
	jmp Lbb164
Lbb161:
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
	jmp Lbb164
Lbb162:
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
Lbb164:
	movq %rax, (%rsi)
	jmp Lbb167
Lbb165:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb167
Lbb166:
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
Lbb167:
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
	jnz Lbb170
	movl $0, %ecx
	jmp Lbb175
Lbb170:
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
	jnz Lbb173
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb174
Lbb173:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $24, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb174:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdx, %rcx
Lbb175:
	cmpl $0, %ecx
	jz Lbb177
	movq 16(%rax), %rax
	movq 16(%rax), %rax
Lbb177:
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
	jnz Lbb180
	movl $0, %ecx
	jmp Lbb181
Lbb180:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb181:
	cmpl $0, %ecx
	jnz Lbb183
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movq %rdx, %rdi
	movq %rax, %rcx
	callq compiler_parser_parse_patterns_parse_list_elems
	subq $-32, %rsp
	jmp Lbb185
Lbb183:
	movq %rdx, %rdi
	movq 16(%rax), %rsi
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $8, (%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 8(%rdi)
	leaq donna_option_None(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rdx, 24(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb185:
	popq %rdi
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
	jnz Lbb227
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
	jnz Lbb225
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
	jnz Lbb223
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
	jnz Lbb221
	subq $16, %rsp
	movq %rsp, %r8
	cmpq $1, %rax
	jz Lbb209
	movq $0, (%r8)
	movq %rdx, %rbx
	movl $0, %edx
	jmp Lbb210
Lbb209:
	movq 8(%rdi), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $27, %r9
	movq %rdx, %rbx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
Lbb210:
	cmpl $0, %edx
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
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str1211(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb228
Lbb219:
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
	leaq str1204(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb228
Lbb220:
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
	jmp Lbb228
Lbb221:
	movq %rdx, %rbx
	movq %rdi, %r12
	movq 16(%rdi), %rdi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $8, (%rbx)
	movq %r12, 8(%rbx)
	leaq donna_option_None(%rip), %rax
	movq %rax, 16(%rbx)
	movq %rdx, 24(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rbx, 8(%rax)
	movq %rdi, 16(%rax)
	movq %rax, (%rsi)
	jmp Lbb228
Lbb223:
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
	jmp Lbb228
Lbb225:
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
	jmp Lbb228
Lbb227:
	movq 8(%rax), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb228:
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
	movq %r8, %r13
	movq (%rcx), %rax
	cmpq $1, %rax
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb231
	movl $0, %esi
	jmp Lbb232
Lbb231:
	movq 8(%rcx), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $33, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb232:
	cmpl $0, %esi
	jnz Lbb304
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb236
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb241
Lbb236:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rdi
	cmpq $6, %rdi
	setz %bl
	movzbq %bl, %rbx
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %ebx
	jnz Lbb239
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb240
Lbb239:
	movq %rcx, %r12
	movq 8(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %r14
	leaq str1278(%rip), %rdx
	callq strcmp
	movq %r14, %rdx
	movq %r12, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %rbx, %rax
	movq %rax, (%rdi)
Lbb240:
	andq $1, %rax
	movq %rax, (%rsi)
Lbb241:
	cmpl $0, %eax
	jnz Lbb290
	movq %rdx, %rsi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %eax
	jnz Lbb245
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb246
Lbb245:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
Lbb246:
	cmpl $0, %eax
	jnz Lbb275
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rdx
	jz Lbb250
	movq $0, (%rdi)
	movl $0, %eax
	jmp Lbb251
Lbb250:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdi)
Lbb251:
	cmpl $0, %eax
	jnz Lbb260
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb255
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb257
Lbb255:
	movq $1, (%rax)
	movl $1, %eax
Lbb257:
	cmpl $0, %eax
	jnz Lbb259
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str1614(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdx, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb306
Lbb259:
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
	leaq str1607(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb306
Lbb260:
	movq %rsi, %rdx
	movq %rcx, %rsi
	movq 8(%rcx), %rcx
	movq 16(%rsi), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r14
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
	jnz Lbb264
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb265
Lbb264:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdi)
Lbb265:
	cmpl $0, %ecx
	jnz Lbb274
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb269
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb271
Lbb269:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb271:
	cmpl $0, %ecx
	jnz Lbb273
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str1577(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb306
Lbb273:
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
	leaq str1570(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb306
Lbb274:
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r14, 8(%r12)
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $8, (%rbx)
	movq %r13, 8(%rbx)
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
	jmp Lbb306
Lbb275:
	movq %rsi, %rdx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq %rdx, %rsi
	movq 8(%rax), %rdx
	subq $32, %rsp
	leaq str1403(%rip), %rcx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %r14
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	movq %rdx, %rbx
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb279
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb280
Lbb279:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $33, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb280:
	cmpl $0, %eax
	jnz Lbb289
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb284
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb286
Lbb284:
	movq $1, (%rax)
	movl $1, %eax
Lbb286:
	cmpl $0, %eax
	jnz Lbb288
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str1473(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb306
Lbb288:
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
	leaq str1466(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb306
Lbb289:
	movq 16(%rdi), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r14, 8(%r12)
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %rbx, %rdx
	movq %rax, %rbx
	subq $-32, %rsp
	movq $8, (%rbx)
	movq %r13, 8(%rbx)
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
	jmp Lbb306
Lbb290:
	movq 16(%rcx), %rax
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
	jnz Lbb293
	movq $0, (%rdi)
	movl $0, %ecx
	jmp Lbb294
Lbb293:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdi)
Lbb294:
	cmpl $0, %ecx
	jnz Lbb303
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb298
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb300
Lbb298:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb300:
	cmpl $0, %ecx
	jnz Lbb302
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str1367(%rip), %rax
	movq %rax, 8(%rdi)
	movq %rbx, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb306
Lbb302:
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
	leaq str1360(%rip), %rax
	movq %rax, 16(%rdi)
	movq %rbx, 24(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb306
Lbb303:
	movq 16(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	leaq str1327(%rip), %rax
	movq %rax, 8(%r12)
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
	jmp Lbb306
Lbb304:
	movq %r13, %r12
	movq %rdx, %rdi
	movq 16(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	leaq str1248(%rip), %rax
	movq %rax, 8(%rbx)
	subq $32, %rsp
	movl $32, %ecx
	callq malloc
	movq %r12, %r8
	movq %rdi, %rdx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $8, (%rdi)
	movq %r8, 8(%rdi)
	movq %rbx, 16(%rdi)
	movq %rdx, 24(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb306:
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

