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
	pushq %r13
	pushq %r14
	movq %rdx, %rbx
	movq %rsi, %r14
	cmpq %r14, %rdi
	setge %al
	movzbq %al, %rax
	cmpq $1, %rax
	jz .Lbb2
	movq %rdi, %r12
	addq $1, %r12
	callq donna_argv_get
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r13
	movl $24, %edi
	callq malloc
	movq %r14, %rsi
	movq %r13, %rdi
	movq %rax, %rdx
	movq $1, (%rdx)
	movq %r12, 8(%rdx)
	movq %rbx, 16(%rdx)
	callq argparse_argparse_collect_argv
	jmp .Lbb4
.Lbb2:
	movq %rbx, %rdi
	callq donna_list_reverse
.Lbb4:
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type argparse_argparse_collect_argv, @function
.size argparse_argparse_collect_argv, .-argparse_argparse_collect_argv
/* end function argparse_argparse_collect_argv */

.text
.balign 16
.globl argparse_argparse_from_argv
argparse_argparse_from_argv:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	callq donna_argv_count
	movq %rax, %rsi
	leaq donna_nil(%rip), %rdx
	movl $1, %edi
	callq argparse_argparse_collect_argv
	movq %rax, %rdi
	callq argparse_argparse_parse
	leave
	ret
.type argparse_argparse_from_argv, @function
.size argparse_argparse_from_argv, .-argparse_argparse_from_argv
/* end function argparse_argparse_from_argv */

.text
.balign 16
argparse_argparse_key_of:
	endbr64
	movq (%rdi), %rax
	ret
.type argparse_argparse_key_of, @function
.size argparse_argparse_key_of, .-argparse_argparse_key_of
/* end function argparse_argparse_key_of */

.text
.balign 16
argparse_argparse_val_of:
	endbr64
	movq 8(%rdi), %rax
	ret
.type argparse_argparse_val_of, @function
.size argparse_argparse_val_of, .-argparse_argparse_val_of
/* end function argparse_argparse_val_of */

.text
.balign 16
.globl argparse_argparse_parse
argparse_argparse_parse:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq donna_nil(%rip), %rsi
	callq argparse_argparse_parse_loop
	movq %rax, %rdi
	callq donna_list_reverse
	leave
	ret
.type argparse_argparse_parse, @function
.size argparse_argparse_parse, .-argparse_argparse_parse
/* end function argparse_argparse_parse */

.text
.balign 16
argparse_argparse_parse_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $104, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rsi, %rax
	movq %rax, %rbx
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb40
	movq 8(%rdi), %r15
	movq 16(%rdi), %rdi
	leaq str37(%rip), %rsi
	movq %rdi, %r12
	movq %r15, %rdi
	callq donna_string_starts_with
	movq %r12, %rdi
	movq %rax, %rcx
	movq %rbx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rcx
	movq %rax, %r13
	setz %al
	movzbq %al, %rax
	cmpl $0, %eax
	jnz .Lbb27
	leaq str112(%rip), %rsi
	movq %rdi, %r12
	movq %r15, %rdi
	callq donna_string_starts_with
	movq %r12, %rdi
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -16(%rbp)
	cmpq $1, %rax
	jz .Lbb17
	movq %rdi, %r14
	movl $16, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %r14
	movq %r13, %rax
	movq %rax, %r13
	leaq str164(%rip), %rax
	movq %rax, (%r14)
	movq %r15, 8(%r14)
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %r13, 16(%rsi)
	movq %rdi, %r14
	callq argparse_argparse_parse_loop
	movq %rax, (%r12)
	jmp .Lbb26
.Lbb17:
	movq %rdi, %r14
	movq %r15, %rdi
	movq %rdi, %r15
	callq donna_string_length
	movq %r15, %rdi
	movq %rax, %rdx
	subq $1, %rdx
	movl $1, %esi
	callq donna_string_slice
	movq %r14, %rdi
	movq %rax, %r15
	movq %r13, %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -40(%rbp)
	movq %rax, %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb24
	movq 8(%rdi), %rax
	movq %rax, %r13
	movq 16(%rdi), %rax
	movq %rax, -24(%rbp)
	leaq str140(%rip), %rsi
	movq %rdi, %r12
	movq %r13, %rdi
	callq donna_string_starts_with
	movq %r12, %rdi
	movq -16(%rbp), %r12
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -32(%rbp)
	cmpq $1, %rax
	jz .Lbb21
	movl $16, %edi
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %r13, %rax
	movq -40(%rbp), %r13
	movq %rcx, (%r15)
	movq %rax, 8(%r15)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq %r14, %rax
	movq -32(%rbp), %r14
	movq -24(%rbp), %rdi
	movq $1, (%rsi)
	movq %r15, 8(%rsi)
	movq %rax, 16(%rsi)
	callq argparse_argparse_parse_loop
	movq %rax, (%r14)
	jmp .Lbb23
.Lbb21:
	movq %r15, %r13
	movq %rdi, %r15
	movl $16, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %r15
	movq %r14, %rax
	movq %r13, (%r15)
	movq %rax, %r13
	leaq str147(%rip), %rax
	movq %rax, 8(%r15)
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq %r13, %rax
	movq -32(%rbp), %r14
	movq -40(%rbp), %r13
	movq $1, (%rsi)
	movq %r15, 8(%rsi)
	movq %rax, 16(%rsi)
	callq argparse_argparse_parse_loop
	movq %rax, (%r14)
.Lbb23:
	movq %rax, (%r13)
	jmp .Lbb25
.Lbb24:
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq %r15, (%r14)
	movq %rax, %r15
	leaq str128(%rip), %rax
	movq %rax, 8(%r14)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq %r15, %rax
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %rax, 16(%rsi)
	leaq donna_nil(%rip), %rdi
	callq argparse_argparse_parse_loop
	movq %rax, (%r13)
.Lbb25:
	movq %rax, (%r12)
.Lbb26:
	movq %rax, (%rbx)
	jmp .Lbb41
.Lbb27:
	movq %r13, %r12
	movq %rdi, %r13
	movq %r15, %rdi
	movq %rdi, %r14
	callq donna_string_length
	movq %r14, %rdi
	movq %rax, %rdx
	subq $2, %rdx
	movl $2, %esi
	callq donna_string_slice
	movq %r13, %rdi
	movq %rax, %r15
	leaq str47(%rip), %rsi
	movq %rdi, %r13
	movq %r15, %rdi
	callq donna_string_index_of
	movq %r13, %rdi
	movq %rax, %r14
	movq %r12, %rax
	cmpq $-1, %r14
	movq %rax, %r13
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %r12
	movq %r12, -72(%rbp)
	cmpq $1, %rax
	jz .Lbb30
	movq %r14, %rdx
	movl $0, %esi
	movq %rdi, %r12
	movq %r15, %rdi
	callq donna_string_slice
	movq %r12, %rdi
	movq %rax, -56(%rbp)
	movq %r14, %rsi
	addq $1, %rsi
	movq %rsi, -48(%rbp)
	movq %rdi, %r12
	movq %r15, %rdi
	callq donna_string_length
	movq %r12, %rdi
	movq %rax, %rcx
	movq -72(%rbp), %r12
	movq -48(%rbp), %rsi
	movq %r15, %rax
	movq -56(%rbp), %r15
	subq %r14, %rcx
	movq %rcx, %rdx
	subq $1, %rdx
	movq %rdi, %r14
	movq %rax, %rdi
	callq donna_string_slice
	movq %r14, %rdi
	movq %rax, -64(%rbp)
	movq %rdi, %r14
	movl $16, %edi
	callq malloc
	movq %r14, %rdi
	xchgq %rax, %r13
	movq %rax, %r14
	movq -64(%rbp), %rax
	movq %r15, (%r13)
	movq %rax, 8(%r13)
	movq %rdi, %r15
	movl $24, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %rsi
	movq %r14, %rax
	movq $1, (%rsi)
	movq %r13, 8(%rsi)
	movq %rax, 16(%rsi)
	callq argparse_argparse_parse_loop
	movq %rax, (%r12)
	jmp .Lbb39
.Lbb30:
	movq %r13, %rax
	subq $16, %rsp
	movq %rsp, %r13
	movq %r13, -96(%rbp)
	movq %rax, %r14
	movq (%rdi), %rax
	cmpq $0, %rax
	jz .Lbb37
	movq 8(%rdi), %rax
	movq %rax, %r13
	movq 16(%rdi), %rax
	movq %rax, -80(%rbp)
	leaq str74(%rip), %rsi
	movq %rdi, %r12
	movq %r13, %rdi
	callq donna_string_starts_with
	movq %r12, %rdi
	movq -72(%rbp), %r12
	subq $16, %rsp
	movq %rsp, %rcx
	movq %rcx, -88(%rbp)
	cmpq $1, %rax
	jz .Lbb34
	movl $16, %edi
	callq malloc
	movq %r15, %rcx
	movq %rax, %r15
	movq %r13, %rax
	movq -96(%rbp), %r13
	movq %rcx, (%r15)
	movq %rax, 8(%r15)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq %r14, %rax
	movq -88(%rbp), %r14
	movq -80(%rbp), %rdi
	movq $1, (%rsi)
	movq %r15, 8(%rsi)
	movq %rax, 16(%rsi)
	callq argparse_argparse_parse_loop
	movq %rax, (%r14)
	jmp .Lbb36
.Lbb34:
	movq %r15, %r13
	movq %rdi, %r15
	movl $16, %edi
	callq malloc
	movq %r15, %rdi
	movq %rax, %r15
	movq %r14, %rax
	movq %r13, (%r15)
	movq %rax, %r13
	leaq str81(%rip), %rax
	movq %rax, 8(%r15)
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq %r13, %rax
	movq -88(%rbp), %r14
	movq -96(%rbp), %r13
	movq $1, (%rsi)
	movq %r15, 8(%rsi)
	movq %rax, 16(%rsi)
	callq argparse_argparse_parse_loop
	movq %rax, (%r14)
.Lbb36:
	movq %rax, (%r13)
	jmp .Lbb38
.Lbb37:
	movl $16, %edi
	callq malloc
	xchgq %rax, %r14
	movq %r15, (%r14)
	movq %rax, %r15
	leaq str62(%rip), %rax
	movq %rax, 8(%r14)
	movl $24, %edi
	callq malloc
	movq %rax, %rsi
	movq %r15, %rax
	movq $1, (%rsi)
	movq %r14, 8(%rsi)
	movq %rax, 16(%rsi)
	leaq donna_nil(%rip), %rdi
	callq argparse_argparse_parse_loop
	movq %rax, (%r13)
.Lbb38:
	movq %rax, (%r12)
.Lbb39:
	movq %rax, (%rbx)
	jmp .Lbb41
.Lbb40:
	movq %rbx, %rax
.Lbb41:
	movq %rbp, %rsp
	subq $144, %rsp
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type argparse_argparse_parse_loop, @function
.size argparse_argparse_parse_loop, .-argparse_argparse_parse_loop
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
	pushq %r12
	pushq %r13
	movq %rsi, %r13
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb47
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %rbx
	callq argparse_argparse_key_of
	movq %r13, %rsi
	movq %rax, %rdi
	movq %rsi, %r13
	callq donna_string_equal
	movq %r13, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb46
	movq %r12, %rdi
	callq argparse_argparse_get
	movq %rax, (%rbx)
	jmp .Lbb48
.Lbb46:
	callq argparse_argparse_val_of
	movq %rax, (%rbx)
	jmp .Lbb48
.Lbb47:
	leaq str181(%rip), %rax
.Lbb48:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type argparse_argparse_get, @function
.size argparse_argparse_get, .-argparse_argparse_get
/* end function argparse_argparse_get */

.text
.balign 16
.globl argparse_argparse_has
argparse_argparse_has:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq %rsi, %r12
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb54
	movq 8(%rax), %rdi
	movq 16(%rax), %rbx
	callq argparse_argparse_key_of
	movq %r12, %rsi
	movq %rax, %rdi
	movq %rsi, %r12
	callq donna_string_equal
	movq %r12, %rsi
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb52
	callq argparse_argparse_has
	movq %rax, (%rbx)
	jmp .Lbb55
.Lbb52:
	movq $1, (%rbx)
	movl $1, %eax
	jmp .Lbb55
.Lbb54:
	movl $0, %eax
.Lbb55:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
.type argparse_argparse_has, @function
.size argparse_argparse_has, .-argparse_argparse_has
/* end function argparse_argparse_has */

.text
.balign 16
.globl argparse_argparse_positional
argparse_argparse_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	leaq donna_nil(%rip), %rsi
	callq argparse_argparse_positional_loop
	movq %rax, %rdi
	callq donna_list_reverse
	leave
	ret
.type argparse_argparse_positional, @function
.size argparse_argparse_positional, .-argparse_argparse_positional
/* end function argparse_argparse_positional */

.text
.balign 16
argparse_argparse_positional_loop:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	movq %rsi, %r13
	movq %rdi, %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz .Lbb63
	movq 8(%rax), %rdi
	movq 16(%rax), %r12
	movq %rdi, %rbx
	callq argparse_argparse_key_of
	movq %rax, %rdi
	leaq str230(%rip), %rsi
	callq donna_string_equal
	movq %rbx, %rdi
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz .Lbb62
	movq %r12, %rdi
	movq %r13, %rsi
	movq %rdi, %r12
	callq argparse_argparse_positional_loop
	movq %rax, (%rbx)
	jmp .Lbb64
.Lbb62:
	callq argparse_argparse_val_of
	movq %r12, %rdi
	movq %rax, %r12
	movq %rdi, %r14
	movl $24, %edi
	callq malloc
	movq %r14, %rdi
	movq %rax, %rsi
	movq %r13, %rax
	movq $1, (%rsi)
	movq %r12, 8(%rsi)
	movq %rax, 16(%rsi)
	callq argparse_argparse_positional_loop
	movq %rax, (%rbx)
	jmp .Lbb64
.Lbb63:
	movq %r13, %rax
.Lbb64:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
.type argparse_argparse_positional_loop, @function
.size argparse_argparse_positional_loop, .-argparse_argparse_positional_loop
/* end function argparse_argparse_positional_loop */

.section .note.GNU-stack,"",@progbits
