.data
.balign 8
str85:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_result_POk
compiler_parser_parse_result_POk:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	popq %rdi
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_result_POk */

.text
.balign 16
.globl compiler_parser_parse_result_PErr
compiler_parser_parse_result_PErr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function compiler_parser_parse_result_PErr */

.text
.balign 16
.globl compiler_parser_parse_result_skip_newlines
compiler_parser_parse_result_skip_newlines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb6
	movl $0, %ecx
	jmp Lbb7
Lbb6:
	movq 8(%rax), %rcx
	movq (%rcx), %rcx
	movq (%rcx), %rcx
	cmpq $61, %rcx
	setz %cl
	movzbq %cl, %rcx
	andq $1, %rcx
Lbb7:
	cmpl $0, %ecx
	jz Lbb9
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	subq $-32, %rsp
Lbb9:
	leave
	ret
/* end function compiler_parser_parse_result_skip_newlines */

.text
.balign 16
.globl compiler_parser_parse_result_peek
compiler_parser_parse_result_peek:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb18
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb14
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb15
Lbb14:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $61, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb15:
	cmpl $0, %eax
	jnz Lbb17
	movq 8(%rcx), %rax
	movq (%rax), %rax
	jmp Lbb19
Lbb17:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_peek
	subq $-32, %rsp
	jmp Lbb19
Lbb18:
	leaq compiler_lexer_token_TokEof(%rip), %rax
Lbb19:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_result_peek */

.text
.balign 16
.globl compiler_parser_parse_result_peek_span
compiler_parser_parse_result_peek_span:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb28
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb24
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb25
Lbb24:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $61, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb25:
	cmpl $0, %eax
	jnz Lbb27
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb29
Lbb27:
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_peek_span
	subq $-32, %rsp
	jmp Lbb29
Lbb28:
	subq $32, %rsp
	leaq str85(%rip), %rcx
	callq utilities_location_zero
	subq $-32, %rsp
Lbb29:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_result_peek_span */

