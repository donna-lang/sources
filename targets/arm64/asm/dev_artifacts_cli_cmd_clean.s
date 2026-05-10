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
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	bl	cli_cmd_clean_first_positional
	bl	builder_scanner_scan
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L5
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_scanner_project_build_dir
	mov	x22, x0
	mov	x0, x22
	bl	donna_files_exists
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #0
	beq	.L4
	bl	donna_time_now_us
	mov	x20, x0
	mov	x0, x22
	bl	utilities_logger_cleaning
	mov	x0, #24
	bl	malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x21, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, str31
	add	x0, x0, #:lo12:str31
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x21, [x0]
	adrp	x0, str27
	add	x0, x0, #:lo12:str27
	bl	donna_shell_exec
	bl	donna_time_now_us
	sub	x0, x0, x20
	bl	utilities_logger_clean_ok
	adrp	x0, str38
	add	x0, x0, #:lo12:str38
	str	x0, [x19]
	adrp	x0, str38
	add	x0, x0, #:lo12:str38
	b	.L6
.L4:
	adrp	x0, str24
	add	x0, x0, #:lo12:str24
	bl	utilities_colors_dim
	str	x0, [x19]
	b	.L6
.L5:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	adrp	x0, str10
	add	x0, x0, #:lo12:str10
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str12
	add	x1, x1, #:lo12:str12
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
.L6:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_clean_run, @function
.size cli_cmd_clean_run, .-cli_cmd_clean_run
/* end function cli_cmd_clean_run */

.text
.balign 16
cli_cmd_clean_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L15
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L11
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L12
.L11:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str60
	add	x1, x1, #:lo12:str60
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L12:
	cmp	w1, #0
	bne	.L14
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_clean_first_positional
	b	.L16
.L14:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L16
.L15:
	adrp	x0, str47
	add	x0, x0, #:lo12:str47
.L16:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_clean_first_positional, @function
.size cli_cmd_clean_first_positional, .-cli_cmd_clean_first_positional
/* end function cli_cmd_clean_first_positional */

.text
.balign 16
__rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	strlen
	mov	x19, x0
	mov	x0, x20
	bl	strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	malloc
	mov	x1, x19
	mov	x19, x0
	bl	strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type __rt_str_concat, @function
.size __rt_str_concat, .-__rt_str_concat
/* end function __rt_str_concat */

.section .note.GNU-stack,"",@progbits
