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
	hint	#34
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [x29, 72]
	str	x20, [x29, 64]
	str	x21, [x29, 56]
	str	x22, [x29, 48]
	str	x23, [x29, 40]
	str	x24, [x29, 32]
	str	x25, [x29, 24]
	mov	x19, x0
	bl	cli_cmd_clean_first_positional
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	mov	x0, x19
	bl	builder_scanner_scan
	mov	x1, x0
	mov	x0, x20
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L14
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	adrp	x1, str17
	add	x1, x1, #:lo12:str17
	mov	x21, x0
	bl	cli_cmd_clean_has_flag
	mov	x23, x0
	mov	x0, x21
	adrp	x1, str19
	add	x1, x1, #:lo12:str19
	mov	x21, x0
	bl	cli_cmd_clean_has_flag
	mov	x1, x0
	mov	x0, x21
	orr	x25, x23, x1
	adrp	x1, str22
	add	x1, x1, #:lo12:str22
	bl	cli_cmd_clean_has_flag
	mov	x24, x0
	mov	x0, x20
	bl	builder_scanner_project_build_dir
	mov	x20, x0
	mov	x0, x19
	adrp	x1, str26
	add	x1, x1, #:lo12:str26
	mov	x19, x0
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, str28
	add	x1, x1, #:lo12:str28
	bl	donna_files_join
	mov	x21, x0
	bl	donna_time_now_us
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	cli_cmd_clean_clean_path
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	cmp	x25, #1
	beq	.L5
	mov	x0, x21
	mov	x21, x0
	mov	x0, #0
	str	x0, [x22]
	mov	x0, x21
	mov	x21, #0
	b	.L6
.L5:
	bl	cli_cmd_clean_clean_path
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x22]
.L6:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	orr	x1, x23, x24
	cmp	x1, #1
	beq	.L9
	mov	x0, #0
	str	x0, [x22]
	mov	x1, #0
	b	.L10
.L9:
	bl	cli_cmd_clean_clean_path
	mov	x1, x0
	str	x1, [x22]
.L10:
	orr	x0, x19, x21
	orr	x0, x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #0
	beq	.L13
	bl	donna_time_now_us
	sub	x0, x0, x20
	bl	utilities_logger_clean_ok
	adrp	x0, str57
	add	x0, x0, #:lo12:str57
	str	x0, [x19]
	adrp	x0, str57
	add	x0, x0, #:lo12:str57
	b	.L16
.L13:
	adrp	x0, str53
	add	x0, x0, #:lo12:str53
	bl	utilities_colors_dim
	str	x0, [x19]
	b	.L16
.L14:
	mov	x0, x1
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
.L16:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
.type cli_cmd_clean_run, @function
.size cli_cmd_clean_run, .-cli_cmd_clean_run
/* end function cli_cmd_clean_run */

.text
.balign 16
cli_cmd_clean_clean_path:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L20
	mov	x19, x0
	bl	utilities_logger_cleaning
	mov	x0, x19
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #1
	str	x1, [x19]
	mov	x1, #8
	add	x1, x19, x1
	str	x0, [x1]
	mov	x0, #16
	add	x1, x19, x0
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
	adrp	x0, str70
	add	x0, x0, #:lo12:str70
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x19, [x0]
	adrp	x0, str66
	add	x0, x0, #:lo12:str66
	bl	donna_shell_exec
	mov	x0, #1
	b	.L21
.L20:
	mov	x0, #0
.L21:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_clean_clean_path, @function
.size cli_cmd_clean_clean_path, .-cli_cmd_clean_clean_path
/* end function cli_cmd_clean_clean_path */

.text
.balign 16
cli_cmd_clean_has_flag:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L27
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	ldr	x0, [x0]
	mov	x20, x1
	bl	strcmp
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L25
	bl	cli_cmd_clean_has_flag
	str	x0, [x19]
	b	.L28
.L25:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L28
.L27:
	mov	x0, #0
.L28:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_clean_has_flag, @function
.size cli_cmd_clean_has_flag, .-cli_cmd_clean_has_flag
/* end function cli_cmd_clean_has_flag */

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
	beq	.L37
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L33
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L34
.L33:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str119
	add	x1, x1, #:lo12:str119
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L34:
	cmp	w1, #0
	bne	.L36
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_clean_first_positional
	b	.L38
.L36:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L38
.L37:
	adrp	x0, str106
	add	x0, x0, #:lo12:str106
.L38:
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
