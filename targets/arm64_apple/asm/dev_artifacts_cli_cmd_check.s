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
_str27:
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
_str42:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str56:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
_str58:
	.ascii "  no errors"
	.byte 0
/* end data */

.data
.balign 8
_str74:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str78:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str80:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str120:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
_str133:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
_str162:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
_str164:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
_str169:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
_str171:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str174:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
_str178:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str180:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str195:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str197:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str200:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
_str204:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str206:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str209:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
_str213:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
_str218:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str220:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str225:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str227:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
_str230:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str233:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
_str237:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str239:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str282:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str295:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _cli_cmd_check_run
_cli_cmd_check_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_cli_cmd_check_first_positional
	mov	x19, x0
	bl	_builder_scanner_scan
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_cli_cmd_check_check_project
	b	L4
L2:
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
L4:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
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
	adrp	x1, _str27@page
	add	x1, x1, _str27@pageoff
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
	beq	L9
	mov	x19, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	_builder_scanner_project_src_dir
	mov	x3, x21
	mov	x2, x19
	mov	x4, #0
	adrp	x1, _str42@page
	add	x1, x1, _str42@pageoff
	bl	_builder_pipeline_compile_dir
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L8
	bl	_donna_time_now_us
	sub	x0, x0, x20
	bl	_utilities_logger_check_ok
	adrp	x0, _str56@page
	add	x0, x0, _str56@pageoff
	bl	_utilities_colors_green
	mov	x20, x0
	adrp	x0, _str58@page
	add	x0, x0, _str58@pageoff
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L11
L8:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x19]
	b	L11
L9:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
L11:
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
	beq	L17
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x20, [x0]
	mov	x21, x1
	adrp	x1, _str74@page
	add	x1, x1, _str74@pageoff
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
	adrp	x1, _str78@page
	add	x1, x1, _str78@pageoff
	mov	x21, x0
	bl	_donna_files_join
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, _str80@page
	add	x1, x1, _str80@pageoff
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
	beq	L15
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
	b	L19
L15:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L19
L17:
	mov	x0, x19
	bl	_donna_result_Ok
L19:
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
	beq	L29
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
	beq	L27
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
	beq	L24
	bl	_donna_time_now_us
	sub	x0, x0, x23
	bl	_utilities_logger_check_ok
	mov	x1, x22
	mov	x0, x21
	bl	_cli_cmd_check_render_check_ok
	str	x0, [x20]
	b	L26
L24:
	mov	x1, x21
	mov	x21, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, x21
	bl	_cli_cmd_check_render_errors_and_warnings
	str	x0, [x20]
L26:
	str	x0, [x19]
	b	L31
L27:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _str133@page
	add	x2, x2, _str133@pageoff
	bl	_cli_cmd_check_render_phase_errors
	str	x0, [x19]
	b	L31
L29:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _str120@page
	add	x2, x2, _str120@pageoff
	bl	_cli_cmd_check_render_phase_errors
L31:
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
	beq	L34
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x19, x0
	bl	_cli_cmd_check_render_warnings
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_list_length
	mov	x20, x0
	adrp	x0, _str169@page
	add	x0, x0, _str169@pageoff
	bl	_utilities_colors_yellow
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str171@page
	add	x0, x0, _str171@pageoff
	bl	___rt_str_concat
	adrp	x1, _str174@page
	add	x1, x1, _str174@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, _str178@page
	add	x1, x1, _str178@pageoff
	bl	_donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str180@page
	add	x1, x1, _str180@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	b	L35
L34:
	adrp	x0, _str162@page
	add	x0, x0, _str162@pageoff
	bl	_utilities_colors_green
	mov	x19, x0
	adrp	x0, _str164@page
	add	x0, x0, _str164@pageoff
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
L35:
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
	beq	L39
	mov	x20, x0
	adrp	x0, _str204@page
	add	x0, x0, _str204@pageoff
	bl	_utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, _str206@page
	add	x0, x0, _str206@pageoff
	bl	___rt_str_concat
	adrp	x1, _str209@page
	add	x1, x1, _str209@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	___rt_str_concat
	adrp	x1, _str213@page
	add	x1, x1, _str213@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	b	L40
L39:
	mov	x20, x0
	adrp	x0, _str195@page
	add	x0, x0, _str195@pageoff
	bl	_utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str197@page
	add	x0, x0, _str197@pageoff
	bl	___rt_str_concat
	adrp	x1, _str200@page
	add	x1, x1, _str200@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
L40:
	mov	x19, x1
	adrp	x1, _str218@page
	add	x1, x1, _str218@pageoff
	bl	_donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str220@page
	add	x1, x1, _str220@pageoff
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
	adrp	x0, _str225@page
	add	x0, x0, _str225@pageoff
	bl	_utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str227@page
	add	x0, x0, _str227@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str230@page
	add	x1, x1, _str230@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	adrp	x1, _str233@page
	add	x1, x1, _str233@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, _str237@page
	add	x1, x1, _str237@pageoff
	bl	_donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str239@page
	add	x1, x1, _str239@pageoff
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
	beq	L46
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
	b	L48
L46:
	mov	x0, x19
	bl	_donna_list_reverse
L48:
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
	beq	L51
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
	b	L53
L51:
	mov	x0, x19
	bl	_donna_list_reverse
L53:
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
	beq	L62
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L58
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L59
L58:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str295@page
	add	x1, x1, _str295@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L59:
	cmp	w1, #0
	bne	L61
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_check_first_positional
	b	L63
L61:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L63
L62:
	adrp	x0, _str282@page
	add	x0, x0, _str282@pageoff
L63:
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

