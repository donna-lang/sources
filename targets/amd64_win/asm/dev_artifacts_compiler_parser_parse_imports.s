.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str131:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
str134:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str233:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
str236:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
str237:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
str248:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl compiler_parser_parse_imports_parse_import
compiler_parser_parse_imports_parse_import:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb2
	movl $0, %eax
	jmp Lbb3
Lbb2:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $16, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb3:
	cmpl $0, %eax
	jnz Lbb12
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb7
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb9
Lbb7:
	movq $1, (%rax)
	movl $1, %eax
Lbb9:
	cmpl $0, %eax
	jnz Lbb11
	subq $32, %rsp
	leaq str135(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str134(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb26
Lbb11:
	movq 8(%rcx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str131(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb26
Lbb12:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rbx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq compiler_parser_parse_imports_parse_import_path
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb25
	movq 8(%rax), %rcx
	movq %rcx, %rdi
	movq 16(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %rbx, %r8
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	movq (%r12), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb16
	movq $0, (%rdx)
	movq %r8, %r13
	movl $0, %eax
	jmp Lbb21
Lbb16:
	movq 8(%r12), %rax
	movq 16(%r12), %r10
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r10), %r9
	cmpq $1, %r9
	setz %r11b
	movzbq %r11b, %r11
	subq $16, %rsp
	movq %rsp, %r9
	cmpl $0, %r11d
	jnz Lbb19
	movq $0, (%r9)
	movq %r8, %r13
	movl $0, %r8d
	jmp Lbb20
Lbb19:
	movq 8(%r10), %r10
	movq (%r10), %r10
	movq (%r10), %r10
	cmpq $4, %r10
	movq %r8, %r13
	setz %r8b
	movzbq %r8b, %r8
	andq $1, %r8
	movq %r8, (%r9)
Lbb20:
	cmpq $9, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %r8, %rax
	movq %rax, (%rdx)
Lbb21:
	cmpl $0, %eax
	jnz Lbb23
	subq $32, %rsp
	movq %rcx, %rbx
	callq compiler_parser_parse_imports_last_segment
	movq %r13, %r8
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r8, %r13
	callq compiler_parser_ast_Import
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb24
Lbb23:
	movq %rcx, %rbx
	movq 16(%r12), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq (%rax), %rax
	movq 8(%rax), %r12
	subq $32, %rsp
	callq compiler_parser_parse_result_skip_newlines
	movq %r13, %r8
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_ast_Import
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb24:
	movq %rax, (%rsi)
	jmp Lbb26
Lbb25:
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb26:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %rdi
	popq %rsi
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_imports_parse_import */

.text
.balign 16
compiler_parser_parse_imports_parse_import_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq (%rcx), %rdx
	cmpq $1, %rdx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb29
	movl $0, %eax
	jmp Lbb30
Lbb29:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb30:
	cmpl $0, %eax
	jnz Lbb39
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rdx
	jz Lbb34
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb36
Lbb34:
	movq $1, (%rax)
	movl $1, %eax
Lbb36:
	cmpl $0, %eax
	jnz Lbb38
	subq $32, %rsp
	leaq str237(%rip), %rcx
	callq utilities_location_zero
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str236(%rip), %rcx
	callq errors_error_ParseUnexpectedEof
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb46
Lbb38:
	movq 8(%rcx), %rax
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	callq compiler_lexer_token_to_string
	movq %rsi, %r8
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str233(%rip), %rdx
	callq errors_error_ParseUnexpectedToken
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq compiler_parser_parse_result_PErr
	subq $-32, %rsp
	jmp Lbb46
Lbb39:
	movq 8(%rcx), %rax
	movq 16(%rcx), %r12
	movq (%rax), %rax
	movq 8(%rax), %rbx
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%r12), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb42
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb43
Lbb42:
	movq 8(%r12), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $43, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb43:
	cmpl $0, %eax
	jnz Lbb45
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rcx
	subq $-32, %rsp
	movq $1, (%rcx)
	movq %rbx, 8(%rcx)
	movq %rdi, 16(%rcx)
	subq $32, %rsp
	callq donna_list_reverse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rdx
	callq compiler_parser_parse_result_POk
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb46
Lbb45:
	movq 16(%r12), %rcx
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
	callq compiler_parser_parse_imports_parse_import_path
	subq $-32, %rsp
	movq %rax, (%rsi)
Lbb46:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_imports_parse_import_path */

.text
.balign 16
compiler_parser_parse_imports_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb55
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb51
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb52
Lbb51:
	movq 16(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb52:
	cmpl $0, %eax
	jnz Lbb54
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq compiler_parser_parse_imports_last_segment
	subq $-32, %rsp
	jmp Lbb56
Lbb54:
	movq 8(%rcx), %rax
	jmp Lbb56
Lbb55:
	leaq str248(%rip), %rax
Lbb56:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_imports_last_segment */

