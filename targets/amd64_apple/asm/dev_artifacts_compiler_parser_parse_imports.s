.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str142:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str149:
	.ascii "import"
	.byte 0
/* end data */

.data
.balign 8
_str150:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str260:
	.ascii "module name"
	.byte 0
/* end data */

.data
.balign 8
_str261:
	.ascii "unknown"
	.byte 0
/* end data */

.data
.balign 8
_str275:
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
	subq $24, %rsp
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
	leaq _str150(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq _str149(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb27
Lbb11:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq _compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq _malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq _str142(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb27
Lbb12:
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq 8(%rax), %r15
	leaq _donna_nil(%rip), %rsi
	callq _compiler_parser_parse_imports_parse_import_path
	subq $16, %rsp
	movq %rsp, %rbx
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb26
	movq 8(%rax), %r12
	movq 16(%rax), %rdi
	callq _compiler_parser_parse_result_skip_newlines
	movq %r12, %rcx
	movq %rax, %r13
	subq $16, %rsp
	movq %rsp, %r12
	movq (%r13), %rax
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	movq %rcx, %r14
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb16
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb21
Lbb16:
	movq 8(%r13), %rax
	movq 16(%r13), %rdx
	movq (%rax), %rax
	movq (%rax), %rax
	movq (%rdx), %rsi
	cmpq $1, %rsi
	setz %dil
	movzbq %dil, %rdi
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %edi
	jnz Lbb19
	movq $0, (%rsi)
	movl $0, %edx
	jmp Lbb20
Lbb19:
	movq 8(%rdx), %rdx
	movq (%rdx), %rdx
	movq (%rdx), %rdx
	cmpq $4, %rdx
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
	movq %r14, %rdi
	callq _compiler_parser_parse_imports_last_segment
	movq %rax, -8(%rbp)
	movl $32, %edi
	callq _malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq -8(%rbp), %rax
	movq $0, (%r14)
	movq %rcx, 8(%r14)
	movq %rax, 16(%r14)
	movq %r15, 24(%r14)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
	jmp Lbb25
Lbb23:
	movq %r14, %rcx
	movq %rcx, %r14
	movq 16(%r13), %rcx
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq (%rax), %rax
	movq 8(%rax), %r13
	callq _compiler_parser_parse_result_skip_newlines
	movq %rax, -16(%rbp)
	movl $32, %edi
	callq _malloc
	movq %r14, %rcx
	movq %rax, %r14
	movq %r13, %rax
	movq -16(%rbp), %r13
	movq $0, (%r14)
	movq %rcx, 8(%r14)
	movq %rax, 16(%r14)
	movq %r15, 24(%r14)
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r14, 8(%rax)
	movq %r13, 16(%rax)
	movq %rax, (%r12)
Lbb25:
	movq %rax, (%rbx)
	jmp Lbb27
Lbb26:
	movq 8(%rax), %r12
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %r12, 8(%rax)
	movq %rax, (%rbx)
Lbb27:
	movq %rbp, %rsp
	subq $64, %rsp
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
	jnz Lbb30
	movl $0, %eax
	jmp Lbb31
Lbb30:
	movq 8(%rdi), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
Lbb31:
	cmpl $0, %eax
	jnz Lbb40
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb35
	movq $0, (%rax)
	movl $0, %eax
	jmp Lbb37
Lbb35:
	movq $1, (%rax)
	movl $1, %eax
Lbb37:
	cmpl $0, %eax
	jnz Lbb39
	leaq _str261(%rip), %rdi
	callq _utilities_location_zero
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq %rax, %rbx
	movq $7, (%rbx)
	leaq _str260(%rip), %rax
	movq %rax, 8(%rbx)
	movq %r12, 16(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb47
Lbb39:
	movq 8(%rdi), %rax
	movq (%rax), %rdi
	movq 8(%rax), %r12
	callq _compiler_lexer_token_to_string
	movq %rax, %r13
	movl $32, %edi
	callq _malloc
	movq %rax, %rbx
	movq $6, (%rbx)
	movq %r13, 8(%rbx)
	leaq _str253(%rip), %rax
	movq %rax, 16(%rbx)
	movq %r12, 24(%rbx)
	movl $16, %edi
	callq _malloc
	movq $1, (%rax)
	movq %rbx, 8(%rax)
	jmp Lbb47
Lbb40:
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
	jnz Lbb43
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb44
Lbb43:
	movq 8(%r14), %rax
	movq (%rax), %rax
	movq (%rax), %rax
	cmpq $43, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb44:
	cmpl $0, %eax
	jnz Lbb46
	movl $24, %edi
	callq _malloc
	movq %rax, %rdi
	movq $1, (%rdi)
	movq %r13, 8(%rdi)
	movq %r12, 16(%rdi)
	callq _donna_list_reverse
	movq %rax, %r12
	movl $24, %edi
	callq _malloc
	movq $0, (%rax)
	movq %r12, 8(%rax)
	movq %r14, 16(%rax)
	movq %rax, (%rbx)
	jmp Lbb47
Lbb46:
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
Lbb47:
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
	jz Lbb56
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %eax
	jnz Lbb52
	movq $0, (%rcx)
	movl $0, %eax
	jmp Lbb53
Lbb52:
	movq 16(%rdi), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rcx)
Lbb53:
	cmpl $0, %eax
	jnz Lbb55
	movq 16(%rdi), %rdi
	callq _compiler_parser_parse_imports_last_segment
	jmp Lbb57
Lbb55:
	movq 8(%rdi), %rax
	jmp Lbb57
Lbb56:
	leaq _str275(%rip), %rax
Lbb57:
	movq %rbp, %rsp
	subq $0, %rsp
	leave
	ret
/* end function compiler_parser_parse_imports_last_segment */

