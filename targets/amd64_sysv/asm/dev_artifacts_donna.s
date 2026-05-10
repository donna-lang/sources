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
	pushq %rbx
	callq argparse_argparse_from_argv
	movq %rax, %rsi
	leaq version_version(%rip), %rdi
	callq cli_cli_run
	movq %rax, %rdi
	movq %rdi, %rsi
	movq %rdi, %rbx
	leaq str2(%rip), %rdi
	movl $0, %eax
	callq printf
	movq %rbx, %rdi
	callq cli_cli_exit_code_for_output
	movq %rax, %rdi
	callq exit
	movl $0, %eax
	popq %rbx
	leave
	ret
.type donna_program_main, @function
.size donna_program_main, .-donna_program_main
/* end function donna_program_main */

.section .note.GNU-stack,"",@progbits
