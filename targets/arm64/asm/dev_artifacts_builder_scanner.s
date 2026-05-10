.data
.balign 8
str17:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
str25:
	.ascii "no donna.toml found "
	.byte 226
	.byte 128
	.byte 148
	.ascii " run `donna new <name>` to create a project"
	.byte 0
/* end data */

.data
.balign 8
str35:
	.ascii "invalid donna.toml: "
	.byte 0
/* end data */

.data
.balign 8
str40:
	.ascii "name"
	.byte 0
/* end data */

.data
.balign 8
str48:
	.ascii "donna.toml is missing required field `name`"
	.byte 0
/* end data */

.data
.balign 8
str51:
	.ascii "src"
	.byte 0
/* end data */

.data
.balign 8
str53:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
str88:
	.ascii "bin"
	.byte 0
/* end data */

.data
.balign 8
str91:
	.ascii "dev"
	.byte 0
/* end data */

.data
.balign 8
str94:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str97:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str102:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str105:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str261:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
str283:
	.ascii "name"
	.byte 0
/* end data */

.data
.balign 8
str285:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str287:
	.ascii "description"
	.byte 0
/* end data */

.data
.balign 8
str289:
	.ascii "authors"
	.byte 0
/* end data */

.data
.balign 8
str292:
	.ascii "homepage"
	.byte 0
/* end data */

.data
.balign 8
str299:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str300:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str301:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str302:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str303:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str304:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str306:
	.ascii "licences"
	.byte 0
/* end data */

.data
.balign 8
str316:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str325:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str348:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str357:
	.ascii "licence"
	.byte 0
/* end data */

.data
.balign 8
str360:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
str370:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
str374:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str376:
	.ascii "user"
	.byte 0
/* end data */

.data
.balign 8
str378:
	.ascii "repo"
	.byte 0
/* end data */

.data
.balign 8
str380:
	.ascii "github"
	.byte 0
/* end data */

.data
.balign 8
str395:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str396:
	.ascii "https://github.com/"
	.byte 0
/* end data */

.data
.balign 8
str398:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str402:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
str408:
	.ascii "https://github.com/"
	.byte 0
/* end data */

.data
.balign 8
str420:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str423:
	.ascii "git@github.com:"
	.byte 0
/* end data */

.data
.balign 8
str435:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str484:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str490:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str501:
	.ascii ".git"
	.byte 0
/* end data */

.data
.balign 8
str512:
	.ascii "links"
	.byte 0
/* end data */

.data
.balign 8
str555:
	.ascii "title"
	.byte 0
/* end data */

.data
.balign 8
str565:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str567:
	.ascii "href"
	.byte 0
/* end data */

.data
.balign 8
str577:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str598:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str628:
	.ascii ""
	.byte 0
/* end data */

.text
.balign 16
.globl builder_scanner_Project
builder_scanner_Project:
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
	bl	malloc
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
.type builder_scanner_Project, @function
.size builder_scanner_Project, .-builder_scanner_Project
/* end function builder_scanner_Project */

.text
.balign 16
.globl builder_scanner_ScanOk
builder_scanner_ScanOk:
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
.type builder_scanner_ScanOk, @function
.size builder_scanner_ScanOk, .-builder_scanner_ScanOk
/* end function builder_scanner_ScanOk */

.text
.balign 16
.globl builder_scanner_ScanErr
builder_scanner_ScanErr:
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
.type builder_scanner_ScanErr, @function
.size builder_scanner_ScanErr, .-builder_scanner_ScanErr
/* end function builder_scanner_ScanErr */

.text
.balign 16
.globl builder_scanner_ProjectMeta
builder_scanner_ProjectMeta:
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
	bl	malloc
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
.type builder_scanner_ProjectMeta, @function
.size builder_scanner_ProjectMeta, .-builder_scanner_ProjectMeta
/* end function builder_scanner_ProjectMeta */

.text
.balign 16
.globl builder_scanner_scan
builder_scanner_scan:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	mov	x21, x0
	adrp	x1, str17
	add	x1, x1, #:lo12:str17
	mov	x0, x21
	bl	donna_files_join
	mov	x19, x0
	bl	donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L15
	bl	donna_files_read
	bl	parsetoml_parsetoml_parse
	mov	x19, x0
	bl	parsetoml_parsetoml_is_err
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L14
	bl	parsetoml_parsetoml_unwrap_table
	adrp	x1, str40
	add	x1, x1, #:lo12:str40
	bl	parsetoml_parsetoml_get_string
	mov	x20, x0
	bl	parsetoml_parsetoml_is_err
	mov	x1, x0
	mov	x0, x20
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x1, #1
	beq	.L12
	bl	parsetoml_parsetoml_unwrap_string
	mov	x17, x0
	mov	x0, x21
	mov	x21, x17
	adrp	x1, str51
	add	x1, x1, #:lo12:str51
	mov	x22, x0
	bl	donna_files_join
	mov	x1, x0
	mov	x0, x22
	mov	x22, x1
	adrp	x1, str53
	add	x1, x1, #:lo12:str53
	bl	donna_files_join
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	bl	builder_scanner_Project
	bl	builder_scanner_ScanOk
	str	x0, [x20]
	b	.L13
.L12:
	adrp	x0, str48
	add	x0, x0, #:lo12:str48
	bl	builder_scanner_ScanErr
	str	x0, [x20]
.L13:
	str	x0, [x19]
	b	.L16
.L14:
	bl	parsetoml_parsetoml_err_msg
	mov	x1, x0
	adrp	x0, str35
	add	x0, x0, #:lo12:str35
	bl	__rt_str_concat
	bl	builder_scanner_ScanErr
	str	x0, [x19]
	b	.L16
.L15:
	adrp	x0, str25
	add	x0, x0, #:lo12:str25
	bl	builder_scanner_ScanErr
.L16:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_scanner_scan, @function
.size builder_scanner_scan, .-builder_scanner_scan
/* end function builder_scanner_scan */

.text
.balign 16
.globl builder_scanner_project_name
builder_scanner_project_name:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_name, @function
.size builder_scanner_project_name, .-builder_scanner_project_name
/* end function builder_scanner_project_name */

.text
.balign 16
.globl builder_scanner_project_src_dir
builder_scanner_project_src_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_src_dir, @function
.size builder_scanner_project_src_dir, .-builder_scanner_project_src_dir
/* end function builder_scanner_project_src_dir */

.text
.balign 16
.globl builder_scanner_project_build_dir
builder_scanner_project_build_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_build_dir, @function
.size builder_scanner_project_build_dir, .-builder_scanner_project_build_dir
/* end function builder_scanner_project_build_dir */

.text
.balign 16
.globl builder_scanner_project_bin_dir
builder_scanner_project_bin_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_scanner_project_build_dir
	adrp	x1, str88
	add	x1, x1, #:lo12:str88
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_bin_dir, @function
.size builder_scanner_project_bin_dir, .-builder_scanner_project_bin_dir
/* end function builder_scanner_project_bin_dir */

.text
.balign 16
.globl builder_scanner_project_dev_dir
builder_scanner_project_dev_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_scanner_project_build_dir
	adrp	x1, str91
	add	x1, x1, #:lo12:str91
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_dev_dir, @function
.size builder_scanner_project_dev_dir, .-builder_scanner_project_dev_dir
/* end function builder_scanner_project_dev_dir */

.text
.balign 16
.globl builder_scanner_project_dev_artifacts_dir
builder_scanner_project_dev_artifacts_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_scanner_project_dev_dir
	adrp	x1, str94
	add	x1, x1, #:lo12:str94
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_dev_artifacts_dir, @function
.size builder_scanner_project_dev_artifacts_dir, .-builder_scanner_project_dev_artifacts_dir
/* end function builder_scanner_project_dev_artifacts_dir */

.text
.balign 16
.globl builder_scanner_project_packages_dir
builder_scanner_project_packages_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_scanner_project_build_dir
	adrp	x1, str97
	add	x1, x1, #:lo12:str97
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_packages_dir, @function
.size builder_scanner_project_packages_dir, .-builder_scanner_project_packages_dir
/* end function builder_scanner_project_packages_dir */

.text
.balign 16
.globl builder_scanner_project_package_dir
builder_scanner_project_package_dir:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	mov	x19, x1
	bl	builder_scanner_project_packages_dir
	mov	x1, x19
	bl	donna_files_join
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_scanner_project_package_dir, @function
.size builder_scanner_project_package_dir, .-builder_scanner_project_package_dir
/* end function builder_scanner_project_package_dir */

.text
.balign 16
.globl builder_scanner_project_package_artifacts_dir
builder_scanner_project_package_artifacts_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_scanner_project_package_dir
	adrp	x1, str102
	add	x1, x1, #:lo12:str102
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_package_artifacts_dir, @function
.size builder_scanner_project_package_artifacts_dir, .-builder_scanner_project_package_artifacts_dir
/* end function builder_scanner_project_package_artifacts_dir */

.text
.balign 16
.globl builder_scanner_project_test_dir
builder_scanner_project_test_dir:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_scanner_project_build_dir
	adrp	x1, str105
	add	x1, x1, #:lo12:str105
	bl	donna_files_join
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_project_test_dir, @function
.size builder_scanner_project_test_dir, .-builder_scanner_project_test_dir
/* end function builder_scanner_project_test_dir */

.text
.balign 16
.globl builder_scanner_meta_name
builder_scanner_meta_name:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_name, @function
.size builder_scanner_meta_name, .-builder_scanner_meta_name
/* end function builder_scanner_meta_name */

.text
.balign 16
.globl builder_scanner_meta_version
builder_scanner_meta_version:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_version, @function
.size builder_scanner_meta_version, .-builder_scanner_meta_version
/* end function builder_scanner_meta_version */

.text
.balign 16
.globl builder_scanner_meta_description
builder_scanner_meta_description:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #24
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_description, @function
.size builder_scanner_meta_description, .-builder_scanner_meta_description
/* end function builder_scanner_meta_description */

.text
.balign 16
.globl builder_scanner_meta_authors
builder_scanner_meta_authors:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #32
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_authors, @function
.size builder_scanner_meta_authors, .-builder_scanner_meta_authors
/* end function builder_scanner_meta_authors */

.text
.balign 16
.globl builder_scanner_meta_licence
builder_scanner_meta_licence:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #40
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_licence, @function
.size builder_scanner_meta_licence, .-builder_scanner_meta_licence
/* end function builder_scanner_meta_licence */

.text
.balign 16
.globl builder_scanner_meta_homepage
builder_scanner_meta_homepage:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #48
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_homepage, @function
.size builder_scanner_meta_homepage, .-builder_scanner_meta_homepage
/* end function builder_scanner_meta_homepage */

.text
.balign 16
.globl builder_scanner_meta_repository
builder_scanner_meta_repository:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #56
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_repository, @function
.size builder_scanner_meta_repository, .-builder_scanner_meta_repository
/* end function builder_scanner_meta_repository */

.text
.balign 16
.globl builder_scanner_meta_github_owner_repo
builder_scanner_meta_github_owner_repo:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	builder_scanner_meta_repository
	bl	builder_scanner_github_owner_repo
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_github_owner_repo, @function
.size builder_scanner_meta_github_owner_repo, .-builder_scanner_meta_github_owner_repo
/* end function builder_scanner_meta_github_owner_repo */

.text
.balign 16
.globl builder_scanner_meta_links
builder_scanner_meta_links:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x1, #64
	add	x0, x0, x1
	ldr	x0, [x0]
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_meta_links, @function
.size builder_scanner_meta_links, .-builder_scanner_meta_links
/* end function builder_scanner_meta_links */

.text
.balign 16
.globl builder_scanner_scan_meta
builder_scanner_scan_meta:
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
	adrp	x1, str261
	add	x1, x1, #:lo12:str261
	bl	donna_files_join
	mov	x19, x0
	bl	donna_files_exists
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #0
	beq	.L59
	bl	donna_files_read
	bl	parsetoml_parsetoml_parse
	mov	x1, #16
	sub	sp, sp, x1
	mov	x19, sp
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L58
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, str283
	add	x1, x1, #:lo12:str283
	mov	x20, x0
	bl	builder_scanner_opt_str
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, str285
	add	x1, x1, #:lo12:str285
	mov	x21, x0
	bl	builder_scanner_opt_str
	mov	x1, x0
	mov	x0, x21
	mov	x22, x1
	adrp	x1, str287
	add	x1, x1, #:lo12:str287
	mov	x21, x0
	bl	builder_scanner_opt_str
	mov	x1, x22
	mov	x22, x0
	mov	x0, x21
	mov	x24, x1
	adrp	x1, str289
	add	x1, x1, #:lo12:str289
	mov	x21, x0
	bl	builder_scanner_str_array
	mov	x23, x0
	mov	x0, x21
	mov	x21, x0
	bl	builder_scanner_parse_licence
	mov	x1, x24
	mov	x24, x0
	mov	x0, x21
	mov	x21, x1
	adrp	x1, str292
	add	x1, x1, #:lo12:str292
	mov	x25, x0
	bl	builder_scanner_opt_str
	mov	x17, x0
	mov	x0, x25
	mov	x25, x17
	mov	x26, x0
	bl	builder_scanner_parse_repository
	mov	x17, x0
	mov	x0, x26
	mov	x26, x17
	bl	builder_scanner_parse_links
	mov	x6, x26
	mov	x5, x25
	mov	x4, x24
	mov	x3, x23
	mov	x2, x22
	mov	x1, x21
	mov	x7, x0
	mov	x0, x20
	bl	builder_scanner_ProjectMeta
	str	x0, [x19]
	b	.L60
.L58:
	bl	builder_scanner_empty_meta
	str	x0, [x19]
	b	.L60
.L59:
	bl	builder_scanner_empty_meta
.L60:
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
.type builder_scanner_scan_meta, @function
.size builder_scanner_scan_meta, .-builder_scanner_scan_meta
/* end function builder_scanner_scan_meta */

.text
.balign 16
builder_scanner_empty_meta:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x7, donna_nil
	add	x7, x7, #:lo12:donna_nil
	adrp	x6, str304
	add	x6, x6, #:lo12:str304
	adrp	x5, str303
	add	x5, x5, #:lo12:str303
	adrp	x4, str302
	add	x4, x4, #:lo12:str302
	adrp	x3, donna_nil
	add	x3, x3, #:lo12:donna_nil
	adrp	x2, str301
	add	x2, x2, #:lo12:str301
	adrp	x1, str300
	add	x1, x1, #:lo12:str300
	adrp	x0, str299
	add	x0, x0, #:lo12:str299
	bl	builder_scanner_ProjectMeta
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_empty_meta, @function
.size builder_scanner_empty_meta, .-builder_scanner_empty_meta
/* end function builder_scanner_empty_meta */

.text
.balign 16
builder_scanner_parse_licence:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	str	x20, [x29, 16]
	adrp	x1, str306
	add	x1, x1, #:lo12:str306
	mov	x19, x0
	bl	parsetoml_parsetoml_get_array
	mov	x1, x0
	mov	x0, x19
	ldr	x2, [x1]
	cmp	x2, #1
	beq	.L77
	mov	x2, #8
	add	x1, x1, x2
	ldr	x2, [x1]
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L74
	mov	x4, #16
	sub	sp, sp, x4
	mov	x4, sp
	cmp	x3, #1
	beq	.L68
	mov	x3, #0
	str	x3, [x4]
	mov	x3, #0
	b	.L69
.L68:
	mov	x3, #8
	add	x3, x2, x3
	ldr	x3, [x3]
	ldr	x3, [x3]
	cmp	x3, #0
	cset	x3, eq
	mov	x5, #1
	and	x3, x3, x5
	str	x3, [x4]
.L69:
	cmp	w3, #0
	bne	.L72
	adrp	x2, str348
	add	x2, x2, #:lo12:str348
	str	x2, [x1]
	mov	x20, x0
	adrp	x19, str348
	add	x19, x19, #:lo12:str348
	b	.L76
.L72:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x2, [x2]
	mov	x3, #8
	add	x2, x2, x3
	ldr	x19, [x2]
	str	x19, [x1]
	mov	x20, x0
	b	.L76
.L74:
	mov	x20, x0
	adrp	x0, str325
	add	x0, x0, #:lo12:str325
	str	x0, [x1]
	adrp	x19, str325
	add	x19, x19, #:lo12:str325
.L76:
	mov	x0, x19
	b	.L79
.L77:
	mov	x20, x0
	adrp	x0, str316
	add	x0, x0, #:lo12:str316
.L79:
	mov	x19, x0
	bl	donna_string_is_empty
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #0
	beq	.L82
	mov	x0, x20
	adrp	x1, str357
	add	x1, x1, #:lo12:str357
	bl	builder_scanner_opt_str
	str	x0, [x19]
	b	.L83
.L82:
	str	x0, [x19]
.L83:
	ldr	x19, [x29, 24]
	ldr	x20, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 32
	ret
.type builder_scanner_parse_licence, @function
.size builder_scanner_parse_licence, .-builder_scanner_parse_licence
/* end function builder_scanner_parse_licence */

.text
.balign 16
builder_scanner_parse_repository:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	adrp	x1, str360
	add	x1, x1, #:lo12:str360
	mov	x19, x0
	bl	parsetoml_parsetoml_get_table
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L92
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, str374
	add	x1, x1, #:lo12:str374
	mov	x20, x0
	bl	builder_scanner_opt_str
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, str376
	add	x1, x1, #:lo12:str376
	mov	x21, x0
	bl	builder_scanner_opt_str
	mov	x22, x0
	mov	x0, x21
	adrp	x1, str378
	add	x1, x1, #:lo12:str378
	bl	builder_scanner_opt_str
	mov	x1, x0
	mov	x0, x20
	mov	x21, x1
	adrp	x1, str380
	add	x1, x1, #:lo12:str380
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L87
	adrp	x1, str402
	add	x1, x1, #:lo12:str402
	bl	builder_scanner_opt_str
	str	x0, [x19]
	b	.L94
.L87:
	mov	x0, x22
	bl	donna_string_is_empty
	mov	x20, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x22
	orr	x0, x20, x0
	mov	x2, #16
	sub	sp, sp, x2
	mov	x20, sp
	cmp	x0, #1
	beq	.L89
	adrp	x0, str396
	add	x0, x0, #:lo12:str396
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str398
	add	x1, x1, #:lo12:str398
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	str	x0, [x20]
	b	.L91
.L89:
	adrp	x0, str395
	add	x0, x0, #:lo12:str395
	str	x0, [x20]
	adrp	x0, str395
	add	x0, x0, #:lo12:str395
.L91:
	str	x0, [x19]
	b	.L94
.L92:
	mov	x0, x19
	adrp	x1, str370
	add	x1, x1, #:lo12:str370
	bl	builder_scanner_opt_str
.L94:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_scanner_parse_repository, @function
.size builder_scanner_parse_repository, .-builder_scanner_parse_repository
/* end function builder_scanner_parse_repository */

.text
.balign 16
builder_scanner_github_owner_repo:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	str	x22, [x29, 16]
	bl	builder_scanner_strip_trailing_slash
	bl	builder_scanner_strip_git_suffix
	adrp	x1, str408
	add	x1, x1, #:lo12:str408
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L100
	adrp	x1, str423
	add	x1, x1, #:lo12:str423
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L99
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L101
.L99:
	mov	x20, x0
	adrp	x0, str423
	add	x0, x0, #:lo12:str423
	bl	donna_string_length
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	bl	donna_string_length
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	adrp	x0, str423
	add	x0, x0, #:lo12:str423
	bl	donna_string_length
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	sub	x2, x20, x2
	bl	donna_string_slice
	adrp	x1, str435
	add	x1, x1, #:lo12:str435
	bl	donna_string_split
	bl	builder_scanner_owner_repo_from_parts
	str	x0, [x19]
	b	.L101
.L100:
	mov	x19, x0
	adrp	x0, str408
	add	x0, x0, #:lo12:str408
	bl	donna_string_length
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	bl	donna_string_length
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	adrp	x0, str408
	add	x0, x0, #:lo12:str408
	bl	donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	sub	x2, x19, x2
	bl	donna_string_slice
	adrp	x1, str420
	add	x1, x1, #:lo12:str420
	bl	donna_string_split
	bl	builder_scanner_owner_repo_from_parts
.L101:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_scanner_github_owner_repo, @function
.size builder_scanner_github_owner_repo, .-builder_scanner_github_owner_repo
/* end function builder_scanner_github_owner_repo */

.text
.balign 16
builder_scanner_owner_repo_from_parts:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x1, x0
	ldr	x0, [x1]
	cmp	x0, #1
	beq	.L104
	mov	x0, #0
	b	.L110
.L104:
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x0, [x0]
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x0, #1
	beq	.L107
	mov	x0, #0
	str	x0, [x2]
	mov	x0, #0
	b	.L109
.L107:
	mov	x0, #1
	str	x0, [x2]
	mov	x0, #1
.L109:
	mov	x2, #1
	and	x0, x0, x2
.L110:
	cmp	w0, #0
	bne	.L112
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	b	.L116
.L112:
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
	bl	donna_string_is_empty
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	mov	x0, x21
	bl	donna_string_is_empty
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	orr	x2, x19, x2
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L114
	mov	x20, x1
	adrp	x1, str484
	add	x1, x1, #:lo12:str484
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	bl	donna_option_Some
	str	x0, [x19]
	b	.L116
.L114:
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
	str	x0, [x19]
	adrp	x0, donna_option_None
	add	x0, x0, #:lo12:donna_option_None
.L116:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_scanner_owner_repo_from_parts, @function
.size builder_scanner_owner_repo_from_parts, .-builder_scanner_owner_repo_from_parts
/* end function builder_scanner_owner_repo_from_parts */

.text
.balign 16
builder_scanner_strip_trailing_slash:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str490
	add	x1, x1, #:lo12:str490
	mov	x19, x0
	bl	donna_string_ends_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	.L119
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #1
	sub	x2, x1, x2
	mov	x1, #0
	bl	donna_string_slice
.L119:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_scanner_strip_trailing_slash, @function
.size builder_scanner_strip_trailing_slash, .-builder_scanner_strip_trailing_slash
/* end function builder_scanner_strip_trailing_slash */

.text
.balign 16
builder_scanner_strip_git_suffix:
	hint	#34
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x19, [x29, 24]
	adrp	x1, str501
	add	x1, x1, #:lo12:str501
	mov	x19, x0
	bl	donna_string_ends_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	bne	.L122
	mov	x19, x0
	bl	donna_string_length
	mov	x1, x0
	mov	x0, x19
	mov	x2, #4
	sub	x2, x1, x2
	mov	x1, #0
	bl	donna_string_slice
.L122:
	ldr	x19, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
.type builder_scanner_strip_git_suffix, @function
.size builder_scanner_strip_git_suffix, .-builder_scanner_strip_git_suffix
/* end function builder_scanner_strip_git_suffix */

.text
.balign 16
builder_scanner_parse_links:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x1, str512
	add	x1, x1, #:lo12:str512
	bl	parsetoml_parsetoml_get_array
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L125
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_scanner_collect_links
	b	.L126
.L125:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L126:
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_parse_links, @function
.size builder_scanner_parse_links, .-builder_scanner_parse_links
/* end function builder_scanner_parse_links */

.text
.balign 16
builder_scanner_collect_links:
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
	beq	.L144
	mov	x3, #16
	sub	sp, sp, x3
	mov	x3, sp
	cmp	x2, #1
	beq	.L131
	mov	x2, #0
	str	x2, [x3]
	mov	x2, #0
	b	.L132
.L131:
	mov	x2, #8
	add	x2, x1, x2
	ldr	x2, [x2]
	ldr	x2, [x2]
	cmp	x2, #4
	cset	x2, eq
	mov	x4, #1
	and	x2, x2, x4
	str	x2, [x3]
.L132:
	cmp	w2, #0
	bne	.L134
	mov	x19, x0
	mov	x0, #16
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x19
	bl	builder_scanner_collect_links
	b	.L145
.L134:
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
	adrp	x1, str555
	add	x1, x1, #:lo12:str555
	mov	x21, x0
	bl	builder_scanner_lookup_pair
	mov	x2, x0
	mov	x0, x21
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L138
	adrp	x2, str565
	add	x2, x2, #:lo12:str565
	str	x2, [x1]
	adrp	x22, str565
	add	x22, x22, #:lo12:str565
	b	.L139
.L138:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	str	x22, [x1]
.L139:
	adrp	x1, str567
	add	x1, x1, #:lo12:str567
	bl	builder_scanner_lookup_pair
	mov	x2, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L142
	adrp	x2, str577
	add	x2, x2, #:lo12:str577
	str	x2, [x1]
	adrp	x21, str577
	add	x21, x21, #:lo12:str577
	b	.L143
.L142:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x21, [x2]
	str	x21, [x1]
.L143:
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
	bl	builder_scanner_collect_links
	b	.L145
.L144:
	bl	donna_list_reverse
.L145:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	ldr	x22, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_scanner_collect_links, @function
.size builder_scanner_collect_links, .-builder_scanner_collect_links
/* end function builder_scanner_collect_links */

.text
.balign 16
builder_scanner_lookup_pair:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	ldr	x2, [x0]
	cmp	x2, #0
	beq	.L151
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
	bl	donna_string_equal
	mov	x1, x21
	mov	x2, x0
	mov	x0, x19
	mov	x3, #16
	sub	sp, sp, x3
	mov	x19, sp
	cmp	x2, #1
	beq	.L150
	mov	x0, x20
	bl	builder_scanner_lookup_pair
	str	x0, [x19]
	b	.L152
.L150:
	str	x0, [x19]
	b	.L152
.L151:
	adrp	x0, str598
	add	x0, x0, #:lo12:str598
	bl	parsetoml_parsetoml_TomlString
.L152:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_scanner_lookup_pair, @function
.size builder_scanner_lookup_pair, .-builder_scanner_lookup_pair
/* end function builder_scanner_lookup_pair */

.text
.balign 16
builder_scanner_opt_str:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	parsetoml_parsetoml_get_string
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L155
	adrp	x0, str628
	add	x0, x0, #:lo12:str628
	b	.L156
.L155:
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
.L156:
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_opt_str, @function
.size builder_scanner_opt_str, .-builder_scanner_opt_str
/* end function builder_scanner_opt_str */

.text
.balign 16
builder_scanner_str_array:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	bl	parsetoml_parsetoml_get_array
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L159
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	bl	builder_scanner_collect_strings
	b	.L160
.L159:
	adrp	x0, donna_nil
	add	x0, x0, #:lo12:donna_nil
.L160:
	ldp	x29, x30, [sp], 16
	ret
.type builder_scanner_str_array, @function
.size builder_scanner_str_array, .-builder_scanner_str_array
/* end function builder_scanner_str_array */

.text
.balign 16
builder_scanner_collect_strings:
	hint	#34
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [x29, 40]
	str	x20, [x29, 32]
	str	x21, [x29, 24]
	mov	x19, x1
	ldr	x1, [x0]
	cmp	x1, #0
	beq	.L169
	mov	x2, #16
	sub	sp, sp, x2
	mov	x2, sp
	cmp	x1, #1
	beq	.L165
	mov	x1, #0
	str	x1, [x2]
	mov	x1, #0
	b	.L166
.L165:
	mov	x1, #8
	add	x1, x0, x1
	ldr	x1, [x1]
	ldr	x1, [x1]
	cmp	x1, #0
	cset	x1, eq
	mov	x3, #1
	and	x1, x1, x3
	str	x1, [x2]
.L166:
	cmp	w1, #0
	bne	.L168
	mov	x1, #16
	add	x0, x0, x1
	ldr	x0, [x0]
	mov	x1, x19
	bl	builder_scanner_collect_strings
	b	.L171
.L168:
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
	bl	builder_scanner_collect_strings
	b	.L171
.L169:
	mov	x0, x19
	bl	donna_list_reverse
.L171:
	ldr	x19, [x29, 40]
	ldr	x20, [x29, 32]
	ldr	x21, [x29, 24]
	mov sp, x29
	ldp	x29, x30, [sp], 48
	ret
.type builder_scanner_collect_strings, @function
.size builder_scanner_collect_strings, .-builder_scanner_collect_strings
/* end function builder_scanner_collect_strings */

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
