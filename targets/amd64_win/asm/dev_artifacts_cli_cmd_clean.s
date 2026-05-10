.data
.balign 8
str10:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str12:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str24:
	.ascii "nothing to clean"
	.byte 0
/* end data */

.data
.balign 8
str27:
	.ascii "rm"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str31:
	.ascii "-rf"
	.byte 0
/* end data */

.data
.balign 8
str38:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str47:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_clean_run
cli_cmd_clean_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq cli_cmd_clean_first_positional
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_scan
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb4
	movq 8(%rax), %rcx
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rcx
	callq donna_files_exists
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb3
	subq $32, %rsp
	callq donna_time_now_us
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %r12, %rcx
	callq utilities_logger_cleaning
	subq $-32, %rsp
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rbx
	subq $-32, %rsp
	movq $1, (%rbx)
	movq %r12, 8(%rbx)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str31(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rbx, 16(%rdx)
	subq $32, %rsp
	leaq str27(%rip), %rcx
	callq donna_shell_exec
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	subq $-32, %rsp
	movq %rax, %rcx
	subq %rdi, %rcx
	subq $32, %rsp
	callq utilities_logger_clean_ok
	subq $-32, %rsp
	leaq str38(%rip), %rax
	movq %rax, (%rsi)
	leaq str38(%rip), %rax
	jmp Lbb5
Lbb3:
	subq $32, %rsp
	leaq str24(%rip), %rcx
	callq utilities_colors_dim
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb5
Lbb4:
	movq 8(%rax), %rsi
	subq $32, %rsp
	leaq str10(%rip), %rcx
	callq utilities_colors_red
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rsi
	leaq str12(%rip), %rdx
	callq __rt_str_concat
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
Lbb5:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_clean_run */

.text
.balign 16
cli_cmd_clean_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb14
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb10
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb11
Lbb10:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str60(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb11:
	cmpl $0, %eax
	jnz Lbb13
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_clean_first_positional
	subq $-32, %rsp
	jmp Lbb15
Lbb13:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb15
Lbb14:
	leaq str47(%rip), %rax
Lbb15:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_clean_first_positional */

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

