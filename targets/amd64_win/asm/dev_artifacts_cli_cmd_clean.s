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
str17:
	.ascii "all"
	.byte 0
/* end data */

.data
.balign 8
str19:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str22:
	.ascii "lock"
	.byte 0
/* end data */

.data
.balign 8
str26:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str28:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii "nothing to clean"
	.byte 0
/* end data */

.data
.balign 8
str57:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str66:
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
str70:
	.ascii "-rf"
	.byte 0
/* end data */

.data
.balign 8
str106:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str119:
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
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	callq cli_cmd_clean_first_positional
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq builder_scanner_scan
	movq %rdi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	setz %dl
	movzbq %dl, %rdx
	cmpl $0, %edx
	jnz Lbb12
	movq 8(%rax), %rdi
	subq $32, %rsp
	leaq str17(%rip), %rdx
	movq %rcx, %rbx
	callq cli_cmd_clean_has_flag
	movq %rbx, %rcx
	movq %rax, %r13
	subq $-32, %rsp
	subq $32, %rsp
	leaq str19(%rip), %rdx
	movq %rcx, %rbx
	callq cli_cmd_clean_has_flag
	movq %rbx, %rcx
	subq $-32, %rsp
	movq %r13, %r15
	orq %rax, %r15
	subq $32, %rsp
	leaq str22(%rip), %rdx
	callq cli_cmd_clean_has_flag
	movq %rdi, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	movq %rsi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str26(%rip), %rdx
	movq %rcx, %rsi
	callq donna_files_join
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str28(%rip), %rdx
	callq donna_files_join
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_time_now_us
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cmd_clean_clean_path
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %r12
	cmpq $1, %r15
	jz Lbb4
	movq $0, (%r12)
	movq %rbx, %rcx
	movl $0, %ebx
	jmp Lbb5
Lbb4:
	subq $32, %rsp
	callq cli_cmd_clean_clean_path
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	movq %rbx, (%r12)
Lbb5:
	subq $16, %rsp
	movq %rsp, %r12
	movq %r13, %rax
	orq %r14, %rax
	cmpq $1, %rax
	jz Lbb8
	movq $0, (%r12)
	movl $0, %ecx
	jmp Lbb9
Lbb8:
	subq $32, %rsp
	callq cli_cmd_clean_clean_path
	movq %rax, %rcx
	subq $-32, %rsp
	movq %rcx, (%r12)
Lbb9:
	movq %rsi, %rax
	orq %rbx, %rax
	orq %rcx, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rax
	jz Lbb11
	subq $32, %rsp
	callq donna_time_now_us
	subq $-32, %rsp
	movq %rax, %rcx
	subq %rdi, %rcx
	subq $32, %rsp
	callq utilities_logger_clean_ok
	subq $-32, %rsp
	leaq str57(%rip), %rax
	movq %rax, (%rsi)
	leaq str57(%rip), %rax
	jmp Lbb13
Lbb11:
	subq $32, %rsp
	leaq str53(%rip), %rcx
	callq utilities_colors_dim
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb13
Lbb12:
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
Lbb13:
	movq %rbp, %rsp
	subq $64, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_clean_run */

.text
.balign 16
cli_cmd_clean_clean_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_exists
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb17
	subq $32, %rsp
	movq %rcx, %rsi
	callq utilities_logger_cleaning
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	movl $24, %ecx
	callq malloc
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	movq $1, (%rsi)
	movq %rcx, 8(%rsi)
	leaq donna_nil(%rip), %rax
	movq %rax, 16(%rsi)
	subq $32, %rsp
	movl $24, %ecx
	callq malloc
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	leaq str70(%rip), %rax
	movq %rax, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	leaq str66(%rip), %rcx
	callq donna_shell_exec
	subq $-32, %rsp
	movl $1, %eax
	jmp Lbb18
Lbb17:
	movl $0, %eax
Lbb18:
	popq %rsi
	leave
	ret
/* end function cli_cmd_clean_clean_path */

.text
.balign 16
cli_cmd_clean_has_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb24
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rsi
	movq (%rax), %rcx
	subq $32, %rsp
	movq %rdx, %rdi
	callq strcmp
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb22
	subq $32, %rsp
	callq cli_cmd_clean_has_flag
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb25
Lbb22:
	movq $1, (%rsi)
	movl $1, %eax
	jmp Lbb25
Lbb24:
	movl $0, %eax
Lbb25:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function cli_cmd_clean_has_flag */

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
	jz Lbb34
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpl $0, %eax
	jnz Lbb30
	movq $0, (%rsi)
	movl $0, %eax
	jmp Lbb31
Lbb30:
	movq 8(%rcx), %rax
	movq %rcx, %rdi
	movq (%rax), %rcx
	subq $32, %rsp
	leaq str119(%rip), %rdx
	callq strcmp
	movq %rdi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rsi)
Lbb31:
	cmpl $0, %eax
	jnz Lbb33
	movq 16(%rcx), %rcx
	subq $32, %rsp
	callq cli_cmd_clean_first_positional
	subq $-32, %rsp
	jmp Lbb35
Lbb33:
	movq 8(%rcx), %rax
	movq 8(%rax), %rax
	jmp Lbb35
Lbb34:
	leaq str106(%rip), %rax
Lbb35:
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

