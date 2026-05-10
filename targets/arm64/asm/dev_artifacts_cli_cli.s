.data
.balign 8
str3:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str8:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
str16:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
str24:
	.ascii "V"
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str46:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
str61:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
str68:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
str82:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
str89:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
str96:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str103:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
str110:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
str117:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str124:
	.ascii "  Run "
	.byte 0
/* end data */

.data
.balign 8
str126:
	.ascii "donna help"
	.byte 0
/* end data */

.data
.balign 8
str128:
	.ascii " to see available commands"
	.byte 0
/* end data */

.data
.balign 8
str131:
	.ascii "unknown command "
	.byte 0
/* end data */

.data
.balign 8
str135:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str139:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
str141:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str170:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
str182:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
str188:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str194:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
str200:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
str212:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
str218:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str224:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str230:
	.ascii "unknown help topic "
	.byte 0
/* end data */

.data
.balign 8
str242:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str250:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
str254:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str256:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str277:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str308:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str321:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str350:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str363:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str392:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
str394:
	.ascii "help"
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cli_run
cli_cli_run:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	mov	x20, x0
	mov	x0, x19
	bl	cli_cli_first_positional
	adrp	x1, str3
	add	x1, x1, #:lo12:str3
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L27
	adrp	x1, str46
	add	x1, x1, #:lo12:str46
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L25
	adrp	x1, str53
	add	x1, x1, #:lo12:str53
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L23
	adrp	x1, str61
	add	x1, x1, #:lo12:str61
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L22
	adrp	x1, str68
	add	x1, x1, #:lo12:str68
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L21
	adrp	x1, str75
	add	x1, x1, #:lo12:str75
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L20
	adrp	x1, str82
	add	x1, x1, #:lo12:str82
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L19
	adrp	x1, str89
	add	x1, x1, #:lo12:str89
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L18
	adrp	x1, str96
	add	x1, x1, #:lo12:str96
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L17
	adrp	x1, str103
	add	x1, x1, #:lo12:str103
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L16
	adrp	x1, str110
	add	x1, x1, #:lo12:str110
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L15
	adrp	x1, str117
	add	x1, x1, #:lo12:str117
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L14
	mov	x19, x0
	adrp	x0, str124
	add	x0, x0, #:lo12:str124
	bl	utilities_colors_dim
	adrp	x1, str126
	add	x1, x1, #:lo12:str126
	bl	__rt_str_concat
	mov	x20, x0
	adrp	x0, str128
	add	x0, x0, #:lo12:str128
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_colors_path
	mov	x1, x0
	adrp	x0, str131
	add	x0, x0, #:lo12:str131
	bl	__rt_str_concat
	bl	cli_cli_fail
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str135
	add	x1, x1, #:lo12:str135
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	b	.L44
.L14:
	bl	cli_help_docs_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_docs_run
	add	x2, x2, #:lo12:cli_cmd_docs_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L44
.L15:
	bl	cli_help_format_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_format_run
	add	x2, x2, #:lo12:cli_cmd_format_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L44
.L16:
	bl	cli_help_format_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_format_run
	add	x2, x2, #:lo12:cli_cmd_format_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L44
.L17:
	bl	cli_help_test_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_test_run
	add	x2, x2, #:lo12:cli_cmd_test_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L44
.L18:
	bl	cli_help_run_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_run_run
	add	x2, x2, #:lo12:cli_cmd_run_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L44
.L19:
	bl	cli_help_new_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_new_run
	add	x2, x2, #:lo12:cli_cmd_new_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L44
.L20:
	bl	cli_help_clean_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_clean_run
	add	x2, x2, #:lo12:cli_cmd_clean_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L44
.L21:
	bl	cli_help_check_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_check_run
	add	x2, x2, #:lo12:cli_cmd_check_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L44
.L22:
	bl	cli_help_build_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_build_run
	add	x2, x2, #:lo12:cli_cmd_build_run
	bl	cli_cli_route_command
	b	.L44
.L23:
	mov	x0, x19
	mov	x19, x20
	bl	cli_cli_second_positional
	mov	x1, x0
	mov	x0, x19
	bl	cli_cli_help_for
	bl	cli_cli_show
	b	.L44
.L25:
	mov	x0, x20
	mov	x1, x19
	mov	x22, x0
	bl	cli_cli_command_or_version
	bl	cli_cli_show
	b	.L44
.L27:
	mov	x0, x19
	mov	x22, x20
	adrp	x1, str8
	add	x1, x1, #:lo12:str8
	mov	x19, x0
	bl	cli_cli_has_flag
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L41
	adrp	x1, str16
	add	x1, x1, #:lo12:str16
	mov	x20, x0
	bl	cli_cli_has_flag
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	.L38
	adrp	x1, str24
	add	x1, x1, #:lo12:str24
	mov	x21, x0
	bl	cli_cli_has_flag
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	.L35
	adrp	x1, str32
	add	x1, x1, #:lo12:str32
	bl	cli_cli_has_flag
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	.L33
	bl	cli_help_main_help
	str	x0, [x22]
	b	.L34
.L33:
	bl	cli_cli_version_line
	str	x0, [x22]
.L34:
	str	x0, [x21]
	b	.L37
.L35:
	mov	x0, x22
	bl	cli_cli_version_line
	str	x0, [x21]
.L37:
	str	x0, [x20]
	b	.L40
.L38:
	mov	x0, x22
	bl	cli_help_main_help
	str	x0, [x20]
.L40:
	str	x0, [x19]
	b	.L43
.L41:
	mov	x0, x22
	bl	cli_help_main_help
	str	x0, [x19]
.L43:
	bl	cli_cli_show
.L44:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cli_run, @function
.size cli_cli_run, .-cli_cli_run
/* end function cli_cli_run */

.text
.balign 16
cli_cli_version_line:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str139
	add	x0, x0, #:lo12:str139
	bl	utilities_colors_bold
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str141
	add	x1, x1, #:lo12:str141
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_version_line, @function
.size cli_cli_version_line, .-cli_cli_version_line
/* end function cli_cli_version_line */

.text
.balign 16
cli_cli_command_or_version:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	bl	cli_cli_has_help_flag
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L49
	bl	cli_cli_version_line
	b	.L50
.L49:
	bl	cli_help_version_help
.L50:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_command_or_version, @function
.size cli_cli_command_or_version, .-cli_cli_command_or_version
/* end function cli_cli_command_or_version */

.text
.balign 16
cli_cli_route_command:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	bl	cli_cli_has_help_flag
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #1
	beq	.L53
	bl	cli_cli_drop_command
	mov	x2, x19
	blr	x2
	b	.L54
.L53:
	mov	x0, x20
.L54:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cli_route_command, @function
.size cli_cli_route_command, .-cli_cli_route_command
/* end function cli_cli_route_command */

.text
.balign 16
cli_cli_help_for:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, str164
	add	x1, x1, #:lo12:str164
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L77
	adrp	x1, str170
	add	x1, x1, #:lo12:str170
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L76
	adrp	x1, str176
	add	x1, x1, #:lo12:str176
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L75
	adrp	x1, str182
	add	x1, x1, #:lo12:str182
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L74
	adrp	x1, str188
	add	x1, x1, #:lo12:str188
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L73
	adrp	x1, str194
	add	x1, x1, #:lo12:str194
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L72
	adrp	x1, str200
	add	x1, x1, #:lo12:str200
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L71
	adrp	x1, str206
	add	x1, x1, #:lo12:str206
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L70
	adrp	x1, str212
	add	x1, x1, #:lo12:str212
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L69
	adrp	x1, str218
	add	x1, x1, #:lo12:str218
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L68
	adrp	x1, str224
	add	x1, x1, #:lo12:str224
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L67
	bl	utilities_colors_path
	mov	x1, x0
	adrp	x0, str230
	add	x0, x0, #:lo12:str230
	bl	__rt_str_concat
	bl	cli_cli_fail
	b	.L79
.L67:
	bl	cli_help_version_help
	b	.L79
.L68:
	bl	cli_help_test_help
	b	.L79
.L69:
	bl	cli_help_run_help
	b	.L79
.L70:
	bl	cli_help_new_help
	b	.L79
.L71:
	bl	cli_help_format_help
	b	.L79
.L72:
	bl	cli_help_format_help
	b	.L79
.L73:
	bl	cli_help_docs_help
	b	.L79
.L74:
	bl	cli_help_clean_help
	b	.L79
.L75:
	bl	cli_help_check_help
	b	.L79
.L76:
	bl	cli_help_build_help
	b	.L79
.L77:
	mov	x0, x19
	bl	cli_help_main_help
.L79:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_help_for, @function
.size cli_cli_help_for, .-cli_cli_help_for
/* end function cli_cli_help_for */

.text
.balign 16
cli_cli_show:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldp	x29, x30, [sp], 16
	ret
.type cli_cli_show, @function
.size cli_cli_show, .-cli_cli_show
/* end function cli_cli_show */

.text
.balign 16
.globl cli_cli_exit_code_for_output
cli_cli_exit_code_for_output:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	cli_cli_is_failure_text
	cmp	x0, #1
	beq	.L84
	mov	x0, #0
	b	.L85
.L84:
	mov	x0, #1
.L85:
	ldp	x29, x30, [sp], 16
	ret
.type cli_cli_exit_code_for_output, @function
.size cli_cli_exit_code_for_output, .-cli_cli_exit_code_for_output
/* end function cli_cli_exit_code_for_output */

.text
.balign 16
cli_cli_is_failure_text:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str242
	add	x0, x0, #:lo12:str242
	bl	utilities_colors_red
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L88
	mov	x19, x0
	adrp	x0, str250
	add	x0, x0, #:lo12:str250
	bl	utilities_colors_red
	mov	x1, x0
	mov	x0, x19
	bl	donna_string_starts_with
	b	.L89
.L88:
	mov	x0, #1
.L89:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_is_failure_text, @function
.size cli_cli_is_failure_text, .-cli_cli_is_failure_text
/* end function cli_cli_is_failure_text */

.text
.balign 16
cli_cli_fail:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str254
	add	x0, x0, #:lo12:str254
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str256
	add	x1, x1, #:lo12:str256
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_fail, @function
.size cli_cli_fail, .-cli_cli_fail
/* end function cli_cli_fail */

.text
.balign 16
cli_cli_drop_command:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L100
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L96
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L97
.L96:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str277
	add	x1, x1, #:lo12:str277
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L97:
	cmp	w1, #0
	bne	.L99
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cli_drop_command
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	.L101
.L99:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L101
.L100:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L101:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_drop_command, @function
.size cli_cli_drop_command, .-cli_cli_drop_command
/* end function cli_cli_drop_command */

.text
.balign 16
cli_cli_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L110
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L106
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L107
.L106:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str321
	add	x1, x1, #:lo12:str321
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L107:
	cmp	w1, #0
	bne	.L109
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cli_first_positional
	b	.L111
.L109:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L111
.L110:
	adrp	x0, str308
	add	x0, x0, #:lo12:str308
.L111:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_first_positional, @function
.size cli_cli_first_positional, .-cli_cli_first_positional
/* end function cli_cli_first_positional */

.text
.balign 16
cli_cli_second_positional:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #0
	bl	cli_cli_second_positional_loop
	ldp	x29, x30, [sp], 16
	ret
.type cli_cli_second_positional, @function
.size cli_cli_second_positional, .-cli_cli_second_positional
/* end function cli_cli_second_positional */

.text
.balign 16
cli_cli_second_positional_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #0
	beq	.L125
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x0, #1
	beq	.L118
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
	b	.L119
.L118:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x21, x1
	adrp	x1, str363
	add	x1, x1, #:lo12:str363
	bl	strcmp
	mov	x1, x21
	cmp	x0, #0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x20]
.L119:
	cmp	w0, #0
	bne	.L121
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	bl	cli_cli_second_positional_loop
	b	.L126
.L121:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x2, x19, x2
	ldr	x2, [x2]
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x1, #1
	beq	.L124
	mov	x0, x2
	mov	x1, #1
	bl	cli_cli_second_positional_loop
	str	x0, [x19]
	b	.L126
.L124:
	str	x0, [x19]
	b	.L126
.L125:
	adrp	x0, str350
	add	x0, x0, #:lo12:str350
.L126:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cli_second_positional_loop, @function
.size cli_cli_second_positional_loop, .-cli_cli_second_positional_loop
/* end function cli_cli_second_positional_loop */

.text
.balign 16
cli_cli_has_help_flag:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str392
	add	x1, x1, #:lo12:str392
	mov	x19, x0
	bl	cli_cli_has_flag
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, str394
	add	x1, x1, #:lo12:str394
	bl	cli_cli_has_flag
	orr	x0, x19, x0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_has_help_flag, @function
.size cli_cli_has_help_flag, .-cli_cli_has_help_flag
/* end function cli_cli_has_help_flag */

.text
.balign 16
cli_cli_has_flag:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L134
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	ldr	x0, [x0]
	mov	x20, x1
	bl	donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L132
	bl	cli_cli_has_flag
	str	x0, [x19]
	b	.L135
.L132:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L135
.L134:
	mov	x0, #0
.L135:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cli_has_flag, @function
.size cli_cli_has_flag, .-cli_cli_has_flag
/* end function cli_cli_has_flag */

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
