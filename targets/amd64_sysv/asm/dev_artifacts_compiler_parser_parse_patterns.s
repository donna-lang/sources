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
	subq $56, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rbx
	movq (%rbx), %rax
	cmpq $0, %rax
	jz .Lbb138
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
	leaq str35(%rip), %rsi
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
	jnz .Lbb137
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
	jnz .Lbb136
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
	jnz .Lbb135
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
	jnz .Lbb134
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
	jnz .Lbb133
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
	jnz .Lbb132
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
	jnz .Lbb131
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
	jnz .Lbb130
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
	jnz .Lbb120
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
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str751(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb139
.Lbb78:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rdi
	movq 8(%rax), %rsi
	callq compiler_parser_parse_patterns_parse_list_pattern
	jmp .Lbb139
.Lbb79:
	movq 8(%rbx), %rcx
	movq 16(%rbx), %rax
	movq 8(%rcx), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %ecx
	jnz .Lbb82
	movq $0, (%rsi)
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
	movq %rcx, (%rsi)
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
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq str707(%rip), %rax
	movq %rax, 8(%r12)
	movq %r15, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb139
.Lbb91:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq str700(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb139
.Lbb92:
	movq 16(%rax), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_patterns_parse_paren_patterns
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb94
	movq 8(%rax), %r14
	movq 16(%rax), %r13
	movl $24, %edi
	callq malloc
	xchgq %rax, %r14
	movq $7, (%r14)
	movq %rax, 8(%r14)
	movq %r15, 16(%r14)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp .Lbb95
.Lbb94:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb95:
	movq %rax, (%rbx)
	jmp .Lbb139
.Lbb96:
	movq 8(%rbx), %rax
	movq 16(%rbx), %r12
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz .Lbb99
	movq $0, (%rcx)
	movq %rax, %r13
	movl $0, %eax
	jmp .Lbb104
.Lbb99:
	movq 8(%r12), %rsi
	movq 16(%r12), %rdx
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	movq (%rdx), %rdi
	cmpq $1, %rdi
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %r8d
	jnz .Lbb102
	movq $0, (%rdi)
	movl $0, %edx
	jmp .Lbb103
.Lbb102:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $5, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rdi)
.Lbb103:
	cmpq $26, %rsi
	movq %rax, %r13
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
.Lbb104:
	cmpl $0, %eax
	jnz .Lbb106
	movl $24, %edi
	callq malloc
	xchgq %rax, %r13
	movq $2, (%r13)
	movq %r14, 8(%r13)
	movq %rax, 16(%r13)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb139
.Lbb106:
	movq %r13, %rax
	movq 16(%r12), %rdx
	movq 8(%rdx), %rcx
	movq 16(%rdx), %r13
	movq (%rcx), %rcx
	movq 8(%rcx), %rdx
	movq %rax, %r12
	subq $16, %rsp
	movq %rsp, %rax
	movq %rax, -16(%rbp)
	movq (%r13), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	movq %rdx, %r15
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %ecx
	jnz .Lbb110
	movq $0, (%rdx)
	movl $0, %ecx
	jmp .Lbb111
.Lbb110:
	movq 8(%r13), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $30, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rdx)
.Lbb111:
	cmpl $0, %ecx
	jnz .Lbb113
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movl $40, %edi
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq %r12, %rax
	movq -16(%rbp), %r12
	movq $9, (%r14)
	movq %rcx, 8(%r14)
	movq %r15, 16(%r14)
	leaq donna_nil(%rip), %rcx
	movq %rcx, 24(%r14)
	movq %rax, 32(%r14)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp .Lbb119
.Lbb113:
	xchgq %rax, %r12
	xchgq %r13, %rax
	movq 16(%rax), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %r15, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -40(%rbp)
	movq (%rax), %rsi
	cmpq $1, %rsi
	movq %rdx, %r15
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz .Lbb116
	movq 8(%rax), %rcx
	movq %rcx, -32(%rbp)
	movq 16(%rax), %rax
	movq %rax, -24(%rbp)
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movl $40, %edi
	callq malloc
	movq %r15, %rdx
	movq %r14, %rsi
	movq %rax, %r15
	movq %r13, %rax
	movq -40(%rbp), %r13
	movq -24(%rbp), %r14
	movq -32(%rbp), %rcx
	movq $9, (%r15)
	movq %rsi, 8(%r15)
	movq %rdx, 16(%r15)
	movq %rcx, 24(%r15)
	movq %rax, 32(%r15)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r15, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%r13)
	jmp .Lbb118
.Lbb116:
	movq %rcx, %r13
	movq 8(%rax), %r14
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r14, 8(%rax)
	movq %rax, (%r13)
.Lbb118:
	movq %rax, (%r12)
.Lbb119:
	movq %rax, (%rbx)
	jmp .Lbb139
.Lbb120:
	movq 8(%rbx), %rax
	movq 16(%rbx), %r13
	movq (%rax), %rcx
	movq 8(%rcx), %rcx
	movq 8(%rax), %r15
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rcx, %r12
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz .Lbb123
	movq $0, (%rcx)
	movl $0, %eax
	jmp .Lbb124
.Lbb123:
	movq 8(%r13), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
.Lbb124:
	cmpl $0, %eax
	jnz .Lbb126
	movl $40, %edi
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq $9, (%r12)
	leaq donna_option_None(%rip), %rax
	movq %rax, 8(%r12)
	movq %rcx, 16(%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 24(%r12)
	movq %r15, 32(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb139
.Lbb126:
	movq 16(%r13), %rdi
	leaq donna_nil(%rip), %rsi
	callq compiler_parser_parse_patterns_parse_paren_patterns
	movq %r12, %rcx
	subq $16, %rsp
	movq %rsp, %r12
	movq (%rax), %rdx
	cmpq $1, %rdx
	movq %rcx, %r14
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb128
	movq 8(%rax), %r13
	movq 16(%rax), %rax
	movq %rax, -48(%rbp)
	movl $40, %edi
	callq malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq %r13, %rax
	movq -48(%rbp), %r13
	movq $9, (%r14)
	leaq donna_option_None(%rip), %rdx
	movq %rdx, 8(%r14)
	movq %rcx, 16(%r14)
	movq %rax, 24(%r14)
	movq %r15, 32(%r14)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp .Lbb129
.Lbb128:
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
.Lbb129:
	movq %rax, (%rbx)
	jmp .Lbb139
.Lbb130:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rbx
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq $0, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb139
.Lbb131:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rbx
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq $1, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb139
.Lbb132:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $5, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb139
.Lbb133:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $4, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb139
.Lbb134:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rcx
	movq 8(%rax), %r13
	movq 8(%rcx), %rax
	movq 16(%rcx), %rbx
	movq (%rax), %rax
	movq 8(%rax), %rsi
	leaq str184(%rip), %rdi
	callq __rt_str_concat
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $3, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb139
.Lbb135:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $3, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb139
.Lbb136:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rbx
	movq (%rax), %rcx
	movq 8(%rcx), %r14
	movq 8(%rax), %r13
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $1, (%r12)
	movq %r14, 8(%r12)
	movq %r13, 16(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb139
.Lbb137:
	movq 8(%rbx), %rax
	movq 16(%rbx), %rbx
	movq 8(%rax), %r13
	movl $16, %edi
	callq malloc
	movq %rax, %r12
	movq $0, (%r12)
	movq %r13, 8(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	jmp .Lbb139
.Lbb138:
	leaq str8(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq str7(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb139:
	movq %rbp, %rsp
	subq $96, %rsp
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
	jnz .Lbb142
	movl $0, %ecx
	jmp .Lbb143
.Lbb142:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb143:
	cmpl $0, %ecx
	jnz .Lbb168
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
	jnz .Lbb167
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
	jnz .Lbb148
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb149
.Lbb148:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $25, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb149:
	cmpl $0, %ecx
	jnz .Lbb164
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz .Lbb153
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb154
.Lbb153:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $31, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb154:
	cmpl $0, %ecx
	jnz .Lbb163
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb158
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb160
.Lbb158:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb160:
	cmpl $0, %ecx
	jnz .Lbb162
	leaq str908(%rip), %rdi
	callq utilities_location_zero
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	movq %rax, %r13
	movq $7, (%r13)
	leaq str907(%rip), %rax
	movq %rax, 8(%r13)
	movq %r14, 16(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb166
.Lbb162:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r14
	callq compiler_lexer_token_to_string
	movq %rax, %r15
	movl $32, %edi
	callq malloc
	movq %rax, %r13
	movq $6, (%r13)
	movq %r15, 8(%r13)
	leaq str900(%rip), %rax
	movq %rax, 16(%r13)
	movq %r14, 24(%r13)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r13, 8(%rax)
	movq %rax, (%r12)
	jmp .Lbb166
.Lbb163:
	movq 16(%rax), %r13
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r15, 8(%rdi)
	movq %r14, 16(%rdi)
	callq donna_list_reverse
	movq %rax, %r14
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp .Lbb166
.Lbb164:
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
.Lbb166:
	movq %rax, (%rbx)
	jmp .Lbb169
.Lbb167:
	movq 8(%rax), %r12
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb169
.Lbb168:
	movq 16(%rax), %rbx
	callq donna_list_reverse
	movq %rax, %r12
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb169:
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
	jnz .Lbb172
	movl $0, %ecx
	jmp .Lbb177
.Lbb172:
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
	jnz .Lbb175
	movq $0, (%rsi)
	movl $0, %edx
	jmp .Lbb176
.Lbb175:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $24, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
.Lbb176:
	cmpq $4, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	andq %rdx, %rcx
.Lbb177:
	cmpl $0, %ecx
	jz .Lbb179
	movq 16(%rax), %rax
	movq 16(%rax), %rax
.Lbb179:
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
	pushq %rbx
	pushq %r12
	movq %rsi, %rbx
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb182
	movl $0, %ecx
	jmp .Lbb183
.Lbb182:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb183:
	cmpl $0, %ecx
	jnz .Lbb185
	leaq donna_nil(%rip), %rdx
	movq %rsi, %r12
	movq %rax, %rdi
	callq compiler_parser_parse_patterns_parse_list_elems
	jmp .Lbb187
.Lbb185:
	movq %rsi, %r12
	movq 16(%rax), %rbx
	movl $32, %edi
	callq malloc
	movq %r12, %rsi
	movq %rax, %r12
	movq $8, (%r12)
	leaq donna_nil(%rip), %rax
	movq %rax, 8(%r12)
	leaq donna_option_None(%rip), %rax
	movq %rax, 16(%r12)
	movq %rsi, 24(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb187:
	popq %r12
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
	jnz .Lbb226
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
	jnz .Lbb192
	movq $0, (%rdx)
	movq %rsi, %r13
	movl $0, %eax
	jmp .Lbb197
.Lbb192:
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
	jnz .Lbb195
	movq $0, (%r8)
	movq %rsi, %r13
	movl $0, %esi
	jmp .Lbb196
.Lbb195:
	movq 8(%r9), %r9
	movq (%r9), %r9
	movq (%r9), %r9
	cmpq $27, %r9
	movq %rsi, %r13
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%r8)
.Lbb196:
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rsi, %rax
	movq %rax, (%rdx)
.Lbb197:
	cmpl $0, %eax
	jnz .Lbb225
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb201
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb202
.Lbb201:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb202:
	cmpl $0, %eax
	jnz .Lbb223
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb206
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb207
.Lbb206:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $33, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb207:
	cmpl $0, %eax
	jnz .Lbb222
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rcx
	jz .Lbb211
	movq $0, (%rdx)
	movl $0, %eax
	jmp .Lbb212
.Lbb211:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $27, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
.Lbb212:
	cmpl $0, %eax
	jnz .Lbb221
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb216
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb218
.Lbb216:
	movq $1, (%rax)
	movl $1, %eax
.Lbb218:
	cmpl $0, %eax
	jnz .Lbb220
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq str1211(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb227
.Lbb220:
	movq 8(%r12), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq str1204(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb227
.Lbb221:
	movq 16(%r12), %r12
	callq donna_list_reverse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	movq %rsi, %r13
	callq compiler_parser_parse_patterns_parse_list_spread
	movq %rax, (%rbx)
	jmp .Lbb227
.Lbb222:
	movq %r12, %r14
	movq 16(%r12), %r12
	callq donna_list_reverse
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %r13, %rsi
	movq %rax, %r13
	movq $8, (%r13)
	movq %r14, 8(%r13)
	leaq donna_option_None(%rip), %rax
	movq %rax, 16(%r13)
	movq %rsi, 24(%r13)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb227
.Lbb223:
	movq %r12, %r14
	movq %rdi, %r12
	movq 16(%r14), %rdi
	callq compiler_parser_parse_result_skip_newlines
	movq %r13, %rsi
	movq %rax, %rdi
	movq %r12, %rdx
	movq %rsi, %r13
	callq compiler_parser_parse_patterns_parse_list_elems
	movq %rax, (%rbx)
	jmp .Lbb227
.Lbb225:
	movq 16(%r12), %rax
	movq 16(%rax), %r12
	callq donna_list_reverse
	movq %r13, %rsi
	movq %r12, %rdi
	movq %rax, %rdx
	callq compiler_parser_parse_patterns_parse_list_spread
	movq %rax, (%rbx)
	jmp .Lbb227
.Lbb226:
	movq 8(%rax), %rbx
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
.Lbb227:
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
	movq %rdx, %r15
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz .Lbb230
	movl $0, %ecx
	jmp .Lbb231
.Lbb230:
	movq 8(%rdi), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
.Lbb231:
	cmpl $0, %ecx
	jnz .Lbb303
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb235
	movq $0, (%rbx)
	movq %r15, %rdx
	movl $0, %eax
	jmp .Lbb240
.Lbb235:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rcx
	cmpq $6, %rcx
	setz %r12b
	movzbq %r12b, %r12
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -16(%rbp)
	cmpl $0, %r12d
	jnz .Lbb238
	movq $0, (%rcx)
	movq %r15, %rdx
	movl $0, %eax
	jmp .Lbb239
.Lbb238:
	movq %rdi, %r13
	movq 8(%rax), %rdi
	movq %rsi, %r14
	leaq str1278(%rip), %rsi
	callq strcmp
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq -16(%rbp), %rcx
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq %r12, %rax
	movq %rax, (%rcx)
.Lbb239:
	andq $1, %rax
	movq %rax, (%rbx)
.Lbb240:
	cmpl $0, %eax
	jnz .Lbb289
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %eax
	jnz .Lbb244
	movq $0, (%r8)
	movl $0, %eax
	jmp .Lbb245
.Lbb244:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $6, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%r8)
.Lbb245:
	cmpl $0, %eax
	jnz .Lbb274
	movq %rsi, %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rcx
	jz .Lbb249
	movq $0, (%rsi)
	movl $0, %eax
	jmp .Lbb250
.Lbb249:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
.Lbb250:
	cmpl $0, %eax
	jnz .Lbb259
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz .Lbb254
	movq $0, (%rax)
	movl $0, %eax
	jmp .Lbb256
.Lbb254:
	movq $1, (%rax)
	movl $1, %eax
.Lbb256:
	cmpl $0, %eax
	jnz .Lbb258
	movl $24, %edi
	callq malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq str1614(%rip), %rax
	movq %rax, 8(%rbx)
	movq %rsi, 16(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb305
.Lbb258:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq str1607(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp .Lbb305
.Lbb259:
	movq %rbx, %rsi
	movq 8(%rdi), %rcx
	movq 16(%rdi), %rax
	movq (%rcx), %rcx
	movq 8(%rcx), %r14
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
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq str1577(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb272:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq str1570(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb273:
	movq 16(%rax), %r12
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movl $32, %edi
	callq malloc
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rax, %r13
	movq $8, (%r13)
	movq %rdx, 8(%r13)
	movq %r14, 16(%r13)
	movq %rsi, 24(%r13)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb274:
	movq %rdx, %r13
	movq 8(%rdi), %rax
	movq 16(%rdi), %r12
	movq (%rax), %rax
	movq %rsi, %rbx
	movq 8(%rax), %rsi
	leaq str1403(%rip), %rdi
	callq __rt_str_concat
	movq %r13, %rdx
	movq %rbx, %rsi
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r12), %rcx
	cmpq $1, %rcx
	setz %dil
	movzbq %dil, %rdi
	movq %rdx, %r15
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %edi
	jnz .Lbb278
	movq $0, (%rdx)
	movq %rax, %r14
	movq %rsi, %r13
	movl $0, %eax
	jmp .Lbb279
.Lbb278:
	movq %rsi, %r13
	movq 8(%r12), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $33, %rsi
	movq %rax, %r14
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
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq str1473(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb287:
	movq 8(%r12), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq str1466(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb288:
	movq 16(%r12), %r12
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq $1, (%r14)
	movq %rax, 8(%r14)
	movl $32, %edi
	callq malloc
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rax, %r13
	movq $8, (%r13)
	movq %rdx, 8(%r13)
	movq %r14, 16(%r13)
	movq %rsi, 24(%r13)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb289:
	movq 16(%rdi), %rax
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
	jnz .Lbb292
	movq $0, (%rsi)
	movl $0, %ecx
	jmp .Lbb293
.Lbb292:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $33, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
	movq %rcx, (%rsi)
.Lbb293:
	cmpl $0, %ecx
	jnz .Lbb302
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz .Lbb297
	movq $0, (%rcx)
	movl $0, %ecx
	jmp .Lbb299
.Lbb297:
	movq $1, (%rcx)
	movl $1, %ecx
.Lbb299:
	cmpl $0, %ecx
	jnz .Lbb301
	movl $24, %edi
	callq malloc
	movq %rax, %r12
	movq $7, (%r12)
	leaq str1367(%rip), %rax
	movq %rax, 8(%r12)
	movq %r13, 16(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb301:
	movq 8(%rax), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r13
	callq compiler_lexer_token_to_string
	movq %rax, %r14
	movl $32, %edi
	callq malloc
	movq %rax, %r12
	movq $6, (%r12)
	movq %r14, 8(%r12)
	leaq str1360(%rip), %rax
	movq %rax, 16(%r12)
	movq %r13, 24(%r12)
	movl $16, %edi
	callq malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb302:
	movq 16(%rax), %r12
	movl $16, %edi
	callq malloc
	movq %rax, %r14
	movq $1, (%r14)
	leaq str1327(%rip), %rax
	movq %rax, 8(%r14)
	movl $32, %edi
	callq malloc
	movq %r15, %rdx
	movq %r13, %rsi
	movq %rax, %r13
	movq $8, (%r13)
	movq %rdx, 8(%r13)
	movq %r14, 16(%r13)
	movq %rsi, 24(%r13)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r13, 8(%rax)
	movq %r12, 16(%rax)
	movq %rax, (%rbx)
	jmp .Lbb305
.Lbb303:
	movq %r15, %r14
	movq %rsi, %r12
	movq 16(%rdi), %rbx
	movl $16, %edi
	callq malloc
	movq %rax, %r13
	movq $1, (%r13)
	leaq str1248(%rip), %rax
	movq %rax, 8(%r13)
	movl $32, %edi
	callq malloc
	movq %r14, %rdx
	movq %r12, %rsi
	movq %rax, %r12
	movq $8, (%r12)
	movq %rdx, 8(%r12)
	movq %r13, 16(%r12)
	movq %rsi, 24(%r12)
	movl $24, %edi
	callq malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
.Lbb305:
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
