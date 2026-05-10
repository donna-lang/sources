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
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	argparse_argparse_from_argv
	mov	x1, x0
	adrp	x0, version_version
	add	x0, x0, #:lo12:version_version
	bl	cli_cli_run
	mov	x1, x0
	mov	x19, x0
	adrp	x0, str2
	add	x0, x0, #:lo12:str2
	bl	printf
	mov	x0, x19
	bl	cli_cli_exit_code_for_output
	bl	exit
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type donna_program_main, @function
.size donna_program_main, .-donna_program_main
/* end function donna_program_main */

.section .note.GNU-stack,"",@progbits
