.data
.balign 8
_str1:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str20:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str22:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str39:
	.ascii "no changes"
	.byte 0
/* end data */

.data
.balign 8
_str42:
	.ascii " file(s) changed"
	.byte 0
/* end data */

.data
.balign 8
_str67:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str95:
	.ascii "src/"
	.byte 0
/* end data */

.data
.balign 8
_str110:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.ascii "skip (parse error): "
	.byte 0
/* end data */

.data
.balign 8
_str151:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str153:
	.ascii ": file not found: "
	.byte 0
/* end data */

.data
.balign 8
_str175:
	.ascii "no changes"
	.byte 0
/* end data */

.data
.balign 8
_str188:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str201:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _cli_cmd_format_run
_cli_cmd_format_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_cli_cmd_format_first_positional
	adrp	x1, _str1@page
	add	x1, x1, _str1@pageoff
	mov	x19, x0
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L2
	bl	_cli_cmd_format_format_project
	b	L3
L2:
	bl	_cli_cmd_format_format_file
L3:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_format_run */

.text
.balign 4
_cli_cmd_format_format_project:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	bl	_builder_scanner_scan
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L8
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_scanner_project_src_dir
	mov	x19, x0
	bl	_donna_time_now_us
	mov	x20, x0
	mov	x0, x19
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_cli_cmd_format_find_donna_files
	mov	x1, #0
	bl	_cli_cmd_format_format_files
	mov	x19, x0
	bl	_donna_time_now_us
	sub	x0, x0, x20
	bl	_utilities_logger_fmt_ok
	mov	x0, x19
	cmp	x0, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L7
	bl	_donna_string_from_int
	adrp	x1, _str42@page
	add	x1, x1, _str42@pageoff
	bl	___rt_str_concat
	bl	_utilities_logger_format_summary
	str	x0, [x19]
	b	L9
L7:
	adrp	x0, _str39@page
	add	x0, x0, _str39@pageoff
	bl	_utilities_logger_format_summary
	str	x0, [x19]
	b	L9
L8:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	adrp	x0, _str20@page
	add	x0, x0, _str20@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str22@page
	add	x1, x1, _str22@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
L9:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_format_format_project */

.text
.balign 4
_cli_cmd_format_find_donna_files:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x19
	bl	_donna_files_list_dir
	mov	x2, x20
	mov	x1, x19
	bl	_cli_cmd_format_collect_entries
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_format_find_donna_files */

.text
.balign 4
_cli_cmd_format_collect_entries:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x22, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L23
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x23, x1
	mov	x1, x0
	mov	x20, x0
	mov	x0, x23
	bl	_donna_files_join
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	_donna_files_is_dir
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	L20
	mov	x24, x1
	adrp	x1, _str67@page
	add	x1, x1, _str67@pageoff
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L17
	str	x22, [x21]
	mov	x1, x24
	mov	x0, x22
	b	L18
L17:
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x24
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x23, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x22, [x2]
	str	x0, [x21]
L18:
	str	x0, [x20]
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
	b	L22
L20:
	mov	x0, x21
	mov	x21, x1
	mov	x1, x22
	bl	_cli_cmd_format_find_donna_files
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x20]
L22:
	mov	x2, x19
	bl	_cli_cmd_format_collect_entries
	b	L24
L23:
	mov	x0, x22
L24:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_format_collect_entries */

.text
.balign 4
_cli_cmd_format_format_files:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x19, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L27
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	bl	_cli_cmd_format_format_one
	mov	x1, x0
	mov	x0, x20
	add	x1, x19, x1
	bl	_cli_cmd_format_format_files
	b	L28
L27:
	mov	x0, x19
L28:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_format_format_files */

.text
.balign 4
_cli_cmd_format_path_to_module:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	adrp	x1, _str95@page
	add	x1, x1, _str95@pageoff
	mov	x19, x0
	bl	_donna_string_index_of
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	cmn	x19, #1
	cset	x1, eq
	cmp	x1, #1
	beq	L31
	mov	x1, #4
	add	x21, x19, x1
	mov	x20, x0
	bl	_donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	sub	x2, x2, x19
	mov	x3, #4
	sub	x2, x2, x3
	bl	_donna_string_slice
L31:
	adrp	x1, _str110@page
	add	x1, x1, _str110@pageoff
	mov	x19, x0
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L33
	str	x0, [x19]
	b	L34
L33:
	mov	x20, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x20
	mov	x2, #6
	sub	x2, x1, x2
	mov	x1, #0
	bl	_donna_string_slice
	str	x0, [x19]
L34:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_format_path_to_module */

.text
.balign 4
_cli_cmd_format_format_one:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x19
	bl	_donna_files_read
	mov	x1, x19
	mov	x20, x1
	mov	x19, x0
	bl	_tools_fmt_formatter_format_source
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L41
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x19, x1
	bl	_donna_string_equal
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x0, #1
	beq	L39
	mov	x0, x20
	bl	_donna_files_write
	mov	x1, x20
	mov	x0, x1
	bl	_cli_cmd_format_path_to_module
	bl	_utilities_logger_formatting
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L44
L39:
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	L44
L41:
	mov	x1, x20
	adrp	x0, _str131@page
	add	x0, x0, _str131@pageoff
	bl	___rt_str_concat
	bl	_utilities_logger_step
	mov	x0, #0
L44:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_format_format_one */

.text
.balign 4
_cli_cmd_format_format_file:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x0
	bl	_donna_files_exists
	cmp	x0, #0
	beq	L53
	mov	x0, x20
	bl	_donna_files_read
	mov	x1, x20
	mov	x19, x0
	bl	_tools_fmt_formatter_format_source
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L51
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x21, x1
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	L49
	mov	x21, x0
	bl	_donna_files_write
	mov	x0, x21
	bl	_utilities_logger_format_summary
	str	x0, [x20]
	b	L50
L49:
	adrp	x0, _str175@page
	add	x0, x0, _str175@pageoff
	bl	_utilities_logger_format_summary
	str	x0, [x20]
L50:
	str	x0, [x19]
	b	L55
L51:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x19]
	b	L55
L53:
	mov	x0, x20
	mov	x19, x0
	adrp	x0, _str151@page
	add	x0, x0, _str151@pageoff
	bl	_utilities_colors_red
	adrp	x1, _str153@page
	add	x1, x1, _str153@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
L55:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_format_format_file */

.text
.balign 4
_cli_cmd_format_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L64
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L60
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L61
L60:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str201@page
	add	x1, x1, _str201@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L61:
	cmp	w1, #0
	bne	L63
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_format_first_positional
	b	L65
L63:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L65
L64:
	adrp	x0, _str188@page
	add	x0, x0, _str188@pageoff
L65:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_format_first_positional */

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

