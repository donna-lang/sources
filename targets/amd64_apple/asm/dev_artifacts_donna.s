.data
.balign 8
_str2:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.text
.balign 16
.globl _donna_program_main
_donna_program_main:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	callq _argparse_argparse_from_argv
	movq %rax, %rsi
	leaq _version_version(%rip), %rdi
	callq _cli_cli_run
	movq %rax, %rdi
	movq %rdi, %rsi
	movq %rdi, %rbx
	leaq _str2(%rip), %rdi
	movl $0, %eax
	callq _printf
	movq %rbx, %rdi
	callq _cli_cli_exit_code_for_output
	movq %rax, %rdi
	callq _exit
	movl $0, %eax
	popq %rbx
	leave
	ret
/* end function donna_program_main */

