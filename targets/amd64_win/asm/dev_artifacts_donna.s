.data
.balign 8
str2:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.text
.balign 16
.globl donna_program_main
donna_program_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	callq argparse_argparse_from_argv
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq version_version(%rip), %rcx
	callq cli_cli_run
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdx
	movq %rcx, %rsi
	leaq str2(%rip), %rcx
	callq printf
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq cli_cli_exit_code_for_output
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq exit
	subq $-32, %rsp
	movl $0, %eax
	popq %rsi
	leave
	ret
/* end function donna_program_main */

