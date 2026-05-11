.data
.balign 8
_str10:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str12:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str17:
	.ascii "all"
	.byte 0
/* end data */

.data
.balign 8
_str19:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str22:
	.ascii "lock"
	.byte 0
/* end data */

.data
.balign 8
_str26:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str28:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
_str53:
	.ascii "nothing to clean"
	.byte 0
/* end data */

.data
.balign 8
_str57:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str66:
	.ascii "rm"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str70:
	.ascii "-rf"
	.byte 0
/* end data */

.data
.balign 8
_str106:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str119:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl _cli_cmd_clean_run
_cli_cmd_clean_run:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $40, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	movq %rdi, %rbx
	callq _cli_cmd_clean_first_positional
	movq %rbx, %rdi
	movq %rax, %r12
	movq %rdi, %rbx
	movq %r12, %rdi
	callq _builder_scanner_scan
	movq %rbx, %rdi
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb13
	movq 8(%rax), %rbx
	leaq _str17(%rip), %rsi
	movq %rdi, %r13
	callq _cli_cmd_clean_has_flag
	movq %r13, %rdi
	movq %rax, %r15
	leaq _str19(%rip), %rsi
	movq %rdi, %r13
	callq _cli_cmd_clean_has_flag
	movq %r13, %rdi
	movq %r15, %r14
	orq %rax, %r14
	leaq _str22(%rip), %rsi
	callq _cli_cmd_clean_has_flag
	movq %rbx, %rdi
	movq %rax, %rbx
	callq _builder_scanner_project_build_dir
	movq %r12, %rdi
	movq %rax, %r13
	leaq _str26(%rip), %rsi
	movq %rdi, %r12
	callq _donna_files_join
	movq %r12, %rdi
	movq %rax, %r12
	leaq _str28(%rip), %rsi
	callq _donna_files_join
	movq %rax, -16(%rbp)
	callq _donna_time_now_us
	movq %r13, %rdi
	movq %rax, -24(%rbp)
	movq -16(%rbp), %r13
	callq _cli_cmd_clean_clean_path
	movq %r14, %rcx
	movq %r12, %rdi
	movq %rax, %r14
	movq %rbx, %rax
	movq -24(%rbp), %r12
	movq %r14, -32(%rbp)
	movq %rax, %rbx
	subq $16, %rsp
	movq %rsp, %rax
	cmpq $1, %rcx
	jz Lbb4
	movq $0, (%rax)
	movq %r13, %rdi
	movq %rbx, %rax
	movq %r14, %rbx
	movl $0, %r13d
	jmp Lbb6
Lbb4:
	movq %rax, %r14
	callq _cli_cmd_clean_clean_path
	movq %r13, %rdi
	movq %rax, %r13
	movq %rbx, %rax
	movq -32(%rbp), %rbx
	movq %r13, (%r14)
Lbb6:
	subq $16, %rsp
	movq %rsp, %r14
	orq %r15, %rax
	cmpq $1, %rax
	jz Lbb9
	movq $0, (%r14)
	movl $0, %ecx
	jmp Lbb10
Lbb9:
	callq _cli_cmd_clean_clean_path
	movq %rax, %rcx
	movq %rcx, (%r14)
Lbb10:
	movq %rbx, %rax
	orq %r13, %rax
	orq %rcx, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb12
	callq _donna_time_now_us
	movq %rax, %rdi
	subq %r12, %rdi
	callq _utilities_logger_clean_ok
	leaq _str57(%rip), %rax
	movq %rax, (%rbx)
	leaq _str57(%rip), %rax
	jmp Lbb14
Lbb12:
	leaq _str53(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, (%rbx)
	jmp Lbb14
Lbb13:
	movq 8(%rax), %rbx
	leaq _str10(%rip), %rdi
	callq _utilities_colors_red
	movq %rbx, %rsi
	movq %rax, %rdi
	movq %rsi, %rbx
	leaq _str12(%rip), %rsi
	callq ___rt_str_concat
	movq %rbx, %rsi
	movq %rax, %rdi
	callq ___rt_str_concat
Lbb14:
	movq %rbp, %rsp
	subq $80, %rsp
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
_cli_cmd_clean_clean_path:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	movq %rdi, %rbx
	callq _donna_files_exists
	movq %rbx, %rdi
	cmpq $0, %rax
	jz Lbb18
	movq %rdi, %rbx
	callq _utilities_logger_cleaning
	movq %rbx, %rdi
	movq %rdi, %rbx
	movl $24, %edi
	callq _malloc
	movq %rbx, %rdi
	movq %rax, %rbx
	movq $1, (%rbx)
	movq %rdi, 8(%rbx)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%rbx)
	movl $24, %edi
	callq _malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq _str70(%rip), %rax
	movq %rax, 8(%rsi)
	movq %rbx, 16(%rsi)
	leaq _str66(%rip), %rdi
	callq _donna_shell_exec
	movl $1, %eax
	jmp Lbb19
Lbb18:
	movl $0, %eax
Lbb19:
	popq %rbx
	leave
	ret
/* end function cli_cmd_clean_clean_path */

.text
.balign 16
_cli_cmd_clean_has_flag:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb25
	movq 8(%rdi), %rax
	movq 16(%rdi), %rdi
	movq %rdi, %rbx
	movq (%rax), %rdi
	movq %rsi, %r12
	callq _strcmp
	movq %r12, %rsi
	movq %rbx, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $1, %rax
	jz Lbb23
	callq _cli_cmd_clean_has_flag
	movq %rax, (%rbx)
	jmp Lbb26
Lbb23:
	movq $1, (%rbx)
	movl $1, %eax
	jmp Lbb26
Lbb25:
	movl $0, %eax
Lbb26:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_clean_has_flag */

.text
.balign 16
_cli_cmd_clean_first_positional:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	movq (%rdi), %rax
	cmpq $0, %rax
	jz Lbb35
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb31
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb32
Lbb31:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str119(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb32:
	cmpl $0, %eax
	jnz Lbb34
	movq 16(%rdi), %rdi
	callq _cli_cmd_clean_first_positional
	jmp Lbb36
Lbb34:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb36
Lbb35:
	leaq _str106(%rip), %rax
Lbb36:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_clean_first_positional */

.text
.balign 16
___rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	movq %rsi, %r12
	movq %rdi, %rbx
	movq %rbx, %rdi
	callq _strlen
	movq %rax, %r13
	movq %r12, %rdi
	callq _strlen
	addq %r13, %rax
	movq %rax, %rdi
	addq $1, %rdi
	callq _malloc
	movq %rbx, %rsi
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _strcpy
	movq %r12, %rsi
	movq %rbx, %rdi
	callq _strcat
	movq %rbx, %rax
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

