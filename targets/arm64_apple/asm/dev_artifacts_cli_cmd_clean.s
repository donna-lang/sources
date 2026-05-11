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
.balign 4
.globl _cli_cmd_clean_run
_cli_cmd_clean_run:
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
	bl	_cli_cmd_clean_first_positional
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	mov	x0, x19
	bl	_builder_scanner_scan
	mov	x1, x0
	mov	x0, x20
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L14
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	adrp	x1, _str17@page
	add	x1, x1, _str17@pageoff
	mov	x21, x0
	bl	_cli_cmd_clean_has_flag
	mov	x23, x0
	mov	x0, x21
	adrp	x1, _str19@page
	add	x1, x1, _str19@pageoff
	mov	x21, x0
	bl	_cli_cmd_clean_has_flag
	mov	x1, x0
	mov	x0, x21
	orr	x25, x23, x1
	adrp	x1, _str22@page
	add	x1, x1, _str22@pageoff
	bl	_cli_cmd_clean_has_flag
	mov	x24, x0
	mov	x0, x20
	bl	_builder_scanner_project_build_dir
	mov	x20, x0
	mov	x0, x19
	adrp	x1, _str26@page
	add	x1, x1, _str26@pageoff
	mov	x19, x0
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _str28@page
	add	x1, x1, _str28@pageoff
	bl	_donna_files_join
	mov	x21, x0
	bl	_donna_time_now_us
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_cli_cmd_clean_clean_path
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	cmp	x25, #1
	beq	L5
	mov	x0, x21
	mov	x21, x0
	mov	x0, #0
	str	x0, [x22]
	mov	x0, x21
	mov	x21, #0
	b	L6
L5:
	bl	_cli_cmd_clean_clean_path
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x21, [x22]
L6:
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	orr	x1, x23, x24
	cmp	x1, #1
	beq	L9
	mov	x0, #0
	str	x0, [x22]
	mov	x1, #0
	b	L10
L9:
	bl	_cli_cmd_clean_clean_path
	mov	x1, x0
	str	x1, [x22]
L10:
	orr	x0, x19, x21
	orr	x0, x0, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #0
	beq	L13
	bl	_donna_time_now_us
	sub	x0, x0, x20
	bl	_utilities_logger_clean_ok
	adrp	x0, _str57@page
	add	x0, x0, _str57@pageoff
	str	x0, [x19]
	adrp	x0, _str57@page
	add	x0, x0, _str57@pageoff
	b	L16
L13:
	adrp	x0, _str53@page
	add	x0, x0, _str53@pageoff
	bl	_utilities_colors_dim
	str	x0, [x19]
	b	L16
L14:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	adrp	x0, _str10@page
	add	x0, x0, _str10@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str12@page
	add	x1, x1, _str12@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
L16:
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
/* end function cli_cmd_clean_run */

.text
.balign 4
_cli_cmd_clean_clean_path:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	_donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L20
	mov	x19, x0
	bl	_utilities_logger_cleaning
	mov	x0, x19
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, _str70@page
	add	x0, x0, _str70@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x19, [x0]
	adrp	x0, _str66@page
	add	x0, x0, _str66@pageoff
	bl	_donna_shell_exec
	mov	x0, #1
	b	L21
L20:
	mov	x0, #0
L21:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_clean_clean_path */

.text
.balign 4
_cli_cmd_clean_has_flag:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L27
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	ldr	x0, [x0]
	mov	x20, x1
	bl	_strcmp
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	cset	x2, eq
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L25
	bl	_cli_cmd_clean_has_flag
	str	x0, [x19]
	b	L28
L25:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L28
L27:
	mov	x0, #0
L28:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_clean_has_flag */

.text
.balign 4
_cli_cmd_clean_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L37
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L33
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L34
L33:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str119@page
	add	x1, x1, _str119@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L34:
	cmp	w1, #0
	bne	L36
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_clean_first_positional
	b	L38
L36:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L38
L37:
	adrp	x0, _str106@page
	add	x0, x0, _str106@pageoff
L38:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_clean_first_positional */

.text
.balign 4
___rt_str_concat:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x21, x0
	mov	x0, x21
	bl	_strlen
	mov	x19, x0
	mov	x0, x20
	bl	_strlen
	mov	x1, x21
	add	x0, x19, x0
	mov	x19, x1
	mov	x1, #1
	add	x0, x0, x1
	bl	_malloc
	mov	x1, x19
	mov	x19, x0
	bl	_strcpy
	mov	x1, x20
	mov	x0, x19
	mov	x19, x0
	bl	_strcat
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function __rt_str_concat */

