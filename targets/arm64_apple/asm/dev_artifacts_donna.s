.data
.balign 8
_str2:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.text
.balign 4
.globl _donna_program_main
_donna_program_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_argparse_argparse_from_argv
	mov	x1, x0
	adrp	x0, _version_version@page
	add	x0, x0, _version_version@pageoff
	bl	_cli_cli_run
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, #0
	add	x1, sp, x1
	str	x0, [x1]
	mov	x19, x0
	adrp	x0, _str2@page
	add	x0, x0, _str2@pageoff
	bl	_printf
	mov	x0, x19
	mov	x1, #16
	add	sp, sp, x1
	bl	_cli_cli_exit_code_for_output
	bl	_exit
	mov	w0, #0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function donna_program_main */

