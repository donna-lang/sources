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
.balign 4
.globl _cli_cmd_clean_run
_cli_cmd_clean_run:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	bl	_cli_cmd_clean_first_positional
	bl	_builder_scanner_scan
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L5
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_scanner_project_build_dir
	mov	x22, x0
	mov	x0, x22
	bl	_donna_files_exists
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #0
	beq	L4
	bl	_donna_time_now_us
	mov	x20, x0
	mov	x0, x22
	bl	_utilities_logger_cleaning
	mov	x0, #24
	bl	_malloc
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	add	x1, x21, x0
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
	adrp	x0, _str31@page
	add	x0, x0, _str31@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x21, [x0]
	adrp	x0, _str27@page
	add	x0, x0, _str27@pageoff
	bl	_donna_shell_exec
	bl	_donna_time_now_us
	sub	x0, x0, x20
	bl	_utilities_logger_clean_ok
	adrp	x0, _str38@page
	add	x0, x0, _str38@pageoff
	str	x0, [x19]
	adrp	x0, _str38@page
	add	x0, x0, _str38@pageoff
	b	L6
L4:
	adrp	x0, _str24@page
	add	x0, x0, _str24@pageoff
	bl	_utilities_colors_dim
	str	x0, [x19]
	b	L6
L5:
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
L6:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_clean_run */

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
	beq	L15
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L11
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L12
L11:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str60@page
	add	x1, x1, _str60@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L12:
	cmp	w1, #0
	bne	L14
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_clean_first_positional
	b	L16
L14:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L16
L15:
	adrp	x0, _str47@page
	add	x0, x0, _str47@pageoff
L16:
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

