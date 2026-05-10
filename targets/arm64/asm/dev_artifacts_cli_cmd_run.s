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
str36:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str38:
	.ascii ": cannot run library project"
	.byte 0
/* end data */

.data
.balign 8
str40:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str42:
	.ascii "  hint: add pub fn main() to create an application entry point"
	.byte 0
/* end data */

.data
.balign 8
str51:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii ": executable was not produced at "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str59:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str70:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str83:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_run_run
cli_cmd_run_run:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	bl	cli_cmd_run_first_positional
	mov	x19, x0
	bl	builder_scanner_scan
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L13
	mov	x2, #8
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, x19
	bl	cli_cmd_build_build_project
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L11
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x20, x0
	bl	builder_scanner_project_name
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_scanner_project_bin_dir
	mov	x1, x20
	bl	donna_files_join
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	cmp	x21, #0
	beq	.L9
	mov	x22, x0
	bl	donna_files_exists
	mov	x1, #16
	sub	sp, sp, x1
	mov	x21, sp
	cmp	x0, #0
	beq	.L6
	bl	donna_shell_flush
	mov	x0, x22
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	donna_shell_exec
	adrp	x0, str59
	add	x0, x0, #:lo12:str59
	str	x0, [x21]
	adrp	x0, str59
	add	x0, x0, #:lo12:str59
	b	.L8
.L6:
	mov	x0, x22
	mov	x22, x0
	adrp	x0, str51
	add	x0, x0, #:lo12:str51
	bl	utilities_colors_red
	adrp	x1, str53
	add	x1, x1, #:lo12:str53
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x22
	bl	__rt_str_concat
	str	x0, [x21]
.L8:
	str	x0, [x20]
	b	.L10
.L9:
	adrp	x0, str36
	add	x0, x0, #:lo12:str36
	bl	utilities_colors_red
	adrp	x1, str38
	add	x1, x1, #:lo12:str38
	bl	__rt_str_concat
	adrp	x1, str40
	add	x1, x1, #:lo12:str40
	bl	__rt_str_concat
	mov	x21, x0
	adrp	x0, str42
	add	x0, x0, #:lo12:str42
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	str	x0, [x20]
.L10:
	str	x0, [x19]
	b	.L15
.L11:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x19]
	b	.L15
.L13:
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
.L15:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_run_run, @function
.size cli_cmd_run_run, .-cli_cmd_run_run
/* end function cli_cmd_run_run */

.text
.balign 16
cli_cmd_run_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L24
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L20
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L21
.L20:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str83
	add	x1, x1, #:lo12:str83
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L21:
	cmp	w1, #0
	bne	.L23
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_run_first_positional
	b	.L25
.L23:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L25
.L24:
	adrp	x0, str70
	add	x0, x0, #:lo12:str70
.L25:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_run_first_positional, @function
.size cli_cmd_run_first_positional, .-cli_cmd_run_first_positional
/* end function cli_cmd_run_first_positional */

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
