.data
.balign 8
_str14:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str16:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str32:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str44:
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
_str70:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str99:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str142:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str150:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str159:
	.ascii "build failed"
	.byte 0
/* end data */

.data
.balign 8
_str161:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
_str166:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str178:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
_str180:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str182:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str185:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
_str187:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str209:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str213:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str215:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str328:
	.ascii "main"
	.byte 0
/* end data */

.data
.balign 8
_str338:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str346:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
_str350:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
_str355:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str363:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
_str365:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str375:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str388:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _cli_cmd_build_BuildOk
_cli_cmd_build_BuildOk:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_BuildOk */

.text
.balign 4
.globl _cli_cmd_build_BuildFailed
_cli_cmd_build_BuildFailed:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_BuildFailed */

.text
.balign 4
.globl _cli_cmd_build_run
_cli_cmd_build_run:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_cli_cmd_build_first_positional
	mov	x19, x0
	bl	_builder_scanner_scan
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L9
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_cli_cmd_build_build_project
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L8
	adrp	x0, _str32@page
	add	x0, x0, _str32@pageoff
	str	x0, [x1]
	adrp	x0, _str32@page
	add	x0, x0, _str32@pageoff
	b	L11
L8:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	str	x0, [x1]
	b	L11
L9:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	adrp	x0, _str14@page
	add	x0, x0, _str14@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str16@page
	add	x1, x1, _str16@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
L11:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_run */

.text
.balign 4
.globl _cli_cmd_build_build_project
_cli_cmd_build_build_project:
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
	bl	_donna_time_now_us
	mov	x21, x0
	mov	x0, x23
	bl	_builder_scanner_project_build_dir
	mov	x20, x0
	mov	x0, x23
	bl	_builder_scanner_project_bin_dir
	mov	x24, x0
	mov	x0, x23
	bl	_builder_scanner_project_dev_dir
	mov	x22, x0
	mov	x0, x23
	bl	_builder_scanner_project_dev_artifacts_dir
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x25, x0
	mov	x0, x20
	bl	_donna_files_mkdir
	mov	x0, x25
	mov	x25, x0
	mov	x0, x24
	bl	_donna_files_mkdir
	mov	x0, x25
	bl	_donna_files_mkdir
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	_donna_files_mkdir
	mov	x1, x20
	mov	x0, x19
	mov	x20, x1
	adrp	x1, _str44@page
	add	x1, x1, _str44@pageoff
	mov	x19, x0
	bl	_donna_files_join
	mov	x1, x20
	mov	x20, x1
	mov	x1, x19
	bl	_builder_dependencies_resolve_deps
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x1
	mov	x1, x22
	bl	_builder_pipeline_compile_ffi
	mov	x2, x22
	mov	x1, x20
	mov	x4, x0
	mov	x0, x19
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	mov	x19, x2
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_cli_cmd_build_compile_deps
	mov	x2, x19
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L34
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
	bl	_builder_scanner_project_src_dir
	mov	x4, x25
	mov	x3, x22
	mov	x2, x20
	adrp	x1, _str70@page
	add	x1, x1, _str70@pageoff
	bl	_builder_pipeline_compile_dir
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L32
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x20, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	bl	_cli_cmd_build_has_public_main
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #0
	beq	L29
	bl	_donna_list_append
	mov	x22, x0
	bl	_builder_pipeline_qbe_available
	mov	x1, #16
	mov	x25, x21
	sub	sp, sp, x1
	mov	x21, sp
	cmp	x0, #0
	beq	L27
	bl	_builder_pipeline_c_compiler_available
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	cmp	x1, #0
	beq	L25
	bl	_builder_pipeline_run_qbe_all_checked
	mov	x1, x0
	mov	x0, x23
	mov	x2, #16
	sub	sp, sp, x2
	mov	x23, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L22
	mov	x2, #8
	add	x1, x1, x2
	ldr	x26, [x1]
	str	x26, [x29, 16]
	bl	_builder_scanner_project_name
	mov	x1, x0
	mov	x0, x24
	bl	_donna_files_join
	mov	x24, x0
	bl	_cli_cmd_build_linker_flags
	str	x0, [x29, 32]
	mov	x0, #24
	bl	_malloc
	mov	x27, x0
	mov	x0, #1
	str	x0, [x27]
	mov	x0, #8
	add	x0, x27, x0
	str	x24, [x0]
	mov	x0, #16
	add	x1, x27, x0
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	ldr	x0, [x29, 32]
	ldr	x26, [x29, 24]
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, _str142@page
	add	x2, x2, _str142@pageoff
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x27, [x2]
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x26
	ldr	x26, [x29, 16]
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x26
	bl	_donna_list_append
	bl	_builder_pipeline_c_command
	adrp	x1, _str150@page
	add	x1, x1, _str150@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
	mov	x1, x0
	mov	x0, x24
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x24, sp
	cmp	x1, #0
	beq	L20
	bl	_cli_cmd_build_maybe_codesign
	bl	_donna_time_now_us
	sub	x1, x0, x25
	adrp	x0, _str166@page
	add	x0, x0, _str166@pageoff
	bl	_utilities_logger_ok
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	str	x0, [x24]
	b	L21
L20:
	adrp	x0, _str159@page
	add	x0, x0, _str159@pageoff
	bl	_utilities_colors_red
	adrp	x1, _str161@page
	add	x1, x1, _str161@pageoff
	bl	___rt_str_concat
	mov	x25, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x25, [x1]
	str	x0, [x24]
L21:
	str	x0, [x23]
	b	L24
L22:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x24, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x24, [x1]
	str	x0, [x23]
L24:
	str	x0, [x22]
	b	L26
L25:
	bl	_cli_cmd_build_c_compiler_missing_error
	mov	x23, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	str	x0, [x22]
L26:
	str	x0, [x21]
	b	L28
L27:
	bl	_cli_cmd_build_qbe_missing_error
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	str	x0, [x21]
L28:
	str	x0, [x20]
	b	L31
L29:
	mov	x22, x24
	mov	x0, x23
	bl	_builder_scanner_project_name
	mov	x1, x0
	mov	x0, x22
	bl	_donna_files_join
	bl	_donna_files_delete
	bl	_donna_time_now_us
	sub	x1, x0, x21
	adrp	x0, _str99@page
	add	x0, x0, _str99@pageoff
	bl	_utilities_logger_ok
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
	str	x0, [x20]
L31:
	str	x0, [x19]
	b	L35
L32:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L35
L34:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x19, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L35:
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
/* end function cli_cmd_build_build_project */

.text
.balign 4
_cli_cmd_build_qbe_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, _str178@page
	add	x0, x0, _str178@pageoff
	bl	_utilities_colors_dim
	mov	x19, x0
	adrp	x0, _str180@page
	add	x0, x0, _str180@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str182@page
	add	x1, x1, _str182@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_qbe_missing_error */

.text
.balign 4
_cli_cmd_build_c_compiler_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, _str185@page
	add	x0, x0, _str185@pageoff
	bl	_utilities_colors_dim
	mov	x19, x0
	adrp	x0, _str187@page
	add	x0, x0, _str187@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str189@page
	add	x1, x1, _str189@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_c_compiler_missing_error */

.text
.balign 4
_cli_cmd_build_compile_deps:
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
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L52
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x1, _str209@page
	add	x1, x1, _str209@pageoff
	mov	x0, x22
	bl	_donna_files_join
	mov	x21, x0
	mov	x0, x19
	bl	_builder_dependencies_dep_name
	mov	x1, x0
	mov	x0, x21
	bl	_donna_files_join
	adrp	x1, _str213@page
	add	x1, x1, _str213@pageoff
	mov	x21, x0
	bl	_donna_files_join
	mov	x1, x0
	mov	x0, x21
	mov	x23, x1
	adrp	x1, _str215@page
	add	x1, x1, _str215@pageoff
	mov	x21, x0
	mov	x0, x22
	bl	_donna_files_join
	bl	_donna_files_mkdir
	mov	x0, x21
	bl	_donna_files_mkdir
	mov	x0, x23
	bl	_donna_files_mkdir
	mov	x0, x19
	bl	_builder_dependencies_dep_src_dir
	mov	x21, x0
	mov	x0, x19
	bl	_builder_dependencies_dep_name
	mov	x4, x26
	mov	x3, x25
	mov	x2, x24
	mov	x1, x0
	mov	x0, x21
	mov	x25, x4
	mov	x4, #0
	mov	x24, x3
	mov	x3, x2
	mov	x21, x2
	mov	x2, x23
	bl	_builder_pipeline_compile_dir
	mov	x4, x25
	mov	x3, x24
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	mov	x5, #16
	sub	sp, sp, x5
	mov	x19, sp
	ldr	x5, [x1]
	cmp	x5, #1
	beq	L50
	mov	x25, x4
	mov	x4, #8
	add	x1, x1, x4
	ldr	x1, [x1]
	ldr	x21, [x1]
	mov	x26, x3
	mov	x3, #8
	add	x3, x1, x3
	ldr	x24, [x3]
	str	x24, [x29, 24]
	mov	x24, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x27, [x1]
	str	x27, [x29, 16]
	bl	_builder_dependencies_dep_path
	mov	x1, x23
	ldr	x23, [x29, 24]
	bl	_builder_pipeline_compile_ffi
	mov	x2, x24
	mov	x1, x21
	mov	x24, x0
	mov	x0, x20
	ldr	x21, [x29, 16]
	mov	x20, x0
	mov	x0, x2
	bl	_donna_list_append
	mov	x3, x26
	mov	x1, x23
	mov	x23, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x3
	bl	_donna_list_append
	mov	x4, x25
	mov	x1, x24
	mov	x24, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x4
	bl	_donna_list_append
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	bl	_cli_cmd_build_compile_deps
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L48
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x25, [x0]
	mov	x1, #8
	add	x1, x0, x1
	ldr	x24, [x1]
	mov	x1, #16
	add	x1, x0, x1
	ldr	x23, [x1]
	mov	x1, #24
	add	x0, x0, x1
	ldr	x22, [x0]
	mov	x0, #16
	sub	sp, sp, x0
	mov	x1, sp
	cmp	x21, #1
	beq	L45
	str	x22, [x1]
	b	L47
L45:
	mov	x0, #1
	str	x0, [x1]
	mov	x22, #1
L47:
	mov	x0, #32
	bl	_malloc
	mov	x21, x0
	str	x25, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x24, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x23, [x0]
	mov	x0, #24
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	L49
L48:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
L49:
	str	x0, [x19]
	b	L54
L50:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L54
L52:
	mov	x21, x26
	mov	x20, x25
	mov	x19, x24
	mov	x0, #32
	bl	_malloc
	mov	x4, x21
	mov	x3, x20
	mov	x2, x19
	mov	x19, x0
	str	x2, [x19]
	mov	x0, #8
	add	x0, x19, x0
	str	x3, [x0]
	mov	x0, #16
	add	x0, x19, x0
	str	x4, [x0]
	mov	x0, #24
	add	x1, x19, x0
	mov	x0, #0
	str	x0, [x1]
	mov	x0, #16
	bl	_malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L54:
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
/* end function cli_cmd_build_compile_deps */

.text
.balign 4
_cli_cmd_build_has_public_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L60
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_build_iface_has_main
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L58
	bl	_cli_cmd_build_has_public_main
	str	x0, [x19]
	b	L61
L58:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L61
L60:
	mov	x0, #0
L61:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_has_public_main */

.text
.balign 4
_cli_cmd_build_iface_has_main:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_build_bindings_have_main
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_iface_has_main */

.text
.balign 4
_cli_cmd_build_bindings_have_main:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	L69
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	ldr	x0, [x0]
	adrp	x1, _str328@page
	add	x1, x1, _str328@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L67
	bl	_cli_cmd_build_bindings_have_main
	str	x0, [x19]
	b	L70
L67:
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #1
	b	L70
L69:
	mov	x0, #0
L70:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_bindings_have_main */

.text
.balign 4
_cli_cmd_build_linker_flags:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str338@page
	add	x0, x0, _str338@pageoff
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #1
	beq	L73
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str350@page
	add	x1, x1, _str350@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	b	L74
L73:
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, _str346@page
	add	x1, x1, _str346@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
L74:
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_build_linker_flags */

.text
.balign 4
_cli_cmd_build_maybe_codesign:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, _str355@page
	add	x0, x0, _str355@pageoff
	bl	_donna_shell_run
	mov	x1, x19
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #0
	beq	L77
	adrp	x0, _str363@page
	add	x0, x0, _str363@pageoff
	bl	___rt_str_concat
	adrp	x1, _str365@page
	add	x1, x1, _str365@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
	b	L78
L77:
	mov	x0, #0
L78:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_maybe_codesign */

.text
.balign 4
_cli_cmd_build_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L87
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L83
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L84
L83:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str388@page
	add	x1, x1, _str388@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L84:
	cmp	w1, #0
	bne	L86
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_build_first_positional
	b	L88
L86:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L88
L87:
	adrp	x0, _str375@page
	add	x0, x0, _str375@pageoff
L88:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_build_first_positional */

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

