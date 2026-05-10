.data
.balign 8
_str18:
	.ascii "src"
	.byte 0
/* end data */

.data
.balign 8
_str21:
	.ascii "ffi"
	.byte 0
/* end data */

.data
.balign 8
_str23:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
_str27:
	.ascii "dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str33:
	.ascii "dev-dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str41:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
_str45:
	.ascii "dependencies"
	.byte 0
/* end data */

.data
.balign 8
_str52:
	.ascii "donna.lock"
	.byte 0
/* end data */

.data
.balign 8
_str56:
	.ascii "dev-dependencies"
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str121:
	.ascii "path"
	.byte 0
/* end data */

.data
.balign 8
_str139:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str166:
	.ascii "mkdir -p "
	.byte 0
/* end data */

.data
.balign 8
_str189:
	.ascii "rm -rf "
	.byte 0
/* end data */

.data
.balign 8
_str192:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str199:
	.ascii "advice.detachedHead=false"
	.byte 0
/* end data */

.data
.balign 8
_str203:
	.ascii "-c"
	.byte 0
/* end data */

.data
.balign 8
_str207:
	.ascii "clone"
	.byte 0
/* end data */

.data
.balign 8
_str212:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str216:
	.ascii "checkout"
	.byte 0
/* end data */

.data
.balign 8
_str223:
	.ascii "-C"
	.byte 0
/* end data */

.data
.balign 8
_str260:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str269:
	.ascii "tag"
	.byte 0
/* end data */

.data
.balign 8
_str277:
	.ascii "branch"
	.byte 0
/* end data */

.data
.balign 8
_str285:
	.ascii "rev"
	.byte 0
/* end data */

.data
.balign 8
_str291:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str295:
	.ascii "--sort=-v:refname"
	.byte 0
/* end data */

.data
.balign 8
_str299:
	.ascii "--tags"
	.byte 0
/* end data */

.data
.balign 8
_str303:
	.ascii "ls-remote"
	.byte 0
/* end data */

.data
.balign 8
_str308:
	.byte 10
	.byte 0
/* end data */

.data
.balign 8
_str317:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str322:
	.byte 9
	.byte 0
/* end data */

.data
.balign 8
_str337:
	.ascii "^{}"
	.byte 0
/* end data */

.data
.balign 8
_str345:
	.ascii "refs/tags/"
	.byte 0
/* end data */

.data
.balign 8
_str385:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str392:
	.ascii "1"
	.byte 0
/* end data */

.data
.balign 8
_str396:
	.ascii "--depth"
	.byte 0
/* end data */

.data
.balign 8
_str400:
	.ascii "clone"
	.byte 0
/* end data */

.data
.balign 8
_str405:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str415:
	.ascii "--branch"
	.byte 0
/* end data */

.data
.balign 8
_str419:
	.ascii "1"
	.byte 0
/* end data */

.data
.balign 8
_str423:
	.ascii "--depth"
	.byte 0
/* end data */

.data
.balign 8
_str427:
	.ascii "clone"
	.byte 0
/* end data */

.data
.balign 8
_str438:
	.ascii "rm -rf "
	.byte 0
/* end data */

.data
.balign 8
_str441:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str448:
	.ascii "clone"
	.byte 0
/* end data */

.data
.balign 8
_str459:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str463:
	.ascii "checkout"
	.byte 0
/* end data */

.data
.balign 8
_str470:
	.ascii "-C"
	.byte 0
/* end data */

.data
.balign 8
_str478:
	.ascii "HOME"
	.byte 0
/* end data */

.data
.balign 8
_str480:
	.ascii ".donna"
	.byte 0
/* end data */

.data
.balign 8
_str482:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str484:
	.ascii "git"
	.byte 0
/* end data */

.data
.balign 8
_str485:
	.ascii "HEAD"
	.byte 0
/* end data */

.data
.balign 8
_str489:
	.ascii "rev-parse"
	.byte 0
/* end data */

.data
.balign 8
_str496:
	.ascii "-C"
	.byte 0
/* end data */

.data
.balign 8
_str511:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _builder_dependencies_Dep
_builder_dependencies_Dep:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x20, x1
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
/* end function builder_dependencies_Dep */

.text
.balign 4
.globl _builder_dependencies_dep_name
_builder_dependencies_dep_name:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_dependencies_dep_name */

.text
.balign 4
.globl _builder_dependencies_dep_path
_builder_dependencies_dep_path:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_dependencies_dep_path */

.text
.balign 4
.globl _builder_dependencies_dep_src_dir
_builder_dependencies_dep_src_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_dependencies_dep_path
	adrp	x1, _str18@page
	add	x1, x1, _str18@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_dependencies_dep_src_dir */

.text
.balign 4
.globl _builder_dependencies_dep_ffi_dir
_builder_dependencies_dep_ffi_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_dependencies_dep_path
	adrp	x1, _str21@page
	add	x1, x1, _str21@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_dependencies_dep_ffi_dir */

.text
.balign 4
.globl _builder_dependencies_resolve_all
_builder_dependencies_resolve_all:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	adrp	x1, _str23@page
	add	x1, x1, _str23@pageoff
	mov	x20, x0
	mov	x0, x19
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	mov	x0, x20
	bl	_builder_lock_read
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_donna_files_read
	mov	x3, x21
	mov	x1, x19
	adrp	x2, _str27@page
	add	x2, x2, _str27@pageoff
	mov	x21, x1
	mov	x19, x0
	bl	_builder_dependencies_parse_section
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	ldr	x19, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x3, [x2]
	adrp	x2, _str33@page
	add	x2, x2, _str33@pageoff
	bl	_builder_dependencies_parse_section
	mov	x1, x0
	mov	x0, x20
	ldr	x20, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_builder_lock_write
	mov	x1, x20
	mov	x0, x19
	bl	_donna_list_append
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_dependencies_resolve_all */

.text
.balign 4
.globl _builder_dependencies_resolve_deps
_builder_dependencies_resolve_deps:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	adrp	x1, _str41@page
	add	x1, x1, _str41@pageoff
	mov	x19, x0
	mov	x0, x20
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, x19
	bl	_builder_lock_read
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_donna_files_read
	mov	x3, x21
	mov	x1, x20
	adrp	x2, _str45@page
	add	x2, x2, _str45@pageoff
	bl	_builder_dependencies_parse_section
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_builder_lock_write
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_dependencies_resolve_deps */

.text
.balign 4
.globl _builder_dependencies_resolve_dev_deps
_builder_dependencies_resolve_dev_deps:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x20, x1
	adrp	x1, _str52@page
	add	x1, x1, _str52@pageoff
	mov	x19, x0
	mov	x0, x20
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x21, x0
	mov	x0, x19
	bl	_builder_lock_read
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	bl	_donna_files_read
	mov	x3, x21
	mov	x1, x20
	adrp	x2, _str56@page
	add	x2, x2, _str56@pageoff
	bl	_builder_dependencies_parse_section
	mov	x1, x0
	mov	x0, x19
	ldr	x19, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x1, [x1]
	bl	_builder_lock_write
	mov	x0, x19
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_dependencies_resolve_dev_deps */

.text
.balign 4
_builder_dependencies_parse_section:
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
	bl	_parsetoml_parsetoml_parse
	mov	x22, x0
	bl	_parsetoml_parsetoml_is_err
	mov	x1, x0
	mov	x0, x22
	cmp	x1, #1
	beq	L25
	bl	_parsetoml_parsetoml_unwrap_table
	mov	x1, x20
	bl	_parsetoml_parsetoml_get_table
	mov	x1, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	ldr	x2, [x0]
	cmp	x2, #1
	beq	L23
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	ldr	x2, [x0]
	cmp	x2, #4
	beq	L20
	mov	x0, #16
	bl	_malloc
	mov	x3, x21
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	str	x0, [x20]
	b	L22
L20:
	mov	x3, x21
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x4, x3
	mov	x21, x3
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	mov	x2, x21
	bl	_builder_dependencies_collect_deps
	str	x0, [x20]
L22:
	str	x0, [x19]
	b	L27
L23:
	mov	x20, x21
	mov	x0, #16
	bl	_malloc
	mov	x3, x20
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
	str	x0, [x19]
	b	L27
L25:
	mov	x19, x21
	mov	x0, #16
	bl	_malloc
	mov	x3, x19
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x3, [x1]
L27:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_dependencies_parse_section */

.text
.balign 4
_builder_dependencies_collect_deps:
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
	beq	L37
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
	adrp	x1, _str121@page
	add	x1, x1, _str121@pageoff
	mov	x19, x0
	mov	x0, x26
	bl	_parsetoml_parsetoml_get_string
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	L35
	mov	x24, x1
	adrp	x1, _str139@page
	add	x1, x1, _str139@pageoff
	mov	x20, x0
	mov	x0, x26
	bl	_parsetoml_parsetoml_get_string
	mov	x2, x26
	mov	x1, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	ldr	x3, [x1]
	cmp	x3, #1
	beq	L32
	mov	x3, #8
	add	x1, x1, x3
	ldr	x1, [x1]
	mov	x3, x23
	bl	_builder_dependencies_resolve_git_dep
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
	bl	_builder_lock_upsert
	mov	x26, x0
	mov	x0, x23
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_dependencies_collect_deps
	str	x0, [x20]
	b	L34
L32:
	mov	x0, x22
	mov	x4, x25
	mov	x2, x23
	mov	x1, x24
	mov	x25, x4
	mov	x3, x21
	mov	x23, x1
	mov	x21, x0
	bl	_builder_dependencies_collect_deps
	str	x0, [x20]
L34:
	str	x0, [x19]
	b	L39
L35:
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
	bl	_donna_files_join
	mov	x1, x0
	mov	x0, x22
	bl	_builder_dependencies_Dep
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_builder_dependencies_collect_deps
	str	x0, [x19]
	b	L39
L37:
	mov	x20, x25
	mov	x0, x21
	bl	_donna_list_reverse
	mov	x19, x0
	mov	x0, #16
	bl	_malloc
	mov	x4, x20
	str	x19, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x4, [x1]
L39:
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
/* end function builder_dependencies_collect_deps */

.text
.balign 4
_builder_dependencies_resolve_git_dep:
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
	bl	_builder_dependencies_git_cache_dir
	mov	x1, x0
	mov	x23, x0
	adrp	x0, _str166@page
	add	x0, x0, _str166@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
	mov	x0, x23
	mov	x1, x19
	bl	_donna_files_join
	mov	x17, x0
	mov	x0, x22
	mov	x22, x17
	mov	x1, x19
	bl	_builder_lock_find_rev
	mov	x23, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x22
	bl	_builder_lock_read_cached_rev
	mov	x24, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x23
	bl	_donna_string_is_empty
	mov	x1, x24
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	beq	L44
	mov	x19, x0
	mov	x0, x22
	bl	_donna_files_is_dir
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L43
	mov	x23, x1
	mov	x1, x21
	mov	x20, x0
	bl	_utilities_logger_fetch
	bl	_donna_shell_flush
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	_builder_dependencies_pick_ref
	mov	x1, x22
	mov	x2, x0
	mov	x0, x20
	mov	x22, x1
	mov	x20, x0
	mov	x0, x21
	bl	_builder_dependencies_clone_at_ref
	mov	x0, x20
	mov	x20, x0
	mov	x0, x22
	bl	_builder_dependencies_head_sha
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	mov	x0, x23
	bl	_builder_lock_write_cached_rev
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	bl	_builder_dependencies_Dep
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	bl	_builder_lock_LockedDep
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L49
L43:
	mov	x20, x0
	mov	x0, x22
	bl	_builder_dependencies_head_sha
	mov	x1, x22
	mov	x22, x0
	mov	x0, x20
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	mov	x0, x23
	bl	_builder_lock_write_cached_rev
	mov	x1, x23
	mov	x0, x20
	mov	x20, x1
	mov	x20, x0
	bl	_builder_dependencies_Dep
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	bl	_builder_lock_LockedDep
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L49
L44:
	mov	x20, x22
	mov	x19, x0
	mov	x0, x23
	bl	_donna_string_equal
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L47
	mov	x22, x1
	mov	x20, x0
	adrp	x0, _str189@page
	add	x0, x0, _str189@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x2, x24
	mov	x1, x23
	mov	x23, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x23]
	mov	x3, #8
	add	x3, x23, x3
	mov	x24, x2
	adrp	x2, _str199@page
	add	x2, x2, _str199@pageoff
	str	x2, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x23, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x2, _str203@page
	add	x2, x2, _str203@pageoff
	str	x2, [x3]
	mov	x22, x1
	mov	x1, #16
	add	x1, x20, x1
	str	x23, [x1]
	mov	x23, x0
	mov	x0, #24
	bl	_malloc
	mov	x2, x24
	mov	x1, x0
	mov	x0, x23
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	adrp	x3, _str207@page
	add	x3, x3, _str207@pageoff
	str	x3, [x4]
	mov	x23, x2
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	mov	x20, x0
	adrp	x0, _str192@page
	add	x0, x0, _str192@pageoff
	bl	_donna_shell_exec
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x22, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x2, _str216@page
	add	x2, x2, _str216@pageoff
	str	x2, [x3]
	mov	x23, x1
	mov	x1, #16
	add	x1, x22, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x2, x24
	mov	x1, x0
	mov	x0, x22
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	adrp	x3, _str223@page
	add	x3, x3, _str223@pageoff
	str	x3, [x4]
	mov	x22, x2
	mov	x2, #16
	add	x2, x1, x2
	str	x20, [x2]
	mov	x20, x0
	adrp	x0, _str212@page
	add	x0, x0, _str212@pageoff
	bl	_donna_shell_exec
	mov	x1, x23
	mov	x0, x20
	mov	x23, x1
	mov	x1, x22
	mov	x20, x0
	mov	x0, x23
	bl	_builder_lock_write_cached_rev
	mov	x1, x23
	mov	x0, x20
	mov	x20, x0
	bl	_builder_dependencies_Dep
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	mov	x22, x2
	bl	_builder_lock_LockedDep
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	L49
L47:
	mov	x22, x23
	mov	x20, x0
	bl	_builder_dependencies_Dep
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	bl	_builder_lock_LockedDep
	mov	x20, x0
	mov	x0, #16
	bl	_malloc
	str	x21, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
L49:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_dependencies_resolve_git_dep */

.text
.balign 4
_builder_dependencies_pick_ref:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	adrp	x1, _str260@page
	add	x1, x1, _str260@pageoff
	mov	x20, x0
	bl	_builder_dependencies_opt_string
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	_donna_string_is_empty
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	cmp	x2, #0
	beq	L59
	adrp	x1, _str269@page
	add	x1, x1, _str269@pageoff
	mov	x19, x0
	bl	_builder_dependencies_opt_string
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, x20
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L57
	adrp	x1, _str277@page
	add	x1, x1, _str277@pageoff
	mov	x20, x0
	bl	_builder_dependencies_opt_string
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	mov	x0, x21
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #0
	beq	L54
	adrp	x1, _str285@page
	add	x1, x1, _str285@pageoff
	bl	_builder_dependencies_opt_string
	str	x0, [x20]
	b	L56
L54:
	mov	x0, x21
	str	x0, [x20]
L56:
	str	x0, [x19]
	b	L61
L57:
	mov	x0, x20
	str	x0, [x19]
	b	L61
L59:
	mov	x0, x19
	bl	_builder_dependencies_resolve_version_range
L61:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_dependencies_pick_ref */

.text
.balign 4
_builder_dependencies_resolve_version_range:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x0
	mov	x0, x1
	bl	_builder_semver_parse_constraints
	mov	x20, x0
	mov	x0, x19
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	mov	x1, x19
	mov	x21, x0
	mov	x0, #1
	str	x0, [x21]
	mov	x0, #8
	mov	x19, x1
	add	x1, x21, x0
	adrp	x0, _str295@page
	add	x0, x0, _str295@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x21, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x19
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	mov	x19, x1
	add	x1, x20, x0
	adrp	x0, _str299@page
	add	x0, x0, _str299@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x21, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, _str303@page
	add	x0, x0, _str303@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x20, [x0]
	adrp	x0, _str291@page
	add	x0, x0, _str291@pageoff
	bl	_donna_shell_output
	mov	x1, x19
	mov	x19, x1
	adrp	x1, _str308@page
	add	x1, x1, _str308@pageoff
	bl	_donna_string_split
	mov	x1, x19
	bl	_builder_dependencies_find_best_tag
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_dependencies_resolve_version_range */

.text
.balign 4
_builder_dependencies_find_best_tag:
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
	beq	L85
	mov	x0, #8
	add	x0, x2, x0
	ldr	x0, [x0]
	mov	x3, #16
	add	x2, x2, x3
	ldr	x23, [x2]
	mov	x20, x1
	adrp	x1, _str322@page
	add	x1, x1, _str322@pageoff
	mov	x19, x0
	bl	_donna_string_index_of
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
	beq	L83
	mov	x1, #1
	add	x24, x21, x1
	mov	x22, x0
	bl	_donna_string_length
	mov	x1, x24
	mov	x2, x0
	mov	x0, x22
	sub	x2, x2, x21
	mov	x3, #1
	sub	x2, x2, x3
	bl	_donna_string_slice
	mov	x1, x20
	mov	x21, x1
	adrp	x1, _str337@page
	add	x1, x1, _str337@pageoff
	mov	x20, x0
	bl	_donna_string_ends_with
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	mov	x3, #16
	sub	sp, sp, x3
	mov	x20, sp
	cmp	x2, #1
	beq	L80
	mov	x24, x1
	adrp	x1, _str345@page
	add	x1, x1, _str345@pageoff
	mov	x21, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x21
	mov	x2, #16
	sub	sp, sp, x2
	mov	x21, sp
	cmp	x1, #0
	beq	L77
	mov	x22, x0
	bl	_donna_string_length
	mov	x1, x24
	mov	x2, x0
	mov	x0, x22
	mov	x3, #10
	sub	x2, x2, x3
	mov	x22, x1
	mov	x1, #10
	bl	_donna_string_slice
	mov	x24, x0
	bl	_builder_semver_parse
	mov	x1, x22
	mov	x2, #16
	sub	sp, sp, x2
	mov	x22, sp
	ldr	x2, [x0]
	cmn	x2, #1
	beq	L74
	mov	x2, #8
	add	x0, x0, x2
	ldr	x0, [x0]
	mov	x25, x1
	bl	_builder_semver_satisfies
	mov	x1, x25
	mov	x2, x0
	mov	x0, x23
	mov	x3, #16
	sub	sp, sp, x3
	mov	x23, sp
	cmp	x2, #0
	beq	L72
	mov	x0, x24
	str	x0, [x23]
	b	L73
L72:
	bl	_builder_dependencies_find_best_tag
	str	x0, [x23]
L73:
	str	x0, [x22]
	b	L76
L74:
	mov	x0, x23
	bl	_builder_dependencies_find_best_tag
	str	x0, [x22]
L76:
	str	x0, [x21]
	b	L79
L77:
	mov	x0, x23
	mov	x1, x24
	bl	_builder_dependencies_find_best_tag
	str	x0, [x21]
L79:
	str	x0, [x20]
	b	L82
L80:
	mov	x0, x23
	bl	_builder_dependencies_find_best_tag
	str	x0, [x20]
L82:
	str	x0, [x19]
	b	L86
L83:
	mov	x0, x23
	mov	x1, x20
	bl	_builder_dependencies_find_best_tag
	str	x0, [x19]
	b	L86
L85:
	adrp	x0, _str317@page
	add	x0, x0, _str317@pageoff
L86:
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
/* end function builder_dependencies_find_best_tag */

.text
.balign 4
_builder_dependencies_clone_at_ref:
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
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L95
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
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
	bl	_malloc
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
	adrp	x2, _str415@page
	add	x2, x2, _str415@pageoff
	str	x2, [x3]
	mov	x21, x1
	mov	x1, #16
	add	x1, x19, x1
	str	x20, [x1]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x2, x22
	mov	x1, x21
	mov	x21, x0
	mov	x0, x20
	mov	x3, #1
	str	x3, [x21]
	mov	x3, #8
	add	x3, x21, x3
	mov	x22, x2
	adrp	x2, _str419@page
	add	x2, x2, _str419@pageoff
	str	x2, [x3]
	mov	x20, x1
	mov	x1, #16
	add	x1, x21, x1
	str	x19, [x1]
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x2, _str423@page
	add	x2, x2, _str423@pageoff
	str	x2, [x3]
	mov	x20, x1
	mov	x1, #16
	add	x1, x19, x1
	str	x21, [x1]
	mov	x21, x0
	mov	x0, #24
	bl	_malloc
	mov	x2, x22
	mov	x1, x0
	mov	x0, x21
	mov	x3, #1
	str	x3, [x1]
	mov	x3, #8
	add	x4, x1, x3
	adrp	x3, _str427@page
	add	x3, x3, _str427@pageoff
	str	x3, [x4]
	mov	x22, x2
	mov	x2, #16
	add	x2, x1, x2
	str	x19, [x2]
	mov	x19, x0
	adrp	x0, _str405@page
	add	x0, x0, _str405@pageoff
	bl	_donna_shell_exec
	mov	x1, x20
	mov	x2, x0
	mov	x0, x19
	cmp	x2, #0
	cset	x3, eq
	mov	x4, #16
	sub	sp, sp, x4
	mov	x19, sp
	cmp	x3, #1
	beq	L93
	mov	x21, x1
	mov	x20, x0
	adrp	x0, _str438@page
	add	x0, x0, _str438@pageoff
	bl	___rt_str_concat
	bl	_donna_shell_run
	mov	x0, x20
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x2, x21
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	mov	x21, x2
	add	x2, x1, x0
	adrp	x0, _str448@page
	add	x0, x0, _str448@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x22, [x0]
	adrp	x0, _str441@page
	add	x0, x0, _str441@pageoff
	bl	_donna_shell_exec
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
	beq	L91
	mov	x0, #24
	bl	_malloc
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
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
	str	x0, [x1]
	mov	x0, #24
	bl	_malloc
	mov	x1, x21
	mov	x22, x0
	mov	x0, #1
	str	x0, [x22]
	mov	x0, #8
	mov	x21, x1
	add	x1, x22, x0
	adrp	x0, _str463@page
	add	x0, x0, _str463@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x22, x0
	str	x23, [x0]
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, _str470@page
	add	x0, x0, _str470@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x21, [x0]
	adrp	x0, _str459@page
	add	x0, x0, _str459@pageoff
	bl	_donna_shell_exec
	str	x0, [x20]
	b	L92
L91:
	str	x0, [x20]
L92:
	str	x0, [x19]
	b	L96
L93:
	mov	x0, x2
	str	x0, [x19]
	b	L96
L95:
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x20, x0
	mov	x0, #1
	str	x0, [x20]
	mov	x0, #8
	add	x1, x20, x0
	adrp	x0, _str392@page
	add	x0, x0, _str392@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x20, x0
	str	x19, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x19, x0
	mov	x0, #1
	str	x0, [x19]
	mov	x0, #8
	add	x1, x19, x0
	adrp	x0, _str396@page
	add	x0, x0, _str396@pageoff
	str	x0, [x1]
	mov	x0, #16
	add	x0, x19, x0
	str	x20, [x0]
	mov	x0, #24
	bl	_malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, _str400@page
	add	x0, x0, _str400@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x19, [x0]
	adrp	x0, _str385@page
	add	x0, x0, _str385@pageoff
	bl	_donna_shell_exec
L96:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 64
	ret
/* end function builder_dependencies_clone_at_ref */

.text
.balign 4
_builder_dependencies_git_cache_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, _str478@page
	add	x0, x0, _str478@pageoff
	bl	_donna_shell_getenv
	adrp	x1, _str480@page
	add	x1, x1, _str480@pageoff
	bl	_donna_files_join
	adrp	x1, _str482@page
	add	x1, x1, _str482@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_dependencies_git_cache_dir */

.text
.balign 4
_builder_dependencies_head_sha:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x1, #1
	str	x1, [x19]
	mov	x1, #8
	add	x2, x19, x1
	adrp	x1, _str485@page
	add	x1, x1, _str485@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x2, x19, x1
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	str	x1, [x2]
	mov	x20, x0
	mov	x0, #24
	bl	_malloc
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x1, #1
	str	x1, [x20]
	mov	x1, #8
	add	x2, x20, x1
	adrp	x1, _str489@page
	add	x1, x1, _str489@pageoff
	str	x1, [x2]
	mov	x1, #16
	add	x1, x20, x1
	str	x19, [x1]
	mov	x19, x0
	mov	x0, #24
	bl	_malloc
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
	bl	_malloc
	mov	x1, x0
	mov	x0, #1
	str	x0, [x1]
	mov	x0, #8
	add	x2, x1, x0
	adrp	x0, _str496@page
	add	x0, x0, _str496@pageoff
	str	x0, [x2]
	mov	x0, #16
	add	x0, x1, x0
	str	x19, [x0]
	adrp	x0, _str484@page
	add	x0, x0, _str484@pageoff
	bl	_donna_shell_output
	bl	_donna_string_trim
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_dependencies_head_sha */

.text
.balign 4
_builder_dependencies_opt_string:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_parsetoml_parsetoml_get_string
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L103
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	b	L104
L103:
	adrp	x0, _str511@page
	add	x0, x0, _str511@pageoff
L104:
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_dependencies_opt_string */

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

