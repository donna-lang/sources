.data
.balign 8
_str85:
	.ascii "unknown"
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_parser_parse_result_POk
_compiler_parser_parse_result_POk:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %r12, %rsi
	movq %rbx, %rdi
	movq $0, (%rax)
	movq %rdi, 8(%rax)
	movq %rsi, 16(%rax)
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_result_POk */

.text
.balign 16
.globl _compiler_parser_parse_result_PErr
_compiler_parser_parse_result_PErr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	movl $16, %edi
	callq _malloc
	movq %rbx, %rdi
	movq $1, (%rax)
	movq %rdi, 8(%rax)
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_result_PErr */

.text
.balign 16
.globl _compiler_parser_parse_result_skip_newlines
_compiler_parser_parse_result_skip_newlines:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq %rdi, %rax
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
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
Lbb9:
	leave
	ret
/* end function compiler_parser_parse_result_skip_newlines */

.text
.balign 16
.globl _compiler_parser_parse_result_peek
_compiler_parser_parse_result_peek:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb18
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb14
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb15
Lbb14:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $61, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb15:
	cmpl $0, %eax
	jnz Lbb17
	movq 8(%rdi), %rax
	movq (%rax), %rax
	jmp Lbb19
Lbb17:
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_result_peek
	jmp Lbb19
Lbb18:
	leaq _compiler_lexer_token_TokEof(%rip), %rax
Lbb19:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_result_peek */

.text
.balign 16
.globl _compiler_parser_parse_result_peek_span
_compiler_parser_parse_result_peek_span:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb28
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb24
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb25
Lbb24:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $61, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb25:
	cmpl $0, %eax
	jnz Lbb27
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb29
Lbb27:
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_result_peek_span
	jmp Lbb29
Lbb28:
	leaq _str85(%rip), %rdi
	callq _utilities_location_zero
Lbb29:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_result_peek_span */

