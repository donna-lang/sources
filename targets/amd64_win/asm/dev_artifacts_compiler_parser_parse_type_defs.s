.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str152:
	.ascii ":"
	.byte 0
/* end data */

.data
.balign 8
str245:
	.ascii "type name"
	.byte 0
/* end data */

.data
.balign 8
str274:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str281:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str593:
	.ascii "indented constructor block"
	.byte 0
/* end data */

.data
.balign 8
str600:
	.ascii "constructor"
	.byte 0
/* end data */

.data
.balign 8
str601:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str763:
	.ascii "constructor name"
	.byte 0
/* end data */

.data
.balign 8
str937:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_type_defs_parse_type_def
compiler_parser_parse_type_defs_parse_type_def:
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
	callq compiler_parser_parse_type_defs_parse_pub
	subq $-32, %rsp
	movq (%rax), %rcx
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_opaque
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %r15
	movq %rcx, %rsi
	movq 8(%rax), %rcx
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb2
	movl $0, %eax
	jmp Lbb7
Lbb2:
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
	jnz Lbb5
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb6
Lbb5:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $5, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb6:
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
Lbb7:
	cmpl $0, %eax
	jnz Lbb32
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb11
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb16
Lbb11:
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
	jnz Lbb14
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb15
Lbb14:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $4, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb15:
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdi, %rax
	movq %rax, (%rsi)
Lbb16:
	cmpl $0, %eax
	jnz Lbb31
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb20
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb21
Lbb20:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $22, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb21:
	cmpl $0, %eax
	jnz Lbb30
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb25
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb27
Lbb25:
	movq $1, (%rax)
	movl $1, %eax
Lbb27:
	cmpl $0, %eax
	jnz Lbb29
	subq $32, %rsp
	leaq str282(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str281(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb50
Lbb29:
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
	leaq str274(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb50
Lbb30:
	movq 8(%rcx), %rax
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str245(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb50
Lbb31:
	movq 16(%rcx), %rax
	movq 8(%rax), %rax
	movq (%rax), %rcx
	movq 8(%rcx), %rbx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $12, (%rsi)
	movq %rbx, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb50
Lbb32:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %r13
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq 8(%rax), %rdi
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_type_params
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %r14
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rsi
	movq %rdx, %rdi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %r8b
	movzbq %r8b, %r8
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r8d
	jnz Lbb35
	movq $0, (%r9)
	movl $0, %r8d
	jmp Lbb36
Lbb35:
	movq 8(%rax), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $24, %r8
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb36:
	cmpl $0, %r8d
	jnz Lbb45
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb40
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb42
Lbb40:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb42:
	cmpl $0, %ecx
	jnz Lbb44
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq $7, (%rdi)
	leaq str152(%rip), %rax
	movq %rax, 8(%rdi)
	movq %r13, 16(%rdi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb50
Lbb44:
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
	jmp Lbb50
Lbb45:
	movq %rdi, %rdx
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rbx
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_type_defs_parse_constructors
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%rax), %r8
	cmpq $1, %r8
	setz %r8b
	movzbq %r8b, %r8
	cmpl $0, %r8d
	jnz Lbb48
	movq %rdx, %r12
	movq 8(%rax), %rdx
	movq %rdx, -16(%rbp)
	movq 16(%rax), %rbx
	movq %rbx, -8(%rbp)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $56, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r12
	movq -8(%rbp), %rbx
	movq -16(%rbp), %rax
	subq $-32, %rsp
	movq $0, (%r12)
	movq %rdx, 8(%r12)
	movq %rcx, 16(%r12)
	movq %r15, 24(%r12)
	movq %r14, 32(%r12)
	movq %rax, 40(%r12)
	movq %r13, 48(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %rbx, 16(%rax)
	movq %rax, (%rdi)
	jmp Lbb49
Lbb48:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb49:
	movq %rax, (%rsi)
Lbb50:
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
/* end function compiler_parser_parse_type_defs_parse_type_def */

.text
.balign 16
compiler_parser_parse_type_defs_parse_pub:
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
	jnz Lbb53
	movl $0, %eax
	jmp Lbb54
Lbb53:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $20, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb54:
	cmpl $0, %eax
	jnz Lbb56
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb57
Lbb56:
	movq 16(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb57:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_pub */

.text
.balign 16
compiler_parser_parse_type_defs_parse_opaque:
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
	jnz Lbb60
	movl $0, %eax
	jmp Lbb61
Lbb60:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $18, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb61:
	cmpl $0, %eax
	jnz Lbb63
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb64
Lbb63:
	movq 16(%rcx), %rsi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
Lbb64:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_opaque */

.text
.balign 16
compiler_parser_parse_type_defs_parse_type_params:
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
	jnz Lbb67
	movl $0, %eax
	jmp Lbb68
Lbb67:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $30, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb68:
	cmpl $0, %eax
	jnz Lbb70
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	leaq donna_nil(%rip), %rdx
	movq %rdx, (%rax)
	movq %rcx, 8(%rax)
	jmp Lbb71
Lbb70:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_type_defs_parse_type_param_list
	subq $-32, %rsp
Lbb71:
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_type_params */

.text
.balign 16
compiler_parser_parse_type_defs_parse_type_param_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rsi
	movq %rdx, %rcx
	movq (%rsi), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb74
	movl $0, %edx
	jmp Lbb75
Lbb74:
	movq 8(%rsi), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $31, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb75:
	cmpl $0, %edx
	jnz Lbb96
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb79
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb80
Lbb79:
	movq 8(%rsi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb80:
	cmpl $0, %eax
	jnz Lbb82
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb97
Lbb82:
	movq 8(%rsi), %rax
	movq 16(%rsi), %r12
	movq (%rax), %rax
	movq %r12, %rdi
	movq 8(%rax), %r12
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rdi), %rax
	cmpq $1, %rax
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %r8
	cmpl $0, %edx
	jnz Lbb85
	movq $0, (%r8)
	movl $0, %edx
	jmp Lbb86
Lbb85:
	movq 8(%rdi), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $25, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%r8)
Lbb86:
	cmpl $0, %edx
	jnz Lbb94
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rax
	jz Lbb90
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb91
Lbb90:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $31, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb91:
	cmpl $0, %eax
	jnz Lbb93
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r12, 8(%rcx)
	movq %rbx, 16(%rcx)
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb97
Lbb93:
	movq 16(%rdi), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %r12, 8(%rcx)
	movq %rbx, 16(%rcx)
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rbx, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb97
Lbb94:
	movq %r12, %rbx
	movq %rdi, %r12
	movq %rcx, %rdi
	movq 16(%r12), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rax, %rcx
	subq $-32, %rsp
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
	callq compiler_parser_parse_type_defs_parse_type_param_list
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb97
Lbb96:
	movq 16(%rsi), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq %rdi, (%rax)
	movq %rsi, 8(%rax)
Lbb97:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_type_param_list */

.text
.balign 16
compiler_parser_parse_type_defs_parse_constructors:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rdx
	subq $-32, %rsp
	movq %rdx, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb100
	movl $0, %ecx
	jmp Lbb101
Lbb100:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $62, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb101:
	cmpl $0, %ecx
	jnz Lbb110
	subq $16, %rsp
	movq %rsp, %rcx
	cmpq $1, %rdx
	jz Lbb105
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb107
Lbb105:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb107:
	cmpl $0, %ecx
	jnz Lbb109
	subq $32, %rsp
	leaq str601(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rsi
	subq $-32, %rsp
	movq $7, (%rsi)
	leaq str600(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rdi, 16(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb112
Lbb109:
	movq 8(%rax), %rax
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
	leaq str593(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb112
Lbb110:
	movq %rsi, %rdx
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_ctor_block
	subq $-32, %rsp
Lbb112:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_type_defs_parse_constructors */

.text
.balign 16
compiler_parser_parse_type_defs_parse_ctor_block:
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
	movq %rdx, %rsi
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rsi
	cmpq $1, %rsi
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb115
	movl $0, %edx
	jmp Lbb116
Lbb115:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $63, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
Lbb116:
	cmpl $0, %edx
	jnz Lbb140
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rsi
	jz Lbb120
	movq $0, (%rdi)
	movl $0, %edx
	jmp Lbb121
Lbb120:
	movq 8(%rax), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $5, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rdi)
Lbb121:
	cmpl $0, %edx
	jnz Lbb130
	subq $16, %rsp
	movq %rsp, %rdx
	cmpq $1, %rsi
	jz Lbb125
	movq $0, (%rdx)
	movl $0, %edx
	jmp Lbb127
Lbb125:
	movq $1, (%rdx)
	movl $1, %edx
Lbb127:
	cmpl $0, %edx
	jnz Lbb129
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
	jmp Lbb141
Lbb129:
	movq 8(%rax), %rax
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
	leaq str763(%rip), %rax
	movq %rax, 16(%rsi)
	movq %rdi, 24(%rsi)
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rsi, 8(%rax)
	jmp Lbb141
Lbb130:
	movq 8(%rax), %rdx
	movq 16(%rax), %rbx
	movq (%rdx), %rax
	movq 8(%rax), %rax
	movq 8(%rdx), %r13
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rbx), %rdx
	cmpq $1, %rdx
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %edi
	jnz Lbb133
	movq $0, (%rdx)
	movq %rax, %r12
	movl $0, %eax
	jmp Lbb134
Lbb133:
	movq 8(%rbx), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $30, %rdi
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb134:
	cmpl $0, %eax
	jnz Lbb136
	subq $32, %rsp
	movq %rcx, %rdi
	movl $40, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq $0, (%rdi)
	movq %r12, 8(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rdi)
	leaq donna_nil(%rip), %rax
	movq %rax, 24(%rdi)
	movq %r13, 32(%rdi)
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rcx, 16(%rdx)
	subq $32, %rsp
	movq %rbx, %rcx
	callq compiler_parser_parse_type_defs_parse_ctor_block
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb141
Lbb136:
	movq %rcx, %rdi
	movq 16(%rbx), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_type_defs_parse_field_list
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
	jnz Lbb138
	movq 8(%rax), %rcx
	movq (%rcx), %r15
	movq 8(%rcx), %r14
	movq 16(%rax), %rcx
	movq %rcx, -16(%rbp)
	subq $32, %rsp
	movl $40, %ecx
	callq malloc
	xchgq %rax, %r12
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	movq $0, (%r12)
	movq %rax, 8(%r12)
	movq %r15, 16(%r12)
	movq %r14, 24(%r12)
	movq %r13, 32(%r12)
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
	callq compiler_parser_parse_type_defs_parse_ctor_block
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb139
Lbb138:
	movq 8(%rax), %rbx
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	movq %rax, (%rdi)
Lbb139:
	movq %rax, (%rsi)
	jmp Lbb141
Lbb140:
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
Lbb141:
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
/* end function compiler_parser_parse_type_defs_parse_ctor_block */

.text
.balign 16
compiler_parser_parse_type_defs_parse_field_list:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %rbx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %sil
	movzbq %sil, %rsi
	cmpl $0, %esi
	jnz Lbb144
	movl $0, %esi
	jmp Lbb145
Lbb144:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	movq (%rsi), %rsi
	cmpq $31, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
Lbb145:
	cmpl $0, %esi
	jnz Lbb178
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	jz Lbb149
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb154
Lbb149:
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
	jnz Lbb152
	movq $0, (%r8)
	movl $0, %edi
	jmp Lbb153
Lbb152:
	movq 8(%rdi), %rdi
	movq (%rdi), %rdi
	movq (%rdi), %rdi
	cmpq $24, %rdi
	setz %dil
	movzbq %dil, %rdi
	andq $1, %rdi
	movq %rdi, (%r8)
Lbb153:
	cmpq $4, %rdx
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	andq %rdi, %rdx
	movq %rdx, (%rsi)
Lbb154:
	cmpl $0, %edx
	jnz Lbb166
	subq $32, %rsp
	movq %rcx, %rsi
	movq %rax, %rcx
	callq compiler_parser_parse_types_parse_type
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
	movq 8(%rax), %rdi
	movq 16(%rax), %r13
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	leaq str937(%rip), %rax
	movq %rax, 8(%r12)
	movq %rbx, 16(%r12)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rdi, 8(%r8)
	movq %rcx, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb159
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb160
Lbb159:
	movq 8(%r13), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb160:
	cmpl $0, %eax
	jnz Lbb162
	subq $32, %rsp
	movq %r8, %r12
	movq %rdx, %rbx
	movq %r13, %rcx
	callq compiler_parser_parse_type_defs_parse_field_list
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb164
Lbb162:
	movq %r8, %r12
	movq %rdx, %rbx
	movq 16(%r13), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_field_list
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb164:
	movq %rax, (%rsi)
	jmp Lbb180
Lbb165:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb180
Lbb166:
	movq %rbx, %rdi
	movq 8(%rax), %rdx
	movq 16(%rax), %rax
	movq (%rdx), %rdx
	movq 8(%rdx), %r14
	movq %rcx, %rsi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_types_parse_type
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb177
	movq 8(%rax), %rbx
	movq 16(%rax), %r13
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	movq $1, (%r12)
	movq %r14, 8(%r12)
	movq %rdi, 16(%r12)
	subq $32, %rsp
	movq %rcx, %rdi
	movl $24, %ecx
	callq malloc
	movq %r12, %rdx
	movq %rax, %r8
	subq $-32, %rsp
	movq $1, (%r8)
	movq %rbx, 8(%r8)
	movq %rdi, 16(%r8)
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb171
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb172
Lbb171:
	movq 8(%r13), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $25, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb172:
	cmpl $0, %eax
	jnz Lbb174
	subq $32, %rsp
	movq %r8, %r12
	movq %rdx, %rbx
	movq %r13, %rcx
	callq compiler_parser_parse_type_defs_parse_field_list
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb176
Lbb174:
	movq %r8, %r12
	movq %rdx, %rbx
	movq 16(%r13), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r12, %r8
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_type_defs_parse_field_list
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb176:
	movq %rax, (%rsi)
	jmp Lbb180
Lbb177:
	movq 8(%rax), %rdi
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	movq %rax, (%rsi)
	jmp Lbb180
Lbb178:
	movq %rcx, %rdi
	movq %rbx, %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq donna_list_reverse
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
Lbb180:
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
/* end function compiler_parser_parse_type_defs_parse_field_list */

