.data
.balign 8
str18:
	.ascii "src"
	.byte 0
/* end data */

.data
.balign 8
str21:
	.ascii "ffi"
	.byte 0
/* end data */

.data
.balign 8
str23:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
str27:
	.ascii "dependencies"
	.byte 0
/* end data */

.data
.balign 8
str33:
	.ascii "dev-dependencies"
	.byte 0
/* end data */

.data
.balign 8
str41:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
str45:
	.ascii "dependencies"
	.byte 0
/* end data */

.data
.balign 8
str52:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii "dev-dependencies"
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str121:
	.ascii "path"
	.byte 0
/* end data */

.data
.balign 8
str139:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str166:
	.ascii "mkdir -p "
	.byte 0
/* end data */

.data
.balign 8
str189:
	.ascii "rm -rf "
	.byte 0
/* end data */

.data
.balign 8
str192:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str199:
	.ascii "advice.detachedHead=false"
	.byte 0
/* end data */

.data
.balign 8
str203:
	.ascii "-c"
	.byte 0
/* end data */

.data
.balign 8
str207:
	.ascii "clone"
	.byte 0
/* end data */

.data
.balign 8
str212:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str216:
	.ascii "checkout"
	.byte 0
/* end data */

.data
.balign 8
str223:
	.ascii "-C"
	.byte 0
/* end data */

.data
.balign 8
str260:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str269:
	.ascii "tag"
	.byte 0
/* end data */

.data
.balign 8
str277:
	.ascii "branch"
	.byte 0
/* end data */

.data
.balign 8
str285:
	.ascii "rev"
	.byte 0
/* end data */

.data
.balign 8
str291:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str295:
	.ascii "--sort=-v:refname"
	.byte 0
/* end data */

.data
.balign 8
str299:
	.ascii "--tags"
	.byte 0
/* end data */

.data
.balign 8
str303:
	.ascii "ls-remote"
	.byte 0
/* end data */

.data
.balign 8
str308:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
str317:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str322:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
str337:
	.ascii "^{}"
	.byte 0
/* end data */

.data
.balign 8
str345:
	.ascii "refs/tags/"
	.byte 0
/* end data */

.data
.balign 8
str385:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str392:
	.ascii "1"
	.byte 0
/* end data */

.data
.balign 8
str396:
	.ascii "--depth"
	.byte 0
/* end data */

.data
.balign 8
str400:
	.ascii "clone"
	.byte 0
/* end data */

.data
.balign 8
str405:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str415:
	.ascii "--branch"
	.byte 0
/* end data */

.data
.balign 8
str419:
	.ascii "1"
	.byte 0
/* end data */

.data
.balign 8
str423:
	.ascii "--depth"
	.byte 0
/* end data */

.data
.balign 8
str427:
	.ascii "clone"
	.byte 0
/* end data */

.data
.balign 8
str438:
	.ascii "rm -rf "
	.byte 0
/* end data */

.data
.balign 8
str441:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str448:
	.ascii "clone"
	.byte 0
/* end data */

.data
.balign 8
str459:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str463:
	.ascii "checkout"
	.byte 0
/* end data */

.data
.balign 8
str470:
	.ascii "-C"
	.byte 0
/* end data */

.data
.balign 8
str478:
	.ascii "HOME"
	.byte 0
/* end data */

.data
.balign 8
str480:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
str482:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str484:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
str485:
	.ascii "HEAD"
	.byte 0
/* end data */

.data
.balign 8
str489:
	.ascii "rev-parse"
	.byte 0
/* end data */

.data
.balign 8
str496:
	.ascii "-C"
	.byte 0
/* end data */

.data
.balign 8
str511:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl builder_dependencies_Dep
builder_dependencies_Dep:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x2, #0
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x19, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x1, [x2]
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type builder_dependencies_Dep, @function
.size builder_dependencies_Dep, .-builder_dependencies_Dep
/* end function builder_dependencies_Dep */

.text
.balign 16
.globl builder_dependencies_dep_name
builder_dependencies_dep_name:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_dependencies_dep_name, @function
.size builder_dependencies_dep_name, .-builder_dependencies_dep_name
/* end function builder_dependencies_dep_name */

.text
.balign 16
.globl builder_dependencies_dep_path
builder_dependencies_dep_path:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_dependencies_dep_path, @function
.size builder_dependencies_dep_path, .-builder_dependencies_dep_path
/* end function builder_dependencies_dep_path */

.text
.balign 16
.globl builder_dependencies_dep_src_dir
builder_dependencies_dep_src_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_dependencies_dep_path
	adrp	x1, str18
	add	x1, x1, #:lo12:str18
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_dependencies_dep_src_dir, @function
.size builder_dependencies_dep_src_dir, .-builder_dependencies_dep_src_dir
/* end function builder_dependencies_dep_src_dir */

.text
.balign 16
.globl builder_dependencies_dep_ffi_dir
builder_dependencies_dep_ffi_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_dependencies_dep_path
	adrp	x1, str21
	add	x1, x1, #:lo12:str21
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_dependencies_dep_ffi_dir, @function
.size builder_dependencies_dep_ffi_dir, .-builder_dependencies_dep_ffi_dir
/* end function builder_dependencies_dep_ffi_dir */

.text
.balign 16
.globl builder_dependencies_resolve_all
builder_dependencies_resolve_all:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	adrp	x1, str23
	add	x1, x1, #:lo12:str23
	mov	x20, x0
	mov	x0, x19
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, x20
	bl	builder_lock_read
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	donna_files_read
	mov	x3, x21
	mov	x1, x19
	adrp	x2, str27
	add	x2, x2, #:lo12:str27
	mov	x21, x1
	mov	x19, x0
	bl	builder_dependencies_parse_section
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	ldr	x19, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x3, [x2]
	adrp	x2, str33
	add	x2, x2, #:lo12:str33
	bl	builder_dependencies_parse_section
	mov	x1, x0
	mov	x0, x20
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	builder_lock_write
	mov	x1, x20
	mov	x0, x19
	bl	donna_list_append
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_dependencies_resolve_all, @function
.size builder_dependencies_resolve_all, .-builder_dependencies_resolve_all
/* end function builder_dependencies_resolve_all */

.text
.balign 16
.globl builder_dependencies_resolve_deps
builder_dependencies_resolve_deps:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	adrp	x1, str41
	add	x1, x1, #:lo12:str41
	mov	x19, x0
	mov	x0, x20
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, x19
	bl	builder_lock_read
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	donna_files_read
	mov	x3, x21
	mov	x1, x20
	adrp	x2, str45
	add	x2, x2, #:lo12:str45
	bl	builder_dependencies_parse_section
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	builder_lock_write
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_dependencies_resolve_deps, @function
.size builder_dependencies_resolve_deps, .-builder_dependencies_resolve_deps
/* end function builder_dependencies_resolve_deps */

.text
.balign 16
.globl builder_dependencies_resolve_dev_deps
builder_dependencies_resolve_dev_deps:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	adrp	x1, str52
	add	x1, x1, #:lo12:str52
	mov	x19, x0
	mov	x0, x20
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, x19
	bl	builder_lock_read
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	donna_files_read
	mov	x3, x21
	mov	x1, x20
	adrp	x2, str56
	add	x2, x2, #:lo12:str56
	bl	builder_dependencies_parse_section
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	builder_lock_write
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_dependencies_resolve_dev_deps, @function
.size builder_dependencies_resolve_dev_deps, .-builder_dependencies_resolve_dev_deps
/* end function builder_dependencies_resolve_dev_deps */

.text
.balign 16
builder_dependencies_parse_section:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x3
	mov	x20, x2
	mov	x19, x1
	bl	parsetoml_parsetoml_parse
	mov	x22, x0
	bl	parsetoml_parsetoml_is_err
	mov	x1, x0
	mov	x0, x22
	cmp	x1, #1
	beq	.L25
	bl	parsetoml_parsetoml_unwrap_table
	mov	x1, x20
	bl	parsetoml_parsetoml_get_table
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	.L23
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #4
	beq	.L20
	mov	x0, #16
	bl	malloc
	mov	x3, x21
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	str	x0, [x20]
	b	.L22
.L20:
	mov	x3, x21
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x4, x3
	mov	x21, x3
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	mov	x2, x21
	bl	builder_dependencies_collect_deps
	str	x0, [x20]
.L22:
	str	x0, [x19]
	b	.L27
.L23:
	mov	x20, x21
	mov	x0, #16
	bl	malloc
	mov	x3, x20
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	str	x0, [x19]
	b	.L27
.L25:
	mov	x19, x21
	mov	x0, #16
	bl	malloc
	mov	x3, x19
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
.L27:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_dependencies_parse_section, @function
.size builder_dependencies_parse_section, .-builder_dependencies_parse_section
/* end function builder_dependencies_parse_section */

.text
.balign 16
builder_dependencies_collect_deps:
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
	mov	x25, x4
	mov	x21, x3
	mov	x23, x2
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L37
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x22, [x0]
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x26, [x2]
	mov	x20, x1
	adrp	x1, str121
	add	x1, x1, #:lo12:str121
	mov	x19, x0
	mov	x0, x26
	bl	parsetoml_parsetoml_get_string
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L35
	mov	x24, x1
	adrp	x1, str139
	add	x1, x1, #:lo12:str139
	mov	x20, x0
	mov	x0, x26
	bl	parsetoml_parsetoml_get_string
	mov	x2, x26
	mov	x1, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x1]
	cmp	x3, #1
	beq	.L32
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	mov	x3, x23
	bl	builder_dependencies_resolve_git_dep
	mov	x4, x25
	mov	x2, x23
	mov	x1, x0
	mov	x0, x22
	ldr	x22, [x1]
	mov	x25, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x23, x0
	mov	x0, x4
	bl	builder_lock_upsert
	mov	x26, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x26
	mov	x2, x25
	mov	x1, x24
	mov	x3, x0
	mov	x0, x23
	mov	x5, #1
	str	x5, [x3]
	mov	x5, #8
	add	x5, x3, x5
	str	x22, [x5]
	mov	x5, #16
	add	x5, x3, x5
	str	x21, [x5]
	bl	builder_dependencies_collect_deps
	str	x0, [x20]
	b	.L34
.L32:
	mov	x0, x22
	mov	x4, x25
	mov	x2, x23
	mov	x1, x24
	mov	x25, x4
	mov	x3, x21
	mov	x23, x1
	mov	x21, x0
	bl	builder_dependencies_collect_deps
	str	x0, [x20]
.L34:
	str	x0, [x19]
	b	.L39
.L35:
	mov	x20, x21
	mov	x21, x22
	mov	x17, x2
	mov	x2, x1
	mov	x1, x17
	mov	x17, x23
	mov	x23, x2
	mov	x2, x17
	mov	x24, x2
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x22, x0
	mov	x0, x23
	bl	donna_files_join
	mov	x1, x0
	mov	x0, x22
	bl	builder_dependencies_Dep
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x4, x25
	mov	x2, x24
	mov	x1, x23
	mov	x3, x0
	mov	x0, x22
	mov	x5, #1
	str	x5, [x3]
	mov	x5, #8
	add	x5, x3, x5
	str	x21, [x5]
	mov	x5, #16
	add	x5, x3, x5
	str	x20, [x5]
	mov	x20, x4
	bl	builder_dependencies_collect_deps
	str	x0, [x19]
	b	.L39
.L37:
	mov	x20, x25
	mov	x0, x21
	bl	donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	malloc
	mov	x4, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x4, [x1]
.L39:
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
.type builder_dependencies_collect_deps, @function
.size builder_dependencies_collect_deps, .-builder_dependencies_collect_deps
/* end function builder_dependencies_collect_deps */

.text
.balign 16
builder_dependencies_resolve_git_dep:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
	mov	x22, x3
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	bl	builder_dependencies_git_cache_dir
	mov	x1, x0
	mov	x23, x0
	adrp	x0, str166
	add	x0, x0, #:lo12:str166
	bl	__rt_str_concat
	bl	donna_shell_run
	mov	x0, x23
	mov	x1, x19
	bl	donna_files_join
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x1, x19
	bl	builder_lock_find_rev
	mov	x23, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	builder_lock_read_cached_rev
	mov	x24, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x23
	bl	donna_string_is_empty
	mov	x1, x24
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	beq	.L44
	mov	x19, x0
	mov	x0, x22
	bl	donna_files_is_dir
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L43
	mov	x23, x1
	mov	x1, x21
	mov	x20, x0
	bl	utilities_logger_fetch
	bl	donna_shell_flush
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	builder_dependencies_pick_ref
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	mov	x22, x1
	mov	x20, x0
	mov	x0, x21
	bl	builder_dependencies_clone_at_ref
	mov	x0, x20
	mov	x20, x0
	mov	x0, x22
	bl	builder_dependencies_head_sha
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	mov	x0, x23
	bl	builder_lock_write_cached_rev
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	bl	builder_dependencies_Dep
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	bl	builder_lock_LockedDep
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L49
.L43:
	mov	x20, x0
	mov	x0, x22
	bl	builder_dependencies_head_sha
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	mov	x0, x23
	bl	builder_lock_write_cached_rev
	mov	x1, x23
	mov	x0, x20
	mov	x20, x1
	mov	x20, x0
	bl	builder_dependencies_Dep
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	bl	builder_lock_LockedDep
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L49
.L44:
	mov	x20, x22
	mov	x19, x0
	mov	x0, x23
	bl	donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L47
	mov	x22, x1
	mov	x20, x0
	adrp	x0, str189
	add	x0, x0, #:lo12:str189
	bl	__rt_str_concat
	bl	donna_shell_run
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x23
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	mov	x3, #1
	str	x3, [x22]
	mov	x3, #8
	add	x3, x22, x3
	str	x1, [x3]
	mov	x24, x2
	mov	x2, #16
	add	x2, x22, x2
	mov	x23, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x3, #1
	str	x3, [x20]
	mov	x24, x2
	mov	x2, #8
	add	x2, x20, x2
	str	x21, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x1, x20, x1
	str	x22, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x23]
	mov	x3, #8
	add	x3, x23, x3
	mov	x24, x2
	adrp	x2, str199
	add	x2, x2, #:lo12:str199
	str	x2, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x23, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x3, #1
	str	x3, [x20]
	mov	x3, #8
	add	x3, x20, x3
	mov	x24, x2
	adrp	x2, str203
	add	x2, x2, #:lo12:str203
	str	x2, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x20, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	adrp	x3, str207
	add	x3, x3, #:lo12:str207
	str	x3, [x4]
	mov	x23, x2
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	mov	x20, x0
	adrp	x0, str192
	add	x0, x0, #:lo12:str192
	bl	donna_shell_exec
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x23
	mov	x1, x22
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x3, #1
	str	x3, [x20]
	mov	x3, #8
	add	x3, x20, x3
	str	x2, [x3]
	mov	x24, x2
	mov	x2, #16
	add	x2, x20, x2
	mov	x23, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x3, #1
	str	x3, [x22]
	mov	x3, #8
	add	x3, x22, x3
	mov	x24, x2
	adrp	x2, str216
	add	x2, x2, #:lo12:str216
	str	x2, [x3]
	mov	x23, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x23
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x3, #1
	str	x3, [x20]
	mov	x24, x2
	mov	x2, #8
	add	x2, x20, x2
	str	x1, [x2]
	mov	x23, x1
	mov	x1, #16
	add	x1, x20, x1
	str	x22, [x1]
	mov	x22, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x24
	mov	x1, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	adrp	x3, str223
	add	x3, x3, #:lo12:str223
	str	x3, [x4]
	mov	x22, x2
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	mov	x20, x0
	adrp	x0, str212
	add	x0, x0, #:lo12:str212
	bl	donna_shell_exec
	mov	x1, x23
	mov	x0, x20
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	mov	x0, x23
	bl	builder_lock_write_cached_rev
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	bl	builder_dependencies_Dep
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	mov	x22, x2
	bl	builder_lock_LockedDep
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L49
.L47:
	mov	x22, x23
	mov	x20, x0
	bl	builder_dependencies_Dep
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	bl	builder_lock_LockedDep
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
.L49:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_dependencies_resolve_git_dep, @function
.size builder_dependencies_resolve_git_dep, .-builder_dependencies_resolve_git_dep
/* end function builder_dependencies_resolve_git_dep */

.text
.balign 16
builder_dependencies_pick_ref:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, str260
	add	x1, x1, #:lo12:str260
	mov	x20, x0
	bl	builder_dependencies_opt_string
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #0
	beq	.L59
	adrp	x1, str269
	add	x1, x1, #:lo12:str269
	mov	x19, x0
	bl	builder_dependencies_opt_string
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	.L57
	adrp	x1, str277
	add	x1, x1, #:lo12:str277
	mov	x20, x0
	bl	builder_dependencies_opt_string
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L54
	adrp	x1, str285
	add	x1, x1, #:lo12:str285
	bl	builder_dependencies_opt_string
	str	x0, [x20]
	b	.L56
.L54:
	mov	x0, x21
	str	x0, [x20]
.L56:
	str	x0, [x19]
	b	.L61
.L57:
	mov	x0, x20
	str	x0, [x19]
	b	.L61
.L59:
	mov	x0, x19
	bl	builder_dependencies_resolve_version_range
.L61:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_dependencies_pick_ref, @function
.size builder_dependencies_pick_ref, .-builder_dependencies_pick_ref
/* end function builder_dependencies_pick_ref */

.text
.balign 16
builder_dependencies_resolve_version_range:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	bl	builder_semver_parse_constraints
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #1
	str	x2, [x20]
	mov	x2, #8
	add	x2, x20, x2
	str	x0, [x2]
	mov	x0, #16
	mov	x19, x1
	add	x1, x20, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x1, x19
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	mov	x19, x1
	add	x1, x21, x0
	adrp	x0, str295
	add	x0, x0, #:lo12:str295
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x19
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	mov	x19, x1
	add	x1, x20, x0
	adrp	x0, str299
	add	x0, x0, #:lo12:str299
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, str303
	add	x0, x0, #:lo12:str303
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x20, [x0]
	adrp	x0, str291
	add	x0, x0, #:lo12:str291
	bl	donna_shell_output
	mov	x1, x19
	mov	x19, x1
	adrp	x1, str308
	add	x1, x1, #:lo12:str308
	bl	donna_string_split
	mov	x1, x19
	bl	builder_dependencies_find_best_tag
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
.type builder_dependencies_resolve_version_range, @function
.size builder_dependencies_resolve_version_range, .-builder_dependencies_resolve_version_range
/* end function builder_dependencies_resolve_version_range */

.text
.balign 16
builder_dependencies_find_best_tag:
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
	mov	x2, x0
	ldr	x0, [x2]
	cmp	x0, #0
	beq	.L85
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x20, x1
	adrp	x1, str322
	add	x1, x1, #:lo12:str322
	mov	x19, x0
	bl	donna_string_index_of
	mov	x1, x20
	mov	x21, x0
	mov	x0, x19
	cmn	x21, #1
	mov	x20, x1
	cset	x1, eq
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L83
	mov	x1, #1
	add	x24, x21, x1
	mov	x22, x0
	bl	donna_string_length
	mov	x1, x24
	mov	x2, x0
	mov	x0, x22
	sub	x2, x2, x21
	mov	x3, #1
	sub	x2, x2, x3
	bl	donna_string_slice
	mov	x1, x20
	mov	x21, x1
	adrp	x1, str337
	add	x1, x1, #:lo12:str337
	mov	x20, x0
	bl	donna_string_ends_with
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	.L80
	mov	x24, x1
	adrp	x1, str345
	add	x1, x1, #:lo12:str345
	mov	x21, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #0
	beq	.L77
	mov	x22, x0
	bl	donna_string_length
	mov	x1, x24
	mov	x2, x0
	mov	x0, x22
	mov	x3, #10
	sub	x2, x2, x3
	mov	x22, x1
	mov	x1, #10
	bl	donna_string_slice
	mov	x24, x0
	bl	builder_semver_parse
	mov	x1, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	ldr	x2, [x0]
	cmn	x2, #1
	beq	.L74
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x25, x1
	bl	builder_semver_satisfies
	mov	x1, x25
	mov	x2, x0
	mov	x0, x23
	mov	x3, #16
	sub	sp, sp, x3
	mov	x23, sp
	cmp	x2, #0
	beq	.L72
	mov	x0, x24
	str	x0, [x23]
	b	.L73
.L72:
	bl	builder_dependencies_find_best_tag
	str	x0, [x23]
.L73:
	str	x0, [x22]
	b	.L76
.L74:
	mov	x0, x23
	bl	builder_dependencies_find_best_tag
	str	x0, [x22]
.L76:
	str	x0, [x21]
	b	.L79
.L77:
	mov	x0, x23
	mov	x1, x24
	bl	builder_dependencies_find_best_tag
	str	x0, [x21]
.L79:
	str	x0, [x20]
	b	.L82
.L80:
	mov	x0, x23
	bl	builder_dependencies_find_best_tag
	str	x0, [x20]
.L82:
	str	x0, [x19]
	b	.L86
.L83:
	mov	x0, x23
	mov	x1, x20
	bl	builder_dependencies_find_best_tag
	str	x0, [x19]
	b	.L86
.L85:
	adrp	x0, str317
	add	x0, x0, #:lo12:str317
.L86:
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
.type builder_dependencies_find_best_tag, @function
.size builder_dependencies_find_best_tag, .-builder_dependencies_find_best_tag
/* end function builder_dependencies_find_best_tag */

.text
.balign 16
builder_dependencies_clone_at_ref:
	hint	#34
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L95
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x21
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x3, #1
	str	x3, [x20]
	mov	x3, #8
	add	x3, x20, x3
	str	x1, [x3]
	mov	x22, x2
	mov	x2, #16
	add	x2, x20, x2
	mov	x21, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x3, #1
	str	x3, [x19]
	mov	x22, x2
	mov	x2, #8
	add	x2, x19, x2
	str	x0, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x1, x19, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x21
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x3, #1
	str	x3, [x20]
	mov	x22, x2
	mov	x2, #8
	add	x2, x20, x2
	str	x22, [x2]
	mov	x21, x1
	mov	x1, #16
	add	x1, x20, x1
	str	x19, [x1]
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x21
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x3, #1
	str	x3, [x19]
	mov	x3, #8
	add	x3, x19, x3
	mov	x22, x2
	adrp	x2, str415
	add	x2, x2, #:lo12:str415
	str	x2, [x3]
	mov	x21, x1
	mov	x1, #16
	add	x1, x19, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	mov	x3, #1
	str	x3, [x21]
	mov	x3, #8
	add	x3, x21, x3
	mov	x22, x2
	adrp	x2, str419
	add	x2, x2, #:lo12:str419
	str	x2, [x3]
	mov	x20, x1
	mov	x1, #16
	add	x1, x21, x1
	str	x19, [x1]
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x20
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x3, #1
	str	x3, [x19]
	mov	x3, #8
	add	x3, x19, x3
	mov	x22, x2
	adrp	x2, str423
	add	x2, x2, #:lo12:str423
	str	x2, [x3]
	mov	x20, x1
	mov	x1, #16
	add	x1, x19, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	adrp	x3, str427
	add	x3, x3, #:lo12:str427
	str	x3, [x4]
	mov	x22, x2
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	mov	x19, x0
	adrp	x0, str405
	add	x0, x0, #:lo12:str405
	bl	donna_shell_exec
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	cset	x3, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	.L93
	mov	x21, x1
	mov	x20, x0
	adrp	x0, str438
	add	x0, x0, #:lo12:str438
	bl	__rt_str_concat
	bl	donna_shell_run
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x21
	mov	x23, x0
	mov	x0, x20
	mov	x3, #1
	str	x3, [x23]
	mov	x3, #8
	add	x3, x23, x3
	str	x1, [x3]
	mov	x22, x2
	mov	x2, #16
	add	x2, x23, x2
	mov	x21, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x21
	mov	x22, x0
	mov	x0, x20
	mov	x21, x2
	mov	x2, #1
	str	x2, [x22]
	mov	x20, x1
	mov	x1, #8
	add	x1, x22, x1
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	mov	x21, x2
	add	x2, x1, x0
	adrp	x0, str448
	add	x0, x0, #:lo12:str448
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x22, [x0]
	adrp	x0, str441
	add	x0, x0, #:lo12:str441
	bl	donna_shell_exec
	mov	x2, x21
	mov	x1, x20
	cmp	x0, #0
	mov	x21, x1
	cset	x1, eq
	mov	x22, x2
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	.L91
	mov	x0, #24
	bl	malloc
	mov	x2, x22
	mov	x1, x21
	mov	x23, x0
	mov	x0, #1
	str	x0, [x23]
	mov	x0, #8
	add	x0, x23, x0
	str	x2, [x0]
	mov	x0, #16
	mov	x21, x1
	add	x1, x23, x0
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
	str	x0, [x1]
	mov	x0, #24
	bl	malloc
	mov	x1, x21
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	mov	x21, x1
	add	x1, x22, x0
	adrp	x0, str463
	add	x0, x0, #:lo12:str463
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x21
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	add	x0, x21, x0
	str	x1, [x0]
	mov	x0, #16
	add	x0, x21, x0
	str	x22, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, str470
	add	x0, x0, #:lo12:str470
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x21, [x0]
	adrp	x0, str459
	add	x0, x0, #:lo12:str459
	bl	donna_shell_exec
	str	x0, [x20]
	b	.L92
.L91:
	str	x0, [x20]
.L92:
	str	x0, [x19]
	b	.L96
.L93:
	mov	x0, x2
	str	x0, [x19]
	b	.L96
.L95:
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x1, x20
	mov	x20, x0
	mov	x0, x19
	mov	x2, #1
	str	x2, [x20]
	mov	x2, #8
	add	x2, x20, x2
	str	x1, [x2]
	mov	x1, #16
	add	x2, x20, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #1
	str	x1, [x19]
	mov	x1, #8
	add	x1, x19, x1
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, str392
	add	x0, x0, #:lo12:str392
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #24
	bl	malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, str396
	add	x0, x0, #:lo12:str396
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, str400
	add	x0, x0, #:lo12:str400
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x19, [x0]
	adrp	x0, str385
	add	x0, x0, #:lo12:str385
	bl	donna_shell_exec
.L96:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
.type builder_dependencies_clone_at_ref, @function
.size builder_dependencies_clone_at_ref, .-builder_dependencies_clone_at_ref
/* end function builder_dependencies_clone_at_ref */

.text
.balign 16
builder_dependencies_git_cache_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, str478
	add	x0, x0, #:lo12:str478
	bl	donna_shell_getenv
	adrp	x1, str480
	add	x1, x1, #:lo12:str480
	bl	donna_files_join
	adrp	x1, str482
	add	x1, x1, #:lo12:str482
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_dependencies_git_cache_dir, @function
.size builder_dependencies_git_cache_dir, .-builder_dependencies_git_cache_dir
/* end function builder_dependencies_git_cache_dir */

.text
.balign 16
builder_dependencies_head_sha:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #1
	str	x1, [x19]
	mov	x1, #8
	add	x2, x19, x1
	adrp	x1, str485
	add	x1, x1, #:lo12:str485
	str	x1, [x2]
	mov	x1, #16
	add	x2, x19, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x20, x0
	mov	x0, #24
	bl	malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, #1
	str	x1, [x20]
	mov	x1, #8
	add	x2, x20, x1
	adrp	x1, str489
	add	x1, x1, #:lo12:str489
	str	x1, [x2]
	mov	x1, #16
	add	x1, x20, x1
	str	x19, [x1]
	mov	x19, x0
	mov	x0, #24
	bl	malloc
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #1
	str	x1, [x19]
	mov	x1, #8
	add	x1, x19, x1
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, str496
	add	x0, x0, #:lo12:str496
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x19, [x0]
	adrp	x0, str484
	add	x0, x0, #:lo12:str484
	bl	donna_shell_output
	bl	donna_string_trim
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
.type builder_dependencies_head_sha, @function
.size builder_dependencies_head_sha, .-builder_dependencies_head_sha
/* end function builder_dependencies_head_sha */

.text
.balign 16
builder_dependencies_opt_string:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	parsetoml_parsetoml_get_string
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L103
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	.L104
.L103:
	adrp	x0, str511
	add	x0, x0, #:lo12:str511
.L104:
	ldp	x29, x30, [sp], 16
	ret
.type builder_dependencies_opt_string, @function
.size builder_dependencies_opt_string, .-builder_dependencies_opt_string
/* end function builder_dependencies_opt_string */

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
