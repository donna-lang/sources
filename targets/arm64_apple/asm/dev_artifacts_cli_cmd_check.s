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
_str19:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str28:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str30:
	.ascii ": entry point not found: "
	.byte 0
/* end data */

.data
.balign 8
_str45:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str57:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str59:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str65:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str75:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str77:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str84:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
_str86:
	.ascii "  no errors"
	.byte 0
/* end data */

.data
.balign 8
_str102:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str106:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str108:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str148:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
_str161:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
_str190:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
_str192:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
_str197:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
_str199:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str202:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str208:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str223:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str228:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
_str232:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str234:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
_str241:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
_str246:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str248:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str255:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str258:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str261:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
_str265:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str267:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str310:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str323:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _cli_cmd_check_run
_cli_cmd_check_run:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	bl	_cli_cmd_check_first_positional
	mov	x19, x0
	bl	_builder_scanner_scan
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L5
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, x21
	bl	_builder_scanner_project_name
	mov	x20, x0
	mov	x0, x21
	bl	_builder_scanner_project_src_dir
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x1
	adrp	x1, _str19@page
	add	x1, x1, _str19@pageoff
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x20
	bl	_donna_files_join
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_donna_files_exists
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #0
	beq	L3
	bl	_cli_cmd_check_check_project
	str	x0, [x19]
	b	L6
L3:
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str28@page
	add	x0, x0, _str28@pageoff
	bl	_utilities_colors_red
	adrp	x1, _str30@page
	add	x1, x1, _str30@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
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
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_check_run */

.text
.balign 4
_cli_cmd_check_check_project:
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
	mov	x19, x1
	mov	x23, x0
	bl	_donna_time_now_us
	mov	x20, x0
	mov	x0, x19
	bl	_builder_scanner_project_name
	mov	x24, x0
	mov	x0, x19
	bl	_builder_scanner_project_build_dir
	mov	x21, x0
	mov	x0, x19
	bl	_builder_scanner_project_dev_dir
	mov	x22, x0
	mov	x0, x19
	bl	_builder_scanner_project_dev_artifacts_dir
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x25, x0
	mov	x0, x21
	bl	_donna_files_mkdir
	mov	x0, x25
	bl	_donna_files_mkdir
	mov	x0, x24
	mov	x24, x0
	mov	x0, x22
	bl	_donna_files_mkdir
	mov	x0, x24
	bl	_utilities_logger_checking
	mov	x1, x23
	mov	x0, x19
	mov	x23, x1
	adrp	x1, _str45@page
	add	x1, x1, _str45@pageoff
	mov	x19, x0
	mov	x0, x23
	bl	_donna_files_join
	mov	x1, x23
	bl	_builder_dependencies_resolve_deps
	mov	x2, x22
	mov	x1, x21
	mov	x21, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_cli_cmd_check_compile_deps
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	ldr	x3, [x1]
	cmp	x3, #1
	beq	L11
	mov	x19, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	_builder_scanner_project_src_dir
	mov	x3, x21
	mov	x2, x19
	mov	x4, #0
	adrp	x1, _str65@page
	add	x1, x1, _str65@pageoff
	bl	_builder_pipeline_compile_dir
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L10
	bl	_donna_time_now_us
	sub	x0, x0, x20
	bl	_utilities_logger_check_ok
	adrp	x0, _str84@page
	add	x0, x0, _str84@pageoff
	bl	_utilities_colors_green
	mov	x20, x0
	adrp	x0, _str86@page
	add	x0, x0, _str86@pageoff
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L13
L10:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, _str75@page
	add	x0, x0, _str75@pageoff
	bl	_utilities_colors_red
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str77@page
	add	x1, x1, _str77@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L13
L11:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	adrp	x0, _str57@page
	add	x0, x0, _str57@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str59@page
	add	x1, x1, _str59@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
L13:
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
/* end function cli_cmd_check_check_project */

.text
.balign 4
_cli_cmd_check_compile_deps:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x19, x2
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L19
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x20, [x0]
	mov	x21, x1
	adrp	x1, _str102@page
	add	x1, x1, _str102@pageoff
	mov	x0, x21
	bl	_donna_files_join
	mov	x23, x0
	mov	x0, x22
	bl	_builder_dependencies_dep_name
	mov	x1, x0
	mov	x0, x23
	bl	_donna_files_join
	mov	x1, x21
	mov	x23, x1
	adrp	x1, _str106@page
	add	x1, x1, _str106@pageoff
	mov	x21, x0
	bl	_donna_files_join
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, _str108@page
	add	x1, x1, _str108@pageoff
	mov	x24, x0
	mov	x0, x21
	bl	_donna_files_join
	bl	_donna_files_mkdir
	mov	x0, x24
	bl	_donna_files_mkdir
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	_donna_files_mkdir
	mov	x0, x22
	mov	x22, x0
	bl	_builder_dependencies_dep_src_dir
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	bl	_builder_dependencies_dep_name
	mov	x2, x23
	mov	x1, x0
	mov	x0, x22
	mov	x4, #0
	mov	x3, x19
	bl	_builder_pipeline_compile_dir
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L17
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x1, [x1]
	bl	_donna_list_append
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_cli_cmd_check_compile_deps
	str	x0, [x19]
	b	L21
L17:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L21
L19:
	mov	x0, x19
	bl	_donna_result_Ok
L21:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_check_compile_deps */

.text
.balign 4
_cli_cmd_check_check_file:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x20
	bl	_donna_files_read
	mov	x22, x0
	bl	_donna_time_now_us
	mov	x23, x0
	mov	x0, x19
	bl	_utilities_logger_checking
	mov	x1, x20
	mov	x0, x22
	bl	_compiler_lexer_lexer_lex
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L31
	mov	x19, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parser_parse
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L29
	mov	x21, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	bl	_compiler_analysis_analyser_analyse
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_compiler_typesystem_checker_check_module
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x21, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L26
	bl	_donna_time_now_us
	sub	x0, x0, x23
	bl	_utilities_logger_check_ok
	mov	x1, x22
	mov	x0, x21
	bl	_cli_cmd_check_render_check_ok
	str	x0, [x20]
	b	L28
L26:
	mov	x1, x21
	mov	x21, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, x21
	bl	_cli_cmd_check_render_errors_and_warnings
	str	x0, [x20]
L28:
	str	x0, [x19]
	b	L33
L29:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _str161@page
	add	x2, x2, _str161@pageoff
	bl	_cli_cmd_check_render_phase_errors
	str	x0, [x19]
	b	L33
L31:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _str148@page
	add	x2, x2, _str148@pageoff
	bl	_cli_cmd_check_render_phase_errors
L33:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_check_check_file */

.text
.balign 4
_cli_cmd_check_render_check_ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	_donna_list_is_empty
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #1
	beq	L36
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x19, x0
	bl	_cli_cmd_check_render_warnings
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_list_length
	mov	x20, x0
	adrp	x0, _str197@page
	add	x0, x0, _str197@pageoff
	bl	_utilities_colors_yellow
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str199@page
	add	x0, x0, _str199@pageoff
	bl	___rt_str_concat
	adrp	x1, _str202@page
	add	x1, x1, _str202@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, _str206@page
	add	x1, x1, _str206@pageoff
	bl	_donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str208@page
	add	x1, x1, _str208@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	b	L37
L36:
	adrp	x0, _str190@page
	add	x0, x0, _str190@pageoff
	bl	_utilities_colors_green
	mov	x19, x0
	adrp	x0, _str192@page
	add	x0, x0, _str192@pageoff
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
L37:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_check_render_check_ok */

.text
.balign 4
_cli_cmd_check_render_errors_and_warnings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x1, x2
	mov	x19, x0
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x21, x1
	mov	x0, x19
	bl	_cli_cmd_check_render_errors
	mov	x1, x21
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x21, x0
	mov	x0, x20
	bl	_cli_cmd_check_render_warnings
	mov	x1, x0
	mov	x0, x21
	bl	_donna_list_append
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_list_length
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_list_length
	mov	x21, x0
	mov	x0, x20
	cmp	x21, #0
	cset	x1, eq
	cmp	x1, #1
	beq	L41
	mov	x20, x0
	adrp	x0, _str232@page
	add	x0, x0, _str232@pageoff
	bl	_utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, _str234@page
	add	x0, x0, _str234@pageoff
	bl	___rt_str_concat
	adrp	x1, _str237@page
	add	x1, x1, _str237@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	___rt_str_concat
	adrp	x1, _str241@page
	add	x1, x1, _str241@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	b	L42
L41:
	mov	x20, x0
	adrp	x0, _str223@page
	add	x0, x0, _str223@pageoff
	bl	_utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str225@page
	add	x0, x0, _str225@pageoff
	bl	___rt_str_concat
	adrp	x1, _str228@page
	add	x1, x1, _str228@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
L42:
	mov	x19, x1
	adrp	x1, _str246@page
	add	x1, x1, _str246@pageoff
	bl	_donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str248@page
	add	x1, x1, _str248@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_check_render_errors_and_warnings */

.text
.balign 4
_cli_cmd_check_render_phase_errors:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x19, x0
	bl	_cli_cmd_check_render_errors
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_list_length
	mov	x20, x0
	adrp	x0, _str253@page
	add	x0, x0, _str253@pageoff
	bl	_utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str255@page
	add	x0, x0, _str255@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str258@page
	add	x1, x1, _str258@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	adrp	x1, _str261@page
	add	x1, x1, _str261@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, _str265@page
	add	x1, x1, _str265@pageoff
	bl	_donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str267@page
	add	x1, x1, _str267@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_check_render_phase_errors */

.text
.balign 4
_cli_cmd_check_render_errors:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x19, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L48
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x22, x1
	bl	_errors_reporter_render_error
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x19, [x3]
	bl	_cli_cmd_check_render_errors
	b	L50
L48:
	mov	x0, x19
	bl	_donna_list_reverse
L50:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_check_render_errors */

.text
.balign 4
_cli_cmd_check_render_warnings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x19, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L53
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x22, x1
	bl	_errors_reporter_render_warning
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x20, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x19, [x3]
	bl	_cli_cmd_check_render_warnings
	b	L55
L53:
	mov	x0, x19
	bl	_donna_list_reverse
L55:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_check_render_warnings */

.text
.balign 4
_cli_cmd_check_first_positional:
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
	adrp	x1, _str323@page
	add	x1, x1, _str323@pageoff
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
	bl	_cli_cmd_check_first_positional
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
	adrp	x0, _str310@page
	add	x0, x0, _str310@pageoff
L65:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_check_first_positional */

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

