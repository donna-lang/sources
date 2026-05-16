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
str27:
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
str42:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str58:
	.ascii "  no errors"
	.byte 0
/* end data */

.data
.balign 8
str75:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str79:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str81:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str122:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
str135:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
str164:
	.ascii "check ok"
	.byte 0
/* end data */

.data
.balign 8
str166:
	.ascii "  no errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str173:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str180:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str182:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str197:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str208:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str211:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
str215:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str220:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str222:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str229:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str232:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str235:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str239:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str241:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str284:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str297:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_check_run
cli_cmd_check_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	cli_cmd_check_first_positional
	mov	x19, x0
	bl	builder_scanner_scan
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	cli_cmd_check_check_project
	b	.L4
.L2:
	mov	x0, x1
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
.L4:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
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
	adrp	x1, str27
	add	x1, x1, #:lo12:str27
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
	beq	.L9
	mov	x19, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	bl	builder_scanner_project_src_dir
	mov	x3, x21
	mov	x2, x19
	mov	x4, #0
	adrp	x1, str42
	add	x1, x1, #:lo12:str42
	bl	builder_pipeline_compile_dir
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L8
	bl	donna_time_now_us
	sub	x0, x0, x20
	bl	utilities_logger_check_ok
	adrp	x0, str56
	add	x0, x0, #:lo12:str56
	bl	utilities_colors_green
	mov	x20, x0
	adrp	x0, str58
	add	x0, x0, #:lo12:str58
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L11
.L8:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x19]
	b	.L11
.L9:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L11:
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
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L17
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	mov	x21, x1
	adrp	x1, str75
	add	x1, x1, #:lo12:str75
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
	adrp	x1, str79
	add	x1, x1, #:lo12:str79
	mov	x21, x0
	bl	donna_files_join
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, str81
	add	x1, x1, #:lo12:str81
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
	mov	x3, x20
	bl	builder_pipeline_compile_dir
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L15
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	ldr	x1, [x1]
	mov	x20, x0
	mov	x0, x2
	bl	donna_list_append
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	cli_cmd_check_compile_deps
	str	x0, [x19]
	b	.L19
.L15:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L19
.L17:
	mov	x19, x20
	mov	x0, #16
	bl	malloc
	mov	x2, x19
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x2, [x1]
.L19:
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
	beq	.L29
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
	beq	.L27
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
	beq	.L24
	bl	donna_time_now_us
	sub	x0, x0, x23
	bl	utilities_logger_check_ok
	mov	x1, x22
	mov	x0, x21
	bl	cli_cmd_check_render_check_ok
	str	x0, [x20]
	b	.L26
.L24:
	mov	x1, x21
	mov	x21, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, x21
	bl	cli_cmd_check_render_errors_and_warnings
	str	x0, [x20]
.L26:
	str	x0, [x19]
	b	.L31
.L27:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, str135
	add	x2, x2, #:lo12:str135
	bl	cli_cmd_check_render_phase_errors
	str	x0, [x19]
	b	.L31
.L29:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, str122
	add	x2, x2, #:lo12:str122
	bl	cli_cmd_check_render_phase_errors
.L31:
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
	beq	.L34
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x19, x0
	bl	cli_cmd_check_render_warnings
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_list_length
	mov	x20, x0
	adrp	x0, str171
	add	x0, x0, #:lo12:str171
	bl	utilities_colors_yellow
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str173
	add	x0, x0, #:lo12:str173
	bl	__rt_str_concat
	adrp	x1, str176
	add	x1, x1, #:lo12:str176
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, str180
	add	x1, x1, #:lo12:str180
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str182
	add	x1, x1, #:lo12:str182
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	b	.L35
.L34:
	adrp	x0, str164
	add	x0, x0, #:lo12:str164
	bl	utilities_colors_green
	mov	x19, x0
	adrp	x0, str166
	add	x0, x0, #:lo12:str166
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
.L35:
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
	beq	.L39
	mov	x20, x0
	adrp	x0, str206
	add	x0, x0, #:lo12:str206
	bl	utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, str208
	add	x0, x0, #:lo12:str208
	bl	__rt_str_concat
	adrp	x1, str211
	add	x1, x1, #:lo12:str211
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	adrp	x1, str215
	add	x1, x1, #:lo12:str215
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	b	.L40
.L39:
	mov	x20, x0
	adrp	x0, str197
	add	x0, x0, #:lo12:str197
	bl	utilities_colors_error_header
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
.L40:
	mov	x19, x1
	adrp	x1, str220
	add	x1, x1, #:lo12:str220
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str222
	add	x1, x1, #:lo12:str222
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
	adrp	x0, str227
	add	x0, x0, #:lo12:str227
	bl	utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str229
	add	x0, x0, #:lo12:str229
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str232
	add	x1, x1, #:lo12:str232
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	adrp	x1, str235
	add	x1, x1, #:lo12:str235
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, str239
	add	x1, x1, #:lo12:str239
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str241
	add	x1, x1, #:lo12:str241
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
	beq	.L46
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
	b	.L48
.L46:
	mov	x0, x19
	bl	donna_list_reverse
.L48:
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
	beq	.L51
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
	b	.L53
.L51:
	mov	x0, x19
	bl	donna_list_reverse
.L53:
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
	beq	.L62
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L58
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L59
.L58:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str297
	add	x1, x1, #:lo12:str297
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L59:
	cmp	w1, #0
	bne	.L61
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_check_first_positional
	b	.L63
.L61:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L63
.L62:
	adrp	x0, str284
	add	x0, x0, #:lo12:str284
.L63:
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
