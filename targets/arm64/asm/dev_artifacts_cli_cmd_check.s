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
str52:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str66:
	.ascii "successful without errors"
	.byte 0
/* end data */

.data
.balign 8
str83:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str87:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str89:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str130:
	.ascii "lex"
	.byte 0
/* end data */

.data
.balign 8
str143:
	.ascii "parse"
	.byte 0
/* end data */

.data
.balign 8
str172:
	.ascii "successful without errors or warnings"
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii "warning"
	.byte 0
/* end data */

.data
.balign 8
str178:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str181:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str185:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str187:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str202:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str204:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str207:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str211:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str213:
	.ascii ": found "
	.byte 0
/* end data */

.data
.balign 8
str216:
	.ascii " error(s), "
	.byte 0
/* end data */

.data
.balign 8
str220:
	.ascii " warning(s)"
	.byte 0
/* end data */

.data
.balign 8
str225:
	.byte 10
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str227:
	.byte 10
	.byte 10
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
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str240:
	.ascii " error(s)"
	.byte 0
/* end data */

.data
.balign 8
str244:
	.byte 10
	.byte 10
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
str289:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str302:
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
	mov	x21, x0
	mov	x0, x19
	bl	builder_scanner_project_name
	mov	x24, x0
	mov	x0, x19
	bl	builder_scanner_project_build_dir
	mov	x20, x0
	mov	x0, x19
	bl	builder_scanner_project_dev_dir
	mov	x22, x0
	mov	x0, x19
	bl	builder_scanner_project_dev_artifacts_dir
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x25, x0
	mov	x0, x20
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
	bl	builder_dependencies_resolve_deps_checked
	mov	x2, x22
	mov	x1, x20
	ldr	x3, [x0]
	cmp	x3, #1
	beq	.L13
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	mov	x20, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	cli_cmd_check_compile_deps
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L11
	mov	x20, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	builder_scanner_project_src_dir
	mov	x3, x22
	mov	x2, x20
	mov	x4, #0
	adrp	x1, str52
	add	x1, x1, #:lo12:str52
	bl	builder_pipeline_compile_dir
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L9
	bl	donna_time_now_us
	sub	x0, x0, x21
	bl	utilities_logger_check_ok
	adrp	x0, str66
	add	x0, x0, #:lo12:str66
	bl	utilities_logger_check_success
	str	x0, [x20]
	b	.L10
.L9:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x20]
.L10:
	str	x0, [x19]
	b	.L14
.L11:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x19]
	b	.L14
.L13:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L14:
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
	beq	.L20
	mov	x2, #8
	add	x2, x0, x2
	ldr	x22, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x19, [x0]
	mov	x21, x1
	adrp	x1, str83
	add	x1, x1, #:lo12:str83
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
	adrp	x1, str87
	add	x1, x1, #:lo12:str87
	mov	x21, x0
	bl	donna_files_join
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, str89
	add	x1, x1, #:lo12:str89
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
	beq	.L18
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
	b	.L22
.L18:
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
	b	.L22
.L20:
	mov	x19, x20
	mov	x0, #16
	bl	malloc
	mov	x2, x19
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x2, [x1]
.L22:
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
	beq	.L32
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
	beq	.L30
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
	beq	.L27
	bl	donna_time_now_us
	sub	x0, x0, x23
	bl	utilities_logger_check_ok
	mov	x1, x22
	mov	x0, x21
	bl	cli_cmd_check_render_check_ok
	str	x0, [x20]
	b	.L29
.L27:
	mov	x1, x21
	mov	x21, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, x21
	bl	cli_cmd_check_render_errors_and_warnings
	str	x0, [x20]
.L29:
	str	x0, [x19]
	b	.L34
.L30:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, str143
	add	x2, x2, #:lo12:str143
	bl	cli_cmd_check_render_phase_errors
	str	x0, [x19]
	b	.L34
.L32:
	mov	x1, x22
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, str130
	add	x2, x2, #:lo12:str130
	bl	cli_cmd_check_render_phase_errors
.L34:
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
	beq	.L37
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x19, x0
	bl	cli_cmd_check_render_warnings
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_list_length
	mov	x20, x0
	adrp	x0, str176
	add	x0, x0, #:lo12:str176
	bl	utilities_colors_yellow
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str178
	add	x0, x0, #:lo12:str178
	bl	__rt_str_concat
	adrp	x1, str181
	add	x1, x1, #:lo12:str181
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, str185
	add	x1, x1, #:lo12:str185
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str187
	add	x1, x1, #:lo12:str187
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	b	.L38
.L37:
	adrp	x0, str172
	add	x0, x0, #:lo12:str172
	bl	utilities_logger_check_success
.L38:
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
	beq	.L42
	mov	x20, x0
	adrp	x0, str211
	add	x0, x0, #:lo12:str211
	bl	utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	adrp	x0, str213
	add	x0, x0, #:lo12:str213
	bl	__rt_str_concat
	adrp	x1, str216
	add	x1, x1, #:lo12:str216
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x21
	bl	__rt_str_concat
	adrp	x1, str220
	add	x1, x1, #:lo12:str220
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	b	.L43
.L42:
	mov	x20, x0
	adrp	x0, str202
	add	x0, x0, #:lo12:str202
	bl	utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str204
	add	x0, x0, #:lo12:str204
	bl	__rt_str_concat
	adrp	x1, str207
	add	x1, x1, #:lo12:str207
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
.L43:
	mov	x19, x1
	adrp	x1, str225
	add	x1, x1, #:lo12:str225
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str227
	add	x1, x1, #:lo12:str227
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
	adrp	x0, str232
	add	x0, x0, #:lo12:str232
	bl	utilities_colors_error_header
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_int_to_string
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str234
	add	x0, x0, #:lo12:str234
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str237
	add	x1, x1, #:lo12:str237
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	adrp	x1, str240
	add	x1, x1, #:lo12:str240
	bl	__rt_str_concat
	bl	utilities_colors_bold
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	mov	x19, x1
	adrp	x1, str244
	add	x1, x1, #:lo12:str244
	bl	donna_string_join
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str246
	add	x1, x1, #:lo12:str246
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
	beq	.L49
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
	b	.L51
.L49:
	mov	x0, x19
	bl	donna_list_reverse
.L51:
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
	beq	.L54
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
	b	.L56
.L54:
	mov	x0, x19
	bl	donna_list_reverse
.L56:
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
	beq	.L65
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L61
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L62
.L61:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str302
	add	x1, x1, #:lo12:str302
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L62:
	cmp	w1, #0
	bne	.L64
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_check_first_positional
	b	.L66
.L64:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L66
.L65:
	adrp	x0, str289
	add	x0, x0, #:lo12:str289
.L66:
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
