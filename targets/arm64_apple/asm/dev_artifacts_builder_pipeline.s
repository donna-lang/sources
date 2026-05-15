.data
.balign 8
_str1:
	.ascii ".ssa"
	.byte 0
/* end data */

.data
.balign 8
_str16:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str17:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str29:
	.ascii "lex error: "
	.byte 0
/* end data */

.data
.balign 8
_str43:
	.ascii "parse error: "
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str58:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str174:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str215:
	.ascii "command -v qbe >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str218:
	.ascii "DONNA_CC"
	.byte 0
/* end data */

.data
.balign 8
_str227:
	.ascii "command -v cc >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str235:
	.ascii "cc"
	.byte 0
/* end data */

.data
.balign 8
_str236:
	.ascii "command -v zig >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str244:
	.ascii "zig cc"
	.byte 0
/* end data */

.data
.balign 8
_str245:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str253:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str258:
	.ascii ".s"
	.byte 0
/* end data */

.data
.balign 8
_str266:
	.ascii "qbe -o "
	.byte 0
/* end data */

.data
.balign 8
_str269:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str273:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str282:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str338:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str340:
	.ascii ": QBE failed to compile "
	.byte 0
/* end data */

.data
.balign 8
_str344:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str346:
	.ascii "  hint: run `qbe "
	.byte 0
/* end data */

.data
.balign 8
_str348:
	.ascii "` to see the backend error"
	.byte 0
/* end data */

.data
.balign 8
_str370:
	.ascii "-o"
	.byte 0
/* end data */

.data
.balign 8
_str377:
	.ascii "-O2"
	.byte 0
/* end data */

.data
.balign 8
_str381:
	.ascii "-c"
	.byte 0
/* end data */

.data
.balign 8
_str386:
	.ascii " >/dev/null 2>&1"
	.byte 0
/* end data */

.data
.balign 8
_str401:
	.ascii "ffi"
	.byte 0
/* end data */

.data
.balign 8
_str423:
	.ascii ".c"
	.byte 0
/* end data */

.data
.balign 8
_str433:
	.ascii ".o"
	.byte 0
/* end data */

.data
.balign 8
_str441:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str442:
	.ascii "_"
	.byte 0
/* end data */

.data
.balign 8
_str450:
	.ascii "test "
	.byte 0
/* end data */

.data
.balign 8
_str453:
	.ascii " -nt "
	.byte 0
/* end data */

.data
.balign 8
_str460:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str461:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str462:
	.ascii "'"
	.byte 92
	.ascii "''"
	.byte 0
/* end data */

.data
.balign 8
_str465:
	.ascii "'"
	.byte 0
/* end data */

.data
.balign 8
_str473:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str500:
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str533:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str560:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str574:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str598:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str649:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str673:
	.ascii "import "
	.byte 0
/* end data */

.data
.balign 8
_str692:
	.ascii " as "
	.byte 0
/* end data */

.data
.balign 8
_str746:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str761:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str763:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str963:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str976:
	.ascii "import "
	.byte 0
/* end data */

.text
.balign 4
.globl _builder_pipeline_compile_module
_builder_pipeline_compile_module:
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
	bl	_builder_pipeline_mod_name_to_stem
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str1@page
	add	x1, x1, _str1@pageoff
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x23
	bl	_donna_files_join
	mov	x4, x22
	mov	x1, x21
	mov	x23, x0
	cmp	x4, #1
	beq	L2
	mov	x22, x1
	mov	x1, x23
	mov	x0, x19
	bl	_builder_pipeline_file_is_current
	mov	x25, x0
	b	L4
L2:
	mov	x22, x1
	mov	x25, #0
L4:
	mov	x0, #16
	sub	sp, sp, x0
	mov	x21, sp
	cmp	x25, #1
	beq	L6
	mov	x0, x22
	bl	_utilities_logger_step
	adrp	x0, _str17@page
	add	x0, x0, _str17@pageoff
	str	x0, [x21]
	b	L7
L6:
	adrp	x0, _str16@page
	add	x0, x0, _str16@pageoff
	str	x0, [x21]
L7:
	mov	x0, x19
	bl	_donna_files_read
	mov	x1, x19
	mov	x21, x0
	mov	x19, x1
	mov	x0, x21
	bl	_compiler_lexer_lexer_lex
	mov	x2, x20
	mov	x1, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	mov	x24, x2
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L19
	mov	x20, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_compiler_parser_parser_parse
	mov	x2, x24
	mov	x1, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x0]
	cmp	x3, #1
	beq	L17
	mov	x1, x22
	mov	x3, #8
	add	x0, x0, x3
	ldr	x0, [x0]
	bl	_compiler_typesystem_checker_check_module_with_imports
	mov	x1, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L15
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x22, x0
	bl	_compiler_typesystem_checker_extract_interface
	mov	x24, x0
	mov	x0, x22
	mov	x1, #16
	sub	sp, sp, x1
	mov	x22, sp
	cmp	x25, #1
	beq	L13
	bl	_compiler_codegen_codegen_generate
	mov	x1, x0
	mov	x0, x23
	bl	_donna_files_write
	mov	x0, #24
	bl	_malloc
	str	x24, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x2, x0, x1
	mov	x1, #1
	str	x1, [x2]
	bl	_donna_result_Ok
	str	x0, [x22]
	b	L14
L13:
	mov	x0, #24
	bl	_malloc
	str	x24, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x23, [x1]
	mov	x1, #16
	add	x2, x0, x1
	mov	x1, #0
	str	x1, [x2]
	bl	_donna_result_Ok
	str	x0, [x22]
L14:
	str	x0, [x21]
	b	L16
L15:
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_builder_pipeline_render_errors
	adrp	x1, _str58@page
	add	x1, x1, _str58@pageoff
	bl	_donna_string_join
	bl	_donna_result_Error
	str	x0, [x21]
L16:
	str	x0, [x20]
	b	L18
L17:
	adrp	x0, _str43@page
	add	x0, x0, _str43@pageoff
	bl	___rt_str_concat
	bl	_donna_result_Error
	str	x0, [x20]
L18:
	str	x0, [x19]
	b	L20
L19:
	adrp	x0, _str29@page
	add	x0, x0, _str29@pageoff
	bl	___rt_str_concat
	bl	_donna_result_Error
	str	x0, [x19]
L20:
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
/* end function builder_pipeline_compile_module */

.text
.balign 4
.globl _builder_pipeline_compile_file_list
_builder_pipeline_compile_file_list:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x3
	mov	x20, x2
	mov	x19, x1
	bl	_builder_pipeline_sort_by_import_count
	mov	x3, x21
	mov	x2, x20
	mov	x1, x19
	mov	x6, #0
	adrp	x5, _donna_nil@page
	add	x5, x5, _donna_nil@pageoff
	adrp	x4, _donna_nil@page
	add	x4, x4, _donna_nil@pageoff
	bl	_builder_pipeline_compile_loop
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_compile_file_list */

.text
.balign 4
.globl _builder_pipeline_compile_dir
_builder_pipeline_compile_dir:
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
	bl	_donna_files_list_dir
	mov	x2, x23
	mov	x1, x22
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	bl	_builder_pipeline_collect_pairs_recursive
	bl	_builder_pipeline_topo_sort_pairs
	mov	x5, x21
	mov	x2, x20
	mov	x1, x19
	adrp	x4, _donna_nil@page
	add	x4, x4, _donna_nil@pageoff
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	bl	_builder_pipeline_compile_pairs_loop
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_compile_dir */

.text
.balign 4
_builder_pipeline_compile_pairs_loop:
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
	beq	L36
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
	bl	_donna_list_append
	mov	x2, x26
	mov	x1, x25
	mov	x3, x0
	mov	x0, x24
	mov	x4, x21
	mov	x25, x2
	mov	x2, x1
	mov	x24, x1
	mov	x1, x23
	bl	_builder_pipeline_compile_module
	mov	x2, x25
	mov	x1, x24
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	ldr	x4, [x3]
	cmp	x4, #1
	beq	L34
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
	beq	L30
	str	x21, [x2]
	mov	x24, x1
	mov	x26, x21
	mov	x21, x23
	b	L33
L30:
	mov	x21, x23
	mov	x24, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x26, #1
L33:
	mov	x23, x0
	mov	x0, #16
	bl	_malloc
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
	bl	_malloc
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
	bl	_malloc
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
	bl	_builder_pipeline_compile_pairs_loop
	str	x0, [x19]
	b	L38
L34:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L38
L36:
	mov	x19, x20
	mov	x0, x22
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x5, x21
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x5, [x1]
	bl	_donna_result_Ok
L38:
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
/* end function builder_pipeline_compile_pairs_loop */

.text
.balign 4
_builder_pipeline_compile_loop:
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
	beq	L54
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x26, x2
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	str	x22, [x29, 24]
	mov	x22, x0
	bl	_donna_files_basename
	bl	_donna_files_drop_extension
	mov	x27, x0
	mov	x0, x22
	mov	x22, x0
	mov	x0, x23
	bl	_donna_string_is_empty
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
	beq	L42
	mov	x23, x1
	adrp	x1, _str174@page
	add	x1, x1, _str174@pageoff
	mov	x22, x0
	mov	x0, x23
	bl	___rt_str_concat
	mov	x1, x23
	ldr	x23, [x29, 40]
	mov	x24, x1
	mov	x1, x27
	bl	___rt_str_concat
	mov	x1, x24
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x22, [x23]
	b	L44
L42:
	mov	x22, x27
	str	x22, [x23]
L44:
	mov	x24, x1
	mov	x1, x19
	mov	x23, x0
	mov	x0, x25
	bl	_donna_list_append
	mov	x2, x26
	mov	x1, x24
	mov	x3, x0
	mov	x0, x23
	mov	x4, x21
	mov	x24, x2
	mov	x23, x1
	mov	x1, x22
	bl	_builder_pipeline_compile_module
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x19
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	ldr	x4, [x3]
	cmp	x4, #1
	beq	L52
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
	beq	L48
	str	x21, [x2]
	mov	x23, x1
	mov	x26, x21
	mov	x21, x22
	b	L51
L48:
	mov	x21, x22
	mov	x23, x1
	mov	x1, #1
	str	x1, [x2]
	mov	x26, #1
L51:
	mov	x22, x0
	mov	x0, #16
	bl	_malloc
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
	bl	_malloc
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
	bl	_malloc
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
	bl	_builder_pipeline_compile_loop
	str	x0, [x19]
	b	L56
L52:
	mov	x0, x3
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_result_Error
	str	x0, [x19]
	b	L56
L54:
	mov	x0, x19
	mov	x19, x20
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x6, x21
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x6, [x1]
	bl	_donna_result_Ok
L56:
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
/* end function builder_pipeline_compile_loop */

.text
.balign 4
.globl _builder_pipeline_qbe_available
_builder_pipeline_qbe_available:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str215@page
	add	x0, x0, _str215@pageoff
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_qbe_available */

.text
.balign 4
.globl _builder_pipeline_c_compiler_command
_builder_pipeline_c_compiler_command:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x0, _str218@page
	add	x0, x0, _str218@pageoff
	bl	_donna_shell_getenv
	bl	_donna_string_trim
	mov	x19, x0
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L69
	adrp	x0, _str227@page
	add	x0, x0, _str227@pageoff
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	cmp	x0, #1
	beq	L67
	adrp	x0, _str236@page
	add	x0, x0, _str236@pageoff
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x0, #1
	beq	L64
	adrp	x0, _str245@page
	add	x0, x0, _str245@pageoff
	str	x0, [x1]
	adrp	x0, _str245@page
	add	x0, x0, _str245@pageoff
	b	L66
L64:
	adrp	x0, _str244@page
	add	x0, x0, _str244@pageoff
	str	x0, [x1]
	adrp	x0, _str244@page
	add	x0, x0, _str244@pageoff
L66:
	str	x0, [x19]
	b	L69
L67:
	adrp	x0, _str235@page
	add	x0, x0, _str235@pageoff
	str	x0, [x19]
	adrp	x0, _str235@page
	add	x0, x0, _str235@pageoff
L69:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_c_compiler_command */

.text
.balign 4
.globl _builder_pipeline_c_compiler_available
_builder_pipeline_c_compiler_available:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_pipeline_c_compiler_command
	bl	_donna_string_is_empty
	cmp	x0, #0
	cset	x0, eq
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_c_compiler_available */

.text
.balign 4
.globl _builder_pipeline_c_command
_builder_pipeline_c_command:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x0
	bl	_builder_pipeline_c_compiler_command
	adrp	x1, _str253@page
	add	x1, x1, _str253@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_pipeline_join_shell_args
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_c_command */

.text
.balign 4
.globl _builder_pipeline_run_qbe
_builder_pipeline_run_qbe:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	bl	_donna_files_drop_extension
	adrp	x1, _str258@page
	add	x1, x1, _str258@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, x19
	mov	x20, x0
	bl	_builder_pipeline_file_is_current
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #1
	beq	L79
	mov	x20, x0
	mov	x0, x19
	bl	_builder_pipeline_sh_quote
	mov	x1, x0
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str266@page
	add	x0, x0, _str266@pageoff
	bl	___rt_str_concat
	adrp	x1, _str269@page
	add	x1, x1, _str269@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_builder_pipeline_sh_quote
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	adrp	x1, _str273@page
	add	x1, x1, _str273@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	cset	x2, eq
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	cmp	x2, #1
	beq	L78
	adrp	x0, _str282@page
	add	x0, x0, _str282@pageoff
	str	x0, [x1]
	adrp	x0, _str282@page
	add	x0, x0, _str282@pageoff
	b	L80
L78:
	str	x0, [x1]
	b	L80
L79:
	mov	x0, x19
L80:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_run_qbe */

.text
.balign 4
.globl _builder_pipeline_run_qbe_all
_builder_pipeline_run_qbe_all:
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
	beq	L85
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_builder_pipeline_run_qbe
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L84
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_run_qbe_all
	str	x0, [x19]
	b	L87
L84:
	mov	x1, x20
	bl	_builder_pipeline_run_qbe_all
	str	x0, [x19]
	b	L87
L85:
	mov	x0, x20
	bl	_donna_list_reverse
L87:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_run_qbe_all */

.text
.balign 4
.globl _builder_pipeline_run_qbe_all_checked
_builder_pipeline_run_qbe_all_checked:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_pipeline_run_qbe_all_checked_loop
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_run_qbe_all_checked */

.text
.balign 4
_builder_pipeline_run_qbe_all_checked_loop:
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
	beq	L95
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x22, [x1]
	mov	x19, x0
	bl	_builder_pipeline_run_qbe
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L94
	mov	x0, x22
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_run_qbe_all_checked_loop
	str	x0, [x19]
	b	L97
L94:
	bl	_builder_pipeline_qbe_compile_error
	bl	_donna_result_Error
	str	x0, [x19]
	b	L97
L95:
	mov	x0, x20
	bl	_donna_list_reverse
	bl	_donna_result_Ok
L97:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_run_qbe_all_checked_loop */

.text
.balign 4
_builder_pipeline_qbe_compile_error:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	adrp	x0, _str338@page
	add	x0, x0, _str338@pageoff
	bl	_utilities_colors_red
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str340@page
	add	x1, x1, _str340@pageoff
	bl	___rt_str_concat
	mov	x20, x0
	mov	x0, x19
	bl	_utilities_colors_path
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str344@page
	add	x1, x1, _str344@pageoff
	bl	___rt_str_concat
	mov	x1, x19
	mov	x19, x0
	adrp	x0, _str346@page
	add	x0, x0, _str346@pageoff
	bl	___rt_str_concat
	adrp	x1, _str348@page
	add	x1, x1, _str348@pageoff
	bl	___rt_str_concat
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_qbe_compile_error */

.text
.balign 4
.globl _builder_pipeline_compile_c
_builder_pipeline_compile_c:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	bl	_donna_files_exists
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	beq	L109
	mov	x21, x1
	mov	x19, x0
	bl	_builder_pipeline_file_is_current
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L107
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x22
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x2, #1
	str	x2, [x21]
	mov	x2, #8
	add	x3, x21, x2
	adrp	x2, _str370@page
	add	x2, x2, _str370@pageoff
	str	x2, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x21, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x1, x20
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	mov	x20, x1
	add	x1, x21, x0
	adrp	x0, _str377@page
	add	x0, x0, _str377@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x3, x0, x2
	adrp	x2, _str381@page
	add	x2, x2, _str381@pageoff
	str	x2, [x3]
	mov	x20, x1
	mov	x1, #16
	add	x1, x0, x1
	str	x21, [x1]
	bl	_builder_pipeline_c_command
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str386@page
	add	x1, x1, _str386@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
	mov	x1, x20
	cmp	x0, #0
	cset	x0, eq
	mov	x21, x1
	mov	x1, #16
	sub	sp, sp, x1
	mov	x20, sp
	cmp	x0, #1
	beq	L105
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x20]
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	b	L106
L105:
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	str	x0, [x20]
L106:
	str	x0, [x19]
	b	L110
L107:
	mov	x20, x21
	mov	x0, #24
	bl	_malloc
	mov	x1, x20
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	str	x0, [x19]
	b	L110
L109:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L110:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_compile_c */

.text
.balign 4
.globl _builder_pipeline_compile_ffi
_builder_pipeline_compile_ffi:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	adrp	x1, _str401@page
	add	x1, x1, _str401@pageoff
	bl	_donna_files_join
	mov	x19, x0
	mov	x0, x19
	bl	_donna_files_is_dir
	cmp	x0, #0
	beq	L113
	mov	x0, x19
	bl	_donna_files_list_dir
	mov	x2, x20
	mov	x1, x19
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	bl	_builder_pipeline_compile_c_files
	b	L114
L113:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L114:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_compile_ffi */

.text
.balign 4
_builder_pipeline_compile_c_files:
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
	beq	L120
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x20, [x2]
	mov	x21, x1
	adrp	x1, _str423@page
	add	x1, x1, _str423@pageoff
	mov	x19, x0
	bl	_donna_string_ends_with
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #0
	beq	L118
	mov	x21, x1
	mov	x1, x0
	mov	x24, x0
	mov	x0, x21
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x24
	mov	x24, x17
	bl	_donna_files_drop_extension
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str433@page
	add	x1, x1, _str433@pageoff
	bl	___rt_str_concat
	mov	x1, x0
	mov	x0, x24
	mov	x24, x0
	mov	x0, x22
	bl	_donna_files_join
	mov	x1, x0
	mov	x0, x24
	bl	_builder_pipeline_compile_c
	mov	x1, x21
	mov	x21, x1
	mov	x1, x23
	bl	_donna_list_append
	mov	x2, x22
	mov	x1, x21
	mov	x3, x0
	mov	x0, x20
	bl	_builder_pipeline_compile_c_files
	str	x0, [x19]
	b	L122
L118:
	mov	x0, x20
	mov	x20, x23
	mov	x2, x22
	mov	x3, x20
	bl	_builder_pipeline_compile_c_files
	str	x0, [x19]
	b	L122
L120:
	mov	x0, x23
	bl	_donna_list_reverse
L122:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_compile_c_files */

.text
.balign 4
.globl _builder_pipeline_mod_name_to_stem
_builder_pipeline_mod_name_to_stem:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, _str442@page
	add	x2, x2, _str442@pageoff
	adrp	x1, _str441@page
	add	x1, x1, _str441@pageoff
	bl	_donna_string_replace
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_mod_name_to_stem */

.text
.balign 4
_builder_pipeline_file_is_current:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	mov	x20, x0
	mov	x0, x19
	bl	_donna_files_exists
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	beq	L127
	bl	_builder_pipeline_sh_quote
	mov	x1, x0
	mov	x0, x19
	mov	x19, x0
	adrp	x0, _str450@page
	add	x0, x0, _str450@pageoff
	bl	___rt_str_concat
	adrp	x1, _str453@page
	add	x1, x1, _str453@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_pipeline_sh_quote
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	bl	_donna_shell_run
	cmp	x0, #0
	cset	x0, ne
	b	L128
L127:
	mov	x0, #0
L128:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_file_is_current */

.text
.balign 4
_builder_pipeline_sh_quote:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x2, _str462@page
	add	x2, x2, _str462@pageoff
	adrp	x1, _str461@page
	add	x1, x1, _str461@pageoff
	bl	_donna_string_replace
	mov	x1, x0
	adrp	x0, _str460@page
	add	x0, x0, _str460@pageoff
	bl	___rt_str_concat
	adrp	x1, _str465@page
	add	x1, x1, _str465@pageoff
	bl	___rt_str_concat
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_sh_quote */

.text
.balign 4
_builder_pipeline_join_shell_args:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L139
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L135
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L136
L135:
	mov	x1, #16
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L136:
	cmp	w1, #0
	bne	L138
	mov	x1, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	bl	_builder_pipeline_sh_quote
	adrp	x1, _str500@page
	add	x1, x1, _str500@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_builder_pipeline_join_shell_args
	mov	x1, x0
	mov	x0, x19
	bl	___rt_str_concat
	b	L140
L138:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_pipeline_sh_quote
	b	L140
L139:
	adrp	x0, _str473@page
	add	x0, x0, _str473@pageoff
L140:
	ldr	x19, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_join_shell_args */

.text
.balign 4
_builder_pipeline_render_errors:
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
	beq	L143
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
	bl	_builder_pipeline_render_errors
	b	L145
L143:
	mov	x0, x19
	bl	_donna_list_reverse
L145:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_render_errors */

.text
.balign 4
_builder_pipeline_collect_donna:
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
	beq	L151
	mov	x2, #8
	add	x2, x0, x2
	ldr	x21, [x2]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x22, x1
	adrp	x1, _str533@page
	add	x1, x1, _str533@pageoff
	mov	x19, x0
	mov	x0, x21
	bl	_donna_string_ends_with
	mov	x1, x22
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L149
	mov	x2, x20
	mov	x23, x1
	bl	_builder_pipeline_collect_donna
	str	x0, [x19]
	b	L153
L149:
	mov	x23, x1
	mov	x1, x21
	mov	x21, x0
	mov	x0, x23
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_collect_donna
	str	x0, [x19]
	b	L153
L151:
	mov	x0, x20
	bl	_donna_list_reverse
L153:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_collect_donna */

.text
.balign 4
_builder_pipeline_collect_pairs_recursive:
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
	beq	L171
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
	bl	_donna_files_join
	mov	x1, x22
	mov	x25, x0
	mov	x0, x19
	mov	x23, x1
	adrp	x1, _str560@page
	add	x1, x1, _str560@pageoff
	mov	x19, x0
	bl	_donna_string_ends_with
	mov	x2, x20
	mov	x1, x0
	mov	x0, x19
	mov	x22, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L165
	mov	x20, x0
	mov	x0, x25
	bl	_donna_files_is_dir
	mov	x2, x22
	mov	x1, x0
	mov	x0, x20
	mov	x26, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	L162
	mov	x22, x0
	mov	x0, x26
	bl	_donna_string_is_empty
	mov	x1, x23
	mov	x2, x0
	mov	x0, x22
	mov	x3, #16
	sub	sp, sp, x3
	mov	x22, sp
	str	x22, [x29, 16]
	cmp	x2, #1
	beq	L159
	mov	x22, x1
	adrp	x1, _str598@page
	add	x1, x1, _str598@pageoff
	mov	x27, x0
	mov	x0, x26
	bl	___rt_str_concat
	mov	x1, x22
	ldr	x22, [x29, 16]
	mov	x23, x1
	mov	x1, x27
	bl	___rt_str_concat
	str	x0, [x22]
	b	L161
L159:
	mov	x23, x1
	str	x0, [x22]
L161:
	mov	x22, x0
	mov	x0, x25
	bl	_donna_files_list_dir
	mov	x2, x26
	mov	x1, x23
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	mov	x23, x2
	mov	x2, x22
	mov	x22, x1
	mov	x1, x25
	bl	_builder_pipeline_collect_pairs_recursive
	bl	_donna_list_reverse
	mov	x1, x22
	mov	x22, x1
	mov	x1, x24
	bl	_donna_list_append
	mov	x2, x23
	mov	x1, x22
	mov	x3, x0
	mov	x0, x21
	bl	_builder_pipeline_collect_pairs_recursive
	str	x0, [x20]
	b	L164
L162:
	mov	x0, x21
	mov	x21, x24
	mov	x2, x26
	mov	x1, x23
	mov	x3, x21
	mov	x24, x2
	mov	x22, x1
	mov	x21, x0
	bl	_builder_pipeline_collect_pairs_recursive
	str	x0, [x20]
L164:
	str	x0, [x19]
	b	L173
L165:
	mov	x20, x24
	mov	x24, x22
	mov	x22, x23
	mov	x23, x25
	bl	_donna_files_drop_extension
	mov	x26, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, x24
	bl	_donna_string_is_empty
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	mov	x3, #16
	sub	sp, sp, x3
	mov	x21, sp
	cmp	x2, #1
	beq	L168
	mov	x25, x1
	adrp	x1, _str574@page
	add	x1, x1, _str574@pageoff
	mov	x22, x0
	mov	x0, x24
	bl	___rt_str_concat
	mov	x1, x25
	mov	x25, x1
	mov	x1, x26
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	str	x22, [x21]
	b	L170
L168:
	mov	x22, x26
	mov	x25, x1
	str	x22, [x21]
L170:
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
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
	bl	_malloc
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
	bl	_builder_pipeline_collect_pairs_recursive
	str	x0, [x19]
	b	L173
L171:
	mov	x0, x24
	bl	_donna_list_reverse
L173:
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
/* end function builder_pipeline_collect_pairs_recursive */

.text
.balign 4
_builder_pipeline_topo_sort_pairs:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	mov	x19, x0
	bl	_builder_pipeline_collect_mod_names
	mov	x1, x0
	mov	x0, x19
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_builder_pipeline_tag_with_local_deps
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_pipeline_kahn_sort
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_topo_sort_pairs */

.text
.balign 4
_builder_pipeline_collect_mod_names:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L178
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
	bl	_malloc
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
	bl	_builder_pipeline_collect_mod_names
	b	L180
L178:
	mov	x0, x19
	bl	_donna_list_reverse
L180:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_collect_mod_names */

.text
.balign 4
_builder_pipeline_tag_with_local_deps:
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
	beq	L183
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
	bl	_donna_files_read
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str649@page
	add	x1, x1, _str649@pageoff
	bl	_donna_string_split
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_pipeline_parse_import_names
	mov	x1, x21
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x24, x1
	bl	_builder_pipeline_filter_local_deps
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_tag_with_local_deps
	b	L185
L183:
	mov	x0, x19
	bl	_donna_list_reverse
L185:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_tag_with_local_deps */

.text
.balign 4
_builder_pipeline_parse_import_names:
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
	beq	L191
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x21, [x1]
	adrp	x1, _str673@page
	add	x1, x1, _str673@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L189
	mov	x22, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x22
	mov	x2, #7
	sub	x2, x1, x2
	mov	x1, #7
	bl	_donna_string_slice
	bl	_builder_pipeline_import_path_only
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_parse_import_names
	str	x0, [x19]
	b	L193
L189:
	mov	x0, x21
	mov	x1, x20
	bl	_builder_pipeline_parse_import_names
	str	x0, [x19]
	b	L193
L191:
	mov	x0, x20
	bl	_donna_list_reverse
L193:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_parse_import_names */

.text
.balign 4
_builder_pipeline_import_path_only:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	bl	_donna_string_trim
	adrp	x1, _str692@page
	add	x1, x1, _str692@pageoff
	mov	x19, x0
	bl	_donna_string_split
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L197
	mov	x0, x1
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_donna_string_trim
L197:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_import_path_only */

.text
.balign 4
_builder_pipeline_filter_local_deps:
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
	beq	L203
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x23, x1
	bl	_builder_pipeline_local_dep_name
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x21
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L201
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_filter_local_deps
	str	x0, [x19]
	b	L205
L201:
	mov	x1, x23
	mov	x2, x20
	bl	_builder_pipeline_filter_local_deps
	str	x0, [x19]
	b	L205
L203:
	mov	x0, x20
	bl	_donna_list_reverse
L205:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_filter_local_deps */

.text
.balign 4
_builder_pipeline_local_dep_name:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x1
	mov	x1, x0
	mov	x20, x0
	mov	x0, x19
	bl	_donna_list_contains_str
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #1
	beq	L208
	bl	_builder_pipeline_path_last_segment
	mov	x1, x0
	mov	x0, x19
	bl	_builder_pipeline_find_local_dep_by_last_segment
L208:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_local_dep_name */

.text
.balign 4
_builder_pipeline_find_local_dep_by_last_segment:
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
	beq	L214
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	bl	_builder_pipeline_path_last_segment
	mov	x1, x21
	mov	x21, x1
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L213
	mov	x0, x20
	bl	_builder_pipeline_find_local_dep_by_last_segment
	str	x0, [x19]
	b	L215
L213:
	str	x0, [x19]
	b	L215
L214:
	adrp	x0, _str746@page
	add	x0, x0, _str746@pageoff
L215:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_find_local_dep_by_last_segment */

.text
.balign 4
_builder_pipeline_path_last_segment:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _str761@page
	add	x1, x1, _str761@pageoff
	bl	_donna_string_split
	adrp	x1, _str763@page
	add	x1, x1, _str763@pageoff
	bl	_builder_pipeline_path_last_segment_loop
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_path_last_segment */

.text
.balign 4
_builder_pipeline_path_last_segment_loop:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L220
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	bl	_builder_pipeline_path_last_segment_loop
	b	L221
L220:
	mov	x0, x1
L221:
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_path_last_segment_loop */

.text
.balign 4
_builder_pipeline_kahn_sort:
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
	beq	L227
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	mov	x1, x19
	bl	_builder_pipeline_split_ready
	mov	x1, x0
	mov	x0, x19
	ldr	x21, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x19, x0
	mov	x0, x21
	bl	_donna_list_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L225
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	mov	x23, x0
	mov	x0, x21
	bl	_builder_pipeline_tagged_names
	mov	x1, x0
	mov	x0, x23
	bl	_donna_list_append
	mov	x1, x0
	mov	x0, x21
	mov	x21, x1
	mov	x1, x22
	bl	_builder_pipeline_prepend_tagged_pairs
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	bl	_builder_pipeline_kahn_sort
	str	x0, [x19]
	b	L229
L225:
	mov	x0, x20
	mov	x20, x22
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_pipeline_tagged_to_pairs
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_donna_list_reverse
	mov	x1, x20
	bl	_donna_list_append
	str	x0, [x19]
	b	L229
L227:
	mov	x0, x22
	bl	_donna_list_reverse
L229:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_kahn_sort */

.text
.balign 4
_builder_pipeline_split_ready:
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
	beq	L234
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
	bl	_builder_pipeline_all_compiled
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L233
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
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
	bl	_builder_pipeline_split_ready
	str	x0, [x19]
	b	L236
L233:
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
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
	bl	_builder_pipeline_split_ready
	str	x0, [x19]
	b	L236
L234:
	mov	x19, x20
	mov	x0, x21
	bl	_donna_list_reverse
	mov	x20, x0
	mov	x0, x19
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	str	x20, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
L236:
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
/* end function builder_pipeline_split_ready */

.text
.balign 4
_builder_pipeline_all_compiled:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L242
	mov	x20, x1
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x2, #16
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x19, x0
	mov	x0, x20
	bl	_donna_list_contains_str
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L241
	mov	x0, #0
	str	x0, [x19]
	mov	x0, #0
	b	L243
L241:
	bl	_builder_pipeline_all_compiled
	str	x0, [x19]
	b	L243
L242:
	mov	x0, #1
L243:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_all_compiled */

.text
.balign 4
_builder_pipeline_tagged_names:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L246
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
	bl	_malloc
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
	bl	_builder_pipeline_tagged_names
	b	L248
L246:
	mov	x0, x19
	bl	_donna_list_reverse
L248:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_tagged_names */

.text
.balign 4
_builder_pipeline_tagged_to_pairs:
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
	beq	L251
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
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_tagged_to_pairs
	b	L253
L251:
	mov	x0, x19
	bl	_donna_list_reverse
L253:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_tagged_to_pairs */

.text
.balign 4
_builder_pipeline_prepend_tagged_pairs:
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
	beq	L256
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
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_prepend_tagged_pairs
	b	L257
L256:
	mov	x0, x19
L257:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_prepend_tagged_pairs */

.text
.balign 4
_builder_pipeline_sort_by_import_count:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_pipeline_tag_with_count
	bl	_builder_pipeline_isort
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_pipeline_extract_sorted
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_sort_by_import_count */

.text
.balign 4
_builder_pipeline_tag_with_count:
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
	beq	L262
	mov	x1, #8
	add	x1, x0, x1
	ldr	x21, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x20, x0
	mov	x0, x21
	bl	_donna_files_read
	bl	_builder_pipeline_count_imports
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_tag_with_count
	b	L264
L262:
	mov	x0, x19
	bl	_donna_list_reverse
L264:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_tag_with_count */

.text
.balign 4
_builder_pipeline_count_imports:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _str963@page
	add	x1, x1, _str963@pageoff
	bl	_donna_string_split
	mov	x1, #0
	bl	_builder_pipeline_count_import_lines
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_count_imports */

.text
.balign 4
_builder_pipeline_count_import_lines:
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
	beq	L271
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x19, [x1]
	adrp	x1, _str976@page
	add	x1, x1, _str976@pageoff
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L270
	mov	x1, x20
	bl	_builder_pipeline_count_import_lines
	str	x0, [x19]
	b	L272
L270:
	mov	x1, #1
	add	x1, x20, x1
	bl	_builder_pipeline_count_import_lines
	str	x0, [x19]
	b	L272
L271:
	mov	x0, x20
L272:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_count_import_lines */

.text
.balign 4
_builder_pipeline_isort:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L275
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_pipeline_isort
	mov	x1, x0
	mov	x0, x19
	bl	_builder_pipeline_insert_by_count
	b	L276
L275:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L276:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_isort */

.text
.balign 4
_builder_pipeline_insert_by_count:
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
	beq	L282
	mov	x0, #8
	add	x0, x21, x0
	ldr	x22, [x0]
	mov	x0, #16
	add	x0, x21, x0
	ldr	x23, [x0]
	mov	x0, x19
	bl	_builder_pipeline_pair_count
	mov	x20, x0
	mov	x0, x22
	bl	_builder_pipeline_pair_count
	mov	x1, x23
	cmp	x20, x0
	cset	x0, le
	mov	x2, #16
	mov	x20, x19
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x0, #1
	beq	L281
	mov	x21, x22
	mov	x0, x20
	bl	_builder_pipeline_insert_by_count
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L283
L281:
	mov	x0, #24
	bl	_malloc
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
	b	L283
L282:
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
L283:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_insert_by_count */

.text
.balign 4
_builder_pipeline_pair_count:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_pair_count */

.text
.balign 4
_builder_pipeline_extract_sorted:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L288
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
	bl	_malloc
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
	bl	_builder_pipeline_extract_sorted
	b	L290
L288:
	mov	x0, x19
	bl	_donna_list_reverse
L290:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_extract_sorted */

.text
.balign 4
_builder_pipeline_sort_pairs_by_import_count:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_pipeline_tag_pairs_with_count
	bl	_builder_pipeline_isort_pairs
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_pipeline_extract_pairs_sorted
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_sort_pairs_by_import_count */

.text
.balign 4
_builder_pipeline_tag_pairs_with_count:
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
	beq	L295
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
	bl	_donna_files_read
	bl	_builder_pipeline_count_imports
	mov	x22, x0
	mov	x0, x21
	mov	x21, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	str	x23, [x21]
	mov	x1, #8
	add	x1, x21, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	str	x22, [x20]
	mov	x1, #8
	add	x1, x20, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_pipeline_tag_pairs_with_count
	b	L297
L295:
	mov	x0, x19
	bl	_donna_list_reverse
L297:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_tag_pairs_with_count */

.text
.balign 4
_builder_pipeline_isort_pairs:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L300
	mov	x1, #8
	add	x1, x0, x1
	ldr	x19, [x1]
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_builder_pipeline_isort_pairs
	mov	x1, x0
	mov	x0, x19
	bl	_builder_pipeline_insert_pair_by_count
	b	L301
L300:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L301:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_pipeline_isort_pairs */

.text
.balign 4
_builder_pipeline_insert_pair_by_count:
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
	beq	L307
	mov	x0, #8
	add	x0, x21, x0
	ldr	x22, [x0]
	mov	x0, #16
	add	x0, x21, x0
	ldr	x23, [x0]
	mov	x0, x19
	bl	_builder_pipeline_pair_int
	mov	x20, x0
	mov	x0, x22
	bl	_builder_pipeline_pair_int
	mov	x1, x23
	cmp	x20, x0
	cset	x0, le
	mov	x2, #16
	mov	x20, x19
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x0, #1
	beq	L306
	mov	x21, x22
	mov	x0, x20
	bl	_builder_pipeline_insert_pair_by_count
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x21, [x1]
	mov	x1, #16
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L308
L306:
	mov	x0, #24
	bl	_malloc
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
	b	L308
L307:
	mov	x0, #24
	bl	_malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x19, [x1]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
L308:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_pipeline_insert_pair_by_count */

.text
.balign 4
_builder_pipeline_pair_int:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_pipeline_pair_int */

.text
.balign 4
_builder_pipeline_extract_pairs_sorted:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L313
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
	bl	_malloc
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
	bl	_builder_pipeline_extract_pairs_sorted
	b	L315
L313:
	mov	x0, x19
	bl	_donna_list_reverse
L315:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_pipeline_extract_pairs_sorted */

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

