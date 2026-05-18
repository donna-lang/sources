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
	.ascii "deps"
	.byte 0
/* end data */

.data
.balign 8
str89:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
str96:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
str103:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str110:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
str117:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
str124:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str131:
	.ascii "  Run "
	.byte 0
/* end data */

.data
.balign 8
str133:
	.ascii "donna help"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii " to see available commands"
	.byte 0
/* end data */

.data
.balign 8
str138:
	.ascii "unknown command "
	.byte 0
/* end data */

.data
.balign 8
str142:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str146:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
str148:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str177:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
str183:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "deps"
	.byte 0
/* end data */

.data
.balign 8
str201:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
str207:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
str213:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
str219:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
str231:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str237:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str243:
	.ascii "unknown help topic "
	.byte 0
/* end data */

.data
.balign 8
str256:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str263:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
str270:
	.ascii "parse error:"
	.byte 0
/* end data */

.data
.balign 8
str277:
	.ascii "lex error:"
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str284:
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
str305:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str336:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str349:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str378:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str391:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str420:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
str422:
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
	beq	.L29
	adrp	x1, str46
	add	x1, x1, #:lo12:str46
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L27
	adrp	x1, str53
	add	x1, x1, #:lo12:str53
	mov	x21, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	.L25
	adrp	x1, str61
	add	x1, x1, #:lo12:str61
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L24
	adrp	x1, str68
	add	x1, x1, #:lo12:str68
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L23
	adrp	x1, str75
	add	x1, x1, #:lo12:str75
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L22
	adrp	x1, str82
	add	x1, x1, #:lo12:str82
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L21
	adrp	x1, str89
	add	x1, x1, #:lo12:str89
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L20
	adrp	x1, str96
	add	x1, x1, #:lo12:str96
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L19
	adrp	x1, str103
	add	x1, x1, #:lo12:str103
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L18
	adrp	x1, str110
	add	x1, x1, #:lo12:str110
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L17
	adrp	x1, str117
	add	x1, x1, #:lo12:str117
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L16
	adrp	x1, str124
	add	x1, x1, #:lo12:str124
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L15
	mov	x19, x0
	adrp	x0, str131
	add	x0, x0, #:lo12:str131
	bl	utilities_colors_dim
	adrp	x1, str133
	add	x1, x1, #:lo12:str133
	bl	__rt_str_concat
	mov	x20, x0
	adrp	x0, str135
	add	x0, x0, #:lo12:str135
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_colors_path
	mov	x1, x0
	adrp	x0, str138
	add	x0, x0, #:lo12:str138
	bl	__rt_str_concat
	bl	cli_cli_fail
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str142
	add	x1, x1, #:lo12:str142
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	b	.L46
.L15:
	bl	cli_help_docs_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_docs_run
	add	x2, x2, #:lo12:cli_cmd_docs_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L16:
	bl	cli_help_format_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_format_run
	add	x2, x2, #:lo12:cli_cmd_format_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L17:
	bl	cli_help_format_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_format_run
	add	x2, x2, #:lo12:cli_cmd_format_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L18:
	bl	cli_help_test_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_test_run
	add	x2, x2, #:lo12:cli_cmd_test_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L19:
	bl	cli_help_run_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_run_run
	add	x2, x2, #:lo12:cli_cmd_run_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L20:
	bl	cli_help_new_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_new_run
	add	x2, x2, #:lo12:cli_cmd_new_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L21:
	bl	cli_help_deps_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_deps_run
	add	x2, x2, #:lo12:cli_cmd_deps_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L22:
	bl	cli_help_clean_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_clean_run
	add	x2, x2, #:lo12:cli_cmd_clean_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L23:
	bl	cli_help_check_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_check_run
	add	x2, x2, #:lo12:cli_cmd_check_run
	mov	x19, x0
	bl	cli_cli_route_command
	b	.L46
.L24:
	bl	cli_help_build_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, cli_cmd_build_run
	add	x2, x2, #:lo12:cli_cmd_build_run
	bl	cli_cli_route_command
	b	.L46
.L25:
	mov	x0, x19
	mov	x19, x20
	bl	cli_cli_second_positional
	mov	x1, x0
	mov	x0, x19
	bl	cli_cli_help_for
	bl	cli_cli_show
	b	.L46
.L27:
	mov	x0, x20
	mov	x1, x19
	mov	x22, x0
	bl	cli_cli_command_or_version
	bl	cli_cli_show
	b	.L46
.L29:
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
	beq	.L43
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
	beq	.L40
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
	beq	.L37
	adrp	x1, str32
	add	x1, x1, #:lo12:str32
	bl	cli_cli_has_flag
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	.L35
	bl	cli_help_main_help
	str	x0, [x22]
	b	.L36
.L35:
	bl	cli_cli_version_line
	str	x0, [x22]
.L36:
	str	x0, [x21]
	b	.L39
.L37:
	mov	x0, x22
	bl	cli_cli_version_line
	str	x0, [x21]
.L39:
	str	x0, [x20]
	b	.L42
.L40:
	mov	x0, x22
	bl	cli_help_main_help
	str	x0, [x20]
.L42:
	str	x0, [x19]
	b	.L45
.L43:
	mov	x0, x22
	bl	cli_help_main_help
	str	x0, [x19]
.L45:
	bl	cli_cli_show
.L46:
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
	adrp	x0, str146
	add	x0, x0, #:lo12:str146
	bl	utilities_colors_bold
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str148
	add	x1, x1, #:lo12:str148
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
	beq	.L51
	bl	cli_cli_version_line
	b	.L52
.L51:
	bl	cli_help_version_help
.L52:
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
	beq	.L55
	bl	cli_cli_drop_command
	mov	x2, x19
	blr	x2
	b	.L56
.L55:
	mov	x0, x20
.L56:
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
	adrp	x1, str171
	add	x1, x1, #:lo12:str171
	mov	x20, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L81
	adrp	x1, str177
	add	x1, x1, #:lo12:str177
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L80
	adrp	x1, str183
	add	x1, x1, #:lo12:str183
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L79
	adrp	x1, str189
	add	x1, x1, #:lo12:str189
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L78
	adrp	x1, str195
	add	x1, x1, #:lo12:str195
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L77
	adrp	x1, str201
	add	x1, x1, #:lo12:str201
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L76
	adrp	x1, str207
	add	x1, x1, #:lo12:str207
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L75
	adrp	x1, str213
	add	x1, x1, #:lo12:str213
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L74
	adrp	x1, str219
	add	x1, x1, #:lo12:str219
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L73
	adrp	x1, str225
	add	x1, x1, #:lo12:str225
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L72
	adrp	x1, str231
	add	x1, x1, #:lo12:str231
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L71
	adrp	x1, str237
	add	x1, x1, #:lo12:str237
	mov	x19, x0
	bl	strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L70
	bl	utilities_colors_path
	mov	x1, x0
	adrp	x0, str243
	add	x0, x0, #:lo12:str243
	bl	__rt_str_concat
	bl	cli_cli_fail
	b	.L83
.L70:
	bl	cli_help_version_help
	b	.L83
.L71:
	bl	cli_help_test_help
	b	.L83
.L72:
	bl	cli_help_run_help
	b	.L83
.L73:
	bl	cli_help_new_help
	b	.L83
.L74:
	bl	cli_help_format_help
	b	.L83
.L75:
	bl	cli_help_format_help
	b	.L83
.L76:
	bl	cli_help_docs_help
	b	.L83
.L77:
	bl	cli_help_deps_help
	b	.L83
.L78:
	bl	cli_help_clean_help
	b	.L83
.L79:
	bl	cli_help_check_help
	b	.L83
.L80:
	bl	cli_help_build_help
	b	.L83
.L81:
	mov	x0, x19
	bl	cli_help_main_help
.L83:
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
	beq	.L88
	mov	x0, #0
	b	.L89
.L88:
	mov	x0, #1
.L89:
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
	str	x20, [x29, 16]
	bl	utilities_colors_strip
	adrp	x1, str256
	add	x1, x1, #:lo12:str256
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L99
	adrp	x1, str263
	add	x1, x1, #:lo12:str263
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L97
	adrp	x1, str270
	add	x1, x1, #:lo12:str270
	mov	x20, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	.L94
	adrp	x1, str277
	add	x1, x1, #:lo12:str277
	bl	donna_string_starts_with
	str	x0, [x20]
	b	.L96
.L94:
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
.L96:
	str	x0, [x19]
	b	.L100
.L97:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L100
.L99:
	mov	x0, #1
.L100:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
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
	adrp	x0, str282
	add	x0, x0, #:lo12:str282
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str284
	add	x1, x1, #:lo12:str284
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
	beq	.L111
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L107
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L108
.L107:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str305
	add	x1, x1, #:lo12:str305
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L108:
	cmp	w1, #0
	bne	.L110
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
	b	.L112
.L110:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L112
.L111:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L112:
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
	beq	.L121
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L117
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L118
.L117:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str349
	add	x1, x1, #:lo12:str349
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L118:
	cmp	w1, #0
	bne	.L120
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cli_first_positional
	b	.L122
.L120:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L122
.L121:
	adrp	x0, str336
	add	x0, x0, #:lo12:str336
.L122:
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
	beq	.L136
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x0, #1
	beq	.L129
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
	b	.L130
.L129:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x21, x1
	adrp	x1, str391
	add	x1, x1, #:lo12:str391
	bl	strcmp
	mov	x1, x21
	cmp	x0, #0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x20]
.L130:
	cmp	w0, #0
	bne	.L132
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	bl	cli_cli_second_positional_loop
	b	.L137
.L132:
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
	beq	.L135
	mov	x0, x2
	mov	x1, #1
	bl	cli_cli_second_positional_loop
	str	x0, [x19]
	b	.L137
.L135:
	str	x0, [x19]
	b	.L137
.L136:
	adrp	x0, str378
	add	x0, x0, #:lo12:str378
.L137:
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
	adrp	x1, str420
	add	x1, x1, #:lo12:str420
	mov	x19, x0
	bl	cli_cli_has_flag
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, str422
	add	x1, x1, #:lo12:str422
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
	beq	.L145
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
	beq	.L143
	bl	cli_cli_has_flag
	str	x0, [x19]
	b	.L146
.L143:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L146
.L145:
	mov	x0, #0
.L146:
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
