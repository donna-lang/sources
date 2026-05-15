.data
.balign 8
str1:
	.ascii ".ssa"
	.byte 0
/* end data */

.data
.balign 8
str16:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str17:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str29:
	.ascii "lex error: "
	.byte 0
/* end data */

.data
.balign 8
str43:
	.ascii "parse error: "
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str58:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str174:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str215:
	.ascii "command -v qbe >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str218:
	.ascii "DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
str227:
	.ascii "command -v cc >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str235:
	.ascii "cc"
	.byte 0
/* end data */

.data
.balign 8
str236:
	.ascii "command -v zig >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str244:
	.ascii "zig cc"
	.byte 0
/* end data */

.data
.balign 8
str245:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str253:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str258:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
str266:
	.ascii "qbe -o "
	.byte 0
/* end data */

.data
.balign 8
str269:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str273:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str282:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str338:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str340:
	.ascii ": QBE failed to compile "
	.byte 0
/* end data */

.data
.balign 8
str344:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str346:
	.ascii "  hint: run `qbe "
	.byte 0
/* end data */

.data
.balign 8
str348:
	.ascii "` to see the backend error"
	.byte 0
/* end data */

.data
.balign 8
str370:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
str377:
	.ascii "-O2"
	.byte 0
/* end data */

.data
.balign 8
str381:
	.ascii "-c"
	.byte 0
/* end data */

.data
.balign 8
str386:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
str401:
	.ascii "ffi"
	.byte 0
/* end data */

.data
.balign 8
str423:
	.ascii ".c"
	.byte 0
/* end data */

.data
.balign 8
str433:
	.ascii ".o"
	.byte 0
/* end data */

.data
.balign 8
str441:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str442:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
str450:
	.ascii "test "
	.byte 0
/* end data */

.data
.balign 8
str453:
	.ascii " -nt "
	.byte 0
/* end data */

.data
.balign 8
str460:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str461:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str462:
	.ascii "'"
	.byte 92
	.ascii "''"
	.byte 0
/* end data */

.data
.balign 8
str465:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
str473:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str500:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str533:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str560:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str574:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str598:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str649:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str673:
	.ascii "import "
	.byte 0
/* end data */

.data
.balign 8
str692:
	.ascii " as "
	.byte 0
/* end data */

.data
.balign 8
str746:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str761:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str763:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str963:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str976:
	.ascii "import "
	.byte 0
/* end data */

.text
.balign 16
.globl builder_pipeline_compile_module
builder_pipeline_compile_module:
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
	mov	x22, x4
	mov	x20, x3
	mov	x21, x1
	mov	x19, x0
	mov	x0, x2
	mov	x23, x0
	mov	x0, x21
	bl	builder_pipeline_mod_name_to_stem
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str1
	add	x1, x1, #:lo12:str1
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x23
	bl	donna_files_join
	mov	x4, x22
	mov	x1, x21
	mov	x23, x0
	cmp	x4, #1
	beq	.L2
	mov	x22, x1
	mov	x1, x23
	mov	x0, x19
	bl	builder_pipeline_file_is_current
	mov	x25, x0
	b	.L4
.L2:
	mov	x22, x1
	mov	x25, #0
.L4:
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	cmp	x25, #1
	beq	.L6
	mov	x0, x22
	bl	utilities_logger_step
	adrp	x0, str17
	add	x0, x0, #:lo12:str17
	str	x0, [x21]
	b	.L7
.L6:
	adrp	x0, str16
	add	x0, x0, #:lo12:str16
	str	x0, [x21]
.L7:
	mov	x0, x19
	bl	donna_files_read
	mov	x1, x19
	mov	x21, x0
	mov	x19, x1
	mov	x0, x21
	bl	compiler_lexer_lexer_lex
	mov	x2, x20
	mov	x1, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x24, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L19
	mov	x20, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	compiler_parser_parser_parse
	mov	x2, x24
	mov	x1, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x0]
	cmp	x3, #1
	beq	.L17
	mov	x1, x22
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	bl	compiler_typesystem_checker_check_module_with_imports
	mov	x1, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L15
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x22, x0
	bl	compiler_typesystem_checker_extract_interface
	mov	x24, x0
	mov	x0, x22
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	cmp	x25, #1
	beq	.L13
	bl	compiler_codegen_codegen_generate
	mov	x1, x0
	mov	x0, x23
	bl	donna_files_write
	mov	x0, #24
	bl	malloc
	str	x24, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	bl	donna_result_Ok
	str	x0, [x22]
	b	.L14
.L13:
	mov	x0, #24
	bl	malloc
	str	x24, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
	bl	donna_result_Ok
	str	x0, [x22]
.L14:
	str	x0, [x21]
	b	.L16
.L15:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	builder_pipeline_render_errors
	adrp	x1, str58
	add	x1, x1, #:lo12:str58
	bl	donna_string_join
	bl	donna_result_Error
	str	x0, [x21]
.L16:
	str	x0, [x20]
	b	.L18
.L17:
	adrp	x0, str43
	add	x0, x0, #:lo12:str43
	bl	__rt_str_concat
	bl	donna_result_Error
	str	x0, [x20]
.L18:
	str	x0, [x19]
	b	.L20
.L19:
	adrp	x0, str29
	add	x0, x0, #:lo12:str29
	bl	__rt_str_concat
	bl	donna_result_Error
	str	x0, [x19]
.L20:
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
.type builder_pipeline_compile_module, @function
.size builder_pipeline_compile_module, .-builder_pipeline_compile_module
/* end function builder_pipeline_compile_module */

.text
.balign 16
.globl builder_pipeline_compile_file_list
builder_pipeline_compile_file_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x3
	mov	x20, x2
	mov	x19, x1
	bl	builder_pipeline_sort_by_import_count
	mov	x3, x21
	mov	x2, x20
	mov	x1, x19
	mov	x6, #0
	adrp	x5, donna_nil
	add	x5, x5, #:lo12:donna_nil
	adrp	x4, donna_nil
	add	x4, x4, #:lo12:donna_nil
	bl	builder_pipeline_compile_loop
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_compile_file_list, @function
.size builder_pipeline_compile_file_list, .-builder_pipeline_compile_file_list
/* end function builder_pipeline_compile_file_list */

.text
.balign 16
.globl builder_pipeline_compile_dir
builder_pipeline_compile_dir:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x4
	mov	x20, x3
	mov	x19, x2
	mov	x23, x1
	mov	x22, x0
	mov	x0, x22
	bl	donna_files_list_dir
	mov	x2, x23
	mov	x1, x22
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	bl	builder_pipeline_collect_pairs_recursive
	bl	builder_pipeline_topo_sort_pairs
	mov	x5, x21
	mov	x2, x20
	mov	x1, x19
	adrp	x4, donna_nil
	add	x4, x4, #:lo12:donna_nil
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	bl	builder_pipeline_compile_pairs_loop
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_compile_dir, @function
.size builder_pipeline_compile_dir, .-builder_pipeline_compile_dir
/* end function builder_pipeline_compile_dir */

.text
.balign 16
builder_pipeline_compile_pairs_loop:
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
	mov	x21, x5
	mov	x20, x4
	mov	x22, x3
	ldr	x3, [x0]
	cmp	x3, #0
	beq	.L36
	mov	x26, x2
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x19, [x0]
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x25, x1
	mov	x1, x22
	mov	x24, x0
	mov	x0, x26
	bl	donna_list_append
	mov	x2, x26
	mov	x1, x25
	mov	x3, x0
	mov	x0, x24
	mov	x4, x21
	mov	x25, x2
	mov	x2, x1
	mov	x24, x1
	mov	x1, x23
	bl	builder_pipeline_compile_module
	mov	x2, x25
	mov	x1, x24
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	ldr	x4, [x3]
	cmp	x4, #1
	beq	.L34
	mov	x4, #8
	add	x3, x3, x4
	ldr	x3, [x3]
	ldr	x4, [x3]
	str	x4, [x29, 24]
	mov	x4, #8
	add	x4, x3, x4
	ldr	x24, [x4]
	str	x24, [x29, 16]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x3, [x3]
	mov	x25, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	.L30
	str	x21, [x2]
	mov	x24, x1
	mov	x26, x21
	mov	x21, x23
	b	.L33
.L30:
	mov	x21, x23
	mov	x24, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x26, #1
.L33:
	mov	x23, x0
	mov	x0, #16
	bl	malloc
	mov	x2, x25
	mov	x1, x24
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	mov	x24, x1
	ldr	x1, [x29, 24]
	str	x21, [x23]
	mov	x25, x2
	mov	x2, #8
	add	x2, x23, x2
	str	x1, [x2]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x25
	mov	x1, x24
	mov	x3, x0
	mov	x0, x21
	ldr	x21, [x29, 16]
	mov	x25, x3
	mov	x3, #1
	str	x3, [x25]
	mov	x24, x2
	mov	x2, #8
	add	x2, x25, x2
	str	x23, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x1, x25, x1
	str	x22, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x26
	mov	x3, x25
	mov	x2, x24
	mov	x1, x23
	mov	x4, x0
	mov	x0, x22
	mov	x6, #1
	str	x6, [x4]
	mov	x6, #8
	add	x6, x4, x6
	str	x21, [x6]
	mov	x6, #16
	add	x6, x4, x6
	str	x20, [x6]
	bl	builder_pipeline_compile_pairs_loop
	str	x0, [x19]
	b	.L38
.L34:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L38
.L36:
	mov	x19, x20
	mov	x0, x22
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x5, x21
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x5, [x1]
	bl	donna_result_Ok
.L38:
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
.type builder_pipeline_compile_pairs_loop, @function
.size builder_pipeline_compile_pairs_loop, .-builder_pipeline_compile_pairs_loop
/* end function builder_pipeline_compile_pairs_loop */

.text
.balign 16
builder_pipeline_compile_loop:
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
	mov	x21, x6
	mov	x19, x4
	mov	x24, x3
	mov	x23, x1
	mov	x1, x0
	mov	x0, x5
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L54
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x26, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	str	x22, [x29, 24]
	mov	x22, x0
	bl	donna_files_basename
	bl	donna_files_drop_extension
	mov	x27, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	donna_string_is_empty
	mov	x3, x24
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x25, x3
	mov	x3, #16
	sub	sp, sp, x3
	mov	x23, sp
	str	x23, [x29, 40]
	cmp	x2, #1
	beq	.L42
	mov	x23, x1
	adrp	x1, str174
	add	x1, x1, #:lo12:str174
	mov	x22, x0
	mov	x0, x23
	bl	__rt_str_concat
	mov	x1, x23
	ldr	x23, [x29, 40]
	mov	x24, x1
	mov	x1, x27
	bl	__rt_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x22, [x23]
	b	.L44
.L42:
	mov	x22, x27
	str	x22, [x23]
.L44:
	mov	x24, x1
	mov	x1, x19
	mov	x23, x0
	mov	x0, x25
	bl	donna_list_append
	mov	x2, x26
	mov	x1, x24
	mov	x3, x0
	mov	x0, x23
	mov	x4, x21
	mov	x24, x2
	mov	x23, x1
	mov	x1, x22
	bl	builder_pipeline_compile_module
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	ldr	x4, [x3]
	cmp	x4, #1
	beq	.L52
	mov	x4, #8
	add	x3, x3, x4
	ldr	x3, [x3]
	ldr	x4, [x3]
	str	x4, [x29, 32]
	mov	x4, #8
	add	x4, x3, x4
	ldr	x7, [x4]
	str	x7, [x29, 16]
	mov	x4, #16
	add	x3, x3, x4
	ldr	x3, [x3]
	mov	x24, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x3, #1
	beq	.L48
	str	x21, [x2]
	mov	x23, x1
	mov	x26, x21
	mov	x21, x22
	b	.L51
.L48:
	mov	x21, x22
	mov	x23, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x26, #1
.L51:
	mov	x22, x0
	mov	x0, #16
	bl	malloc
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x1
	ldr	x1, [x29, 32]
	str	x21, [x22]
	mov	x24, x2
	mov	x2, #8
	add	x2, x22, x2
	str	x1, [x2]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x3, x25
	mov	x2, x24
	mov	x1, x23
	mov	x25, x0
	mov	x0, x21
	mov	x21, x0
	ldr	x0, [x29, 24]
	mov	x24, x3
	mov	x3, #1
	str	x3, [x25]
	mov	x23, x2
	mov	x2, #8
	add	x2, x25, x2
	str	x22, [x2]
	mov	x22, x1
	mov	x1, #16
	add	x1, x25, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x6, x26
	mov	x4, x25
	mov	x3, x24
	mov	x2, x23
	mov	x1, x22
	mov	x5, x0
	mov	x0, x21
	ldr	x7, [x29, 16]
	mov	x8, #1
	str	x8, [x5]
	mov	x8, #8
	add	x8, x5, x8
	str	x7, [x8]
	mov	x7, #16
	add	x7, x5, x7
	str	x20, [x7]
	bl	builder_pipeline_compile_loop
	str	x0, [x19]
	b	.L56
.L52:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_result_Error
	str	x0, [x19]
	b	.L56
.L54:
	mov	x0, x19
	mov	x19, x20
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x6, x21
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x6, [x1]
	bl	donna_result_Ok
.L56:
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
.type builder_pipeline_compile_loop, @function
.size builder_pipeline_compile_loop, .-builder_pipeline_compile_loop
/* end function builder_pipeline_compile_loop */

.text
.balign 16
.globl builder_pipeline_qbe_available
builder_pipeline_qbe_available:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str215
	add	x0, x0, #:lo12:str215
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_qbe_available, @function
.size builder_pipeline_qbe_available, .-builder_pipeline_qbe_available
/* end function builder_pipeline_qbe_available */

.text
.balign 16
.globl builder_pipeline_c_compiler_command
builder_pipeline_c_compiler_command:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, str218
	add	x0, x0, #:lo12:str218
	bl	donna_shell_getenv
	bl	donna_string_trim
	mov	x19, x0
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L69
	adrp	x0, str227
	add	x0, x0, #:lo12:str227
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #1
	beq	.L67
	adrp	x0, str236
	add	x0, x0, #:lo12:str236
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	.L64
	adrp	x0, str245
	add	x0, x0, #:lo12:str245
	str	x0, [x1]
	adrp	x0, str245
	add	x0, x0, #:lo12:str245
	b	.L66
.L64:
	adrp	x0, str244
	add	x0, x0, #:lo12:str244
	str	x0, [x1]
	adrp	x0, str244
	add	x0, x0, #:lo12:str244
.L66:
	str	x0, [x19]
	b	.L69
.L67:
	adrp	x0, str235
	add	x0, x0, #:lo12:str235
	str	x0, [x19]
	adrp	x0, str235
	add	x0, x0, #:lo12:str235
.L69:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_c_compiler_command, @function
.size builder_pipeline_c_compiler_command, .-builder_pipeline_c_compiler_command
/* end function builder_pipeline_c_compiler_command */

.text
.balign 16
.globl builder_pipeline_c_compiler_available
builder_pipeline_c_compiler_available:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_pipeline_c_compiler_command
	bl	donna_string_is_empty
	cmp	x0, #0
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_c_compiler_available, @function
.size builder_pipeline_c_compiler_available, .-builder_pipeline_c_compiler_available
/* end function builder_pipeline_c_compiler_available */

.text
.balign 16
.globl builder_pipeline_c_command
builder_pipeline_c_command:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	builder_pipeline_c_compiler_command
	adrp	x1, str253
	add	x1, x1, #:lo12:str253
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_pipeline_join_shell_args
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_c_command, @function
.size builder_pipeline_c_command, .-builder_pipeline_c_command
/* end function builder_pipeline_c_command */

.text
.balign 16
.globl builder_pipeline_run_qbe
builder_pipeline_run_qbe:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	donna_files_drop_extension
	adrp	x1, str258
	add	x1, x1, #:lo12:str258
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, x19
	mov	x20, x0
	bl	builder_pipeline_file_is_current
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #1
	beq	.L79
	mov	x20, x0
	mov	x0, x19
	bl	builder_pipeline_sh_quote
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str266
	add	x0, x0, #:lo12:str266
	bl	__rt_str_concat
	adrp	x1, str269
	add	x1, x1, #:lo12:str269
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_pipeline_sh_quote
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	adrp	x1, str273
	add	x1, x1, #:lo12:str273
	bl	__rt_str_concat
	bl	donna_shell_run
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	cset	x2, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x2, #1
	beq	.L78
	adrp	x0, str282
	add	x0, x0, #:lo12:str282
	str	x0, [x1]
	adrp	x0, str282
	add	x0, x0, #:lo12:str282
	b	.L80
.L78:
	str	x0, [x1]
	b	.L80
.L79:
	mov	x0, x19
.L80:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_run_qbe, @function
.size builder_pipeline_run_qbe, .-builder_pipeline_run_qbe
/* end function builder_pipeline_run_qbe */

.text
.balign 16
.globl builder_pipeline_run_qbe_all
builder_pipeline_run_qbe_all:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L85
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	builder_pipeline_run_qbe
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L84
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
	bl	builder_pipeline_run_qbe_all
	str	x0, [x19]
	b	.L87
.L84:
	mov	x1, x20
	bl	builder_pipeline_run_qbe_all
	str	x0, [x19]
	b	.L87
.L85:
	mov	x0, x20
	bl	donna_list_reverse
.L87:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_run_qbe_all, @function
.size builder_pipeline_run_qbe_all, .-builder_pipeline_run_qbe_all
/* end function builder_pipeline_run_qbe_all */

.text
.balign 16
.globl builder_pipeline_run_qbe_all_checked
builder_pipeline_run_qbe_all_checked:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_pipeline_run_qbe_all_checked_loop
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_run_qbe_all_checked, @function
.size builder_pipeline_run_qbe_all_checked, .-builder_pipeline_run_qbe_all_checked
/* end function builder_pipeline_run_qbe_all_checked */

.text
.balign 16
builder_pipeline_run_qbe_all_checked_loop:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L95
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x19, x0
	bl	builder_pipeline_run_qbe
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L94
	mov	x0, x22
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
	bl	builder_pipeline_run_qbe_all_checked_loop
	str	x0, [x19]
	b	.L97
.L94:
	bl	builder_pipeline_qbe_compile_error
	bl	donna_result_Error
	str	x0, [x19]
	b	.L97
.L95:
	mov	x0, x20
	bl	donna_list_reverse
	bl	donna_result_Ok
.L97:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_run_qbe_all_checked_loop, @function
.size builder_pipeline_run_qbe_all_checked_loop, .-builder_pipeline_run_qbe_all_checked_loop
/* end function builder_pipeline_run_qbe_all_checked_loop */

.text
.balign 16
builder_pipeline_qbe_compile_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	adrp	x0, str338
	add	x0, x0, #:lo12:str338
	bl	utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str340
	add	x1, x1, #:lo12:str340
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	utilities_colors_path
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str344
	add	x1, x1, #:lo12:str344
	bl	__rt_str_concat
	mov	x1, x19
	mov	x19, x0
	adrp	x0, str346
	add	x0, x0, #:lo12:str346
	bl	__rt_str_concat
	adrp	x1, str348
	add	x1, x1, #:lo12:str348
	bl	__rt_str_concat
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_qbe_compile_error, @function
.size builder_pipeline_qbe_compile_error, .-builder_pipeline_qbe_compile_error
/* end function builder_pipeline_qbe_compile_error */

.text
.balign 16
.globl builder_pipeline_compile_c
builder_pipeline_compile_c:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	donna_files_exists
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	beq	.L109
	mov	x21, x1
	mov	x19, x0
	bl	builder_pipeline_file_is_current
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L107
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x2, #1
	str	x2, [x20]
	mov	x2, #8
	add	x2, x20, x2
	str	x1, [x2]
	mov	x2, #16
	add	x2, x20, x2
	mov	x22, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x2, #1
	str	x2, [x21]
	mov	x2, #8
	add	x3, x21, x2
	adrp	x2, str370
	add	x2, x2, #:lo12:str370
	str	x2, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x21, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	mov	x2, #1
	str	x2, [x22]
	mov	x20, x1
	mov	x1, #8
	add	x1, x22, x1
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	mov	x20, x1
	add	x1, x21, x0
	adrp	x0, str377
	add	x0, x0, #:lo12:str377
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x3, x0, x2
	adrp	x2, str381
	add	x2, x2, #:lo12:str381
	str	x2, [x3]
	mov	x20, x1
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	bl	builder_pipeline_c_command
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str386
	add	x1, x1, #:lo12:str386
	bl	__rt_str_concat
	bl	donna_shell_run
	mov	x1, x20
	cmp	x0, #0
	cset	x0, eq
	mov	x21, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	cmp	x0, #1
	beq	.L105
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x20]
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	b	.L106
.L105:
	mov	x0, #24
	bl	malloc
	mov	x1, x21
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	str	x0, [x20]
.L106:
	str	x0, [x19]
	b	.L110
.L107:
	mov	x20, x21
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	str	x0, [x19]
	b	.L110
.L109:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L110:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_compile_c, @function
.size builder_pipeline_compile_c, .-builder_pipeline_compile_c
/* end function builder_pipeline_compile_c */

.text
.balign 16
.globl builder_pipeline_compile_ffi
builder_pipeline_compile_ffi:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	adrp	x1, str401
	add	x1, x1, #:lo12:str401
	bl	donna_files_join
	mov	x19, x0
	mov	x0, x19
	bl	donna_files_is_dir
	cmp	x0, #0
	beq	.L113
	mov	x0, x19
	bl	donna_files_list_dir
	mov	x2, x20
	mov	x1, x19
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	bl	builder_pipeline_compile_c_files
	b	.L114
.L113:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L114:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_compile_ffi, @function
.size builder_pipeline_compile_ffi, .-builder_pipeline_compile_ffi
/* end function builder_pipeline_compile_ffi */

.text
.balign 16
builder_pipeline_compile_c_files:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x22, x2
	mov	x2, x0
	mov	x0, x3
	mov	x23, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L120
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	adrp	x1, str423
	add	x1, x1, #:lo12:str423
	mov	x19, x0
	bl	donna_string_ends_with
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #0
	beq	.L118
	mov	x21, x1
	mov	x1, x0
	mov	x24, x0
	mov	x0, x21
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	bl	donna_files_drop_extension
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str433
	add	x1, x1, #:lo12:str433
	bl	__rt_str_concat
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	mov	x0, x22
	bl	donna_files_join
	mov	x1, x0
	mov	x0, x24
	bl	builder_pipeline_compile_c
	mov	x1, x21
	mov	x21, x1
	mov	x1, x23
	bl	donna_list_append
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	bl	builder_pipeline_compile_c_files
	str	x0, [x19]
	b	.L122
.L118:
	mov	x0, x20
	mov	x20, x23
	mov	x2, x22
	mov	x3, x20
	bl	builder_pipeline_compile_c_files
	str	x0, [x19]
	b	.L122
.L120:
	mov	x0, x23
	bl	donna_list_reverse
.L122:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_compile_c_files, @function
.size builder_pipeline_compile_c_files, .-builder_pipeline_compile_c_files
/* end function builder_pipeline_compile_c_files */

.text
.balign 16
.globl builder_pipeline_mod_name_to_stem
builder_pipeline_mod_name_to_stem:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, str442
	add	x2, x2, #:lo12:str442
	adrp	x1, str441
	add	x1, x1, #:lo12:str441
	bl	donna_string_replace
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_mod_name_to_stem, @function
.size builder_pipeline_mod_name_to_stem, .-builder_pipeline_mod_name_to_stem
/* end function builder_pipeline_mod_name_to_stem */

.text
.balign 16
builder_pipeline_file_is_current:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	mov	x20, x0
	mov	x0, x19
	bl	donna_files_exists
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	.L127
	bl	builder_pipeline_sh_quote
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, str450
	add	x0, x0, #:lo12:str450
	bl	__rt_str_concat
	adrp	x1, str453
	add	x1, x1, #:lo12:str453
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_pipeline_sh_quote
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	bl	donna_shell_run
	cmp	x0, #0
	cset	x0, ne
	b	.L128
.L127:
	mov	x0, #0
.L128:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_file_is_current, @function
.size builder_pipeline_file_is_current, .-builder_pipeline_file_is_current
/* end function builder_pipeline_file_is_current */

.text
.balign 16
builder_pipeline_sh_quote:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, str462
	add	x2, x2, #:lo12:str462
	adrp	x1, str461
	add	x1, x1, #:lo12:str461
	bl	donna_string_replace
	mov	x1, x0
	adrp	x0, str460
	add	x0, x0, #:lo12:str460
	bl	__rt_str_concat
	adrp	x1, str465
	add	x1, x1, #:lo12:str465
	bl	__rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_sh_quote, @function
.size builder_pipeline_sh_quote, .-builder_pipeline_sh_quote
/* end function builder_pipeline_sh_quote */

.text
.balign 16
builder_pipeline_join_shell_args:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L139
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L135
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L136
.L135:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L136:
	cmp	w1, #0
	bne	.L138
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	builder_pipeline_sh_quote
	adrp	x1, str500
	add	x1, x1, #:lo12:str500
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	builder_pipeline_join_shell_args
	mov	x1, x0
	mov	x0, x19
	bl	__rt_str_concat
	b	.L140
.L138:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_pipeline_sh_quote
	b	.L140
.L139:
	adrp	x0, str473
	add	x0, x0, #:lo12:str473
.L140:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_join_shell_args, @function
.size builder_pipeline_join_shell_args, .-builder_pipeline_join_shell_args
/* end function builder_pipeline_join_shell_args */

.text
.balign 16
builder_pipeline_render_errors:
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
	beq	.L143
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
	bl	builder_pipeline_render_errors
	b	.L145
.L143:
	mov	x0, x19
	bl	donna_list_reverse
.L145:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_render_errors, @function
.size builder_pipeline_render_errors, .-builder_pipeline_render_errors
/* end function builder_pipeline_render_errors */

.text
.balign 16
builder_pipeline_collect_donna:
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
	beq	.L151
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x22, x1
	adrp	x1, str533
	add	x1, x1, #:lo12:str533
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
	beq	.L149
	mov	x2, x20
	mov	x23, x1
	bl	builder_pipeline_collect_donna
	str	x0, [x19]
	b	.L153
.L149:
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
	bl	builder_pipeline_collect_donna
	str	x0, [x19]
	b	.L153
.L151:
	mov	x0, x20
	bl	donna_list_reverse
.L153:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_collect_donna, @function
.size builder_pipeline_collect_donna, .-builder_pipeline_collect_donna
/* end function builder_pipeline_collect_donna */

.text
.balign 16
builder_pipeline_collect_pairs_recursive:
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
	mov	x20, x2
	mov	x2, x0
	mov	x0, x3
	mov	x24, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L171
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x21, [x2]
	mov	x22, x1
	mov	x1, x0
	mov	x19, x0
	mov	x0, x22
	bl	donna_files_join
	mov	x1, x22
	mov	x25, x0
	mov	x0, x19
	mov	x23, x1
	adrp	x1, str560
	add	x1, x1, #:lo12:str560
	mov	x19, x0
	bl	donna_string_ends_with
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x22, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L165
	mov	x20, x0
	mov	x0, x25
	bl	donna_files_is_dir
	mov	x2, x22
	mov	x1, x0
	mov	x0, x20
	mov	x26, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L162
	mov	x22, x0
	mov	x0, x26
	bl	donna_string_is_empty
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x22, sp
	str	x22, [x29, 16]
	cmp	x2, #1
	beq	.L159
	mov	x22, x1
	adrp	x1, str598
	add	x1, x1, #:lo12:str598
	mov	x27, x0
	mov	x0, x26
	bl	__rt_str_concat
	mov	x1, x22
	ldr	x22, [x29, 16]
	mov	x23, x1
	mov	x1, x27
	bl	__rt_str_concat
	str	x0, [x22]
	b	.L161
.L159:
	mov	x23, x1
	str	x0, [x22]
.L161:
	mov	x22, x0
	mov	x0, x25
	bl	donna_files_list_dir
	mov	x2, x26
	mov	x1, x23
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x23, x2
	mov	x2, x22
	mov	x22, x1
	mov	x1, x25
	bl	builder_pipeline_collect_pairs_recursive
	bl	donna_list_reverse
	mov	x1, x22
	mov	x22, x1
	mov	x1, x24
	bl	donna_list_append
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x21
	bl	builder_pipeline_collect_pairs_recursive
	str	x0, [x20]
	b	.L164
.L162:
	mov	x0, x21
	mov	x21, x24
	mov	x2, x26
	mov	x1, x23
	mov	x3, x21
	mov	x24, x2
	mov	x22, x1
	mov	x21, x0
	bl	builder_pipeline_collect_pairs_recursive
	str	x0, [x20]
.L164:
	str	x0, [x19]
	b	.L173
.L165:
	mov	x20, x24
	mov	x24, x22
	mov	x22, x23
	mov	x23, x25
	bl	donna_files_drop_extension
	mov	x26, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x24
	bl	donna_string_is_empty
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	.L168
	mov	x25, x1
	adrp	x1, str574
	add	x1, x1, #:lo12:str574
	mov	x22, x0
	mov	x0, x24
	bl	__rt_str_concat
	mov	x1, x25
	mov	x25, x1
	mov	x1, x26
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x22, [x21]
	b	.L170
.L168:
	mov	x22, x26
	mov	x25, x1
	str	x22, [x21]
.L170:
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x1, x25
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x23, [x21]
	mov	x23, x1
	mov	x1, #8
	add	x1, x21, x1
	str	x22, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x22
	mov	x4, #1
	str	x4, [x3]
	mov	x4, #8
	add	x4, x3, x4
	str	x21, [x4]
	mov	x4, #16
	add	x4, x3, x4
	str	x20, [x4]
	bl	builder_pipeline_collect_pairs_recursive
	str	x0, [x19]
	b	.L173
.L171:
	mov	x0, x24
	bl	donna_list_reverse
.L173:
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
.type builder_pipeline_collect_pairs_recursive, @function
.size builder_pipeline_collect_pairs_recursive, .-builder_pipeline_collect_pairs_recursive
/* end function builder_pipeline_collect_pairs_recursive */

.text
.balign 16
builder_pipeline_topo_sort_pairs:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	mov	x19, x0
	bl	builder_pipeline_collect_mod_names
	mov	x1, x0
	mov	x0, x19
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	builder_pipeline_tag_with_local_deps
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_pipeline_kahn_sort
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_topo_sort_pairs, @function
.size builder_pipeline_topo_sort_pairs, .-builder_pipeline_topo_sort_pairs
/* end function builder_pipeline_topo_sort_pairs */

.text
.balign 16
builder_pipeline_collect_mod_names:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L178
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	builder_pipeline_collect_mod_names
	b	.L180
.L178:
	mov	x0, x19
	bl	donna_list_reverse
.L180:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_collect_mod_names, @function
.size builder_pipeline_collect_mod_names, .-builder_pipeline_collect_mod_names
/* end function builder_pipeline_collect_mod_names */

.text
.balign 16
builder_pipeline_tag_with_local_deps:
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
	beq	.L183
	mov	x21, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x23, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x20, x0
	mov	x0, x23
	bl	donna_files_read
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str649
	add	x1, x1, #:lo12:str649
	bl	donna_string_split
	mov	x1, x21
	mov	x21, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_pipeline_parse_import_names
	mov	x1, x21
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x24, x1
	bl	builder_pipeline_filter_local_deps
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x23, [x20]
	mov	x2, #8
	add	x2, x20, x2
	str	x22, [x2]
	mov	x22, x1
	mov	x1, #16
	add	x1, x20, x1
	str	x21, [x1]
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
	bl	builder_pipeline_tag_with_local_deps
	b	.L185
.L183:
	mov	x0, x19
	bl	donna_list_reverse
.L185:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_tag_with_local_deps, @function
.size builder_pipeline_tag_with_local_deps, .-builder_pipeline_tag_with_local_deps
/* end function builder_pipeline_tag_with_local_deps */

.text
.balign 16
builder_pipeline_parse_import_names:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L191
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, str673
	add	x1, x1, #:lo12:str673
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	.L189
	mov	x22, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x22
	mov	x2, #7
	sub	x2, x1, x2
	mov	x1, #7
	bl	donna_string_slice
	bl	builder_pipeline_import_path_only
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
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
	bl	builder_pipeline_parse_import_names
	str	x0, [x19]
	b	.L193
.L189:
	mov	x0, x21
	mov	x1, x20
	bl	builder_pipeline_parse_import_names
	str	x0, [x19]
	b	.L193
.L191:
	mov	x0, x20
	bl	donna_list_reverse
.L193:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_parse_import_names, @function
.size builder_pipeline_parse_import_names, .-builder_pipeline_parse_import_names
/* end function builder_pipeline_parse_import_names */

.text
.balign 16
builder_pipeline_import_path_only:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	donna_string_trim
	adrp	x1, str692
	add	x1, x1, #:lo12:str692
	mov	x19, x0
	bl	donna_string_split
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #0
	beq	.L197
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	donna_string_trim
.L197:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_import_path_only, @function
.size builder_pipeline_import_path_only, .-builder_pipeline_import_path_only
/* end function builder_pipeline_import_path_only */

.text
.balign 16
builder_pipeline_filter_local_deps:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L203
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x23, x1
	bl	builder_pipeline_local_dep_name
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L201
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
	bl	builder_pipeline_filter_local_deps
	str	x0, [x19]
	b	.L205
.L201:
	mov	x1, x23
	mov	x2, x20
	bl	builder_pipeline_filter_local_deps
	str	x0, [x19]
	b	.L205
.L203:
	mov	x0, x20
	bl	donna_list_reverse
.L205:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_filter_local_deps, @function
.size builder_pipeline_filter_local_deps, .-builder_pipeline_filter_local_deps
/* end function builder_pipeline_filter_local_deps */

.text
.balign 16
builder_pipeline_local_dep_name:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	mov	x1, x0
	mov	x20, x0
	mov	x0, x19
	bl	donna_list_contains_str
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #1
	beq	.L208
	bl	builder_pipeline_path_last_segment
	mov	x1, x0
	mov	x0, x19
	bl	builder_pipeline_find_local_dep_by_last_segment
.L208:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_local_dep_name, @function
.size builder_pipeline_local_dep_name, .-builder_pipeline_local_dep_name
/* end function builder_pipeline_local_dep_name */

.text
.balign 16
builder_pipeline_find_local_dep_by_last_segment:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x1
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L214
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	builder_pipeline_path_last_segment
	mov	x1, x21
	mov	x21, x1
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L213
	mov	x0, x20
	bl	builder_pipeline_find_local_dep_by_last_segment
	str	x0, [x19]
	b	.L215
.L213:
	str	x0, [x19]
	b	.L215
.L214:
	adrp	x0, str746
	add	x0, x0, #:lo12:str746
.L215:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_find_local_dep_by_last_segment, @function
.size builder_pipeline_find_local_dep_by_last_segment, .-builder_pipeline_find_local_dep_by_last_segment
/* end function builder_pipeline_find_local_dep_by_last_segment */

.text
.balign 16
builder_pipeline_path_last_segment:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, str761
	add	x1, x1, #:lo12:str761
	bl	donna_string_split
	adrp	x1, str763
	add	x1, x1, #:lo12:str763
	bl	builder_pipeline_path_last_segment_loop
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_path_last_segment, @function
.size builder_pipeline_path_last_segment, .-builder_pipeline_path_last_segment
/* end function builder_pipeline_path_last_segment */

.text
.balign 16
builder_pipeline_path_last_segment_loop:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L220
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	builder_pipeline_path_last_segment_loop
	b	.L221
.L220:
	mov	x0, x1
.L221:
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_path_last_segment_loop, @function
.size builder_pipeline_path_last_segment_loop, .-builder_pipeline_path_last_segment_loop
/* end function builder_pipeline_path_last_segment_loop */

.text
.balign 16
builder_pipeline_kahn_sort:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x22, x2
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L227
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	mov	x1, x19
	bl	builder_pipeline_split_ready
	mov	x1, x0
	mov	x0, x19
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	mov	x0, x21
	bl	donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L225
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	mov	x23, x0
	mov	x0, x21
	bl	builder_pipeline_tagged_names
	mov	x1, x0
	mov	x0, x23
	bl	donna_list_append
	mov	x1, x0
	mov	x0, x21
	mov	x21, x1
	mov	x1, x22
	bl	builder_pipeline_prepend_tagged_pairs
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	builder_pipeline_kahn_sort
	str	x0, [x19]
	b	.L229
.L225:
	mov	x0, x20
	mov	x20, x22
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_pipeline_tagged_to_pairs
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	donna_list_reverse
	mov	x1, x20
	bl	donna_list_append
	str	x0, [x19]
	b	.L229
.L227:
	mov	x0, x22
	bl	donna_list_reverse
.L229:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_kahn_sort, @function
.size builder_pipeline_kahn_sort, .-builder_pipeline_kahn_sort
/* end function builder_pipeline_kahn_sort */

.text
.balign 16
builder_pipeline_split_ready:
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
	str	x26, [x29, 16]
	mov	x20, x3
	mov	x21, x2
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L234
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x0, [x0]
	ldr	x25, [x2]
	mov	x3, #8
	add	x3, x2, x3
	ldr	x24, [x3]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x26, x1
	mov	x19, x0
	mov	x0, x23
	bl	builder_pipeline_all_compiled
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L233
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x26
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x25, [x22]
	mov	x2, #8
	add	x2, x22, x2
	str	x24, [x2]
	mov	x24, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x3, x0
	mov	x0, x23
	mov	x2, #1
	str	x2, [x3]
	mov	x2, #8
	add	x2, x3, x2
	str	x22, [x2]
	mov	x2, #16
	add	x2, x3, x2
	str	x20, [x2]
	mov	x2, x21
	mov	x26, x1
	bl	builder_pipeline_split_ready
	str	x0, [x19]
	b	.L236
.L233:
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x26
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x25, [x22]
	mov	x2, #8
	add	x2, x22, x2
	str	x24, [x2]
	mov	x24, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x24
	mov	x2, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x2]
	mov	x3, #8
	add	x3, x2, x3
	str	x22, [x3]
	mov	x3, #16
	add	x3, x2, x3
	str	x21, [x3]
	mov	x3, x20
	bl	builder_pipeline_split_ready
	str	x0, [x19]
	b	.L236
.L234:
	mov	x19, x20
	mov	x0, x21
	bl	donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
.L236:
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 80
	ret
.type builder_pipeline_split_ready, @function
.size builder_pipeline_split_ready, .-builder_pipeline_split_ready
/* end function builder_pipeline_split_ready */

.text
.balign 16
builder_pipeline_all_compiled:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L242
	mov	x20, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x0
	mov	x0, x20
	bl	donna_list_contains_str
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L241
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	.L243
.L241:
	bl	builder_pipeline_all_compiled
	str	x0, [x19]
	b	.L243
.L242:
	mov	x0, #1
.L243:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_all_compiled, @function
.size builder_pipeline_all_compiled, .-builder_pipeline_all_compiled
/* end function builder_pipeline_all_compiled */

.text
.balign 16
builder_pipeline_tagged_names:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L246
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	builder_pipeline_tagged_names
	b	.L248
.L246:
	mov	x0, x19
	bl	donna_list_reverse
.L248:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_tagged_names, @function
.size builder_pipeline_tagged_names, .-builder_pipeline_tagged_names
/* end function builder_pipeline_tagged_names */

.text
.balign 16
builder_pipeline_tagged_to_pairs:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L251
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x22, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	builder_pipeline_tagged_to_pairs
	b	.L253
.L251:
	mov	x0, x19
	bl	donna_list_reverse
.L253:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_tagged_to_pairs, @function
.size builder_pipeline_tagged_to_pairs, .-builder_pipeline_tagged_to_pairs
/* end function builder_pipeline_tagged_to_pairs */

.text
.balign 16
builder_pipeline_prepend_tagged_pairs:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L256
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x22, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	builder_pipeline_prepend_tagged_pairs
	b	.L257
.L256:
	mov	x0, x19
.L257:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_prepend_tagged_pairs, @function
.size builder_pipeline_prepend_tagged_pairs, .-builder_pipeline_prepend_tagged_pairs
/* end function builder_pipeline_prepend_tagged_pairs */

.text
.balign 16
builder_pipeline_sort_by_import_count:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_pipeline_tag_with_count
	bl	builder_pipeline_isort
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_pipeline_extract_sorted
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_sort_by_import_count, @function
.size builder_pipeline_sort_by_import_count, .-builder_pipeline_sort_by_import_count
/* end function builder_pipeline_sort_by_import_count */

.text
.balign 16
builder_pipeline_tag_with_count:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L262
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	mov	x0, x21
	bl	donna_files_read
	bl	builder_pipeline_count_imports
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	builder_pipeline_tag_with_count
	b	.L264
.L262:
	mov	x0, x19
	bl	donna_list_reverse
.L264:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_tag_with_count, @function
.size builder_pipeline_tag_with_count, .-builder_pipeline_tag_with_count
/* end function builder_pipeline_tag_with_count */

.text
.balign 16
builder_pipeline_count_imports:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, str963
	add	x1, x1, #:lo12:str963
	bl	donna_string_split
	mov	x1, #0
	bl	builder_pipeline_count_import_lines
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_count_imports, @function
.size builder_pipeline_count_imports, .-builder_pipeline_count_imports
/* end function builder_pipeline_count_imports */

.text
.balign 16
builder_pipeline_count_import_lines:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x17, x1
	mov	x1, x0
	mov	x0, x17
	mov	x20, x0
	ldr	x0, [x1]
	cmp	x0, #0
	beq	.L271
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, str976
	add	x1, x1, #:lo12:str976
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L270
	mov	x1, x20
	bl	builder_pipeline_count_import_lines
	str	x0, [x19]
	b	.L272
.L270:
	mov	x1, #1
	add	x1, x20, x1
	bl	builder_pipeline_count_import_lines
	str	x0, [x19]
	b	.L272
.L271:
	mov	x0, x20
.L272:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_count_import_lines, @function
.size builder_pipeline_count_import_lines, .-builder_pipeline_count_import_lines
/* end function builder_pipeline_count_import_lines */

.text
.balign 16
builder_pipeline_isort:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L275
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_pipeline_isort
	mov	x1, x0
	mov	x0, x19
	bl	builder_pipeline_insert_by_count
	b	.L276
.L275:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L276:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_isort, @function
.size builder_pipeline_isort, .-builder_pipeline_isort
/* end function builder_pipeline_isort */

.text
.balign 16
builder_pipeline_insert_by_count:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x1
	mov	x19, x0
	ldr	x0, [x21]
	cmp	x0, #0
	beq	.L282
	mov	x0, #8
	add	x0, x21, x0
	ldr	x22, [x0]
	mov	x0, #16
	add	x0, x21, x0
	ldr	x23, [x0]
	mov	x0, x19
	bl	builder_pipeline_pair_count
	mov	x20, x0
	mov	x0, x22
	bl	builder_pipeline_pair_count
	mov	x1, x23
	cmp	x20, x0
	cset	x0, le
	mov	x2, #16
	mov	x20, x19
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x0, #1
	beq	.L281
	mov	x21, x22
	mov	x0, x20
	bl	builder_pipeline_insert_by_count
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L283
.L281:
	mov	x0, #24
	bl	malloc
	mov	x1, x21
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	str	x0, [x19]
	b	.L283
.L282:
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
.L283:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_insert_by_count, @function
.size builder_pipeline_insert_by_count, .-builder_pipeline_insert_by_count
/* end function builder_pipeline_insert_by_count */

.text
.balign 16
builder_pipeline_pair_count:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_pair_count, @function
.size builder_pipeline_pair_count, .-builder_pipeline_pair_count
/* end function builder_pipeline_pair_count */

.text
.balign 16
builder_pipeline_extract_sorted:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L288
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	builder_pipeline_extract_sorted
	b	.L290
.L288:
	mov	x0, x19
	bl	donna_list_reverse
.L290:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_extract_sorted, @function
.size builder_pipeline_extract_sorted, .-builder_pipeline_extract_sorted
/* end function builder_pipeline_extract_sorted */

.text
.balign 16
builder_pipeline_sort_pairs_by_import_count:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_pipeline_tag_pairs_with_count
	bl	builder_pipeline_isort_pairs
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_pipeline_extract_pairs_sorted
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_sort_pairs_by_import_count, @function
.size builder_pipeline_sort_pairs_by_import_count, .-builder_pipeline_sort_pairs_by_import_count
/* end function builder_pipeline_sort_pairs_by_import_count */

.text
.balign 16
builder_pipeline_tag_pairs_with_count:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L295
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	ldr	x23, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, x23
	bl	donna_files_read
	bl	builder_pipeline_count_imports
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x23, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	builder_pipeline_tag_pairs_with_count
	b	.L297
.L295:
	mov	x0, x19
	bl	donna_list_reverse
.L297:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_tag_pairs_with_count, @function
.size builder_pipeline_tag_pairs_with_count, .-builder_pipeline_tag_pairs_with_count
/* end function builder_pipeline_tag_pairs_with_count */

.text
.balign 16
builder_pipeline_isort_pairs:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L300
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	builder_pipeline_isort_pairs
	mov	x1, x0
	mov	x0, x19
	bl	builder_pipeline_insert_pair_by_count
	b	.L301
.L300:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L301:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_pipeline_isort_pairs, @function
.size builder_pipeline_isort_pairs, .-builder_pipeline_isort_pairs
/* end function builder_pipeline_isort_pairs */

.text
.balign 16
builder_pipeline_insert_pair_by_count:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x1
	mov	x19, x0
	ldr	x0, [x21]
	cmp	x0, #0
	beq	.L307
	mov	x0, #8
	add	x0, x21, x0
	ldr	x22, [x0]
	mov	x0, #16
	add	x0, x21, x0
	ldr	x23, [x0]
	mov	x0, x19
	bl	builder_pipeline_pair_int
	mov	x20, x0
	mov	x0, x22
	bl	builder_pipeline_pair_int
	mov	x1, x23
	cmp	x20, x0
	cset	x0, le
	mov	x2, #16
	mov	x20, x19
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x0, #1
	beq	.L306
	mov	x21, x22
	mov	x0, x20
	bl	builder_pipeline_insert_pair_by_count
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L308
.L306:
	mov	x0, #24
	bl	malloc
	mov	x1, x21
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	str	x0, [x19]
	b	.L308
.L307:
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
.L308:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_pipeline_insert_pair_by_count, @function
.size builder_pipeline_insert_pair_by_count, .-builder_pipeline_insert_pair_by_count
/* end function builder_pipeline_insert_pair_by_count */

.text
.balign 16
builder_pipeline_pair_int:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_pipeline_pair_int, @function
.size builder_pipeline_pair_int, .-builder_pipeline_pair_int
/* end function builder_pipeline_pair_int */

.text
.balign 16
builder_pipeline_extract_pairs_sorted:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L313
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, x21
	mov	x2, #1
	str	x2, [x1]
	mov	x2, #8
	add	x2, x1, x2
	str	x20, [x2]
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	bl	builder_pipeline_extract_pairs_sorted
	b	.L315
.L313:
	mov	x0, x19
	bl	donna_list_reverse
.L315:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_pipeline_extract_pairs_sorted, @function
.size builder_pipeline_extract_pairs_sorted, .-builder_pipeline_extract_pairs_sorted
/* end function builder_pipeline_extract_pairs_sorted */

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
