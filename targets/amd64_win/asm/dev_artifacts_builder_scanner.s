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
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %r8, %rbx
	movq %rdx, %rdi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $32, %ecx
	callq malloc
	movq %rbx, %r8
	movq %rdi, %rdx
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %rdx, 16(%rax)
	movq %r8, 24(%rax)
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_scanner_Project */

.text
.balign 16
.globl builder_scanner_ScanOk
builder_scanner_ScanOk:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function builder_scanner_ScanOk */

.text
.balign 16
.globl builder_scanner_ScanErr
builder_scanner_ScanErr:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	subq $32, %rsp
	movq %rcx, %rsi
	movl $16, %ecx
	callq malloc
	movq %rsi, %rcx
	subq $-32, %rsp
	movq $1, (%rax)
	movq %rcx, 8(%rax)
	popq %rsi
	leave
	ret
/* end function builder_scanner_ScanErr */

.text
.balign 16
.globl builder_scanner_ProjectMeta
builder_scanner_ProjectMeta:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	movq 72(%rbp), %rsi
	movq 64(%rbp), %rdi
	movq 56(%rbp), %rbx
	movq 48(%rbp), %r12
	movq %r9, %r13
	movq %r8, %r14
	movq %rdx, %r15
	movq %rcx, -16(%rbp)
	subq $32, %rsp
	movl $72, %ecx
	callq malloc
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	movq $0, (%rax)
	movq %rcx, 8(%rax)
	movq %r15, 16(%rax)
	movq %r14, 24(%rax)
	movq %r13, 32(%rax)
	movq %r12, 40(%rax)
	movq %rbx, 48(%rax)
	movq %rdi, 56(%rax)
	movq %rsi, 64(%rax)
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_scanner_ProjectMeta */

.text
.balign 16
.globl builder_scanner_scan
builder_scanner_scan:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rcx, %rbx
	subq $32, %rsp
	leaq str17(%rip), %rdx
	movq %rbx, %rcx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_exists
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb15
	subq $32, %rsp
	callq donna_files_read
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_parse
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq parsetoml_parsetoml_is_err
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb14
	subq $32, %rsp
	callq parsetoml_parsetoml_unwrap_table
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str40(%rip), %rdx
	callq parsetoml_parsetoml_get_string
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq parsetoml_parsetoml_is_err
	movq %rdi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb12
	subq $32, %rsp
	callq parsetoml_parsetoml_unwrap_string
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str51(%rip), %rdx
	movq %rcx, %r12
	callq donna_files_join
	movq %r12, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r12
	leaq str53(%rip), %rdx
	callq donna_files_join
	movq %r12, %rdx
	movq %rbx, %rcx
	movq %rax, %r8
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_Project
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_ScanOk
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb13
Lbb12:
	subq $32, %rsp
	leaq str48(%rip), %rcx
	callq builder_scanner_ScanErr
	subq $-32, %rsp
	movq %rax, (%rdi)
Lbb13:
	movq %rax, (%rsi)
	jmp Lbb16
Lbb14:
	subq $32, %rsp
	callq parsetoml_parsetoml_err_msg
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str35(%rip), %rcx
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_ScanErr
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb16
Lbb15:
	subq $32, %rsp
	leaq str25(%rip), %rcx
	callq builder_scanner_ScanErr
	subq $-32, %rsp
Lbb16:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_scanner_scan */

.text
.balign 16
.globl builder_scanner_project_name
builder_scanner_project_name:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function builder_scanner_project_name */

.text
.balign 16
.globl builder_scanner_project_src_dir
builder_scanner_project_src_dir:
	endbr64
	movq 16(%rcx), %rax
	ret
/* end function builder_scanner_project_src_dir */

.text
.balign 16
.globl builder_scanner_project_build_dir
builder_scanner_project_build_dir:
	endbr64
	movq 24(%rcx), %rax
	ret
/* end function builder_scanner_project_build_dir */

.text
.balign 16
.globl builder_scanner_project_bin_dir
builder_scanner_project_bin_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str88(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_scanner_project_bin_dir */

.text
.balign 16
.globl builder_scanner_project_dev_dir
builder_scanner_project_dev_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str91(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_scanner_project_dev_dir */

.text
.balign 16
.globl builder_scanner_project_dev_artifacts_dir
builder_scanner_project_dev_artifacts_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_scanner_project_dev_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str94(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_scanner_project_dev_artifacts_dir */

.text
.balign 16
.globl builder_scanner_project_packages_dir
builder_scanner_project_packages_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str97(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_scanner_project_packages_dir */

.text
.balign 16
.globl builder_scanner_project_package_dir
builder_scanner_project_package_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rdx, %rsi
	subq $32, %rsp
	callq builder_scanner_project_packages_dir
	movq %rsi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_files_join
	subq $-32, %rsp
	popq %rsi
	leave
	ret
/* end function builder_scanner_project_package_dir */

.text
.balign 16
.globl builder_scanner_project_package_artifacts_dir
builder_scanner_project_package_artifacts_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_scanner_project_package_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str102(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_scanner_project_package_artifacts_dir */

.text
.balign 16
.globl builder_scanner_project_test_dir
builder_scanner_project_test_dir:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_scanner_project_build_dir
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str105(%rip), %rdx
	callq donna_files_join
	subq $-32, %rsp
	leave
	ret
/* end function builder_scanner_project_test_dir */

.text
.balign 16
.globl builder_scanner_meta_name
builder_scanner_meta_name:
	endbr64
	movq 8(%rcx), %rax
	ret
/* end function builder_scanner_meta_name */

.text
.balign 16
.globl builder_scanner_meta_version
builder_scanner_meta_version:
	endbr64
	movq 16(%rcx), %rax
	ret
/* end function builder_scanner_meta_version */

.text
.balign 16
.globl builder_scanner_meta_description
builder_scanner_meta_description:
	endbr64
	movq 24(%rcx), %rax
	ret
/* end function builder_scanner_meta_description */

.text
.balign 16
.globl builder_scanner_meta_authors
builder_scanner_meta_authors:
	endbr64
	movq 32(%rcx), %rax
	ret
/* end function builder_scanner_meta_authors */

.text
.balign 16
.globl builder_scanner_meta_licence
builder_scanner_meta_licence:
	endbr64
	movq 40(%rcx), %rax
	ret
/* end function builder_scanner_meta_licence */

.text
.balign 16
.globl builder_scanner_meta_homepage
builder_scanner_meta_homepage:
	endbr64
	movq 48(%rcx), %rax
	ret
/* end function builder_scanner_meta_homepage */

.text
.balign 16
.globl builder_scanner_meta_repository
builder_scanner_meta_repository:
	endbr64
	movq 56(%rcx), %rax
	ret
/* end function builder_scanner_meta_repository */

.text
.balign 16
.globl builder_scanner_meta_github_owner_repo
builder_scanner_meta_github_owner_repo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq builder_scanner_meta_repository
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_github_owner_repo
	subq $-32, %rsp
	leave
	ret
/* end function builder_scanner_meta_github_owner_repo */

.text
.balign 16
.globl builder_scanner_meta_links
builder_scanner_meta_links:
	endbr64
	movq 64(%rcx), %rax
	ret
/* end function builder_scanner_meta_links */

.text
.balign 16
.globl builder_scanner_scan_meta
builder_scanner_scan_meta:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $24, %rsp
	pushq %rbx
	pushq %r12
	pushq %r13
	pushq %r14
	pushq %r15
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str261(%rip), %rdx
	callq donna_files_join
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_files_exists
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $0, %rax
	jz Lbb59
	subq $32, %rsp
	callq donna_files_read
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq parsetoml_parsetoml_parse
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb58
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str283(%rip), %rdx
	movq %rcx, %rdi
	callq builder_scanner_opt_str
	movq %rdi, %rcx
	movq %rax, -16(%rbp)
	subq $-32, %rsp
	subq $32, %rsp
	leaq str285(%rip), %rdx
	movq %rcx, %rdi
	callq builder_scanner_opt_str
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str287(%rip), %rdx
	movq %rcx, %rdi
	callq builder_scanner_opt_str
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %r14
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str289(%rip), %rdx
	movq %rcx, %rdi
	callq builder_scanner_str_array
	movq %rdi, %rcx
	movq %rax, %r15
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq builder_scanner_parse_licence
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %r13
	leaq str292(%rip), %rdx
	movq %rcx, %rbx
	callq builder_scanner_opt_str
	movq %rbx, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %r12
	callq builder_scanner_parse_repository
	movq %r12, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_parse_links
	movq %r15, %r9
	movq %r14, %r8
	movq %r13, %rdx
	movq %rax, %r10
	movq -16(%rbp), %rcx
	subq $-32, %rsp
	subq $64, %rsp
	movq %rsp, %rax
	movq %r10, 56(%rax)
	movq %r12, 48(%rax)
	movq %rbx, 40(%rax)
	movq %rdi, 32(%rax)
	callq builder_scanner_ProjectMeta
	subq $-64, %rsp
	movq %rax, (%rsi)
	jmp Lbb60
Lbb58:
	subq $32, %rsp
	callq builder_scanner_empty_meta
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb60
Lbb59:
	subq $32, %rsp
	callq builder_scanner_empty_meta
	subq $-32, %rsp
Lbb60:
	movq %rbp, %rsp
	subq $80, %rsp
	popq %rdi
	popq %rsi
	popq %r15
	popq %r14
	popq %r13
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_scanner_scan_meta */

.text
.balign 16
builder_scanner_empty_meta:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $64, %rsp
	movq %rsp, %rcx
	leaq donna_nil(%rip), %rax
	movq %rax, 56(%rcx)
	leaq str304(%rip), %rax
	movq %rax, 48(%rcx)
	leaq str303(%rip), %rax
	movq %rax, 40(%rcx)
	leaq str302(%rip), %rax
	movq %rax, 32(%rcx)
	leaq donna_nil(%rip), %r9
	leaq str301(%rip), %r8
	leaq str300(%rip), %rdx
	leaq str299(%rip), %rcx
	callq builder_scanner_ProjectMeta
	subq $-64, %rsp
	leave
	ret
/* end function builder_scanner_empty_meta */

.text
.balign 16
builder_scanner_parse_licence:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str306(%rip), %rdx
	movq %rcx, %rsi
	callq parsetoml_parsetoml_get_array
	movq %rsi, %rcx
	subq $-32, %rsp
	movq (%rax), %rdx
	cmpq $1, %rdx
	jz Lbb73
	movq 8(%rax), %rax
	subq $16, %rsp
	movq %rsp, %rdx
	movq (%rax), %rsi
	cmpq $0, %rsi
	jz Lbb72
	cmpq $1, %rsi
	setz %sil
	movzbq %sil, %rsi
	subq $16, %rsp
	movq %rsp, %rdi
	cmpl $0, %esi
	jnz Lbb68
	movq $0, (%rdi)
	movl $0, %esi
	jmp Lbb69
Lbb68:
	movq 8(%rax), %rsi
	movq (%rsi), %rsi
	cmpq $0, %rsi
	setz %sil
	movzbq %sil, %rsi
	andq $1, %rsi
	movq %rsi, (%rdi)
Lbb69:
	cmpl $0, %esi
	jnz Lbb71
	leaq str348(%rip), %rax
	movq %rax, (%rdx)
	leaq str348(%rip), %rax
	jmp Lbb74
Lbb71:
	movq 8(%rax), %rax
	movq 8(%rax), %rax
	movq %rax, (%rdx)
	jmp Lbb74
Lbb72:
	leaq str325(%rip), %rax
	movq %rax, (%rdx)
	leaq str325(%rip), %rax
	jmp Lbb74
Lbb73:
	leaq str316(%rip), %rax
Lbb74:
	movq %rax, %rsi
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rsi, %rcx
	callq donna_string_is_empty
	movq %rdi, %rcx
	movq %rax, %rdx
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $0, %rdx
	jz Lbb76
	subq $32, %rsp
	leaq str357(%rip), %rdx
	callq builder_scanner_opt_str
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb77
Lbb76:
	movq %rax, (%rsi)
Lbb77:
	movq %rbp, %rsp
	subq $16, %rsp
	popq %rdi
	popq %rsi
	leave
	ret
/* end function builder_scanner_parse_licence */

.text
.balign 16
builder_scanner_parse_repository:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	leaq str360(%rip), %rdx
	movq %rcx, %rsi
	callq parsetoml_parsetoml_get_table
	movq %rsi, %rcx
	subq $-32, %rsp
	movq %rcx, %rsi
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb85
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str374(%rip), %rdx
	movq %rcx, %rdi
	callq builder_scanner_opt_str
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	leaq str376(%rip), %rdx
	movq %rcx, %rbx
	callq builder_scanner_opt_str
	movq %rbx, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	leaq str378(%rip), %rdx
	callq builder_scanner_opt_str
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str380(%rip), %rdx
	callq donna_string_equal
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb81
	subq $32, %rsp
	leaq str402(%rip), %rdx
	callq builder_scanner_opt_str
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb87
Lbb81:
	subq $32, %rsp
	movq %r12, %rcx
	callq donna_string_is_empty
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rbx, %rcx
	callq donna_string_is_empty
	movq %r12, %rdx
	subq $-32, %rsp
	orq %rdi, %rax
	subq $16, %rsp
	movq %rsp, %rdi
	cmpq $1, %rax
	jz Lbb83
	subq $32, %rsp
	leaq str396(%rip), %rcx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdx, %rbx
	leaq str398(%rip), %rdx
	callq __rt_str_concat
	movq %rbx, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	subq $-32, %rsp
	movq %rax, (%rdi)
	jmp Lbb84
Lbb83:
	leaq str395(%rip), %rax
	movq %rax, (%rdi)
	leaq str395(%rip), %rax
Lbb84:
	movq %rax, (%rsi)
	jmp Lbb87
Lbb85:
	movq %rsi, %rcx
	subq $32, %rsp
	leaq str370(%rip), %rdx
	callq builder_scanner_opt_str
	subq $-32, %rsp
Lbb87:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_scanner_parse_repository */

.text
.balign 16
builder_scanner_github_owner_repo:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	subq $32, %rsp
	callq builder_scanner_strip_trailing_slash
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_strip_git_suffix
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str408(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb92
	subq $32, %rsp
	leaq str423(%rip), %rdx
	movq %rcx, %rsi
	callq donna_string_starts_with
	movq %rsi, %rcx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb91
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
	jmp Lbb93
Lbb91:
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str423(%rip), %rcx
	callq donna_string_length
	movq %rdi, %rcx
	movq %rax, %r12
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	callq donna_string_length
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rbx
	leaq str423(%rip), %rcx
	callq donna_string_length
	movq %r12, %rdx
	movq %rbx, %rcx
	subq $-32, %rsp
	movq %rdi, %r8
	subq %rax, %r8
	subq $32, %rsp
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str435(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_owner_repo_from_parts
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb93
Lbb92:
	subq $32, %rsp
	movq %rcx, %rsi
	leaq str408(%rip), %rcx
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_length
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	leaq str408(%rip), %rcx
	callq donna_string_length
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	movq %rsi, %r8
	subq %rax, %r8
	subq $32, %rsp
	callq donna_string_slice
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	leaq str420(%rip), %rdx
	callq donna_string_split
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq builder_scanner_owner_repo_from_parts
	subq $-32, %rsp
Lbb93:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_scanner_github_owner_repo */

.text
.balign 16
builder_scanner_owner_repo_from_parts:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rcx, %rax
	movq (%rax), %rcx
	cmpq $1, %rcx
	setz %cl
	movzbq %cl, %rcx
	cmpl $0, %ecx
	jnz Lbb96
	movl $0, %ecx
	jmp Lbb102
Lbb96:
	movq 16(%rax), %rcx
	movq (%rcx), %rcx
	cmpq $1, %rcx
	setz %dl
	movzbq %dl, %rdx
	subq $16, %rsp
	movq %rsp, %rcx
	cmpl $0, %edx
	jnz Lbb99
	movq $0, (%rcx)
	movl $0, %ecx
	jmp Lbb101
Lbb99:
	movq $1, (%rcx)
	movl $1, %ecx
Lbb101:
	andq $1, %rcx
Lbb102:
	cmpl $0, %ecx
	jnz Lbb104
	leaq donna_option_None(%rip), %rax
	jmp Lbb107
Lbb104:
	movq 8(%rax), %rcx
	movq 16(%rax), %rax
	movq 8(%rax), %rbx
	subq $32, %rsp
	movq %rcx, %rsi
	callq donna_string_is_empty
	movq %rsi, %rcx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rcx, %rdi
	movq %rbx, %rcx
	callq donna_string_is_empty
	movq %rbx, %rdx
	movq %rdi, %rcx
	subq $-32, %rsp
	orq %rsi, %rax
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rax
	jz Lbb106
	subq $32, %rsp
	movq %rdx, %rdi
	leaq str484(%rip), %rdx
	callq __rt_str_concat
	movq %rdi, %rdx
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq __rt_str_concat
	movq %rax, %rcx
	subq $-32, %rsp
	subq $32, %rsp
	callq donna_option_Some
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb107
Lbb106:
	leaq donna_option_None(%rip), %rax
	movq %rax, (%rsi)
	leaq donna_option_None(%rip), %rax
Lbb107:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_scanner_owner_repo_from_parts */

.text
.balign 16
builder_scanner_strip_trailing_slash:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str490(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_ends_with
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb110
	movq %rsi, %rax
	jmp Lbb111
Lbb110:
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_length
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	movq %rcx, %r8
	subq $1, %r8
	subq $32, %rsp
	movl $0, %edx
	movq %rax, %rcx
	callq donna_string_slice
	subq $-32, %rsp
Lbb111:
	popq %rsi
	leave
	ret
/* end function builder_scanner_strip_trailing_slash */

.text
.balign 16
builder_scanner_strip_git_suffix:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rsi
	movq %rcx, %rsi
	subq $32, %rsp
	leaq str501(%rip), %rdx
	movq %rsi, %rcx
	callq donna_string_ends_with
	subq $-32, %rsp
	cmpq $1, %rax
	jz Lbb114
	movq %rsi, %rax
	jmp Lbb115
Lbb114:
	subq $32, %rsp
	movq %rsi, %rcx
	callq donna_string_length
	movq %rax, %rcx
	movq %rsi, %rax
	subq $-32, %rsp
	movq %rcx, %r8
	subq $4, %r8
	subq $32, %rsp
	movl $0, %edx
	movq %rax, %rcx
	callq donna_string_slice
	subq $-32, %rsp
Lbb115:
	popq %rsi
	leave
	ret
/* end function builder_scanner_strip_git_suffix */

.text
.balign 16
builder_scanner_parse_links:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	leaq str512(%rip), %rdx
	callq parsetoml_parsetoml_get_array
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb118
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_scanner_collect_links
	subq $-32, %rsp
	jmp Lbb119
Lbb118:
	leaq donna_nil(%rip), %rax
Lbb119:
	leave
	ret
/* end function builder_scanner_parse_links */

.text
.balign 16
builder_scanner_collect_links:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	pushq %rbx
	pushq %r12
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb136
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb124
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb125
Lbb124:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	cmpq $4, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb125:
	cmpl $0, %eax
	jnz Lbb127
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq builder_scanner_collect_links
	subq $-32, %rsp
	jmp Lbb138
Lbb127:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rdi
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq str555(%rip), %rdx
	movq %rcx, %rbx
	callq builder_scanner_lookup_pair
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %r8
	cmpq $0, %r8
	jz Lbb130
	leaq str565(%rip), %rdx
	movq %rdx, (%rax)
	leaq str565(%rip), %rax
	movq %rax, %r12
	jmp Lbb131
Lbb130:
	movq 8(%rdx), %r12
	movq %r12, (%rax)
Lbb131:
	subq $32, %rsp
	leaq str567(%rip), %rdx
	callq builder_scanner_lookup_pair
	movq %rdi, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rax
	movq (%rdx), %rdi
	cmpq $0, %rdi
	jz Lbb134
	leaq str577(%rip), %rdx
	movq %rdx, (%rax)
	leaq str577(%rip), %rax
	movq %rax, %rbx
	jmp Lbb135
Lbb134:
	movq 8(%rdx), %rbx
	movq %rbx, (%rax)
Lbb135:
	subq $32, %rsp
	movq %rcx, %rdi
	movl $16, %ecx
	callq malloc
	movq %rdi, %rcx
	movq %rax, %rdi
	subq $-32, %rsp
	movq %r12, (%rdi)
	movq %rbx, 8(%rdi)
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	callq builder_scanner_collect_links
	subq $-32, %rsp
	jmp Lbb138
Lbb136:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb138:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %r12
	popq %rbx
	leave
	ret
/* end function builder_scanner_collect_links */

.text
.balign 16
builder_scanner_lookup_pair:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb143
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq %rcx, %rdi
	movq (%rax), %rcx
	movq 8(%rax), %rsi
	subq $32, %rsp
	movq %rdx, %rbx
	callq donna_string_equal
	movq %rbx, %rdx
	movq %rdi, %rcx
	movq %rax, %rdi
	movq %rsi, %rax
	subq $-32, %rsp
	subq $16, %rsp
	movq %rsp, %rsi
	cmpq $1, %rdi
	jz Lbb142
	subq $32, %rsp
	callq builder_scanner_lookup_pair
	subq $-32, %rsp
	movq %rax, (%rsi)
	jmp Lbb144
Lbb142:
	movq %rax, (%rsi)
	jmp Lbb144
Lbb143:
	subq $32, %rsp
	leaq str598(%rip), %rcx
	callq parsetoml_parsetoml_TomlString
	subq $-32, %rsp
Lbb144:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_scanner_lookup_pair */

.text
.balign 16
builder_scanner_opt_str:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq parsetoml_parsetoml_get_string
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $0, %rcx
	jz Lbb147
	leaq str628(%rip), %rax
	jmp Lbb148
Lbb147:
	movq 8(%rax), %rax
Lbb148:
	leave
	ret
/* end function builder_scanner_opt_str */

.text
.balign 16
builder_scanner_str_array:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	callq parsetoml_parsetoml_get_array
	subq $-32, %rsp
	movq (%rax), %rcx
	cmpq $1, %rcx
	jz Lbb151
	movq 8(%rax), %rcx
	subq $32, %rsp
	leaq donna_nil(%rip), %rdx
	callq builder_scanner_collect_strings
	subq $-32, %rsp
	jmp Lbb152
Lbb151:
	leaq donna_nil(%rip), %rax
Lbb152:
	leave
	ret
/* end function builder_scanner_str_array */

.text
.balign 16
builder_scanner_collect_strings:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rsi
	movq (%rcx), %rax
	cmpq $0, %rax
	jz Lbb161
	cmpq $1, %rax
	setz %al
	movzbq %al, %rax
	subq $16, %rsp
	movq %rsp, %rdx
	cmpl $0, %eax
	jnz Lbb157
	movq $0, (%rdx)
	movl $0, %eax
	jmp Lbb158
Lbb157:
	movq 8(%rcx), %rax
	movq (%rax), %rax
	cmpq $0, %rax
	setz %al
	movzbq %al, %rax
	andq $1, %rax
	movq %rax, (%rdx)
Lbb158:
	cmpl $0, %eax
	jnz Lbb160
	movq 16(%rcx), %rcx
	subq $32, %rsp
	movq %rsi, %rdx
	callq builder_scanner_collect_strings
	subq $-32, %rsp
	jmp Lbb163
Lbb160:
	movq 8(%rcx), %rax
	movq 16(%rcx), %rcx
	movq 8(%rax), %rdi
	subq $32, %rsp
	movq %rcx, %rbx
	movl $24, %ecx
	callq malloc
	movq %rbx, %rcx
	movq %rax, %rdx
	subq $-32, %rsp
	movq $1, (%rdx)
	movq %rdi, 8(%rdx)
	movq %rsi, 16(%rdx)
	subq $32, %rsp
	callq builder_scanner_collect_strings
	subq $-32, %rsp
	jmp Lbb163
Lbb161:
	movq %rsi, %rcx
	subq $32, %rsp
	callq donna_list_reverse
	subq $-32, %rsp
Lbb163:
	movq %rbp, %rsp
	subq $32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function builder_scanner_collect_strings */

.text
.balign 16
__rt_str_concat:
	endbr64
	pushq %rbp
	movq %rsp, %rbp
	subq $8, %rsp
	pushq %rbx
	pushq %rsi
	pushq %rdi
	movq %rdx, %rdi
	movq %rcx, %rsi
	subq $32, %rsp
	movq %rsi, %rcx
	callq strlen
	movq %rax, %rbx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rdi, %rcx
	callq strlen
	subq $-32, %rsp
	addq %rbx, %rax
	movq %rax, %rcx
	addq $1, %rcx
	subq $32, %rsp
	callq malloc
	movq %rsi, %rdx
	movq %rax, %rsi
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcpy
	movq %rdi, %rdx
	subq $-32, %rsp
	subq $32, %rsp
	movq %rsi, %rcx
	callq strcat
	movq %rsi, %rax
	subq $-32, %rsp
	popq %rdi
	popq %rsi
	popq %rbx
	leave
	ret
/* end function __rt_str_concat */

