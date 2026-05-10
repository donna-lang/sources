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
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
_str89:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
_str96:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str103:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
_str110:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
_str117:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str124:
	.ascii "  Run "
	.byte 0
/* end data */

.data
.balign 8
_str126:
	.ascii "donna help"
	.byte 0
/* end data */

.data
.balign 8
_str128:
	.ascii " to see available commands"
	.byte 0
/* end data */

.data
.balign 8
_str131:
	.ascii "unknown command "
	.byte 0
/* end data */

.data
.balign 8
_str135:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
_str141:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str164:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str170:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
_str176:
	.ascii "check"
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.ascii "clean"
	.byte 0
/* end data */

.data
.balign 8
_str188:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_str194:
	.ascii "format"
	.byte 0
/* end data */

.data
.balign 8
_str200:
	.ascii "fmt"
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.ascii "new"
	.byte 0
/* end data */

.data
.balign 8
_str212:
	.ascii "run"
	.byte 0
/* end data */

.data
.balign 8
_str218:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str224:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str230:
	.ascii "unknown help topic "
	.byte 0
/* end data */

.data
.balign 8
_str242:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str250:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
_str254:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str256:
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
_str277:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str308:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str321:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str350:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str363:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str392:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
_str394:
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
	beq	L27
	adrp	x1, _str46@page
	add	x1, x1, _str46@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L25
	adrp	x1, _str53@page
	add	x1, x1, _str53@pageoff
	mov	x21, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x21
	cmp	x1, #0
	beq	L23
	adrp	x1, _str61@page
	add	x1, x1, _str61@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L22
	adrp	x1, _str68@page
	add	x1, x1, _str68@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L21
	adrp	x1, _str75@page
	add	x1, x1, _str75@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L20
	adrp	x1, _str82@page
	add	x1, x1, _str82@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L19
	adrp	x1, _str89@page
	add	x1, x1, _str89@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L18
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L17
	adrp	x1, _str103@page
	add	x1, x1, _str103@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L16
	adrp	x1, _str110@page
	add	x1, x1, _str110@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L15
	adrp	x1, _str117@page
	add	x1, x1, _str117@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L14
	mov	x19, x0
	adrp	x0, _str124@page
	add	x0, x0, _str124@pageoff
	bl	_utilities_colors_dim
	adrp	x1, _str126@page
	add	x1, x1, _str126@pageoff
	bl	___rt_str_concat
	mov	x20, x0
	adrp	x0, _str128@page
	add	x0, x0, _str128@pageoff
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_utilities_colors_path
	mov	x1, x0
	adrp	x0, _str131@page
	add	x0, x0, _str131@pageoff
	bl	___rt_str_concat
	bl	_cli_cli_fail
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str135@page
	add	x1, x1, _str135@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	b	L44
L14:
	bl	_cli_help_docs_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_docs_run@page
	add	x2, x2, _cli_cmd_docs_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L44
L15:
	bl	_cli_help_format_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_format_run@page
	add	x2, x2, _cli_cmd_format_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L44
L16:
	bl	_cli_help_format_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_format_run@page
	add	x2, x2, _cli_cmd_format_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L44
L17:
	bl	_cli_help_test_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_test_run@page
	add	x2, x2, _cli_cmd_test_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L44
L18:
	bl	_cli_help_run_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_run_run@page
	add	x2, x2, _cli_cmd_run_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L44
L19:
	bl	_cli_help_new_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_new_run@page
	add	x2, x2, _cli_cmd_new_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L44
L20:
	bl	_cli_help_clean_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_clean_run@page
	add	x2, x2, _cli_cmd_clean_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L44
L21:
	bl	_cli_help_check_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_check_run@page
	add	x2, x2, _cli_cmd_check_run@pageoff
	mov	x19, x0
	bl	_cli_cli_route_command
	b	L44
L22:
	bl	_cli_help_build_help
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _cli_cmd_build_run@page
	add	x2, x2, _cli_cmd_build_run@pageoff
	bl	_cli_cli_route_command
	b	L44
L23:
	mov	x0, x19
	mov	x19, x20
	bl	_cli_cli_second_positional
	mov	x1, x0
	mov	x0, x19
	bl	_cli_cli_help_for
	bl	_cli_cli_show
	b	L44
L25:
	mov	x0, x20
	mov	x1, x19
	mov	x22, x0
	bl	_cli_cli_command_or_version
	bl	_cli_cli_show
	b	L44
L27:
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
	beq	L41
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
	beq	L38
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
	beq	L35
	adrp	x1, _str32@page
	add	x1, x1, _str32@pageoff
	bl	_cli_cli_has_flag
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #1
	beq	L33
	bl	_cli_help_main_help
	str	x0, [x22]
	b	L34
L33:
	bl	_cli_cli_version_line
	str	x0, [x22]
L34:
	str	x0, [x21]
	b	L37
L35:
	mov	x0, x22
	bl	_cli_cli_version_line
	str	x0, [x21]
L37:
	str	x0, [x20]
	b	L40
L38:
	mov	x0, x22
	bl	_cli_help_main_help
	str	x0, [x20]
L40:
	str	x0, [x19]
	b	L43
L41:
	mov	x0, x22
	bl	_cli_help_main_help
	str	x0, [x19]
L43:
	bl	_cli_cli_show
L44:
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
	adrp	x0, _str139@page
	add	x0, x0, _str139@pageoff
	bl	_utilities_colors_bold
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str141@page
	add	x1, x1, _str141@pageoff
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
	beq	L49
	bl	_cli_cli_version_line
	b	L50
L49:
	bl	_cli_help_version_help
L50:
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
	beq	L53
	bl	_cli_cli_drop_command
	mov	x2, x19
	blr	x2
	b	L54
L53:
	mov	x0, x20
L54:
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
	adrp	x1, _str164@page
	add	x1, x1, _str164@pageoff
	mov	x20, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L77
	adrp	x1, _str170@page
	add	x1, x1, _str170@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L76
	adrp	x1, _str176@page
	add	x1, x1, _str176@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L75
	adrp	x1, _str182@page
	add	x1, x1, _str182@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L74
	adrp	x1, _str188@page
	add	x1, x1, _str188@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L73
	adrp	x1, _str194@page
	add	x1, x1, _str194@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L72
	adrp	x1, _str200@page
	add	x1, x1, _str200@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L71
	adrp	x1, _str206@page
	add	x1, x1, _str206@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L70
	adrp	x1, _str212@page
	add	x1, x1, _str212@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L69
	adrp	x1, _str218@page
	add	x1, x1, _str218@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L68
	adrp	x1, _str224@page
	add	x1, x1, _str224@pageoff
	mov	x19, x0
	bl	_strcmp
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L67
	bl	_utilities_colors_path
	mov	x1, x0
	adrp	x0, _str230@page
	add	x0, x0, _str230@pageoff
	bl	___rt_str_concat
	bl	_cli_cli_fail
	b	L79
L67:
	bl	_cli_help_version_help
	b	L79
L68:
	bl	_cli_help_test_help
	b	L79
L69:
	bl	_cli_help_run_help
	b	L79
L70:
	bl	_cli_help_new_help
	b	L79
L71:
	bl	_cli_help_format_help
	b	L79
L72:
	bl	_cli_help_format_help
	b	L79
L73:
	bl	_cli_help_docs_help
	b	L79
L74:
	bl	_cli_help_clean_help
	b	L79
L75:
	bl	_cli_help_check_help
	b	L79
L76:
	bl	_cli_help_build_help
	b	L79
L77:
	mov	x0, x19
	bl	_cli_help_main_help
L79:
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
	beq	L84
	mov	x0, #0
	b	L85
L84:
	mov	x0, #1
L85:
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
	mov	x19, x0
	adrp	x0, _str242@page
	add	x0, x0, _str242@pageoff
	bl	_utilities_colors_red
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L88
	mov	x19, x0
	adrp	x0, _str250@page
	add	x0, x0, _str250@pageoff
	bl	_utilities_colors_red
	mov	x1, x0
	mov	x0, x19
	bl	_donna_string_starts_with
	b	L89
L88:
	mov	x0, #1
L89:
	ldr	x19, [x29, 24]
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
	adrp	x0, _str254@page
	add	x0, x0, _str254@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str256@page
	add	x1, x1, _str256@pageoff
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
	beq	L100
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L96
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L97
L96:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str277@page
	add	x1, x1, _str277@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L97:
	cmp	w1, #0
	bne	L99
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
	b	L101
L99:
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L101
L100:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L101:
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
	beq	L110
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L106
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L107
L106:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str321@page
	add	x1, x1, _str321@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L107:
	cmp	w1, #0
	bne	L109
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cli_first_positional
	b	L111
L109:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L111
L110:
	adrp	x0, _str308@page
	add	x0, x0, _str308@pageoff
L111:
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
	beq	L125
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x0, #1
	beq	L118
	mov	x0, #0
	str	x0, [x20]
	mov	x0, #0
	b	L119
L118:
	mov	x0, #8
	add	x0, x19, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x21, x1
	adrp	x1, _str363@page
	add	x1, x1, _str363@pageoff
	bl	_strcmp
	mov	x1, x21
	cmp	x0, #0
	cset	x0, eq
	mov	x2, #1
	and	x0, x0, x2
	str	x0, [x20]
L119:
	cmp	w0, #0
	bne	L121
	mov	x0, #16
	add	x0, x19, x0
	ldr	x0, [x0]
	bl	_cli_cli_second_positional_loop
	b	L126
L121:
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
	beq	L124
	mov	x0, x2
	mov	x1, #1
	bl	_cli_cli_second_positional_loop
	str	x0, [x19]
	b	L126
L124:
	str	x0, [x19]
	b	L126
L125:
	adrp	x0, _str350@page
	add	x0, x0, _str350@pageoff
L126:
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
	adrp	x1, _str392@page
	add	x1, x1, _str392@pageoff
	mov	x19, x0
	bl	_cli_cli_has_flag
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, _str394@page
	add	x1, x1, _str394@pageoff
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
	beq	L134
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
	beq	L132
	bl	_cli_cli_has_flag
	str	x0, [x19]
	b	L135
L132:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L135
L134:
	mov	x0, #0
L135:
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

