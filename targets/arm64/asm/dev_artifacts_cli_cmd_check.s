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
str19:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str28:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str30:
	.ascii ": entry point not found: "
	.byte 0
/* end data */

.data
.balign 8
str45:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str57:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str59:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str65:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str77:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str84:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str86:
	.ascii "  no errors"
	.byte 0
/* end data */

.data
.balign 8
str102:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str106:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str108:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str148:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
str161:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
str190:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str192:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
str197:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str208:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str228:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str234:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str237:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
str241:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str246:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str248:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str255:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str258:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str261:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str265:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str267:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str310:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str323:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_check_run
cli_cmd_check_run:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	bl	cli_cmd_check_first_positional
	mov	x19, x0
	bl	builder_scanner_scan
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L5
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, x21
	bl	builder_scanner_project_name
	mov	x20, x0
	mov	x0, x21
	bl	builder_scanner_project_src_dir
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x1
	adrp	x1, str19
	add	x1, x1, #:lo12:str19
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x20
	bl	donna_files_join
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	donna_files_exists
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #0
	beq	.L3
	bl	cli_cmd_check_check_project
	str	x0, [x19]
	b	.L6
.L3:
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str28
	add	x0, x0, #:lo12:str28
	bl	utilities_colors_red
	adrp	x1, str30
	add	x1, x1, #:lo12:str30
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L6
.L5:
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
.L6:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_check_run, @function
.size cli_cmd_check_run, .-cli_cmd_check_run
/* end function cli_cmd_check_run */

.text
.balign 16
cli_cmd_check_check_project:
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
	bl	donna_time_now_us
	mov	x20, x0
	mov	x0, x19
	bl	builder_scanner_project_name
	mov	x24, x0
	mov	x0, x19
	bl	builder_scanner_project_build_dir
	mov	x21, x0
	mov	x0, x19
	bl	builder_scanner_project_dev_dir
	mov	x22, x0
	mov	x0, x19
	bl	builder_scanner_project_dev_artifacts_dir
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x25, x0
	mov	x0, x21
	bl	donna_files_mkdir
	mov	x0, x25
	bl	donna_files_mkdir
	mov	x0, x24
	mov	x24, x0
	mov	x0, x22
	bl	donna_files_mkdir
	mov	x0, x24
	bl	utilities_logger_checking
	mov	x1, x23
	mov	x0, x19
	mov	x23, x1
	adrp	x1, str45
	add	x1, x1, #:lo12:str45
	mov	x19, x0
	mov	x0, x23
	bl	donna_files_join
	mov	x1, x23
	bl	builder_dependencies_resolve_deps
	mov	x2, x22
	mov	x1, x21
	mov	x21, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	cli_cmd_check_compile_deps
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L11
	mov	x19, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	builder_scanner_project_src_dir
	mov	x3, x21
	mov	x2, x19
	mov	x4, #0
	adrp	x1, str65
	add	x1, x1, #:lo12:str65
	bl	builder_pipeline_compile_dir
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L10
	bl	donna_time_now_us
	sub	x0, x0, x20
	bl	utilities_logger_check_ok
	adrp	x0, str84
	add	x0, x0, #:lo12:str84
	bl	utilities_colors_green
	mov	x20, x0
	adrp	x0, str86
	add	x0, x0, #:lo12:str86
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L13
.L10:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, str75
	add	x0, x0, #:lo12:str75
	bl	utilities_colors_red
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str77
	add	x1, x1, #:lo12:str77
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L13
.L11:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	adrp	x0, str57
	add	x0, x0, #:lo12:str57
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str59
	add	x1, x1, #:lo12:str59
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
.L13:
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
.type cli_cmd_check_check_project, @function
.size cli_cmd_check_check_project, .-cli_cmd_check_check_project
/* end function cli_cmd_check_check_project */

.text
.balign 16
cli_cmd_check_compile_deps:
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
	beq	.L19
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x20, [x0]
	mov	x21, x1
	adrp	x1, str102
	add	x1, x1, #:lo12:str102
	mov	x0, x21
	bl	donna_files_join
	mov	x23, x0
	mov	x0, x22
	bl	builder_dependencies_dep_name
	mov	x1, x0
	mov	x0, x23
	bl	donna_files_join
	mov	x1, x21
	mov	x23, x1
	adrp	x1, str106
	add	x1, x1, #:lo12:str106
	mov	x21, x0
	bl	donna_files_join
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, str108
	add	x1, x1, #:lo12:str108
	mov	x24, x0
	mov	x0, x21
	bl	donna_files_join
	bl	donna_files_mkdir
	mov	x0, x24
	bl	donna_files_mkdir
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	donna_files_mkdir
	mov	x0, x22
	mov	x22, x0
	bl	builder_dependencies_dep_src_dir
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	bl	builder_dependencies_dep_name
	mov	x2, x23
	mov	x1, x0
	mov	x0, x22
	mov	x4, #0
	mov	x3, x19
	bl	builder_pipeline_compile_dir
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L17
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x1, [x1]
	bl	donna_list_append
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	cli_cmd_check_compile_deps
	str	x0, [x19]
	b	.L21
.L17:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L21
.L19:
	mov	x0, x19
	bl	donna_result_Ok
.L21:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_check_compile_deps, @function
.size cli_cmd_check_compile_deps, .-cli_cmd_check_compile_deps
/* end function cli_cmd_check_compile_deps */

.text
.balign 16
cli_cmd_check_check_file:
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
	bl	donna_files_read
	mov	x22, x0
	bl	donna_time_now_us
	mov	x23, x0
	mov	x0, x19
	bl	utilities_logger_checking
	mov	x1, x20
	mov	x0, x22
	bl	compiler_lexer_lexer_lex
	mov	x1, x19
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L31
	mov	x19, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parser_parse
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L29
	mov	x21, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	bl	compiler_analysis_analyser_analyse
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	compiler_typesystem_checker_check_module
	mov	x1, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	mov	x21, x1
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L26
	bl	donna_time_now_us
	sub	x0, x0, x23
	bl	utilities_logger_check_ok
	mov	x1, x22
	mov	x0, x21
	bl	cli_cmd_check_render_check_ok
	str	x0, [x20]
	b	.L28
.L26:
	mov	x1, x21
	mov	x21, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, x21
	bl	cli_cmd_check_render_errors_and_warnings
	str	x0, [x20]
.L28:
	str	x0, [x19]
	b	.L33
.L29:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, str161
	add	x2, x2, #:lo12:str161
	bl	cli_cmd_check_render_phase_errors
	str	x0, [x19]
	b	.L33
.L31:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, str148
	add	x2, x2, #:lo12:str148
	bl	cli_cmd_check_render_phase_errors
.L33:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_check_check_file, @function
.size cli_cmd_check_check_file, .-cli_cmd_check_check_file
/* end function cli_cmd_check_check_file */

.text
.balign 16
cli_cmd_check_render_check_ok:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	donna_list_is_empty
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #1
	beq	.L36
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x19, x0
	bl	cli_cmd_check_render_warnings
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_list_length
	mov	x20, x0
	adrp	x0, str197
	add	x0, x0, #:lo12:str197
	bl	utilities_colors_yellow
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str199
	add	x0, x0, #:lo12:str199
	bl	__rt_str_concat
	adrp	x1, str202
	add	x1, x1, #:lo12:str202
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, str206
	add	x1, x1, #:lo12:str206
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str208
	add	x1, x1, #:lo12:str208
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	b	.L37
.L36:
	adrp	x0, str190
	add	x0, x0, #:lo12:str190
	bl	utilities_colors_green
	mov	x19, x0
	adrp	x0, str192
	add	x0, x0, #:lo12:str192
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
.L37:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_check_render_check_ok, @function
.size cli_cmd_check_render_check_ok, .-cli_cmd_check_render_check_ok
/* end function cli_cmd_check_render_check_ok */

.text
.balign 16
cli_cmd_check_render_errors_and_warnings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	mov	x1, x2
	mov	x19, x0
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x21, x1
	mov	x0, x19
	bl	cli_cmd_check_render_errors
	mov	x1, x21
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x21, x0
	mov	x0, x20
	bl	cli_cmd_check_render_warnings
	mov	x1, x0
	mov	x0, x21
	bl	donna_list_append
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_list_length
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_list_length
	mov	x21, x0
	mov	x0, x20
	cmp	x21, #0
	cset	x1, eq
	cmp	x1, #1
	beq	.L41
	mov	x20, x0
	adrp	x0, str232
	add	x0, x0, #:lo12:str232
	bl	utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, str234
	add	x0, x0, #:lo12:str234
	bl	__rt_str_concat
	adrp	x1, str237
	add	x1, x1, #:lo12:str237
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	adrp	x1, str241
	add	x1, x1, #:lo12:str241
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	b	.L42
.L41:
	mov	x20, x0
	adrp	x0, str223
	add	x0, x0, #:lo12:str223
	bl	utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str225
	add	x0, x0, #:lo12:str225
	bl	__rt_str_concat
	adrp	x1, str228
	add	x1, x1, #:lo12:str228
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
.L42:
	mov	x19, x1
	adrp	x1, str246
	add	x1, x1, #:lo12:str246
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str248
	add	x1, x1, #:lo12:str248
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_check_render_errors_and_warnings, @function
.size cli_cmd_check_render_errors_and_warnings, .-cli_cmd_check_render_errors_and_warnings
/* end function cli_cmd_check_render_errors_and_warnings */

.text
.balign 16
cli_cmd_check_render_phase_errors:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x19, x0
	bl	cli_cmd_check_render_errors
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_list_length
	mov	x20, x0
	adrp	x0, str253
	add	x0, x0, #:lo12:str253
	bl	utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str255
	add	x0, x0, #:lo12:str255
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str258
	add	x1, x1, #:lo12:str258
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	adrp	x1, str261
	add	x1, x1, #:lo12:str261
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, str265
	add	x1, x1, #:lo12:str265
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str267
	add	x1, x1, #:lo12:str267
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_check_render_phase_errors, @function
.size cli_cmd_check_render_phase_errors, .-cli_cmd_check_render_phase_errors
/* end function cli_cmd_check_render_phase_errors */

.text
.balign 16
cli_cmd_check_render_errors:
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
	beq	.L48
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x22, x1
	bl	errors_reporter_render_error
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #24
	bl	malloc
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
	bl	cli_cmd_check_render_errors
	b	.L50
.L48:
	mov	x0, x19
	bl	donna_list_reverse
.L50:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_check_render_errors, @function
.size cli_cmd_check_render_errors, .-cli_cmd_check_render_errors
/* end function cli_cmd_check_render_errors */

.text
.balign 16
cli_cmd_check_render_warnings:
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
	beq	.L53
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x22, x1
	bl	errors_reporter_render_warning
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, #24
	bl	malloc
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
	bl	cli_cmd_check_render_warnings
	b	.L55
.L53:
	mov	x0, x19
	bl	donna_list_reverse
.L55:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_check_render_warnings, @function
.size cli_cmd_check_render_warnings, .-cli_cmd_check_render_warnings
/* end function cli_cmd_check_render_warnings */

.text
.balign 16
cli_cmd_check_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L64
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L60
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L61
.L60:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str323
	add	x1, x1, #:lo12:str323
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L61:
	cmp	w1, #0
	bne	.L63
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_check_first_positional
	b	.L65
.L63:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L65
.L64:
	adrp	x0, str310
	add	x0, x0, #:lo12:str310
.L65:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_check_first_positional, @function
.size cli_cmd_check_first_positional, .-cli_cmd_check_first_positional
/* end function cli_cmd_check_first_positional */

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
