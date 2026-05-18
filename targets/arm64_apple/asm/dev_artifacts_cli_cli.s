.data
.balign 8
_str3:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str8:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
_str16:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
_str24:
	.ascii "V"
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str53:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
_str68:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
_str82:
	.ascii "deps"
	.byte 0
/* end data */

.data
.balign 8
_str89:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
_str96:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str110:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.ascii "  Run "
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "donna help"
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.ascii " to see available commands"
	.byte 0
/* end data */

.data
.balign 8
_str138:
	.ascii "unknown command "
	.byte 0
/* end data */

.data
.balign 8
_str142:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str146:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
_str148:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str171:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str177:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
_str183:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
_str195:
	.ascii "deps"
	.byte 0
/* end data */

.data
.balign 8
_str201:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str207:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
_str213:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
_str219:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
_str231:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str243:
	.ascii "unknown help topic "
	.byte 0
/* end data */

.data
.balign 8
_str256:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str263:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
_str270:
	.ascii "parse error:"
	.byte 0
/* end data */

.data
.balign 8
_str277:
	.ascii "lex error:"
	.byte 0
/* end data */

.data
.balign 8
_str282:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str284:
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
_str305:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str336:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str349:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str378:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str391:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str420:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
_str422:
	.ascii "help"
	.byte 0
/* end data */

.text
.balign 4
.globl _cli_cli_run
_cli_cli_run:
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
	bl	_cli_cli_first_positional
	adrp	x1, _str3@page
	add	x1, x1, _str3@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L29
	adrp	x1, _str46@page
	add	x1, x1, _str46@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L27
	adrp	x1, _str53@page
	add	x1, x1, _str53@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L25
	adrp	x1, _str61@page
	add	x1, x1, _str61@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L24
	adrp	x1, _str68@page
	add	x1, x1, _str68@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L23
	adrp	x1, _str75@page
	add	x1, x1, _str75@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L22
	adrp	x1, _str82@page
	add	x1, x1, _str82@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L21
	adrp	x1, _str89@page
	add	x1, x1, _str89@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L20
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L19
	adrp	x1, _str103@page
	add	x1, x1, _str103@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L18
	adrp	x1, _str110@page
	add	x1, x1, _str110@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L17
	adrp	x1, _str117@page
	add	x1, x1, _str117@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L16
	adrp	x1, _str124@page
	add	x1, x1, _str124@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L15
	mov	x19, x0
	adrp	x0, _str131@page
	add	x0, x0, _str131@pageoff
	bl	_utilities_colors_dim
	adrp	x1, _str133@page
	add	x1, x1, _str133@pageoff
	bl	___rt_str_concat
	mov	x20, x0
	adrp	x0, _str135@page
	add	x0, x0, _str135@pageoff
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_colors_path
	mov	x1, x0
	adrp	x0, _str138@page
	add	x0, x0, _str138@pageoff
	bl	___rt_str_concat
	bl	_cli_cli_fail
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str142@page
	add	x1, x1, _str142@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	b	L46
L15:
	bl	_cli_help_docs_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_docs_run@page
	add	x2, x2, _cli_cmd_docs_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L16:
	bl	_cli_help_format_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_format_run@page
	add	x2, x2, _cli_cmd_format_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L17:
	bl	_cli_help_format_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_format_run@page
	add	x2, x2, _cli_cmd_format_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L18:
	bl	_cli_help_test_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_test_run@page
	add	x2, x2, _cli_cmd_test_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L19:
	bl	_cli_help_run_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_run_run@page
	add	x2, x2, _cli_cmd_run_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L20:
	bl	_cli_help_new_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_new_run@page
	add	x2, x2, _cli_cmd_new_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L21:
	bl	_cli_help_deps_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_deps_run@page
	add	x2, x2, _cli_cmd_deps_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L22:
	bl	_cli_help_clean_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_clean_run@page
	add	x2, x2, _cli_cmd_clean_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L23:
	bl	_cli_help_check_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_check_run@page
	add	x2, x2, _cli_cmd_check_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L46
L24:
	bl	_cli_help_build_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_build_run@page
	add	x2, x2, _cli_cmd_build_run@pageoff
	bl	_cli_cli_route_command
	b	L46
L25:
	mov	x0, x19
	mov	x19, x20
	bl	_cli_cli_second_positional
	mov	x1, x0
	mov	x0, x19
	bl	_cli_cli_help_for
	bl	_cli_cli_show
	b	L46
L27:
	mov	x0, x20
	mov	x1, x19
	mov	x22, x0
	bl	_cli_cli_command_or_version
	bl	_cli_cli_show
	b	L46
L29:
	mov	x0, x19
	mov	x22, x20
	adrp	x1, _str8@page
	add	x1, x1, _str8@pageoff
	mov	x19, x0
	bl	_cli_cli_has_flag
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L43
	adrp	x1, _str16@page
	add	x1, x1, _str16@pageoff
	mov	x20, x0
	bl	_cli_cli_has_flag
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L40
	adrp	x1, _str24@page
	add	x1, x1, _str24@pageoff
	mov	x21, x0
	bl	_cli_cli_has_flag
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L37
	adrp	x1, _str32@page
	add	x1, x1, _str32@pageoff
	bl	_cli_cli_has_flag
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	L35
	bl	_cli_help_main_help
	str	x0, [x22]
	b	L36
L35:
	bl	_cli_cli_version_line
	str	x0, [x22]
L36:
	str	x0, [x21]
	b	L39
L37:
	mov	x0, x22
	bl	_cli_cli_version_line
	str	x0, [x21]
L39:
	str	x0, [x20]
	b	L42
L40:
	mov	x0, x22
	bl	_cli_help_main_help
	str	x0, [x20]
L42:
	str	x0, [x19]
	b	L45
L43:
	mov	x0, x22
	bl	_cli_help_main_help
	str	x0, [x19]
L45:
	bl	_cli_cli_show
L46:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cli_run */

.text
.balign 4
_cli_cli_version_line:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, _str146@page
	add	x0, x0, _str146@pageoff
	bl	_utilities_colors_bold
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str148@page
	add	x1, x1, _str148@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_version_line */

.text
.balign 4
_cli_cli_command_or_version:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	bl	_cli_cli_has_help_flag
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L51
	bl	_cli_cli_version_line
	b	L52
L51:
	bl	_cli_help_version_help
L52:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_command_or_version */

.text
.balign 4
_cli_cli_route_command:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	bl	_cli_cli_has_help_flag
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #1
	beq	L55
	bl	_cli_cli_drop_command
	mov	x2, x19
	blr	x2
	b	L56
L55:
	mov	x0, x20
L56:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cli_route_command */

.text
.balign 4
_cli_cli_help_for:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, _str171@page
	add	x1, x1, _str171@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L81
	adrp	x1, _str177@page
	add	x1, x1, _str177@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L80
	adrp	x1, _str183@page
	add	x1, x1, _str183@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L79
	adrp	x1, _str189@page
	add	x1, x1, _str189@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L78
	adrp	x1, _str195@page
	add	x1, x1, _str195@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L77
	adrp	x1, _str201@page
	add	x1, x1, _str201@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L76
	adrp	x1, _str207@page
	add	x1, x1, _str207@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L75
	adrp	x1, _str213@page
	add	x1, x1, _str213@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L74
	adrp	x1, _str219@page
	add	x1, x1, _str219@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L73
	adrp	x1, _str225@page
	add	x1, x1, _str225@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L72
	adrp	x1, _str231@page
	add	x1, x1, _str231@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L71
	adrp	x1, _str237@page
	add	x1, x1, _str237@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L70
	bl	_utilities_colors_path
	mov	x1, x0
	adrp	x0, _str243@page
	add	x0, x0, _str243@pageoff
	bl	___rt_str_concat
	bl	_cli_cli_fail
	b	L83
L70:
	bl	_cli_help_version_help
	b	L83
L71:
	bl	_cli_help_test_help
	b	L83
L72:
	bl	_cli_help_run_help
	b	L83
L73:
	bl	_cli_help_new_help
	b	L83
L74:
	bl	_cli_help_format_help
	b	L83
L75:
	bl	_cli_help_format_help
	b	L83
L76:
	bl	_cli_help_docs_help
	b	L83
L77:
	bl	_cli_help_deps_help
	b	L83
L78:
	bl	_cli_help_clean_help
	b	L83
L79:
	bl	_cli_help_check_help
	b	L83
L80:
	bl	_cli_help_build_help
	b	L83
L81:
	mov	x0, x19
	bl	_cli_help_main_help
L83:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_help_for */

.text
.balign 4
_cli_cli_show:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cli_show */

.text
.balign 4
.globl _cli_cli_exit_code_for_output
_cli_cli_exit_code_for_output:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_cli_cli_is_failure_text
	cmp	x0, #1
	beq	L88
	mov	x0, #0
	b	L89
L88:
	mov	x0, #1
L89:
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cli_exit_code_for_output */

.text
.balign 4
_cli_cli_is_failure_text:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	bl	_utilities_colors_strip
	adrp	x1, _str256@page
	add	x1, x1, _str256@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L99
	adrp	x1, _str263@page
	add	x1, x1, _str263@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L97
	adrp	x1, _str270@page
	add	x1, x1, _str270@pageoff
	mov	x20, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L94
	adrp	x1, _str277@page
	add	x1, x1, _str277@pageoff
	bl	_donna_string_starts_with
	str	x0, [x20]
	b	L96
L94:
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #1
L96:
	str	x0, [x19]
	b	L100
L97:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L100
L99:
	mov	x0, #1
L100:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_is_failure_text */

.text
.balign 4
_cli_cli_fail:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, _str282@page
	add	x0, x0, _str282@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str284@page
	add	x1, x1, _str284@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_fail */

.text
.balign 4
_cli_cli_drop_command:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L111
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L107
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L108
L107:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str305@page
	add	x1, x1, _str305@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L108:
	cmp	w1, #0
	bne	L110
	mov	x1, #8
	add	x1, x0, x1
	ldr	x20, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cli_drop_command
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x19, [x1]
	b	L112
L110:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L112
L111:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L112:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_drop_command */

.text
.balign 4
_cli_cli_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L121
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L117
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L118
L117:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str349@page
	add	x1, x1, _str349@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L118:
	cmp	w1, #0
	bne	L120
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cli_first_positional
	b	L122
L120:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L122
L121:
	adrp	x0, _str336@page
	add	x0, x0, _str336@pageoff
L122:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_first_positional */

.text
.balign 4
_cli_cli_second_positional:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #0
	bl	_cli_cli_second_positional_loop
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cli_second_positional */

.text
.balign 4
_cli_cli_second_positional_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	ldr	x0, [x19]
	cmp	x0, #0
	beq	L136
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x0, #1
	beq	L129
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
	b	L130
L129:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x21, x1
	adrp	x1, _str391@page
	add	x1, x1, _str391@pageoff
	bl	_strcmp
	mov	x1, x21
	cmp	x0, #0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x20]
L130:
	cmp	w0, #0
	bne	L132
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	bl	_cli_cli_second_positional_loop
	b	L137
L132:
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
	beq	L135
	mov	x0, x2
	mov	x1, #1
	bl	_cli_cli_second_positional_loop
	str	x0, [x19]
	b	L137
L135:
	str	x0, [x19]
	b	L137
L136:
	adrp	x0, _str378@page
	add	x0, x0, _str378@pageoff
L137:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cli_second_positional_loop */

.text
.balign 4
_cli_cli_has_help_flag:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _str420@page
	add	x1, x1, _str420@pageoff
	mov	x19, x0
	bl	_cli_cli_has_flag
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _str422@page
	add	x1, x1, _str422@pageoff
	bl	_cli_cli_has_flag
	orr	x0, x19, x0
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_has_help_flag */

.text
.balign 4
_cli_cli_has_flag:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L145
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	ldr	x0, [x0]
	mov	x20, x1
	bl	_donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L143
	bl	_cli_cli_has_flag
	str	x0, [x19]
	b	L146
L143:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L146
L145:
	mov	x0, #0
L146:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cli_has_flag */

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

