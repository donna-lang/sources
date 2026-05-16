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
str36:
	.ascii "invalid donna.toml: "
	.byte 0
/* end data */

.data
.balign 8
str42:
	.ascii "name"
	.byte 0
/* end data */

.data
.balign 8
str50:
	.ascii "donna.toml is missing required field `name`"
	.byte 0
/* end data */

.data
.balign 8
str54:
	.ascii "src"
	.byte 0
/* end data */

.data
.balign 8
str56:
	.ascii "build"
	.byte 0
/* end data */

.data
.balign 8
str95:
	.ascii "bin"
	.byte 0
/* end data */

.data
.balign 8
str98:
	.ascii "dev"
	.byte 0
/* end data */

.data
.balign 8
str101:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str104:
	.ascii "packages"
	.byte 0
/* end data */

.data
.balign 8
str109:
	.ascii "artifacts"
	.byte 0
/* end data */

.data
.balign 8
str112:
	.ascii "test"
	.byte 0
/* end data */

.data
.balign 8
str268:
	.ascii "donna.toml"
	.byte 0
/* end data */

.data
.balign 8
str290:
	.ascii "name"
	.byte 0
/* end data */

.data
.balign 8
str292:
	.ascii "version"
	.byte 0
/* end data */

.data
.balign 8
str294:
	.ascii "description"
	.byte 0
/* end data */

.data
.balign 8
str296:
	.ascii "authors"
	.byte 0
/* end data */

.data
.balign 8
str299:
	.ascii "homepage"
	.byte 0
/* end data */

.data
.balign 8
str314:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str315:
	.ascii ""
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
donna_nil:
	.quad 0
/* end data */

.data
.balign 8
str317:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str318:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str319:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str329:
	.ascii "licences"
	.byte 0
/* end data */

.data
.balign 8
str339:
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
str371:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str380:
	.ascii "licence"
	.byte 0
/* end data */

.data
.balign 8
str383:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
str393:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
str397:
	.ascii "type"
	.byte 0
/* end data */

.data
.balign 8
str399:
	.ascii "user"
	.byte 0
/* end data */

.data
.balign 8
str401:
	.ascii "repo"
	.byte 0
/* end data */

.data
.balign 8
str403:
	.ascii "github"
	.byte 0
/* end data */

.data
.balign 8
str418:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str419:
	.ascii "https://github.com/"
	.byte 0
/* end data */

.data
.balign 8
str421:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str425:
	.ascii "repository"
	.byte 0
/* end data */

.data
.balign 8
str431:
	.ascii "https://github.com/"
	.byte 0
/* end data */

.data
.balign 8
str443:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str446:
	.ascii "git@github.com:"
	.byte 0
/* end data */

.data
.balign 8
str458:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str507:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str514:
	.ascii "/"
	.byte 0
/* end data */

.data
.balign 8
str525:
	.ascii ".git"
	.byte 0
/* end data */

.data
.balign 8
str536:
	.ascii "links"
	.byte 0
/* end data */

.data
.balign 8
str579:
	.ascii "title"
	.byte 0
/* end data */

.data
.balign 8
str589:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str591:
	.ascii "href"
	.byte 0
/* end data */

.data
.balign 8
str601:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str622:
	.ascii ""
	.byte 0
/* end data */

.data
.balign 8
str653:
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
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [x29, 56]
	str	x20, [x29, 48]
	str	x21, [x29, 40]
	str	x22, [x29, 32]
	str	x23, [x29, 24]
	str	x24, [x29, 16]
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
	adrp	x1, str42
	add	x1, x1, #:lo12:str42
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
	mov	x24, x0
	mov	x0, x21
	adrp	x1, str54
	add	x1, x1, #:lo12:str54
	mov	x21, x0
	bl	donna_files_join
	mov	x23, x0
	mov	x0, x21
	adrp	x1, str56
	add	x1, x1, #:lo12:str56
	bl	donna_files_join
	mov	x22, x0
	mov	x0, #32
	bl	malloc
	mov	x21, x0
	mov	x0, #0
	str	x0, [x21]
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
	b	.L13
.L12:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str50
	add	x1, x1, #:lo12:str50
	str	x1, [x2]
	str	x0, [x20]
.L13:
	str	x0, [x19]
	b	.L16
.L14:
	bl	parsetoml_parsetoml_err_msg
	mov	x1, x0
	adrp	x0, str36
	add	x0, x0, #:lo12:str36
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
	str	x0, [x19]
	b	.L16
.L15:
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str25
	add	x1, x1, #:lo12:str25
	str	x1, [x2]
.L16:
	ldr	x19, [x29, 56]
	ldr	x20, [x29, 48]
	ldr	x21, [x29, 40]
	ldr	x22, [x29, 32]
	ldr	x23, [x29, 24]
	ldr	x24, [x29, 16]
	mov sp, x29
	ldp	x29, x30, [sp], 64
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
	adrp	x1, str95
	add	x1, x1, #:lo12:str95
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
	adrp	x1, str98
	add	x1, x1, #:lo12:str98
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
	adrp	x1, str101
	add	x1, x1, #:lo12:str101
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
	adrp	x1, str104
	add	x1, x1, #:lo12:str104
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
	adrp	x1, str109
	add	x1, x1, #:lo12:str109
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
	adrp	x1, str112
	add	x1, x1, #:lo12:str112
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
	adrp	x1, str268
	add	x1, x1, #:lo12:str268
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
	adrp	x1, str290
	add	x1, x1, #:lo12:str290
	mov	x20, x0
	bl	builder_scanner_opt_str
	mov	x26, x0
	mov	x0, x20
	adrp	x1, str292
	add	x1, x1, #:lo12:str292
	mov	x20, x0
	bl	builder_scanner_opt_str
	mov	x25, x0
	mov	x0, x20
	adrp	x1, str294
	add	x1, x1, #:lo12:str294
	mov	x20, x0
	bl	builder_scanner_opt_str
	mov	x24, x0
	mov	x0, x20
	adrp	x1, str296
	add	x1, x1, #:lo12:str296
	mov	x20, x0
	bl	builder_scanner_str_array
	mov	x23, x0
	mov	x0, x20
	mov	x20, x0
	bl	builder_scanner_parse_licence
	mov	x22, x0
	mov	x0, x20
	adrp	x1, str299
	add	x1, x1, #:lo12:str299
	mov	x20, x0
	bl	builder_scanner_opt_str
	mov	x21, x0
	mov	x0, x20
	mov	x20, x0
	bl	builder_scanner_parse_repository
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	bl	builder_scanner_parse_links
	str	x0, [x29, 16]
	mov	x0, #72
	bl	malloc
	ldr	x1, [x29, 16]
	mov	x2, #0
	str	x2, [x0]
	mov	x2, #8
	add	x2, x0, x2
	str	x26, [x2]
	mov	x2, #16
	add	x2, x0, x2
	str	x25, [x2]
	mov	x2, #24
	add	x2, x0, x2
	str	x24, [x2]
	mov	x2, #32
	add	x2, x0, x2
	str	x23, [x2]
	mov	x2, #40
	add	x2, x0, x2
	str	x22, [x2]
	mov	x2, #48
	add	x2, x0, x2
	str	x21, [x2]
	mov	x2, #56
	add	x2, x0, x2
	str	x20, [x2]
	mov	x2, #64
	add	x2, x0, x2
	str	x1, [x2]
	str	x0, [x19]
	b	.L60
.L58:
	bl	builder_scanner_empty_meta
	str	x0, [x19]
	b	.L60
.L59:
	bl	builder_scanner_empty_meta
.L60:
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
.type builder_scanner_scan_meta, @function
.size builder_scanner_scan_meta, .-builder_scanner_scan_meta
/* end function builder_scanner_scan_meta */

.text
.balign 16
builder_scanner_empty_meta:
	hint	#34
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	x0, #72
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str314
	add	x1, x1, #:lo12:str314
	str	x1, [x2]
	mov	x1, #16
	add	x2, x0, x1
	adrp	x1, str315
	add	x1, x1, #:lo12:str315
	str	x1, [x2]
	mov	x1, #24
	add	x2, x0, x1
	adrp	x1, str316
	add	x1, x1, #:lo12:str316
	str	x1, [x2]
	mov	x1, #32
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
	mov	x1, #40
	add	x2, x0, x1
	adrp	x1, str317
	add	x1, x1, #:lo12:str317
	str	x1, [x2]
	mov	x1, #48
	add	x2, x0, x1
	adrp	x1, str318
	add	x1, x1, #:lo12:str318
	str	x1, [x2]
	mov	x1, #56
	add	x2, x0, x1
	adrp	x1, str319
	add	x1, x1, #:lo12:str319
	str	x1, [x2]
	mov	x1, #64
	add	x2, x0, x1
	adrp	x1, donna_nil
	add	x1, x1, #:lo12:donna_nil
	str	x1, [x2]
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
	adrp	x1, str329
	add	x1, x1, #:lo12:str329
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
	adrp	x2, str371
	add	x2, x2, #:lo12:str371
	str	x2, [x1]
	mov	x20, x0
	adrp	x19, str371
	add	x19, x19, #:lo12:str371
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
	adrp	x0, str348
	add	x0, x0, #:lo12:str348
	str	x0, [x1]
	adrp	x19, str348
	add	x19, x19, #:lo12:str348
.L76:
	mov	x0, x19
	b	.L79
.L77:
	mov	x20, x0
	adrp	x0, str339
	add	x0, x0, #:lo12:str339
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
	adrp	x1, str380
	add	x1, x1, #:lo12:str380
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
	adrp	x1, str383
	add	x1, x1, #:lo12:str383
	mov	x19, x0
	bl	parsetoml_parsetoml_get_table
	ldr	x1, [x0]
	cmp	x1, #1
	beq	.L92
	mov	x1, #8
	add	x0, x0, x1
	ldr	x0, [x0]
	adrp	x1, str397
	add	x1, x1, #:lo12:str397
	mov	x20, x0
	bl	builder_scanner_opt_str
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	adrp	x1, str399
	add	x1, x1, #:lo12:str399
	mov	x21, x0
	bl	builder_scanner_opt_str
	mov	x22, x0
	mov	x0, x21
	adrp	x1, str401
	add	x1, x1, #:lo12:str401
	bl	builder_scanner_opt_str
	mov	x1, x0
	mov	x0, x20
	mov	x21, x1
	adrp	x1, str403
	add	x1, x1, #:lo12:str403
	bl	donna_string_equal
	mov	x1, x0
	mov	x0, x19
	mov	x2, #16
	sub	sp, sp, x2
	mov	x19, sp
	cmp	x1, #1
	beq	.L87
	adrp	x1, str425
	add	x1, x1, #:lo12:str425
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
	adrp	x0, str419
	add	x0, x0, #:lo12:str419
	bl	__rt_str_concat
	mov	x1, x21
	mov	x21, x1
	adrp	x1, str421
	add	x1, x1, #:lo12:str421
	bl	__rt_str_concat
	mov	x1, x21
	bl	__rt_str_concat
	str	x0, [x20]
	b	.L91
.L89:
	adrp	x0, str418
	add	x0, x0, #:lo12:str418
	str	x0, [x20]
	adrp	x0, str418
	add	x0, x0, #:lo12:str418
.L91:
	str	x0, [x19]
	b	.L94
.L92:
	mov	x0, x19
	adrp	x1, str393
	add	x1, x1, #:lo12:str393
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
	adrp	x1, str431
	add	x1, x1, #:lo12:str431
	mov	x19, x0
	bl	donna_string_starts_with
	mov	x1, x0
	mov	x0, x19
	cmp	x1, #1
	beq	.L100
	adrp	x1, str446
	add	x1, x1, #:lo12:str446
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
	adrp	x0, str446
	add	x0, x0, #:lo12:str446
	bl	donna_string_length
	mov	x22, x0
	mov	x0, x20
	mov	x20, x0
	bl	donna_string_length
	mov	x17, x0
	mov	x0, x20
	mov	x20, x17
	mov	x21, x0
	adrp	x0, str446
	add	x0, x0, #:lo12:str446
	bl	donna_string_length
	mov	x1, x22
	mov	x2, x0
	mov	x0, x21
	sub	x2, x20, x2
	bl	donna_string_slice
	adrp	x1, str458
	add	x1, x1, #:lo12:str458
	bl	donna_string_split
	bl	builder_scanner_owner_repo_from_parts
	str	x0, [x19]
	b	.L101
.L100:
	mov	x19, x0
	adrp	x0, str431
	add	x0, x0, #:lo12:str431
	bl	donna_string_length
	mov	x21, x0
	mov	x0, x19
	mov	x19, x0
	bl	donna_string_length
	mov	x17, x0
	mov	x0, x19
	mov	x19, x17
	mov	x20, x0
	adrp	x0, str431
	add	x0, x0, #:lo12:str431
	bl	donna_string_length
	mov	x1, x21
	mov	x2, x0
	mov	x0, x20
	sub	x2, x19, x2
	bl	donna_string_slice
	adrp	x1, str443
	add	x1, x1, #:lo12:str443
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
	adrp	x1, str507
	add	x1, x1, #:lo12:str507
	bl	__rt_str_concat
	mov	x1, x20
	bl	__rt_str_concat
	mov	x20, x0
	mov	x0, #16
	bl	malloc
	mov	x1, #1
	str	x1, [x0]
	mov	x1, #8
	add	x1, x0, x1
	str	x20, [x1]
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
	adrp	x1, str514
	add	x1, x1, #:lo12:str514
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
	adrp	x1, str525
	add	x1, x1, #:lo12:str525
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
	adrp	x1, str536
	add	x1, x1, #:lo12:str536
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
	adrp	x1, str579
	add	x1, x1, #:lo12:str579
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
	adrp	x2, str589
	add	x2, x2, #:lo12:str589
	str	x2, [x1]
	adrp	x22, str589
	add	x22, x22, #:lo12:str589
	b	.L139
.L138:
	mov	x3, #8
	add	x2, x2, x3
	ldr	x22, [x2]
	str	x22, [x1]
.L139:
	adrp	x1, str591
	add	x1, x1, #:lo12:str591
	bl	builder_scanner_lookup_pair
	mov	x2, x0
	mov	x0, x20
	mov	x1, #16
	sub	sp, sp, x1
	mov	x1, sp
	ldr	x3, [x2]
	cmp	x3, #0
	beq	.L142
	adrp	x2, str601
	add	x2, x2, #:lo12:str601
	str	x2, [x1]
	adrp	x21, str601
	add	x21, x21, #:lo12:str601
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
	mov	x0, #16
	bl	malloc
	mov	x1, #0
	str	x1, [x0]
	mov	x1, #8
	add	x2, x0, x1
	adrp	x1, str622
	add	x1, x1, #:lo12:str622
	str	x1, [x2]
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
	adrp	x0, str653
	add	x0, x0, #:lo12:str653
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
