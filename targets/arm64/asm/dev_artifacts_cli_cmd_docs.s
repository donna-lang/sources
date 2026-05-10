.data
.balign 8
str7:
	.ascii "."
	.byte 0
/* end data */

.data
.balign 8
str18:
	.ascii "error"
	.byte 0
/* end data */

.data
.balign 8
str20:
	.ascii ": "
	.byte 0
/* end data */

.data
.balign 8
str27:
	.ascii "docs"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str36:
	.ascii "index.html"
	.byte 0
/* end data */

.data
.balign 8
str39:
	.ascii "docs.html"
	.byte 0
/* end data */

.data
.balign 8
str44:
	.ascii "  Docs"
	.byte 0
/* end data */

.data
.balign 8
str46:
	.ascii " "
	.byte 226
	.byte 134
	.byte 146
	.ascii " "
	.byte 0
/* end data */

.data
.balign 8
str60:
	.ascii "could not derive GitHub owner/repo from donna.toml"
	.byte 0
/* end data */

.data
.balign 8
str61:
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
str82:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str96:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str107:
	.ascii "README.md"
	.byte 0
/* end data */

.data
.balign 8
str116:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str138:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str158:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str171:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl cli_cmd_docs_run
cli_cmd_docs_run:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	bl	cli_cmd_docs_first_positional
	mov	x19, x0
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	.L2
	adrp	x0, str7
	add	x0, x0, #:lo12:str7
.L2:
	mov	x20, x0
	bl	builder_scanner_scan
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L4
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x21, x0
	mov	x0, x20
	bl	builder_scanner_scan_meta
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	builder_scanner_project_src_dir
	mov	x1, x0
	mov	x0, x20
	mov	x24, x1
	adrp	x1, str27
	add	x1, x1, #:lo12:str27
	mov	x22, x0
	bl	donna_files_join
	mov	x20, x0
	bl	donna_time_now_us
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x23, x0
	mov	x0, x20
	bl	donna_files_mkdir
	mov	x1, x24
	mov	x0, x23
	mov	x24, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	mov	x23, x0
	mov	x0, x24
	bl	cli_cmd_docs_find_donna_files
	mov	x1, x24
	adrp	x2, donna_nil
	add	x2, x2, #:lo12:donna_nil
	bl	cli_cmd_docs_extract_modules
	mov	x17, x0
	mov	x0, x23
	mov	x23, x17
	bl	cli_cmd_docs_read_readme
	mov	x1, x0
	mov	x0, x21
	mov	x21, x0
	bl	tools_docgen_render_render_index
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x21, x0
	bl	tools_docgen_render_render_docs
	mov	x1, x23
	mov	x23, x0
	mov	x0, x21
	mov	x24, x1
	adrp	x1, str36
	add	x1, x1, #:lo12:str36
	mov	x21, x0
	mov	x0, x20
	bl	donna_files_join
	mov	x1, x24
	bl	donna_files_write
	mov	x1, x23
	mov	x0, x21
	mov	x23, x1
	adrp	x1, str39
	add	x1, x1, #:lo12:str39
	mov	x21, x0
	mov	x0, x20
	bl	donna_files_join
	mov	x1, x23
	bl	donna_files_write
	bl	donna_time_now_us
	sub	x0, x0, x22
	bl	utilities_logger_docs_ok
	mov	x0, x21
	bl	cli_cmd_docs_warn_missing_github_repo
	mov	x0, x20
	mov	x20, x0
	adrp	x0, str44
	add	x0, x0, #:lo12:str44
	bl	utilities_colors_orange
	adrp	x1, str46
	add	x1, x1, #:lo12:str46
	bl	__rt_str_concat
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	utilities_colors_dim
	mov	x1, x0
	mov	x0, x20
	bl	__rt_str_concat
	str	x0, [x19]
	b	.L5
.L4:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x20, [x0]
	adrp	x0, str18
	add	x0, x0, #:lo12:str18
	bl	utilities_colors_red
	mov	x1, x20
	mov	x20, x1
	adrp	x1, str20
	add	x1, x1, #:lo12:str20
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	str	x0, [x19]
.L5:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_docs_run, @function
.size cli_cmd_docs_run, .-cli_cmd_docs_run
/* end function cli_cmd_docs_run */

.text
.balign 16
cli_cmd_docs_warn_missing_github_repo:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_scanner_meta_github_owner_repo
	ldr	x0, [x0]
	cmp	x0, #1
	beq	.L8
	adrp	x0, str60
	add	x0, x0, #:lo12:str60
	bl	utilities_logger_warn
	adrp	x0, str61
	add	x0, x0, #:lo12:str61
	bl	utilities_logger_hint
.L8:
	mov	w0, #0
	ldp	x29, x30, [sp], 16
	ret
.type cli_cmd_docs_warn_missing_github_repo, @function
.size cli_cmd_docs_warn_missing_github_repo, .-cli_cmd_docs_warn_missing_github_repo
/* end function cli_cmd_docs_warn_missing_github_repo */

.text
.balign 16
cli_cmd_docs_extract_modules:
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
	beq	.L12
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	mov	x21, x1
	mov	x1, #16
	add	x0, x0, x1
	ldr	x20, [x0]
	mov	x0, x21
	bl	donna_files_read
	mov	x1, x21
	mov	x23, x1
	mov	x1, x22
	mov	x21, x0
	mov	x0, x23
	bl	cli_cmd_docs_path_to_module
	mov	x1, x23
	mov	x2, x0
	mov	x0, x21
	bl	tools_docgen_extractor_extract
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
	bl	cli_cmd_docs_extract_modules
	b	.L14
.L12:
	mov	x0, x19
	bl	donna_list_reverse
.L14:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_docs_extract_modules, @function
.size cli_cmd_docs_extract_modules, .-cli_cmd_docs_extract_modules
/* end function cli_cmd_docs_extract_modules */

.text
.balign 16
cli_cmd_docs_path_to_module:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x0
	mov	x0, x1
	adrp	x1, str82
	add	x1, x1, #:lo12:str82
	bl	__rt_str_concat
	mov	x1, x0
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L17
	mov	x0, x20
	b	.L18
.L17:
	mov	x19, x0
	bl	donna_string_length
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_length
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	bl	donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	sub	x2, x19, x2
	bl	donna_string_slice
.L18:
	adrp	x1, str96
	add	x1, x1, #:lo12:str96
	mov	x19, x0
	bl	donna_string_ends_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L20
	str	x0, [x19]
	b	.L21
.L20:
	mov	x20, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x20
	mov	x2, #6
	sub	x2, x1, x2
	mov	x1, #0
	bl	donna_string_slice
	str	x0, [x19]
.L21:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type cli_cmd_docs_path_to_module, @function
.size cli_cmd_docs_path_to_module, .-cli_cmd_docs_path_to_module
/* end function cli_cmd_docs_path_to_module */

.text
.balign 16
cli_cmd_docs_read_readme:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str107
	add	x1, x1, #:lo12:str107
	bl	donna_files_join
	mov	x19, x0
	bl	donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L24
	adrp	x0, str116
	add	x0, x0, #:lo12:str116
	b	.L25
.L24:
	bl	donna_files_read
.L25:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_docs_read_readme, @function
.size cli_cmd_docs_read_readme, .-cli_cmd_docs_read_readme
/* end function cli_cmd_docs_read_readme */

.text
.balign 16
cli_cmd_docs_find_donna_files:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, x19
	bl	donna_files_list_dir
	mov	x2, x20
	mov	x1, x19
	bl	cli_cmd_docs_collect_entries
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_docs_find_donna_files, @function
.size cli_cmd_docs_find_donna_files, .-cli_cmd_docs_find_donna_files
/* end function cli_cmd_docs_find_donna_files */

.text
.balign 16
cli_cmd_docs_collect_entries:
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
	beq	.L39
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
	bl	donna_files_join
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	donna_files_is_dir
	mov	x1, x23
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L36
	mov	x24, x1
	adrp	x1, str138
	add	x1, x1, #:lo12:str138
	bl	donna_string_ends_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #1
	beq	.L33
	str	x22, [x21]
	mov	x1, x24
	mov	x0, x22
	b	.L34
.L33:
	mov	x23, x0
	mov	x0, #24
	bl	malloc
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
.L34:
	str	x0, [x20]
	mov	x17, x19
	mov	x19, x0
	mov	x0, x17
	b	.L38
.L36:
	mov	x0, x21
	mov	x21, x1
	mov	x1, x22
	bl	cli_cmd_docs_find_donna_files
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	str	x19, [x20]
.L38:
	mov	x2, x19
	bl	cli_cmd_docs_collect_entries
	b	.L40
.L39:
	mov	x0, x22
.L40:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type cli_cmd_docs_collect_entries, @function
.size cli_cmd_docs_collect_entries, .-cli_cmd_docs_collect_entries
/* end function cli_cmd_docs_collect_entries */

.text
.balign 16
cli_cmd_docs_first_positional:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L49
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L45
	mov	x1, #0
	str	x1, [x19]
	mov	x1, #0
	b	.L46
.L45:
	mov	x20, x0
	mov	x0, #8
	add	x0, x20, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	adrp	x1, str171
	add	x1, x1, #:lo12:str171
	bl	strcmp
	mov	x1, x0
	mov	x0, x20
	cmp	x1, #0
	cset	x1, eq
	mov	x2, #1
	and	x1, x1, x2
	str	x1, [x19]
.L46:
	cmp	w1, #0
	bne	.L48
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	bl	cli_cmd_docs_first_positional
	b	.L50
.L48:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L50
.L49:
	adrp	x0, str158
	add	x0, x0, #:lo12:str158
.L50:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type cli_cmd_docs_first_positional, @function
.size cli_cmd_docs_first_positional, .-cli_cmd_docs_first_positional
/* end function cli_cmd_docs_first_positional */

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
