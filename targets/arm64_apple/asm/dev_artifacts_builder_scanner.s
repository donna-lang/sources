.data
.balign 8
_str17:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
_str25:
	.ascii "no donna.toml found "
	.byte 226
	.byte 128
	.byte 148
	.ascii " run `donna new <name>` to create a project"
	.byte 0
/* end data */

.data
.balign 8
_str35:
	.ascii "invalid donna.toml: "
	.byte 0
/* end data */

.data
.balign 8
_str40:
	.ascii "name"
	.byte 0
/* end data */

.data
.balign 8
_str48:
	.ascii "donna.toml is missing required field `name`"
	.byte 0
/* end data */

.data
.balign 8
_str51:
	.ascii "src"
	.byte 0
/* end data */

.data
.balign 8
_str53:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
_str88:
	.ascii "bin"
	.byte 0
/* end data */

.data
.balign 8
_str91:
	.ascii "dev"
	.byte 0
/* end data */

.data
.balign 8
_str94:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str97:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
_str102:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
_str105:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
_str261:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
_str283:
	.ascii "name"
	.byte 0
/* end data */

.data
.balign 8
_str285:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
_str287:
	.ascii "description"
	.byte 0
/* end data */

.data
.balign 8
_str289:
	.ascii "authors"
	.byte 0
/* end data */

.data
.balign 8
_str292:
	.ascii "homepage"
	.byte 0
/* end data */

.data
.balign 8
_str299:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str300:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str301:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_donna_nil:
	.quad 0
/* end data */

.data
.balign 8
_str302:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str303:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str304:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str306:
	.ascii "licences"
	.byte 0
/* end data */

.data
.balign 8
_str316:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str325:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str348:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str357:
	.ascii "licence"
	.byte 0
/* end data */

.data
.balign 8
_str360:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
_str370:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
_str374:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
_str376:
	.ascii "user"
	.byte 0
/* end data */

.data
.balign 8
_str378:
	.ascii "repo"
	.byte 0
/* end data */

.data
.balign 8
_str380:
	.ascii "github"
	.byte 0
/* end data */

.data
.balign 8
_str395:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str396:
	.ascii "https://github.com/"
	.byte 0
/* end data */

.data
.balign 8
_str398:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str402:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
_str408:
	.ascii "https://github.com/"
	.byte 0
/* end data */

.data
.balign 8
_str420:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str423:
	.ascii "git@github.com:"
	.byte 0
/* end data */

.data
.balign 8
_str435:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str484:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str490:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
_str501:
	.ascii ".git"
	.byte 0
/* end data */

.data
.balign 8
_str512:
	.ascii "links"
	.byte 0
/* end data */

.data
.balign 8
_str555:
	.ascii "title"
	.byte 0
/* end data */

.data
.balign 8
_str565:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str567:
	.ascii "href"
	.byte 0
/* end data */

.data
.balign 8
_str577:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str598:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
_str628:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 4
.globl _builder_scanner_Project
_builder_scanner_Project:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #32
	bl	_malloc
	mov	x2, x21
	mov	x1, x20
	mov	x3, #0
	str	x3, [x0]
	mov	x3, #8
	add	x3, x0, x3
	str	x19, [x3]
	mov	x3, #16
	add	x3, x0, x3
	str	x1, [x3]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_scanner_Project */

.text
.balign 4
.globl _builder_scanner_ScanOk
_builder_scanner_ScanOk:
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
/* end function builder_scanner_ScanOk */

.text
.balign 4
.globl _builder_scanner_ScanErr
_builder_scanner_ScanErr:
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
/* end function builder_scanner_ScanErr */

.text
.balign 4
.globl _builder_scanner_ProjectMeta
_builder_scanner_ProjectMeta:
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
	mov	x26, x7
	mov	x25, x6
	mov	x24, x5
	mov	x23, x4
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	mov	x0, #72
	bl	_malloc
	mov	x7, x26
	mov	x6, x25
	mov	x5, x24
	mov	x4, x23
	mov	x3, x22
	mov	x2, x21
	mov	x1, x20
	mov	x8, #0
	str	x8, [x0]
	mov	x8, #8
	add	x8, x0, x8
	str	x19, [x8]
	mov	x8, #16
	add	x8, x0, x8
	str	x1, [x8]
	mov	x1, #24
	add	x1, x0, x1
	str	x2, [x1]
	mov	x1, #32
	add	x1, x0, x1
	str	x3, [x1]
	mov	x1, #40
	add	x1, x0, x1
	str	x4, [x1]
	mov	x1, #48
	add	x1, x0, x1
	str	x5, [x1]
	mov	x1, #56
	add	x1, x0, x1
	str	x6, [x1]
	mov	x1, #64
	add	x1, x0, x1
	str	x7, [x1]
	ldr	x19, [x29, 72]
	ldr	x20, [x29, 64]
	ldr	x21, [x29, 56]
	ldr	x22, [x29, 48]
	ldr	x23, [x29, 40]
	ldr	x24, [x29, 32]
	ldr	x25, [x29, 24]
	ldr	x26, [x29, 16]
	ldp	x29, x30, [sp], 80
	ret
/* end function builder_scanner_ProjectMeta */

.text
.balign 4
.globl _builder_scanner_scan
_builder_scanner_scan:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x0
	adrp	x1, _str17@page
	add	x1, x1, _str17@pageoff
	mov	x0, x21
	bl	_donna_files_join
	mov	x19, x0
	bl	_donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L15
	bl	_donna_files_read
	bl	_parsetoml_parsetoml_parse
	mov	x19, x0
	bl	_parsetoml_parsetoml_is_err
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L14
	bl	_parsetoml_parsetoml_unwrap_table
	adrp	x1, _str40@page
	add	x1, x1, _str40@pageoff
	bl	_parsetoml_parsetoml_get_string
	mov	x20, x0
	bl	_parsetoml_parsetoml_is_err
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	L12
	bl	_parsetoml_parsetoml_unwrap_string
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	adrp	x1, _str51@page
	add	x1, x1, _str51@pageoff
	mov	x22, x0
	bl	_donna_files_join
	mov	x1, x0
	mov	x0, x22
	mov	x22, x1
	adrp	x1, _str53@page
	add	x1, x1, _str53@pageoff
	bl	_donna_files_join
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	bl	_builder_scanner_Project
	bl	_builder_scanner_ScanOk
	str	x0, [x20]
	b	L13
L12:
	adrp	x0, _str48@page
	add	x0, x0, _str48@pageoff
	bl	_builder_scanner_ScanErr
	str	x0, [x20]
L13:
	str	x0, [x19]
	b	L16
L14:
	bl	_parsetoml_parsetoml_err_msg
	mov	x1, x0
	adrp	x0, _str35@page
	add	x0, x0, _str35@pageoff
	bl	___rt_str_concat
	bl	_builder_scanner_ScanErr
	str	x0, [x19]
	b	L16
L15:
	adrp	x0, _str25@page
	add	x0, x0, _str25@pageoff
	bl	_builder_scanner_ScanErr
L16:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_scanner_scan */

.text
.balign 4
.globl _builder_scanner_project_name
_builder_scanner_project_name:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_name */

.text
.balign 4
.globl _builder_scanner_project_src_dir
_builder_scanner_project_src_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_src_dir */

.text
.balign 4
.globl _builder_scanner_project_build_dir
_builder_scanner_project_build_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_build_dir */

.text
.balign 4
.globl _builder_scanner_project_bin_dir
_builder_scanner_project_bin_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_scanner_project_build_dir
	adrp	x1, _str88@page
	add	x1, x1, _str88@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_bin_dir */

.text
.balign 4
.globl _builder_scanner_project_dev_dir
_builder_scanner_project_dev_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_scanner_project_build_dir
	adrp	x1, _str91@page
	add	x1, x1, _str91@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_dev_dir */

.text
.balign 4
.globl _builder_scanner_project_dev_artifacts_dir
_builder_scanner_project_dev_artifacts_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_scanner_project_dev_dir
	adrp	x1, _str94@page
	add	x1, x1, _str94@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_dev_artifacts_dir */

.text
.balign 4
.globl _builder_scanner_project_packages_dir
_builder_scanner_project_packages_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_scanner_project_build_dir
	adrp	x1, _str97@page
	add	x1, x1, _str97@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_packages_dir */

.text
.balign 4
.globl _builder_scanner_project_package_dir
_builder_scanner_project_package_dir:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	_builder_scanner_project_packages_dir
	mov	x1, x19
	bl	_donna_files_join
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_scanner_project_package_dir */

.text
.balign 4
.globl _builder_scanner_project_package_artifacts_dir
_builder_scanner_project_package_artifacts_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_scanner_project_package_dir
	adrp	x1, _str102@page
	add	x1, x1, _str102@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_package_artifacts_dir */

.text
.balign 4
.globl _builder_scanner_project_test_dir
_builder_scanner_project_test_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_scanner_project_build_dir
	adrp	x1, _str105@page
	add	x1, x1, _str105@pageoff
	bl	_donna_files_join
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_project_test_dir */

.text
.balign 4
.globl _builder_scanner_meta_name
_builder_scanner_meta_name:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_name */

.text
.balign 4
.globl _builder_scanner_meta_version
_builder_scanner_meta_version:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_version */

.text
.balign 4
.globl _builder_scanner_meta_description
_builder_scanner_meta_description:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_description */

.text
.balign 4
.globl _builder_scanner_meta_authors
_builder_scanner_meta_authors:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_authors */

.text
.balign 4
.globl _builder_scanner_meta_licence
_builder_scanner_meta_licence:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #40
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_licence */

.text
.balign 4
.globl _builder_scanner_meta_homepage
_builder_scanner_meta_homepage:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #48
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_homepage */

.text
.balign 4
.globl _builder_scanner_meta_repository
_builder_scanner_meta_repository:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #56
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_repository */

.text
.balign 4
.globl _builder_scanner_meta_github_owner_repo
_builder_scanner_meta_github_owner_repo:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_builder_scanner_meta_repository
	bl	_builder_scanner_github_owner_repo
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_github_owner_repo */

.text
.balign 4
.globl _builder_scanner_meta_links
_builder_scanner_meta_links:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #64
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_meta_links */

.text
.balign 4
.globl _builder_scanner_scan_meta
_builder_scanner_scan_meta:
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
	adrp	x1, _str261@page
	add	x1, x1, _str261@pageoff
	bl	_donna_files_join
	mov	x19, x0
	bl	_donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	L59
	bl	_donna_files_read
	bl	_parsetoml_parsetoml_parse
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L58
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _str283@page
	add	x1, x1, _str283@pageoff
	mov	x20, x0
	bl	_builder_scanner_opt_str
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, _str285@page
	add	x1, x1, _str285@pageoff
	mov	x21, x0
	bl	_builder_scanner_opt_str
	mov	x1, x0
	mov	x0, x21
	mov	x22, x1
	adrp	x1, _str287@page
	add	x1, x1, _str287@pageoff
	mov	x21, x0
	bl	_builder_scanner_opt_str
	mov	x1, x22
	mov	x22, x0
	mov	x0, x21
	mov	x24, x1
	adrp	x1, _str289@page
	add	x1, x1, _str289@pageoff
	mov	x21, x0
	bl	_builder_scanner_str_array
	mov	x23, x0
	mov	x0, x21
	mov	x21, x0
	bl	_builder_scanner_parse_licence
	mov	x1, x24
	mov	x24, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, _str292@page
	add	x1, x1, _str292@pageoff
	mov	x25, x0
	bl	_builder_scanner_opt_str
	mov	x17, x0
	mov	x0, x25
	mov	x25, x17
	mov	x26, x0
	bl	_builder_scanner_parse_repository
	mov	x17, x0
	mov	x0, x26
	mov	x26, x17
	bl	_builder_scanner_parse_links
	mov	x6, x26
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x7, x0
	mov	x0, x20
	bl	_builder_scanner_ProjectMeta
	str	x0, [x19]
	b	L60
L58:
	bl	_builder_scanner_empty_meta
	str	x0, [x19]
	b	L60
L59:
	bl	_builder_scanner_empty_meta
L60:
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
/* end function builder_scanner_scan_meta */

.text
.balign 4
_builder_scanner_empty_meta:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x7, _donna_nil@page
	add	x7, x7, _donna_nil@pageoff
	adrp	x6, _str304@page
	add	x6, x6, _str304@pageoff
	adrp	x5, _str303@page
	add	x5, x5, _str303@pageoff
	adrp	x4, _str302@page
	add	x4, x4, _str302@pageoff
	adrp	x3, _donna_nil@page
	add	x3, x3, _donna_nil@pageoff
	adrp	x2, _str301@page
	add	x2, x2, _str301@pageoff
	adrp	x1, _str300@page
	add	x1, x1, _str300@pageoff
	adrp	x0, _str299@page
	add	x0, x0, _str299@pageoff
	bl	_builder_scanner_ProjectMeta
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_empty_meta */

.text
.balign 4
_builder_scanner_parse_licence:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	adrp	x1, _str306@page
	add	x1, x1, _str306@pageoff
	mov	x19, x0
	bl	_parsetoml_parsetoml_get_array
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	L77
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	L74
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	L68
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	L69
L68:
	mov	x3, #8
	add	x3, x2, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
L69:
	cmp	w3, #0
	bne	L72
	adrp	x2, _str348@page
	add	x2, x2, _str348@pageoff
	str	x2, [x1]
	mov	x20, x0
	adrp	x19, _str348@page
	add	x19, x19, _str348@pageoff
	b	L76
L72:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x19, [x2]
	str	x19, [x1]
	mov	x20, x0
	b	L76
L74:
	mov	x20, x0
	adrp	x0, _str325@page
	add	x0, x0, _str325@pageoff
	str	x0, [x1]
	adrp	x19, _str325@page
	add	x19, x19, _str325@pageoff
L76:
	mov	x0, x19
	b	L79
L77:
	mov	x20, x0
	adrp	x0, _str316@page
	add	x0, x0, _str316@pageoff
L79:
	mov	x19, x0
	bl	_donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	L82
	mov	x0, x20
	adrp	x1, _str357@page
	add	x1, x1, _str357@pageoff
	bl	_builder_scanner_opt_str
	str	x0, [x19]
	b	L83
L82:
	str	x0, [x19]
L83:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_scanner_parse_licence */

.text
.balign 4
_builder_scanner_parse_repository:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	adrp	x1, _str360@page
	add	x1, x1, _str360@pageoff
	mov	x19, x0
	bl	_parsetoml_parsetoml_get_table
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L92
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _str374@page
	add	x1, x1, _str374@pageoff
	mov	x20, x0
	bl	_builder_scanner_opt_str
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, _str376@page
	add	x1, x1, _str376@pageoff
	mov	x21, x0
	bl	_builder_scanner_opt_str
	mov	x22, x0
	mov	x0, x21
	adrp	x1, _str378@page
	add	x1, x1, _str378@pageoff
	bl	_builder_scanner_opt_str
	mov	x1, x0
	mov	x0, x20
	mov	x21, x1
	adrp	x1, _str380@page
	add	x1, x1, _str380@pageoff
	bl	_donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L87
	adrp	x1, _str402@page
	add	x1, x1, _str402@pageoff
	bl	_builder_scanner_opt_str
	str	x0, [x19]
	b	L94
L87:
	mov	x0, x22
	bl	_donna_string_is_empty
	mov	x20, x0
	mov	x0, x21
	bl	_donna_string_is_empty
	mov	x1, x22
	orr	x0, x20, x0
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x0, #1
	beq	L89
	adrp	x0, _str396@page
	add	x0, x0, _str396@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, _str398@page
	add	x1, x1, _str398@pageoff
	bl	___rt_str_concat
	mov	x1, x21
	bl	___rt_str_concat
	str	x0, [x20]
	b	L91
L89:
	adrp	x0, _str395@page
	add	x0, x0, _str395@pageoff
	str	x0, [x20]
	adrp	x0, _str395@page
	add	x0, x0, _str395@pageoff
L91:
	str	x0, [x19]
	b	L94
L92:
	mov	x0, x19
	adrp	x1, _str370@page
	add	x1, x1, _str370@pageoff
	bl	_builder_scanner_opt_str
L94:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_scanner_parse_repository */

.text
.balign 4
_builder_scanner_github_owner_repo:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	bl	_builder_scanner_strip_trailing_slash
	bl	_builder_scanner_strip_git_suffix
	adrp	x1, _str408@page
	add	x1, x1, _str408@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	L100
	adrp	x1, _str423@page
	add	x1, x1, _str423@pageoff
	mov	x19, x0
	bl	_donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	L99
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L101
L99:
	mov	x20, x0
	adrp	x0, _str423@page
	add	x0, x0, _str423@pageoff
	bl	_donna_string_length
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	bl	_donna_string_length
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	adrp	x0, _str423@page
	add	x0, x0, _str423@pageoff
	bl	_donna_string_length
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	sub	x2, x20, x2
	bl	_donna_string_slice
	adrp	x1, _str435@page
	add	x1, x1, _str435@pageoff
	bl	_donna_string_split
	bl	_builder_scanner_owner_repo_from_parts
	str	x0, [x19]
	b	L101
L100:
	mov	x19, x0
	adrp	x0, _str408@page
	add	x0, x0, _str408@pageoff
	bl	_donna_string_length
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	bl	_donna_string_length
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	adrp	x0, _str408@page
	add	x0, x0, _str408@pageoff
	bl	_donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	sub	x2, x19, x2
	bl	_donna_string_slice
	adrp	x1, _str420@page
	add	x1, x1, _str420@pageoff
	bl	_donna_string_split
	bl	_builder_scanner_owner_repo_from_parts
L101:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_scanner_github_owner_repo */

.text
.balign 4
_builder_scanner_owner_repo_from_parts:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #1
	beq	L104
	mov	x0, #0
	b	L110
L104:
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	L107
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	L109
L107:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
L109:
	mov	x2, #1
	and	x0, x0, x2
L110:
	cmp	w0, #0
	bne	L112
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	b	L116
L112:
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x1, [x1]
	mov	x2, #8
	add	x1, x1, x2
	ldr	x21, [x1]
	mov	x19, x0
	bl	_donna_string_is_empty
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	mov	x0, x21
	bl	_donna_string_is_empty
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	orr	x2, x19, x2
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L114
	mov	x20, x1
	adrp	x1, _str484@page
	add	x1, x1, _str484@pageoff
	bl	___rt_str_concat
	mov	x1, x20
	bl	___rt_str_concat
	bl	_donna_option_Some
	str	x0, [x19]
	b	L116
L114:
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
	str	x0, [x19]
	adrp	x0, _donna_option_None@page
	add	x0, x0, _donna_option_None@pageoff
L116:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_scanner_owner_repo_from_parts */

.text
.balign 4
_builder_scanner_strip_trailing_slash:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _str490@page
	add	x1, x1, _str490@pageoff
	mov	x19, x0
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	L119
	mov	x19, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #0
	bl	_donna_string_slice
L119:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_scanner_strip_trailing_slash */

.text
.balign 4
_builder_scanner_strip_git_suffix:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, _str501@page
	add	x1, x1, _str501@pageoff
	mov	x19, x0
	bl	_donna_string_ends_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	L122
	mov	x19, x0
	bl	_donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #4
	sub	x2, x1, x2
	mov	x1, #0
	bl	_donna_string_slice
L122:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
/* end function builder_scanner_strip_git_suffix */

.text
.balign 4
_builder_scanner_parse_links:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, _str512@page
	add	x1, x1, _str512@pageoff
	bl	_parsetoml_parsetoml_get_array
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L125
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_scanner_collect_links
	b	L126
L125:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L126:
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_parse_links */

.text
.balign 4
_builder_scanner_collect_links:
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
	ldr	x2, [x1]
	cmp	x2, #0
	beq	L144
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	L131
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	L132
L131:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #4
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
L132:
	cmp	w2, #0
	bne	L134
	mov	x19, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	_builder_scanner_collect_links
	b	L145
L134:
	mov	x19, x0
	mov	x0, #8
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x2, #16
	add	x1, x1, x2
	ldr	x20, [x1]
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _str555@page
	add	x1, x1, _str555@pageoff
	mov	x21, x0
	bl	_builder_scanner_lookup_pair
	mov	x2, x0
	mov	x0, x21
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	L138
	adrp	x2, _str565@page
	add	x2, x2, _str565@pageoff
	str	x2, [x1]
	adrp	x22, _str565@page
	add	x22, x22, _str565@pageoff
	b	L139
L138:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	str	x22, [x1]
L139:
	adrp	x1, _str567@page
	add	x1, x1, _str567@pageoff
	bl	_builder_scanner_lookup_pair
	mov	x2, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	L142
	adrp	x2, _str577@page
	add	x2, x2, _str577@pageoff
	str	x2, [x1]
	adrp	x21, _str577@page
	add	x21, x21, _str577@pageoff
	b	L143
L142:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x21, [x2]
	str	x21, [x1]
L143:
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
	bl	_builder_scanner_collect_links
	b	L145
L144:
	bl	_donna_list_reverse
L145:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_scanner_collect_links */

.text
.balign 4
_builder_scanner_lookup_pair:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	L151
	mov	x2, #8
	add	x2, x0, x2
	ldr	x2, [x2]
	mov	x3, #16
	add	x0, x0, x3
	ldr	x20, [x0]
	ldr	x0, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x19, [x2]
	mov	x21, x1
	bl	_donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	L150
	mov	x0, x20
	bl	_builder_scanner_lookup_pair
	str	x0, [x19]
	b	L152
L150:
	str	x0, [x19]
	b	L152
L151:
	adrp	x0, _str598@page
	add	x0, x0, _str598@pageoff
	bl	_parsetoml_parsetoml_TomlString
L152:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_scanner_lookup_pair */

.text
.balign 4
_builder_scanner_opt_str:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_parsetoml_parsetoml_get_string
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L155
	adrp	x0, _str628@page
	add	x0, x0, _str628@pageoff
	b	L156
L155:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
L156:
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_opt_str */

.text
.balign 4
_builder_scanner_str_array:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	_parsetoml_parsetoml_get_array
	ldr	x1, [x0]
	cmp	x1, #1
	beq	L159
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, _donna_nil@page
	add	x1, x1, _donna_nil@pageoff
	bl	_builder_scanner_collect_strings
	b	L160
L159:
	adrp	x0, _donna_nil@page
	add	x0, x0, _donna_nil@pageoff
L160:
	ldp	x29, x30, [sp], 16
	ret
/* end function builder_scanner_str_array */

.text
.balign 4
_builder_scanner_collect_strings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	L169
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	L165
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	L166
L165:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
L166:
	cmp	w1, #0
	bne	L168
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	_builder_scanner_collect_strings
	b	L171
L168:
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
	bl	_builder_scanner_collect_strings
	b	L171
L169:
	mov	x0, x19
	bl	_donna_list_reverse
L171:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
/* end function builder_scanner_collect_strings */

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

