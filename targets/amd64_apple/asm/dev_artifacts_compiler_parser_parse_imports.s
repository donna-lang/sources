.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str131:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str134:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str233:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str236:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str248:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _compiler_parser_parse_imports_parse_import
_compiler_parser_parse_imports_parse_import:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
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
	jnz Lbb2
	movl $0, %eax
	jmp Lbb3
Lbb2:
	movq 8(%rdi), %rax
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
	cmpq $1, %rcx
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
	leaq _str135(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str134(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb26
Lbb11:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str131(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb26
Lbb12:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r13
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parse_imports_parse_import_path
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb25
	movq 8(%rax), %rdi
	movq %rdi, %r12
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r13, %rdx
	movq %r12, %rdi
	movq %rax, %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb16
	movq $0, (%rcx)
	movq %rdx, %r15
	movl $0, %eax
	jmp Lbb21
Lbb16:
	movq 8(%r13), %rax
	movq 16(%r13), %r8
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%r8), %rsi
	cmpq $1, %rsi
	setz %r9b
	movzbq %r9b, %r9
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %r9d
	jnz Lbb19
	movq $0, (%rsi)
	movq %rdx, %r15
	movl $0, %edx
	jmp Lbb20
Lbb19:
	movq 8(%r8), %r8
	movq (%r8), %r8
	movq (%r8), %r8
	cmpq $4, %r8
	movq %rdx, %r15
	setz %dl
	movzbq %dl, %rdx
	andq $1, %rdx
	movq %rdx, (%rsi)
Lbb20:
	cmpq $9, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	andq %rdx, %rax
	movq %rax, (%rcx)
Lbb21:
	cmpl $0, %eax
	jnz Lbb23
	movq %rdi, %r14
	callq _compiler_parser_parse_imports_last_segment
	movq %r15, %rdx
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rdx, %r15
	callq _compiler_parser_ast_Import
	movq %rax, %rdi
	movq %r13, %rsi
	callq _compiler_parser_parse_result_POk
	movq %rax, (%r12)
	jmp Lbb24
Lbb23:
	movq 16(%r13), %rcx
	movq 8(%rcx), %rax
	movq %rdi, %r13
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq 8(%rax), %r14
	callq _compiler_parser_parse_result_skip_newlines
	movq %r15, %rdx
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %r13
	callq _compiler_parser_ast_Import
	movq %r13, %rsi
	movq %rax, %rdi
	callq _compiler_parser_parse_result_POk
	movq %rax, (%r12)
Lbb24:
	movq %rax, (%rbx)
	jmp Lbb26
Lbb25:
	movq 8(%rax), %rdi
	callq _compiler_parser_parse_result_PErr
	movq %rax, (%rbx)
Lbb26:
	movq %rbp, %rsp
	subq $48, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_imports_parse_import */

.text
.balign 16
_compiler_parser_parse_imports_parse_import_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r12
	movq (%rdi), %rcx
	cmpq $1, %rcx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb29
	movl $0, %eax
	jmp Lbb30
Lbb29:
	movq 8(%rdi), %rax
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
	cmpq $1, %rcx
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
	leaq _str237(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %rsi
	leaq _str236(%rip), %rdi
	callq _errors_error_ParseUnexpectedEof
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb46
Lbb38:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %rbx
	callq _compiler_lexer_token_to_string
	movq %rbx, %rdx
	movq %rax, %rdi
	leaq _str233(%rip), %rsi
	callq _errors_error_ParseUnexpectedToken
	movq %rax, %rdi
	callq _compiler_parser_parse_result_PErr
	jmp Lbb46
Lbb39:
	movq 8(%rdi), %rax
	movq 16(%rdi), %r14
	movq (%rax), %rax
	movq 8(%rax), %r13
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%r14), %rax
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
	movq 8(%r14), %rax
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
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _donna_list_reverse
	movq %rax, %rdi
	movq %r14, %rsi
	callq _compiler_parser_parse_result_POk
	movq %rax, (%rbx)
	jmp Lbb46
Lbb45:
	movq 16(%r14), %rdi
	movq %rdi, %r14
	movl $24, %edi
	callq _malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %r12, 16(%rsi)
	callq _compiler_parser_parse_imports_parse_import_path
	movq %rax, (%rbx)
Lbb46:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function compiler_parser_parse_imports_parse_import_path */

.text
.balign 16
_compiler_parser_parse_imports_last_segment:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb55
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb51
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb52
Lbb51:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb52:
	cmpl $0, %eax
	jnz Lbb54
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_imports_last_segment
	jmp Lbb56
Lbb54:
	movq 8(%rdi), %rax
	jmp Lbb56
Lbb55:
	leaq _str248(%rip), %rax
Lbb56:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_imports_last_segment */

