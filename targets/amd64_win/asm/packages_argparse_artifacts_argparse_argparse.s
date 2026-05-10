.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str37:
	.ascii "--"
	.byte 0
/* end data */

.data
.balign 8
str47:
	.ascii "="
	.byte 0
/* end data */

.data
.balign 8
str62:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str74:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str81:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str112:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str128:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str140:
	.ascii "-"
	.byte 0
/* end data */

.data
.balign 8
str147:
	.ascii "true"
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str181:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str230:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
argparse_argparse_collect_argv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %r8, %rsi
	movq %rdx, %r12
	cmpq %r12, %rcx
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz Lbb2
	movq %rcx, %rdi
	addq $1, %rdi
	subq $32, %rsp
	callq donna_argv_get
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
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
	movq %rsi, 16(%r8)
	subq $32, %rsp
	callq argparse_argparse_collect_argv
	subq $-32, %rsp
	jmp Lbb4
Lbb2:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb4:
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function argparse_argparse_collect_argv */

.text
.balign 16
.globl argparse_argparse_from_argv
argparse_argparse_from_argv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq donna_argv_count
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq donna_nil(%rip), %r8
	movl $1, %ecx
	callq argparse_argparse_collect_argv
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq argparse_argparse_parse
	subq $-32, %rsp
	leave
	ret
/* end function argparse_argparse_from_argv */

.text
.balign 16
argparse_argparse_key_of:
	endbr64
	movq (%rcx), %rax
	ret
/* end function argparse_argparse_key_of */

.text
.balign 16
argparse_argparse_val_of:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function argparse_argparse_val_of */

.text
.balign 16
.globl argparse_argparse_parse
argparse_argparse_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq argparse_argparse_parse_loop
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
	leave
	ret
/* end function argparse_argparse_parse */

.text
.balign 16
argparse_argparse_parse_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq %rdx, %rax
	movq %rax, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb40
	movq 8(%rcx), %r13
	movq 16(%rcx), %rcx
	subq $32, %rsp
	leaq str37(%rip), %rdx
	movq %rcx, %rdi
	movq %r13, %rcx
	callq donna_string_starts_with
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdx
	movq %rax, %rbx
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz Lbb27
	subq $32, %rsp
	leaq str112(%rip), %rdx
	movq %rcx, %rdi
	movq %r13, %rcx
	callq donna_string_starts_with
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb17
	subq $32, %rsp
	movq %rcx, %r12
	movl $16, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %r12
	movq %rbx, %rax
	subq $-32, %rsp
	movq %rax, %rbx
	leaq str164(%rip), %rax
	movq %rax, (%r12)
	movq %r13, 8(%r12)
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
	movq %rcx, %r12
	callq argparse_argparse_parse_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb26
Lbb17:
	movq %rcx, %r12
	movq %r13, %rcx
	subq $32, %rsp
	movq %rcx, %r13
	callq donna_string_length
	movq %r13, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movl $1, %edx
	callq donna_string_slice
	movq %r12, %rcx
	movq %rax, %r14
	movq %rbx, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r13
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb23
	movq 8(%rcx), %r15
	movq 16(%rcx), %r12
	movq %r12, -16(%rbp)
	subq $32, %rsp
	leaq str140(%rip), %rdx
	movq %rcx, %r12
	movq %r15, %rcx
	callq donna_string_starts_with
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb21
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	xchgq %rax, %r14
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	subq $32, %rsp
	movq %rcx, %r15
	movl $24, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r14, 8(%rdx)
	movq %r13, 16(%rdx)
	subq $32, %rsp
	callq argparse_argparse_parse_loop
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb22
Lbb21:
	subq $32, %rsp
	movq %rcx, %r15
	movl $16, %ecx
	callq malloc
	movq %r15, %rcx
	xchgq %rax, %r13
	subq $-32, %rsp
	movq %r14, (%r13)
	movq %rax, %r14
	leaq str147(%rip), %rax
	movq %rax, 8(%r13)
	subq $32, %rsp
	movq %rcx, %r15
	movl $24, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %rdx
	movq %r14, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq argparse_argparse_parse_loop
	subq $-32, %rsp
	movq %rax, (%r12)
Lbb22:
	movq %rax, (%rbx)
	jmp Lbb25
Lbb23:
	movq %r13, %r12
	movq %r14, %r13
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	xchgq %rax, %r12
	subq $-32, %rsp
	movq %r13, (%r12)
	movq %rax, %r13
	leaq str128(%rip), %rax
	movq %rax, 8(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	movq %r13, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	leaq donna_nil(%rip), %rcx
	callq argparse_argparse_parse_loop
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb25:
	movq %rax, (%rdi)
Lbb26:
	movq %rax, (%rsi)
	jmp Lbb41
Lbb27:
	movq %rbx, %rdi
	movq %rcx, %rbx
	movq %r13, %rcx
	subq $32, %rsp
	movq %rcx, %r12
	callq donna_string_length
	movq %r12, %rcx
	subq $-32, %rsp
	movq %rax, %r8
	subq $2, %r8
	subq $32, %rsp
	movl $2, %edx
	callq donna_string_slice
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	leaq str47(%rip), %rdx
	movq %rcx, %rbx
	movq %r13, %rcx
	callq donna_string_index_of
	movq %rbx, %rcx
	movq %rax, %rbx
	movq %rdi, %rax
	subq $-32, %rsp
	cmpq $-1, %rbx
	movq %rax, %r12
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb30
	subq $32, %rsp
	movq %rbx, %r8
	movl $0, %edx
	movq %rcx, %r14
	movq %r13, %rcx
	callq donna_string_slice
	movq %r14, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	movq %rbx, %rdx
	addq $1, %rdx
	movq %rdx, -24(%rbp)
	subq $32, %rsp
	movq %rcx, %r15
	movq %r13, %rcx
	callq donna_string_length
	movq %r15, %rcx
	movq -24(%rbp), %rdx
	subq $-32, %rsp
	subq %rbx, %rax
	movq %rax, %r8
	subq $1, %r8
	subq $32, %rsp
	movq %rcx, %rbx
	movq %r13, %rcx
	callq donna_string_slice
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	movl $16, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %r14, (%rbx)
	movq %r13, 8(%rbx)
	subq $32, %rsp
	movq %rcx, %r13
	movl $24, %ecx
	callq malloc
	movq %r13, %rcx
	movq %rax, %rdx
	movq %r12, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rbx, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq argparse_argparse_parse_loop
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb39
Lbb30:
	movq %r13, %r14
	movq %r12, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	movq %rax, %r13
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb36
	movq 8(%rcx), %r15
	movq 16(%rcx), %r12
	movq %r12, -32(%rbp)
	subq $32, %rsp
	leaq str74(%rip), %rdx
	movq %rcx, %r12
	movq %r15, %rcx
	callq donna_string_starts_with
	movq %r12, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %rax
	jz Lbb34
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	xchgq %rax, %r14
	movq -32(%rbp), %rcx
	subq $-32, %rsp
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	subq $32, %rsp
	movq %rcx, %r15
	movl $24, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r14, 8(%rdx)
	movq %r13, 16(%rdx)
	subq $32, %rsp
	callq argparse_argparse_parse_loop
	subq $-32, %rsp
	movq %rax, (%r12)
	jmp Lbb35
Lbb34:
	subq $32, %rsp
	movq %rcx, %r15
	movl $16, %ecx
	callq malloc
	movq %r15, %rcx
	xchgq %rax, %r13
	subq $-32, %rsp
	movq %r14, (%r13)
	movq %rax, %r14
	leaq str81(%rip), %rax
	movq %rax, 8(%r13)
	subq $32, %rsp
	movq %rcx, %r15
	movl $24, %ecx
	callq malloc
	movq %r15, %rcx
	movq %rax, %rdx
	movq %r14, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r13, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq argparse_argparse_parse_loop
	subq $-32, %rsp
	movq %rax, (%r12)
Lbb35:
	movq %rax, (%rbx)
	jmp Lbb38
Lbb36:
	movq %r13, %r12
	movq %r14, %r13
	subq $32, %rsp
	movl $16, %ecx
	callq malloc
	xchgq %rax, %r12
	subq $-32, %rsp
	movq %r13, (%r12)
	movq %rax, %r13
	leaq str62(%rip), %rax
	movq %rax, 8(%r12)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	movq %r13, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	leaq donna_nil(%rip), %rcx
	callq argparse_argparse_parse_loop
	subq $-32, %rsp
	movq %rax, (%rbx)
Lbb38:
	movq %rax, (%rdi)
Lbb39:
	movq %rax, (%rsi)
	jmp Lbb41
Lbb40:
	movq %rsi, %rax
Lbb41:
	movq %rbp, %rsp
	subq $96, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function argparse_argparse_parse_loop */

.text
.balign 16
.globl argparse_argparse_get
argparse_argparse_get:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rbx
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb47
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq argparse_argparse_key_of
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_string_equal
	movq %rbx, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb46
	movq %rdi, %rcx
	subq $32, %rsp
	callq argparse_argparse_get
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb48
Lbb46:
	subq $32, %rsp
	callq argparse_argparse_val_of
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb48
Lbb47:
	leaq str181(%rip), %rax
Lbb48:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function argparse_argparse_get */

.text
.balign 16
.globl argparse_argparse_has
argparse_argparse_has:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb54
	movq 8(%rax), %rcx
	movq 16(%rax), %rsi
	subq $32, %rsp
	callq argparse_argparse_key_of
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rdi
	callq donna_string_equal
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb52
	subq $32, %rsp
	callq argparse_argparse_has
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb55
Lbb52:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb55
Lbb54:
	movl $0, %eax
Lbb55:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function argparse_argparse_has */

.text
.balign 16
.globl argparse_argparse_positional
argparse_argparse_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq argparse_argparse_positional_loop
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
	leave
	ret
/* end function argparse_argparse_positional */

.text
.balign 16
argparse_argparse_positional_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rbx
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb63
	movq 8(%rax), %rcx
	movq 16(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq argparse_argparse_key_of
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str230(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb62
	movq %rdi, %rcx
	subq $32, %rsp
	movq %rbx, %rdx
	movq %rcx, %rdi
	callq argparse_argparse_positional_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb64
Lbb62:
	subq $32, %rsp
	callq argparse_argparse_val_of
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	movl $24, %ecx
	callq malloc
	movq %r12, %rcx
	movq %rax, %rdx
	movq %rbx, %rax
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rax, 16(%rdx)
	subq $32, %rsp
	callq argparse_argparse_positional_loop
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb64
Lbb63:
	movq %rbx, %rax
Lbb64:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function argparse_argparse_positional_loop */

