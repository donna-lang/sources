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
_str24:
	.ascii "nothing to clean"
	.byte 0
/* end data */

.data
.balign 8
_str27:
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
_str31:
	.ascii "-rf"
	.byte 0
/* end data */

.data
.balign 8
_str38:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str47:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str60:
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
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	callq _cli_cmd_clean_first_positional
	movq %rax, %rdi
	callq _builder_scanner_scan
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb4
	movq 8(%rax), %rdi
	callq _builder_scanner_project_build_dir
	movq %rax, %r14
	movq %r14, %rdi
	callq _donna_files_exists
	subq $16, %rsp
	movq %rsp, %rbx
	cmpq $0, %rax
	jz Lbb3
	callq _donna_time_now_us
	movq %rax, %r12
	movq %r14, %rdi
	callq _utilities_logger_cleaning
	movl $24, %edi
	callq _malloc
	movq %rax, %r13
	movq $1, (%r13)
	movq %r14, 8(%r13)
	leaq _donna_nil(%rip), %rax
	movq %rax, 16(%r13)
	movl $24, %edi
	callq _malloc
	movq %rax, %rsi
	movq $1, (%rsi)
	leaq _str31(%rip), %rax
	movq %rax, 8(%rsi)
	movq %r13, 16(%rsi)
	leaq _str27(%rip), %rdi
	callq _donna_shell_exec
	callq _donna_time_now_us
	movq %rax, %rdi
	subq %r12, %rdi
	callq _utilities_logger_clean_ok
	leaq _str38(%rip), %rax
	movq %rax, (%rbx)
	leaq _str38(%rip), %rax
	jmp Lbb5
Lbb3:
	leaq _str24(%rip), %rdi
	callq _utilities_colors_dim
	movq %rax, (%rbx)
	jmp Lbb5
Lbb4:
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
Lbb5:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function cli_cmd_clean_run */

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
	jz Lbb14
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rbx
	cmpl $0, %eax
	jnz Lbb10
	movq $0, (%rbx)
	movl $0, %eax
	jmp Lbb11
Lbb10:
	movq 8(%rdi), %rax
	movq %rdi, %r12
	movq (%rax), %rdi
	leaq _str60(%rip), %rsi
	callq _strcmp
	movq %r12, %rdi
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rbx)
Lbb11:
	cmpl $0, %eax
	jnz Lbb13
	movq 16(%rdi), %rdi
	callq _cli_cmd_clean_first_positional
	jmp Lbb15
Lbb13:
	movq 8(%rdi), %rax
	movq 8(%rax), %rax
	jmp Lbb15
Lbb14:
	leaq _str47(%rip), %rax
Lbb15:
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

