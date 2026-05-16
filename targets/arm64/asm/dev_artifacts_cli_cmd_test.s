.data
.balign 8
str0:
	.ascii "h"
	.byte 0
/* end data */

.data
.balign 8
str8:
	.ascii "help"
	.byte 0
/* end data */

.data
.balign 8
str30:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str32:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str41:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str49:
	.ascii "no test/ directory in "
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii "no .donna test files found in "
	.byte 0
/* end data */

.data
.balign 8
str86:
	.ascii "test_runner.donna"
	.byte 0
/* end data */

.data
.balign 8
str94:
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
str124:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str142:
	.ascii "scrubbed"
	.byte 0
/* end data */

.data
.balign 8
str173:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str176:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str195:
	.ascii "test_runner.ssa"
	.byte 0
/* end data */

.data
.balign 8
str198:
	.ascii "test_runner"
	.byte 0
/* end data */

.data
.balign 8
str250:
	.ascii "donna_test_runner"
	.byte 0
/* end data */

.data
.balign 8
str257:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str265:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str274:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str276:
	.ascii ": linker failed"
	.byte 0
/* end data */

.data
.balign 8
str279:
	.ascii "  Running tests..."
	.byte 0
/* end data */

.data
.balign 8
str281:
	.ascii "%s"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str290:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str291:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str302:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str304:
	.ascii ": invalid test function name"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str306:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str315:
	.ascii "  hint: public test functions must end with `_test`"
	.byte 0
/* end data */

.data
.balign 8
str322:
	.ascii "  "
	.byte 0
/* end data */

.data
.balign 8
str326:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str330:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str332:
	.ascii ": no test functions found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str334:
	.ascii "  hint: add a public function named like `example_test` in test/"
	.byte 0
/* end data */

.data
.balign 8
str337:
	.ascii "  hint: install QBE and make sure qbe is in PATH"
	.byte 0
/* end data */

.data
.balign 8
str339:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str341:
	.ascii ": qbe not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str344:
	.ascii "  hint: install clang/gcc or Zig, or set DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str346:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str348:
	.ascii ": C compiler not found"
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str352:
	.ascii "donna_stdlib"
	.byte 0
/* end data */

.data
.balign 8
str362:
	.ascii "self_alias_artifacts"
	.byte 0
/* end data */

.data
.balign 8
str365:
	.ascii "donna"
	.byte 0
/* end data */

.data
.balign 8
str408:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str412:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str414:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str495:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str511:
	.ascii "only"
	.byte 0
/* end data */

.data
.balign 8
str519:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str544:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str578:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str586:
	.ascii "-Wl,-stack_size,0x2000000"
	.byte 0
/* end data */

.data
.balign 8
str590:
	.ascii "-lm"
	.byte 0
/* end data */

.data
.balign 8
str595:
	.ascii "uname | grep -q '^Darwin$' >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str603:
	.ascii "command -v codesign >/dev/null 2>&1 && codesign --force -s - "
	.byte 0
/* end data */

.data
.balign 8
str605:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str621:
	.ascii "$main("
	.byte 0
/* end data */

.data
.balign 8
str623:
	.ascii "$donna_program_main("
	.byte 0
/* end data */

.data
.balign 8
str631:
	.ascii "export function w $main("
	.byte 0
/* end data */

.data
.balign 8
str632:
	.ascii "function w $__proj_main("
	.byte 0
/* end data */

.data
.balign 8
str634:
	.ascii "export function w $donna_program_main("
	.byte 0
/* end data */

.data
.balign 8
str635:
	.ascii "function w $__proj_main("
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_test_run
cli_cmd_test_run:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	adrp	x1, str0
	add	x1, x1, #:lo12:str0
	mov	x19, x0
	bl	argparse_argparse_has
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L8
	adrp	x1, str8
	add	x1, x1, #:lo12:str8
	mov	x19, x0
	bl	argparse_argparse_has
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L7
	bl	cli_cmd_test_parse_test_args
	mov	x1, x0
	ldr	x0, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x20, x0
	bl	builder_scanner_scan
	mov	x2, x21
	mov	x1, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L4
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	bl	cli_cmd_test_do_test
	str	x0, [x20]
	b	.L6
.L4:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	adrp	x0, str30
	add	x0, x0, #:lo12:str30
	bl	utilities_colors_red
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str32
	add	x1, x1, #:lo12:str32
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	str	x0, [x20]
.L6:
	str	x0, [x19]
	b	.L9
.L7:
	bl	cli_help_test_help
	str	x0, [x19]
	b	.L9
.L8:
	bl	cli_help_test_help
.L9:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_test_run, @function
.size cli_cmd_test_run, .-cli_cmd_test_run
/* end function cli_cmd_test_run */

.text
.balign 16
cli_cmd_test_do_test:
	hint	#34
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [x29, 88]
	str	x20, [x29, 80]
	str	x21, [x29, 72]
	str	x22, [x29, 64]
	str	x23, [x29, 56]
	str	x24, [x29, 48]
	str	x25, [x29, 40]
	str	x26, [x29, 32]
	mov	x22, x1
	mov	x1, x2
	mov	x23, x1
	adrp	x1, str41
	add	x1, x1, #:lo12:str41
	mov	x19, x0
	bl	donna_files_join
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	donna_files_is_dir
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L23
	mov	x19, x0
	mov	x0, x20
	bl	cli_cmd_test_find_donna_files
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	donna_list_is_empty
	mov	x2, x21
	mov	x1, x0
	mov	x0, x19
	mov	x25, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L21
	mov	x20, x0
	mov	x0, x25
	bl	builder_tester_collect_test_modules
	mov	x24, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x25
	bl	builder_tester_collect_invalid_public_test_functions
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	donna_list_is_empty
	mov	x2, x25
	mov	x1, x0
	mov	x0, x20
	mov	x25, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L18
	mov	x21, x0
	mov	x0, x24
	bl	builder_tester_count_total
	mov	x2, x25
	mov	x1, x23
	mov	x3, x0
	mov	x0, x21
	cmp	x3, #0
	mov	x21, x0
	cset	x0, eq
	mov	x23, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x25, sp
	str	x25, [x29, 16]
	cmp	x0, #1
	beq	.L15
	mov	x0, x24
	bl	builder_tester_generate_filtered_runner
	mov	x25, x0
	mov	x0, x22
	bl	builder_scanner_project_build_dir
	mov	x26, x0
	mov	x0, x22
	bl	builder_scanner_project_test_dir
	mov	x17, x0
	mov	x0, x26
	mov	x26, x17
	bl	donna_files_mkdir
	mov	x0, x21
	mov	x21, x0
	mov	x0, x26
	bl	donna_files_mkdir
	mov	x1, x25
	mov	x0, x21
	mov	x25, x1
	adrp	x1, str86
	add	x1, x1, #:lo12:str86
	mov	x21, x0
	mov	x0, x26
	bl	donna_files_join
	mov	x1, x25
	mov	x25, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x25
	bl	donna_files_write
	mov	x5, x26
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x0, x21
	ldr	x21, [x29, 16]
	bl	cli_cmd_test_build_and_run
	str	x0, [x21]
	b	.L17
.L15:
	mov	x21, x25
	bl	cli_cmd_test_no_tests_error
	str	x0, [x21]
.L17:
	str	x0, [x20]
	b	.L20
.L18:
	mov	x0, x21
	bl	cli_cmd_test_invalid_test_names_error
	str	x0, [x20]
.L20:
	str	x0, [x19]
	b	.L24
.L21:
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str60
	add	x0, x0, #:lo12:str60
	bl	utilities_colors_dim
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L24
.L23:
	mov	x19, x0
	adrp	x0, str49
	add	x0, x0, #:lo12:str49
	bl	utilities_colors_dim
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
.L24:
	ldr	x19, [x29, 88]
	ldr	x20, [x29, 80]
	ldr	x21, [x29, 72]
	ldr	x22, [x29, 64]
	ldr	x23, [x29, 56]
	ldr	x24, [x29, 48]
	ldr	x25, [x29, 40]
	ldr	x26, [x29, 32]
	mov sp, x29
	ldp	x29, x30, [sp], 96
	ret
.type cli_cmd_test_do_test, @function
.size cli_cmd_test_do_test, .-cli_cmd_test_do_test
/* end function cli_cmd_test_do_test */

.text
.balign 16
cli_cmd_test_build_and_run:
	hint	#34
	stp	x29, x30, [sp, -256]!
	mov	x29, sp
	str	x19, [x29, 248]
	str	x20, [x29, 240]
	str	x21, [x29, 232]
	str	x22, [x29, 224]
	str	x23, [x29, 216]
	str	x24, [x29, 208]
	str	x25, [x29, 200]
	str	x26, [x29, 192]
	str	x27, [x29, 184]
	mov	x25, x5
	str	x4, [x29, 160]
	mov	x21, x2
	mov	x19, x1
	mov	x22, x0
	adrp	x1, str94
	add	x1, x1, #:lo12:str94
	mov	x0, x22
	bl	donna_files_join
	mov	x20, x0
	mov	x0, x19
	bl	builder_scanner_project_build_dir
	mov	x24, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x19
	bl	builder_scanner_project_dev_artifacts_dir
	mov	x23, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x19
	bl	builder_scanner_project_dev_dir
	bl	donna_files_mkdir
	mov	x0, x20
	mov	x20, x0
	mov	x0, x23
	bl	donna_files_mkdir
	mov	x1, x24
	mov	x0, x20
	mov	x24, x1
	mov	x1, x22
	mov	x20, x0
	bl	builder_dependencies_resolve_deps
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x24, x1
	mov	x1, x22
	bl	builder_dependencies_resolve_dev_deps
	mov	x1, x24
	str	x0, [x29, 144]
	mov	x0, x22
	mov	x22, x1
	mov	x1, x23
	bl	builder_pipeline_compile_ffi
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x20, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x24, x1
	bl	cli_cmd_test_compile_deps
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L61
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	ldr	x26, [x1]
	mov	x3, #8
	add	x3, x1, x3
	ldr	x23, [x3]
	str	x23, [x29, 152]
	mov	x3, #16
	add	x3, x1, x3
	ldr	x19, [x3]
	str	x19, [x29, 120]
	mov	x20, x2
	mov	x2, #24
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x19, x0
	bl	builder_scanner_project_src_dir
	mov	x4, x22
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x3, x26
	mov	x23, x1
	adrp	x1, str124
	add	x1, x1, #:lo12:str124
	mov	x19, x0
	mov	x0, x23
	bl	builder_pipeline_compile_dir
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L59
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	ldr	x2, [x1]
	str	x2, [x29, 136]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x3, [x1]
	str	x3, [x29, 168]
	adrp	x1, str142
	add	x1, x1, #:lo12:str142
	mov	x20, x0
	mov	x0, x25
	bl	donna_files_join
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x22
	bl	donna_files_mkdir
	mov	x1, x22
	mov	x0, x20
	mov	x20, x0
	ldr	x0, [x29, 168]
	ldr	x22, [x29, 160]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	cli_cmd_test_scrub_main_from_ssa
	mov	x1, x23
	str	x0, [x29, 128]
	mov	x0, x20
	ldr	x23, [x29, 152]
	ldr	x20, [x29, 144]
	mov	x3, x26
	mov	x2, x25
	bl	cli_cmd_test_compile_self_alias
	mov	x1, x24
	mov	x2, x0
	ldr	x0, [x29, 136]
	mov	x24, x1
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	str	x2, [x29, 72]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x26
	bl	donna_list_append
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x4, donna_nil
	add	x4, x4, #:lo12:donna_nil
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x2, x20
	bl	cli_cmd_test_compile_deps
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L56
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x3, x2, x3
	ldr	x3, [x3]
	str	x3, [x29, 80]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x24, [x2]
	str	x24, [x29, 64]
	bl	donna_list_append
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	adrp	x1, str173
	add	x1, x1, #:lo12:str173
	mov	x24, x0
	mov	x0, x25
	bl	donna_files_join
	mov	x26, x0
	mov	x0, x24
	mov	x24, x0
	mov	x0, x26
	bl	donna_files_mkdir
	mov	x2, x26
	mov	x0, x24
	ldr	x24, [x29, 128]
	ldr	x26, [x29, 120]
	mov	x3, x21
	adrp	x1, str176
	add	x1, x1, #:lo12:str176
	bl	builder_pipeline_compile_file_list
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L53
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	ldr	x1, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x27, [x2]
	str	x27, [x29, 104]
	bl	donna_list_append
	str	x0, [x29, 112]
	mov	x0, x22
	adrp	x1, str195
	add	x1, x1, #:lo12:str195
	mov	x22, x0
	mov	x0, x25
	bl	donna_files_join
	bl	donna_files_delete
	mov	x0, x22
	ldr	x3, [x29, 112]
	ldr	x22, [x29, 104]
	mov	x4, #1
	mov	x2, x25
	adrp	x1, str198
	add	x1, x1, #:lo12:str198
	bl	builder_pipeline_compile_module
	mov	x1, x0
	mov	x0, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L50
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	str	x2, [x29, 88]
	bl	donna_list_reverse
	str	x0, [x29, 96]
	mov	x0, x24
	mov	x24, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	ldr	x0, [x29, 96]
	ldr	x2, [x29, 88]
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x3, x1, x3
	str	x2, [x3]
	mov	x2, #16
	add	x3, x1, x2
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	str	x2, [x3]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	ldr	x0, [x29, 80]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	ldr	x0, [x29, 72]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x24
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x23
	bl	donna_list_append
	mov	x24, x0
	bl	builder_pipeline_qbe_available
	mov	x1, #16
	sub	sp, sp, x1
	mov	x23, sp
	cmp	x0, #0
	beq	.L48
	bl	builder_pipeline_c_compiler_available
	mov	x1, x0
	mov	x0, x24
	mov	x2, #16
	sub	sp, sp, x2
	mov	x24, sp
	cmp	x1, #0
	beq	.L46
	bl	builder_pipeline_run_qbe_all_checked
	mov	x2, x0
	mov	x0, x25
	ldr	x1, [x29, 64]
	mov	x3, #16
	sub	sp, sp, x3
	mov	x25, sp
	str	x25, [x29, 48]
	ldr	x3, [x2]
	cmp	x3, #1
	beq	.L43
	mov	x25, x26
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	str	x2, [x29, 32]
	mov	x26, x1
	adrp	x1, str250
	add	x1, x1, #:lo12:str250
	bl	donna_files_join
	mov	x1, x26
	mov	x17, x0
	mov	x0, x25
	mov	x25, x17
	bl	donna_list_append
	str	x0, [x29, 40]
	bl	cli_cmd_test_linker_flags
	str	x0, [x29, 56]
	mov	x0, x25
	mov	x25, x0
	mov	x0, #24
	bl	malloc
	mov	x27, x0
	mov	x0, x25
	mov	x1, #1
	str	x1, [x27]
	mov	x1, #8
	add	x1, x27, x1
	str	x0, [x1]
	mov	x1, #16
	add	x2, x27, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x25, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x25
	ldr	x25, [x29, 48]
	mov	x26, x0
	ldr	x0, [x29, 56]
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x3, x1, x2
	adrp	x2, str257
	add	x2, x2, #:lo12:str257
	str	x2, [x3]
	mov	x2, #16
	add	x2, x1, x2
	str	x27, [x2]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x26
	mov	x26, x0
	ldr	x0, [x29, 40]
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x26
	mov	x26, x0
	ldr	x0, [x29, 32]
	bl	donna_list_append
	bl	builder_pipeline_c_command
	adrp	x1, str265
	add	x1, x1, #:lo12:str265
	bl	__rt_str_concat
	bl	donna_shell_run
	mov	x1, x0
	mov	x0, x26
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x26, sp
	str	x26, [x29, 24]
	cmp	x1, #0
	beq	.L41
	mov	x26, x0
	bl	cli_cmd_test_maybe_codesign
	mov	x0, x26
	mov	x26, x0
	adrp	x0, str279
	add	x0, x0, #:lo12:str279
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x26
	mov	x26, x0
	adrp	x0, str281
	add	x0, x0, #:lo12:str281
	bl	printf
	bl	donna_shell_flush
	mov	x0, x26
	ldr	x26, [x29, 24]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	donna_shell_exec
	cmp	x0, #0
	cset	x2, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	str	x1, [x29, 16]
	cmp	x2, #1
	beq	.L38
	bl	exit
	ldr	x1, [x29, 16]
	adrp	x0, str291
	add	x0, x0, #:lo12:str291
	str	x0, [x1]
	adrp	x0, str291
	add	x0, x0, #:lo12:str291
	b	.L40
.L38:
	adrp	x0, str290
	add	x0, x0, #:lo12:str290
	str	x0, [x1]
	adrp	x0, str290
	add	x0, x0, #:lo12:str290
.L40:
	str	x0, [x26]
	b	.L42
.L41:
	adrp	x0, str274
	add	x0, x0, #:lo12:str274
	bl	utilities_colors_red
	adrp	x1, str276
	add	x1, x1, #:lo12:str276
	bl	__rt_str_concat
	str	x0, [x26]
.L42:
	str	x0, [x25]
	b	.L45
.L43:
	mov	x0, x2
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x25]
.L45:
	str	x0, [x24]
	b	.L47
.L46:
	bl	cli_cmd_test_c_compiler_missing_error
	str	x0, [x24]
.L47:
	str	x0, [x23]
	b	.L49
.L48:
	bl	cli_cmd_test_qbe_missing_error
	str	x0, [x23]
.L49:
	str	x0, [x22]
	b	.L52
.L50:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x22]
.L52:
	str	x0, [x21]
	b	.L55
.L53:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x21]
.L55:
	str	x0, [x20]
	b	.L58
.L56:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x20]
.L58:
	str	x0, [x19]
	b	.L63
.L59:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	str	x0, [x19]
	b	.L63
.L61:
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L63:
	ldr	x19, [x29, 248]
	ldr	x20, [x29, 240]
	ldr	x21, [x29, 232]
	ldr	x22, [x29, 224]
	ldr	x23, [x29, 216]
	ldr	x24, [x29, 208]
	ldr	x25, [x29, 200]
	ldr	x26, [x29, 192]
	ldr	x27, [x29, 184]
	mov sp, x29
	ldp	x29, x30, [sp], 256
	ret
.type cli_cmd_test_build_and_run, @function
.size cli_cmd_test_build_and_run, .-cli_cmd_test_build_and_run
/* end function cli_cmd_test_build_and_run */

.text
.balign 16
cli_cmd_test_invalid_test_names_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str302
	add	x0, x0, #:lo12:str302
	bl	utilities_colors_red
	adrp	x1, str304
	add	x1, x1, #:lo12:str304
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	adrp	x1, str306
	add	x1, x1, #:lo12:str306
	bl	cli_cmd_test_invalid_test_lines
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_test_invalid_test_names_error, @function
.size cli_cmd_test_invalid_test_names_error, .-cli_cmd_test_invalid_test_names_error
/* end function cli_cmd_test_invalid_test_names_error */

.text
.balign 16
cli_cmd_test_invalid_test_lines:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L68
	mov	x2, #8
	add	x2, x1, x2
	ldr	x20, [x2]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, str322
	add	x1, x1, #:lo12:str322
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str326
	add	x1, x1, #:lo12:str326
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x19
	bl	cli_cmd_test_invalid_test_lines
	b	.L69
.L68:
	mov	x19, x0
	adrp	x0, str315
	add	x0, x0, #:lo12:str315
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
.L69:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_test_invalid_test_lines, @function
.size cli_cmd_test_invalid_test_lines, .-cli_cmd_test_invalid_test_lines
/* end function cli_cmd_test_invalid_test_lines */

.text
.balign 16
cli_cmd_test_no_tests_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, str330
	add	x0, x0, #:lo12:str330
	bl	utilities_colors_red
	adrp	x1, str332
	add	x1, x1, #:lo12:str332
	bl	__rt_str_concat
	mov	x19, x0
	adrp	x0, str334
	add	x0, x0, #:lo12:str334
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_test_no_tests_error, @function
.size cli_cmd_test_no_tests_error, .-cli_cmd_test_no_tests_error
/* end function cli_cmd_test_no_tests_error */

.text
.balign 16
cli_cmd_test_qbe_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, str337
	add	x0, x0, #:lo12:str337
	bl	utilities_colors_dim
	mov	x19, x0
	adrp	x0, str339
	add	x0, x0, #:lo12:str339
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str341
	add	x1, x1, #:lo12:str341
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_test_qbe_missing_error, @function
.size cli_cmd_test_qbe_missing_error, .-cli_cmd_test_qbe_missing_error
/* end function cli_cmd_test_qbe_missing_error */

.text
.balign 16
cli_cmd_test_c_compiler_missing_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, str344
	add	x0, x0, #:lo12:str344
	bl	utilities_colors_dim
	mov	x19, x0
	adrp	x0, str346
	add	x0, x0, #:lo12:str346
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str348
	add	x1, x1, #:lo12:str348
	bl	__rt_str_concat
	mov	x1, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_test_c_compiler_missing_error, @function
.size cli_cmd_test_c_compiler_missing_error, .-cli_cmd_test_c_compiler_missing_error
/* end function cli_cmd_test_c_compiler_missing_error */

.text
.balign 16
cli_cmd_test_compile_self_alias:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x3
	mov	x20, x2
	mov	x19, x1
	bl	builder_scanner_project_name
	adrp	x1, str352
	add	x1, x1, #:lo12:str352
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L80
	adrp	x1, str362
	add	x1, x1, #:lo12:str362
	bl	donna_files_join
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	donna_files_mkdir
	mov	x3, x21
	mov	x2, x20
	mov	x0, x19
	mov	x4, #0
	adrp	x1, str365
	add	x1, x1, #:lo12:str365
	bl	builder_pipeline_compile_dir
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L79
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldr	x21, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L81
.L79:
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	str	x0, [x19]
	b	.L81
.L80:
	mov	x0, #16
	bl	malloc
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
.L81:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_test_compile_self_alias, @function
.size cli_cmd_test_compile_self_alias, .-cli_cmd_test_compile_self_alias
/* end function cli_cmd_test_compile_self_alias */

.text
.balign 16
cli_cmd_test_compile_deps:
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
	beq	.L94
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x1, str408
	add	x1, x1, #:lo12:str408
	mov	x0, x22
	bl	donna_files_join
	mov	x21, x0
	mov	x0, x19
	bl	builder_dependencies_dep_name
	mov	x1, x0
	mov	x0, x21
	bl	donna_files_join
	adrp	x1, str412
	add	x1, x1, #:lo12:str412
	mov	x21, x0
	bl	donna_files_join
	mov	x1, x0
	mov	x0, x21
	mov	x23, x1
	adrp	x1, str414
	add	x1, x1, #:lo12:str414
	mov	x21, x0
	mov	x0, x22
	bl	donna_files_join
	bl	donna_files_mkdir
	mov	x0, x21
	bl	donna_files_mkdir
	mov	x0, x23
	bl	donna_files_mkdir
	mov	x0, x19
	bl	builder_dependencies_dep_src_dir
	mov	x21, x0
	mov	x0, x19
	bl	builder_dependencies_dep_name
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
	bl	builder_pipeline_compile_dir
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
	beq	.L92
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
	bl	builder_dependencies_dep_path
	mov	x1, x23
	ldr	x23, [x29, 24]
	bl	builder_pipeline_compile_ffi
	mov	x2, x24
	mov	x1, x21
	mov	x24, x0
	mov	x0, x20
	ldr	x21, [x29, 16]
	mov	x20, x0
	mov	x0, x2
	bl	donna_list_append
	mov	x3, x26
	mov	x1, x23
	mov	x23, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x3
	bl	donna_list_append
	mov	x4, x25
	mov	x1, x24
	mov	x24, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x4
	bl	donna_list_append
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x4, x0
	mov	x0, x20
	bl	cli_cmd_test_compile_deps
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L90
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
	beq	.L87
	str	x22, [x1]
	b	.L89
.L87:
	mov	x0, #1
	str	x0, [x1]
	mov	x22, #1
.L89:
	mov	x0, #32
	bl	malloc
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
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
	b	.L91
.L90:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x21, [x0]
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	str	x0, [x20]
.L91:
	str	x0, [x19]
	b	.L96
.L92:
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
	b	.L96
.L94:
	mov	x21, x26
	mov	x20, x25
	mov	x19, x24
	mov	x0, #32
	bl	malloc
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
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L96:
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
.type cli_cmd_test_compile_deps, @function
.size cli_cmd_test_compile_deps, .-cli_cmd_test_compile_deps
/* end function cli_cmd_test_compile_deps */

.text
.balign 16
cli_cmd_test_find_donna_files:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	mov	x0, x19
	bl	donna_files_list_dir
	mov	x1, x19
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	cli_cmd_test_collect_donna
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_test_find_donna_files, @function
.size cli_cmd_test_find_donna_files, .-cli_cmd_test_find_donna_files
/* end function cli_cmd_test_find_donna_files */

.text
.balign 16
cli_cmd_test_collect_donna:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x20, x2
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L104
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x22, x1
	adrp	x1, str495
	add	x1, x1, #:lo12:str495
	mov	x19, x0
	mov	x0, x21
	bl	donna_string_ends_with
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L102
	mov	x2, x20
	mov	x23, x1
	bl	cli_cmd_test_collect_donna
	str	x0, [x19]
	b	.L106
.L102:
	mov	x23, x1
	mov	x1, x21
	mov	x21, x0
	mov	x0, x23
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x21, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x20, [x3]
	bl	cli_cmd_test_collect_donna
	str	x0, [x19]
	b	.L106
.L104:
	mov	x0, x20
	bl	donna_list_reverse
.L106:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_test_collect_donna, @function
.size cli_cmd_test_collect_donna, .-cli_cmd_test_collect_donna
/* end function cli_cmd_test_collect_donna */

.text
.balign 16
cli_cmd_test_parse_test_args:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x0
	bl	argparse_argparse_positional
	mov	x20, x0
	mov	x0, x19
	adrp	x1, str511
	add	x1, x1, #:lo12:str511
	bl	argparse_argparse_get
	mov	x19, x0
	ldr	x0, [x20]
	cmp	x0, #0
	beq	.L112
	mov	x0, #8
	add	x0, x20, x0
	ldr	x21, [x0]
	mov	x0, #16
	add	x0, x20, x0
	ldr	x23, [x0]
	mov	x0, x21
	bl	donna_files_is_dir
	mov	x1, #16
	mov	x22, x19
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #1
	beq	.L110
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	cli_cmd_test_filter_values
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	adrp	x1, str544
	add	x1, x1, #:lo12:str544
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L113
.L110:
	mov	x20, x23
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x22, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	cli_cmd_test_filter_values
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L113
.L112:
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	cli_cmd_test_filter_values
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	adrp	x1, str519
	add	x1, x1, #:lo12:str519
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L113:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_test_parse_test_args, @function
.size cli_cmd_test_parse_test_args, .-cli_cmd_test_parse_test_args
/* end function cli_cmd_test_parse_test_args */

.text
.balign 16
cli_cmd_test_filter_values:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L118
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x19, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L117
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x22
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x21, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	bl	cli_cmd_test_filter_values
	str	x0, [x19]
	b	.L120
.L117:
	mov	x1, x20
	bl	cli_cmd_test_filter_values
	str	x0, [x19]
	b	.L120
.L118:
	mov	x0, x20
	bl	donna_list_reverse
.L120:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_test_filter_values, @function
.size cli_cmd_test_filter_values, .-cli_cmd_test_filter_values
/* end function cli_cmd_test_filter_values */

.text
.balign 16
cli_cmd_test_linker_flags:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str578
	add	x0, x0, #:lo12:str578
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #1
	beq	.L123
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str590
	add	x1, x1, #:lo12:str590
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	b	.L124
.L123:
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str586
	add	x1, x1, #:lo12:str586
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
.L124:
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_test_linker_flags, @function
.size cli_cmd_test_linker_flags, .-cli_cmd_test_linker_flags
/* end function cli_cmd_test_linker_flags */

.text
.balign 16
cli_cmd_test_maybe_codesign:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	adrp	x0, str595
	add	x0, x0, #:lo12:str595
	bl	donna_shell_run
	mov	x1, x19
	cmp	x0, #0
	cset	x0, eq
	cmp	x0, #0
	beq	.L127
	adrp	x0, str603
	add	x0, x0, #:lo12:str603
	bl	__rt_str_concat
	adrp	x1, str605
	add	x1, x1, #:lo12:str605
	bl	__rt_str_concat
	bl	donna_shell_run
	b	.L128
.L127:
	mov	x0, #0
.L128:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_test_maybe_codesign, @function
.size cli_cmd_test_maybe_codesign, .-cli_cmd_test_maybe_codesign
/* end function cli_cmd_test_maybe_codesign */

.text
.balign 16
cli_cmd_test_scrub_main_from_ssa:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x22, x1
	mov	x1, x0
	mov	x0, x2
	mov	x19, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L134
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	bl	donna_files_read
	mov	x1, x0
	mov	x0, x21
	mov	x23, x1
	adrp	x1, str621
	add	x1, x1, #:lo12:str621
	mov	x21, x0
	mov	x0, x23
	bl	donna_string_contains
	mov	x1, x23
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x24, x1
	adrp	x1, str623
	add	x1, x1, #:lo12:str623
	mov	x23, x0
	mov	x0, x24
	bl	donna_string_contains
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	orr	x2, x21, x2
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #0
	beq	.L132
	adrp	x2, str632
	add	x2, x2, #:lo12:str632
	mov	x24, x1
	adrp	x1, str631
	add	x1, x1, #:lo12:str631
	mov	x23, x0
	mov	x0, x24
	bl	donna_string_replace
	mov	x1, x22
	adrp	x2, str635
	add	x2, x2, #:lo12:str635
	mov	x22, x1
	adrp	x1, str634
	add	x1, x1, #:lo12:str634
	bl	donna_string_replace
	mov	x1, x0
	mov	x0, x23
	str	x1, [x21]
	b	.L133
.L132:
	str	x1, [x21]
.L133:
	mov	x21, x1
	bl	donna_files_basename
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x22
	bl	donna_files_join
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, x20
	bl	donna_files_write
	mov	x0, x21
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
	bl	cli_cmd_test_scrub_main_from_ssa
	b	.L136
.L134:
	mov	x0, x19
	bl	donna_list_reverse
.L136:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_test_scrub_main_from_ssa, @function
.size cli_cmd_test_scrub_main_from_ssa, .-cli_cmd_test_scrub_main_from_ssa
/* end function cli_cmd_test_scrub_main_from_ssa */

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
