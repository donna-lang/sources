.data
.balign 8
_str7:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
_str18:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
_str20:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
_str27:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str36:
	.ascii "index.html"
	.byte 0
/* end data */

.data
.balign 8
_str39:
	.ascii "docs.html"
	.byte 0
/* end data */

.data
.balign 8
_str44:
	.ascii "  Docs"
	.byte 0
/* end data */

.data
.balign 8
_str46:
	.ascii " "
	.byte 226
	.byte 134
	.byte 146
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
_str60:
	.ascii "could not derive GitHub owner/repo from donna.toml"
	.byte 0
/* end data */

.data
.balign 8
_str61:
	.ascii "set `repository = { type = "
	.byte 34
	.ascii "github"
	.byte 34
	.ascii ", user = "
	.byte 34
	.ascii "OWNER"
	.byte 34
	.ascii ", repo = "
	.byte 34
	.ascii "REPO"
	.byte 34
	.ascii " }` so docs and badges can point at GitHub Pages"
	.byte 0
/* end data */

.data
.balign 8
_str82:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str96:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str107:
	.ascii "README.md"
	.byte 0
/* end data */

.data
.balign 8
_str116:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str138:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str158:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str171:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _cli_cmd_docs_run
_cli_cmd_docs_run:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	bl	_cli_cmd_docs_first_positional
	mov	x19, x0
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	L2
	adrp	x0, _str7@page
	add	x0, x0, _str7@pageoff
L2:
	mov	x20, x0
	bl	_builder_scanner_scan
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L4
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x21, x0
	mov	x0, x20
	bl	_builder_scanner_scan_meta
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_builder_scanner_project_src_dir
	mov	x1, x0
	mov	x0, x20
	mov	x24, x1
	adrp	x1, _str27@page
	add	x1, x1, _str27@pageoff
	mov	x22, x0
	bl	_donna_files_join
	mov	x20, x0
	bl	_donna_time_now_us
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, x20
	bl	_donna_files_mkdir
	mov	x1, x24
	mov	x0, x23
	mov	x24, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	mov	x23, x0
	mov	x0, x24
	bl	_cli_cmd_docs_find_donna_files
	mov	x1, x24
	adrp	x2, _donna_nil@page
	add	x2, x2, _donna_nil@pageoff
	bl	_cli_cmd_docs_extract_modules
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	bl	_cli_cmd_docs_read_readme
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	_tools_docgen_render_render_index
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x0
	bl	_tools_docgen_render_render_docs
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x24, x1
	adrp	x1, _str36@page
	add	x1, x1, _str36@pageoff
	mov	x21, x0
	mov	x0, x20
	bl	_donna_files_join
	mov	x1, x24
	bl	_donna_files_write
	mov	x1, x23
	mov	x0, x21
	mov	x23, x1
	adrp	x1, _str39@page
	add	x1, x1, _str39@pageoff
	mov	x21, x0
	mov	x0, x20
	bl	_donna_files_join
	mov	x1, x23
	bl	_donna_files_write
	bl	_donna_time_now_us
	sub	x0, x0, x22
	bl	_utilities_logger_docs_ok
	mov	x0, x21
	bl	_cli_cmd_docs_warn_missing_github_repo
	mov	x0, x20
	mov	x20, x0
	adrp	x0, _str44@page
	add	x0, x0, _str44@pageoff
	bl	_utilities_colors_orange
	adrp	x1, _str46@page
	add	x1, x1, _str46@pageoff
	bl	___rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	_utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	___rt_str_concat
	str	x0, [x19]
	b	L5
L4:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, _str18@page
	add	x0, x0, _str18@pageoff
	bl	_utilities_colors_red
	mov	x1, x20
	mov	x20, x1
	adrp	x1, _str20@page
	add	x1, x1, _str20@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	str	x0, [x19]
L5:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_docs_run */

.text
.balign 4
_cli_cmd_docs_warn_missing_github_repo:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_scanner_meta_github_owner_repo
	ldr	x0, [x0]
	cmp	x0, #1
	beq	L8
	adrp	x0, _str60@page
	add	x0, x0, _str60@pageoff
	bl	_utilities_logger_warn
	adrp	x0, _str61@page
	add	x0, x0, _str61@pageoff
	bl	_utilities_logger_hint
L8:
	mov	w0, #0
	ldp	x29, x30, [sp], 16
	ret
/* end function cli_cmd_docs_warn_missing_github_repo */

.text
.balign 4
_cli_cmd_docs_extract_modules:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x19, x2
	mov	x22, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L12
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, x21
	bl	_donna_files_read
	mov	x1, x21
	mov	x23, x1
	mov	x1, x22
	mov	x21, x0
	mov	x0, x23
	bl	_cli_cmd_docs_path_to_module
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	bl	_tools_docgen_extractor_extract
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
	bl	_cli_cmd_docs_extract_modules
	b	L14
L12:
	mov	x0, x19
	bl	_donna_list_reverse
L14:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_docs_extract_modules */

.text
.balign 4
_cli_cmd_docs_path_to_module:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x0
	mov	x0, x1
	adrp	x1, _str82@page
	add	x1, x1, _str82@pageoff
	bl	___rt_str_concat
	mov	x1, x0
	mov	x19, x0
	mov	x0, x20
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L17
	mov	x0, x20
	b	L18
L17:
	mov	x19, x0
	bl	_donna_string_length
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_donna_string_length
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	_donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	sub	x2, x19, x2
	bl	_donna_string_slice
L18:
	adrp	x1, _str96@page
	add	x1, x1, _str96@pageoff
	mov	x19, x0
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L20
	str	x0, [x19]
	b	L21
L20:
	mov	x20, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x20
	mov	x2, #6
	sub	x2, x1, x2
	mov	x1, #0
	bl	_donna_string_slice
	str	x0, [x19]
L21:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function cli_cmd_docs_path_to_module */

.text
.balign 4
_cli_cmd_docs_read_readme:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _str107@page
	add	x1, x1, _str107@pageoff
	bl	_donna_files_join
	mov	x19, x0
	bl	_donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L24
	adrp	x0, _str116@page
	add	x0, x0, _str116@pageoff
	b	L25
L24:
	bl	_donna_files_read
L25:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_docs_read_readme */

.text
.balign 4
_cli_cmd_docs_find_donna_files:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x19
	bl	_donna_files_list_dir
	mov	x2, x20
	mov	x1, x19
	bl	_cli_cmd_docs_collect_entries
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_docs_find_donna_files */

.text
.balign 4
_cli_cmd_docs_collect_entries:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x17, x2
	mov	x2, x0
	mov	x0, x17
	mov	x22, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	L39
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x23, x1
	mov	x1, x0
	mov	x20, x0
	mov	x0, x23
	bl	_donna_files_join
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	_donna_files_is_dir
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	L36
	mov	x24, x1
	adrp	x1, _str138@page
	add	x1, x1, _str138@pageoff
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	L33
	str	x22, [x21]
	mov	x1, x24
	mov	x0, x22
	b	L34
L33:
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x1, x24
	mov	x2, #1
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x23, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x22, [x2]
	str	x0, [x21]
L34:
	str	x0, [x20]
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
	b	L38
L36:
	mov	x0, x21
	mov	x21, x1
	mov	x1, x22
	bl	_cli_cmd_docs_find_donna_files
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x20]
L38:
	mov	x2, x19
	bl	_cli_cmd_docs_collect_entries
	b	L40
L39:
	mov	x0, x22
L40:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function cli_cmd_docs_collect_entries */

.text
.balign 4
_cli_cmd_docs_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L49
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L45
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	L46
L45:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, _str171@page
	add	x1, x1, _str171@pageoff
	bl	_strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
L46:
	cmp	w1, #0
	bne	L48
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	_cli_cmd_docs_first_positional
	b	L50
L48:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L50
L49:
	adrp	x0, _str158@page
	add	x0, x0, _str158@pageoff
L50:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function cli_cmd_docs_first_positional */

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

