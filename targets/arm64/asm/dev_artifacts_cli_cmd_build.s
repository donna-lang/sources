.data
.balign 8
str14:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str16:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str44:
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
str69:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str97:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str136:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str144:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str153:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
str155:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
str159:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str170:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
str172:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str174:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str177:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str179:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str181:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str200:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str204:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str206:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str316:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
str326:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str334:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str338:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str343:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str351:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str353:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str363:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str376:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_build_BuildOk
cli_cmd_build_BuildOk:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_BuildOk, @function
.size cli_cmd_build_BuildOk, .-cli_cmd_build_BuildOk
/* end function cli_cmd_build_BuildOk */

.text
.balign 16
.globl cli_cmd_build_BuildFailed
cli_cmd_build_BuildFailed:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_BuildFailed, @function
.size cli_cmd_build_BuildFailed, .-cli_cmd_build_BuildFailed
/* end function cli_cmd_build_BuildFailed */

.text
.balign 16
.globl cli_cmd_build_run
cli_cmd_build_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	cli_cmd_build_first_positional
	mov	x19, x0
	bl	builder_scanner_scan
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L9
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	cli_cmd_build_build_project
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L8
	adrp	x0, str32
	add	x0, x0, #:lo12:str32
	str	x0, [x1]
	adrp	x0, str32
	add	x0, x0, #:lo12:str32
	b	.L11
.L8:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
	b	.L11
.L9:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	adrp	x0, str14
	add	x0, x0, #:lo12:str14
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str16
	add	x1, x1, #:lo12:str16
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
.L11:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_run, @function
.size cli_cmd_build_run, .-cli_cmd_build_run
/* end function cli_cmd_build_run */

.text
.balign 16
.globl cli_cmd_build_build_project
cli_cmd_build_build_project:
	hint	#34
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	str	x19, [x29, 120]
	str	x20, [x29, 112]
	str	x21, [x29, 104]
	str	x22, [x29, 96]
	str	x23, [x29, 88]
	str	x24, [x29, 80]
	str	x25, [x29, 72]
	str	x26, [x29, 64]
	str	x27, [x29, 56]
	mov	x23, x1
	mov	x19, x0
	bl	donna_time_now_us
	mov	x21, x0
	mov	x0, x23
	bl	builder_scanner_project_build_dir
	mov	x20, x0
	mov	x0, x23
	bl	builder_scanner_project_bin_dir
	mov	x24, x0
	mov	x0, x23
	bl	builder_scanner_project_dev_dir
	mov	x22, x0
	mov	x0, x23
	bl	builder_scanner_project_dev_artifacts_dir
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x25, x0
	mov	x0, x20
	bl	donna_files_mkdir
	mov	x0, x25
	mov	x25, x0
	mov	x0, x24
	bl	donna_files_mkdir
	mov	x0, x25
	bl	donna_files_mkdir
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	donna_files_mkdir
	mov	x1, x20
	mov	x0, x19
	mov	x20, x1
	adrp	x1, str44
	add	x1, x1, #:lo12:str44
	mov	x19, x0
	bl	donna_files_join
	mov	x1, x20
	mov	x20, x1
	mov	x1, x19
	bl	builder_dependencies_resolve_deps
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x1
	mov	x1, x22
	bl	builder_pipeline_compile_ffi
	mov	x2, x22
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x19, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	cli_cmd_build_compile_deps
	mov	x2, x19
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L34
	mov	x1, #8
	add	x0, x0, x1
	ldr	x1, [x0]
	ldr	x3, [x1]
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x22, x3
	mov	x3, #16
	add	x3, x1, x3
	ldr	x26, [x3]
	str	x26, [x29, 24]
	mov	x20, x2
	mov	x2, #24
	add	x1, x1, x2
	ldr	x25, [x1]
	mov	x19, x0
	mov	x0, x23
	bl	builder_scanner_project_src_dir
	mov	x4, x25
	mov	x3, x22
	mov	x2, x20
	adrp	x1, str69
	add	x1, x1, #:lo12:str69
	bl	builder_pipeline_compile_dir
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L32
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x20, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	cli_cmd_build_has_public_main
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #0
	beq	.L29
	bl	donna_list_append
	mov	x22, x0
	bl	builder_pipeline_qbe_available
	mov	x1, #16
	mov	x25, x21
	sub	sp, sp, x1
	mov	x21, sp
	cmp	x0, #0
	beq	.L27
	bl	builder_pipeline_c_compiler_available
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #0
	beq	.L25
	bl	builder_pipeline_run_qbe_all_checked
	mov	x1, x0
	mov	x0, x23
	mov	x2, #16
	sub	sp, sp, x2
	mov	x23, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L22
	mov	x2, #8
	add	x1, x1, x2
	ldr	x26, [x1]
	str	x26, [x29, 16]
	bl	builder_scanner_project_name
	mov	x1, x0
	mov	x0, x24
	bl	donna_files_join
	mov	x24, x0
	bl	cli_cmd_build_linker_flags
	str	x0, [x29, 32]
	mov	x0, #24
	bl	malloc
	mov	x27, x0
	mov	x0, #1
	str	x0, [x27]
	mov	x0, #8
	add	x0, x27, x0
	str	x24, [x0]
	mov	x0, #16
	add	x1, x27, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	ldr	x0, [x29, 32]
	ldr	x26, [x29, 24]
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, str136
	add	x2, x2, #:lo12:str136
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x27, [x2]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x26
	ldr	x26, [x29, 16]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x26
	bl	donna_list_append
	bl	builder_pipeline_c_command
	adrp	x1, str144
	add	x1, x1, #:lo12:str144
	bl	__rt_str_concat
	bl	donna_shell_run
	mov	x1, x0
	mov	x0, x24
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x24, sp
	cmp	x1, #0
	beq	.L20
	bl	cli_cmd_build_maybe_codesign
	bl	donna_time_now_us
	sub	x1, x0, x25
	adrp	x0, str159
	add	x0, x0, #:lo12:str159
	bl	utilities_logger_ok
	mov	x0, #1
	bl	cli_cmd_build_BuildOk
	str	x0, [x24]
	b	.L21
.L20:
	adrp	x0, str153
	add	x0, x0, #:lo12:str153
	bl	utilities_colors_red
	adrp	x1, str155
	add	x1, x1, #:lo12:str155
	bl	__rt_str_concat
	bl	cli_cmd_build_BuildFailed
	str	x0, [x24]
.L21:
	str	x0, [x23]
	b	.L24
.L22:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_BuildFailed
	str	x0, [x23]
.L24:
	str	x0, [x22]
	b	.L26
.L25:
	bl	cli_cmd_build_c_compiler_missing_error
	bl	cli_cmd_build_BuildFailed
	str	x0, [x22]
.L26:
	str	x0, [x21]
	b	.L28
.L27:
	bl	cli_cmd_build_qbe_missing_error
	bl	cli_cmd_build_BuildFailed
	str	x0, [x21]
.L28:
	str	x0, [x20]
	b	.L31
.L29:
	mov	x22, x24
	mov	x0, x23
	bl	builder_scanner_project_name
	mov	x1, x0
	mov	x0, x22
	bl	donna_files_join
	bl	donna_files_delete
	bl	donna_time_now_us
	sub	x1, x0, x21
	adrp	x0, str97
	add	x0, x0, #:lo12:str97
	bl	utilities_logger_ok
	mov	x0, #0
	bl	cli_cmd_build_BuildOk
	str	x0, [x20]
.L31:
	str	x0, [x19]
	b	.L35
.L32:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_BuildFailed
	str	x0, [x19]
	b	.L35
.L34:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_BuildFailed
.L35:
	ldr	x19, [x29, 120]
	ldr	x20, [x29, 112]
	ldr	x21, [x29, 104]
	ldr	x22, [x29, 96]
	ldr	x23, [x29, 88]
	ldr	x24, [x29, 80]
	ldr	x25, [x29, 72]
	ldr	x26, [x29, 64]
	ldr	x27, [x29, 56]
	mov sp, x29
	ldp	x29, x30, [sp], 128
	ret
.type cli_cmd_build_build_project, @function
.size cli_cmd_build_build_project, .-cli_cmd_build_build_project
/* end function cli_cmd_build_build_project */

.text
.balign 16
cli_cmd_build_qbe_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, str170
	add	x0, x0, #:lo12:str170
	bl	utilities_colors_dim
	mov	x19, x0
	adrp	x0, str172
	add	x0, x0, #:lo12:str172
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str174
	add	x1, x1, #:lo12:str174
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_qbe_missing_error, @function
.size cli_cmd_build_qbe_missing_error, .-cli_cmd_build_qbe_missing_error
/* end function cli_cmd_build_qbe_missing_error */

.text
.balign 16
cli_cmd_build_c_compiler_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, str177
	add	x0, x0, #:lo12:str177
	bl	utilities_colors_dim
	mov	x19, x0
	adrp	x0, str179
	add	x0, x0, #:lo12:str179
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str181
	add	x1, x1, #:lo12:str181
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_c_compiler_missing_error, @function
.size cli_cmd_build_c_compiler_missing_error, .-cli_cmd_build_c_compiler_missing_error
/* end function cli_cmd_build_c_compiler_missing_error */

.text
.balign 16
cli_cmd_build_compile_deps:
	hint	#34
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	str	x19, [x29, 104]
	str	x20, [x29, 96]
	str	x21, [x29, 88]
	str	x22, [x29, 80]
	str	x23, [x29, 72]
	str	x24, [x29, 64]
	str	x25, [x29, 56]
	str	x26, [x29, 48]
	str	x27, [x29, 40]
	mov	x26, x4
	mov	x25, x3
	mov	x24, x2
	mov	x21, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L52
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x1, str200
	add	x1, x1, #:lo12:str200
	mov	x0, x21
	bl	donna_files_join
	mov	x22, x0
	mov	x0, x19
	bl	builder_dependencies_dep_name
	mov	x1, x0
	mov	x0, x22
	bl	donna_files_join
	adrp	x1, str204
	add	x1, x1, #:lo12:str204
	mov	x22, x0
	bl	donna_files_join
	mov	x1, x0
	mov	x0, x22
	mov	x22, x1
	adrp	x1, str206
	add	x1, x1, #:lo12:str206
	mov	x23, x0
	mov	x0, x21
	bl	donna_files_join
	bl	donna_files_mkdir
	mov	x0, x23
	bl	donna_files_mkdir
	mov	x0, x22
	bl	donna_files_mkdir
	mov	x0, x19
	bl	builder_dependencies_dep_src_dir
	mov	x23, x0
	mov	x0, x19
	bl	builder_dependencies_dep_name
	mov	x4, x26
	mov	x3, x25
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	mov	x25, x4
	mov	x4, #0
	mov	x24, x3
	mov	x3, x2
	mov	x23, x2
	mov	x2, x22
	bl	builder_pipeline_compile_dir
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x0
	mov	x0, x19
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	ldr	x5, [x1]
	cmp	x5, #1
	beq	.L50
	mov	x24, x4
	mov	x4, #8
	add	x1, x1, x4
	ldr	x1, [x1]
	ldr	x23, [x1]
	mov	x26, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x25, [x3]
	str	x25, [x29, 24]
	mov	x25, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x27, [x1]
	str	x27, [x29, 16]
	bl	builder_dependencies_dep_path
	mov	x1, x22
	ldr	x22, [x29, 24]
	bl	builder_pipeline_compile_ffi
	mov	x2, x25
	mov	x1, x23
	mov	x23, x0
	mov	x0, x20
	ldr	x25, [x29, 16]
	mov	x20, x0
	mov	x0, x2
	bl	donna_list_append
	mov	x3, x26
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x3
	bl	donna_list_append
	mov	x4, x24
	mov	x1, x23
	mov	x23, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x4
	bl	donna_list_append
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x4, x0
	mov	x0, x20
	bl	cli_cmd_build_compile_deps
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L48
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x24, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x22, [x1]
	mov	x1, #24
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x1, sp
	cmp	x25, #1
	beq	.L45
	str	x21, [x1]
	b	.L47
.L45:
	mov	x0, #1
	str	x0, [x1]
	mov	x21, #1
.L47:
	mov	x0, #32
	bl	malloc
	str	x24, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #24
	add	x1, x0, x1
	str	x21, [x1]
	bl	donna_result_Ok
	str	x0, [x20]
	b	.L49
.L48:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x20]
.L49:
	str	x0, [x19]
	b	.L54
.L50:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L54
.L52:
	mov	x21, x26
	mov	x20, x25
	mov	x19, x24
	mov	x0, #32
	bl	malloc
	mov	x4, x21
	mov	x3, x20
	mov	x2, x19
	str	x2, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x4, [x1]
	mov	x1, #24
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
	bl	donna_result_Ok
.L54:
	ldr	x19, [x29, 104]
	ldr	x20, [x29, 96]
	ldr	x21, [x29, 88]
	ldr	x22, [x29, 80]
	ldr	x23, [x29, 72]
	ldr	x24, [x29, 64]
	ldr	x25, [x29, 56]
	ldr	x26, [x29, 48]
	ldr	x27, [x29, 40]
	mov sp, x29
	ldp	x29, x30, [sp], 112
	ret
.type cli_cmd_build_compile_deps, @function
.size cli_cmd_build_compile_deps, .-cli_cmd_build_compile_deps
/* end function cli_cmd_build_compile_deps */

.text
.balign 16
cli_cmd_build_has_public_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L60
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_iface_has_main
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L58
	bl	cli_cmd_build_has_public_main
	str	x0, [x19]
	b	.L61
.L58:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L61
.L60:
	mov	x0, #0
.L61:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_has_public_main, @function
.size cli_cmd_build_has_public_main, .-cli_cmd_build_has_public_main
/* end function cli_cmd_build_has_public_main */

.text
.balign 16
cli_cmd_build_iface_has_main:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_bindings_have_main
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_iface_has_main, @function
.size cli_cmd_build_iface_has_main, .-cli_cmd_build_iface_has_main
/* end function cli_cmd_build_iface_has_main */

.text
.balign 16
cli_cmd_build_bindings_have_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L69
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x0, [x0]
	adrp	x1, str316
	add	x1, x1, #:lo12:str316
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L67
	bl	cli_cmd_build_bindings_have_main
	str	x0, [x19]
	b	.L70
.L67:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	.L70
.L69:
	mov	x0, #0
.L70:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_bindings_have_main, @function
.size cli_cmd_build_bindings_have_main, .-cli_cmd_build_bindings_have_main
/* end function cli_cmd_build_bindings_have_main */

.text
.balign 16
cli_cmd_build_linker_flags:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str326
	add	x0, x0, #:lo12:str326
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #1
	beq	.L73
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str338
	add	x1, x1, #:lo12:str338
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	b	.L74
.L73:
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str334
	add	x1, x1, #:lo12:str334
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
.L74:
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_build_linker_flags, @function
.size cli_cmd_build_linker_flags, .-cli_cmd_build_linker_flags
/* end function cli_cmd_build_linker_flags */

.text
.balign 16
cli_cmd_build_maybe_codesign:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str343
	add	x0, x0, #:lo12:str343
	bl	donna_shell_run
	mov	x1, x19
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #0
	beq	.L77
	adrp	x0, str351
	add	x0, x0, #:lo12:str351
	bl	__rt_str_concat
	adrp	x1, str353
	add	x1, x1, #:lo12:str353
	bl	__rt_str_concat
	bl	donna_shell_run
	b	.L78
.L77:
	mov	x0, #0
.L78:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_maybe_codesign, @function
.size cli_cmd_build_maybe_codesign, .-cli_cmd_build_maybe_codesign
/* end function cli_cmd_build_maybe_codesign */

.text
.balign 16
cli_cmd_build_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L87
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L83
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L84
.L83:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str376
	add	x1, x1, #:lo12:str376
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L84:
	cmp	w1, #0
	bne	.L86
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_build_first_positional
	b	.L88
.L86:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L88
.L87:
	adrp	x0, str363
	add	x0, x0, #:lo12:str363
.L88:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_build_first_positional, @function
.size cli_cmd_build_first_positional, .-cli_cmd_build_first_positional
/* end function cli_cmd_build_first_positional */

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
